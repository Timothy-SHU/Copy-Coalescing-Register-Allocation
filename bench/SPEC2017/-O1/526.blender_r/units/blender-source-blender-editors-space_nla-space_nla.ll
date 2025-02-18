; ModuleID = 'blender/source/blender/editors/space_nla/space_nla.c'
source_filename = "blender/source/blender/editors/space_nla/space_nla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
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
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"buttons for nla\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"spacetype nla\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"spacetype nla region\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"initnla\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NlaEdit DopeSheet\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"header for nla\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"channel list for nla\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"buttons area for nla\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"main area for nla\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"NLA Generic\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"NLA Channels\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@str = private unnamed_addr constant [65 x i8] c"NLA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @nla_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #5
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
define dso_local void @ED_spacetype_nla() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.1) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 13, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @nla_new, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @nla_free, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @nla_init, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @nla_duplicate, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @nla_operatortypes, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @nla_listener, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @nla_keymap, ptr %11, align 8, !tbaa !57
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %14 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 3
  store ptr @nla_main_area_init, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 5
  store ptr @nla_main_area_draw, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 6
  store ptr @nla_main_area_listener, ptr %17, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 20
  store i32 30, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %13) #5
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %22 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 2
  store i32 1, ptr %22, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 19
  store i32 26, ptr %23, align 4, !tbaa !64
  %24 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 20
  store i32 83, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 3
  store ptr @nla_header_area_init, ptr %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 5
  store ptr @nla_header_area_draw, ptr %26, align 8, !tbaa !61
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %21) #5
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %29 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 2
  store i32 2, ptr %29, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 18
  store i32 200, ptr %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 20
  store i32 19, ptr %31, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 3
  store ptr @nla_channel_area_init, ptr %32, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 5
  store ptr @nla_channel_area_draw, ptr %33, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 6
  store ptr @nla_channel_area_listener, ptr %34, align 8, !tbaa !62
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %28) #5
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %37 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 2
  store i32 4, ptr %37, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 18
  store i32 200, ptr %38, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 20
  store i32 1, ptr %39, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 6
  store ptr @nla_region_listener, ptr %40, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 3
  store ptr @nla_buttons_area_init, ptr %41, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 5
  store ptr @nla_buttons_area_draw, ptr %42, align 8, !tbaa !61
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %36) #5
  tail call void @nla_buttons_register(ptr noundef %36) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @nla_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 232, ptr noundef nonnull @.str.4) #5
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 3
  store i32 13, ptr %6, align 8, !tbaa !66
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.5) #5
  %9 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !68
  store ptr %2, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 6
  store i16 2, ptr %10, align 8, !tbaa !71
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.6) #5
  %13 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #5
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 1, ptr %14, align 2, !tbaa !38
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  store i16 2, ptr %15, align 8, !tbaa !47
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.7) #5
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 2, ptr %18, align 2, !tbaa !38
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 3, ptr %19, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 9
  store i16 8, ptr %20, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 14
  store i16 2, ptr %21, align 2, !tbaa !73
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 384, ptr noundef nonnull @.str.8) #5
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %23) #5
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  store i16 4, ptr %24, align 2, !tbaa !38
  %25 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 9
  store i16 4, ptr %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 10
  store i16 1, ptr %26, align 2, !tbaa !48
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 384, ptr noundef nonnull @.str.9) #5
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %28) #5
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 8
  store i16 0, ptr %29, align 2, !tbaa !38
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !74
  %32 = add nsw i32 %31, -10
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2
  store float %33, ptr %34, align 8, !tbaa !93
  %35 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %36 = load i16, ptr %35, align 4, !tbaa !94
  %37 = sext i16 %36 to i32
  %38 = sub nsw i32 0, %37
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %39, 3.000000e+00
  %41 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 0, i32 2
  store float %40, ptr %41, align 8, !tbaa !96
  %42 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !97
  %44 = add nsw i32 %43, 10
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 0, i32 1
  store float %45, ptr %46, align 4, !tbaa !98
  %47 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %47, align 4, !tbaa !99
  %48 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !100
  %49 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %49, align 8, !tbaa !101
  %50 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %50, align 4, !tbaa !101
  %51 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %51, align 8, !tbaa !101
  %52 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 6, i64 1
  store float 1.000000e+04, ptr %52, align 4, !tbaa !101
  %53 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %53, align 8, !tbaa !102
  %54 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 8
  store float 5.000000e+01, ptr %54, align 4, !tbaa !103
  %55 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 9
  store i16 74, ptr %55, align 8, !tbaa !72
  %56 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 12
  store i16 512, ptr %56, align 2, !tbaa !104
  %57 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 13
  store i16 16, ptr %57, align 8, !tbaa !105
  %58 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 15
  store i16 4, ptr %58, align 4, !tbaa !106
  %59 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 14
  store i16 2, ptr %59, align 2, !tbaa !73
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @nla_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceNla, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #5
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = load ptr, ptr %2, align 8, !tbaa !68
  tail call void %7(ptr noundef %8) #5
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.5) #5
  store ptr %10, ptr %5, align 8, !tbaa !68
  %11 = load ptr, ptr @G, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  store ptr %13, ptr %10, align 8, !tbaa !69
  br label %14

14:                                               ; preds = %8, %2
  tail call void @ED_area_tag_refresh(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @nla_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #5
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call ptr %4(ptr noundef %6) #5
  store ptr %7, ptr %5, align 8, !tbaa !68
  ret ptr %3
}

declare void @nla_operatortypes() #2

; Function Attrs: nounwind uwtable
define internal void @nla_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !112
  switch i32 %5, label %18 [
    i32 234881024, label %6
    i32 67108864, label %7
    i32 83886080, label %8
    i32 251658240, label %13
  ]

6:                                                ; preds = %3
  tail call void @ED_area_tag_refresh(ptr noundef %1) #5
  br label %18

7:                                                ; preds = %3
  tail call void @ED_area_tag_refresh(ptr noundef %1) #5
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = icmp eq i32 %10, 1179648
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  tail call void @ED_area_tag_refresh(ptr noundef %1) #5
  br label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = icmp eq i32 %15, 983040
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %18

18:                                               ; preds = %13, %17, %12, %8, %3, %7, %6
  ret void
}

declare void @nla_keymap(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @nla_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !115
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !116
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  %17 = load ptr, ptr %10, align 8, !tbaa !117
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %18) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = tail call ptr @CTX_wm_space_nla(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #5
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !120
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = xor i16 %9, 1
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !115
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !116
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @UI_view2d_grid_calc(ptr noundef %11, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %14, i32 noundef %17) #5
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 31) #5
  tail call void @UI_view2d_grid_free(ptr noundef %18) #5
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #5
  %19 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @draw_nla_main_data(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %1) #5
  call void @UI_view2d_text_cache_draw(ptr noundef %1) #5
  br label %22

22:                                               ; preds = %21, %2
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  %23 = load i16, ptr %6, align 2, !tbaa !120
  %24 = lshr i16 %23, 1
  %25 = and i16 %24, 2
  %26 = lshr i16 %23, 4
  %27 = and i16 %26, 1
  %28 = or disjoint i16 %27, %25
  %29 = xor i16 %28, 1
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %29) #5
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 1) #5
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 4) #5
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5
  call void @UI_view2d_view_restore(ptr noundef %0) #5
  %30 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #5
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %30) #5
  call void @UI_view2d_scrollers_free(ptr noundef %30) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !112
  switch i32 %6, label %25 [
    i32 234881024, label %29
    i32 67108864, label %7
    i32 83886080, label %12
    i32 285212672, label %17
    i32 301989888, label %21
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !114
  %10 = add i32 %9, -131072
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 16)
  switch i32 %11, label %30 [
    i32 2, label %29
    i32 5, label %29
    i32 1, label %29
    i32 0, label %29
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !114
  %15 = add i32 %14, -1179648
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 16)
  switch i32 %16, label %30 [
    i32 3, label %29
    i32 4, label %29
    i32 7, label %29
    i32 0, label %29
  ]

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !121
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %29, label %30

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !121
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %29, label %30

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !114
  %28 = icmp eq i32 %27, 1638400
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %12, %12, %12, %12, %7, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %30

30:                                               ; preds = %29, %25, %21, %17, %12, %7
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @nla_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !115
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !116
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef 13, i32 noundef 0) #5
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  %18 = load ptr, ptr %11, align 8, !tbaa !117
  %19 = tail call ptr @WM_keymap_find(ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #5
  %20 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %19, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  %21 = load ptr, ptr %11, align 8, !tbaa !117
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %23 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %22, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #5
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @draw_nla_channel_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #5
  br label %8

8:                                                ; preds = %7, %2
  call void @UI_view2d_view_restore(ptr noundef %0) #5
  %9 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #5
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %9) #5
  call void @UI_view2d_scrollers_free(ptr noundef %9) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_channel_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !112
  switch i32 %6, label %18 [
    i32 234881024, label %22
    i32 67108864, label %7
    i32 83886080, label %11
    i32 301989888, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !114
  %10 = icmp eq i32 %9, 458752
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !114
  switch i32 %13, label %23 [
    i32 1376256, label %22
    i32 1441792, label %22
    i32 1638400, label %22
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %22, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !114
  %21 = icmp eq i32 %20, 1638400
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11, %11, %11, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %23

23:                                               ; preds = %22, %18, %14, %11, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !112
  switch i32 %6, label %13 [
    i32 234881024, label %17
    i32 67108864, label %7
    i32 83886080, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !114
  switch i32 %9, label %18 [
    i32 458752, label %17
    i32 196608, label %17
    i32 131072, label %17
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !114
  switch i32 %12, label %18 [
    i32 1376256, label %17
    i32 1441792, label %17
    i32 1638400, label %17
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = icmp eq i32 %15, 1638400
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10, %10, %10, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %18

18:                                               ; preds = %17, %13, %10, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nla_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #5
  ret void
}

declare void @nla_buttons_register(ptr noundef) local_unnamed_addr #2

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_nla(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @draw_nla_main_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_text_cache_draw(ptr noundef) local_unnamed_addr #2

declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @draw_nla_channel_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!56 = !{!50, !35, i64 120}
!57 = !{!50, !35, i64 152}
!58 = !{!59, !44, i64 16}
!59 = !{!"ARegionType", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !46, i64 104, !46, i64 120, !46, i64 136, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!60 = !{!59, !35, i64 24}
!61 = !{!59, !35, i64 40}
!62 = !{!59, !35, i64 48}
!63 = !{!59, !44, i64 168}
!64 = !{!59, !44, i64 164}
!65 = !{!59, !44, i64 160}
!66 = !{!67, !44, i64 32}
!67 = !{!"SpaceNla", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !45, i64 56, !45, i64 58, !44, i64 60, !35, i64 64, !40, i64 72}
!68 = !{!67, !35, i64 64}
!69 = !{!70, !35, i64 0}
!70 = !{!"bDopeSheet", !35, i64 0, !46, i64 8, !35, i64 24, !36, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!71 = !{!67, !45, i64 56}
!72 = !{!39, !45, i64 120}
!73 = !{!39, !45, i64 130}
!74 = !{!75, !44, i64 684}
!75 = !{!"Scene", !76, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !77, i64 280, !84, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !85, i64 4400, !86, i64 4416, !89, i64 4600, !35, i64 4608, !90, i64 4616, !35, i64 4640, !91, i64 4648, !91, i64 4656, !79, i64 4664, !80, i64 4824, !92, i64 4888, !35, i64 4952}
!76 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!77 = !{!"RenderData", !78, i64 0, !35, i64 248, !35, i64 256, !81, i64 264, !82, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !83, i64 2616, !44, i64 3976, !44, i64 3980}
!78 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !79, i64 24, !80, i64 184}
!79 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!80 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!81 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!82 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!83 = !{!"BakeData", !78, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!84 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!85 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!86 = !{!"GameData", !85, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !87, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !88, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!87 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!88 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!89 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!90 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!91 = !{!"long", !36, i64 0}
!92 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!93 = !{!39, !42, i64 16}
!94 = !{!95, !45, i64 76}
!95 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!96 = !{!39, !42, i64 24}
!97 = !{!75, !44, i64 688}
!98 = !{!39, !42, i64 20}
!99 = !{!39, !42, i64 28}
!100 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 4, !101, i64 12, i64 4, !101}
!101 = !{!42, !42, i64 0}
!102 = !{!39, !42, i64 112}
!103 = !{!39, !42, i64 116}
!104 = !{!39, !45, i64 126}
!105 = !{!39, !45, i64 128}
!106 = !{!39, !45, i64 132}
!107 = !{!95, !35, i64 96}
!108 = !{!109, !35, i64 0}
!109 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !36, i64 2090, !45, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!110 = !{!111, !35, i64 1088}
!111 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 1040, !45, i64 1042, !45, i64 1044, !45, i64 1046, !91, i64 1048, !36, i64 1056, !45, i64 1072, !35, i64 1080, !46, i64 1088, !46, i64 1104, !46, i64 1120, !46, i64 1136, !46, i64 1152, !46, i64 1168, !46, i64 1184, !46, i64 1200, !46, i64 1216, !46, i64 1232, !46, i64 1248, !46, i64 1264, !46, i64 1280, !46, i64 1296, !46, i64 1312, !46, i64 1328, !46, i64 1344, !46, i64 1360, !46, i64 1376, !46, i64 1392, !46, i64 1408, !46, i64 1424, !46, i64 1440, !46, i64 1456, !46, i64 1472, !46, i64 1488, !46, i64 1504, !46, i64 1520, !46, i64 1536, !46, i64 1552, !46, i64 1568, !46, i64 1584, !46, i64 1600, !46, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!112 = !{!113, !44, i64 36}
!113 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!114 = !{!113, !44, i64 40}
!115 = !{!39, !45, i64 208}
!116 = !{!39, !45, i64 210}
!117 = !{!118, !35, i64 296}
!118 = !{!"wmWindowManager", !76, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !119, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!119 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!120 = !{!67, !45, i64 58}
!121 = !{!113, !44, i64 48}

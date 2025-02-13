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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nla_new(ptr noundef %0) #0 !PGOFuncName !66 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 232, ptr noundef nonnull @.str.4) #5
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 3
  store i32 13, ptr %6, align 8, !tbaa !67
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.5) #5
  %9 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !69
  store ptr %2, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.SpaceNla, ptr %5, i64 0, i32 6
  store i16 2, ptr %10, align 8, !tbaa !72
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
  store i16 8, ptr %20, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 14
  store i16 2, ptr %21, align 2, !tbaa !74
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
  %31 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %33 = load i16, ptr %32, align 4, !tbaa !75
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 0, %34
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %36, 3.000000e+00
  %38 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 0, i32 2
  store float %37, ptr %38, align 8, !tbaa !77
  %39 = load <2 x i32>, ptr %30, align 4, !tbaa !78
  %40 = add nsw <2 x i32> %39, <i32 -10, i32 10>
  %41 = sitofp <2 x i32> %40 to <2 x float>
  store <2 x float> %41, ptr %31, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %42, align 4, !tbaa !80
  %43 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !81
  %44 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+05, float 1.000000e+04>, ptr %44, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3F847AE140000000, float 5.000000e+01>, ptr %45, align 8, !tbaa !79
  %46 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 9
  store i16 74, ptr %46, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 12
  store <4 x i16> <i16 512, i16 16, i16 2, i16 4>, ptr %47, align 2, !tbaa !82
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_free(ptr nocapture noundef readonly %0) #0 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.SpaceNla, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #5
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void %7(ptr noundef %8) #5
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.5) #5
  store ptr %10, ptr %5, align 8, !tbaa !69
  %11 = load ptr, ptr @G, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  store ptr %13, ptr %10, align 8, !tbaa !70
  br label %14

14:                                               ; preds = %8, %2
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nla_duplicate(ptr noundef %0) #0 !PGOFuncName !91 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #5
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = tail call ptr %4(ptr noundef %6) #5
  store ptr %7, ptr %5, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: optsize
declare void @nla_operatortypes() #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !92 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !93
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
  %10 = load i32, ptr %9, align 8, !tbaa !95
  %11 = icmp eq i32 %10, 1179648
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  tail call void @ED_area_tag_refresh(ptr noundef %1) #5
  br label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !95
  %16 = icmp eq i32 %15, 983040
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %18

18:                                               ; preds = %13, %17, %12, %8, %3, %7, %6
  ret void
}

; Function Attrs: optsize
declare void @nla_keymap(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !97
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !98
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  %17 = load ptr, ptr %10, align 8, !tbaa !99
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %18) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !103 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = tail call ptr @CTX_wm_space_nla(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !104
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = xor i16 %9, 1
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !97
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !98
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @UI_view2d_grid_calc(ptr noundef %11, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %14, i32 noundef %17) #5
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 31) #5
  tail call void @UI_view2d_grid_free(ptr noundef %18) #5
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #5
  %19 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @draw_nla_main_data(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %1) #5
  call void @UI_view2d_text_cache_draw(ptr noundef nonnull %1) #5
  br label %22

22:                                               ; preds = %21, %2
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  %23 = load i16, ptr %6, align 2, !tbaa !104
  %24 = lshr i16 %23, 1
  %25 = and i16 %24, 2
  %26 = lshr i16 %23, 4
  %27 = and i16 %26, 1
  %28 = or disjoint i16 %27, %25
  %29 = xor i16 %28, 1
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %29) #5
  call void @UI_view2d_view_orthoSpecial(ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 1) #5
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 4) #5
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #5
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #5
  call void @UI_view2d_view_restore(ptr noundef %0) #5
  %30 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #5
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %30) #5
  call void @UI_view2d_scrollers_free(ptr noundef %30) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !105 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !93
  switch i32 %6, label %25 [
    i32 234881024, label %29
    i32 67108864, label %7
    i32 83886080, label %12
    i32 285212672, label %17
    i32 301989888, label %21
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !95
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
  %14 = load i32, ptr %13, align 8, !tbaa !95
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
  %19 = load i32, ptr %18, align 8, !tbaa !106
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %29, label %30

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !106
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %29, label %30

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = icmp eq i32 %27, 1638400
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %12, %12, %12, %12, %7, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %30

30:                                               ; preds = %29, %25, %21, %17, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !107 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !108 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !97
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !98
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef 13, i32 noundef 0) #5
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  %18 = load ptr, ptr %11, align 8, !tbaa !99
  %19 = tail call ptr @WM_keymap_find(ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #5
  %20 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %19, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  %21 = load ptr, ptr %11, align 8, !tbaa !99
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %23 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %22, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !110 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
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
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_channel_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !111 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !93
  switch i32 %6, label %18 [
    i32 234881024, label %22
    i32 67108864, label %7
    i32 83886080, label %11
    i32 301989888, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !95
  %10 = icmp eq i32 %9, 458752
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !95
  switch i32 %13, label %23 [
    i32 1376256, label %22
    i32 1441792, label %22
    i32 1638400, label %22
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !106
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %22, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !95
  %21 = icmp eq i32 %20, 1638400
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11, %11, %11, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %23

23:                                               ; preds = %22, %18, %14, %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !112 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !93
  switch i32 %6, label %13 [
    i32 234881024, label %17
    i32 67108864, label %7
    i32 83886080, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !95
  switch i32 %9, label %18 [
    i32 458752, label %17
    i32 196608, label %17
    i32 131072, label %17
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !95
  switch i32 %12, label %18 [
    i32 1376256, label %17
    i32 1441792, label %17
    i32 1638400, label %17
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !95
  %16 = icmp eq i32 %15, 1638400
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10, %10, %10, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %18

18:                                               ; preds = %17, %13, %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !113 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 13, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !114 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #5
  ret void
}

; Function Attrs: optsize
declare void @nla_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_nla(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_nla_main_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_text_cache_draw(ptr noundef) local_unnamed_addr #2

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
declare void @draw_nla_channel_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

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
!66 = !{!"space_nla.c:nla_new"}
!67 = !{!68, !44, i64 32}
!68 = !{!"SpaceNla", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !45, i64 56, !45, i64 58, !44, i64 60, !35, i64 64, !40, i64 72}
!69 = !{!68, !35, i64 64}
!70 = !{!71, !35, i64 0}
!71 = !{!"bDopeSheet", !35, i64 0, !46, i64 8, !35, i64 24, !36, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!72 = !{!68, !45, i64 56}
!73 = !{!39, !45, i64 120}
!74 = !{!39, !45, i64 130}
!75 = !{!76, !45, i64 76}
!76 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!77 = !{!39, !42, i64 24}
!78 = !{!44, !44, i64 0}
!79 = !{!42, !42, i64 0}
!80 = !{!39, !42, i64 28}
!81 = !{i64 0, i64 4, !79, i64 4, i64 4, !79, i64 8, i64 4, !79, i64 12, i64 4, !79}
!82 = !{!45, !45, i64 0}
!83 = !{!"space_nla.c:nla_free"}
!84 = !{!"space_nla.c:nla_init"}
!85 = !{!76, !35, i64 96}
!86 = !{!87, !35, i64 0}
!87 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !36, i64 2090, !45, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!88 = !{!89, !35, i64 1088}
!89 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 1040, !45, i64 1042, !45, i64 1044, !45, i64 1046, !90, i64 1048, !36, i64 1056, !45, i64 1072, !35, i64 1080, !46, i64 1088, !46, i64 1104, !46, i64 1120, !46, i64 1136, !46, i64 1152, !46, i64 1168, !46, i64 1184, !46, i64 1200, !46, i64 1216, !46, i64 1232, !46, i64 1248, !46, i64 1264, !46, i64 1280, !46, i64 1296, !46, i64 1312, !46, i64 1328, !46, i64 1344, !46, i64 1360, !46, i64 1376, !46, i64 1392, !46, i64 1408, !46, i64 1424, !46, i64 1440, !46, i64 1456, !46, i64 1472, !46, i64 1488, !46, i64 1504, !46, i64 1520, !46, i64 1536, !46, i64 1552, !46, i64 1568, !46, i64 1584, !46, i64 1600, !46, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!90 = !{!"long", !36, i64 0}
!91 = !{!"space_nla.c:nla_duplicate"}
!92 = !{!"space_nla.c:nla_listener"}
!93 = !{!94, !44, i64 36}
!94 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!95 = !{!94, !44, i64 40}
!96 = !{!"space_nla.c:nla_main_area_init"}
!97 = !{!39, !45, i64 208}
!98 = !{!39, !45, i64 210}
!99 = !{!100, !35, i64 296}
!100 = !{!"wmWindowManager", !101, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !102, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!101 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!102 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!103 = !{!"space_nla.c:nla_main_area_draw"}
!104 = !{!68, !45, i64 58}
!105 = !{!"space_nla.c:nla_main_area_listener"}
!106 = !{!94, !44, i64 48}
!107 = !{!"space_nla.c:nla_header_area_init"}
!108 = !{!"space_nla.c:nla_header_area_draw"}
!109 = !{!"space_nla.c:nla_channel_area_init"}
!110 = !{!"space_nla.c:nla_channel_area_draw"}
!111 = !{!"space_nla.c:nla_channel_area_listener"}
!112 = !{!"space_nla.c:nla_region_listener"}
!113 = !{!"space_nla.c:nla_buttons_area_init"}
!114 = !{!"space_nla.c:nla_buttons_area_draw"}

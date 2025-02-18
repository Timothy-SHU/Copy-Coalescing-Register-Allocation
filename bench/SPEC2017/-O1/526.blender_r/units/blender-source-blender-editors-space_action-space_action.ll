; ModuleID = 'blender/source/blender/editors/space_action/space_action.c'
source_filename = "blender/source/blender/editors/space_action/space_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"spacetype action\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"spacetype action region\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"initaction\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"header for action\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"channel area for action\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"main area for action\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Dopesheet\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Action\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_action() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 12, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @action_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @action_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @action_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @action_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @action_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @action_keymap, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @action_listener, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @action_refresh, ptr %12, align 8, !tbaa !49
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @action_main_area_init, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @action_main_area_draw, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @action_main_area_listener, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 30, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %14) #7
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !57
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @action_header_area_init, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @action_header_area_draw, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @action_header_area_listener, ptr %28, align 8, !tbaa !55
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 2, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 18
  store i32 200, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 19, ptr %33, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @action_channel_area_init, ptr %34, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @action_channel_area_draw, ptr %35, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 6
  store ptr @action_channel_area_listener, ptr %36, align 8, !tbaa !55
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %30) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @action_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 344, ptr noundef nonnull @.str.3) #7
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 3
  store i32 12, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 10
  store i8 2, ptr %6, align 1, !tbaa !66
  %7 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 9
  store i8 3, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 8, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = or i32 %9, 16
  store i32 %10, ptr %8, align 8, !tbaa !68
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.4) #7
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 1, ptr %14, align 2, !tbaa !69
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  store i16 2, ptr %15, align 8, !tbaa !71
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.5) #7
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 2, ptr %18, align 2, !tbaa !69
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 3, ptr %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 9
  store i16 8, ptr %20, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 14
  store i16 2, ptr %21, align 2, !tbaa !73
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 384, ptr noundef nonnull @.str.6) #7
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  store i16 0, ptr %24, align 2, !tbaa !69
  %25 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  store float -1.000000e+01, ptr %25, align 8, !tbaa !74
  %26 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 11
  %27 = load i16, ptr %26, align 4, !tbaa !75
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 0, %28
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 3.000000e+00
  %32 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 2
  store float %31, ptr %32, align 8, !tbaa !77
  %33 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 10
  %34 = load i16, ptr %33, align 2, !tbaa !78
  %35 = sitofp i16 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 1
  store float %35, ptr %36, align 4, !tbaa !79
  %37 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %37, align 4, !tbaa !80
  %38 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !81
  %39 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %39, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %40, align 4, !tbaa !82
  %41 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %41, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 6, i64 1
  store float 0x47EFFFFFE0000000, ptr %42, align 4, !tbaa !82
  %43 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 8
  store float 5.000000e+01, ptr %44, align 4, !tbaa !84
  %45 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 9
  store i16 74, ptr %45, align 8, !tbaa !72
  %46 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 12
  store i16 512, ptr %46, align 2, !tbaa !85
  %47 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 13
  store i16 16, ptr %47, align 8, !tbaa !86
  %48 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 15
  store i16 4, ptr %48, align 4, !tbaa !87
  %49 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 14
  store i16 2, ptr %49, align 2, !tbaa !73
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @action_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @action_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !89
  %7 = or i16 %6, 512
  store i16 %7, ptr %5, align 2, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @action_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #7
  ret ptr %3
}

declare void @action_operatortypes() #4

declare void @action_keymap(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @action_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !90
  switch i32 %7, label %85 [
    i32 369098752, label %8
    i32 234881024, label %17
    i32 67108864, label %37
    i32 83886080, label %45
    i32 352321536, label %53
    i32 285212672, label %63
    i32 251658240, label %71
    i32 33554432, label %79
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !67
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %85

16:                                               ; preds = %12
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !93
  switch i32 %19, label %36 [
    i32 4849664, label %20
    i32 4587520, label %24
    i32 4718592, label %31
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !89
  %23 = or i16 %22, 512
  store i16 %23, ptr %21, align 2, !tbaa !89
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !92
  %27 = add i32 %26, -3
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %19, 4718592
  br i1 %30, label %31, label %36

31:                                               ; preds = %17, %29
  %32 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %36, label %35

35:                                               ; preds = %24, %31
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

36:                                               ; preds = %17, %31, %29
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !93
  switch i32 %39, label %44 [
    i32 458752, label %40
    i32 524288, label %40
  ]

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %42 = load i16, ptr %41, align 2, !tbaa !89
  %43 = or i16 %42, 512
  store i16 %43, ptr %41, align 2, !tbaa !89
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

44:                                               ; preds = %37
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !93
  switch i32 %47, label %52 [
    i32 1441792, label %48
    i32 1376256, label %48
    i32 1179648, label %85
  ]

48:                                               ; preds = %45, %45
  %49 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %50 = load i16, ptr %49, align 2, !tbaa !89
  %51 = or i16 %50, 512
  store i16 %51, ptr %49, align 2, !tbaa !89
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

52:                                               ; preds = %45
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %55 = load i8, ptr %54, align 8, !tbaa !67
  %56 = icmp eq i8 %55, 4
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !93
  %60 = icmp eq i32 %59, 5963776
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

62:                                               ; preds = %57
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !92
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %69 = load i16, ptr %68, align 2, !tbaa !89
  %70 = or i16 %69, 512
  store i16 %70, ptr %68, align 2, !tbaa !89
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !93
  switch i32 %73, label %85 [
    i32 917504, label %74
    i32 1179648, label %75
  ]

74:                                               ; preds = %71
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  br label %85

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %77 = load i16, ptr %76, align 2, !tbaa !89
  %78 = or i16 %77, 512
  store i16 %78, ptr %76, align 2, !tbaa !89
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %81 = load i16, ptr %80, align 2, !tbaa !89
  %82 = and i16 %81, 512
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void @ED_area_tag_refresh(ptr noundef %1) #7
  br label %85

85:                                               ; preds = %79, %84, %74, %75, %71, %63, %67, %53, %62, %61, %48, %45, %52, %40, %44, %20, %36, %35, %8, %16, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !89
  %7 = and i16 %6, 512
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  tail call void @ANIM_sync_animchannels_to_data(ptr noundef %0) #7
  %10 = load i16, ptr %5, align 2, !tbaa !89
  %11 = and i16 %10, -513
  store i16 %11, ptr %5, align 2, !tbaa !89
  tail call void @ED_area_tag_redraw(ptr noundef %1) #7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %9 ]
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %16) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !94

19:                                               ; preds = %15, %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !97
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !98
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 12, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #7
  tail call void @glClear(i32 noundef 16384) #7
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #7
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !89
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = xor i16 %9, 1
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !97
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !98
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @UI_view2d_grid_calc(ptr noundef %11, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %14, i32 noundef %17) #7
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 31) #7
  tail call void @UI_view2d_grid_free(ptr noundef %18) #7
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #7
  %19 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @draw_channel_strips(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %1) #7
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i16, ptr %6, align 2, !tbaa !89
  %24 = lshr i16 %23, 1
  %25 = and i16 %24, 2
  %26 = lshr i16 %23, 8
  %27 = and i16 %26, 1
  %28 = or disjoint i16 %27, %25
  %29 = xor i16 %28, 1
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %29) #7
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  %33 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.Scene, ptr %34, i64 0, i32 24
  %36 = icmp ne ptr %31, %35
  %37 = select i1 %32, i1 %36, i1 false
  %38 = select i1 %37, i32 6, i32 4
  call void @ED_markers_draw(ptr noundef %0, i32 noundef %38) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #7
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #7
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7
  call void @UI_view2d_view_restore(ptr noundef %0) #7
  %39 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #7
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %39) #7
  call void @UI_view2d_scrollers_free(ptr noundef %39) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %23 [
    i32 234881024, label %27
    i32 67108864, label %7
    i32 83886080, label %12
    i32 285212672, label %15
    i32 301989888, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = add i32 %9, -131072
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 16)
  switch i32 %11, label %28 [
    i32 2, label %27
    i32 5, label %27
    i32 1, label %27
    i32 0, label %27
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !93
  switch i32 %14, label %28 [
    i32 1638400, label %27
    i32 1376256, label %27
    i32 1441792, label %27
  ]

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %27, label %28

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %27, label %28

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = icmp eq i32 %25, 1638400
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %12, %12, %12, %7, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %28

28:                                               ; preds = %27, %23, %19, %15, %12, %7
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @action_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %19 [
    i32 67108864, label %7
    i32 301989888, label %11
    i32 234881024, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = icmp eq i32 %9, 458752
  br i1 %10, label %18, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !92
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %18, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !93
  switch i32 %17, label %19 [
    i32 4718592, label %18
    i32 4587520, label %18
  ]

18:                                               ; preds = %15, %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %19

19:                                               ; preds = %18, %15, %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !97
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !98
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #7
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #7
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #7
  tail call void @glClear(i32 noundef 16384) #7
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #7
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @draw_channel_names(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #7
  br label %8

8:                                                ; preds = %7, %2
  call void @UI_view2d_view_restore(ptr noundef %0) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_channel_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %23 [
    i32 234881024, label %27
    i32 67108864, label %7
    i32 83886080, label %10
    i32 301989888, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !93
  switch i32 %9, label %28 [
    i32 458752, label %27
    i32 196608, label %27
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = add i32 %12, -1376256
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 16)
  switch i32 %14, label %28 [
    i32 0, label %27
    i32 1, label %27
    i32 4, label %27
    i32 3, label %15
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %27, label %28

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %27, label %28

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = icmp eq i32 %25, 1638400
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %10, %10, %10, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %28

28:                                               ; preds = %27, %23, %19, %10, %15, %7
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #4

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #4

declare void @ANIM_sync_animchannels_to_data(ptr noundef) local_unnamed_addr #4

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_space_action(ptr noundef) local_unnamed_addr #4

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #4

declare void @glClear(i32 noundef) local_unnamed_addr #4

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #4

declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #4

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @draw_channel_strips(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #4

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #4

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #4

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @draw_channel_names(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!53 = !{!51, !35, i64 24}
!54 = !{!51, !35, i64 40}
!55 = !{!51, !35, i64 48}
!56 = !{!51, !40, i64 168}
!57 = !{!51, !40, i64 164}
!58 = !{!51, !40, i64 160}
!59 = !{!60, !40, i64 32}
!60 = !{!"SpaceAction", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !61, i64 36, !36, i64 40, !62, i64 56, !35, i64 216, !65, i64 224, !36, i64 336, !36, i64 337, !52, i64 338, !61, i64 340}
!61 = !{!"float", !36, i64 0}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !36, i64 80, !36, i64 88, !61, i64 96, !61, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!63 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!"bDopeSheet", !35, i64 0, !41, i64 8, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108}
!66 = !{!60, !36, i64 337}
!67 = !{!60, !36, i64 336}
!68 = !{!60, !40, i64 320}
!69 = !{!70, !52, i64 214}
!70 = !{!"ARegion", !35, i64 0, !35, i64 8, !62, i64 16, !64, i64 176, !64, i64 192, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !52, i64 216, !52, i64 218, !61, i64 220, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !52, i64 236, !52, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!71 = !{!70, !52, i64 216}
!72 = !{!70, !52, i64 120}
!73 = !{!70, !52, i64 130}
!74 = !{!70, !61, i64 16}
!75 = !{!76, !52, i64 76}
!76 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !64, i64 56, !36, i64 72, !36, i64 73, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !52, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!77 = !{!70, !61, i64 24}
!78 = !{!76, !52, i64 74}
!79 = !{!70, !61, i64 20}
!80 = !{!70, !61, i64 28}
!81 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82}
!82 = !{!61, !61, i64 0}
!83 = !{!70, !61, i64 112}
!84 = !{!70, !61, i64 116}
!85 = !{!70, !52, i64 126}
!86 = !{!70, !52, i64 128}
!87 = !{!70, !52, i64 132}
!88 = !{!76, !35, i64 96}
!89 = !{!60, !52, i64 338}
!90 = !{!91, !40, i64 36}
!91 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!92 = !{!91, !40, i64 48}
!93 = !{!91, !40, i64 40}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!70, !52, i64 208}
!98 = !{!70, !52, i64 210}
!99 = !{!100, !35, i64 296}
!100 = !{!"wmWindowManager", !101, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !52, i64 156, !52, i64 158, !41, i64 160, !41, i64 176, !102, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!101 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!102 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}

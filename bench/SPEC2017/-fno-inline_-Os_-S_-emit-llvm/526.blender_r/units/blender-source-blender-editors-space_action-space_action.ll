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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_action() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 12, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @action_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @action_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @action_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @action_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @action_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @action_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @action_listener, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @action_refresh, ptr %12, align 8, !tbaa !20
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @action_main_area_init, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @action_main_area_draw, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @action_main_area_listener, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 30, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %14) #7
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !28
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @action_header_area_init, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @action_header_area_draw, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @action_header_area_listener, ptr %28, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.2) #7
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 2, ptr %31, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 18
  store i32 200, ptr %32, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 19, ptr %33, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @action_channel_area_init, ptr %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @action_channel_area_draw, ptr %35, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 6
  store ptr @action_channel_area_listener, ptr %36, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %30) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @action_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 344, ptr noundef nonnull @.str.3) #7
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 3
  store i32 12, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 10
  store i8 2, ptr %6, align 1, !tbaa !37
  %7 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 9
  store i8 3, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 8, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = or i32 %9, 16
  store i32 %10, ptr %8, align 8, !tbaa !39
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.4) #7
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 1, ptr %14, align 2, !tbaa !40
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  store i16 2, ptr %15, align 8, !tbaa !42
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.5) #7
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 2, ptr %18, align 2, !tbaa !40
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 3, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 9
  store i16 8, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 14
  store i16 2, ptr %21, align 2, !tbaa !44
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %23 = tail call ptr %22(i64 noundef 384, ptr noundef nonnull @.str.6) #7
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  store i16 0, ptr %24, align 2, !tbaa !40
  %25 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  store float -1.000000e+01, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 11
  %27 = load i16, ptr %26, align 4, !tbaa !46
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 0, %28
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 3.000000e+00
  %32 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 2
  store float %31, ptr %32, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 10
  %34 = load i16, ptr %33, align 2, !tbaa !49
  %35 = sitofp i16 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 1
  store float %35, ptr %36, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !52
  %39 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %39, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3F847AE140000000, float 5.000000e+01>, ptr %40, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 9
  store i16 74, ptr %41, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 12
  store <4 x i16> <i16 512, i16 16, i16 2, i16 4>, ptr %42, align 2, !tbaa !54
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @action_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @action_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !56
  %7 = or i16 %6, 512
  store i16 %7, ptr %5, align 2, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @action_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #7
  ret ptr %3
}

; Function Attrs: optsize
declare void @action_operatortypes() #4

; Function Attrs: optsize
declare void @action_keymap(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  switch i32 %7, label %83 [
    i32 369098752, label %8
    i32 234881024, label %17
    i32 67108864, label %35
    i32 83886080, label %43
    i32 352321536, label %51
    i32 285212672, label %61
    i32 251658240, label %69
    i32 33554432, label %77
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %83

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !60
  switch i32 %19, label %34 [
    i32 4849664, label %20
    i32 4587520, label %24
    i32 4718592, label %29
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !56
  %23 = or i16 %22, 512
  store i16 %23, ptr %21, align 2, !tbaa !56
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !59
  %27 = add i32 %26, -3
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %33, label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %29
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

34:                                               ; preds = %17, %24, %29
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !60
  switch i32 %37, label %42 [
    i32 458752, label %38
    i32 524288, label %38
  ]

38:                                               ; preds = %35, %35
  %39 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %40 = load i16, ptr %39, align 2, !tbaa !56
  %41 = or i16 %40, 512
  store i16 %41, ptr %39, align 2, !tbaa !56
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

42:                                               ; preds = %35
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !60
  switch i32 %45, label %50 [
    i32 1441792, label %46
    i32 1376256, label %46
    i32 1179648, label %83
  ]

46:                                               ; preds = %43, %43
  %47 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %48 = load i16, ptr %47, align 2, !tbaa !56
  %49 = or i16 %48, 512
  store i16 %49, ptr %47, align 2, !tbaa !56
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

50:                                               ; preds = %43
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %53 = load i8, ptr %52, align 8, !tbaa !38
  %54 = icmp eq i8 %53, 4
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !60
  %58 = icmp eq i32 %57, 5963776
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

60:                                               ; preds = %55
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

61:                                               ; preds = %3
  %62 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !59
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %67 = load i16, ptr %66, align 2, !tbaa !56
  %68 = or i16 %67, 512
  store i16 %68, ptr %66, align 2, !tbaa !56
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

69:                                               ; preds = %3
  %70 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !60
  switch i32 %71, label %83 [
    i32 917504, label %72
    i32 1179648, label %73
  ]

72:                                               ; preds = %69
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %83

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %75 = load i16, ptr %74, align 2, !tbaa !56
  %76 = or i16 %75, 512
  store i16 %76, ptr %74, align 2, !tbaa !56
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

77:                                               ; preds = %3
  %78 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %79 = load i16, ptr %78, align 2, !tbaa !56
  %80 = and i16 %79, 512
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %83

83:                                               ; preds = %77, %82, %72, %73, %69, %61, %65, %51, %60, %59, %46, %43, %50, %38, %42, %20, %34, %33, %8, %16, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !56
  %7 = and i16 %6, 512
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  tail call void @ANIM_sync_animchannels_to_data(ptr noundef %0) #7
  %10 = load i16, ptr %5, align 2, !tbaa !56
  %11 = and i16 %10, -513
  store i16 %11, ptr %5, align 2, !tbaa !56
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %9 ]
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %16) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !61

19:                                               ; preds = %15, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !64
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 12, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #7
  tail call void @glClear(i32 noundef 16384) #7
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #7
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !56
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = xor i16 %9, 1
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !63
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !64
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @UI_view2d_grid_calc(ptr noundef %11, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %14, i32 noundef %17) #7
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 31) #7
  tail call void @UI_view2d_grid_free(ptr noundef %18) #7
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #7
  %19 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @draw_channel_strips(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %1) #7
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i16, ptr %6, align 2, !tbaa !56
  %24 = lshr i16 %23, 1
  %25 = and i16 %24, 2
  %26 = lshr i16 %23, 8
  %27 = and i16 %26, 1
  %28 = or disjoint i16 %27, %25
  %29 = xor i16 %28, 1
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %29) #7
  call void @UI_view2d_view_orthoSpecial(ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
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
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #7
  call void @UI_view2d_view_restore(ptr noundef %0) #7
  %39 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #7
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %39) #7
  call void @UI_view2d_scrollers_free(ptr noundef %39) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !57
  switch i32 %6, label %23 [
    i32 234881024, label %27
    i32 67108864, label %7
    i32 83886080, label %12
    i32 285212672, label %15
    i32 301989888, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !60
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
  %14 = load i32, ptr %13, align 8, !tbaa !60
  switch i32 %14, label %28 [
    i32 1638400, label %27
    i32 1376256, label %27
    i32 1441792, label %27
  ]

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %27, label %28

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %27, label %28

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = icmp eq i32 %25, 1638400
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %12, %12, %12, %7, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %28

28:                                               ; preds = %27, %23, %19, %15, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !57
  switch i32 %6, label %19 [
    i32 67108864, label %7
    i32 301989888, label %11
    i32 234881024, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i32 %9, 458752
  br i1 %10, label %18, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %18, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !60
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !63
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !64
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #7
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #7
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
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
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @action_channel_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !57
  switch i32 %6, label %23 [
    i32 234881024, label %27
    i32 67108864, label %7
    i32 83886080, label %10
    i32 301989888, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !60
  switch i32 %9, label %28 [
    i32 458752, label %27
    i32 196608, label %27
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !60
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
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %27, label %28

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %27, label %28

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = icmp eq i32 %25, 1638400
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %10, %10, %10, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %28

28:                                               ; preds = %27, %23, %19, %10, %15, %7
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ANIM_sync_animchannels_to_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_space_action(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @draw_channel_strips(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @draw_channel_names(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = !{!10, !11, i64 80}
!10 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 192, !11, i64 208}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ListBase", !6, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 88}
!14 = !{!10, !6, i64 96}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 136}
!17 = !{!10, !6, i64 144}
!18 = !{!10, !6, i64 152}
!19 = !{!10, !6, i64 120}
!20 = !{!10, !6, i64 128}
!21 = !{!22, !11, i64 16}
!22 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !23, i64 172, !23, i64 174, !23, i64 176}
!23 = !{!"short", !7, i64 0}
!24 = !{!22, !6, i64 24}
!25 = !{!22, !6, i64 40}
!26 = !{!22, !6, i64 48}
!27 = !{!22, !11, i64 168}
!28 = !{!22, !11, i64 164}
!29 = !{!22, !11, i64 160}
!30 = !{!31, !11, i64 32}
!31 = !{!"SpaceAction", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !32, i64 36, !7, i64 40, !33, i64 56, !6, i64 216, !36, i64 224, !7, i64 336, !7, i64 337, !23, i64 338, !32, i64 340}
!32 = !{!"float", !7, i64 0}
!33 = !{!"View2D", !34, i64 0, !34, i64 16, !35, i64 32, !35, i64 48, !35, i64 64, !7, i64 80, !7, i64 88, !32, i64 96, !32, i64 100, !23, i64 104, !23, i64 106, !23, i64 108, !23, i64 110, !23, i64 112, !23, i64 114, !23, i64 116, !23, i64 118, !23, i64 120, !23, i64 122, !23, i64 124, !23, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!34 = !{!"rctf", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!35 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!36 = !{!"bDopeSheet", !6, i64 0, !12, i64 8, !6, i64 24, !7, i64 32, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108}
!37 = !{!31, !7, i64 337}
!38 = !{!31, !7, i64 336}
!39 = !{!31, !11, i64 320}
!40 = !{!41, !23, i64 214}
!41 = !{!"ARegion", !6, i64 0, !6, i64 8, !33, i64 16, !35, i64 176, !35, i64 192, !23, i64 208, !23, i64 210, !23, i64 212, !23, i64 214, !23, i64 216, !23, i64 218, !32, i64 220, !23, i64 224, !23, i64 226, !23, i64 228, !23, i64 230, !23, i64 232, !23, i64 234, !23, i64 236, !23, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!42 = !{!41, !23, i64 216}
!43 = !{!41, !23, i64 120}
!44 = !{!41, !23, i64 130}
!45 = !{!41, !32, i64 16}
!46 = !{!47, !23, i64 76}
!47 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !35, i64 56, !7, i64 72, !7, i64 73, !23, i64 74, !23, i64 76, !23, i64 78, !23, i64 80, !23, i64 82, !23, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!48 = !{!41, !32, i64 24}
!49 = !{!47, !23, i64 74}
!50 = !{!41, !32, i64 20}
!51 = !{!41, !32, i64 28}
!52 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!53 = !{!32, !32, i64 0}
!54 = !{!23, !23, i64 0}
!55 = !{!47, !6, i64 96}
!56 = !{!31, !23, i64 338}
!57 = !{!58, !11, i64 36}
!58 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!59 = !{!58, !11, i64 48}
!60 = !{!58, !11, i64 40}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!41, !23, i64 208}
!64 = !{!41, !23, i64 210}
!65 = !{!66, !6, i64 296}
!66 = !{!"wmWindowManager", !67, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !23, i64 156, !23, i64 158, !12, i64 160, !12, i64 176, !68, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!67 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !23, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!68 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}

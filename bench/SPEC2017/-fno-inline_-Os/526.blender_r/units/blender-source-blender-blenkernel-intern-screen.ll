; ModuleID = 'blender/source/blender/blenkernel/intern/screen.c'
source_filename = "blender/source/blender/blenkernel/intern/screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.HeaderType = type { ptr, ptr, [64 x i8], i32, ptr, %struct.ExtensionRNA }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiList = type { ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.uiListDyn = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
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
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }

@spacetypes = internal global %struct.ListBase zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"Error, region type %d missing in - name:\22%s\22, id:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"error: redefinition of spacetype %s\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [22 x i8] c"regiondata free error\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_spacetypes_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @spacetypes, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call fastcc void @spacetype_free(ptr noundef nonnull %4) #15
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !38

7:                                                ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @spacetypes) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spacetype_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !40 {
  %2 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 13
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5, %19
  %12 = phi ptr [ %20, %19 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 13, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  tail call void %14(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %11, %16
  %20 = load ptr, ptr %12, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !46

22:                                               ; preds = %19, %5
  %23 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22, %34
  %27 = phi ptr [ %35, %34 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.HeaderType, ptr %27, i64 0, i32 5, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.HeaderType, ptr %27, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  tail call void %29(ptr noundef %33) #16
  br label %34

34:                                               ; preds = %26, %31
  %35 = load ptr, ptr %27, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !50

37:                                               ; preds = %34, %22
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #16
  tail call void @BLI_freelistN(ptr noundef nonnull %23) #16
  %38 = load ptr, ptr %6, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !51

40:                                               ; preds = %37, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #16
  %41 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 17
  tail call void @BLI_freelistN(ptr noundef nonnull %41) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_spacetype_from_id(i32 noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @spacetypes, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceType, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2, !llvm.loop !55

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BKE_regiontype_from_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 16
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %18, label %4, !llvm.loop !59

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1, ptr noundef nonnull %13, i32 noundef %15) #15
  %17 = load ptr, ptr %3, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %8, %12
  %19 = phi ptr [ %17, %12 ], [ %6, %8 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BKE_spacetypes_list() local_unnamed_addr #5 {
  ret ptr @spacetypes
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_spacetype_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call ptr @BKE_spacetype_from_id(i32 noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SpaceType, ptr %4, i64 0, i32 2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %7) #15
  tail call fastcc void @spacetype_free(ptr noundef nonnull %4) #15
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %4) #16
  br label %10

10:                                               ; preds = %6, %1
  tail call void @BLI_addtail(ptr noundef nonnull @spacetypes, ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_spacetype_exists(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_spacetype_from_id(i32 noundef %0) #15
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_spacedata_freelist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %24, %23 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = tail call ptr @BKE_spacetype_from_id(i32 noundef %7) #15
  %9 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %4 ]
  tail call void @BKE_area_region_free(ptr noundef %8, ptr noundef nonnull %13) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !64

16:                                               ; preds = %12, %4
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #16
  %17 = icmp eq ptr %8, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.SpaceType, ptr %8, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void %20(ptr noundef nonnull %5) #16
  br label %23

23:                                               ; preds = %22, %18, %16
  %24 = load ptr, ptr %5, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %4, !llvm.loop !66

26:                                               ; preds = %23, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_area_region_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !67
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BKE_regiontype_from_id(ptr noundef nonnull %0, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ARegionType, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %1) #16
  br label %15

15:                                               ; preds = %14, %10, %4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %30

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef nonnull %1) #16
  br label %30

30:                                               ; preds = %15, %19, %21, %25, %29
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef nonnull %32) #16
  store ptr null, ptr %31, align 8, !tbaa !75
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %37) #16
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %36, %67
  %42 = phi ptr [ %68, %67 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.uiList, ptr %42, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.uiListDyn, ptr %44, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %48) #16
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.uiListDyn, ptr %44, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %57(ptr noundef nonnull %54) #16
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %59(ptr noundef nonnull %44) #16
  br label %60

60:                                               ; preds = %58, %41
  %61 = getelementptr inbounds %struct.uiList, ptr %42, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !81
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  tail call void @IDP_FreeProperty(ptr noundef nonnull %62) #16
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %66 = load ptr, ptr %61, align 8, !tbaa !81
  tail call void %65(ptr noundef %66) #16
  br label %67

67:                                               ; preds = %60, %64
  %68 = load ptr, ptr %42, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %41, !llvm.loop !82

70:                                               ; preds = %67, %36
  tail call void @BLI_freelistN(ptr noundef nonnull %38) #16
  %71 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %71) #16
  %72 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 27
  tail call void @BLI_freelistN(ptr noundef nonnull %72) #16
  %73 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %73) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_area_region_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #15
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 27
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #15
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 23
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %8) #15
  %9 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 24
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #15
  %10 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 7
  store i16 0, ptr %10, align 4, !tbaa !83
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !67
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @BKE_regiontype_from_id(ptr noundef %0, i32 noundef %17) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ARegionType, ptr %18, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %14
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !73
  %29 = tail call ptr %27(ptr noundef %28) #16
  %30 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  store ptr %29, ptr %30, align 8, !tbaa !73
  br label %31

31:                                               ; preds = %26, %2
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 21
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %37 = tail call ptr %36(ptr noundef nonnull %33) #16
  %38 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 21
  store ptr %37, ptr %38, align 8, !tbaa !75
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 22
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %40) #15
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @BLI_duplicatelist(ptr noundef nonnull %40, ptr noundef nonnull %41) #16
  %42 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 25
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %42) #15
  %43 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 25
  tail call void @BLI_duplicatelist(ptr noundef nonnull %42, ptr noundef nonnull %43) #16
  %44 = load ptr, ptr %40, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %39, %59
  %47 = phi ptr [ %60, %59 ], [ %44, %39 ]
  %48 = getelementptr inbounds %struct.Panel, ptr %47, i64 0, i32 18
  br label %49

49:                                               ; preds = %46, %54
  %50 = phi ptr [ %52, %54 ], [ %40, %46 ]
  %51 = phi ptr [ %55, %54 ], [ %41, %46 ]
  %52 = load ptr, ptr %50, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %51, align 8, !tbaa !34
  %56 = load ptr, ptr %48, align 8, !tbaa !85
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %49, !llvm.loop !87

58:                                               ; preds = %54
  store ptr %52, ptr %48, align 8, !tbaa !85
  br label %59

59:                                               ; preds = %49, %58
  %60 = load ptr, ptr %47, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %46, !llvm.loop !88

62:                                               ; preds = %59, %39
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !89 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_spacedata_copylist(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #15
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2, %19
  %6 = phi ptr [ %20, %19 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.SpaceLink, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @BKE_spacetype_from_id(i32 noundef %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call ptr %13(ptr noundef nonnull %6) #16
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.SpaceLink, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.SpaceLink, ptr %6, i64 0, i32 2
  tail call fastcc void @region_copylist(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull %18) #15
  br label %19

19:                                               ; preds = %15, %11, %5
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !llvm.loop !91

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_copylist(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !92 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %1) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = tail call ptr @BKE_area_region_copy(ptr noundef %0, ptr noundef nonnull %7) #15
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %8) #16
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !93

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_spacedata_draw_locks(i32 noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @spacetypes, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  br label %9

6:                                                ; preds = %19, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !llvm.loop !94

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %2, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.SpaceType, ptr %10, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %19
  %15 = phi ptr [ %22, %19 ], [ %12, %9 ]
  br i1 %5, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 22
  %18 = load i16, ptr %17, align 2, !tbaa !95
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 21
  store i16 %20, ptr %21, align 4
  %22 = load ptr, ptr %15, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %6, label %14, !llvm.loop !96

24:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_screen_area_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !97
  %4 = zext i8 %3 to i32
  %5 = tail call ptr @BKE_spacetype_from_id(i32 noundef %4) #15
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %1 ]
  tail call void @BKE_area_region_free(ptr noundef %5, ptr noundef nonnull %10) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !99

13:                                               ; preds = %9, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #16
  %14 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  tail call void @BKE_spacedata_freelist(ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_screen_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef nonnull %6) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !100

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #16
  %10 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  tail call void @BKE_screen_area_free(ptr noundef nonnull %14) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !105

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #16
  %19 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %19) #16
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_visible_layers(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4, %20
  %9 = phi ptr [ %22, %20 ], [ %6, %4 ]
  %10 = phi i32 [ %21, %20 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !97
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 22
  %18 = load i32, ptr %17, align 8, !tbaa !107
  %19 = or i32 %18, %10
  br label %20

20:                                               ; preds = %8, %14
  %21 = phi i32 [ %19, %14 ], [ %10, %8 ]
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !109

24:                                               ; preds = %20
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4, %2, %24
  %27 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !110
  br label %29

29:                                               ; preds = %24, %26
  %30 = phi i32 [ %28, %26 ], [ %21, %24 ]
  ret i32 %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_area_find_region_type(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !128

15:                                               ; preds = %6, %10, %2
  %16 = phi ptr [ null, %2 ], [ null, %6 ], [ %8, %10 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_area_find_region_active_win(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 15
  %6 = load i16, ptr %5, align 4, !tbaa !129
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %3
  %15 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %0, i32 noundef 0) #15
  br label %16

16:                                               ; preds = %1, %14, %10
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_screen_find_big_area(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, -1
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi ptr [ %5, %7 ], [ %36, %33 ]
  %11 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %12 = phi ptr [ null, %7 ], [ %34, %33 ]
  br i1 %8, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !97
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !130
  %21 = sext i16 %20 to i32
  %22 = icmp slt i16 %20, %2
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 11
  %25 = load i16, ptr %24, align 4, !tbaa !131
  %26 = icmp slt i16 %25, %2
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = sext i16 %25 to i32
  %29 = mul nsw i32 %28, %21
  %30 = icmp sgt i32 %29, %11
  %31 = select i1 %30, ptr %10, ptr %12
  %32 = tail call i32 @llvm.smax.i32(i32 %29, i32 %11)
  br label %33

33:                                               ; preds = %27, %13, %23, %18
  %34 = phi ptr [ %12, %23 ], [ %12, %18 ], [ %12, %13 ], [ %31, %27 ]
  %35 = phi i32 [ %11, %23 ], [ %11, %18 ], [ %11, %13 ], [ %32, %27 ]
  %36 = load ptr, ptr %10, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9, !llvm.loop !132

38:                                               ; preds = %33, %3
  %39 = phi ptr [ null, %3 ], [ %34, %33 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_view3d_layer_active_ex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %7 = load i16, ptr %6, align 4, !tbaa !133
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 13
  br label %17

15:                                               ; preds = %9, %5
  %16 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 23
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, ptr %18, align 4, !tbaa !135
  %20 = icmp ne i8 %2, 0
  %21 = icmp ne ptr %0, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 22
  %29 = load i32, ptr %28, align 8, !tbaa !107
  %30 = or i32 %29, %19
  br label %31

31:                                               ; preds = %23, %27, %17
  %32 = phi i32 [ %30, %27 ], [ %19, %23 ], [ %19, %17 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_view3d_layer_active(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call i32 @BKE_screen_view3d_layer_active_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #15
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_sync(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %4 = load i16, ptr %3, align 4, !tbaa !133
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 22
  store i32 %12, ptr %13, align 8, !tbaa !107
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  store ptr %15, ptr %16, align 8, !tbaa !137
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %18, %34
  %23 = phi ptr [ %35, %34 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !67
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 30
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %29, i64 0, i32 25
  %31 = load i8, ptr %30, align 1, !tbaa !138
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8 1, ptr %30, align 1, !tbaa !138
  br label %34

34:                                               ; preds = %27, %33, %22
  %35 = load ptr, ptr %23, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %22, !llvm.loop !140

37:                                               ; preds = %34, %18, %10
  %38 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 23
  %39 = load i32, ptr %38, align 4, !tbaa !141
  %40 = and i32 %39, %12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %51

42:                                               ; preds = %45
  %43 = add nuw nsw i32 %46, 1
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %51, label %45, !llvm.loop !142

45:                                               ; preds = %37, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %37 ]
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %42, label %50

50:                                               ; preds = %45
  store i32 %47, ptr %38, align 4, !tbaa !141
  br label %51

51:                                               ; preds = %42, %37, %50, %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_scene_sync(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  br label %10

7:                                                ; preds = %22, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10, !llvm.loop !143

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %3, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %22
  %16 = phi ptr [ %23, %22 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.SpaceLink, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !tbaa !144
  tail call void @BKE_screen_view3d_sync(ptr noundef nonnull %16, ptr noundef %21) #15
  br label %22

22:                                               ; preds = %15, %20
  %23 = load ptr, ptr %16, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %7, label %15, !llvm.loop !145

25:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_main_sync(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2, %31
  %6 = phi ptr [ %32, %31 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %17

14:                                               ; preds = %28, %17
  %15 = load ptr, ptr %18, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !llvm.loop !146

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %19 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %14, label %22

22:                                               ; preds = %17, %28
  %23 = phi ptr [ %29, %28 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.SpaceLink, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !61
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @BKE_screen_view3d_sync(ptr noundef nonnull %23, ptr noundef %1) #15
  br label %28

28:                                               ; preds = %22, %27
  %29 = load ptr, ptr %23, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %14, label %22, !llvm.loop !147

31:                                               ; preds = %14, %10, %5
  %32 = load ptr, ptr %6, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %5, !llvm.loop !148

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_screen_view3d_twmode_remove(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 41
  %4 = load i8, ptr %3, align 4, !tbaa !149
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -5
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %6, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = add i8 %4, -1
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i8 [ %11, %10 ], [ 0, %2 ]
  store i8 %13, ptr %3, align 4, !tbaa !149
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_main_twmode_remove(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3, %32
  %7 = phi ptr [ %33, %32 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %18

15:                                               ; preds = %29, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !llvm.loop !150

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %29
  %24 = phi ptr [ %30, %29 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct.SpaceLink, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @BKE_screen_view3d_twmode_remove(ptr noundef nonnull %24, i32 noundef %2) #15
  br label %29

29:                                               ; preds = %23, %28
  %30 = load ptr, ptr %24, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %15, label %23, !llvm.loop !151

32:                                               ; preds = %15, %11, %6
  %33 = load ptr, ptr %7, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %6, !llvm.loop !152

35:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BKE_screen_view3d_zoom_to_fac(float noundef %0) local_unnamed_addr #5 {
  %2 = fdiv float %0, 5.000000e+01
  %3 = fadd float %2, 0x3FF6A09E60000000
  %4 = fmul float %3, %3
  %5 = fmul float %4, 2.500000e-01
  ret float %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BKE_screen_view3d_zoom_from_fac(float noundef %0) local_unnamed_addr #10 {
  %2 = fmul float %0, 4.000000e+00
  %3 = tail call float @sqrtf(float noundef %2) #16
  %4 = fadd float %3, 0xBFF6A09E60000000
  %5 = fmul float %4, 5.000000e+01
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"screen.c:spacetype_free"}
!41 = !{!42, !35, i64 400}
!42 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !43, i64 336, !43, i64 340, !43, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !44, i64 376}
!43 = !{!"int", !36, i64 0}
!44 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!45 = !{!42, !35, i64 376}
!46 = distinct !{!46, !39}
!47 = !{!48, !35, i64 120}
!48 = !{!"HeaderType", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 80, !35, i64 88, !44, i64 96}
!49 = !{!48, !35, i64 96}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!53, !43, i64 80}
!53 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !54, i64 176, !54, i64 192, !43, i64 208}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = distinct !{!55, !39}
!56 = !{!57, !43, i64 16}
!57 = !{!"ARegionType", !35, i64 0, !35, i64 8, !43, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !54, i64 104, !54, i64 120, !54, i64 136, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !58, i64 172, !58, i64 174, !58, i64 176}
!58 = !{!"short", !36, i64 0}
!59 = distinct !{!59, !39}
!60 = !{!53, !35, i64 176}
!61 = !{!62, !43, i64 32}
!62 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !54, i64 16, !43, i64 32, !63, i64 36, !36, i64 40}
!63 = !{!"float", !36, i64 0}
!64 = distinct !{!64, !39}
!65 = !{!53, !35, i64 96}
!66 = distinct !{!66, !39}
!67 = !{!68, !58, i64 214}
!68 = !{!"ARegion", !35, i64 0, !35, i64 8, !69, i64 16, !71, i64 176, !71, i64 192, !58, i64 208, !58, i64 210, !58, i64 212, !58, i64 214, !58, i64 216, !58, i64 218, !63, i64 220, !58, i64 224, !58, i64 226, !58, i64 228, !58, i64 230, !58, i64 232, !58, i64 234, !58, i64 236, !58, i64 238, !35, i64 240, !54, i64 248, !54, i64 264, !54, i64 280, !54, i64 296, !54, i64 312, !54, i64 328, !54, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !36, i64 80, !36, i64 88, !63, i64 96, !63, i64 100, !58, i64 104, !58, i64 106, !58, i64 108, !58, i64 110, !58, i64 112, !58, i64 114, !58, i64 116, !58, i64 118, !58, i64 120, !58, i64 122, !58, i64 124, !58, i64 126, !35, i64 128, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 152}
!70 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!71 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!72 = !{!57, !35, i64 56}
!73 = !{!68, !35, i64 376}
!74 = !{!68, !35, i64 240}
!75 = !{!68, !35, i64 144}
!76 = !{!77, !35, i64 192}
!77 = !{!"uiList", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112, !43, i64 176, !43, i64 180, !35, i64 184, !35, i64 192}
!78 = !{!79, !35, i64 32}
!79 = !{!"uiListDyn", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !35, i64 32, !35, i64 40}
!80 = !{!79, !35, i64 40}
!81 = !{!77, !35, i64 184}
!82 = distinct !{!82, !39}
!83 = !{!68, !58, i64 212}
!84 = !{!57, !35, i64 64}
!85 = !{!86, !35, i64 256}
!86 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !58, i64 240, !58, i64 242, !58, i64 244, !58, i64 246, !58, i64 248, !58, i64 250, !43, i64 252, !35, i64 256, !35, i64 264}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = !{!"screen.c:BLI_listbase_clear"}
!90 = !{!53, !35, i64 136}
!91 = distinct !{!91, !39}
!92 = !{!"screen.c:region_copylist"}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = !{!57, !58, i64 174}
!96 = distinct !{!96, !39}
!97 = !{!98, !36, i64 72}
!98 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !71, i64 56, !36, i64 72, !36, i64 73, !58, i64 74, !58, i64 76, !58, i64 78, !58, i64 80, !58, i64 82, !58, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !54, i64 96, !54, i64 112, !54, i64 128, !54, i64 144}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = !{!102, !35, i64 152}
!102 = !{!"bScreen", !103, i64 0, !54, i64 120, !54, i64 136, !54, i64 152, !54, i64 168, !35, i64 184, !35, i64 192, !43, i64 200, !43, i64 204, !58, i64 208, !58, i64 210, !58, i64 212, !58, i64 214, !58, i64 216, !58, i64 218, !58, i64 220, !58, i64 222, !58, i64 224, !58, i64 226, !58, i64 228, !58, i64 230, !35, i64 232, !35, i64 240}
!103 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !58, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!104 = !{!98, !35, i64 0}
!105 = distinct !{!105, !39}
!106 = !{!98, !35, i64 96}
!107 = !{!108, !43, i64 224}
!108 = !{!"View3D", !35, i64 0, !35, i64 8, !54, i64 16, !43, i64 32, !63, i64 36, !36, i64 40, !36, i64 56, !63, i64 72, !63, i64 76, !36, i64 80, !36, i64 81, !43, i64 84, !43, i64 88, !58, i64 92, !58, i64 94, !35, i64 96, !35, i64 104, !70, i64 112, !54, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !43, i64 224, !43, i64 228, !58, i64 232, !58, i64 234, !58, i64 236, !58, i64 238, !58, i64 240, !58, i64 242, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !36, i64 260, !36, i64 272, !58, i64 284, !58, i64 286, !58, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !54, i64 296, !54, i64 312, !54, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!109 = distinct !{!109, !39}
!110 = !{!111, !43, i64 232}
!111 = !{!"Scene", !103, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !54, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !58, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !112, i64 280, !119, i64 4264, !54, i64 4296, !54, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !58, i64 4376, !58, i64 4378, !43, i64 4380, !54, i64 4384, !120, i64 4400, !121, i64 4416, !124, i64 4600, !35, i64 4608, !125, i64 4616, !35, i64 4640, !126, i64 4648, !126, i64 4656, !114, i64 4664, !115, i64 4824, !127, i64 4888, !35, i64 4952}
!112 = !{!"RenderData", !113, i64 0, !35, i64 248, !35, i64 256, !116, i64 264, !117, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !63, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !58, i64 432, !58, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !58, i64 456, !58, i64 458, !58, i64 460, !58, i64 462, !58, i64 464, !58, i64 466, !43, i64 468, !58, i64 472, !58, i64 474, !58, i64 476, !58, i64 478, !58, i64 480, !58, i64 482, !43, i64 484, !43, i64 488, !58, i64 492, !58, i64 494, !43, i64 496, !43, i64 500, !58, i64 504, !58, i64 506, !58, i64 508, !58, i64 510, !58, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !58, i64 528, !58, i64 530, !58, i64 532, !58, i64 534, !58, i64 536, !58, i64 538, !58, i64 540, !58, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !54, i64 592, !58, i64 608, !58, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !43, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !58, i64 648, !58, i64 650, !58, i64 652, !58, i64 654, !58, i64 656, !58, i64 658, !63, i64 660, !63, i64 664, !58, i64 668, !58, i64 670, !63, i64 672, !63, i64 676, !36, i64 680, !43, i64 1704, !58, i64 1708, !58, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !58, i64 2524, !58, i64 2526, !63, i64 2528, !63, i64 2532, !58, i64 2536, !58, i64 2538, !63, i64 2540, !58, i64 2544, !58, i64 2546, !43, i64 2548, !58, i64 2552, !58, i64 2554, !58, i64 2556, !58, i64 2558, !63, i64 2560, !63, i64 2564, !35, i64 2568, !43, i64 2576, !63, i64 2580, !36, i64 2584, !118, i64 2616, !43, i64 3976, !43, i64 3980}
!113 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !58, i64 8, !58, i64 10, !63, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !114, i64 24, !115, i64 184}
!114 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !63, i64 136, !63, i64 140, !35, i64 144, !35, i64 152}
!115 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!116 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !58, i64 48, !58, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!117 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !63, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!118 = !{!"BakeData", !113, i64 0, !36, i64 248, !58, i64 1272, !58, i64 1274, !58, i64 1276, !58, i64 1278, !63, i64 1280, !63, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!119 = !{!"AudioData", !43, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !43, i64 16, !58, i64 20, !58, i64 22, !63, i64 24, !63, i64 28}
!120 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!121 = !{!"GameData", !120, i64 0, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !58, i64 32, !36, i64 34, !122, i64 40, !58, i64 64, !58, i64 66, !63, i64 68, !123, i64 72, !63, i64 128, !63, i64 132, !43, i64 136, !58, i64 140, !58, i64 142, !58, i64 144, !58, i64 146, !58, i64 148, !58, i64 150, !58, i64 152, !58, i64 154, !58, i64 156, !58, i64 158, !58, i64 160, !58, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!122 = !{!"GameDome", !58, i64 0, !58, i64 2, !58, i64 4, !58, i64 6, !63, i64 8, !63, i64 12, !35, i64 16}
!123 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !43, i64 40, !63, i64 44, !63, i64 48, !58, i64 52, !58, i64 54}
!124 = !{!"UnitSettings", !63, i64 0, !36, i64 4, !36, i64 5, !58, i64 6}
!125 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!126 = !{!"long", !36, i64 0}
!127 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!128 = distinct !{!128, !39}
!129 = !{!98, !58, i64 84}
!130 = !{!98, !58, i64 74}
!131 = !{!98, !58, i64 76}
!132 = distinct !{!132, !39}
!133 = !{!108, !58, i64 236}
!134 = !{!108, !35, i64 152}
!135 = !{!43, !43, i64 0}
!136 = !{!111, !35, i64 128}
!137 = !{!108, !35, i64 96}
!138 = !{!139, !36, i64 809}
!139 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !63, i64 776, !63, i64 780, !63, i64 784, !63, i64 788, !36, i64 792, !63, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !58, i64 824, !58, i64 826, !36, i64 828, !58, i64 844, !58, i64 846, !63, i64 848, !36, i64 852, !63, i64 864, !36, i64 868}
!140 = distinct !{!140, !39}
!141 = !{!108, !43, i64 228}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = !{!102, !35, i64 184}
!145 = distinct !{!145, !39}
!146 = distinct !{!146, !39}
!147 = distinct !{!147, !39}
!148 = distinct !{!148, !39}
!149 = !{!108, !36, i64 292}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !39}
!152 = distinct !{!152, !39}

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

; Function Attrs: nounwind uwtable
define dso_local void @BKE_spacetypes_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @spacetypes, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call fastcc void @spacetype_free(ptr noundef nonnull %4)
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !38

7:                                                ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @spacetypes) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @spacetype_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 13
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #14
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
  tail call void %14(ptr noundef %18) #14
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
  tail call void %29(ptr noundef %33) #14
  br label %34

34:                                               ; preds = %26, %31
  %35 = load ptr, ptr %27, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !50

37:                                               ; preds = %34, %22
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #14
  tail call void @BLI_freelistN(ptr noundef nonnull %23) #14
  %38 = load ptr, ptr %6, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !51

40:                                               ; preds = %37, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #14
  %41 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 17
  tail call void @BLI_freelistN(ptr noundef nonnull %41) #14
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nofree nounwind uwtable
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
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1, ptr noundef nonnull %13, i32 noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %8, %12
  %19 = phi ptr [ %17, %12 ], [ %6, %8 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BKE_spacetypes_list() local_unnamed_addr #5 {
  ret ptr @spacetypes
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_spacetype_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !52
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @spacetypes, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceType, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %4, !llvm.loop !55

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceType, ptr %13, i64 0, i32 2
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %16)
  tail call fastcc void @spacetype_free(ptr noundef nonnull %13)
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %13) #14
  br label %19

19:                                               ; preds = %15, %12
  tail call void @BLI_addtail(ptr noundef nonnull @spacetypes, ptr noundef %0) #14
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_spacetype_exists(i32 noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @spacetypes, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceType, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2, !llvm.loop !55

10:                                               ; preds = %2, %6
  %11 = zext i1 %5 to i32
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_spacedata_freelist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1, %32
  %5 = phi ptr [ %33, %32 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !61
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ @spacetypes, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceType, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp eq i32 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !55

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %10, %12 ], [ null, %8 ]
  %18 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %16 ]
  tail call void @BKE_area_region_free(ptr noundef %17, ptr noundef nonnull %22)
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !64

25:                                               ; preds = %21, %16
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #14
  %26 = icmp eq ptr %17, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.SpaceType, ptr %17, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef nonnull %5) #14
  br label %32

32:                                               ; preds = %31, %27, %25
  %33 = load ptr, ptr %5, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %4, !llvm.loop !66

35:                                               ; preds = %32, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_area_region_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !67
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 16
  br label %9

9:                                                ; preds = %13, %4
  %10 = phi ptr [ %8, %4 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ARegionType, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %23, label %9, !llvm.loop !59

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, ptr noundef nonnull %18, i32 noundef %20)
  %22 = load ptr, ptr %8, align 8, !tbaa !60
  br label %23

23:                                               ; preds = %13, %17
  %24 = phi ptr [ %22, %17 ], [ %11, %13 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %1) #14
  br label %31

31:                                               ; preds = %30, %26, %23
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %46

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void %43(ptr noundef %1) #14
  br label %46

46:                                               ; preds = %31, %35, %37, %41, %45
  %47 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 21
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %48) #14
  store ptr null, ptr %47, align 8, !tbaa !75
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %53) #14
  %54 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 24
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %52, %83
  %58 = phi ptr [ %84, %83 ], [ %55, %52 ]
  %59 = getelementptr inbounds %struct.uiList, ptr %58, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.uiListDyn, ptr %60, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !78
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %67(ptr noundef nonnull %64) #14
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.uiListDyn, ptr %60, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !80
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %73(ptr noundef nonnull %70) #14
  br label %74

74:                                               ; preds = %72, %68
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %75(ptr noundef nonnull %60) #14
  br label %76

76:                                               ; preds = %74, %57
  %77 = getelementptr inbounds %struct.uiList, ptr %58, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !81
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  tail call void @IDP_FreeProperty(ptr noundef nonnull %78) #14
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %82 = load ptr, ptr %77, align 8, !tbaa !81
  tail call void %81(ptr noundef %82) #14
  br label %83

83:                                               ; preds = %76, %80
  %84 = load ptr, ptr %58, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %57, !llvm.loop !82

86:                                               ; preds = %83, %52
  tail call void @BLI_freelistN(ptr noundef nonnull %54) #14
  %87 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %87) #14
  %88 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 27
  tail call void @BLI_freelistN(ptr noundef nonnull %88) #14
  %89 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %89) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_area_region_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 26
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 23
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 7
  store i16 0, ptr %8, align 4, !tbaa !83
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !67
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 16
  br label %17

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %16, %12 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ARegionType, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %31, label %17, !llvm.loop !59

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %struct.SpaceType, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15, ptr noundef nonnull %26, i32 noundef %28)
  %30 = load ptr, ptr %16, align 8, !tbaa !60
  br label %31

31:                                               ; preds = %21, %25
  %32 = phi ptr [ %30, %25 ], [ %19, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %31
  %39 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %34, %38
  %41 = phi ptr [ %39, %38 ], [ %36, %34 ]
  %42 = load ptr, ptr %9, align 8, !tbaa !73
  %43 = tail call ptr %41(ptr noundef %42) #14
  %44 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  store ptr %43, ptr %44, align 8, !tbaa !73
  br label %45

45:                                               ; preds = %40, %2
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %51 = tail call ptr %50(ptr noundef nonnull %47) #14
  %52 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 21
  store ptr %51, ptr %52, align 8, !tbaa !75
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 22
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %54, ptr noundef nonnull %55) #14
  %56 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 25
  %57 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %56, ptr noundef nonnull %57) #14
  %58 = load ptr, ptr %54, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %53, %74
  %61 = phi ptr [ %75, %74 ], [ %58, %53 ]
  %62 = getelementptr inbounds %struct.Panel, ptr %61, i64 0, i32 18
  br label %63

63:                                               ; preds = %60, %68
  %64 = phi ptr [ %66, %68 ], [ %54, %60 ]
  %65 = phi ptr [ %69, %68 ], [ %55, %60 ]
  %66 = load ptr, ptr %64, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %65, align 8, !tbaa !34
  %70 = load ptr, ptr %62, align 8, !tbaa !85
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %72, label %63, !llvm.loop !87

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Panel, ptr %61, i64 0, i32 18
  store ptr %66, ptr %73, align 8, !tbaa !85
  br label %74

74:                                               ; preds = %63, %72
  %75 = load ptr, ptr %61, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %60, !llvm.loop !88

77:                                               ; preds = %74, %53
  ret ptr %4
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_spacedata_copylist(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %2, %35
  %6 = phi ptr [ %36, %35 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.SpaceLink, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !61
  br label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ @spacetypes, %5 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SpaceType, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !55

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %11, %13 ], [ null, %9 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.SpaceType, ptr %18, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = tail call ptr %22(ptr noundef nonnull %6) #14
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.SpaceLink, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.SpaceLink, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %24 ]
  %32 = tail call ptr @BKE_area_region_copy(ptr noundef nonnull %18, ptr noundef nonnull %31)
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %32) #14
  %33 = load ptr, ptr %31, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %30, !llvm.loop !90

35:                                               ; preds = %30, %24, %20, %17
  %36 = load ptr, ptr %6, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5, !llvm.loop !91

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_spacedata_draw_locks(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @spacetypes, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  br label %9

6:                                                ; preds = %19, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !llvm.loop !92

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
  %18 = load i16, ptr %17, align 2, !tbaa !93
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 21
  store i16 %20, ptr %21, align 4, !tbaa !94
  %22 = load ptr, ptr %15, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %6, label %14, !llvm.loop !95

24:                                               ; preds = %6, %1
  ret void
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_screen_area_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !96
  %4 = zext i8 %3 to i32
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ @spacetypes, %1 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SpaceType, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %13, label %5, !llvm.loop !55

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ]
  %15 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %13 ]
  tail call void @BKE_area_region_free(ptr noundef %14, ptr noundef nonnull %19)
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %18, !llvm.loop !98

22:                                               ; preds = %18, %13
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #14
  %23 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %22, %54
  %27 = phi ptr [ %55, %54 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.SpaceLink, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !61
  br label %30

30:                                               ; preds = %34, %26
  %31 = phi ptr [ @spacetypes, %26 ], [ %32, %34 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.SpaceType, ptr %32, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !52
  %37 = icmp eq i32 %36, %29
  br i1 %37, label %38, label %30, !llvm.loop !55

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %32, %34 ], [ null, %30 ]
  %40 = getelementptr inbounds %struct.SpaceLink, ptr %27, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %45, %43 ], [ %41, %38 ]
  tail call void @BKE_area_region_free(ptr noundef %39, ptr noundef nonnull %44)
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %43, !llvm.loop !64

47:                                               ; preds = %43, %38
  tail call void @BLI_freelistN(ptr noundef nonnull %40) #14
  %48 = icmp eq ptr %39, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.SpaceType, ptr %39, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void %51(ptr noundef nonnull %27) #14
  br label %54

54:                                               ; preds = %53, %49, %47
  %55 = load ptr, ptr %27, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %26, !llvm.loop !66

57:                                               ; preds = %54, %22
  tail call void @BLI_freelistN(ptr noundef nonnull %23) #14
  %58 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %58) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_screen_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef nonnull %6)
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !99

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #14
  %10 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  tail call void @BKE_screen_area_free(ptr noundef nonnull %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !104

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #14
  %19 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %19) #14
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_visible_layers(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %20
  %9 = phi ptr [ %22, %20 ], [ %6, %4 ]
  %10 = phi i32 [ %21, %20 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 22
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = or i32 %18, %10
  br label %20

20:                                               ; preds = %8, %14
  %21 = phi i32 [ %19, %14 ], [ %10, %8 ]
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !108

24:                                               ; preds = %20, %4, %2
  %25 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %21, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !109
  br label %30

30:                                               ; preds = %24, %27
  %31 = phi i32 [ %29, %27 ], [ %25, %24 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_area_find_region_type(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !127

15:                                               ; preds = %10
  br i1 %9, label %16, label %17

16:                                               ; preds = %6, %15, %2
  br label %17

17:                                               ; preds = %15, %16
  %18 = phi ptr [ %8, %15 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_area_find_region_active_win(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 15
  %6 = load i16, ptr %5, align 4, !tbaa !128
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3, %10
  br label %15

15:                                               ; preds = %14, %19
  %16 = phi ptr [ %17, %19 ], [ %4, %14 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !67
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %15, !llvm.loop !127

23:                                               ; preds = %15, %19, %1, %10
  %24 = phi ptr [ %8, %10 ], [ null, %1 ], [ %17, %19 ], [ %17, %15 ]
  ret ptr %24
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %15 = load i8, ptr %14, align 8, !tbaa !96
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !129
  %21 = sext i16 %20 to i32
  %22 = icmp slt i16 %20, %2
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 11
  %25 = load i16, ptr %24, align 4, !tbaa !130
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
  br i1 %37, label %38, label %9, !llvm.loop !131

38:                                               ; preds = %33, %3
  %39 = phi ptr [ null, %3 ], [ %34, %33 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_view3d_layer_active_ex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %7 = load i16, ptr %6, align 4, !tbaa !132
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !133
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
  %19 = load i32, ptr %18, align 4, !tbaa !134
  %20 = icmp ne i8 %2, 0
  %21 = icmp ne ptr %0, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 22
  %29 = load i32, ptr %28, align 8, !tbaa !106
  %30 = or i32 %29, %19
  br label %31

31:                                               ; preds = %23, %27, %17
  %32 = phi i32 [ %30, %27 ], [ %19, %23 ], [ %19, %17 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_screen_view3d_layer_active(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %6 = load i16, ptr %5, align 4, !tbaa !132
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 13
  br label %16

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 23
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = load i32, ptr %17, align 4, !tbaa !134
  br i1 %3, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 22
  %25 = load i32, ptr %24, align 8, !tbaa !106
  %26 = or i32 %25, %18
  br label %27

27:                                               ; preds = %16, %19, %23
  %28 = phi i32 [ %26, %23 ], [ %18, %19 ], [ %18, %16 ]
  ret i32 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_sync(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %4 = load i16, ptr %3, align 4, !tbaa !132
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 22
  store i32 %12, ptr %13, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  store ptr %15, ptr %16, align 8, !tbaa !136
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
  %31 = load i8, ptr %30, align 1, !tbaa !137
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8 1, ptr %30, align 1, !tbaa !137
  br label %34

34:                                               ; preds = %27, %33, %22
  %35 = load ptr, ptr %23, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %22, !llvm.loop !139

37:                                               ; preds = %34, %18, %10
  %38 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 23
  %39 = load i32, ptr %38, align 4, !tbaa !140
  %40 = and i32 %39, %12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %51

42:                                               ; preds = %45
  %43 = add nuw nsw i32 %46, 1
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %51, label %45, !llvm.loop !141

45:                                               ; preds = %37, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %37 ]
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %42, label %50

50:                                               ; preds = %45
  store i32 %47, ptr %38, align 4, !tbaa !140
  br label %51

51:                                               ; preds = %42, %37, %50, %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_scene_sync(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  br label %10

7:                                                ; preds = %70, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %73, label %10, !llvm.loop !142

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %3, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %70
  %16 = phi ptr [ %71, %70 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.SpaceLink, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !tbaa !143
  %22 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 26
  %23 = load i16, ptr %22, align 4, !tbaa !132
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 22
  store i32 %31, ptr %32, align 8, !tbaa !106
  %33 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !135
  %35 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 15
  store ptr %34, ptr %35, align 8, !tbaa !136
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %37, %53
  %42 = phi ptr [ %54, %53 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !67
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 30
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 25
  %50 = load i8, ptr %49, align 1, !tbaa !137
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i8 1, ptr %49, align 1, !tbaa !137
  br label %53

53:                                               ; preds = %52, %46, %41
  %54 = load ptr, ptr %42, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %41, !llvm.loop !139

56:                                               ; preds = %53, %37, %29
  %57 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 23
  %58 = load i32, ptr %57, align 4, !tbaa !140
  %59 = and i32 %58, %31
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %70

61:                                               ; preds = %64
  %62 = add nuw nsw i32 %65, 1
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %70, label %64, !llvm.loop !141

64:                                               ; preds = %56, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %56 ]
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %31
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %61, label %69

69:                                               ; preds = %64
  store i32 %66, ptr %57, align 4, !tbaa !140
  br label %70

70:                                               ; preds = %61, %69, %56, %25, %20, %15
  %71 = load ptr, ptr %16, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %7, label %15, !llvm.loop !144

73:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_main_sync(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %83, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %5, %80
  %9 = phi ptr [ %3, %5 ], [ %81, %80 ]
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %80

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %80, label %20

17:                                               ; preds = %77, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %80, label %20, !llvm.loop !145

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %25

25:                                               ; preds = %20, %77
  %26 = phi ptr [ %78, %77 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.SpaceLink, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %77

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 26
  %32 = load i16, ptr %31, align 4, !tbaa !132
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !133
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i32, ptr %6, align 8, !tbaa !109
  %40 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 22
  store i32 %39, ptr %40, align 8, !tbaa !106
  %41 = load ptr, ptr %7, align 8, !tbaa !135
  %42 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 15
  store ptr %41, ptr %42, align 8, !tbaa !136
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44, %60
  %49 = phi ptr [ %61, %60 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 8
  %51 = load i16, ptr %50, align 2, !tbaa !67
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 30
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %55, i64 0, i32 25
  %57 = load i8, ptr %56, align 1, !tbaa !137
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i8 1, ptr %56, align 1, !tbaa !137
  br label %60

60:                                               ; preds = %59, %53, %48
  %61 = load ptr, ptr %49, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !139

63:                                               ; preds = %60, %44, %38
  %64 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 23
  %65 = load i32, ptr %64, align 4, !tbaa !140
  %66 = and i32 %65, %39
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %77

68:                                               ; preds = %71
  %69 = add nuw nsw i32 %72, 1
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %77, label %71, !llvm.loop !141

71:                                               ; preds = %63, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %63 ]
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %39
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %68, label %76

76:                                               ; preds = %71
  store i32 %73, ptr %64, align 4, !tbaa !140
  br label %77

77:                                               ; preds = %68, %76, %63, %34, %30, %25
  %78 = load ptr, ptr %26, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %17, label %25, !llvm.loop !146

80:                                               ; preds = %17, %13, %8
  %81 = load ptr, ptr %9, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %8, !llvm.loop !147

83:                                               ; preds = %80, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_screen_view3d_twmode_remove(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 41
  %4 = load i8, ptr %3, align 4, !tbaa !148
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
  store i8 %13, ptr %3, align 4, !tbaa !148
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_screen_view3d_main_twmode_remove(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %3, %43
  %7 = phi ptr [ %44, %43 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %18

15:                                               ; preds = %40, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18, !llvm.loop !149

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %40
  %24 = phi ptr [ %41, %40 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct.SpaceLink, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.View3D, ptr %24, i64 0, i32 41
  %30 = load i8, ptr %29, align 4, !tbaa !148
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, -5
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = icmp sgt i32 %32, %2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = add i8 %30, -1
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i8 [ %37, %36 ], [ 0, %28 ]
  store i8 %39, ptr %29, align 4, !tbaa !148
  br label %40

40:                                               ; preds = %38, %34, %23
  %41 = load ptr, ptr %24, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %15, label %23, !llvm.loop !150

43:                                               ; preds = %15, %11, %6
  %44 = load ptr, ptr %7, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %6, !llvm.loop !151

46:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BKE_screen_view3d_zoom_to_fac(float noundef %0) local_unnamed_addr #5 {
  %2 = fdiv float %0, 5.000000e+01
  %3 = fadd float %2, 0x3FF6A09E60000000
  %4 = fmul float %3, %3
  %5 = fmul float %4, 2.500000e-01
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BKE_screen_view3d_zoom_from_fac(float noundef %0) local_unnamed_addr #9 {
  %2 = fmul float %0, 4.000000e+00
  %3 = tail call float @sqrtf(float noundef %2) #14
  %4 = fadd float %3, 0xBFF6A09E60000000
  %5 = fmul float %4, 5.000000e+01
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

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
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !35, i64 400}
!42 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !43, i64 336, !43, i64 340, !43, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !44, i64 376}
!43 = !{!"int", !36, i64 0}
!44 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!45 = !{!42, !35, i64 376}
!46 = distinct !{!46, !39, !40}
!47 = !{!48, !35, i64 120}
!48 = !{!"HeaderType", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 80, !35, i64 88, !44, i64 96}
!49 = !{!48, !35, i64 96}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = !{!53, !43, i64 80}
!53 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !54, i64 176, !54, i64 192, !43, i64 208}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = distinct !{!55, !39, !40}
!56 = !{!57, !43, i64 16}
!57 = !{!"ARegionType", !35, i64 0, !35, i64 8, !43, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !54, i64 104, !54, i64 120, !54, i64 136, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !58, i64 172, !58, i64 174, !58, i64 176}
!58 = !{!"short", !36, i64 0}
!59 = distinct !{!59, !39, !40}
!60 = !{!53, !35, i64 176}
!61 = !{!62, !43, i64 32}
!62 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !54, i64 16, !43, i64 32, !63, i64 36, !36, i64 40}
!63 = !{!"float", !36, i64 0}
!64 = distinct !{!64, !39, !40}
!65 = !{!53, !35, i64 96}
!66 = distinct !{!66, !39, !40}
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
!82 = distinct !{!82, !39, !40}
!83 = !{!68, !58, i64 212}
!84 = !{!57, !35, i64 64}
!85 = !{!86, !35, i64 256}
!86 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !58, i64 240, !58, i64 242, !58, i64 244, !58, i64 246, !58, i64 248, !58, i64 250, !43, i64 252, !35, i64 256, !35, i64 264}
!87 = distinct !{!87, !39, !40}
!88 = distinct !{!88, !39, !40}
!89 = !{!53, !35, i64 136}
!90 = distinct !{!90, !39, !40}
!91 = distinct !{!91, !39, !40}
!92 = distinct !{!92, !39, !40}
!93 = !{!57, !58, i64 174}
!94 = !{!57, !58, i64 172}
!95 = distinct !{!95, !39, !40}
!96 = !{!97, !36, i64 72}
!97 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !71, i64 56, !36, i64 72, !36, i64 73, !58, i64 74, !58, i64 76, !58, i64 78, !58, i64 80, !58, i64 82, !58, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !54, i64 96, !54, i64 112, !54, i64 128, !54, i64 144}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
!100 = !{!101, !35, i64 152}
!101 = !{!"bScreen", !102, i64 0, !54, i64 120, !54, i64 136, !54, i64 152, !54, i64 168, !35, i64 184, !35, i64 192, !43, i64 200, !43, i64 204, !58, i64 208, !58, i64 210, !58, i64 212, !58, i64 214, !58, i64 216, !58, i64 218, !58, i64 220, !58, i64 222, !58, i64 224, !58, i64 226, !58, i64 228, !58, i64 230, !35, i64 232, !35, i64 240}
!102 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !58, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!103 = !{!97, !35, i64 0}
!104 = distinct !{!104, !39, !40}
!105 = !{!97, !35, i64 96}
!106 = !{!107, !43, i64 224}
!107 = !{!"View3D", !35, i64 0, !35, i64 8, !54, i64 16, !43, i64 32, !63, i64 36, !36, i64 40, !36, i64 56, !63, i64 72, !63, i64 76, !36, i64 80, !36, i64 81, !43, i64 84, !43, i64 88, !58, i64 92, !58, i64 94, !35, i64 96, !35, i64 104, !70, i64 112, !54, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !43, i64 224, !43, i64 228, !58, i64 232, !58, i64 234, !58, i64 236, !58, i64 238, !58, i64 240, !58, i64 242, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !36, i64 260, !36, i64 272, !58, i64 284, !58, i64 286, !58, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !54, i64 296, !54, i64 312, !54, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!108 = distinct !{!108, !39, !40}
!109 = !{!110, !43, i64 232}
!110 = !{!"Scene", !102, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !54, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !58, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !111, i64 280, !118, i64 4264, !54, i64 4296, !54, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !58, i64 4376, !58, i64 4378, !43, i64 4380, !54, i64 4384, !119, i64 4400, !120, i64 4416, !123, i64 4600, !35, i64 4608, !124, i64 4616, !35, i64 4640, !125, i64 4648, !125, i64 4656, !113, i64 4664, !114, i64 4824, !126, i64 4888, !35, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !35, i64 248, !35, i64 256, !115, i64 264, !116, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !63, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !58, i64 432, !58, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !58, i64 456, !58, i64 458, !58, i64 460, !58, i64 462, !58, i64 464, !58, i64 466, !43, i64 468, !58, i64 472, !58, i64 474, !58, i64 476, !58, i64 478, !58, i64 480, !58, i64 482, !43, i64 484, !43, i64 488, !58, i64 492, !58, i64 494, !43, i64 496, !43, i64 500, !58, i64 504, !58, i64 506, !58, i64 508, !58, i64 510, !58, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !58, i64 528, !58, i64 530, !58, i64 532, !58, i64 534, !58, i64 536, !58, i64 538, !58, i64 540, !58, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !54, i64 592, !58, i64 608, !58, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !43, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !58, i64 648, !58, i64 650, !58, i64 652, !58, i64 654, !58, i64 656, !58, i64 658, !63, i64 660, !63, i64 664, !58, i64 668, !58, i64 670, !63, i64 672, !63, i64 676, !36, i64 680, !43, i64 1704, !58, i64 1708, !58, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !58, i64 2524, !58, i64 2526, !63, i64 2528, !63, i64 2532, !58, i64 2536, !58, i64 2538, !63, i64 2540, !58, i64 2544, !58, i64 2546, !43, i64 2548, !58, i64 2552, !58, i64 2554, !58, i64 2556, !58, i64 2558, !63, i64 2560, !63, i64 2564, !35, i64 2568, !43, i64 2576, !63, i64 2580, !36, i64 2584, !117, i64 2616, !43, i64 3976, !43, i64 3980}
!112 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !58, i64 8, !58, i64 10, !63, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !63, i64 136, !63, i64 140, !35, i64 144, !35, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!115 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !58, i64 48, !58, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!116 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !63, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!117 = !{!"BakeData", !112, i64 0, !36, i64 248, !58, i64 1272, !58, i64 1274, !58, i64 1276, !58, i64 1278, !63, i64 1280, !63, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!118 = !{!"AudioData", !43, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !43, i64 16, !58, i64 20, !58, i64 22, !63, i64 24, !63, i64 28}
!119 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!120 = !{!"GameData", !119, i64 0, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !58, i64 32, !36, i64 34, !121, i64 40, !58, i64 64, !58, i64 66, !63, i64 68, !122, i64 72, !63, i64 128, !63, i64 132, !43, i64 136, !58, i64 140, !58, i64 142, !58, i64 144, !58, i64 146, !58, i64 148, !58, i64 150, !58, i64 152, !58, i64 154, !58, i64 156, !58, i64 158, !58, i64 160, !58, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!121 = !{!"GameDome", !58, i64 0, !58, i64 2, !58, i64 4, !58, i64 6, !63, i64 8, !63, i64 12, !35, i64 16}
!122 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !43, i64 40, !63, i64 44, !63, i64 48, !58, i64 52, !58, i64 54}
!123 = !{!"UnitSettings", !63, i64 0, !36, i64 4, !36, i64 5, !58, i64 6}
!124 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!125 = !{!"long", !36, i64 0}
!126 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!127 = distinct !{!127, !39, !40}
!128 = !{!97, !58, i64 84}
!129 = !{!97, !58, i64 74}
!130 = !{!97, !58, i64 76}
!131 = distinct !{!131, !39, !40}
!132 = !{!107, !58, i64 236}
!133 = !{!107, !35, i64 152}
!134 = !{!43, !43, i64 0}
!135 = !{!110, !35, i64 128}
!136 = !{!107, !35, i64 96}
!137 = !{!138, !36, i64 809}
!138 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !63, i64 776, !63, i64 780, !63, i64 784, !63, i64 788, !36, i64 792, !63, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !58, i64 824, !58, i64 826, !36, i64 828, !58, i64 844, !58, i64 846, !63, i64 848, !36, i64 852, !63, i64 864, !36, i64 868}
!139 = distinct !{!139, !39, !40}
!140 = !{!107, !43, i64 228}
!141 = distinct !{!141, !39, !40}
!142 = distinct !{!142, !39, !40}
!143 = !{!101, !35, i64 184}
!144 = distinct !{!144, !39, !40}
!145 = distinct !{!145, !39, !40}
!146 = distinct !{!146, !39, !40}
!147 = distinct !{!147, !39, !40}
!148 = !{!107, !36, i64 292}
!149 = distinct !{!149, !39, !40}
!150 = distinct !{!150, !39, !40}
!151 = distinct !{!151, !39, !40}

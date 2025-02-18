; ModuleID = 'blender/source/blender/blenkernel/intern/anim.c'
source_filename = "blender/source/blender/blenkernel/intern/anim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bMotionPath = type { ptr, i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MPathTarget = type { ptr, ptr, ptr, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bMotionPathVert = type { [3 x float], i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.Path = type { ptr, i32, float }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.PathPoint = type { [4 x float], [4 x float], float, float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [54 x i8] c"Motion path frame extents invalid for %s (%d to %d)%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c", cannot have single-frame paths\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"bMotionPath\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bMotionPathVerts\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MPathTarget Ob\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"MPathTarget PoseBone\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"calc_curvepath\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"calcpathdist\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pathdata\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@str = private unnamed_addr constant [9 x i8] c"no path!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @animviz_settings_init(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 3
  store i32 10, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 2
  store i32 10, ptr %5, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 1
  store i32 250, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 5
  store i16 1, ptr %7, align 2, !tbaa !43
  %8 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 15
  store i32 10, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 14
  store i32 10, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 12
  store i32 1, ptr %10, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 13
  store i32 250, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 10
  store i16 6, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 9
  store i16 1, ptr %13, align 2, !tbaa !49
  br label %14

14:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @animviz_free_motionpath_cache(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %7(ptr noundef nonnull %4) #8
  br label %8

8:                                                ; preds = %6, %3
  store ptr null, ptr %0, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.bMotionPath, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @animviz_free_motionpath(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %7(ptr noundef nonnull %4) #8
  br label %8

8:                                                ; preds = %6, %3
  store ptr null, ptr %0, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.bMotionPath, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !54
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %10(ptr noundef nonnull %0) #8
  br label %11

11:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @animviz_verify_motionpaths(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 14
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 17
  br label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 21
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 22
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %13, %10 ], [ %16, %15 ]
  %20 = phi ptr [ %14, %10 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bAnimVizSettings, ptr %19, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds %struct.bAnimVizSettings, ptr %19, i64 0, i32 13
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %29 = select i1 %9, ptr %28, ptr %27
  %30 = icmp eq i32 %22, %24
  %31 = select i1 %30, ptr @.str.1, ptr @.str.2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %29, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %31) #8
  br label %80

32:                                               ; preds = %18
  %33 = load ptr, ptr %20, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = sub nsw i32 %24, %22
  %37 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !61
  %39 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !62
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %57, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = icmp eq i32 %44, %36
  br i1 %47, label %80, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %33, align 8, !tbaa !50
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %52(ptr noundef nonnull %49) #8
  br label %53

53:                                               ; preds = %51, %48
  store ptr null, ptr %33, align 8, !tbaa !50
  store i32 0, ptr %43, align 8, !tbaa !54
  br label %57

54:                                               ; preds = %32
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %56 = tail call ptr %55(i64 noundef 24, ptr noundef nonnull @.str.3) #8
  store ptr %56, ptr %20, align 8, !tbaa !53
  br label %57

57:                                               ; preds = %53, %42, %35, %54
  %58 = phi ptr [ %56, %54 ], [ %33, %35 ], [ %33, %42 ], [ %33, %53 ]
  %59 = load i32, ptr %21, align 4, !tbaa !46
  %60 = getelementptr inbounds %struct.bMotionPath, ptr %58, i64 0, i32 2
  store i32 %59, ptr %60, align 4, !tbaa !61
  %61 = load i32, ptr %23, align 4, !tbaa !47
  %62 = getelementptr inbounds %struct.bMotionPath, ptr %58, i64 0, i32 3
  store i32 %61, ptr %62, align 8, !tbaa !62
  %63 = sub nsw i32 %61, %59
  %64 = getelementptr inbounds %struct.bMotionPath, ptr %58, i64 0, i32 1
  store i32 %63, ptr %64, align 8, !tbaa !54
  %65 = getelementptr inbounds %struct.bAnimVizSettings, ptr %19, i64 0, i32 11
  %66 = load i16, ptr %65, align 2, !tbaa !63
  %67 = getelementptr inbounds %struct.bMotionPath, ptr %58, i64 0, i32 4
  %68 = load i32, ptr %67, align 4, !tbaa !64
  %69 = and i32 %68, -2
  %70 = lshr i16 %66, 1
  %71 = and i16 %70, 1
  %72 = zext nneg i16 %71 to i32
  %73 = or disjoint i32 %69, %72
  store i32 %73, ptr %67, align 4, !tbaa !64
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %75 = sext i32 %63 to i64
  %76 = shl nsw i64 %75, 4
  %77 = tail call ptr %74(i64 noundef %76, ptr noundef nonnull @.str.4) #8
  store ptr %77, ptr %58, align 8, !tbaa !50
  %78 = load i16, ptr %65, align 2, !tbaa !63
  %79 = or i16 %78, 4
  store i16 %79, ptr %65, align 2, !tbaa !63
  br label %80

80:                                               ; preds = %46, %4, %57, %26
  %81 = phi ptr [ null, %26 ], [ %58, %57 ], [ null, %4 ], [ %33, %46 ]
  ret ptr %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @animviz_get_object_motionpaths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 21, i32 7
  %4 = load i16, ptr %3, align 2, !tbaa !65
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %13 = tail call ptr %12(i64 noundef 40, ptr noundef nonnull @.str.5) #8
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %13) #8
  %14 = load ptr, ptr %8, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.MPathTarget, ptr %13, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.MPathTarget, ptr %13, i64 0, i32 3
  store ptr %0, ptr %16, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bPose, ptr %19, i64 0, i32 14, i32 7
  %23 = load i16, ptr %22, align 2, !tbaa !70
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.bArmature, ptr %31, i64 0, i32 15
  br label %33

33:                                               ; preds = %29, %55
  %34 = phi ptr [ %27, %29 ], [ %56, %55 ]
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %32, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 25
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %50 = tail call ptr %49(i64 noundef 40, ptr noundef nonnull @.str.6) #8
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %50) #8
  %51 = load ptr, ptr %45, align 8, !tbaa !79
  %52 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 3
  store ptr %0, ptr %53, align 8, !tbaa !69
  %54 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 4
  store ptr %34, ptr %54, align 8, !tbaa !80
  br label %55

55:                                               ; preds = %33, %38, %44, %48
  %56 = load ptr, ptr %34, align 8, !tbaa !53
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %33, !llvm.loop !81

58:                                               ; preds = %55, %26, %21, %17
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @animviz_calc_motionpaths(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %163, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %163, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !85
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %22, %10 ]
  %12 = phi i32 [ %9, %7 ], [ %21, %10 ]
  %13 = phi i32 [ %9, %7 ], [ %18, %10 ]
  %14 = getelementptr inbounds %struct.MPathTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.bMotionPath, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = tail call i32 @llvm.smin.i32(i32 %13, i32 %17)
  %19 = getelementptr inbounds %struct.bMotionPath, ptr %15, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = tail call i32 @llvm.smax.i32(i32 %12, i32 %20)
  %22 = load ptr, ptr %11, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !105

24:                                               ; preds = %10
  %25 = icmp sgt i32 %21, %18
  br i1 %25, label %26, label %163

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %33, %26
  %31 = load ptr, ptr %1, align 8, !tbaa !53
  %32 = icmp eq ptr %31, null
  br i1 %32, label %71, label %42

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %40, %33 ], [ %28, %26 ]
  %35 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 53
  %38 = load i16, ptr %37, align 4, !tbaa !108
  %39 = and i16 %38, -33
  store i16 %39, ptr %37, align 4, !tbaa !108
  %40 = load ptr, ptr %34, align 8, !tbaa !53
  %41 = icmp eq ptr %40, null
  br i1 %41, label %30, label %33, !llvm.loop !109

42:                                               ; preds = %30, %68
  %43 = phi ptr [ %69, %68 ], [ %31, %30 ]
  %44 = load ptr, ptr %27, align 8, !tbaa !110
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.MPathTarget, ptr %43, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 53
  br label %50

50:                                               ; preds = %46, %66
  %51 = phi ptr [ %44, %46 ], [ %52, %66 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !111
  %53 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = icmp eq ptr %54, %48
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i16, ptr %49, align 4, !tbaa !108
  %58 = and i16 %57, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.MPathTarget, ptr %43, i64 0, i32 3
  tail call void @BLI_remlink(ptr noundef nonnull %27, ptr noundef nonnull %51) #8
  tail call void @BLI_addhead(ptr noundef nonnull %27, ptr noundef nonnull %51) #8
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 53
  %64 = load i16, ptr %63, align 4, !tbaa !108
  %65 = or i16 %64, 32
  store i16 %65, ptr %63, align 4, !tbaa !108
  br label %68

66:                                               ; preds = %56, %50
  %67 = icmp eq ptr %52, null
  br i1 %67, label %68, label %50, !llvm.loop !112

68:                                               ; preds = %66, %42, %60
  %69 = load ptr, ptr %43, align 8, !tbaa !53
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42, !llvm.loop !113

71:                                               ; preds = %68, %30
  %72 = load ptr, ptr @G, align 8, !tbaa !114
  tail call void @DAG_scene_relations_rebuild(ptr noundef %72, ptr noundef %0) #8
  store i32 %18, ptr %8, align 8, !tbaa !85
  %73 = icmp sgt i32 %18, %21
  br i1 %73, label %140, label %74

74:                                               ; preds = %71, %136
  tail call fastcc void @motionpaths_calc_update_scene(ptr noundef %0)
  %75 = load ptr, ptr %1, align 8, !tbaa !53
  %76 = icmp eq ptr %75, null
  br i1 %76, label %136, label %77

77:                                               ; preds = %74, %133
  %78 = phi ptr [ %134, %133 ], [ %75, %74 ]
  %79 = getelementptr inbounds %struct.MPathTarget, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = load i32, ptr %8, align 8, !tbaa !85
  %82 = getelementptr inbounds %struct.bMotionPath, ptr %80, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !61
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %133, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.bMotionPath, ptr %80, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !62
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  %90 = load ptr, ptr %80, align 8, !tbaa !50
  %91 = sub nsw i32 %81, %83
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bMotionPathVert, ptr %90, i64 %92
  %94 = getelementptr inbounds %struct.MPathTarget, ptr %78, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = icmp eq ptr %95, null
  br i1 %96, label %122, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.bMotionPath, ptr %80, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !64
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds float, ptr %93, i64 1
  %103 = getelementptr inbounds float, ptr %93, i64 2
  br i1 %101, label %110, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 31
  %106 = load float, ptr %105, align 4, !tbaa !116
  store float %106, ptr %93, align 4, !tbaa !116
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 31, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !116
  store float %108, ptr %102, align 4, !tbaa !116
  %109 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 31, i64 2
  br label %116

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 32
  %112 = load float, ptr %111, align 4, !tbaa !116
  store float %112, ptr %93, align 4, !tbaa !116
  %113 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 32, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !116
  store float %114, ptr %102, align 4, !tbaa !116
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %95, i64 0, i32 32, i64 2
  br label %116

116:                                              ; preds = %110, %104
  %117 = phi ptr [ %115, %110 ], [ %109, %104 ]
  %118 = load float, ptr %117, align 4, !tbaa !116
  store float %118, ptr %103, align 4, !tbaa !116
  %119 = getelementptr inbounds %struct.MPathTarget, ptr %78, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !69
  %121 = getelementptr inbounds %struct.Object, ptr %120, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %121, ptr noundef %93) #8
  br label %133

122:                                              ; preds = %89
  %123 = getelementptr inbounds %struct.MPathTarget, ptr %78, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !69
  %125 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 47, i64 3
  %126 = load float, ptr %125, align 4, !tbaa !116
  store float %126, ptr %93, align 4, !tbaa !116
  %127 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 47, i64 3, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !116
  %129 = getelementptr inbounds float, ptr %93, i64 1
  store float %128, ptr %129, align 4, !tbaa !116
  %130 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 47, i64 3, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !116
  %132 = getelementptr inbounds float, ptr %93, i64 2
  store float %131, ptr %132, align 4, !tbaa !116
  br label %133

133:                                              ; preds = %122, %116, %85, %77
  %134 = load ptr, ptr %78, align 8, !tbaa !53
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %77, !llvm.loop !117

136:                                              ; preds = %133, %74
  %137 = load i32, ptr %8, align 8, !tbaa !85
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %8, align 8, !tbaa !85
  %139 = icmp slt i32 %137, %21
  br i1 %139, label %74, label %140, !llvm.loop !118

140:                                              ; preds = %136, %71
  store i32 %9, ptr %8, align 8, !tbaa !85
  tail call fastcc void @motionpaths_calc_update_scene(ptr noundef %0)
  %141 = load ptr, ptr %1, align 8, !tbaa !53
  %142 = icmp eq ptr %141, null
  br i1 %142, label %163, label %143

143:                                              ; preds = %140, %156
  %144 = phi ptr [ %161, %156 ], [ %141, %140 ]
  %145 = getelementptr inbounds %struct.MPathTarget, ptr %144, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !80
  %147 = icmp eq ptr %146, null
  %148 = getelementptr inbounds %struct.MPathTarget, ptr %144, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !69
  br i1 %147, label %154, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 18
  %152 = load ptr, ptr %151, align 8, !tbaa !55
  %153 = getelementptr inbounds %struct.bPose, ptr %152, i64 0, i32 14
  br label %156

154:                                              ; preds = %143
  %155 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 21
  br label %156

156:                                              ; preds = %154, %150
  %157 = phi ptr [ %153, %150 ], [ %155, %154 ]
  %158 = getelementptr inbounds %struct.bAnimVizSettings, ptr %157, i64 0, i32 7
  %159 = load i16, ptr %158, align 2, !tbaa !119
  %160 = and i16 %159, -2
  store i16 %160, ptr %158, align 2, !tbaa !119
  %161 = load ptr, ptr %144, align 8, !tbaa !53
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %143, !llvm.loop !120

163:                                              ; preds = %156, %140, %24, %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @motionpaths_calc_update_scene(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef %0) #8
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @G, align 8, !tbaa !114
  br i1 %3, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 46
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !123
  tail call void @BKE_scene_update_for_newframe(ptr noundef %7, ptr noundef %4, ptr noundef %0, i32 noundef %9) #8
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !123
  tail call void @DAG_scene_update_flags(ptr noundef %4, ptr noundef %0, i32 noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %18, %10
  %17 = phi ptr [ null, %10 ], [ %27, %18 ]
  br label %30

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %28, %18 ], [ %14, %10 ]
  %20 = phi ptr [ %27, %18 ], [ null, %10 ]
  %21 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !108
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr %20, ptr %19
  %28 = load ptr, ptr %19, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %16, label %18, !llvm.loop !124

30:                                               ; preds = %16, %34
  %31 = phi ptr [ %32, %34 ], [ %13, %16 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @G, align 8, !tbaa !114
  %36 = getelementptr inbounds %struct.Main, ptr %35, i64 0, i32 46
  %37 = load ptr, ptr %36, align 8, !tbaa !121
  %38 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  tail call void @BKE_object_handle_update(ptr noundef %37, ptr noundef %0, ptr noundef %39) #8
  %40 = icmp eq ptr %32, %17
  br i1 %40, label %41, label %30, !llvm.loop !125

41:                                               ; preds = %30, %34, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_path(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !126
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %5(ptr noundef nonnull %2) #8
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %7(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calc_curvepath(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %224, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !128
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %224

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.CurveCache, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !126
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %18(ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %14, %17
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %20(ptr noundef nonnull %12) #8
  br label %21

21:                                               ; preds = %19, %8
  %22 = load ptr, ptr %9, align 8, !tbaa !129
  %23 = getelementptr inbounds %struct.CurveCache, ptr %22, i64 0, i32 3
  store ptr null, ptr %23, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct.CurveCache, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %25, null
  br i1 %26, label %224, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.BevList, ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !133
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %224, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %1, align 8, !tbaa !84
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %34 = tail call ptr %33(i64 noundef 16, ptr noundef nonnull @.str.7) #8
  %35 = load ptr, ptr %9, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.CurveCache, ptr %35, i64 0, i32 3
  store ptr %34, ptr %36, align 8, !tbaa !130
  %37 = getelementptr inbounds %struct.BevList, ptr %25, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !133
  %39 = icmp ne i32 %38, -1
  %40 = load i32, ptr %28, align 8, !tbaa !133
  %41 = xor i1 %39, true
  %42 = sext i1 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds %struct.Path, ptr %34, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 9
  %47 = load i16, ptr %46, align 4, !tbaa !135
  %48 = sext i16 %47 to i32
  %49 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 13
  %50 = load i16, ptr %49, align 4, !tbaa !137
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !138
  %55 = sext i1 %52 to i32
  %56 = add nsw i32 %54, %55
  %57 = mul nsw i32 %56, %48
  %58 = icmp slt i32 %44, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !138
  %62 = sext i1 %52 to i32
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %63, %48
  store i32 %64, ptr %45, align 8, !tbaa !134
  br label %65

65:                                               ; preds = %59, %31
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %67 = sext i32 %44 to i64
  %68 = shl nsw i64 %67, 2
  %69 = tail call ptr %66(i64 noundef %68, ptr noundef nonnull @.str.8) #8
  %70 = getelementptr inbounds %struct.BevList, ptr %25, i64 0, i32 9
  store float 0.000000e+00, ptr %69, align 4, !tbaa !116
  %71 = icmp sgt i32 %43, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %65
  %73 = add nsw i32 %43, -1
  %74 = getelementptr inbounds i8, ptr %25, i64 60
  %75 = getelementptr inbounds %struct.BevList, ptr %25, i64 1, i32 1
  br label %76

76:                                               ; preds = %72, %102
  %77 = phi ptr [ %70, %72 ], [ %116, %102 ]
  %78 = phi i32 [ 0, %72 ], [ %117, %102 ]
  %79 = phi ptr [ %69, %72 ], [ %80, %102 ]
  %80 = getelementptr inbounds float, ptr %79, i64 1
  %81 = icmp eq i32 %78, %73
  %82 = select i1 %39, i1 %81, i1 false
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load float, ptr %70, align 4, !tbaa !116
  %85 = load float, ptr %77, align 4, !tbaa !116
  %86 = fsub float %84, %85
  %87 = load float, ptr %74, align 4, !tbaa !116
  %88 = getelementptr inbounds float, ptr %77, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !116
  %90 = fsub float %87, %89
  br label %102

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.BevPoint, ptr %77, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !116
  %94 = load float, ptr %77, align 4, !tbaa !116
  %95 = fsub float %93, %94
  %96 = getelementptr inbounds %struct.BevPoint, ptr %77, i64 1, i32 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !116
  %98 = getelementptr inbounds float, ptr %77, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !116
  %100 = fsub float %97, %99
  %101 = getelementptr inbounds %struct.BevPoint, ptr %77, i64 1, i32 0, i64 2
  br label %102

102:                                              ; preds = %91, %83
  %103 = phi ptr [ %101, %91 ], [ %75, %83 ]
  %104 = phi float [ %100, %91 ], [ %90, %83 ]
  %105 = phi float [ %95, %91 ], [ %86, %83 ]
  %106 = load float, ptr %103, align 4, !tbaa !116
  %107 = getelementptr inbounds float, ptr %77, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !116
  %109 = fsub float %106, %108
  %110 = load float, ptr %79, align 4, !tbaa !116
  %111 = fmul float %104, %104
  %112 = tail call float @llvm.fmuladd.f32(float %105, float %105, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %109, float %109, float %112)
  %114 = tail call float @sqrtf(float noundef %113) #8
  %115 = fadd float %110, %114
  store float %115, ptr %80, align 4, !tbaa !116
  %116 = getelementptr inbounds %struct.BevPoint, ptr %77, i64 1
  %117 = add nuw nsw i32 %78, 1
  %118 = icmp eq i32 %117, %43
  br i1 %118, label %119, label %76, !llvm.loop !139

119:                                              ; preds = %102, %65
  %120 = phi ptr [ %69, %65 ], [ %80, %102 ]
  %121 = load float, ptr %120, align 4, !tbaa !116
  %122 = getelementptr inbounds %struct.Path, ptr %34, i64 0, i32 2
  store float %121, ptr %122, align 4, !tbaa !140
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %124 = load i32, ptr %45, align 8, !tbaa !134
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 40
  %127 = tail call ptr %123(i64 noundef %126, ptr noundef nonnull @.str.9) #8
  store ptr %127, ptr %34, align 8, !tbaa !126
  %128 = load i32, ptr %28, align 8, !tbaa !133
  %129 = sext i32 %128 to i64
  %130 = getelementptr %struct.BevPoint, ptr %70, i64 %129
  %131 = getelementptr %struct.BevPoint, ptr %130, i64 -1
  %132 = select i1 %39, ptr %70, ptr %131
  %133 = sext i32 %43 to i64
  %134 = getelementptr inbounds float, ptr %69, i64 %133
  %135 = load i32, ptr %45, align 8, !tbaa !134
  %136 = sitofp i32 %135 to float
  %137 = fadd float %136, -1.000000e+00
  %138 = fdiv float 1.000000e+00, %137
  %139 = load float, ptr %122, align 4, !tbaa !140
  %140 = fmul float %139, %138
  %141 = icmp sgt i32 %135, 0
  br i1 %141, label %142, label %222

142:                                              ; preds = %119
  %143 = getelementptr inbounds float, ptr %69, i64 1
  %144 = getelementptr inbounds %struct.BevList, ptr %25, i64 2, i32 4
  %145 = icmp ugt ptr %144, %131
  %146 = select i1 %145, ptr %132, ptr %144
  %147 = icmp sgt i32 %43, 0
  br label %148

148:                                              ; preds = %142, %187
  %149 = phi ptr [ %70, %142 ], [ %192, %187 ]
  %150 = phi i32 [ 0, %142 ], [ %219, %187 ]
  %151 = phi ptr [ %146, %142 ], [ %189, %187 ]
  %152 = phi ptr [ %127, %142 ], [ %218, %187 ]
  %153 = phi ptr [ %143, %142 ], [ %188, %187 ]
  %154 = sitofp i32 %150 to float
  %155 = fmul float %140, %154
  br i1 %147, label %156, label %187

156:                                              ; preds = %148
  %157 = icmp ult ptr %153, %134
  br i1 %157, label %158, label %176

158:                                              ; preds = %156
  %159 = load float, ptr %153, align 4, !tbaa !116
  %160 = fcmp ult float %155, %159
  br i1 %160, label %176, label %164

161:                                              ; preds = %164
  %162 = load float, ptr %167, align 4, !tbaa !116
  %163 = fcmp ult float %155, %162
  br i1 %163, label %172, label %164, !llvm.loop !141

164:                                              ; preds = %158, %161
  %165 = phi ptr [ %167, %161 ], [ %153, %158 ]
  %166 = phi ptr [ %170, %161 ], [ %149, %158 ]
  %167 = getelementptr inbounds float, ptr %165, i64 1
  %168 = icmp ult ptr %166, %131
  %169 = zext i1 %168 to i64
  %170 = getelementptr inbounds %struct.BevPoint, ptr %166, i64 %169
  %171 = icmp ult ptr %167, %134
  br i1 %171, label %161, label %172, !llvm.loop !141

172:                                              ; preds = %161, %164
  %173 = getelementptr inbounds %struct.BevPoint, ptr %170, i64 1
  %174 = icmp ugt ptr %173, %131
  %175 = select i1 %174, ptr %132, ptr %173
  br label %176

176:                                              ; preds = %172, %158, %156
  %177 = phi ptr [ %153, %156 ], [ %153, %158 ], [ %167, %172 ]
  %178 = phi ptr [ %151, %156 ], [ %151, %158 ], [ %175, %172 ]
  %179 = phi ptr [ %149, %156 ], [ %149, %158 ], [ %170, %172 ]
  %180 = load float, ptr %177, align 4, !tbaa !116
  %181 = fsub float %180, %155
  %182 = getelementptr inbounds float, ptr %177, i64 -1
  %183 = load float, ptr %182, align 4, !tbaa !116
  %184 = fsub float %180, %183
  %185 = fdiv float %181, %184
  %186 = fsub float 1.000000e+00, %185
  br label %187

187:                                              ; preds = %148, %176
  %188 = phi ptr [ %177, %176 ], [ %153, %148 ]
  %189 = phi ptr [ %178, %176 ], [ %151, %148 ]
  %190 = phi float [ %185, %176 ], [ 1.000000e+00, %148 ]
  %191 = phi float [ %186, %176 ], [ 0.000000e+00, %148 ]
  %192 = phi ptr [ %179, %176 ], [ %149, %148 ]
  tail call void @interp_v3_v3v3(ptr noundef %152, ptr noundef %192, ptr noundef %189, float noundef %191) #8
  %193 = getelementptr inbounds %struct.BevPoint, ptr %192, i64 0, i32 1
  %194 = load float, ptr %193, align 4, !tbaa !142
  %195 = getelementptr inbounds %struct.BevPoint, ptr %189, i64 0, i32 1
  %196 = load float, ptr %195, align 4, !tbaa !142
  %197 = fmul float %191, %196
  %198 = tail call float @llvm.fmuladd.f32(float %190, float %194, float %197)
  %199 = getelementptr inbounds [4 x float], ptr %152, i64 0, i64 3
  store float %198, ptr %199, align 4, !tbaa !116
  %200 = getelementptr inbounds %struct.BevPoint, ptr %192, i64 0, i32 2
  %201 = load float, ptr %200, align 4, !tbaa !144
  %202 = getelementptr inbounds %struct.BevPoint, ptr %189, i64 0, i32 2
  %203 = load float, ptr %202, align 4, !tbaa !144
  %204 = fmul float %191, %203
  %205 = tail call float @llvm.fmuladd.f32(float %190, float %201, float %204)
  %206 = getelementptr inbounds %struct.PathPoint, ptr %152, i64 0, i32 2
  store float %205, ptr %206, align 4, !tbaa !145
  %207 = getelementptr inbounds %struct.BevPoint, ptr %192, i64 0, i32 3
  %208 = load float, ptr %207, align 4, !tbaa !147
  %209 = getelementptr inbounds %struct.BevPoint, ptr %189, i64 0, i32 3
  %210 = load float, ptr %209, align 4, !tbaa !147
  %211 = fmul float %191, %210
  %212 = tail call float @llvm.fmuladd.f32(float %190, float %208, float %211)
  %213 = getelementptr inbounds %struct.PathPoint, ptr %152, i64 0, i32 3
  store float %212, ptr %213, align 4, !tbaa !148
  %214 = getelementptr inbounds %struct.PathPoint, ptr %152, i64 0, i32 1
  %215 = getelementptr inbounds %struct.BevPoint, ptr %192, i64 0, i32 9
  %216 = getelementptr inbounds %struct.BevPoint, ptr %189, i64 0, i32 9
  tail call void @interp_qt_qtqt(ptr noundef nonnull %214, ptr noundef nonnull %215, ptr noundef nonnull %216, float noundef %191) #8
  %217 = tail call float @normalize_qt(ptr noundef nonnull %214) #8
  %218 = getelementptr inbounds %struct.PathPoint, ptr %152, i64 1
  %219 = add nuw nsw i32 %150, 1
  %220 = load i32, ptr %45, align 8, !tbaa !134
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %148, label %222, !llvm.loop !149

222:                                              ; preds = %187, %119
  %223 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %223(ptr noundef nonnull %69) #8
  br label %224

224:                                              ; preds = %21, %27, %2, %4, %222
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @where_on_path(ptr noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #1 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %11 = icmp eq ptr %0, null
  br i1 %11, label %261, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !128
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %16, label %261

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.CurveCache, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !126
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %22, %16
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %261

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.CurveCache, ptr %20, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !132
  %34 = icmp eq ptr %33, null
  br i1 %34, label %261, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.BevList, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !133
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %261, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.BevList, ptr %33, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !133
  %42 = icmp sgt i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.Path, ptr %24, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !134
  %46 = add nsw i32 %45, -1
  %47 = sitofp i32 %46 to float
  %48 = fmul float %47, %1
  %49 = tail call float @llvm.floor.f32(float %48)
  %50 = fptosi float %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = sitofp i32 %51 to float
  %53 = sub nsw i32 %46, %43
  %54 = add nsw i32 %50, -1
  br i1 %42, label %55, label %60

55:                                               ; preds = %39
  %56 = add nsw i32 %53, 1
  %57 = srem i32 %54, %56
  %58 = add nsw i32 %57, %56
  %59 = srem i32 %58, %56
  br label %64

60:                                               ; preds = %39
  %61 = icmp slt i32 %50, 1
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = tail call i32 @llvm.smin.i32(i32 %54, i32 %53)
  br label %64

64:                                               ; preds = %55, %60, %62
  %65 = phi i32 [ %59, %55 ], [ 0, %60 ], [ %63, %62 ]
  %66 = xor i32 %43, -1
  %67 = add i32 %45, %66
  br i1 %42, label %68, label %73

68:                                               ; preds = %64
  %69 = sub i32 %45, %43
  %70 = srem i32 %50, %69
  %71 = add nsw i32 %70, %69
  %72 = srem i32 %71, %69
  br label %77

73:                                               ; preds = %64
  %74 = icmp slt i32 %50, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = tail call i32 @llvm.smin.i32(i32 %50, i32 %67)
  br label %77

77:                                               ; preds = %68, %73, %75
  %78 = phi i32 [ %72, %68 ], [ 0, %73 ], [ %76, %75 ]
  %79 = add nsw i32 %78, 1
  br i1 %42, label %80, label %85

80:                                               ; preds = %77
  %81 = sub i32 %45, %43
  %82 = srem i32 %79, %81
  %83 = add nsw i32 %82, %81
  %84 = srem i32 %83, %81
  br label %89

85:                                               ; preds = %77
  %86 = icmp slt i32 %78, -1
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  %88 = tail call i32 @llvm.smin.i32(i32 %79, i32 %67)
  br label %89

89:                                               ; preds = %80, %85, %87
  %90 = phi i32 [ %84, %80 ], [ 0, %85 ], [ %88, %87 ]
  %91 = add nsw i32 %78, 2
  br i1 %42, label %92, label %97

92:                                               ; preds = %89
  %93 = sub i32 %45, %43
  %94 = srem i32 %91, %93
  %95 = add nsw i32 %94, %93
  %96 = srem i32 %95, %93
  br label %101

97:                                               ; preds = %89
  %98 = icmp slt i32 %78, -2
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = tail call i32 @llvm.smin.i32(i32 %91, i32 %67)
  br label %101

101:                                              ; preds = %92, %97, %99
  %102 = phi i32 [ %96, %92 ], [ 0, %97 ], [ %100, %99 ]
  %103 = sext i32 %65 to i64
  %104 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %103
  %105 = sext i32 %78 to i64
  %106 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %105
  %107 = sext i32 %90 to i64
  %108 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %107
  %109 = sext i32 %102 to i64
  %110 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %109
  %111 = fsub float %48, %52
  %112 = fadd float %111, 1.000000e+00
  call void @key_curve_tangent_weights(float noundef %112, ptr noundef nonnull %8, i32 noundef 2) #8
  call void @interp_v3_v3v3v3v3(ptr noundef %3, ptr noundef nonnull %104, ptr noundef nonnull %106, ptr noundef nonnull %108, ptr noundef nonnull %110, ptr noundef nonnull %8) #8
  %113 = load float, ptr %3, align 4, !tbaa !116
  %114 = fneg float %113
  store float %114, ptr %3, align 4, !tbaa !116
  %115 = getelementptr inbounds float, ptr %3, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !116
  %117 = fneg float %116
  store float %117, ptr %115, align 4, !tbaa !116
  %118 = getelementptr inbounds float, ptr %3, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !116
  %120 = fneg float %119
  store float %120, ptr %118, align 4, !tbaa !116
  %121 = call ptr @BKE_curve_editNurbs_get(ptr noundef %18) #8
  %122 = icmp eq ptr %121, null
  %123 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 3
  %124 = select i1 %122, ptr %123, ptr %121
  %125 = load ptr, ptr %124, align 8, !tbaa !84
  %126 = getelementptr inbounds %struct.Nurb, ptr %125, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !150
  %128 = icmp ult i16 %127, 2
  %129 = icmp eq i32 %65, %78
  %130 = icmp eq i32 %90, %102
  %131 = select i1 %129, i1 true, i1 %130
  %132 = select i1 %131, i32 1, i32 2
  %133 = select i1 %128, i32 0, i32 %132
  call void @key_curve_position_weights(float noundef %112, ptr noundef nonnull %8, i32 noundef %133) #8
  %134 = load float, ptr %8, align 16, !tbaa !116
  %135 = load float, ptr %104, align 4, !tbaa !116
  %136 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !116
  %138 = load float, ptr %106, align 4, !tbaa !116
  %139 = fmul float %137, %138
  %140 = call float @llvm.fmuladd.f32(float %134, float %135, float %139)
  %141 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %142 = load float, ptr %141, align 8, !tbaa !116
  %143 = load float, ptr %108, align 4, !tbaa !116
  %144 = call float @llvm.fmuladd.f32(float %142, float %143, float %140)
  %145 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %146 = load float, ptr %145, align 4, !tbaa !116
  %147 = load float, ptr %110, align 4, !tbaa !116
  %148 = call float @llvm.fmuladd.f32(float %146, float %147, float %144)
  store float %148, ptr %2, align 4, !tbaa !116
  %149 = getelementptr inbounds [4 x float], ptr %104, i64 0, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !116
  %151 = getelementptr inbounds [4 x float], ptr %106, i64 0, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !116
  %153 = fmul float %137, %152
  %154 = call float @llvm.fmuladd.f32(float %134, float %150, float %153)
  %155 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !116
  %157 = call float @llvm.fmuladd.f32(float %142, float %156, float %154)
  %158 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !116
  %160 = call float @llvm.fmuladd.f32(float %146, float %159, float %157)
  %161 = getelementptr inbounds float, ptr %2, i64 1
  store float %160, ptr %161, align 4, !tbaa !116
  %162 = getelementptr inbounds [4 x float], ptr %104, i64 0, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !116
  %164 = getelementptr inbounds [4 x float], ptr %106, i64 0, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !116
  %166 = fmul float %137, %165
  %167 = call float @llvm.fmuladd.f32(float %134, float %163, float %166)
  %168 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !116
  %170 = call float @llvm.fmuladd.f32(float %142, float %169, float %167)
  %171 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !116
  %173 = call float @llvm.fmuladd.f32(float %146, float %172, float %170)
  %174 = getelementptr inbounds float, ptr %2, i64 2
  store float %173, ptr %174, align 4, !tbaa !116
  %175 = getelementptr inbounds [4 x float], ptr %104, i64 0, i64 3
  %176 = load float, ptr %175, align 4, !tbaa !116
  %177 = getelementptr inbounds [4 x float], ptr %106, i64 0, i64 3
  %178 = load float, ptr %177, align 4, !tbaa !116
  %179 = fmul float %137, %178
  %180 = call float @llvm.fmuladd.f32(float %134, float %176, float %179)
  %181 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 3
  %182 = load float, ptr %181, align 4, !tbaa !116
  %183 = call float @llvm.fmuladd.f32(float %142, float %182, float %180)
  %184 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 3
  %185 = load float, ptr %184, align 4, !tbaa !116
  %186 = call float @llvm.fmuladd.f32(float %146, float %185, float %183)
  %187 = getelementptr inbounds float, ptr %2, i64 3
  store float %186, ptr %187, align 4, !tbaa !116
  %188 = icmp eq ptr %4, null
  br i1 %188, label %223, label %189

189:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  %190 = fadd float %134, %146
  %191 = fcmp ogt float %190, 0x3E80000000000000
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %103, i32 1
  %194 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %109, i32 1
  %195 = fdiv float %146, %190
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %193, ptr noundef nonnull %194, float noundef %195) #8
  br label %198

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %105, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %197) #8
  br label %198

198:                                              ; preds = %196, %192
  %199 = load float, ptr %136, align 4, !tbaa !116
  %200 = load float, ptr %141, align 8, !tbaa !116
  %201 = fadd float %199, %200
  %202 = fcmp ogt float %201, 0x3E80000000000000
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %105, i32 1
  %205 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %107, i32 1
  %206 = fdiv float %200, %201
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %204, ptr noundef nonnull %205, float noundef %206) #8
  br label %209

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %109, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %208) #8
  br label %209

209:                                              ; preds = %207, %203
  %210 = load float, ptr %8, align 16, !tbaa !116
  %211 = load float, ptr %136, align 4, !tbaa !116
  %212 = fadd float %210, %211
  %213 = load float, ptr %141, align 8, !tbaa !116
  %214 = fadd float %212, %213
  %215 = load float, ptr %145, align 4, !tbaa !116
  %216 = fadd float %214, %215
  %217 = fcmp ogt float %216, 0x3E80000000000000
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = fadd float %211, %213
  %220 = fdiv float %219, %216
  call void @interp_qt_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %220) #8
  br label %222

221:                                              ; preds = %209
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %10) #8
  br label %222

222:                                              ; preds = %221, %218
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  br label %223

223:                                              ; preds = %222, %101
  %224 = icmp eq ptr %5, null
  br i1 %224, label %242, label %225

225:                                              ; preds = %223
  %226 = load float, ptr %8, align 16, !tbaa !116
  %227 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %103, i32 2
  %228 = load float, ptr %227, align 4, !tbaa !145
  %229 = load float, ptr %136, align 4, !tbaa !116
  %230 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %105, i32 2
  %231 = load float, ptr %230, align 4, !tbaa !145
  %232 = fmul float %229, %231
  %233 = call float @llvm.fmuladd.f32(float %226, float %228, float %232)
  %234 = load float, ptr %141, align 8, !tbaa !116
  %235 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %107, i32 2
  %236 = load float, ptr %235, align 4, !tbaa !145
  %237 = call float @llvm.fmuladd.f32(float %234, float %236, float %233)
  %238 = load float, ptr %145, align 4, !tbaa !116
  %239 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %109, i32 2
  %240 = load float, ptr %239, align 4, !tbaa !145
  %241 = call float @llvm.fmuladd.f32(float %238, float %240, float %237)
  store float %241, ptr %5, align 4, !tbaa !116
  br label %242

242:                                              ; preds = %225, %223
  %243 = icmp eq ptr %6, null
  br i1 %243, label %261, label %244

244:                                              ; preds = %242
  %245 = load float, ptr %8, align 16, !tbaa !116
  %246 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %103, i32 3
  %247 = load float, ptr %246, align 4, !tbaa !148
  %248 = load float, ptr %136, align 4, !tbaa !116
  %249 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %105, i32 3
  %250 = load float, ptr %249, align 4, !tbaa !148
  %251 = fmul float %248, %250
  %252 = call float @llvm.fmuladd.f32(float %245, float %247, float %251)
  %253 = load float, ptr %141, align 8, !tbaa !116
  %254 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %107, i32 3
  %255 = load float, ptr %254, align 4, !tbaa !148
  %256 = call float @llvm.fmuladd.f32(float %253, float %255, float %252)
  %257 = load float, ptr %145, align 4, !tbaa !116
  %258 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %109, i32 3
  %259 = load float, ptr %258, align 4, !tbaa !148
  %260 = call float @llvm.fmuladd.f32(float %257, float %259, float %256)
  store float %260, ptr %6, align 4, !tbaa !116
  br label %261

261:                                              ; preds = %242, %244, %35, %31, %7, %12, %29
  %262 = phi i32 [ 0, %29 ], [ 0, %12 ], [ 0, %7 ], [ 0, %31 ], [ 0, %35 ], [ 1, %244 ], [ 1, %242 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret i32 %262
}

declare void @key_curve_tangent_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #3

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef) local_unnamed_addr #3

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @DAG_scene_update_flags(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
!34 = !{!35, !36, i64 12}
!35 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !36, i64 8}
!41 = !{!35, !36, i64 0}
!42 = !{!35, !36, i64 4}
!43 = !{!35, !39, i64 18}
!44 = !{!35, !36, i64 44}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 36}
!48 = !{!35, !39, i64 28}
!49 = !{!35, !39, i64 26}
!50 = !{!51, !52, i64 0}
!51 = !{!"bMotionPath", !52, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!52 = !{!"any pointer", !37, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!51, !36, i64 8}
!55 = !{!56, !52, i64 288}
!56 = !{!"Object", !57, i64 0, !52, i64 120, !52, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !35, i64 312, !52, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !36, i64 432, !36, i64 436, !52, i64 440, !52, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !59, i64 616, !59, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !59, i64 988, !59, i64 992, !59, i64 996, !59, i64 1000, !59, i64 1004, !59, i64 1008, !59, i64 1012, !59, i64 1016, !59, i64 1020, !59, i64 1024, !59, i64 1028, !59, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !59, i64 1048, !59, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !59, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !52, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !52, i64 1240, !52, i64 1248, !52, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !59, i64 1268, !52, i64 1272, !52, i64 1280, !52, i64 1288, !52, i64 1296, !60, i64 1304, !60, i64 1312, !36, i64 1320, !36, i64 1324, !58, i64 1328, !58, i64 1344, !52, i64 1360, !52, i64 1368, !52, i64 1376, !37, i64 1384, !52, i64 1392, !58, i64 1400, !52, i64 1416}
!57 = !{!"ID", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !52, i64 112}
!58 = !{!"ListBase", !52, i64 0, !52, i64 8}
!59 = !{!"float", !37, i64 0}
!60 = !{!"long", !37, i64 0}
!61 = !{!51, !36, i64 12}
!62 = !{!51, !36, i64 16}
!63 = !{!35, !39, i64 30}
!64 = !{!51, !36, i64 20}
!65 = !{!56, !39, i64 334}
!66 = !{!56, !52, i64 360}
!67 = !{!68, !52, i64 16}
!68 = !{!"MPathTarget", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32}
!69 = !{!68, !52, i64 24}
!70 = !{!71, !39, i64 126}
!71 = !{!"bPose", !58, i64 0, !52, i64 16, !39, i64 24, !39, i64 26, !36, i64 28, !36, i64 32, !59, i64 36, !37, i64 40, !37, i64 52, !58, i64 64, !36, i64 80, !36, i64 84, !52, i64 88, !52, i64 96, !35, i64 104, !37, i64 152}
!72 = !{!56, !52, i64 296}
!73 = !{!74, !52, i64 120}
!74 = !{!"bPoseChannel", !52, i64 0, !52, i64 8, !52, i64 16, !58, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !52, i64 120, !52, i64 128, !52, i64 136, !58, i64 144, !58, i64 160, !52, i64 176, !52, i64 184, !52, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !59, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !59, i64 524, !59, i64 528, !59, i64 532, !52, i64 536}
!75 = !{!76, !36, i64 216}
!76 = !{!"bArmature", !57, i64 0, !52, i64 120, !58, i64 128, !58, i64 144, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!77 = !{!78, !36, i64 320}
!78 = !{!"Bone", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !58, i64 32, !37, i64 48, !59, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !59, i64 268, !59, i64 272, !59, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!79 = !{!74, !52, i64 176}
!80 = !{!68, !52, i64 32}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!58, !52, i64 0}
!85 = !{!86, !36, i64 680}
!86 = !{!"Scene", !57, i64 0, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !58, i64 152, !52, i64 168, !52, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !87, i64 280, !96, i64 4264, !58, i64 4296, !58, i64 4312, !52, i64 4328, !52, i64 4336, !52, i64 4344, !52, i64 4352, !52, i64 4360, !52, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !58, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !52, i64 4608, !102, i64 4616, !52, i64 4640, !60, i64 4648, !60, i64 4656, !89, i64 4664, !90, i64 4824, !103, i64 4888, !52, i64 4952}
!87 = !{!"RenderData", !88, i64 0, !52, i64 248, !52, i64 256, !91, i64 264, !92, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !59, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !59, i64 436, !59, i64 440, !59, i64 444, !59, i64 448, !59, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !93, i64 544, !93, i64 560, !94, i64 576, !58, i64 592, !39, i64 608, !39, i64 610, !59, i64 612, !59, i64 616, !59, i64 620, !59, i64 624, !36, i64 628, !59, i64 632, !59, i64 636, !59, i64 640, !59, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !59, i64 660, !59, i64 664, !39, i64 668, !39, i64 670, !59, i64 672, !59, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !59, i64 2528, !59, i64 2532, !39, i64 2536, !39, i64 2538, !59, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !59, i64 2560, !59, i64 2564, !52, i64 2568, !36, i64 2576, !59, i64 2580, !37, i64 2584, !95, i64 2616, !36, i64 3976, !36, i64 3980}
!88 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !59, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !89, i64 24, !90, i64 184}
!89 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !59, i64 136, !59, i64 140, !52, i64 144, !52, i64 152}
!90 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!91 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!92 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !59, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !52, i64 64}
!93 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!94 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!95 = !{!"BakeData", !88, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !59, i64 1280, !59, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"AudioData", !36, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !59, i64 24, !59, i64 28}
!97 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!98 = !{!"GameData", !97, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !99, i64 40, !39, i64 64, !39, i64 66, !59, i64 68, !100, i64 72, !59, i64 128, !59, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180}
!99 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !59, i64 8, !59, i64 12, !52, i64 16}
!100 = !{!"RecastData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !36, i64 40, !59, i64 44, !59, i64 48, !39, i64 52, !39, i64 54}
!101 = !{!"UnitSettings", !59, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!102 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!103 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!104 = !{!68, !52, i64 0}
!105 = distinct !{!105, !82, !83}
!106 = !{!107, !52, i64 32}
!107 = !{!"Base", !52, i64 0, !52, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !52, i64 32}
!108 = !{!56, !39, i64 948}
!109 = distinct !{!109, !82, !83}
!110 = !{!86, !52, i64 152}
!111 = !{!107, !52, i64 0}
!112 = distinct !{!112, !82, !83}
!113 = distinct !{!113, !82, !83}
!114 = !{!115, !52, i64 0}
!115 = !{!"Global", !52, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !58, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!116 = !{!59, !59, i64 0}
!117 = distinct !{!117, !82, !83}
!118 = distinct !{!118, !82, !83}
!119 = !{!35, !39, i64 22}
!120 = distinct !{!120, !82, !83}
!121 = !{!122, !52, i64 1888}
!122 = !{!"Main", !52, i64 0, !52, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !60, i64 1048, !37, i64 1056, !39, i64 1072, !52, i64 1080, !58, i64 1088, !58, i64 1104, !58, i64 1120, !58, i64 1136, !58, i64 1152, !58, i64 1168, !58, i64 1184, !58, i64 1200, !58, i64 1216, !58, i64 1232, !58, i64 1248, !58, i64 1264, !58, i64 1280, !58, i64 1296, !58, i64 1312, !58, i64 1328, !58, i64 1344, !58, i64 1360, !58, i64 1376, !58, i64 1392, !58, i64 1408, !58, i64 1424, !58, i64 1440, !58, i64 1456, !58, i64 1472, !58, i64 1488, !58, i64 1504, !58, i64 1520, !58, i64 1536, !58, i64 1552, !58, i64 1568, !58, i64 1584, !58, i64 1600, !58, i64 1616, !37, i64 1632, !52, i64 1888, !52, i64 1896}
!123 = !{!86, !36, i64 232}
!124 = distinct !{!124, !82, !83}
!125 = distinct !{!125, !82, !83}
!126 = !{!127, !52, i64 0}
!127 = !{!"Path", !52, i64 0, !36, i64 8, !59, i64 12}
!128 = !{!56, !39, i64 136}
!129 = !{!56, !52, i64 1280}
!130 = !{!131, !52, i64 48}
!131 = !{!"CurveCache", !58, i64 0, !58, i64 16, !58, i64 32, !52, i64 48}
!132 = !{!131, !52, i64 16}
!133 = !{!36, !36, i64 0}
!134 = !{!127, !36, i64 8}
!135 = !{!136, !39, i64 36}
!136 = !{!"Nurb", !52, i64 0, !52, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!137 = !{!136, !39, i64 44}
!138 = !{!136, !36, i64 24}
!139 = distinct !{!139, !82, !83}
!140 = !{!127, !59, i64 12}
!141 = distinct !{!141, !82, !83}
!142 = !{!143, !59, i64 12}
!143 = !{!"BevPoint", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !37, i64 36, !37, i64 48, !37, i64 60, !39, i64 76, !39, i64 78}
!144 = !{!143, !59, i64 16}
!145 = !{!146, !59, i64 32}
!146 = !{!"PathPoint", !37, i64 0, !37, i64 16, !59, i64 32, !59, i64 36}
!147 = !{!143, !59, i64 20}
!148 = !{!146, !59, i64 36}
!149 = distinct !{!149, !82, !83}
!150 = !{!136, !39, i64 16}

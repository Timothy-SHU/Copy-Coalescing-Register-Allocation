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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bMotionPathVert = type { [3 x float], i32 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @animviz_settings_init(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  store <4 x i32> <i32 1, i32 250, i32 10, i32 10>, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 5
  store i16 1, ptr %4, align 2, !tbaa !38
  %5 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 12
  store <4 x i32> <i32 1, i32 250, i32 10, i32 10>, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 10
  store i16 6, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bAnimVizSettings, ptr %0, i64 0, i32 9
  store i16 1, ptr %7, align 2, !tbaa !42
  br label %8

8:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animviz_free_motionpath_cache(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %3
  store ptr null, ptr %0, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.bMotionPath, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animviz_free_motionpath(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @animviz_free_motionpath_cache(ptr noundef nonnull %0) #13
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %4(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @animviz_verify_motionpaths(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %75, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !48
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
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = getelementptr inbounds %struct.bAnimVizSettings, ptr %19, i64 0, i32 13
  %24 = load i32, ptr %23, align 4, !tbaa !55
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %29 = select i1 %9, ptr %28, ptr %27
  %30 = icmp eq i32 %22, %24
  %31 = select i1 %30, ptr @.str.1, ptr @.str.2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %29, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %31) #12
  br label %75

32:                                               ; preds = %18
  %33 = load ptr, ptr %20, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = sub nsw i32 %24, %22
  %37 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.bMotionPath, ptr %33, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !47
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = icmp eq i32 %44, %36
  br i1 %47, label %75, label %48

48:                                               ; preds = %46
  tail call void @animviz_free_motionpath_cache(ptr noundef nonnull %33) #13
  br label %52

49:                                               ; preds = %32
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %51 = tail call ptr %50(i64 noundef 24, ptr noundef nonnull @.str.3) #12
  store ptr %51, ptr %20, align 8, !tbaa !46
  br label %52

52:                                               ; preds = %48, %42, %35, %49
  %53 = phi ptr [ %51, %49 ], [ %33, %35 ], [ %33, %42 ], [ %33, %48 ]
  %54 = load i32, ptr %21, align 4, !tbaa !54
  %55 = getelementptr inbounds %struct.bMotionPath, ptr %53, i64 0, i32 2
  store i32 %54, ptr %55, align 4, !tbaa !56
  %56 = load i32, ptr %23, align 4, !tbaa !55
  %57 = getelementptr inbounds %struct.bMotionPath, ptr %53, i64 0, i32 3
  store i32 %56, ptr %57, align 8, !tbaa !57
  %58 = sub nsw i32 %56, %54
  %59 = getelementptr inbounds %struct.bMotionPath, ptr %53, i64 0, i32 1
  store i32 %58, ptr %59, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.bAnimVizSettings, ptr %19, i64 0, i32 11
  %61 = load i16, ptr %60, align 2, !tbaa !58
  %62 = getelementptr inbounds %struct.bMotionPath, ptr %53, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !59
  %64 = and i32 %63, -2
  %65 = lshr i16 %61, 1
  %66 = and i16 %65, 1
  %67 = zext nneg i16 %66 to i32
  %68 = or disjoint i32 %64, %67
  store i32 %68, ptr %62, align 4, !tbaa !59
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %70 = sext i32 %58 to i64
  %71 = shl nsw i64 %70, 4
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.4) #12
  store ptr %72, ptr %53, align 8, !tbaa !43
  %73 = load i16, ptr %60, align 2, !tbaa !58
  %74 = or i16 %73, 4
  store i16 %74, ptr %60, align 2, !tbaa !58
  br label %75

75:                                               ; preds = %46, %4, %52, %26
  %76 = phi ptr [ null, %26 ], [ %53, %52 ], [ null, %4 ], [ %33, %46 ]
  ret ptr %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animviz_get_object_motionpaths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 21, i32 7
  %4 = load i16, ptr %3, align 2, !tbaa !60
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = tail call ptr %12(i64 noundef 40, ptr noundef nonnull @.str.5) #12
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %13) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.MPathTarget, ptr %13, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.MPathTarget, ptr %13, i64 0, i32 3
  store ptr %0, ptr %16, align 8, !tbaa !64
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bPose, ptr %19, i64 0, i32 14, i32 7
  %23 = load i16, ptr %22, align 2, !tbaa !65
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.bArmature, ptr %31, i64 0, i32 15
  br label %33

33:                                               ; preds = %29, %55
  %34 = phi ptr [ %27, %29 ], [ %56, %55 ]
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %32, align 8, !tbaa !70
  %40 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 25
  %41 = load i32, ptr %40, align 8, !tbaa !72
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %50 = tail call ptr %49(i64 noundef 40, ptr noundef nonnull @.str.6) #12
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %50) #12
  %51 = load ptr, ptr %45, align 8, !tbaa !74
  %52 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 3
  store ptr %0, ptr %53, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.MPathTarget, ptr %50, i64 0, i32 4
  store ptr %34, ptr %54, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %33, %38, %44, %48
  %56 = load ptr, ptr %34, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %33, !llvm.loop !76

58:                                               ; preds = %55, %26, %21, %17
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animviz_calc_motionpaths(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !78
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !79
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %22, %10 ]
  %12 = phi i32 [ %9, %7 ], [ %21, %10 ]
  %13 = phi i32 [ %9, %7 ], [ %18, %10 ]
  %14 = getelementptr inbounds %struct.MPathTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.bMotionPath, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = tail call i32 @llvm.smin.i32(i32 %13, i32 %17)
  %19 = getelementptr inbounds %struct.bMotionPath, ptr %15, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = tail call i32 @llvm.smax.i32(i32 %12, i32 %20)
  %22 = load ptr, ptr %11, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !99

24:                                               ; preds = %10
  %25 = icmp sgt i32 %21, %18
  br i1 %25, label %26, label %54

26:                                               ; preds = %24
  tail call fastcc void @motionpaths_calc_optimise_depsgraph(ptr noundef %0, ptr noundef nonnull %1) #13
  store i32 %18, ptr %8, align 8, !tbaa !79
  br label %27

27:                                               ; preds = %26, %27
  tail call fastcc void @motionpaths_calc_update_scene(ptr noundef nonnull %0) #13
  tail call fastcc void @motionpaths_calc_bake_targets(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %28 = load i32, ptr %8, align 8, !tbaa !79
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %8, align 8, !tbaa !79
  %30 = icmp slt i32 %28, %21
  br i1 %30, label %27, label %31, !llvm.loop !100

31:                                               ; preds = %27
  store i32 %9, ptr %8, align 8, !tbaa !79
  tail call fastcc void @motionpaths_calc_update_scene(ptr noundef nonnull %0) #13
  %32 = load ptr, ptr %1, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %31, %47
  %35 = phi ptr [ %52, %47 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.MPathTarget, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.MPathTarget, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  br i1 %38, label %45, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.bPose, ptr %43, i64 0, i32 14
  br label %47

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 21
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %44, %41 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.bAnimVizSettings, ptr %48, i64 0, i32 7
  %50 = load i16, ptr %49, align 2, !tbaa !101
  %51 = and i16 %50, -2
  store i16 %51, ptr %49, align 2, !tbaa !101
  %52 = load ptr, ptr %35, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %34, !llvm.loop !102

54:                                               ; preds = %47, %31, %24, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @motionpaths_calc_optimise_depsgraph(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !103 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %9, %2
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %18

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %16, %9 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 53
  %14 = load i16, ptr %13, align 4, !tbaa !106
  %15 = and i16 %14, -33
  store i16 %15, ptr %13, align 4, !tbaa !106
  %16 = load ptr, ptr %10, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %6, label %9, !llvm.loop !107

18:                                               ; preds = %6, %43
  %19 = phi ptr [ %44, %43 ], [ %7, %6 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !108
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MPathTarget, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 53
  br label %26

26:                                               ; preds = %22, %41
  %27 = phi ptr [ %20, %22 ], [ %28, %41 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = icmp eq ptr %30, %24
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i16, ptr %25, align 4, !tbaa !106
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %27) #12
  tail call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef nonnull %27) #12
  %37 = load ptr, ptr %23, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 53
  %39 = load i16, ptr %38, align 4, !tbaa !106
  %40 = or i16 %39, 32
  store i16 %40, ptr %38, align 4, !tbaa !106
  br label %43

41:                                               ; preds = %26, %32
  %42 = icmp eq ptr %28, null
  br i1 %42, label %43, label %26, !llvm.loop !110

43:                                               ; preds = %41, %18, %36
  %44 = load ptr, ptr %19, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %18, !llvm.loop !111

46:                                               ; preds = %43, %6
  %47 = load ptr, ptr @G, align 8, !tbaa !112
  tail call void @DAG_scene_relations_rebuild(ptr noundef %47, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @motionpaths_calc_update_scene(ptr noundef %0) unnamed_addr #1 !PGOFuncName !114 {
  %2 = tail call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef %0) #12
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @G, align 8, !tbaa !112
  br i1 %3, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 46
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !117
  tail call void @BKE_scene_update_for_newframe(ptr noundef %7, ptr noundef %4, ptr noundef %0, i32 noundef %9) #12
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !117
  tail call void @DAG_scene_update_flags(ptr noundef %4, ptr noundef %0, i32 noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %18, %10
  %17 = phi ptr [ null, %10 ], [ %27, %18 ]
  br label %30

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %28, %18 ], [ %14, %10 ]
  %20 = phi ptr [ %27, %18 ], [ null, %10 ]
  %21 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !106
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr %20, ptr %19
  %28 = load ptr, ptr %19, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %16, label %18, !llvm.loop !118

30:                                               ; preds = %16, %34
  %31 = phi ptr [ %32, %34 ], [ %13, %16 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @G, align 8, !tbaa !112
  %36 = getelementptr inbounds %struct.Main, ptr %35, i64 0, i32 46
  %37 = load ptr, ptr %36, align 8, !tbaa !115
  %38 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !104
  tail call void @BKE_object_handle_update(ptr noundef %37, ptr noundef %0, ptr noundef %39) #12
  %40 = icmp eq ptr %32, %17
  br i1 %40, label %41, label %30, !llvm.loop !119

41:                                               ; preds = %30, %34, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @motionpaths_calc_bake_targets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !120 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %7

7:                                                ; preds = %5, %42
  %8 = phi ptr [ %3, %5 ], [ %43, %42 ]
  %9 = getelementptr inbounds %struct.MPathTarget, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = load i32, ptr %6, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.bMotionPath, ptr %10, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bMotionPath, ptr %10, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !tbaa !43
  %21 = sub nsw i32 %11, %13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bMotionPathVert, ptr %20, i64 %22
  %24 = getelementptr inbounds %struct.MPathTarget, ptr %8, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bMotionPath, ptr %10, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !59
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 32
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 31
  %34 = select i1 %31, ptr %32, ptr %33
  tail call fastcc void @copy_v3_v3(ptr noundef %23, ptr noundef nonnull %34) #13
  %35 = getelementptr inbounds %struct.MPathTarget, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef %23) #12
  br label %42

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.MPathTarget, ptr %8, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %23, ptr noundef nonnull %41) #13
  br label %42

42:                                               ; preds = %27, %38, %7, %15
  %43 = load ptr, ptr %8, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %7, !llvm.loop !121

45:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_path(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %5(ptr noundef nonnull %2) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %7(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calc_curvepath(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %184, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !124
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %184

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.CurveCache, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  tail call void @free_path(ptr noundef nonnull %13) #13
  %16 = load ptr, ptr %10, align 8, !tbaa !125
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %19 = getelementptr inbounds %struct.CurveCache, ptr %18, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !126
  %20 = getelementptr inbounds %struct.CurveCache, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = icmp eq ptr %21, null
  br i1 %22, label %184, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.BevList, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %184, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %1, align 8, !tbaa !78
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %30 = tail call ptr %29(i64 noundef 16, ptr noundef nonnull @.str.7) #12
  %31 = load ptr, ptr %10, align 8, !tbaa !125
  %32 = getelementptr inbounds %struct.CurveCache, ptr %31, i64 0, i32 3
  store ptr %30, ptr %32, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.BevList, ptr %21, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = icmp ne i32 %34, -1
  %36 = load i32, ptr %24, align 8, !tbaa !34
  %37 = xor i1 %35, true
  %38 = sext i1 %37 to i32
  %39 = add nsw i32 %36, %38
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.Path, ptr %30, i64 0, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !129
  %42 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 9
  %43 = load i16, ptr %42, align 4, !tbaa !130
  %44 = sext i16 %43 to i32
  %45 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 13
  %46 = load i16, ptr %45, align 4, !tbaa !132
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !133
  br i1 %48, label %51, label %55

51:                                               ; preds = %27
  %52 = add nsw i32 %50, -1
  %53 = mul nsw i32 %52, %44
  %54 = icmp slt i32 %40, %53
  br i1 %54, label %58, label %60

55:                                               ; preds = %27
  %56 = mul nsw i32 %50, %44
  %57 = icmp slt i32 %40, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51, %55
  %59 = phi i32 [ %56, %55 ], [ %53, %51 ]
  store i32 %59, ptr %41, align 8, !tbaa !129
  br label %60

60:                                               ; preds = %55, %58, %51
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %62 = sext i32 %40 to i64
  %63 = shl nsw i64 %62, 2
  %64 = tail call ptr %61(i64 noundef %63, ptr noundef nonnull @.str.8) #12
  %65 = getelementptr inbounds %struct.BevList, ptr %21, i64 0, i32 9
  store float 0.000000e+00, ptr %64, align 4, !tbaa !134
  %66 = icmp sgt i32 %39, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = add nsw i32 %39, -1
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi float [ 0.000000e+00, %67 ], [ %80, %69 ]
  %71 = phi ptr [ %65, %67 ], [ %81, %69 ]
  %72 = phi i32 [ 0, %67 ], [ %82, %69 ]
  %73 = phi ptr [ %64, %67 ], [ %74, %69 ]
  %74 = getelementptr inbounds float, ptr %73, i64 1
  %75 = icmp eq i32 %72, %68
  %76 = select i1 %35, i1 %75, i1 false
  %77 = getelementptr inbounds %struct.BevPoint, ptr %71, i64 1
  %78 = select i1 %76, ptr %65, ptr %77
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %78, ptr noundef nonnull %71) #13
  %79 = call fastcc float @len_v3(ptr noundef nonnull %3) #13
  %80 = fadd float %70, %79
  store float %80, ptr %74, align 4, !tbaa !134
  %81 = getelementptr inbounds %struct.BevPoint, ptr %71, i64 1
  %82 = add nuw nsw i32 %72, 1
  %83 = icmp eq i32 %82, %39
  br i1 %83, label %84, label %69, !llvm.loop !135

84:                                               ; preds = %69, %60
  %85 = phi float [ 0.000000e+00, %60 ], [ %80, %69 ]
  %86 = getelementptr inbounds %struct.Path, ptr %30, i64 0, i32 2
  store float %85, ptr %86, align 4, !tbaa !136
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %88 = load i32, ptr %41, align 8, !tbaa !129
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 40
  %91 = tail call ptr %87(i64 noundef %90, ptr noundef nonnull @.str.9) #12
  store ptr %91, ptr %30, align 8, !tbaa !122
  %92 = load i32, ptr %24, align 8, !tbaa !34
  %93 = sext i32 %92 to i64
  %94 = getelementptr %struct.BevPoint, ptr %65, i64 %93
  %95 = getelementptr %struct.BevPoint, ptr %94, i64 -1
  %96 = select i1 %35, ptr %65, ptr %95
  %97 = sext i32 %39 to i64
  %98 = getelementptr inbounds float, ptr %64, i64 %97
  %99 = load i32, ptr %41, align 8, !tbaa !129
  %100 = sitofp i32 %99 to float
  %101 = fadd float %100, -1.000000e+00
  %102 = fdiv float 1.000000e+00, %101
  %103 = load float, ptr %86, align 4, !tbaa !136
  %104 = fmul float %103, %102
  %105 = icmp sgt i32 %99, 0
  br i1 %105, label %106, label %182

106:                                              ; preds = %84
  %107 = getelementptr inbounds float, ptr %64, i64 1
  %108 = getelementptr inbounds %struct.BevList, ptr %21, i64 2, i32 4
  %109 = icmp ugt ptr %108, %95
  %110 = select i1 %109, ptr %96, ptr %108
  br label %111

111:                                              ; preds = %106, %150
  %112 = phi ptr [ %65, %106 ], [ %155, %150 ]
  %113 = phi i32 [ 0, %106 ], [ %179, %150 ]
  %114 = phi ptr [ %110, %106 ], [ %152, %150 ]
  %115 = phi ptr [ %91, %106 ], [ %178, %150 ]
  %116 = phi ptr [ %107, %106 ], [ %151, %150 ]
  %117 = sitofp i32 %113 to float
  %118 = fmul float %104, %117
  br i1 %66, label %119, label %150

119:                                              ; preds = %111
  %120 = icmp ult ptr %116, %98
  br i1 %120, label %121, label %139

121:                                              ; preds = %119
  %122 = load float, ptr %116, align 4, !tbaa !134
  %123 = fcmp ult float %118, %122
  br i1 %123, label %139, label %127

124:                                              ; preds = %127
  %125 = load float, ptr %130, align 4, !tbaa !134
  %126 = fcmp ult float %118, %125
  br i1 %126, label %135, label %127, !llvm.loop !137

127:                                              ; preds = %121, %124
  %128 = phi ptr [ %130, %124 ], [ %116, %121 ]
  %129 = phi ptr [ %133, %124 ], [ %112, %121 ]
  %130 = getelementptr inbounds float, ptr %128, i64 1
  %131 = icmp ult ptr %129, %95
  %132 = zext i1 %131 to i64
  %133 = getelementptr inbounds %struct.BevPoint, ptr %129, i64 %132
  %134 = icmp ult ptr %130, %98
  br i1 %134, label %124, label %135, !llvm.loop !137

135:                                              ; preds = %124, %127
  %136 = getelementptr inbounds %struct.BevPoint, ptr %133, i64 1
  %137 = icmp ugt ptr %136, %95
  %138 = select i1 %137, ptr %96, ptr %136
  br label %139

139:                                              ; preds = %135, %121, %119
  %140 = phi ptr [ %116, %119 ], [ %116, %121 ], [ %130, %135 ]
  %141 = phi ptr [ %114, %119 ], [ %114, %121 ], [ %138, %135 ]
  %142 = phi ptr [ %112, %119 ], [ %112, %121 ], [ %133, %135 ]
  %143 = load float, ptr %140, align 4, !tbaa !134
  %144 = fsub float %143, %118
  %145 = getelementptr inbounds float, ptr %140, i64 -1
  %146 = load float, ptr %145, align 4, !tbaa !134
  %147 = fsub float %143, %146
  %148 = fdiv float %144, %147
  %149 = fsub float 1.000000e+00, %148
  br label %150

150:                                              ; preds = %111, %139
  %151 = phi ptr [ %140, %139 ], [ %116, %111 ]
  %152 = phi ptr [ %141, %139 ], [ %114, %111 ]
  %153 = phi float [ %148, %139 ], [ 1.000000e+00, %111 ]
  %154 = phi float [ %149, %139 ], [ 0.000000e+00, %111 ]
  %155 = phi ptr [ %142, %139 ], [ %112, %111 ]
  tail call void @interp_v3_v3v3(ptr noundef %115, ptr noundef %155, ptr noundef %152, float noundef %154) #12
  %156 = getelementptr inbounds %struct.BevPoint, ptr %155, i64 0, i32 1
  %157 = load float, ptr %156, align 4, !tbaa !138
  %158 = getelementptr inbounds %struct.BevPoint, ptr %152, i64 0, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !138
  %160 = fmul float %154, %159
  %161 = tail call float @llvm.fmuladd.f32(float %153, float %157, float %160)
  %162 = getelementptr inbounds [4 x float], ptr %115, i64 0, i64 3
  store float %161, ptr %162, align 4, !tbaa !134
  %163 = getelementptr inbounds %struct.BevPoint, ptr %155, i64 0, i32 2
  %164 = getelementptr inbounds %struct.BevPoint, ptr %152, i64 0, i32 2
  %165 = getelementptr inbounds %struct.PathPoint, ptr %115, i64 0, i32 2
  %166 = load <2 x float>, ptr %163, align 4, !tbaa !134
  %167 = load <2 x float>, ptr %164, align 4, !tbaa !134
  %168 = insertelement <2 x float> poison, float %154, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  %170 = fmul <2 x float> %169, %167
  %171 = insertelement <2 x float> poison, float %153, i64 0
  %172 = shufflevector <2 x float> %171, <2 x float> poison, <2 x i32> zeroinitializer
  %173 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %172, <2 x float> %166, <2 x float> %170)
  store <2 x float> %173, ptr %165, align 4, !tbaa !134
  %174 = getelementptr inbounds %struct.PathPoint, ptr %115, i64 0, i32 1
  %175 = getelementptr inbounds %struct.BevPoint, ptr %155, i64 0, i32 9
  %176 = getelementptr inbounds %struct.BevPoint, ptr %152, i64 0, i32 9
  tail call void @interp_qt_qtqt(ptr noundef nonnull %174, ptr noundef nonnull %175, ptr noundef nonnull %176, float noundef %154) #12
  %177 = tail call float @normalize_qt(ptr noundef nonnull %174) #12
  %178 = getelementptr inbounds %struct.PathPoint, ptr %115, i64 1
  %179 = add nuw nsw i32 %113, 1
  %180 = load i32, ptr %41, align 8, !tbaa !129
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %111, label %182, !llvm.loop !140

182:                                              ; preds = %150, %84
  %183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %183(ptr noundef nonnull %64) #12
  br label %184

184:                                              ; preds = %17, %23, %2, %5, %182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !141 {
  %4 = load float, ptr %1, align 4, !tbaa !134
  %5 = load float, ptr %2, align 4, !tbaa !134
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !134
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !134
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !134
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !134
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !134
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !134
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !142 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #13
  %3 = tail call float @sqrtf(float noundef %2) #12
  ret float %3
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @where_on_path(ptr noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #1 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %213, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !124
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %16, label %213

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.CurveCache, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !126
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !122
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %22, %16
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %213

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.CurveCache, ptr %20, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = icmp eq ptr %33, null
  br i1 %34, label %213, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.BevList, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %213, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.BevList, ptr %33, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !34
  %42 = icmp sgt i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.Path, ptr %24, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !129
  %46 = add nsw i32 %45, -1
  %47 = sitofp i32 %46 to float
  %48 = fmul float %47, %1
  %49 = tail call float @llvm.floor.f32(float %48)
  %50 = fptosi float %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = sitofp i32 %51 to float
  %53 = sub nsw i32 %46, %43
  %54 = add nsw i32 %50, -1
  %55 = tail call fastcc i32 @interval_test(i32 noundef %53, i32 noundef %54, i32 noundef %43) #13
  %56 = xor i32 %43, -1
  %57 = add i32 %45, %56
  %58 = tail call fastcc i32 @interval_test(i32 noundef %57, i32 noundef %50, i32 noundef %43) #13
  %59 = add nsw i32 %58, 1
  %60 = tail call fastcc i32 @interval_test(i32 noundef %57, i32 noundef %59, i32 noundef %43) #13
  %61 = add nsw i32 %58, 2
  %62 = tail call fastcc i32 @interval_test(i32 noundef %57, i32 noundef %61, i32 noundef %43) #13
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %63
  %65 = sext i32 %58 to i64
  %66 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %65
  %67 = sext i32 %60 to i64
  %68 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %67
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %69
  %71 = fsub float %48, %52
  %72 = fadd float %71, 1.000000e+00
  call void @key_curve_tangent_weights(float noundef %72, ptr noundef nonnull %8, i32 noundef 2) #12
  call void @interp_v3_v3v3v3v3(ptr noundef %3, ptr noundef nonnull %64, ptr noundef nonnull %66, ptr noundef nonnull %68, ptr noundef nonnull %70, ptr noundef nonnull %8) #12
  call fastcc void @negate_v3(ptr noundef %3) #13
  %73 = call ptr @BKE_curve_editNurbs_get(ptr noundef %18) #12
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 3
  %76 = select i1 %74, ptr %75, ptr %73
  %77 = load ptr, ptr %76, align 8, !tbaa !78
  %78 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 2
  %79 = load i16, ptr %78, align 8, !tbaa !143
  %80 = icmp ult i16 %79, 2
  %81 = icmp eq i32 %55, %58
  %82 = icmp eq i32 %60, %62
  %83 = select i1 %81, i1 true, i1 %82
  %84 = select i1 %83, i32 1, i32 2
  %85 = select i1 %80, i32 0, i32 %84
  call void @key_curve_position_weights(float noundef %72, ptr noundef nonnull %8, i32 noundef %85) #12
  %86 = load float, ptr %8, align 16, !tbaa !134
  %87 = load float, ptr %64, align 4, !tbaa !134
  %88 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !134
  %90 = load float, ptr %66, align 4, !tbaa !134
  %91 = fmul float %89, %90
  %92 = call float @llvm.fmuladd.f32(float %86, float %87, float %91)
  %93 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %94 = load float, ptr %93, align 8, !tbaa !134
  %95 = load float, ptr %68, align 4, !tbaa !134
  %96 = call float @llvm.fmuladd.f32(float %94, float %95, float %92)
  %97 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %98 = load float, ptr %97, align 4, !tbaa !134
  %99 = load float, ptr %70, align 4, !tbaa !134
  %100 = call float @llvm.fmuladd.f32(float %98, float %99, float %96)
  store float %100, ptr %2, align 4, !tbaa !134
  %101 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !134
  %103 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !134
  %105 = fmul float %89, %104
  %106 = call float @llvm.fmuladd.f32(float %86, float %102, float %105)
  %107 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !134
  %109 = call float @llvm.fmuladd.f32(float %94, float %108, float %106)
  %110 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !134
  %112 = call float @llvm.fmuladd.f32(float %98, float %111, float %109)
  %113 = getelementptr inbounds float, ptr %2, i64 1
  store float %112, ptr %113, align 4, !tbaa !134
  %114 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !134
  %116 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !134
  %118 = fmul float %89, %117
  %119 = call float @llvm.fmuladd.f32(float %86, float %115, float %118)
  %120 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !134
  %122 = call float @llvm.fmuladd.f32(float %94, float %121, float %119)
  %123 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !134
  %125 = call float @llvm.fmuladd.f32(float %98, float %124, float %122)
  %126 = getelementptr inbounds float, ptr %2, i64 2
  store float %125, ptr %126, align 4, !tbaa !134
  %127 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 3
  %128 = load float, ptr %127, align 4, !tbaa !134
  %129 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 3
  %130 = load float, ptr %129, align 4, !tbaa !134
  %131 = fmul float %89, %130
  %132 = call float @llvm.fmuladd.f32(float %86, float %128, float %131)
  %133 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 3
  %134 = load float, ptr %133, align 4, !tbaa !134
  %135 = call float @llvm.fmuladd.f32(float %94, float %134, float %132)
  %136 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 3
  %137 = load float, ptr %136, align 4, !tbaa !134
  %138 = call float @llvm.fmuladd.f32(float %98, float %137, float %135)
  %139 = getelementptr inbounds float, ptr %2, i64 3
  store float %138, ptr %139, align 4, !tbaa !134
  %140 = icmp eq ptr %4, null
  br i1 %140, label %175, label %141

141:                                              ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  %142 = fadd float %86, %98
  %143 = fcmp ogt float %142, 0x3E80000000000000
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %63, i32 1
  %146 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %69, i32 1
  %147 = fdiv float %98, %142
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %145, ptr noundef nonnull %146, float noundef %147) #12
  br label %150

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %65, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %149) #12
  br label %150

150:                                              ; preds = %148, %144
  %151 = load float, ptr %88, align 4, !tbaa !134
  %152 = load float, ptr %93, align 8, !tbaa !134
  %153 = fadd float %151, %152
  %154 = fcmp ogt float %153, 0x3E80000000000000
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %65, i32 1
  %157 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %67, i32 1
  %158 = fdiv float %152, %153
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %156, ptr noundef nonnull %157, float noundef %158) #12
  br label %161

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %69, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %160) #12
  br label %161

161:                                              ; preds = %159, %155
  %162 = load float, ptr %8, align 16, !tbaa !134
  %163 = load float, ptr %88, align 4, !tbaa !134
  %164 = fadd float %162, %163
  %165 = load float, ptr %93, align 8, !tbaa !134
  %166 = fadd float %164, %165
  %167 = load float, ptr %97, align 4, !tbaa !134
  %168 = fadd float %166, %167
  %169 = fcmp ogt float %168, 0x3E80000000000000
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = fadd float %163, %165
  %172 = fdiv float %171, %168
  call void @interp_qt_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %172) #12
  br label %174

173:                                              ; preds = %161
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %10) #12
  br label %174

174:                                              ; preds = %173, %170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %175

175:                                              ; preds = %174, %39
  %176 = icmp eq ptr %5, null
  br i1 %176, label %194, label %177

177:                                              ; preds = %175
  %178 = load float, ptr %8, align 16, !tbaa !134
  %179 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %63, i32 2
  %180 = load float, ptr %179, align 4, !tbaa !144
  %181 = load float, ptr %88, align 4, !tbaa !134
  %182 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %65, i32 2
  %183 = load float, ptr %182, align 4, !tbaa !144
  %184 = fmul float %181, %183
  %185 = call float @llvm.fmuladd.f32(float %178, float %180, float %184)
  %186 = load float, ptr %93, align 8, !tbaa !134
  %187 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %67, i32 2
  %188 = load float, ptr %187, align 4, !tbaa !144
  %189 = call float @llvm.fmuladd.f32(float %186, float %188, float %185)
  %190 = load float, ptr %97, align 4, !tbaa !134
  %191 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %69, i32 2
  %192 = load float, ptr %191, align 4, !tbaa !144
  %193 = call float @llvm.fmuladd.f32(float %190, float %192, float %189)
  store float %193, ptr %5, align 4, !tbaa !134
  br label %194

194:                                              ; preds = %177, %175
  %195 = icmp eq ptr %6, null
  br i1 %195, label %213, label %196

196:                                              ; preds = %194
  %197 = load float, ptr %8, align 16, !tbaa !134
  %198 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %63, i32 3
  %199 = load float, ptr %198, align 4, !tbaa !146
  %200 = load float, ptr %88, align 4, !tbaa !134
  %201 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %65, i32 3
  %202 = load float, ptr %201, align 4, !tbaa !146
  %203 = fmul float %200, %202
  %204 = call float @llvm.fmuladd.f32(float %197, float %199, float %203)
  %205 = load float, ptr %93, align 8, !tbaa !134
  %206 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %67, i32 3
  %207 = load float, ptr %206, align 4, !tbaa !146
  %208 = call float @llvm.fmuladd.f32(float %205, float %207, float %204)
  %209 = load float, ptr %97, align 4, !tbaa !134
  %210 = getelementptr inbounds %struct.PathPoint, ptr %27, i64 %69, i32 3
  %211 = load float, ptr %210, align 4, !tbaa !146
  %212 = call float @llvm.fmuladd.f32(float %209, float %211, float %208)
  store float %212, ptr %6, align 4, !tbaa !134
  br label %213

213:                                              ; preds = %194, %196, %35, %31, %7, %12, %29
  %214 = phi i32 [ 0, %29 ], [ 0, %12 ], [ 0, %7 ], [ 0, %31 ], [ 0, %35 ], [ 1, %196 ], [ 1, %194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  ret i32 %214
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @interval_test(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !147 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %0, 1
  %7 = tail call fastcc i32 @mod_i(i32 noundef %1, i32 noundef %6) #13
  br label %12

8:                                                ; preds = %3
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 %0)
  br label %12

12:                                               ; preds = %10, %8, %5
  %13 = phi i32 [ %7, %5 ], [ 0, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @key_curve_tangent_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !148 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !134
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !134
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !134
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_scene_update_flags(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !149 {
  %3 = load float, ptr %1, align 4, !tbaa !134
  store float %3, ptr %0, align 4, !tbaa !134
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !134
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !134
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !134
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !150 {
  %3 = load float, ptr %0, align 4, !tbaa !134
  %4 = load float, ptr %1, align 4, !tbaa !134
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !134
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !134
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !134
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !134
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !151 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 18}
!39 = !{!"bAnimVizSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44}
!40 = !{!"short", !36, i64 0}
!41 = !{!39, !40, i64 28}
!42 = !{!39, !40, i64 26}
!43 = !{!44, !45, i64 0}
!44 = !{!"bMotionPath", !45, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!45 = !{!"any pointer", !36, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!44, !35, i64 8}
!48 = !{!49, !45, i64 288}
!49 = !{!"Object", !50, i64 0, !45, i64 120, !45, i64 128, !40, i64 136, !40, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !36, i64 152, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !39, i64 312, !45, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !35, i64 432, !35, i64 436, !45, i64 440, !45, i64 448, !35, i64 456, !35, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !52, i64 616, !52, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !35, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !35, i64 968, !35, i64 972, !35, i64 976, !35, i64 980, !35, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !52, i64 1048, !52, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !52, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !35, i64 1144, !35, i64 1148, !45, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !45, i64 1240, !45, i64 1248, !45, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !52, i64 1268, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !53, i64 1304, !53, i64 1312, !35, i64 1320, !35, i64 1324, !51, i64 1328, !51, i64 1344, !45, i64 1360, !45, i64 1368, !45, i64 1376, !36, i64 1384, !45, i64 1392, !51, i64 1400, !45, i64 1416}
!50 = !{!"ID", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !36, i64 32, !40, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !45, i64 112}
!51 = !{!"ListBase", !45, i64 0, !45, i64 8}
!52 = !{!"float", !36, i64 0}
!53 = !{!"long", !36, i64 0}
!54 = !{!39, !35, i64 32}
!55 = !{!39, !35, i64 36}
!56 = !{!44, !35, i64 12}
!57 = !{!44, !35, i64 16}
!58 = !{!39, !40, i64 30}
!59 = !{!44, !35, i64 20}
!60 = !{!49, !40, i64 334}
!61 = !{!49, !45, i64 360}
!62 = !{!63, !45, i64 16}
!63 = !{!"MPathTarget", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32}
!64 = !{!63, !45, i64 24}
!65 = !{!66, !40, i64 126}
!66 = !{!"bPose", !51, i64 0, !45, i64 16, !40, i64 24, !40, i64 26, !35, i64 28, !35, i64 32, !52, i64 36, !36, i64 40, !36, i64 52, !51, i64 64, !35, i64 80, !35, i64 84, !45, i64 88, !45, i64 96, !39, i64 104, !36, i64 152}
!67 = !{!49, !45, i64 296}
!68 = !{!69, !45, i64 120}
!69 = !{!"bPoseChannel", !45, i64 0, !45, i64 8, !45, i64 16, !51, i64 24, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !45, i64 120, !45, i64 128, !45, i64 136, !51, i64 144, !51, i64 160, !45, i64 176, !45, i64 184, !45, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !52, i64 264, !40, i64 268, !40, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !52, i64 524, !52, i64 528, !52, i64 532, !45, i64 536}
!70 = !{!71, !35, i64 216}
!71 = !{!"bArmature", !50, i64 0, !45, i64 120, !51, i64 128, !51, i64 144, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !40, i64 208, !40, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252}
!72 = !{!73, !35, i64 320}
!73 = !{!"Bone", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !51, i64 32, !36, i64 48, !52, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !35, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !36, i64 308, !35, i64 320, !40, i64 324, !36, i64 326}
!74 = !{!69, !45, i64 176}
!75 = !{!63, !45, i64 32}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!51, !45, i64 0}
!79 = !{!80, !35, i64 680}
!80 = !{!"Scene", !50, i64 0, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !51, i64 152, !45, i64 168, !45, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !35, i64 232, !35, i64 236, !35, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !81, i64 280, !90, i64 4264, !51, i64 4296, !51, i64 4312, !45, i64 4328, !45, i64 4336, !45, i64 4344, !45, i64 4352, !45, i64 4360, !45, i64 4368, !40, i64 4376, !40, i64 4378, !35, i64 4380, !51, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !45, i64 4608, !96, i64 4616, !45, i64 4640, !53, i64 4648, !53, i64 4656, !83, i64 4664, !84, i64 4824, !97, i64 4888, !45, i64 4952}
!81 = !{!"RenderData", !82, i64 0, !45, i64 248, !45, i64 256, !85, i64 264, !86, i64 328, !35, i64 400, !35, i64 404, !35, i64 408, !52, i64 412, !35, i64 416, !35, i64 420, !35, i64 424, !35, i64 428, !40, i64 432, !40, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !35, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !35, i64 484, !35, i64 488, !40, i64 492, !40, i64 494, !35, i64 496, !35, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !35, i64 516, !35, i64 520, !35, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !87, i64 544, !87, i64 560, !88, i64 576, !51, i64 592, !40, i64 608, !40, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !35, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !52, i64 660, !52, i64 664, !40, i64 668, !40, i64 670, !52, i64 672, !52, i64 676, !36, i64 680, !35, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !35, i64 2520, !40, i64 2524, !40, i64 2526, !52, i64 2528, !52, i64 2532, !40, i64 2536, !40, i64 2538, !52, i64 2540, !40, i64 2544, !40, i64 2546, !35, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !52, i64 2560, !52, i64 2564, !45, i64 2568, !35, i64 2576, !52, i64 2580, !36, i64 2584, !89, i64 2616, !35, i64 3976, !35, i64 3980}
!82 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !52, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 72, !52, i64 136, !52, i64 140, !45, i64 144, !45, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!85 = !{!"QuicktimeCodecSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !40, i64 48, !40, i64 50, !35, i64 52, !35, i64 56, !35, i64 60}
!86 = !{!"FFMpegCodecData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !52, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !45, i64 64}
!87 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!88 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!89 = !{!"BakeData", !82, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !52, i64 1280, !52, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!90 = !{!"AudioData", !35, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !35, i64 16, !40, i64 20, !40, i64 22, !52, i64 24, !52, i64 28}
!91 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!92 = !{!"GameData", !91, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !93, i64 40, !40, i64 64, !40, i64 66, !52, i64 68, !94, i64 72, !52, i64 128, !52, i64 132, !35, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!93 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !52, i64 8, !52, i64 12, !45, i64 16}
!94 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !35, i64 40, !52, i64 44, !52, i64 48, !40, i64 52, !40, i64 54}
!95 = !{!"UnitSettings", !52, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!96 = !{!"PhysicsSettings", !36, i64 0, !35, i64 12, !35, i64 16, !35, i64 20}
!97 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!98 = !{!63, !45, i64 0}
!99 = distinct !{!99, !77}
!100 = distinct !{!100, !77}
!101 = !{!39, !40, i64 22}
!102 = distinct !{!102, !77}
!103 = !{!"anim.c:motionpaths_calc_optimise_depsgraph"}
!104 = !{!105, !45, i64 32}
!105 = !{!"Base", !45, i64 0, !45, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !40, i64 28, !40, i64 30, !45, i64 32}
!106 = !{!49, !40, i64 948}
!107 = distinct !{!107, !77}
!108 = !{!80, !45, i64 152}
!109 = !{!105, !45, i64 0}
!110 = distinct !{!110, !77}
!111 = distinct !{!111, !77}
!112 = !{!113, !45, i64 0}
!113 = !{!"Global", !45, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !51, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !35, i64 2096, !35, i64 2100, !36, i64 2104, !35, i64 2108, !35, i64 2112, !36, i64 2116}
!114 = !{!"anim.c:motionpaths_calc_update_scene"}
!115 = !{!116, !45, i64 1888}
!116 = !{!"Main", !45, i64 0, !45, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !53, i64 1048, !36, i64 1056, !40, i64 1072, !45, i64 1080, !51, i64 1088, !51, i64 1104, !51, i64 1120, !51, i64 1136, !51, i64 1152, !51, i64 1168, !51, i64 1184, !51, i64 1200, !51, i64 1216, !51, i64 1232, !51, i64 1248, !51, i64 1264, !51, i64 1280, !51, i64 1296, !51, i64 1312, !51, i64 1328, !51, i64 1344, !51, i64 1360, !51, i64 1376, !51, i64 1392, !51, i64 1408, !51, i64 1424, !51, i64 1440, !51, i64 1456, !51, i64 1472, !51, i64 1488, !51, i64 1504, !51, i64 1520, !51, i64 1536, !51, i64 1552, !51, i64 1568, !51, i64 1584, !51, i64 1600, !51, i64 1616, !36, i64 1632, !45, i64 1888, !45, i64 1896}
!117 = !{!80, !35, i64 232}
!118 = distinct !{!118, !77}
!119 = distinct !{!119, !77}
!120 = !{!"anim.c:motionpaths_calc_bake_targets"}
!121 = distinct !{!121, !77}
!122 = !{!123, !45, i64 0}
!123 = !{!"Path", !45, i64 0, !35, i64 8, !52, i64 12}
!124 = !{!49, !40, i64 136}
!125 = !{!49, !45, i64 1280}
!126 = !{!127, !45, i64 48}
!127 = !{!"CurveCache", !51, i64 0, !51, i64 16, !51, i64 32, !45, i64 48}
!128 = !{!127, !45, i64 16}
!129 = !{!123, !35, i64 8}
!130 = !{!131, !40, i64 36}
!131 = !{!"Nurb", !45, i64 0, !45, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !35, i64 24, !35, i64 28, !36, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !40, i64 80, !40, i64 82, !35, i64 84}
!132 = !{!131, !40, i64 44}
!133 = !{!131, !35, i64 24}
!134 = !{!52, !52, i64 0}
!135 = distinct !{!135, !77}
!136 = !{!123, !52, i64 12}
!137 = distinct !{!137, !77}
!138 = !{!139, !52, i64 12}
!139 = !{!"BevPoint", !36, i64 0, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !36, i64 36, !36, i64 48, !36, i64 60, !40, i64 76, !40, i64 78}
!140 = distinct !{!140, !77}
!141 = !{!"anim.c:sub_v3_v3v3"}
!142 = !{!"anim.c:len_v3"}
!143 = !{!131, !40, i64 16}
!144 = !{!145, !52, i64 32}
!145 = !{!"PathPoint", !36, i64 0, !36, i64 16, !52, i64 32, !52, i64 36}
!146 = !{!145, !52, i64 36}
!147 = !{!"anim.c:interval_test"}
!148 = !{!"anim.c:negate_v3"}
!149 = !{!"anim.c:copy_v3_v3"}
!150 = !{!"anim.c:dot_v3v3"}
!151 = !{!"anim.c:mod_i"}

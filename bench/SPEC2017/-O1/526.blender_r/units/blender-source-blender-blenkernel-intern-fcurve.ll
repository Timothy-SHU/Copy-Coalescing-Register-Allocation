; ModuleID = 'blender/source/blender/blenkernel/intern/fcurve.c'
source_filename = "blender/source/blender/blenkernel/intern/fcurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DriverVarTypeInfo = type { ptr, i32, [8 x ptr], [8 x i16] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_FunctionGenerator = type { float, float, float, float, i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.list_find_data_fcurves = private unnamed_addr constant [23 x i8] c"list_find_data_fcurves\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"add_to_cfra_elem\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"FPoint Samples\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DriverVar\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\09round = %d: start = %d, end = %d, arraylen = %d\0A\00", align 1
@dvar_types = internal unnamed_addr constant [4 x %struct.DriverVarTypeInfo] [%struct.DriverVarTypeInfo { ptr @dvar_eval_singleProp, i32 1, [8 x ptr] [ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] zeroinitializer }, %struct.DriverVarTypeInfo { ptr @dvar_eval_rotDiff, i32 2, [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %struct.DriverVarTypeInfo { ptr @dvar_eval_locDiff, i32 2, [8 x ptr] [ptr @.str.13, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %struct.DriverVarTypeInfo { ptr @dvar_eval_transChan, i32 1, [8 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Bone 1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Bone 2\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Object/Bone 1\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Object/Bone 2\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Object/Bone\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"Error: driver has an invalid target to use (path = %s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"Driver Evaluation Error: array index is out of bounds for %s -> %s (%d)\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"Driver Evaluation Error: cannot resolve target for %s -> %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"LocDiff DVar: not enough valid targets (n = %d) (a = %p, b = %p)\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"eval fcurve '%s' - %f => %d/%d, %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"    ERROR: findzero() failed at %f with %f %f %f %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"   ERROR: failed eval - p=%f b=%f, t=%f (%f)\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Error: binarysearch_bezt_index() was taking too long\00", align 1
@str.26 = private unnamed_addr constant [61 x i8] c"Warning: binarysearch_bezt_index() encountered invalid array\00", align 1
@str.27 = private unnamed_addr constant [76 x i8] c"F-Curve calc bounds didn't find anything, so assuming minimum bounds of 1.0\00", align 1
@str.28 = private unnamed_addr constant [65 x i8] c"Error: Frame range for Sampled F-Curve creation is inappropriate\00", align 1
@str.29 = private unnamed_addr constant [49 x i8] c"Error: No F-Curve with F-Curve Modifiers to Bake\00", align 1
@str.30 = private unnamed_addr constant [92 x i8] c"Driver Evaluation Error: Rotational difference failed - second target not valid PoseChannel\00", align 1
@str.31 = private unnamed_addr constant [91 x i8] c"Driver Evaluation Error: Rotational difference failed - first target not valid PoseChannel\00", align 1
@str.32 = private unnamed_addr constant [80 x i8] c"Driver Evaluation Error: Rotational difference failed - first 2 targets invalid\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @free_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %8(ptr noundef nonnull %5) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %14(ptr noundef nonnull %11) #18
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %20(ptr noundef nonnull %17) #18
  br label %21

21:                                               ; preds = %15, %19
  %22 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %25, %44
  %29 = phi ptr [ %30, %44 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.DriverVar, ptr %29, i64 0, i32 3
  br label %32

32:                                               ; preds = %40, %28
  %33 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %34 = phi ptr [ %31, %28 ], [ %42, %40 ]
  %35 = getelementptr inbounds %struct.DriverTarget, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %39(ptr noundef nonnull %36) #18
  br label %40

40:                                               ; preds = %38, %32
  %41 = add nuw nsw i32 %33, 1
  %42 = getelementptr inbounds %struct.DriverTarget, ptr %34, i64 1
  %43 = icmp eq i32 %41, 8
  br i1 %43, label %44, label %32, !llvm.loop !53

44:                                               ; preds = %40
  tail call void @BLI_freelinkN(ptr noundef nonnull %23, ptr noundef nonnull %29) #18
  %45 = icmp eq ptr %30, null
  br i1 %45, label %46, label %28, !llvm.loop !56

46:                                               ; preds = %44, %25
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %47(ptr noundef nonnull %23) #18
  store ptr null, ptr %22, align 8, !tbaa !46
  br label %48

48:                                               ; preds = %21, %46
  %49 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  tail call void @free_fmodifiers(ptr noundef nonnull %49) #18
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %50(ptr noundef nonnull %0) #18
  br label %51

51:                                               ; preds = %1, %48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fcurve_free_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7, %26
  %11 = phi ptr [ %12, %26 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.DriverVar, ptr %11, i64 0, i32 3
  br label %14

14:                                               ; preds = %10, %22
  %15 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %16 = phi ptr [ %13, %10 ], [ %24, %22 ]
  %17 = getelementptr inbounds %struct.DriverTarget, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %21(ptr noundef nonnull %18) #18
  br label %22

22:                                               ; preds = %20, %14
  %23 = add nuw nsw i32 %15, 1
  %24 = getelementptr inbounds %struct.DriverTarget, ptr %16, i64 1
  %25 = icmp eq i32 %23, 8
  br i1 %25, label %26, label %14, !llvm.loop !53

26:                                               ; preds = %22
  tail call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %11) #18
  %27 = icmp eq ptr %12, null
  br i1 %27, label %28, label %10, !llvm.loop !56

28:                                               ; preds = %26, %7
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %29(ptr noundef nonnull %5) #18
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %1, %3, %28
  ret void
}

declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_fcurves(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  tail call void @free_fcurve(ptr noundef nonnull %7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !59

10:                                               ; preds = %6, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copy_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %5 = tail call ptr %4(ptr noundef nonnull %0) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr %6(ptr noundef %8) #18
  store ptr %9, ptr %7, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = tail call ptr %10(ptr noundef %12) #18
  store ptr %13, ptr %11, align 8, !tbaa !44
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call ptr %14(ptr noundef %16) #18
  store ptr %17, ptr %15, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %23 = tail call ptr %22(ptr noundef nonnull %19) #18
  %24 = getelementptr inbounds %struct.ChannelDriver, ptr %23, i64 0, i32 2
  store ptr null, ptr %24, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %23, ptr noundef nonnull %19) #18
  %25 = load ptr, ptr %23, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %30

27:                                               ; preds = %42
  %28 = load ptr, ptr %31, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30, !llvm.loop !61

30:                                               ; preds = %21, %27
  %31 = phi ptr [ %28, %27 ], [ %25, %21 ]
  %32 = getelementptr inbounds %struct.DriverVar, ptr %31, i64 0, i32 3
  br label %33

33:                                               ; preds = %42, %30
  %34 = phi i32 [ 0, %30 ], [ %43, %42 ]
  %35 = phi ptr [ %32, %30 ], [ %44, %42 ]
  %36 = getelementptr inbounds %struct.DriverTarget, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %41 = tail call ptr %40(ptr noundef nonnull %37) #18
  store ptr %41, ptr %36, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %39, %33
  %43 = add nuw nsw i32 %34, 1
  %44 = getelementptr inbounds %struct.DriverTarget, ptr %35, i64 1
  %45 = icmp eq i32 %43, 8
  br i1 %45, label %27, label %33, !llvm.loop !62

46:                                               ; preds = %27, %3, %21
  %47 = phi ptr [ null, %3 ], [ %23, %21 ], [ %23, %27 ]
  store ptr %47, ptr %18, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 4
  %49 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  tail call void @copy_fmodifiers(ptr noundef nonnull %48, ptr noundef nonnull %49) #18
  br label %50

50:                                               ; preds = %1, %46
  %51 = phi ptr [ %5, %46 ], [ null, %1 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @fcurve_copy_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %5 = tail call ptr %4(ptr noundef nonnull %0) #18
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %0) #18
  %7 = load ptr, ptr %5, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %12

9:                                                ; preds = %24
  %10 = load ptr, ptr %13, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !llvm.loop !61

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.DriverVar, ptr %13, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %24
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %17 = phi ptr [ %14, %12 ], [ %26, %24 ]
  %18 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %23 = tail call ptr %22(ptr noundef nonnull %19) #18
  store ptr %23, ptr %18, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %15, %21
  %25 = add nuw nsw i32 %16, 1
  %26 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 1
  %27 = icmp eq i32 %25, 8
  br i1 %27, label %9, label %15, !llvm.loop !62

28:                                               ; preds = %9, %3, %1
  %29 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %9 ]
  ret ptr %29
}

declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @copy_fcurves(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = tail call ptr @copy_fcurve(ptr noundef nonnull %10)
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %11) #18
  %12 = load ptr, ptr %10, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !63

14:                                               ; preds = %9, %6, %2
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %9 = icmp ne ptr %5, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 0, ptr %5, align 1, !tbaa !64
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp eq ptr %8, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %8, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16

16:                                               ; preds = %13
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %7) #18
  %17 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %3) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %16
  %20 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %7, ptr noundef nonnull %17) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %83, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = icmp eq ptr %27, null
  %29 = icmp slt i32 %4, 0
  %30 = or i1 %29, %28
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %26, align 8, !tbaa !43
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %31, %46
  %35 = phi ptr [ %47, %46 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.FCurve, ptr %35, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %20) #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.FCurve, ptr %35, i64 0, i32 11
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = icmp eq i32 %44, %4
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %39, %34
  %47 = load ptr, ptr %35, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %34, !llvm.loop !71

49:                                               ; preds = %46, %42, %31, %25, %22
  %50 = phi ptr [ null, %25 ], [ null, %22 ], [ null, %31 ], [ %35, %42 ], [ null, %46 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = icmp eq ptr %54, null
  br i1 %55, label %80, label %56

56:                                               ; preds = %52
  %57 = icmp slt i32 %4, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %53, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %58, %73
  %62 = phi ptr [ %74, %73 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.FCurve, ptr %62, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %20) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.FCurve, ptr %62, i64 0, i32 11
  %71 = load i32, ptr %70, align 4, !tbaa !70
  %72 = icmp eq i32 %71, %4
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %66, %61
  %74 = load ptr, ptr %62, align 8, !tbaa !43
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %61, !llvm.loop !71

76:                                               ; preds = %69, %73, %58, %56
  %77 = phi i1 [ false, %56 ], [ false, %58 ], [ false, %73 ], [ true, %69 ]
  %78 = and i1 %9, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i8 1, ptr %5, align 1, !tbaa !64
  br label %80

80:                                               ; preds = %76, %79, %52, %49
  %81 = phi ptr [ null, %52 ], [ %50, %49 ], [ null, %79 ], [ null, %76 ]
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %82(ptr noundef nonnull %20) #18
  br label %83

83:                                               ; preds = %16, %80, %19, %11, %13
  %84 = phi ptr [ null, %13 ], [ null, %11 ], [ %81, %80 ], [ null, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret ptr %84
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @list_find_fcurve(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %9, %24
  %13 = phi ptr [ %25, %24 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !70
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %27, label %24

24:                                               ; preds = %12, %17, %20
  %25 = load ptr, ptr %13, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !71

27:                                               ; preds = %20, %24, %9, %3
  %28 = phi ptr [ null, %3 ], [ null, %9 ], [ null, %24 ], [ %13, %20 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @iter_step_fcurve(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %15, %14 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6, %11
  %15 = load ptr, ptr %7, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !73

17:                                               ; preds = %14, %11, %2
  %18 = phi ptr [ null, %2 ], [ %7, %11 ], [ null, %14 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @list_find_data_fcurves(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %3, null
  %11 = or i1 %9, %10
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %3, align 1, !tbaa !64
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %44
  %22 = phi ptr [ %46, %44 ], [ %19, %18 ]
  %23 = phi i32 [ %45, %44 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %2) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %25, ptr noundef nonnull %2) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %3) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @__func__.list_find_data_fcurves) #18
  %39 = getelementptr inbounds %struct.LinkData, ptr %38, i64 0, i32 2
  store ptr %22, ptr %39, align 8, !tbaa !74
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %38) #18
  %40 = add nsw i32 %23, 1
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i32 [ %40, %36 ], [ %23, %33 ]
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %43(ptr noundef nonnull %31) #18
  br label %44

44:                                               ; preds = %30, %41, %21, %27
  %45 = phi i32 [ %23, %27 ], [ %23, %21 ], [ %42, %41 ], [ %23, %30 ]
  %46 = load ptr, ptr %22, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %21, !llvm.loop !76

48:                                               ; preds = %44, %18, %12, %15, %4
  %49 = phi i32 [ 0, %4 ], [ 0, %15 ], [ 0, %12 ], [ 0, %18 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @rna_get_fcurve(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @rna_get_fcurve_context_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rna_get_fcurve_context_ui(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !77
  store i8 0, ptr %5, align 1, !tbaa !64
  %8 = icmp ne ptr %2, null
  %9 = load ptr, ptr %7, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %145

12:                                               ; preds = %6
  %13 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %7, ptr noundef nonnull %2) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %145, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa !78
  %17 = call ptr @BKE_animdata_from_id(ptr noundef %16) #18
  %18 = icmp ne ptr %0, null
  %19 = select i1 %18, i32 2, i32 1
  %20 = icmp eq ptr %17, null
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = call ptr @BKE_animdata_driver_path_hack(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef null) #18
  %24 = load ptr, ptr %7, align 8, !tbaa !78
  %25 = call ptr @BKE_animdata_from_id(ptr noundef %24) #18
  %26 = add nsw i32 %19, -1
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi ptr [ %25, %22 ], [ %17, %15 ]
  %29 = phi i32 [ %26, %22 ], [ %19, %15 ]
  %30 = phi ptr [ %23, %22 ], [ null, %15 ]
  %31 = icmp eq ptr %28, null
  br i1 %31, label %139, label %32

32:                                               ; preds = %27
  %33 = icmp slt i32 %3, 0
  %34 = icmp slt i32 %3, 0
  %35 = icmp ne ptr %4, null
  br label %36

36:                                               ; preds = %32, %134
  %37 = phi ptr [ null, %32 ], [ %137, %134 ]
  %38 = phi ptr [ %30, %32 ], [ %136, %134 ]
  %39 = phi i32 [ %29, %32 ], [ %41, %134 ]
  %40 = phi ptr [ %28, %32 ], [ %135, %134 ]
  %41 = add nsw i32 %39, -1
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %139, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %40, align 8, !tbaa !65
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bAction, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = getelementptr inbounds %struct.AnimData, ptr %40, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %134, label %54

54:                                               ; preds = %50, %46
  %55 = icmp eq i32 %41, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %7, ptr noundef nonnull %2) #18
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %38, %54 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %134, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %40, align 8, !tbaa !65
  %63 = icmp eq ptr %62, null
  br i1 %63, label %88, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bAction, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = icmp eq ptr %66, null
  %68 = or i1 %67, %33
  %69 = select i1 %67, ptr %37, ptr null
  br i1 %68, label %88, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %65, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70, %85
  %74 = phi ptr [ %86, %85 ], [ %71, %70 ]
  %75 = getelementptr inbounds %struct.FCurve, ptr %74, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %59) #19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.FCurve, ptr %74, i64 0, i32 11
  %83 = load i32, ptr %82, align 4, !tbaa !70
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %78, %73
  %86 = load ptr, ptr %74, align 8, !tbaa !43
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %73, !llvm.loop !71

88:                                               ; preds = %85, %81, %70, %64, %61
  %89 = phi ptr [ %69, %64 ], [ %37, %61 ], [ null, %70 ], [ %74, %81 ], [ null, %85 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.AnimData, ptr %40, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !72
  %94 = icmp eq ptr %93, null
  br i1 %94, label %118, label %95

95:                                               ; preds = %91
  br i1 %34, label %114, label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %92, align 8, !tbaa !43
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %96, %111
  %100 = phi ptr [ %112, %111 ], [ %97, %96 ]
  %101 = getelementptr inbounds %struct.FCurve, ptr %100, i64 0, i32 12
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %102, ptr noundef nonnull dereferenceable(1) %59) #19
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.FCurve, ptr %100, i64 0, i32 11
  %109 = load i32, ptr %108, align 4, !tbaa !70
  %110 = icmp eq i32 %109, %3
  br i1 %110, label %114, label %111

111:                                              ; preds = %107, %104, %99
  %112 = load ptr, ptr %100, align 8, !tbaa !43
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %99, !llvm.loop !71

114:                                              ; preds = %107, %111, %96, %95
  %115 = phi ptr [ null, %95 ], [ null, %96 ], [ null, %111 ], [ %100, %107 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i8 1, ptr %5, align 1, !tbaa !64
  br label %118

118:                                              ; preds = %114, %117, %91, %88
  %119 = phi ptr [ %89, %88 ], [ %115, %117 ], [ null, %114 ], [ null, %91 ]
  %120 = icmp ne ptr %119, null
  %121 = and i1 %35, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load ptr, ptr %40, align 8, !tbaa !65
  store ptr %123, ptr %4, align 8, !tbaa !43
  br label %139

124:                                              ; preds = %118
  br i1 %55, label %134, label %125

125:                                              ; preds = %124
  %126 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %59) #18
  %127 = icmp eq ptr %126, null
  %128 = icmp eq ptr %126, %59
  %129 = or i1 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %131(ptr noundef nonnull %59) #18
  %132 = load ptr, ptr %7, align 8, !tbaa !78
  %133 = call ptr @BKE_animdata_from_id(ptr noundef %132) #18
  br label %134

134:                                              ; preds = %130, %125, %58, %124, %50
  %135 = phi ptr [ %40, %124 ], [ %40, %58 ], [ %40, %50 ], [ %133, %130 ], [ null, %125 ]
  %136 = phi ptr [ %59, %124 ], [ null, %58 ], [ %38, %50 ], [ %126, %130 ], [ %59, %125 ]
  %137 = phi ptr [ %119, %124 ], [ %37, %58 ], [ %37, %50 ], [ %119, %130 ], [ %119, %125 ]
  %138 = icmp eq ptr %135, null
  br i1 %138, label %139, label %36, !llvm.loop !81

139:                                              ; preds = %36, %134, %27, %122
  %140 = phi ptr [ %59, %122 ], [ %30, %27 ], [ %136, %134 ], [ %38, %36 ]
  %141 = phi ptr [ %119, %122 ], [ null, %27 ], [ %137, %134 ], [ %37, %36 ]
  %142 = icmp eq ptr %140, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %144(ptr noundef nonnull %140) #18
  br label %145

145:                                              ; preds = %139, %143, %12, %6
  %146 = phi ptr [ null, %12 ], [ null, %6 ], [ %141, %143 ], [ %141, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret ptr %146
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_animdata_driver_path_hack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @binarysearch_bezt_index(ptr noundef %0, float noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = tail call fastcc i32 @binarysearch_bezt_index_ex(ptr noundef %0, float noundef %1, i32 noundef %2, float noundef 0x3F847AE140000000, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @binarysearch_bezt_index_ex(ptr noundef readonly %0, float noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #6 {
  %6 = shl nsw i32 %2, 1
  store i8 0, ptr %4, align 1, !tbaa !64
  %7 = icmp slt i32 %2, 1
  %8 = icmp eq ptr %0, null
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %88

12:                                               ; preds = %5
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = fcmp olt float %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = fsub float %1, %14
  %18 = fcmp ugt float %17, %3
  br i1 %18, label %22, label %36

19:                                               ; preds = %12
  %20 = fsub float %14, %1
  %21 = fcmp ugt float %20, %3
  br i1 %21, label %22, label %36

22:                                               ; preds = %19, %16
  %23 = fcmp ogt float %14, %1
  br i1 %23, label %38, label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %2, -1
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 %26, i32 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !82
  %29 = fcmp uge float %28, %1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = fsub float %1, %28
  %32 = fcmp ugt float %31, %3
  br i1 %32, label %38, label %36

33:                                               ; preds = %24
  %34 = fsub float %28, %1
  %35 = fcmp ugt float %34, %3
  br i1 %35, label %38, label %36

36:                                               ; preds = %30, %33, %16, %19
  %37 = phi i32 [ 0, %19 ], [ 0, %16 ], [ %25, %33 ], [ %25, %30 ]
  store i8 1, ptr %4, align 1, !tbaa !64
  br label %38

38:                                               ; preds = %36, %30, %33, %22
  %39 = phi i1 [ false, %22 ], [ %29, %33 ], [ %29, %30 ], [ false, %36 ]
  %40 = phi i32 [ 0, %22 ], [ %2, %33 ], [ %2, %30 ], [ %37, %36 ]
  br i1 %39, label %41, label %88

41:                                               ; preds = %38
  %42 = icmp sgt i32 %2, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %41, %74
  %44 = phi i32 [ %73, %74 ], [ %40, %41 ]
  %45 = phi i32 [ %72, %74 ], [ 0, %41 ]
  %46 = phi i32 [ %70, %74 ], [ %2, %41 ]
  %47 = phi i32 [ %75, %74 ], [ 0, %41 ]
  %48 = sub nsw i32 %46, %45
  %49 = sdiv i32 %48, 2
  %50 = add nsw i32 %49, %45
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 %51, i32 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !82
  %54 = fcmp olt float %53, %1
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = fsub float %1, %53
  %57 = fcmp ugt float %56, %3
  br i1 %57, label %62, label %61

58:                                               ; preds = %43
  %59 = fsub float %53, %1
  %60 = fcmp ugt float %59, %3
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %55
  store i8 1, ptr %4, align 1, !tbaa !64
  br label %69

62:                                               ; preds = %58, %55
  br i1 %54, label %63, label %65

63:                                               ; preds = %62
  %64 = add nsw i32 %50, 1
  br label %69

65:                                               ; preds = %62
  %66 = fcmp ogt float %53, %1
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = add nsw i32 %50, -1
  br label %69

69:                                               ; preds = %63, %67, %65, %61
  %70 = phi i32 [ %46, %61 ], [ %46, %63 ], [ %68, %67 ], [ %46, %65 ]
  %71 = phi i1 [ false, %61 ], [ true, %63 ], [ true, %67 ], [ true, %65 ]
  %72 = phi i32 [ %45, %61 ], [ %64, %63 ], [ %45, %67 ], [ %45, %65 ]
  %73 = phi i32 [ %50, %61 ], [ %44, %63 ], [ %44, %67 ], [ %44, %65 ]
  br i1 %71, label %74, label %88

74:                                               ; preds = %69
  %75 = add nuw nsw i32 %47, 1
  %76 = icmp sle i32 %72, %70
  %77 = icmp slt i32 %75, %6
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %43, label %79, !llvm.loop !83

79:                                               ; preds = %74, %41
  %80 = phi i32 [ 0, %41 ], [ %75, %74 ]
  %81 = phi i32 [ %2, %41 ], [ %70, %74 ]
  %82 = phi i32 [ 0, %41 ], [ %72, %74 ]
  %83 = add nsw i32 %6, -1
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %80, i32 noundef %82, i32 noundef %81, i32 noundef %2)
  br label %88

88:                                               ; preds = %69, %79, %85, %38, %10
  %89 = phi i32 [ 0, %10 ], [ %40, %38 ], [ %82, %85 ], [ %82, %79 ], [ %73, %69 ]
  ret i32 %89
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @calc_fcurve_bounds(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #6 {
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %220, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %180, label %15

15:                                               ; preds = %11
  %16 = icmp ne ptr %1, null
  %17 = icmp ne ptr %2, null
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %15
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %70, label %21

21:                                               ; preds = %19, %38
  %22 = phi i32 [ %40, %38 ], [ 0, %19 ]
  %23 = phi ptr [ %39, %38 ], [ %13, %19 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !85
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !87
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !88
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 1
  %40 = add nuw i32 %22, 1
  %41 = icmp eq i32 %40, %9
  br i1 %41, label %42, label %21, !llvm.loop !89

42:                                               ; preds = %38, %33, %28, %21
  %43 = phi ptr [ null, %38 ], [ %23, %33 ], [ %23, %28 ], [ %23, %21 ]
  %44 = phi i8 [ 0, %38 ], [ 1, %33 ], [ 1, %28 ], [ 1, %21 ]
  %45 = add i32 %9, -1
  %46 = zext i32 %45 to i64
  %47 = mul nuw nsw i64 %46, 72
  %48 = getelementptr inbounds i8, ptr %13, i64 %47
  br label %49

49:                                               ; preds = %66, %42
  %50 = phi i32 [ %68, %66 ], [ 0, %42 ]
  %51 = phi ptr [ %67, %66 ], [ %48, %42 ]
  %52 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !85
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !87
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !88
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 -1
  %68 = add nuw i32 %50, 1
  %69 = icmp eq i32 %68, %9
  br i1 %69, label %75, label %49, !llvm.loop !90

70:                                               ; preds = %19
  %71 = add i32 %9, -1
  %72 = zext i32 %71 to i64
  %73 = mul nuw nsw i64 %72, 72
  %74 = getelementptr inbounds i8, ptr %13, i64 %73
  br label %75

75:                                               ; preds = %66, %61, %56, %49, %70
  %76 = phi ptr [ %13, %70 ], [ %43, %49 ], [ %43, %56 ], [ %43, %61 ], [ %43, %66 ]
  %77 = phi ptr [ %74, %70 ], [ null, %66 ], [ %51, %61 ], [ %51, %56 ], [ %51, %49 ]
  %78 = phi i8 [ 1, %70 ], [ %44, %66 ], [ 1, %61 ], [ 1, %56 ], [ 1, %49 ]
  %79 = icmp eq ptr %76, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %75
  %81 = icmp eq i8 %6, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %80
  %83 = load float, ptr %76, align 4, !tbaa !82
  %84 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !82
  %86 = fcmp ogt float %83, 1.000000e+09
  %87 = select i1 %86, float 1.000000e+09, float %83
  %88 = fcmp olt float %87, %85
  %89 = select i1 %88, float %87, float %85
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %77, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !82
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %77, i64 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !82
  %94 = fcmp olt float %91, -1.000000e+09
  %95 = select i1 %94, float -1.000000e+09, float %91
  %96 = fcmp ogt float %95, %93
  %97 = select i1 %96, float %95, float %93
  br label %107

98:                                               ; preds = %80
  %99 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !82
  %101 = fcmp ogt float %100, 1.000000e+09
  %102 = select i1 %101, float 1.000000e+09, float %100
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %77, i64 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !82
  %105 = fcmp olt float %104, -1.000000e+09
  %106 = select i1 %105, float -1.000000e+09, float %104
  br label %107

107:                                              ; preds = %75, %98, %82, %15
  %108 = phi float [ %89, %82 ], [ %102, %98 ], [ 1.000000e+09, %75 ], [ 1.000000e+09, %15 ]
  %109 = phi float [ %97, %82 ], [ %106, %98 ], [ -1.000000e+09, %75 ], [ -1.000000e+09, %15 ]
  %110 = phi i8 [ %78, %82 ], [ %78, %98 ], [ %78, %75 ], [ 0, %15 ]
  %111 = icmp ne ptr %3, null
  %112 = icmp ne ptr %4, null
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %220

114:                                              ; preds = %107
  %115 = icmp eq i8 %5, 0
  %116 = icmp eq i8 %6, 0
  %117 = tail call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %118

118:                                              ; preds = %114, %173
  %119 = phi ptr [ null, %114 ], [ %120, %173 ]
  %120 = phi ptr [ %13, %114 ], [ %177, %173 ]
  %121 = phi i32 [ 0, %114 ], [ %178, %173 ]
  %122 = phi i8 [ %110, %114 ], [ %176, %173 ]
  %123 = phi float [ -1.000000e+09, %114 ], [ %175, %173 ]
  %124 = phi float [ 1.000000e+09, %114 ], [ %174, %173 ]
  br i1 %115, label %140, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 0, i32 8
  %127 = load i8, ptr %126, align 4, !tbaa !85
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 0, i32 7
  %132 = load i8, ptr %131, align 1, !tbaa !87
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 0, i32 9
  %137 = load i8, ptr %136, align 1, !tbaa !88
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %173, label %140

140:                                              ; preds = %135, %130, %125, %118
  %141 = getelementptr inbounds [3 x [3 x float]], ptr %120, i64 0, i64 1, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !82
  %143 = fcmp olt float %124, %142
  %144 = select i1 %143, float %124, float %142
  %145 = fcmp ogt float %123, %142
  %146 = select i1 %145, float %123, float %142
  br i1 %116, label %173, label %147

147:                                              ; preds = %140
  %148 = icmp eq ptr %119, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.BezTriple, ptr %119, i64 0, i32 4
  %151 = load i8, ptr %150, align 4, !tbaa !91
  %152 = icmp eq i8 %151, 2
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = getelementptr inbounds [3 x float], ptr %120, i64 0, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !82
  %156 = fcmp olt float %144, %155
  %157 = select i1 %156, float %144, float %155
  %158 = fcmp ogt float %146, %155
  %159 = select i1 %158, float %146, float %155
  br label %160

160:                                              ; preds = %153, %149, %147
  %161 = phi float [ %157, %153 ], [ %144, %149 ], [ %144, %147 ]
  %162 = phi float [ %159, %153 ], [ %146, %149 ], [ %146, %147 ]
  %163 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 0, i32 4
  %164 = load i8, ptr %163, align 4, !tbaa !91
  %165 = icmp eq i8 %164, 2
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = getelementptr inbounds [3 x [3 x float]], ptr %120, i64 0, i64 2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !82
  %169 = fcmp olt float %161, %168
  %170 = select i1 %169, float %161, float %168
  %171 = fcmp ogt float %162, %168
  %172 = select i1 %171, float %162, float %168
  br label %173

173:                                              ; preds = %140, %166, %160, %135
  %174 = phi float [ %124, %135 ], [ %170, %166 ], [ %161, %160 ], [ %144, %140 ]
  %175 = phi float [ %123, %135 ], [ %172, %166 ], [ %162, %160 ], [ %146, %140 ]
  %176 = phi i8 [ %122, %135 ], [ 1, %166 ], [ 1, %160 ], [ 1, %140 ]
  %177 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 1
  %178 = add nuw i32 %121, 1
  %179 = icmp eq i32 %178, %117
  br i1 %179, label %220, label %118, !llvm.loop !92

180:                                              ; preds = %11
  %181 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !44
  %183 = icmp eq ptr %182, null
  br i1 %183, label %220, label %184

184:                                              ; preds = %180
  %185 = icmp ne ptr %1, null
  %186 = icmp ne ptr %2, null
  %187 = or i1 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %184
  %189 = load float, ptr %182, align 4, !tbaa !82
  %190 = fcmp ogt float %189, 1.000000e+09
  %191 = select i1 %190, float 1.000000e+09, float %189
  %192 = add i32 %9, -1
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.FPoint, ptr %182, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !82
  %196 = fcmp olt float %195, -1.000000e+09
  %197 = select i1 %196, float -1.000000e+09, float %195
  br label %198

198:                                              ; preds = %184, %188
  %199 = phi float [ %191, %188 ], [ 1.000000e+09, %184 ]
  %200 = phi float [ %197, %188 ], [ -1.000000e+09, %184 ]
  %201 = icmp ne ptr %3, null
  %202 = icmp ne ptr %4, null
  %203 = or i1 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = tail call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %206

206:                                              ; preds = %204, %206
  %207 = phi ptr [ %217, %206 ], [ %182, %204 ]
  %208 = phi i32 [ %218, %206 ], [ 0, %204 ]
  %209 = phi float [ %216, %206 ], [ -1.000000e+09, %204 ]
  %210 = phi float [ %214, %206 ], [ 1.000000e+09, %204 ]
  %211 = getelementptr inbounds [2 x float], ptr %207, i64 0, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !82
  %213 = fcmp olt float %212, %210
  %214 = select i1 %213, float %212, float %210
  %215 = fcmp ogt float %212, %209
  %216 = select i1 %215, float %212, float %209
  %217 = getelementptr inbounds %struct.FPoint, ptr %207, i64 1
  %218 = add nuw i32 %208, 1
  %219 = icmp eq i32 %218, %205
  br i1 %219, label %220, label %206, !llvm.loop !93

220:                                              ; preds = %173, %206, %107, %198, %180, %7
  %221 = phi float [ %199, %198 ], [ 1.000000e+09, %180 ], [ 1.000000e+09, %7 ], [ %108, %107 ], [ %199, %206 ], [ %108, %173 ]
  %222 = phi float [ %200, %198 ], [ -1.000000e+09, %180 ], [ -1.000000e+09, %7 ], [ %109, %107 ], [ %200, %206 ], [ %109, %173 ]
  %223 = phi float [ 1.000000e+09, %198 ], [ 1.000000e+09, %180 ], [ 1.000000e+09, %7 ], [ 1.000000e+09, %107 ], [ %214, %206 ], [ %174, %173 ]
  %224 = phi float [ -1.000000e+09, %198 ], [ -1.000000e+09, %180 ], [ -1.000000e+09, %7 ], [ -1.000000e+09, %107 ], [ %216, %206 ], [ %175, %173 ]
  %225 = phi i8 [ 0, %198 ], [ 0, %180 ], [ 0, %7 ], [ %110, %107 ], [ 1, %206 ], [ %176, %173 ]
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %238, label %227

227:                                              ; preds = %220
  %228 = icmp eq ptr %1, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %227
  store float %221, ptr %1, align 4, !tbaa !82
  br label %230

230:                                              ; preds = %229, %227
  %231 = icmp eq ptr %2, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  store float %222, ptr %2, align 4, !tbaa !82
  br label %233

233:                                              ; preds = %232, %230
  %234 = icmp eq ptr %3, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %233
  store float %223, ptr %3, align 4, !tbaa !82
  br label %236

236:                                              ; preds = %235, %233
  %237 = icmp eq ptr %4, null
  br i1 %237, label %257, label %255

238:                                              ; preds = %220
  %239 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %244

244:                                              ; preds = %242, %238
  %245 = icmp eq ptr %1, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %244
  store float 0.000000e+00, ptr %1, align 4, !tbaa !82
  br label %247

247:                                              ; preds = %246, %244
  %248 = icmp eq ptr %2, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %247
  store float 1.000000e+00, ptr %2, align 4, !tbaa !82
  br label %250

250:                                              ; preds = %249, %247
  %251 = icmp eq ptr %3, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %250
  store float 0.000000e+00, ptr %3, align 4, !tbaa !82
  br label %253

253:                                              ; preds = %252, %250
  %254 = icmp eq ptr %4, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %253, %236
  %256 = phi float [ %224, %236 ], [ 1.000000e+00, %253 ]
  store float %256, ptr %4, align 4, !tbaa !82
  br label %257

257:                                              ; preds = %255, %253, %236
  ret i8 %225
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @calc_fcurve_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %95, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %81, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %13, %32
  %16 = phi i32 [ %34, %32 ], [ 0, %13 ]
  %17 = phi ptr [ %33, %32 ], [ %11, %13 ]
  %18 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 8
  %19 = load i8, ptr %18, align 4, !tbaa !85
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !87
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !88
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 1
  %34 = add nuw i32 %16, 1
  %35 = icmp eq i32 %34, %7
  br i1 %35, label %36, label %15, !llvm.loop !89

36:                                               ; preds = %32, %27, %22, %15
  %37 = phi ptr [ null, %32 ], [ %17, %27 ], [ %17, %22 ], [ %17, %15 ]
  %38 = add i32 %7, -1
  %39 = zext i32 %38 to i64
  %40 = mul nuw nsw i64 %39, 72
  %41 = getelementptr inbounds i8, ptr %11, i64 %40
  br label %42

42:                                               ; preds = %59, %36
  %43 = phi i32 [ %61, %59 ], [ 0, %36 ]
  %44 = phi ptr [ %60, %59 ], [ %41, %36 ]
  %45 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !85
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %51 = load i8, ptr %50, align 1, !tbaa !87
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !88
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 -1
  %61 = add nuw i32 %43, 1
  %62 = icmp eq i32 %61, %7
  br i1 %62, label %68, label %42, !llvm.loop !90

63:                                               ; preds = %13
  %64 = add i32 %7, -1
  %65 = zext i32 %64 to i64
  %66 = mul nuw nsw i64 %65, 72
  %67 = getelementptr inbounds i8, ptr %11, i64 %66
  br label %68

68:                                               ; preds = %59, %54, %49, %42, %63
  %69 = phi ptr [ %11, %63 ], [ %37, %42 ], [ %37, %49 ], [ %37, %54 ], [ %37, %59 ]
  %70 = phi ptr [ %67, %63 ], [ null, %59 ], [ %44, %54 ], [ %44, %49 ], [ %44, %42 ]
  %71 = icmp eq ptr %69, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %69, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !82
  %75 = fcmp ogt float %74, 1.000000e+09
  %76 = select i1 %75, float 1.000000e+09, float %74
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %70, i64 0, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !82
  %79 = fcmp olt float %78, -1.000000e+09
  %80 = select i1 %79, float -1.000000e+09, float %78
  br label %95

81:                                               ; preds = %9
  %82 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load float, ptr %83, align 4, !tbaa !82
  %87 = fcmp ogt float %86, 1.000000e+09
  %88 = select i1 %87, float 1.000000e+09, float %86
  %89 = add i32 %7, -1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.FPoint, ptr %83, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !82
  %93 = fcmp olt float %92, -1.000000e+09
  %94 = select i1 %93, float -1.000000e+09, float %92
  br label %95

95:                                               ; preds = %68, %72, %85, %81, %5
  %96 = phi float [ %88, %85 ], [ 1.000000e+09, %81 ], [ 1.000000e+09, %5 ], [ %76, %72 ], [ 1.000000e+09, %68 ]
  %97 = phi float [ %94, %85 ], [ -1.000000e+09, %81 ], [ -1.000000e+09, %5 ], [ %80, %72 ], [ -1.000000e+09, %68 ]
  %98 = phi i1 [ false, %85 ], [ true, %81 ], [ true, %5 ], [ false, %72 ], [ true, %68 ]
  %99 = phi i8 [ 1, %85 ], [ 0, %81 ], [ 0, %5 ], [ 1, %72 ], [ 0, %68 ]
  %100 = select i1 %98, float 0.000000e+00, float %96
  %101 = select i1 %98, float 0.000000e+00, float %97
  %102 = icmp ne i8 %4, 0
  %103 = fcmp oeq float %100, %101
  %104 = select i1 %102, i1 %103, i1 false
  %105 = fadd float %101, 1.000000e+00
  %106 = select i1 %104, float %105, float %101
  store float %100, ptr %1, align 4, !tbaa !82
  store float %106, ptr %2, align 4, !tbaa !82
  ret i8 %99
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @fcurve_are_keyframes_usable(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11, %39
  %16 = phi i1 [ %42, %39 ], [ %14, %11 ]
  %17 = phi ptr [ %41, %39 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !97
  %20 = and i16 %19, 9
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !99
  switch i16 %24, label %43 [
    i16 4, label %39
    i16 9, label %39
    i16 5, label %39
    i16 1, label %25
    i16 2, label %32
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.FMod_Generator, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !101
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !100
  %35 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !103
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32, %25, %22, %22, %22, %15
  %40 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %15, !llvm.loop !105

43:                                               ; preds = %22, %25, %32
  br i1 %16, label %44, label %45

44:                                               ; preds = %39, %11, %43, %7
  br label %45

45:                                               ; preds = %43, %3, %1, %44
  %46 = phi i8 [ 0, %43 ], [ 1, %44 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_fcurve_is_protected(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 8, !tbaa !106
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !108
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  br label %16

16:                                               ; preds = %6, %10, %1
  %17 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %15, %10 ]
  ret i8 %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @fcurve_is_keyframable(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %59, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11, %39
  %16 = phi i1 [ %42, %39 ], [ %14, %11 ]
  %17 = phi ptr [ %41, %39 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !97
  %20 = and i16 %19, 9
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !99
  switch i16 %24, label %43 [
    i16 4, label %39
    i16 9, label %39
    i16 5, label %39
    i16 1, label %25
    i16 2, label %32
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.FMod_Generator, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !101
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !100
  %35 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !103
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32, %25, %22, %22, %22, %15
  %40 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %15, !llvm.loop !105

43:                                               ; preds = %32, %25, %22
  br i1 %16, label %44, label %59

44:                                               ; preds = %39, %43, %11, %7
  %45 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !106
  %47 = and i16 %46, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !107
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bActionGroup, ptr %51, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !108
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %43, %1, %3, %53, %49, %44
  %60 = phi i8 [ 0, %44 ], [ 1, %49 ], [ %58, %53 ], [ 0, %3 ], [ 0, %1 ], [ 0, %43 ]
  ret i8 %60
}

; Function Attrs: nounwind uwtable
define dso_local void @bezt_add_to_cfra_elem(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br label %4

4:                                                ; preds = %19, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %19 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CfraElem, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !111
  %11 = load float, ptr %3, align 4, !tbaa !82
  %12 = fcmp oeq float %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !85
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %33

19:                                               ; preds = %8
  %20 = fcmp ogt float %10, %11
  br i1 %20, label %21, label %4, !llvm.loop !113

21:                                               ; preds = %19, %4
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %23 = tail call ptr %22(i64 noundef 24, ptr noundef nonnull @.str.1) #18
  br i1 %7, label %25, label %24

24:                                               ; preds = %21
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %23) #18
  br label %26

25:                                               ; preds = %21
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %23) #18
  br label %26

26:                                               ; preds = %25, %24
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !82
  %29 = getelementptr inbounds %struct.CfraElem, ptr %23, i64 0, i32 2
  store float %28, ptr %29, align 8, !tbaa !111
  %30 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %31 = load i8, ptr %30, align 4, !tbaa !85
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %13, %26
  %34 = phi ptr [ %23, %26 ], [ %6, %13 ]
  %35 = phi i32 [ %32, %26 ], [ %16, %13 ]
  %36 = getelementptr inbounds %struct.CfraElem, ptr %34, i64 0, i32 3
  store i32 %35, ptr %36, align 4, !tbaa !114
  br label %37

37:                                               ; preds = %33, %13
  ret void
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local float @fcurve_samplingcb_evalcurve(ptr noundef %0, ptr nocapture noundef readnone %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %2)
  ret float %4
}

; Function Attrs: nounwind uwtable
define dso_local float @evaluate_fcurve(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x float], align 16
  %4 = alloca i8, align 1
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %146, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ChannelDriver, ptr %7, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !115
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %113

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ChannelDriver, ptr %7, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !116
  switch i32 %16, label %110 [
    i32 0, label %17
    i32 2, label %17
    i32 3, label %72
    i32 4, label %72
  ]

17:                                               ; preds = %14, %14
  %18 = load ptr, ptr %7, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %23, %17
  %21 = load ptr, ptr %7, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %41

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  %26 = icmp eq ptr %18, %25
  br i1 %26, label %27, label %20

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.DriverVar, ptr %18, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !118
  %30 = icmp ugt i16 %29, 3
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = zext nneg i16 %29 to i64
  %33 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 16, !tbaa !119
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call float %34(ptr noundef nonnull %7, ptr noundef nonnull %18) #18
  br label %38

38:                                               ; preds = %27, %31, %36
  %39 = phi float [ %37, %36 ], [ 0.000000e+00, %31 ], [ 0.000000e+00, %27 ]
  %40 = getelementptr inbounds %struct.DriverVar, ptr %18, i64 0, i32 6
  store float %39, ptr %40, align 4, !tbaa !121
  br label %107

41:                                               ; preds = %20, %55
  %42 = phi ptr [ %60, %55 ], [ %21, %20 ]
  %43 = phi i32 [ %59, %55 ], [ 0, %20 ]
  %44 = phi float [ %58, %55 ], [ 0.000000e+00, %20 ]
  %45 = getelementptr inbounds %struct.DriverVar, ptr %42, i64 0, i32 5
  %46 = load i16, ptr %45, align 2, !tbaa !118
  %47 = icmp ugt i16 %46, 3
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = zext nneg i16 %46 to i64
  %50 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 16, !tbaa !119
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call float %51(ptr noundef nonnull %7, ptr noundef nonnull %42) #18
  br label %55

55:                                               ; preds = %41, %48, %53
  %56 = phi float [ %54, %53 ], [ 0.000000e+00, %48 ], [ 0.000000e+00, %41 ]
  %57 = getelementptr inbounds %struct.DriverVar, ptr %42, i64 0, i32 6
  store float %56, ptr %57, align 4, !tbaa !121
  %58 = fadd float %44, %56
  %59 = add nuw nsw i32 %43, 1
  %60 = load ptr, ptr %42, align 8, !tbaa !43
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %41, !llvm.loop !122

62:                                               ; preds = %55, %20
  %63 = phi float [ 0.000000e+00, %20 ], [ %58, %55 ]
  %64 = phi i32 [ 0, %20 ], [ %59, %55 ]
  %65 = load i32, ptr %15, align 8, !tbaa !116
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %62
  %68 = icmp eq i32 %64, 0
  %69 = sitofp i32 %64 to float
  %70 = fdiv float %63, %69
  %71 = select i1 %68, float 0.000000e+00, float %70
  br label %107

72:                                               ; preds = %14, %14
  %73 = load ptr, ptr %7, align 8, !tbaa !43
  %74 = icmp eq ptr %73, null
  br i1 %74, label %107, label %75

75:                                               ; preds = %72, %103
  %76 = phi ptr [ %105, %103 ], [ %73, %72 ]
  %77 = phi float [ %104, %103 ], [ 0.000000e+00, %72 ]
  %78 = getelementptr inbounds %struct.DriverVar, ptr %76, i64 0, i32 5
  %79 = load i16, ptr %78, align 2, !tbaa !118
  %80 = icmp ugt i16 %79, 3
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = zext nneg i16 %79 to i64
  %83 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 16, !tbaa !119
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = tail call float %84(ptr noundef nonnull %7, ptr noundef nonnull %76) #18
  br label %88

88:                                               ; preds = %75, %81, %86
  %89 = phi float [ %87, %86 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %75 ]
  %90 = getelementptr inbounds %struct.DriverVar, ptr %76, i64 0, i32 6
  store float %89, ptr %90, align 4, !tbaa !121
  %91 = getelementptr inbounds %struct.DriverVar, ptr %76, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !123
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load i32, ptr %15, align 8, !tbaa !116
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = fcmp ogt float %89, %77
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  br label %103

100:                                              ; preds = %94
  %101 = fcmp olt float %89, %77
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102, %100, %99, %97, %88
  %104 = phi float [ %89, %99 ], [ %77, %97 ], [ %89, %102 ], [ %77, %100 ], [ %89, %88 ]
  %105 = load ptr, ptr %76, align 8, !tbaa !43
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %75, !llvm.loop !124

107:                                              ; preds = %103, %72, %62, %38, %67
  %108 = phi float [ %71, %67 ], [ %39, %38 ], [ %63, %62 ], [ 0.000000e+00, %72 ], [ %104, %103 ]
  %109 = getelementptr inbounds %struct.ChannelDriver, ptr %7, i64 0, i32 3
  store float %108, ptr %109, align 8, !tbaa !125
  br label %110

110:                                              ; preds = %107, %14
  %111 = getelementptr inbounds %struct.ChannelDriver, ptr %7, i64 0, i32 3
  %112 = load float, ptr %111, align 8, !tbaa !125
  br label %113

113:                                              ; preds = %9, %110
  %114 = phi float [ %112, %110 ], [ 0.000000e+00, %9 ]
  %115 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !84
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !43
  %121 = icmp eq ptr %120, null
  br i1 %121, label %142, label %122

122:                                              ; preds = %118, %138
  %123 = phi ptr [ %140, %138 ], [ %120, %118 ]
  %124 = phi i8 [ %139, %138 ], [ 1, %118 ]
  %125 = getelementptr inbounds %struct.FModifier, ptr %123, i64 0, i32 5
  %126 = load i16, ptr %125, align 2, !tbaa !97
  %127 = and i16 %126, 16
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.FModifier, ptr %123, i64 0, i32 7
  %131 = load float, ptr %130, align 8, !tbaa !126
  %132 = fcmp ugt float %131, %114
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.FModifier, ptr %123, i64 0, i32 8
  %135 = load float, ptr %134, align 4, !tbaa !127
  %136 = fcmp ult float %135, %114
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %133, %122
  %139 = phi i8 [ %124, %122 ], [ %124, %133 ], [ 0, %137 ]
  %140 = load ptr, ptr %123, align 8, !tbaa !43
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %122, !llvm.loop !128

142:                                              ; preds = %138, %118
  %143 = phi i8 [ 1, %118 ], [ %139, %138 ]
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store float %114, ptr %5, align 4, !tbaa !82
  br label %146

146:                                              ; preds = %142, %145, %113, %2
  %147 = phi float [ %114, %113 ], [ %1, %2 ], [ %114, %145 ], [ %114, %142 ]
  %148 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %149 = tail call ptr @evaluate_fmodifiers_storage_new(ptr noundef nonnull %148) #18
  %150 = load float, ptr %5, align 4, !tbaa !82
  %151 = tail call float @evaluate_time_fmodifiers(ptr noundef %149, ptr noundef nonnull %148, ptr noundef %0, float noundef %150, float noundef %147) #18
  %152 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !34
  %154 = icmp eq ptr %153, null
  br i1 %154, label %739, label %155

155:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #18
  %156 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !84
  %158 = add i32 %157, -1
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 %159
  %161 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !82
  %163 = fcmp ult float %162, %151
  br i1 %163, label %222, label %164

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  %166 = load i16, ptr %165, align 2, !tbaa !129
  %167 = icmp eq i16 %166, 1
  br i1 %167, label %168, label %219

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 4
  %170 = load i8, ptr %169, align 4, !tbaa !91
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %219, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %174 = load i16, ptr %173, align 8, !tbaa !106
  %175 = and i16 %174, 4096
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %219

177:                                              ; preds = %172
  %178 = icmp eq i8 %170, 1
  br i1 %178, label %179, label %202

179:                                              ; preds = %177
  %180 = icmp eq i32 %157, 1
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !82
  br label %737

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 1, i32 0, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !82
  %187 = fsub float %186, %162
  %188 = fcmp une float %187, 0.000000e+00
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = fsub float %162, %151
  %191 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 1, i32 0, i64 1, i64 1
  %192 = load float, ptr %191, align 4, !tbaa !82
  %193 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !82
  %195 = fsub float %192, %194
  %196 = fneg float %195
  %197 = fdiv float %196, %187
  %198 = tail call float @llvm.fmuladd.f32(float %197, float %190, float %194)
  br label %737

199:                                              ; preds = %184
  %200 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !82
  br label %737

202:                                              ; preds = %177
  %203 = load float, ptr %153, align 4, !tbaa !82
  %204 = fsub float %162, %203
  %205 = fcmp une float %204, 0.000000e+00
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = fsub float %162, %151
  %208 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !82
  %210 = getelementptr inbounds [3 x float], ptr %153, i64 0, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !82
  %212 = fsub float %209, %211
  %213 = fneg float %212
  %214 = fdiv float %213, %204
  %215 = tail call float @llvm.fmuladd.f32(float %214, float %207, float %209)
  br label %737

216:                                              ; preds = %202
  %217 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !82
  br label %737

219:                                              ; preds = %172, %168, %164
  %220 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !82
  br label %737

222:                                              ; preds = %155
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !82
  %225 = fcmp ugt float %224, %151
  br i1 %225, label %283, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  %228 = load i16, ptr %227, align 2, !tbaa !129
  %229 = icmp eq i16 %228, 1
  br i1 %229, label %230, label %280

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 %159, i32 4
  %232 = load i8, ptr %231, align 4, !tbaa !91
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %280, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %236 = load i16, ptr %235, align 8, !tbaa !106
  %237 = and i16 %236, 4096
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %239, label %280

239:                                              ; preds = %234
  %240 = icmp eq i8 %232, 1
  br i1 %240, label %241, label %263

241:                                              ; preds = %239
  %242 = icmp eq i32 %157, 1
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !82
  br label %737

246:                                              ; preds = %241
  %247 = getelementptr %struct.BezTriple, ptr %160, i64 -1, i32 0, i64 1
  %248 = load float, ptr %247, align 4, !tbaa !82
  %249 = fsub float %224, %248
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = fsub float %151, %224
  %253 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !82
  %255 = getelementptr %struct.BezTriple, ptr %160, i64 -1, i32 0, i64 1, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !82
  %257 = fsub float %254, %256
  %258 = fdiv float %257, %249
  %259 = tail call float @llvm.fmuladd.f32(float %258, float %252, float %254)
  br label %737

260:                                              ; preds = %246
  %261 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !82
  br label %737

263:                                              ; preds = %239
  %264 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 2
  %265 = load float, ptr %264, align 4, !tbaa !82
  %266 = fsub float %265, %224
  %267 = fcmp une float %266, 0.000000e+00
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = fsub float %151, %224
  %270 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 2, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !82
  %272 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !82
  %274 = fsub float %271, %273
  %275 = fdiv float %274, %266
  %276 = tail call float @llvm.fmuladd.f32(float %275, float %269, float %273)
  br label %737

277:                                              ; preds = %263
  %278 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !82
  br label %737

280:                                              ; preds = %234, %230, %226
  %281 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !82
  br label %737

283:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !64
  %284 = call fastcc i32 @binarysearch_bezt_index_ex(ptr noundef nonnull %153, float noundef %151, i32 noundef %157, float noundef 0x3F1A36E2E0000000, ptr noundef nonnull %4)
  %285 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %290 = load ptr, ptr %289, align 8, !tbaa !45
  %291 = fpext float %151 to double
  %292 = load i32, ptr %156, align 8, !tbaa !84
  %293 = load i8, ptr %4, align 1, !tbaa !64
  %294 = zext i8 %293 to i32
  %295 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %290, double noundef %291, i32 noundef %284, i32 noundef %292, i32 noundef %294)
  br label %296

296:                                              ; preds = %288, %283
  %297 = load i8, ptr %4, align 1, !tbaa !64
  %298 = icmp eq i8 %297, 0
  %299 = zext i32 %284 to i64
  %300 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 %299
  br i1 %298, label %307, label %301

301:                                              ; preds = %296
  %302 = load i32, ptr %156, align 8, !tbaa !84
  %303 = add i32 %302, -1
  %304 = icmp ult i32 %284, %303
  %305 = zext i1 %304 to i64
  %306 = getelementptr inbounds %struct.BezTriple, ptr %300, i64 %305
  br label %311

307:                                              ; preds = %296
  %308 = icmp eq i32 %284, 0
  %309 = getelementptr inbounds %struct.BezTriple, ptr %300, i64 -1
  %310 = select i1 %308, ptr %153, ptr %309
  br label %311

311:                                              ; preds = %307, %301
  %312 = phi ptr [ %300, %301 ], [ %310, %307 ]
  %313 = phi ptr [ %306, %301 ], [ %300, %307 ]
  br i1 %298, label %317, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds [3 x [3 x float]], ptr %312, i64 0, i64 1, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !82
  br label %735

317:                                              ; preds = %311
  %318 = getelementptr inbounds [3 x [3 x float]], ptr %313, i64 0, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !82
  %320 = fsub float %319, %151
  %321 = tail call float @llvm.fabs.f32(float %320)
  %322 = fcmp olt float %321, 0x3E45798EE0000000
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = getelementptr inbounds [3 x [3 x float]], ptr %313, i64 0, i64 1, i64 1
  %325 = load float, ptr %324, align 4, !tbaa !82
  br label %735

326:                                              ; preds = %317
  %327 = getelementptr inbounds [3 x [3 x float]], ptr %312, i64 0, i64 1
  %328 = load float, ptr %327, align 4, !tbaa !82
  %329 = fcmp ugt float %328, %151
  %330 = fcmp ult float %319, %151
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %725, label %332

332:                                              ; preds = %326
  %333 = getelementptr inbounds [3 x [3 x float]], ptr %312, i64 0, i64 1, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !82
  %335 = getelementptr inbounds [3 x [3 x float]], ptr %313, i64 0, i64 1, i64 1
  %336 = load float, ptr %335, align 4, !tbaa !82
  %337 = fsub float %336, %334
  %338 = fsub float %319, %328
  %339 = fsub float %151, %328
  %340 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 13
  %341 = load float, ptr %340, align 4, !tbaa !130
  %342 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 14
  %343 = load float, ptr %342, align 4, !tbaa !131
  %344 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 4
  %345 = load i8, ptr %344, align 4, !tbaa !91
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %735, label %347

347:                                              ; preds = %332
  %348 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %349 = load i16, ptr %348, align 8, !tbaa !106
  %350 = and i16 %349, 4096
  %351 = icmp ne i16 %350, 0
  %352 = fcmp oeq float %338, 0.000000e+00
  %353 = select i1 %351, i1 true, i1 %352
  br i1 %353, label %735, label %354

354:                                              ; preds = %347
  switch i8 %345, label %735 [
    i8 2, label %355
    i8 1, label %611
    i8 3, label %613
    i8 4, label %626
    i8 5, label %637
    i8 6, label %648
    i8 7, label %659
    i8 8, label %670
    i8 9, label %681
    i8 10, label %692
    i8 11, label %703
    i8 12, label %714
  ]

355:                                              ; preds = %354
  %356 = getelementptr inbounds [3 x [3 x float]], ptr %312, i64 0, i64 2
  %357 = load float, ptr %356, align 4, !tbaa !82
  %358 = getelementptr inbounds [3 x [3 x float]], ptr %312, i64 0, i64 2, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !82
  %360 = load float, ptr %313, align 4, !tbaa !82
  %361 = getelementptr inbounds [3 x float], ptr %313, i64 0, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !82
  %363 = fsub float %328, %357
  %364 = fsub float %319, %360
  %365 = tail call float @llvm.fabs.f32(float %363)
  %366 = tail call float @llvm.fabs.f32(float %364)
  %367 = fadd float %365, %366
  %368 = fcmp une float %367, 0.000000e+00
  %369 = fcmp ogt float %367, %338
  %370 = select i1 %368, i1 %369, i1 false
  br i1 %370, label %371, label %380

371:                                              ; preds = %355
  %372 = fsub float %336, %362
  %373 = fsub float %334, %359
  %374 = fneg float %338
  %375 = fdiv float %374, %367
  %376 = tail call float @llvm.fmuladd.f32(float %375, float %363, float %328)
  %377 = tail call float @llvm.fmuladd.f32(float %375, float %373, float %334)
  %378 = tail call float @llvm.fmuladd.f32(float %375, float %364, float %319)
  %379 = tail call float @llvm.fmuladd.f32(float %375, float %372, float %336)
  br label %380

380:                                              ; preds = %371, %355
  %381 = phi float [ %379, %371 ], [ %362, %355 ]
  %382 = phi float [ %378, %371 ], [ %360, %355 ]
  %383 = phi float [ %376, %371 ], [ %357, %355 ]
  %384 = phi float [ %377, %371 ], [ %359, %355 ]
  %385 = fsub float %328, %151
  %386 = fpext float %385 to double
  %387 = fsub float %383, %328
  %388 = fmul float %387, 3.000000e+00
  %389 = fpext float %388 to double
  %390 = tail call float @llvm.fmuladd.f32(float %383, float -2.000000e+00, float %328)
  %391 = fadd float %382, %390
  %392 = fmul float %391, 3.000000e+00
  %393 = fpext float %392 to double
  %394 = fsub float %383, %382
  %395 = tail call float @llvm.fmuladd.f32(float %394, float 3.000000e+00, float %338)
  %396 = fcmp une float %395, 0.000000e+00
  br i1 %396, label %397, label %531

397:                                              ; preds = %380
  %398 = fpext float %395 to double
  %399 = fdiv double %393, %398
  %400 = fdiv double %389, %398
  %401 = fdiv double %386, %398
  %402 = fdiv double %399, 3.000000e+00
  %403 = fdiv double %400, 3.000000e+00
  %404 = fneg double %402
  %405 = tail call double @llvm.fmuladd.f64(double %404, double %402, double %403)
  %406 = fmul double %402, 2.000000e+00
  %407 = fmul double %402, %406
  %408 = fmul double %400, %404
  %409 = tail call double @llvm.fmuladd.f64(double %407, double %402, double %408)
  %410 = fadd double %401, %409
  %411 = fmul double %410, 5.000000e-01
  %412 = fmul double %405, %405
  %413 = fmul double %405, %412
  %414 = tail call double @llvm.fmuladd.f64(double %411, double %411, double %413)
  %415 = fcmp ogt double %414, 0.000000e+00
  %416 = fneg double %411
  br i1 %415, label %417, label %458

417:                                              ; preds = %397
  %418 = tail call double @sqrt(double noundef %414) #18
  %419 = fsub double %418, %411
  %420 = fcmp oeq double %419, 0.000000e+00
  br i1 %420, label %433, label %421

421:                                              ; preds = %417
  %422 = fcmp olt double %419, 0.000000e+00
  br i1 %422, label %423, label %429

423:                                              ; preds = %421
  %424 = fneg double %419
  %425 = tail call double @log(double noundef %424) #18
  %426 = fdiv double %425, 3.000000e+00
  %427 = tail call double @exp(double noundef %426) #18
  %428 = fneg double %427
  br label %433

429:                                              ; preds = %421
  %430 = tail call double @log(double noundef %419) #18
  %431 = fdiv double %430, 3.000000e+00
  %432 = tail call double @exp(double noundef %431) #18
  br label %433

433:                                              ; preds = %429, %423, %417
  %434 = phi double [ %428, %423 ], [ %432, %429 ], [ 0.000000e+00, %417 ]
  %435 = fsub double %416, %418
  %436 = fcmp oeq double %435, 0.000000e+00
  br i1 %436, label %449, label %437

437:                                              ; preds = %433
  %438 = fcmp olt double %435, 0.000000e+00
  br i1 %438, label %439, label %445

439:                                              ; preds = %437
  %440 = fneg double %435
  %441 = tail call double @log(double noundef %440) #18
  %442 = fdiv double %441, 3.000000e+00
  %443 = tail call double @exp(double noundef %442) #18
  %444 = fneg double %443
  br label %449

445:                                              ; preds = %437
  %446 = tail call double @log(double noundef %435) #18
  %447 = fdiv double %446, 3.000000e+00
  %448 = tail call double @exp(double noundef %447) #18
  br label %449

449:                                              ; preds = %445, %439, %433
  %450 = phi double [ %444, %439 ], [ %448, %445 ], [ 0.000000e+00, %433 ]
  %451 = fadd double %434, %450
  %452 = fsub double %451, %402
  %453 = fptrunc double %452 to float
  store float %453, ptr %3, align 16, !tbaa !82
  %454 = fcmp oge float %453, 0xBDDB7CDFE0000000
  %455 = fcmp ole float %453, 0x3FF0000100000000
  %456 = and i1 %454, %455
  %457 = zext i1 %456 to i32
  br label %583

458:                                              ; preds = %397
  %459 = fcmp oeq double %414, 0.000000e+00
  br i1 %459, label %460, label %491

460:                                              ; preds = %458
  %461 = fcmp oeq double %411, 0.000000e+00
  br i1 %461, label %473, label %462

462:                                              ; preds = %460
  %463 = fcmp ogt double %411, 0.000000e+00
  br i1 %463, label %464, label %469

464:                                              ; preds = %462
  %465 = tail call double @log(double noundef %411) #18
  %466 = fdiv double %465, 3.000000e+00
  %467 = tail call double @exp(double noundef %466) #18
  %468 = fneg double %467
  br label %473

469:                                              ; preds = %462
  %470 = tail call double @log(double noundef %416) #18
  %471 = fdiv double %470, 3.000000e+00
  %472 = tail call double @exp(double noundef %471) #18
  br label %473

473:                                              ; preds = %469, %464, %460
  %474 = phi double [ %468, %464 ], [ %472, %469 ], [ 0.000000e+00, %460 ]
  %475 = tail call double @llvm.fmuladd.f64(double %474, double 2.000000e+00, double %404)
  %476 = fptrunc double %475 to float
  store float %476, ptr %3, align 16, !tbaa !82
  %477 = fcmp oge float %476, 0xBDDB7CDFE0000000
  %478 = fcmp ole float %476, 0x3FF0000100000000
  %479 = and i1 %477, %478
  %480 = zext i1 %479 to i32
  %481 = fneg double %474
  %482 = fsub double %481, %402
  %483 = fptrunc double %482 to float
  %484 = zext i1 %479 to i64
  %485 = getelementptr inbounds float, ptr %3, i64 %484
  store float %483, ptr %485, align 4, !tbaa !82
  %486 = fcmp ult float %483, 0xBDDB7CDFE0000000
  %487 = fcmp ugt float %483, 0x3FF0000100000000
  %488 = or i1 %486, %487
  %489 = select i1 %479, i32 2, i32 1
  %490 = select i1 %488, i32 %480, i32 %489
  br label %583

491:                                              ; preds = %458
  %492 = fneg double %413
  %493 = tail call double @sqrt(double noundef %492) #18
  %494 = fdiv double %416, %493
  %495 = tail call double @acos(double noundef %494) #18
  %496 = fneg double %405
  %497 = tail call double @sqrt(double noundef %496) #18
  %498 = fdiv double %495, 3.000000e+00
  %499 = tail call double @cos(double noundef %498) #18
  %500 = fmul double %499, -3.000000e+00
  %501 = tail call double @llvm.fmuladd.f64(double %500, double %499, double 3.000000e+00)
  %502 = tail call double @sqrt(double noundef %501) #18
  %503 = fmul double %497, 2.000000e+00
  %504 = tail call double @llvm.fmuladd.f64(double %503, double %499, double %404)
  %505 = fptrunc double %504 to float
  store float %505, ptr %3, align 16, !tbaa !82
  %506 = fcmp oge float %505, 0xBDDB7CDFE0000000
  %507 = fcmp ole float %505, 0x3FF0000100000000
  %508 = and i1 %506, %507
  %509 = zext i1 %508 to i32
  %510 = fneg double %497
  %511 = fadd double %499, %502
  %512 = tail call double @llvm.fmuladd.f64(double %510, double %511, double %404)
  %513 = fptrunc double %512 to float
  %514 = zext i1 %508 to i64
  %515 = getelementptr inbounds float, ptr %3, i64 %514
  store float %513, ptr %515, align 4, !tbaa !82
  %516 = fcmp ult float %513, 0xBDDB7CDFE0000000
  %517 = fcmp ugt float %513, 0x3FF0000100000000
  %518 = or i1 %516, %517
  %519 = select i1 %508, i32 2, i32 1
  %520 = select i1 %518, i32 %509, i32 %519
  %521 = fsub double %499, %502
  %522 = tail call double @llvm.fmuladd.f64(double %510, double %521, double %404)
  %523 = fptrunc double %522 to float
  %524 = zext nneg i32 %520 to i64
  %525 = getelementptr inbounds float, ptr %3, i64 %524
  store float %523, ptr %525, align 4, !tbaa !82
  %526 = fcmp oge float %523, 0xBDDB7CDFE0000000
  %527 = fcmp ole float %523, 0x3FF0000100000000
  %528 = and i1 %526, %527
  %529 = zext i1 %528 to i32
  %530 = add nuw nsw i32 %520, %529
  br label %583

531:                                              ; preds = %380
  %532 = fcmp une float %392, 0.000000e+00
  br i1 %532, label %533, label %570

533:                                              ; preds = %531
  %534 = fmul double %393, -4.000000e+00
  %535 = fmul double %534, %386
  %536 = tail call double @llvm.fmuladd.f64(double %389, double %389, double %535)
  %537 = fcmp ogt double %536, 0.000000e+00
  br i1 %537, label %538, label %559

538:                                              ; preds = %533
  %539 = tail call double @sqrt(double noundef %536) #18
  %540 = fneg double %389
  %541 = fsub double %540, %539
  %542 = fmul double %393, 2.000000e+00
  %543 = fdiv double %541, %542
  %544 = fptrunc double %543 to float
  store float %544, ptr %3, align 16, !tbaa !82
  %545 = fcmp oge float %544, 0xBDDB7CDFE0000000
  %546 = fcmp ole float %544, 0x3FF0000100000000
  %547 = and i1 %545, %546
  %548 = zext i1 %547 to i32
  %549 = fsub double %539, %389
  %550 = fdiv double %549, %542
  %551 = fptrunc double %550 to float
  %552 = zext i1 %547 to i64
  %553 = getelementptr inbounds float, ptr %3, i64 %552
  store float %551, ptr %553, align 4, !tbaa !82
  %554 = fcmp ult float %551, 0xBDDB7CDFE0000000
  %555 = fcmp ugt float %551, 0x3FF0000100000000
  %556 = or i1 %554, %555
  %557 = select i1 %547, i32 2, i32 1
  %558 = select i1 %556, i32 %548, i32 %557
  br label %583

559:                                              ; preds = %533
  %560 = fcmp oeq double %536, 0.000000e+00
  br i1 %560, label %561, label %583

561:                                              ; preds = %559
  %562 = fneg double %389
  %563 = fmul double %393, 2.000000e+00
  %564 = fdiv double %562, %563
  %565 = fptrunc double %564 to float
  store float %565, ptr %3, align 16, !tbaa !82
  %566 = fcmp oge float %565, 0xBDDB7CDFE0000000
  %567 = fcmp ole float %565, 0x3FF0000100000000
  %568 = and i1 %566, %567
  %569 = zext i1 %568 to i32
  br label %583

570:                                              ; preds = %531
  %571 = fcmp une float %388, 0.000000e+00
  br i1 %571, label %572, label %580

572:                                              ; preds = %570
  %573 = fneg double %386
  %574 = fdiv double %573, %389
  %575 = fptrunc double %574 to float
  store float %575, ptr %3, align 16, !tbaa !82
  %576 = fcmp oge float %575, 0xBDDB7CDFE0000000
  %577 = fcmp ole float %575, 0x3FF0000100000000
  %578 = and i1 %576, %577
  %579 = zext i1 %578 to i32
  br label %583

580:                                              ; preds = %570
  %581 = fcmp oeq float %385, 0.000000e+00
  br i1 %581, label %582, label %583

582:                                              ; preds = %580
  store float 0.000000e+00, ptr %3, align 16, !tbaa !82
  br label %583

583:                                              ; preds = %449, %473, %491, %538, %559, %561, %572, %580, %582
  %584 = phi i32 [ 1, %582 ], [ 0, %580 ], [ 0, %559 ], [ %457, %449 ], [ %569, %561 ], [ %579, %572 ], [ %490, %473 ], [ %530, %491 ], [ %558, %538 ]
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %600, label %586

586:                                              ; preds = %583
  %587 = fsub float %384, %334
  %588 = fmul float %587, 3.000000e+00
  %589 = tail call float @llvm.fmuladd.f32(float %384, float -2.000000e+00, float %334)
  %590 = fadd float %381, %589
  %591 = fmul float %590, 3.000000e+00
  %592 = fsub float %384, %381
  %593 = tail call float @llvm.fmuladd.f32(float %592, float 3.000000e+00, float %337)
  %594 = load float, ptr %3, align 16, !tbaa !82
  %595 = tail call float @llvm.fmuladd.f32(float %594, float %588, float %334)
  %596 = fmul float %594, %594
  %597 = tail call float @llvm.fmuladd.f32(float %596, float %591, float %595)
  %598 = fmul float %594, %596
  %599 = tail call float @llvm.fmuladd.f32(float %598, float %593, float %597)
  store float %599, ptr %3, align 16, !tbaa !82
  br label %735

600:                                              ; preds = %583
  %601 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %602 = and i32 %601, 1
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %735, label %604

604:                                              ; preds = %600
  %605 = fpext float %151 to double
  %606 = fpext float %328 to double
  %607 = fpext float %383 to double
  %608 = fpext float %382 to double
  %609 = fpext float %319 to double
  %610 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %605, double noundef %606, double noundef %607, double noundef %608, double noundef %609)
  br label %735

611:                                              ; preds = %354
  %612 = tail call float @BLI_easing_linear_ease(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

613:                                              ; preds = %354
  %614 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %615 = load i8, ptr %614, align 1, !tbaa !132
  %616 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 12
  %617 = load float, ptr %616, align 4, !tbaa !133
  switch i8 %615, label %624 [
    i8 1, label %618
    i8 2, label %620
    i8 3, label %622
  ]

618:                                              ; preds = %613
  %619 = tail call float @BLI_easing_back_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %617) #18
  br label %735

620:                                              ; preds = %613
  %621 = tail call float @BLI_easing_back_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %617) #18
  br label %735

622:                                              ; preds = %613
  %623 = tail call float @BLI_easing_back_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %617) #18
  br label %735

624:                                              ; preds = %613
  %625 = tail call float @BLI_easing_back_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %617) #18
  br label %735

626:                                              ; preds = %354
  %627 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %628 = load i8, ptr %627, align 1, !tbaa !132
  switch i8 %628, label %635 [
    i8 1, label %629
    i8 2, label %631
    i8 3, label %633
  ]

629:                                              ; preds = %626
  %630 = tail call float @BLI_easing_bounce_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

631:                                              ; preds = %626
  %632 = tail call float @BLI_easing_bounce_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

633:                                              ; preds = %626
  %634 = tail call float @BLI_easing_bounce_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

635:                                              ; preds = %626
  %636 = tail call float @BLI_easing_bounce_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

637:                                              ; preds = %354
  %638 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %639 = load i8, ptr %638, align 1, !tbaa !132
  switch i8 %639, label %646 [
    i8 1, label %640
    i8 2, label %642
    i8 3, label %644
  ]

640:                                              ; preds = %637
  %641 = tail call float @BLI_easing_circ_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

642:                                              ; preds = %637
  %643 = tail call float @BLI_easing_circ_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

644:                                              ; preds = %637
  %645 = tail call float @BLI_easing_circ_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

646:                                              ; preds = %637
  %647 = tail call float @BLI_easing_circ_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

648:                                              ; preds = %354
  %649 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %650 = load i8, ptr %649, align 1, !tbaa !132
  switch i8 %650, label %657 [
    i8 1, label %651
    i8 2, label %653
    i8 3, label %655
  ]

651:                                              ; preds = %648
  %652 = tail call float @BLI_easing_cubic_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

653:                                              ; preds = %648
  %654 = tail call float @BLI_easing_cubic_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

655:                                              ; preds = %648
  %656 = tail call float @BLI_easing_cubic_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

657:                                              ; preds = %648
  %658 = tail call float @BLI_easing_cubic_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

659:                                              ; preds = %354
  %660 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %661 = load i8, ptr %660, align 1, !tbaa !132
  switch i8 %661, label %668 [
    i8 1, label %662
    i8 2, label %664
    i8 3, label %666
  ]

662:                                              ; preds = %659
  %663 = tail call float @BLI_easing_elastic_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %341, float noundef %343) #18
  br label %735

664:                                              ; preds = %659
  %665 = tail call float @BLI_easing_elastic_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %341, float noundef %343) #18
  br label %735

666:                                              ; preds = %659
  %667 = tail call float @BLI_easing_elastic_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %341, float noundef %343) #18
  br label %735

668:                                              ; preds = %659
  %669 = tail call float @BLI_easing_elastic_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338, float noundef %341, float noundef %343) #18
  br label %735

670:                                              ; preds = %354
  %671 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %672 = load i8, ptr %671, align 1, !tbaa !132
  switch i8 %672, label %679 [
    i8 1, label %673
    i8 2, label %675
    i8 3, label %677
  ]

673:                                              ; preds = %670
  %674 = tail call float @BLI_easing_expo_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

675:                                              ; preds = %670
  %676 = tail call float @BLI_easing_expo_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

677:                                              ; preds = %670
  %678 = tail call float @BLI_easing_expo_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

679:                                              ; preds = %670
  %680 = tail call float @BLI_easing_expo_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

681:                                              ; preds = %354
  %682 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %683 = load i8, ptr %682, align 1, !tbaa !132
  switch i8 %683, label %690 [
    i8 1, label %684
    i8 2, label %686
    i8 3, label %688
  ]

684:                                              ; preds = %681
  %685 = tail call float @BLI_easing_quad_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

686:                                              ; preds = %681
  %687 = tail call float @BLI_easing_quad_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

688:                                              ; preds = %681
  %689 = tail call float @BLI_easing_quad_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

690:                                              ; preds = %681
  %691 = tail call float @BLI_easing_quad_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

692:                                              ; preds = %354
  %693 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %694 = load i8, ptr %693, align 1, !tbaa !132
  switch i8 %694, label %701 [
    i8 1, label %695
    i8 2, label %697
    i8 3, label %699
  ]

695:                                              ; preds = %692
  %696 = tail call float @BLI_easing_quart_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

697:                                              ; preds = %692
  %698 = tail call float @BLI_easing_quart_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

699:                                              ; preds = %692
  %700 = tail call float @BLI_easing_quart_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

701:                                              ; preds = %692
  %702 = tail call float @BLI_easing_quart_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

703:                                              ; preds = %354
  %704 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %705 = load i8, ptr %704, align 1, !tbaa !132
  switch i8 %705, label %712 [
    i8 1, label %706
    i8 2, label %708
    i8 3, label %710
  ]

706:                                              ; preds = %703
  %707 = tail call float @BLI_easing_quint_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

708:                                              ; preds = %703
  %709 = tail call float @BLI_easing_quint_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

710:                                              ; preds = %703
  %711 = tail call float @BLI_easing_quint_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

712:                                              ; preds = %703
  %713 = tail call float @BLI_easing_quint_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

714:                                              ; preds = %354
  %715 = getelementptr inbounds %struct.BezTriple, ptr %312, i64 0, i32 11
  %716 = load i8, ptr %715, align 1, !tbaa !132
  switch i8 %716, label %723 [
    i8 1, label %717
    i8 2, label %719
    i8 3, label %721
  ]

717:                                              ; preds = %714
  %718 = tail call float @BLI_easing_sine_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

719:                                              ; preds = %714
  %720 = tail call float @BLI_easing_sine_ease_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

721:                                              ; preds = %714
  %722 = tail call float @BLI_easing_sine_ease_in_out(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

723:                                              ; preds = %714
  %724 = tail call float @BLI_easing_sine_ease_in(float noundef %339, float noundef %334, float noundef %337, float noundef %338) #18
  br label %735

725:                                              ; preds = %326
  %726 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %727 = and i32 %726, 1
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %735, label %729

729:                                              ; preds = %725
  %730 = fpext float %328 to double
  %731 = fpext float %319 to double
  %732 = fpext float %151 to double
  %733 = fpext float %321 to double
  %734 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %730, double noundef %731, double noundef %732, double noundef %733)
  br label %735

735:                                              ; preds = %332, %347, %729, %725, %723, %721, %719, %717, %712, %710, %708, %706, %701, %699, %697, %695, %690, %688, %686, %684, %679, %677, %675, %673, %668, %666, %664, %662, %657, %655, %653, %651, %646, %644, %642, %640, %635, %633, %631, %629, %624, %622, %620, %618, %611, %604, %600, %586, %354, %323, %314
  %736 = phi float [ %316, %314 ], [ %325, %323 ], [ 0.000000e+00, %729 ], [ 0.000000e+00, %725 ], [ %724, %723 ], [ %722, %721 ], [ %720, %719 ], [ %718, %717 ], [ %713, %712 ], [ %711, %710 ], [ %709, %708 ], [ %707, %706 ], [ %702, %701 ], [ %700, %699 ], [ %698, %697 ], [ %696, %695 ], [ %691, %690 ], [ %689, %688 ], [ %687, %686 ], [ %685, %684 ], [ %680, %679 ], [ %678, %677 ], [ %676, %675 ], [ %674, %673 ], [ %669, %668 ], [ %667, %666 ], [ %665, %664 ], [ %663, %662 ], [ %658, %657 ], [ %656, %655 ], [ %654, %653 ], [ %652, %651 ], [ %647, %646 ], [ %645, %644 ], [ %643, %642 ], [ %641, %640 ], [ %636, %635 ], [ %634, %633 ], [ %632, %631 ], [ %630, %629 ], [ %625, %624 ], [ %623, %622 ], [ %621, %620 ], [ %619, %618 ], [ %612, %611 ], [ %599, %586 ], [ 0.000000e+00, %604 ], [ 0.000000e+00, %600 ], [ %334, %354 ], [ %334, %347 ], [ %334, %332 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  br label %737

737:                                              ; preds = %181, %189, %199, %206, %216, %219, %243, %251, %260, %268, %277, %280, %735
  %738 = phi float [ %221, %219 ], [ %183, %181 ], [ %198, %189 ], [ %201, %199 ], [ %215, %206 ], [ %218, %216 ], [ %282, %280 ], [ %245, %243 ], [ %259, %251 ], [ %262, %260 ], [ %276, %268 ], [ %279, %277 ], [ %736, %735 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #18
  store float %738, ptr %5, align 4, !tbaa !82
  br label %782

739:                                              ; preds = %146
  %740 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %741 = load ptr, ptr %740, align 8, !tbaa !44
  %742 = icmp eq ptr %741, null
  br i1 %742, label %782, label %743

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %745 = load i32, ptr %744, align 8, !tbaa !84
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds %struct.FPoint, ptr %741, i64 %746
  %748 = load float, ptr %741, align 4, !tbaa !82
  %749 = fcmp ult float %748, %151
  br i1 %749, label %753, label %750

750:                                              ; preds = %743
  %751 = getelementptr inbounds [2 x float], ptr %741, i64 0, i64 1
  %752 = load float, ptr %751, align 4, !tbaa !82
  br label %780

753:                                              ; preds = %743
  %754 = getelementptr inbounds %struct.FPoint, ptr %747, i64 -1
  %755 = load float, ptr %754, align 4, !tbaa !82
  %756 = fcmp ugt float %755, %151
  br i1 %756, label %760, label %757

757:                                              ; preds = %753
  %758 = getelementptr %struct.FPoint, ptr %747, i64 -1, i32 0, i64 1
  %759 = load float, ptr %758, align 4, !tbaa !82
  br label %780

760:                                              ; preds = %753
  %761 = tail call float @llvm.floor.f32(float %151)
  %762 = fsub float %151, %761
  %763 = fsub float %151, %748
  %764 = fptosi float %763 to i32
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.FPoint, ptr %741, i64 %765
  %767 = fcmp une float %762, 0.000000e+00
  br i1 %767, label %768, label %777

768:                                              ; preds = %760
  %769 = tail call float @llvm.fabs.f32(float %762)
  %770 = getelementptr inbounds [2 x float], ptr %766, i64 0, i64 1
  %771 = load float, ptr %770, align 4, !tbaa !82
  %772 = getelementptr inbounds %struct.FPoint, ptr %766, i64 1, i32 0, i64 1
  %773 = load float, ptr %772, align 4, !tbaa !82
  %774 = fsub float 1.000000e+00, %769
  %775 = fmul float %774, %773
  %776 = tail call float @llvm.fmuladd.f32(float %769, float %771, float %775)
  br label %780

777:                                              ; preds = %760
  %778 = getelementptr inbounds [2 x float], ptr %766, i64 0, i64 1
  %779 = load float, ptr %778, align 4, !tbaa !82
  br label %780

780:                                              ; preds = %750, %757, %768, %777
  %781 = phi float [ %752, %750 ], [ %759, %757 ], [ %776, %768 ], [ %779, %777 ]
  store float %781, ptr %5, align 4, !tbaa !82
  br label %782

782:                                              ; preds = %739, %780, %737
  call void @evaluate_value_fmodifiers(ptr noundef %149, ptr noundef nonnull %148, ptr noundef %0, ptr noundef nonnull %5, float noundef %151) #18
  call void @evaluate_fmodifiers_storage_free(ptr noundef %149) #18
  %783 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %784 = load i16, ptr %783, align 8, !tbaa !106
  %785 = and i16 %784, 2048
  %786 = icmp eq i16 %785, 0
  br i1 %786, label %791, label %787

787:                                              ; preds = %782
  %788 = load float, ptr %5, align 4, !tbaa !82
  %789 = fadd float %788, 5.000000e-01
  %790 = call float @llvm.floor.f32(float %789)
  store float %790, ptr %5, align 4, !tbaa !82
  br label %791

791:                                              ; preds = %787, %782
  %792 = load float, ptr %5, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret float %792
}

; Function Attrs: nounwind uwtable
define dso_local void @fcurve_store_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %4, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  br label %45

11:                                               ; preds = %5
  %12 = icmp slt i32 %2, %3
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  br label %45

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %17 = sub nsw i32 %3, %2
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 4
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.4) #18
  br label %22

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %2, %15 ], [ %28, %22 ]
  %24 = phi ptr [ %21, %15 ], [ %29, %22 ]
  %25 = sitofp i32 %23 to float
  store float %25, ptr %24, align 4, !tbaa !82
  %26 = tail call float %4(ptr noundef %0, ptr noundef %1, float noundef %25) #18
  %27 = getelementptr inbounds [2 x float], ptr %24, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !82
  %28 = add i32 %23, 1
  %29 = getelementptr inbounds %struct.FPoint, ptr %24, i64 1
  %30 = icmp eq i32 %23, %3
  br i1 %30, label %31, label %22, !llvm.loop !134

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %36(ptr noundef nonnull %33) #18
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %42(ptr noundef nonnull %39) #18
  br label %43

43:                                               ; preds = %41, %37
  store ptr null, ptr %32, align 8, !tbaa !34
  store ptr %21, ptr %38, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 %18, ptr %44, align 8, !tbaa !84
  br label %45

45:                                               ; preds = %43, %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calchandles_fcurve(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = icmp slt i32 %3, 2
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %56, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BezTriple, ptr %7, i64 1
  %13 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  br label %14

14:                                               ; preds = %11, %50
  %15 = phi i32 [ %3, %11 ], [ %19, %50 ]
  %16 = phi ptr [ %12, %11 ], [ %53, %50 ]
  %17 = phi ptr [ null, %11 ], [ %18, %50 ]
  %18 = phi ptr [ %7, %11 ], [ %54, %50 ]
  %19 = add nsw i32 %15, -1
  %20 = load float, ptr %18, align 4, !tbaa !82
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !82
  %23 = fcmp ogt float %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store float %22, ptr %18, align 4, !tbaa !82
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !82
  %28 = load float, ptr %21, align 4, !tbaa !82
  %29 = fcmp olt float %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store float %28, ptr %26, align 4, !tbaa !82
  br label %31

31:                                               ; preds = %30, %25
  tail call void @BKE_nurb_handle_calc(ptr noundef nonnull %18, ptr noundef %17, ptr noundef %16, i8 noundef zeroext 1) #18
  %32 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 5
  %33 = load i8, ptr %32, align 1, !tbaa !135
  switch i8 %33, label %50 [
    i8 1, label %34
    i8 4, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 6
  %36 = load i8, ptr %35, align 2, !tbaa !136
  switch i8 %36, label %50 [
    i8 1, label %37
    i8 4, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %2, align 8, !tbaa !84
  %41 = icmp eq i32 %15, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %37
  %43 = load i16, ptr %13, align 2, !tbaa !129
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !82
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 1
  store float %47, ptr %48, align 4, !tbaa !82
  %49 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  store float %47, ptr %49, align 4, !tbaa !82
  br label %50

50:                                               ; preds = %34, %31, %39, %45, %42
  %51 = icmp eq i32 %19, 1
  %52 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  %53 = select i1 %51, ptr null, ptr %52
  %54 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 1
  %55 = icmp eq i32 %19, 0
  br i1 %55, label %56, label %14, !llvm.loop !137

56:                                               ; preds = %50, %1, %5
  ret void
}

declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @testhandles_fcurve(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %16, %12 ], [ %6, %8 ]
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef nonnull %14, i8 noundef zeroext %1) #18
  %15 = add nuw i32 %13, 1
  %16 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %17 = load i32, ptr %9, align 8, !tbaa !84
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %12, label %19, !llvm.loop !138

19:                                               ; preds = %12, %8
  tail call void @calchandles_fcurve(ptr noundef nonnull %0)
  br label %20

20:                                               ; preds = %2, %4, %19
  ret void
}

declare void @BKE_nurb_bezt_handle_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sort_time_fcurve(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca %struct.BezTriple, align 4
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  br label %5

5:                                                ; preds = %1, %54
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 8, !tbaa !84
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %8, %48
  %12 = phi i32 [ %52, %48 ], [ %9, %8 ]
  %13 = phi i8 [ %49, %48 ], [ 0, %8 ]
  %14 = phi ptr [ %51, %48 ], [ %6, %8 ]
  %15 = phi i32 [ %50, %48 ], [ 0, %8 ]
  %16 = add i32 %12, -1
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %11
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !82
  %21 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1, i32 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !82
  %23 = fcmp ogt float %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %14, i64 72, i1 false), !tbaa.struct !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %14, ptr noundef nonnull align 4 dereferenceable(72) %25, i64 72, i1 false), !tbaa.struct !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %25, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2)
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i8 [ 1, %24 ], [ %13, %18 ]
  %28 = load float, ptr %14, align 4, !tbaa !82
  %29 = load float, ptr %19, align 4, !tbaa !82
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !82
  %34 = fcmp olt float %33, %29
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store float %33, ptr %14, align 4, !tbaa !82
  store float %28, ptr %32, align 4, !tbaa !82
  %36 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !82
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !82
  store float %39, ptr %36, align 4, !tbaa !82
  store float %37, ptr %38, align 4, !tbaa !82
  br label %48

40:                                               ; preds = %31
  br i1 %30, label %41, label %42

41:                                               ; preds = %40
  store float %29, ptr %14, align 4, !tbaa !82
  br label %42

42:                                               ; preds = %26, %41, %40
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !82
  %45 = load float, ptr %19, align 4, !tbaa !82
  %46 = fcmp olt float %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store float %45, ptr %43, align 4, !tbaa !82
  br label %48

48:                                               ; preds = %11, %42, %47, %35
  %49 = phi i8 [ %27, %35 ], [ %27, %47 ], [ %27, %42 ], [ %13, %11 ]
  %50 = add nuw i32 %15, 1
  %51 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %52 = load i32, ptr %4, align 8, !tbaa !84
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %11, label %54, !llvm.loop !140

54:                                               ; preds = %48, %8, %5
  %55 = phi i8 [ 0, %5 ], [ 0, %8 ], [ %49, %48 ]
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %5, !llvm.loop !141

57:                                               ; preds = %54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @test_time_fcurve(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %7, %20
  %13 = phi ptr [ %21, %20 ], [ %5, %7 ]
  %14 = phi i32 [ %22, %20 ], [ 0, %7 ]
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 1, i32 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !82
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %43, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 1
  %22 = add nuw i32 %14, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %43, label %12, !llvm.loop !142

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !84
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %36

33:                                               ; preds = %36
  %34 = add nuw i32 %38, 1
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %43, label %36, !llvm.loop !143

36:                                               ; preds = %28, %33
  %37 = phi ptr [ %40, %33 ], [ %26, %28 ]
  %38 = phi i32 [ %34, %33 ], [ 0, %28 ]
  %39 = load float, ptr %37, align 4, !tbaa !82
  %40 = getelementptr inbounds %struct.FPoint, ptr %37, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !82
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %33

43:                                               ; preds = %12, %20, %36, %33, %7, %28, %24, %1
  %44 = phi i16 [ 0, %1 ], [ 0, %24 ], [ 0, %28 ], [ 0, %7 ], [ 0, %33 ], [ 1, %36 ], [ 0, %20 ], [ 1, %12 ]
  ret i16 %44
}

; Function Attrs: nounwind uwtable
define dso_local void @driver_free_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi i32 [ 0, %4 ], [ %15, %14 ]
  %8 = phi ptr [ %5, %4 ], [ %16, %14 ]
  %9 = getelementptr inbounds %struct.DriverTarget, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %10) #18
  br label %14

14:                                               ; preds = %6, %12
  %15 = add nuw nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.DriverTarget, ptr %8, i64 1
  %17 = icmp eq i32 %15, 8
  br i1 %17, label %18, label %6, !llvm.loop !53

18:                                               ; preds = %14
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %19

19:                                               ; preds = %2, %18
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @driver_change_variable_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp ugt i32 %1, 3
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %4
  %6 = select i1 %3, ptr null, ptr %5
  %7 = icmp eq ptr %0, null
  %8 = or i1 %7, %3
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 5
  store i16 %10, ptr %11, align 2, !tbaa !118
  %12 = getelementptr inbounds %struct.DriverVarTypeInfo, ptr %6, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !144
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 4
  store i16 %14, ptr %15, align 8, !tbaa !145
  %16 = shl i32 %13, 16
  %17 = ashr exact i32 %16, 16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 3
  %21 = zext nneg i32 %17 to i64
  br label %22

22:                                               ; preds = %19, %36
  %23 = phi i64 [ 0, %19 ], [ %37, %36 ]
  %24 = phi ptr [ %20, %19 ], [ %38, %36 ]
  %25 = getelementptr inbounds %struct.DriverVarTypeInfo, ptr %6, i64 0, i32 3, i64 %23
  %26 = load i16, ptr %25, align 2, !tbaa !146
  %27 = getelementptr inbounds %struct.DriverTarget, ptr %24, i64 0, i32 4
  store i16 %26, ptr %27, align 2, !tbaa !147
  %28 = and i16 %26, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.DriverTarget, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !148
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds %struct.DriverTarget, ptr %24, i64 0, i32 5
  store i32 16975, ptr %35, align 4, !tbaa !148
  br label %36

36:                                               ; preds = %34, %30
  %37 = add nuw nsw i64 %23, 1
  %38 = getelementptr inbounds %struct.DriverTarget, ptr %24, i64 1
  %39 = icmp eq i64 %37, %21
  br i1 %39, label %40, label %22, !llvm.loop !149

40:                                               ; preds = %36, %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @driver_add_new_variable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 536, ptr noundef nonnull @.str.5) #18
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 2
  store i32 7496054, ptr %6, align 1
  tail call void @BLI_uniquename(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @.str.6, i8 noundef zeroext 95, i32 noundef 16, i32 noundef 64) #18
  %7 = icmp eq ptr %5, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 5
  store i16 0, ptr %9, align 2, !tbaa !118
  %10 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 4
  store i16 1, ptr %10, align 8, !tbaa !145
  %11 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 3, i64 0, i32 4
  store i16 0, ptr %11, align 2, !tbaa !147
  %12 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 3, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !148
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 3, i64 0, i32 5
  store i32 16975, ptr %16, align 4, !tbaa !148
  br label %17

17:                                               ; preds = %15, %8, %3, %1
  %18 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %8 ], [ %5, %15 ]
  ret ptr %18
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local float @driver_get_variable_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !118
  %9 = icmp ugt i16 %8, 3
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = zext nneg i16 %8 to i64
  %12 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call float %13(ptr noundef %0, ptr noundef %1) #18
  br label %17

17:                                               ; preds = %6, %10, %15
  %18 = phi float [ %16, %15 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %6 ]
  %19 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 6
  store float %18, ptr %19, align 4, !tbaa !121
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi float [ %18, %17 ], [ 0.000000e+00, %2 ]
  ret float %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @correct_bezpart(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = load float, ptr %0, align 4, !tbaa !82
  %6 = load float, ptr %1, align 4, !tbaa !82
  %7 = fsub float %5, %6
  %8 = load float, ptr %3, align 4, !tbaa !82
  %9 = load float, ptr %2, align 4, !tbaa !82
  %10 = fsub float %8, %9
  %11 = fsub float %8, %5
  %12 = tail call float @llvm.fabs.f32(float %7)
  %13 = tail call float @llvm.fabs.f32(float %10)
  %14 = fadd float %12, %13
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp ogt float %14, %11
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !82
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !82
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !82
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !82
  %28 = fsub float %25, %27
  %29 = fneg float %11
  %30 = fdiv float %29, %14
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %7, float %5)
  store float %31, ptr %1, align 4, !tbaa !82
  %32 = load float, ptr %24, align 4, !tbaa !82
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %28, float %32)
  store float %33, ptr %26, align 4, !tbaa !82
  %34 = load float, ptr %3, align 4, !tbaa !82
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %10, float %34)
  store float %35, ptr %2, align 4, !tbaa !82
  %36 = load float, ptr %19, align 4, !tbaa !82
  %37 = tail call float @llvm.fmuladd.f32(float %30, float %23, float %36)
  store float %37, ptr %21, align 4, !tbaa !82
  br label %38

38:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare ptr @evaluate_fmodifiers_storage_new(ptr noundef) local_unnamed_addr #1

declare float @evaluate_time_fmodifiers(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @evaluate_value_fmodifiers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @evaluate_fmodifiers_storage_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

; Function Attrs: nounwind uwtable
define dso_local void @calculate_fcurve(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ChannelDriver, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %17 = tail call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %16, i32 noundef 0, i16 noundef signext 3) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10, %2
  %20 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %1)
  %21 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 8
  store float %20, ptr %21, align 4, !tbaa !150
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal float @dvar_eval_singleProp(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 -1, ptr %6, align 4, !tbaa !151
  %7 = icmp eq ptr %0, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !146
  %15 = icmp eq i16 %14, 16975
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %8
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi ptr [ %10, %20 ], [ %18, %16 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !115
  %36 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !147
  %38 = or i16 %37, 16
  store i16 %38, ptr %36, align 2, !tbaa !147
  br label %126

39:                                               ; preds = %21
  call void @RNA_id_pointer_create(ptr noundef nonnull %22, ptr noundef nonnull %3) #18
  %40 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = call zeroext i8 @RNA_path_resolve_property_full(ptr noundef nonnull %3, ptr noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %106, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 8, !tbaa !43
  %46 = call zeroext i8 @RNA_property_array_check(ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %6, align 4, !tbaa !151
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load ptr, ptr %5, align 8, !tbaa !43
  %53 = call i32 @RNA_property_array_length(ptr noundef nonnull %4, ptr noundef %52) #18
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load ptr, ptr %5, align 8, !tbaa !43
  %57 = call i32 @RNA_property_type(ptr noundef %56) #18
  switch i32 %57, label %121 [
    i32 0, label %58
    i32 1, label %63
    i32 2, label %68
  ]

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 8, !tbaa !43
  %60 = load i32, ptr %6, align 4, !tbaa !151
  %61 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %4, ptr noundef %59, i32 noundef %60) #18
  %62 = sitofp i32 %61 to float
  br label %121

63:                                               ; preds = %55
  %64 = load ptr, ptr %5, align 8, !tbaa !43
  %65 = load i32, ptr %6, align 4, !tbaa !151
  %66 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %4, ptr noundef %64, i32 noundef %65) #18
  %67 = sitofp i32 %66 to float
  br label %121

68:                                               ; preds = %55
  %69 = load ptr, ptr %5, align 8, !tbaa !43
  %70 = load i32, ptr %6, align 4, !tbaa !151
  %71 = call float @RNA_property_float_get_index(ptr noundef nonnull %4, ptr noundef %69, i32 noundef %70) #18
  br label %121

72:                                               ; preds = %51, %48
  %73 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %78 = load ptr, ptr %40, align 8, !tbaa !51
  %79 = load i32, ptr %6, align 4, !tbaa !151
  %80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %77, ptr noundef %78, i32 noundef %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !115
  %84 = or i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !115
  %85 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %86 = load i16, ptr %85, align 2, !tbaa !147
  %87 = or i16 %86, 16
  store i16 %87, ptr %85, align 2, !tbaa !147
  br label %126

88:                                               ; preds = %44
  %89 = load ptr, ptr %5, align 8, !tbaa !43
  %90 = call i32 @RNA_property_type(ptr noundef %89) #18
  switch i32 %90, label %121 [
    i32 0, label %91
    i32 1, label %95
    i32 2, label %99
    i32 4, label %102
  ]

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !tbaa !43
  %93 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %4, ptr noundef %92) #18
  %94 = sitofp i32 %93 to float
  br label %121

95:                                               ; preds = %88
  %96 = load ptr, ptr %5, align 8, !tbaa !43
  %97 = call i32 @RNA_property_int_get(ptr noundef nonnull %4, ptr noundef %96) #18
  %98 = sitofp i32 %97 to float
  br label %121

99:                                               ; preds = %88
  %100 = load ptr, ptr %5, align 8, !tbaa !43
  %101 = call float @RNA_property_float_get(ptr noundef nonnull %4, ptr noundef %100) #18
  br label %121

102:                                              ; preds = %88
  %103 = load ptr, ptr %5, align 8, !tbaa !43
  %104 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %103) #18
  %105 = sitofp i32 %104 to float
  br label %121

106:                                              ; preds = %39
  %107 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %112 = load ptr, ptr %40, align 8, !tbaa !51
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %111, ptr noundef %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %116 = load i32, ptr %115, align 4, !tbaa !115
  %117 = or i32 %116, 1
  store i32 %117, ptr %115, align 4, !tbaa !115
  %118 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !147
  %120 = or i16 %119, 16
  store i16 %120, ptr %118, align 2, !tbaa !147
  br label %126

121:                                              ; preds = %102, %99, %95, %91, %88, %68, %63, %58, %55
  %122 = phi float [ 0.000000e+00, %55 ], [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ 0.000000e+00, %88 ], [ %105, %102 ], [ %101, %99 ], [ %98, %95 ], [ %94, %91 ]
  %123 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %124 = load i16, ptr %123, align 2, !tbaa !147
  %125 = and i16 %124, -17
  store i16 %125, ptr %123, align 2, !tbaa !147
  br label %126

126:                                              ; preds = %2, %32, %81, %114, %121
  %127 = phi float [ 0.000000e+00, %32 ], [ %122, %121 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %114 ], [ 0.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret float %127
}

; Function Attrs: nounwind uwtable
define internal float @dvar_eval_rotDiff(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %7 = icmp eq ptr %0, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !146
  %15 = icmp eq i16 %14, 16975
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %8
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi ptr [ %10, %20 ], [ %18, %16 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %26 = load i16, ptr %25, align 8, !tbaa !146
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !157
  %31 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 2
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %30, ptr noundef nonnull %31) #18
  br label %33

33:                                               ; preds = %2, %21, %24, %28
  %34 = phi ptr [ %32, %28 ], [ null, %2 ], [ null, %24 ], [ null, %21 ]
  br i1 %7, label %59, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %6, align 8, !tbaa !152
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 4
  %40 = load i16, ptr %39, align 8, !tbaa !146
  %41 = icmp eq i16 %40, 16975
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !153
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %35
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi ptr [ %36, %46 ], [ %44, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4
  %52 = load i16, ptr %51, align 8, !tbaa !146
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !157
  %57 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 2
  %58 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %56, ptr noundef nonnull %57) #18
  br label %59

59:                                               ; preds = %33, %47, %50, %54
  %60 = phi ptr [ %58, %54 ], [ null, %33 ], [ null, %50 ], [ null, %47 ]
  %61 = icmp eq ptr %34, null
  %62 = icmp eq ptr %60, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !115
  %67 = or i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !115
  %68 = select i1 %61, i1 %62, i1 false
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %77 = load i16, ptr %76, align 2, !tbaa !147
  %78 = or i16 %77, 16
  store i16 %78, ptr %76, align 2, !tbaa !147
  %79 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %80 = load i16, ptr %79, align 2, !tbaa !147
  %81 = or i16 %80, 16
  store i16 %81, ptr %79, align 2, !tbaa !147
  br label %134

82:                                               ; preds = %64
  br i1 %61, label %83, label %96

83:                                               ; preds = %82
  %84 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %91 = load i16, ptr %90, align 2, !tbaa !147
  %92 = or i16 %91, 16
  store i16 %92, ptr %90, align 2, !tbaa !147
  %93 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %94 = load i16, ptr %93, align 2, !tbaa !147
  %95 = and i16 %94, -17
  store i16 %95, ptr %93, align 2, !tbaa !147
  br label %134

96:                                               ; preds = %82
  br i1 %62, label %97, label %134

97:                                               ; preds = %96
  %98 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %105 = load i16, ptr %104, align 2, !tbaa !147
  %106 = and i16 %105, -17
  store i16 %106, ptr %104, align 2, !tbaa !147
  %107 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %108 = load i16, ptr %107, align 2, !tbaa !147
  %109 = or i16 %108, 16
  store i16 %109, ptr %107, align 2, !tbaa !147
  br label %134

110:                                              ; preds = %59
  %111 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %112 = load i16, ptr %111, align 2, !tbaa !147
  %113 = and i16 %112, -17
  store i16 %113, ptr %111, align 2, !tbaa !147
  %114 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %115 = load i16, ptr %114, align 2, !tbaa !147
  %116 = and i16 %115, -17
  store i16 %116, ptr %114, align 2, !tbaa !147
  %117 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 29
  call void @mat4_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %117) #18
  %118 = getelementptr inbounds %struct.bPoseChannel, ptr %60, i64 0, i32 29
  call void @mat4_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %118) #18
  call void @invert_qt(ptr noundef nonnull %3) #18
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %119 = load float, ptr %5, align 16, !tbaa !82
  %120 = fcmp ugt float %119, -1.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = fcmp ult float %119, 1.000000e+00
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = call float @acosf(float noundef %119) #18
  %125 = fmul float %124, 2.000000e+00
  br label %126

126:                                              ; preds = %110, %121, %123
  %127 = phi float [ %125, %123 ], [ 0x401921FB60000000, %110 ], [ 0.000000e+00, %121 ]
  %128 = fcmp olt float %127, 0.000000e+00
  %129 = fneg float %127
  %130 = select i1 %128, float %129, float %127
  %131 = fcmp ogt float %130, 0x400921FB60000000
  %132 = fsub float 0x401921FB60000000, %130
  %133 = select i1 %131, float %132, float %130
  br label %134

134:                                              ; preds = %75, %96, %103, %89, %126
  %135 = phi float [ %133, %126 ], [ 0.000000e+00, %89 ], [ 0.000000e+00, %103 ], [ 0.000000e+00, %96 ], [ 0.000000e+00, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret float %135
}

; Function Attrs: nounwind uwtable
define internal float @dvar_eval_locDiff(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !145
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %11, %46
  %14 = phi i16 [ 0, %11 ], [ %47, %46 ]
  %15 = phi ptr [ %6, %11 ], [ %49, %46 ]
  %16 = phi i32 [ 0, %11 ], [ %48, %46 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !146
  %22 = icmp eq i16 %21, 16975
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %13
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi ptr [ %17, %27 ], [ %25, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4
  %33 = load i16, ptr %32, align 8, !tbaa !146
  %34 = icmp eq i16 %33, 16975
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %28
  %36 = load i32, ptr %12, align 4, !tbaa !115
  %37 = or i32 %36, 1
  store i32 %37, ptr %12, align 4, !tbaa !115
  %38 = getelementptr inbounds %struct.DriverTarget, ptr %15, i64 0, i32 4
  %39 = load i16, ptr %38, align 2, !tbaa !147
  %40 = or i16 %39, 16
  store i16 %40, ptr %38, align 2, !tbaa !147
  br label %46

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.DriverTarget, ptr %15, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !147
  %44 = and i16 %43, -17
  store i16 %44, ptr %42, align 2, !tbaa !147
  %45 = add i16 %14, 1
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi i16 [ %14, %35 ], [ %45, %41 ]
  %48 = add nuw nsw i32 %16, 1
  %49 = getelementptr inbounds %struct.DriverTarget, ptr %15, i64 1
  %50 = icmp eq i32 %48, %9
  br i1 %50, label %51, label %13, !llvm.loop !158

51:                                               ; preds = %46, %2
  %52 = phi i16 [ 0, %2 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 4
  %54 = sext i16 %52 to i32
  %55 = icmp slt i16 %52, %8
  br i1 %55, label %82, label %56

56:                                               ; preds = %51
  %57 = load i16, ptr %53, align 8, !tbaa !145
  %58 = icmp sgt i16 %57, 0
  br i1 %58, label %59, label %195

59:                                               ; preds = %56
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %62 = getelementptr inbounds float, ptr %3, i64 1
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %64 = getelementptr inbounds float, ptr %3, i64 2
  %65 = getelementptr inbounds float, ptr %3, i64 1
  %66 = getelementptr inbounds float, ptr %3, i64 2
  %67 = getelementptr inbounds float, ptr %3, i64 1
  %68 = getelementptr inbounds float, ptr %3, i64 2
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %71 = getelementptr inbounds float, ptr %3, i64 1
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %73 = getelementptr inbounds float, ptr %3, i64 2
  %74 = getelementptr inbounds float, ptr %3, i64 1
  %75 = getelementptr inbounds float, ptr %3, i64 2
  %76 = getelementptr inbounds float, ptr %3, i64 1
  %77 = getelementptr inbounds float, ptr %3, i64 2
  %78 = getelementptr inbounds float, ptr %3, i64 1
  %79 = getelementptr inbounds float, ptr %3, i64 2
  %80 = getelementptr inbounds float, ptr %3, i64 1
  %81 = getelementptr inbounds float, ptr %3, i64 2
  br label %91

82:                                               ; preds = %51
  %83 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !94
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %203, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %6, align 8, !tbaa !152
  %88 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !152
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %54, ptr noundef %87, ptr noundef %89)
  br label %203

91:                                               ; preds = %59, %179
  %92 = phi i32 [ 0, %59 ], [ %186, %179 ]
  %93 = phi ptr [ %6, %59 ], [ %187, %179 ]
  %94 = phi float [ 0.000000e+00, %59 ], [ %185, %179 ]
  %95 = phi float [ 0.000000e+00, %59 ], [ %184, %179 ]
  %96 = phi float [ 0.000000e+00, %59 ], [ %183, %179 ]
  %97 = phi float [ 0.000000e+00, %59 ], [ %182, %179 ]
  %98 = phi float [ 0.000000e+00, %59 ], [ %181, %179 ]
  %99 = phi float [ 0.000000e+00, %59 ], [ %180, %179 ]
  %100 = load ptr, ptr %93, align 8, !tbaa !152
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 4
  %104 = load i16, ptr %103, align 8, !tbaa !146
  %105 = icmp eq i16 %104, 16975
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 13
  %108 = load ptr, ptr %107, align 8, !tbaa !153
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102, %91
  br label %111

111:                                              ; preds = %106, %110
  %112 = phi ptr [ %100, %110 ], [ %108, %106 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %113 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 18
  %114 = load ptr, ptr %113, align 8, !tbaa !157
  %115 = getelementptr inbounds %struct.DriverTarget, ptr %93, i64 0, i32 2
  %116 = call ptr @BKE_pose_channel_find_name(ptr noundef %114, ptr noundef nonnull %115) #18
  %117 = icmp eq ptr %116, null
  %118 = getelementptr inbounds %struct.DriverTarget, ptr %93, i64 0, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !147
  %120 = zext i16 %119 to i32
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %117, label %147, label %123

123:                                              ; preds = %111
  br i1 %122, label %139, label %124

124:                                              ; preds = %123
  %125 = and i32 %120, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %128 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %128) #18
  call void @BKE_constraint_mat_convertspace(ptr noundef %112, ptr noundef nonnull %116, ptr noundef nonnull %4, i16 noundef signext 2, i16 noundef signext 1) #18
  %129 = load float, ptr %60, align 16, !tbaa !82
  store float %129, ptr %3, align 4, !tbaa !82
  %130 = load float, ptr %61, align 4, !tbaa !82
  store float %130, ptr %62, align 4, !tbaa !82
  %131 = load float, ptr %63, align 8, !tbaa !82
  store float %131, ptr %64, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %170

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 20
  %134 = load float, ptr %133, align 4, !tbaa !82
  store float %134, ptr %3, align 4, !tbaa !82
  %135 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 20, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !82
  store float %136, ptr %65, align 4, !tbaa !82
  %137 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 20, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !82
  store float %138, ptr %66, align 4, !tbaa !82
  br label %170

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 31
  %141 = load float, ptr %140, align 4, !tbaa !82
  store float %141, ptr %3, align 4, !tbaa !82
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 31, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !82
  store float %143, ptr %67, align 4, !tbaa !82
  %144 = getelementptr inbounds %struct.bPoseChannel, ptr %116, i64 0, i32 31, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !82
  store float %145, ptr %68, align 4, !tbaa !82
  %146 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %146, ptr noundef nonnull %3) #18
  br label %170

147:                                              ; preds = %111
  br i1 %122, label %163, label %148

148:                                              ; preds = %147
  %149 = and i32 %120, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %152 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %152) #18
  call void @BKE_constraint_mat_convertspace(ptr noundef %112, ptr noundef null, ptr noundef nonnull %5, i16 noundef signext 0, i16 noundef signext 1) #18
  %153 = load float, ptr %69, align 16, !tbaa !82
  store float %153, ptr %3, align 4, !tbaa !82
  %154 = load float, ptr %70, align 4, !tbaa !82
  store float %154, ptr %71, align 4, !tbaa !82
  %155 = load float, ptr %72, align 8, !tbaa !82
  store float %155, ptr %73, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  br label %170

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 33
  %158 = load float, ptr %157, align 4, !tbaa !82
  store float %158, ptr %3, align 4, !tbaa !82
  %159 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 33, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !82
  store float %160, ptr %74, align 4, !tbaa !82
  %161 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 33, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !82
  store float %162, ptr %75, align 4, !tbaa !82
  br label %170

163:                                              ; preds = %147
  %164 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47, i64 3
  %165 = load float, ptr %164, align 4, !tbaa !82
  store float %165, ptr %3, align 4, !tbaa !82
  %166 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47, i64 3, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !82
  store float %167, ptr %76, align 4, !tbaa !82
  %168 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47, i64 3, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !82
  store float %169, ptr %77, align 4, !tbaa !82
  br label %170

170:                                              ; preds = %163, %156, %151, %139, %132, %127
  %171 = icmp eq i32 %92, 0
  %172 = load float, ptr %3, align 4, !tbaa !82
  br i1 %171, label %176, label %173

173:                                              ; preds = %170
  %174 = load float, ptr %78, align 4, !tbaa !82
  %175 = load float, ptr %79, align 4, !tbaa !82
  br label %179

176:                                              ; preds = %170
  %177 = load float, ptr %80, align 4, !tbaa !82
  %178 = load float, ptr %81, align 4, !tbaa !82
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi float [ %172, %176 ], [ %99, %173 ]
  %181 = phi float [ %177, %176 ], [ %98, %173 ]
  %182 = phi float [ %178, %176 ], [ %97, %173 ]
  %183 = phi float [ %96, %176 ], [ %172, %173 ]
  %184 = phi float [ %95, %176 ], [ %174, %173 ]
  %185 = phi float [ %94, %176 ], [ %175, %173 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  %186 = add nuw nsw i32 %92, 1
  %187 = getelementptr inbounds %struct.DriverTarget, ptr %93, i64 1
  %188 = load i16, ptr %53, align 8, !tbaa !145
  %189 = sext i16 %188 to i32
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %91, label %191, !llvm.loop !159

191:                                              ; preds = %179
  %192 = fsub float %183, %180
  %193 = fsub float %184, %181
  %194 = fsub float %185, %182
  br label %195

195:                                              ; preds = %191, %56
  %196 = phi float [ 0.000000e+00, %56 ], [ %192, %191 ]
  %197 = phi float [ 0.000000e+00, %56 ], [ %193, %191 ]
  %198 = phi float [ 0.000000e+00, %56 ], [ %194, %191 ]
  %199 = fmul float %197, %197
  %200 = call float @llvm.fmuladd.f32(float %196, float %196, float %199)
  %201 = call float @llvm.fmuladd.f32(float %198, float %198, float %200)
  %202 = call float @sqrtf(float noundef %201) #18
  br label %203

203:                                              ; preds = %82, %86, %195
  %204 = phi float [ %202, %195 ], [ 0.000000e+00, %86 ], [ 0.000000e+00, %82 ]
  ret float %204
}

; Function Attrs: nounwind uwtable
define internal float @dvar_eval_transChan(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !146
  %13 = icmp eq i16 %12, 16975
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10, %2
  br label %19

19:                                               ; preds = %14, %18
  %20 = phi ptr [ %8, %18 ], [ %16, %14 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !146
  %25 = icmp eq i16 %24, 16975
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !115
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !147
  %32 = or i16 %31, 16
  store i16 %32, ptr %30, align 2, !tbaa !147
  br label %128

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !147
  %36 = and i16 %35, -17
  store i16 %36, ptr %34, align 2, !tbaa !147
  %37 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !157
  %39 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 2
  %40 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %38, ptr noundef nonnull %39) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 26
  %44 = load i16, ptr %43, align 4, !tbaa !160
  %45 = icmp sgt i16 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 22
  %48 = load float, ptr %47, align 4, !tbaa !82
  store float %48, ptr %4, align 4, !tbaa !82
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 22, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !82
  %51 = getelementptr inbounds float, ptr %4, i64 1
  store float %50, ptr %51, align 4, !tbaa !82
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 22, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !82
  %54 = getelementptr inbounds float, ptr %4, i64 2
  store float %53, ptr %54, align 4, !tbaa !82
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi i8 [ 1, %46 ], [ 0, %42 ]
  %57 = phi i16 [ %44, %46 ], [ 1, %42 ]
  %58 = load i16, ptr %34, align 2, !tbaa !147
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = and i32 %59, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %66) #18
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %20, ptr noundef nonnull %40, ptr noundef nonnull %3, i16 noundef signext 2, i16 noundef signext 1) #18
  br label %99

67:                                               ; preds = %62
  call void @BKE_pchan_to_mat4(ptr noundef nonnull %40, ptr noundef nonnull %3) #18
  br label %99

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %69, ptr noundef nonnull %70) #18
  br label %99

71:                                               ; preds = %33
  %72 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 83
  %73 = load i16, ptr %72, align 8, !tbaa !162
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39
  %77 = load float, ptr %76, align 4, !tbaa !82
  store float %77, ptr %4, align 4, !tbaa !82
  %78 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !82
  %80 = getelementptr inbounds float, ptr %4, i64 1
  store float %79, ptr %80, align 4, !tbaa !82
  %81 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !82
  %83 = getelementptr inbounds float, ptr %4, i64 2
  store float %82, ptr %83, align 4, !tbaa !82
  br label %84

84:                                               ; preds = %75, %71
  %85 = phi i8 [ 1, %75 ], [ 0, %71 ]
  %86 = phi i16 [ %73, %75 ], [ 1, %71 ]
  %87 = load i16, ptr %34, align 2, !tbaa !147
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = and i32 %88, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %95) #18
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 1) #18
  br label %99

96:                                               ; preds = %91
  call void @BKE_object_to_mat4(ptr noundef nonnull %20, ptr noundef nonnull %3) #18
  br label %99

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %98) #18
  br label %99

99:                                               ; preds = %97, %96, %94, %68, %67, %65
  %100 = phi i8 [ %56, %65 ], [ %56, %67 ], [ %56, %68 ], [ %85, %94 ], [ %85, %96 ], [ %85, %97 ]
  %101 = phi i16 [ %57, %65 ], [ %57, %67 ], [ %57, %68 ], [ %86, %94 ], [ %86, %96 ], [ %86, %97 ]
  %102 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 3
  %103 = load i16, ptr %102, align 8, !tbaa !163
  %104 = icmp sgt i16 %103, 8
  br i1 %104, label %128, label %105

105:                                              ; preds = %99
  %106 = icmp sgt i16 %103, 5
  br i1 %106, label %107, label %113

107:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %108 = load i16, ptr %102, align 8, !tbaa !163
  %109 = sext i16 %108 to i64
  %110 = add nsw i64 %109, -6
  %111 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %128

113:                                              ; preds = %105
  %114 = icmp sgt i16 %103, 2
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @mat4_to_eulO(ptr noundef nonnull %6, i16 noundef signext %101, ptr noundef nonnull %3) #18
  %116 = icmp eq i8 %100, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %115
  call void @compatible_eul(ptr noundef nonnull %6, ptr noundef nonnull %4) #18
  br label %118

118:                                              ; preds = %117, %115
  %119 = load i16, ptr %102, align 8, !tbaa !163
  %120 = sext i16 %119 to i64
  %121 = add nsw i64 %120, -3
  %122 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %128

124:                                              ; preds = %113
  %125 = sext i16 %103 to i64
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !82
  br label %128

128:                                              ; preds = %99, %124, %118, %107, %26
  %129 = phi float [ 0.000000e+00, %26 ], [ %112, %107 ], [ %123, %118 ], [ %127, %124 ], [ 0.000000e+00, %99 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret float %129
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_path_resolve_property_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @invert_qt(ptr noundef) local_unnamed_addr #1

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_constraint_mat_convertspace(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

declare void @BKE_pchan_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @compatible_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @BLI_easing_linear_ease(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_back_ease_in(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_back_ease_out(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_back_ease_in_out(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_bounce_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_bounce_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_bounce_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_circ_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_circ_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_circ_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_cubic_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_cubic_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_cubic_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_elastic_ease_in(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_elastic_ease_out(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_elastic_ease_in_out(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_expo_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_expo_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_expo_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quad_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quad_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quad_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quart_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quart_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quart_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quint_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quint_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_quint_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_sine_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_sine_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLI_easing_sine_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 48}
!35 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !41, i64 68, !42, i64 72, !42, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !41, i64 104, !41, i64 108}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!35, !36, i64 56}
!45 = !{!35, !36, i64 80}
!46 = !{!35, !36, i64 24}
!47 = !{!48, !36, i64 0}
!48 = !{!"ChannelDriver", !39, i64 0, !37, i64 16, !36, i64 272, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 292}
!49 = !{!50, !36, i64 0}
!50 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !42, i64 528, !42, i64 530, !41, i64 532}
!51 = !{!52, !36, i64 8}
!52 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !42, i64 48, !42, i64 50, !40, i64 52}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = !{!39, !36, i64 0}
!58 = !{!35, !36, i64 0}
!59 = distinct !{!59, !54, !55}
!60 = !{!48, !36, i64 272}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = !{!37, !37, i64 0}
!65 = !{!66, !36, i64 0}
!66 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !40, i64 80, !40, i64 84, !42, i64 88, !42, i64 90, !41, i64 92}
!67 = !{!68, !36, i64 120}
!68 = !{!"bAction", !69, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!70 = !{!35, !40, i64 76}
!71 = distinct !{!71, !54, !55}
!72 = !{!66, !36, i64 48}
!73 = distinct !{!73, !54, !55}
!74 = !{!75, !36, i64 16}
!75 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!76 = distinct !{!76, !54, !55}
!77 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!78 = !{!79, !36, i64 0}
!79 = !{!"PointerRNA", !80, i64 0, !36, i64 8, !36, i64 16}
!80 = !{!"", !36, i64 0}
!81 = distinct !{!81, !54, !55}
!82 = !{!41, !41, i64 0}
!83 = distinct !{!83, !54, !55}
!84 = !{!35, !40, i64 64}
!85 = !{!86, !37, i64 52}
!86 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!87 = !{!86, !37, i64 51}
!88 = !{!86, !37, i64 53}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = !{!86, !37, i64 48}
!92 = distinct !{!92, !54, !55}
!93 = distinct !{!93, !54, !55}
!94 = !{!95, !40, i64 2100}
!95 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!96 = !{!35, !36, i64 32}
!97 = !{!98, !42, i64 90}
!98 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !42, i64 88, !42, i64 90, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108}
!99 = !{!98, !42, i64 88}
!100 = !{!98, !36, i64 16}
!101 = !{!102, !40, i64 20}
!102 = !{!"FMod_Generator", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!103 = !{!104, !40, i64 20}
!104 = !{!"FMod_FunctionGenerator", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 20}
!105 = distinct !{!105, !54, !55}
!106 = !{!35, !42, i64 72}
!107 = !{!35, !36, i64 16}
!108 = !{!109, !40, i64 32}
!109 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !37, i64 40, !110, i64 104}
!110 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !42, i64 12, !42, i64 14}
!111 = !{!112, !41, i64 16}
!112 = !{!"CfraElem", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 20}
!113 = distinct !{!113, !54, !55}
!114 = !{!112, !40, i64 20}
!115 = !{!48, !40, i64 292}
!116 = !{!48, !40, i64 288}
!117 = !{!39, !36, i64 8}
!118 = !{!50, !42, i64 530}
!119 = !{!120, !36, i64 0}
!120 = !{!"DriverVarTypeInfo", !36, i64 0, !40, i64 8, !37, i64 16, !37, i64 80}
!121 = !{!50, !41, i64 532}
!122 = distinct !{!122, !54, !55}
!123 = !{!50, !36, i64 8}
!124 = distinct !{!124, !54, !55}
!125 = !{!48, !41, i64 280}
!126 = !{!98, !41, i64 96}
!127 = !{!98, !41, i64 100}
!128 = distinct !{!128, !54, !55}
!129 = !{!35, !42, i64 74}
!130 = !{!86, !41, i64 60}
!131 = !{!86, !41, i64 64}
!132 = !{!86, !37, i64 55}
!133 = !{!86, !41, i64 56}
!134 = distinct !{!134, !54, !55}
!135 = !{!86, !37, i64 49}
!136 = !{!86, !37, i64 50}
!137 = distinct !{!137, !54, !55}
!138 = distinct !{!138, !54, !55}
!139 = !{i64 0, i64 36, !64, i64 36, i64 4, !82, i64 40, i64 4, !82, i64 44, i64 4, !82, i64 48, i64 1, !64, i64 49, i64 1, !64, i64 50, i64 1, !64, i64 51, i64 1, !64, i64 52, i64 1, !64, i64 53, i64 1, !64, i64 54, i64 1, !64, i64 55, i64 1, !64, i64 56, i64 4, !82, i64 60, i64 4, !82, i64 64, i64 4, !82, i64 68, i64 4, !64}
!140 = distinct !{!140, !54, !55}
!141 = distinct !{!141, !54, !55}
!142 = distinct !{!142, !54, !55}
!143 = distinct !{!143, !54, !55}
!144 = !{!120, !40, i64 8}
!145 = !{!50, !42, i64 528}
!146 = !{!42, !42, i64 0}
!147 = !{!52, !42, i64 50}
!148 = !{!52, !40, i64 52}
!149 = distinct !{!149, !54, !55}
!150 = !{!35, !41, i64 68}
!151 = !{!40, !40, i64 0}
!152 = !{!52, !36, i64 0}
!153 = !{!154, !36, i64 248}
!154 = !{!"Object", !69, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !155, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !156, i64 1304, !156, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!155 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!156 = !{!"long", !37, i64 0}
!157 = !{!154, !36, i64 288}
!158 = distinct !{!158, !54, !55}
!159 = distinct !{!159, !54, !55}
!160 = !{!161, !42, i64 268}
!161 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !41, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !41, i64 524, !41, i64 528, !41, i64 532, !36, i64 536}
!162 = !{!154, !42, i64 1040}
!163 = !{!52, !42, i64 48}

; ModuleID = 'blender/source/blender/blenkernel/intern/fcurve.c'
source_filename = "blender/source/blender/blenkernel/intern/fcurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DriverVarTypeInfo = type { ptr, i32, [8 x ptr], [8 x i16] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
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
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

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
@dvar_types = internal global [4 x %struct.DriverVarTypeInfo] [%struct.DriverVarTypeInfo { ptr @dvar_eval_singleProp, i32 1, [8 x ptr] [ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] zeroinitializer }, %struct.DriverVarTypeInfo { ptr @dvar_eval_rotDiff, i32 2, [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %struct.DriverVarTypeInfo { ptr @dvar_eval_locDiff, i32 2, [8 x ptr] [ptr @.str.13, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %struct.DriverVarTypeInfo { ptr @dvar_eval_transChan, i32 1, [8 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }], align 16
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %8(ptr noundef nonnull %5) #22
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %14(ptr noundef nonnull %11) #22
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %20(ptr noundef nonnull %17) #22
  br label %21

21:                                               ; preds = %19, %15
  tail call void @fcurve_free_driver(ptr noundef nonnull %0) #23
  %22 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  tail call void @free_fmodifiers(ptr noundef nonnull %22) #22
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %23(ptr noundef nonnull %0) #22
  br label %24

24:                                               ; preds = %1, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fcurve_free_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  tail call void @driver_free_variable(ptr noundef nonnull %5, ptr noundef nonnull %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !51

14:                                               ; preds = %10, %7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %15(ptr noundef nonnull %5) #22
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %1, %3, %14
  ret void
}

; Function Attrs: optsize
declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_fcurves(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @free_fcurve(ptr noundef nonnull %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !55

10:                                               ; preds = %6, %3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #23
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !56 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %5 = tail call ptr %4(ptr noundef nonnull %0) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr %6(ptr noundef %8) #22
  store ptr %9, ptr %7, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = tail call ptr %10(ptr noundef %12) #22
  store ptr %13, ptr %11, align 8, !tbaa !44
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call ptr %14(ptr noundef %16) #22
  store ptr %17, ptr %15, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr @fcurve_copy_driver(ptr noundef %19) #23
  store ptr %20, ptr %18, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 4
  %22 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  tail call void @copy_fmodifiers(ptr noundef nonnull %21, ptr noundef nonnull %22) #22
  br label %23

23:                                               ; preds = %1, %3
  %24 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @fcurve_copy_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %5 = tail call ptr %4(ptr noundef nonnull %0) #22
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !57
  tail call fastcc void @BLI_listbase_clear(ptr noundef %5) #23
  tail call void @BLI_duplicatelist(ptr noundef %5, ptr noundef nonnull %0) #22
  %7 = load ptr, ptr %5, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %12

9:                                                ; preds = %24
  %10 = load ptr, ptr %13, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !llvm.loop !58

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.DriverVar, ptr %13, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %24
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %17 = phi ptr [ %14, %12 ], [ %26, %24 ]
  %18 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %23 = tail call ptr %22(ptr noundef nonnull %19) #22
  store ptr %23, ptr %18, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %15, %21
  %25 = add nuw nsw i32 %16, 1
  %26 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 1
  %27 = icmp eq i32 %25, 8
  br i1 %27, label %9, label %15, !llvm.loop !61

28:                                               ; preds = %9, %3, %1
  %29 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %9 ]
  ret ptr %29
}

; Function Attrs: optsize
declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_fcurves(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #23
  %7 = load ptr, ptr %1, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = tail call ptr @copy_fcurve(ptr noundef nonnull %10) #23
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %11) #22
  %12 = load ptr, ptr %10, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !62

14:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  %9 = icmp ne ptr %5, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 0, ptr %5, align 1, !tbaa !63
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp eq ptr %8, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %8, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %7) #22
  %17 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %3) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %7, ptr noundef nonnull %17) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call ptr @list_find_fcurve(ptr noundef nonnull %26, ptr noundef nonnull %20, i32 noundef %4) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %22, %25, %29
  %33 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = call ptr @list_find_fcurve(ptr noundef nonnull %33, ptr noundef nonnull %20, i32 noundef %4) #23
  %38 = icmp ne ptr %37, null
  %39 = and i1 %9, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 1, ptr %5, align 1, !tbaa !63
  br label %41

41:                                               ; preds = %36, %40, %32, %29
  %42 = phi ptr [ null, %32 ], [ %30, %29 ], [ null, %40 ], [ null, %36 ]
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %43(ptr noundef nonnull %20) #22
  br label %44

44:                                               ; preds = %16, %41, %19, %11, %13
  %45 = phi ptr [ null, %13 ], [ null, %11 ], [ %42, %41 ], [ null, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @list_find_fcurve(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
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
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #25
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
  %28 = phi ptr [ null, %3 ], [ null, %9 ], [ %13, %20 ], [ null, %24 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @iter_step_fcurve(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
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
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6, %11
  %15 = load ptr, ptr %7, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !72

17:                                               ; preds = %14, %11, %2
  %18 = phi ptr [ null, %2 ], [ null, %14 ], [ %7, %11 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @list_find_data_fcurves(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %0, i64 1
  %7 = insertelement <4 x ptr> %6, ptr %2, i64 2
  %8 = insertelement <4 x ptr> %7, ptr %3, i64 3
  %9 = icmp eq <4 x ptr> %8, zeroinitializer
  %10 = bitcast <4 x i1> %9 to i4
  %11 = icmp eq i4 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !63
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %3, align 1, !tbaa !63
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
  %28 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %2) #25
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %25, ptr noundef nonnull %2) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %3) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @__func__.list_find_data_fcurves) #22
  %39 = getelementptr inbounds %struct.LinkData, ptr %38, i64 0, i32 2
  store ptr %22, ptr %39, align 8, !tbaa !73
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %38) #22
  %40 = add nsw i32 %23, 1
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i32 [ %40, %36 ], [ %23, %33 ]
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %43(ptr noundef nonnull %31) #22
  br label %44

44:                                               ; preds = %30, %41, %21, %27
  %45 = phi i32 [ %23, %27 ], [ %23, %21 ], [ %42, %41 ], [ %23, %30 ]
  %46 = load ptr, ptr %22, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %21, !llvm.loop !75

48:                                               ; preds = %44, %18, %12, %15, %4
  %49 = phi i32 [ 0, %4 ], [ 0, %15 ], [ 0, %12 ], [ 0, %18 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_get_fcurve(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @rna_get_fcurve_context_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_get_fcurve_context_ui(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !76
  store i8 0, ptr %5, align 1, !tbaa !63
  %8 = icmp ne ptr %2, null
  %9 = load ptr, ptr %7, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %106

12:                                               ; preds = %6
  %13 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %7, ptr noundef nonnull %2) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %106, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa !77
  %17 = call ptr @BKE_animdata_from_id(ptr noundef %16) #22
  %18 = icmp ne ptr %0, null
  %19 = select i1 %18, i32 2, i32 1
  %20 = icmp eq ptr %17, null
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = call ptr @BKE_animdata_driver_path_hack(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef null) #22
  %24 = load ptr, ptr %7, align 8, !tbaa !77
  %25 = call ptr @BKE_animdata_from_id(ptr noundef %24) #22
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %17, %15 ]
  %28 = phi i32 [ 1, %22 ], [ %19, %15 ]
  %29 = phi ptr [ %23, %22 ], [ null, %15 ]
  %30 = icmp eq ptr %27, null
  br i1 %30, label %98, label %31

31:                                               ; preds = %26
  %32 = icmp eq ptr %4, null
  br label %33

33:                                               ; preds = %31, %93
  %34 = phi ptr [ null, %31 ], [ %96, %93 ]
  %35 = phi ptr [ %29, %31 ], [ %95, %93 ]
  %36 = phi i32 [ %28, %31 ], [ %38, %93 ]
  %37 = phi ptr [ %27, %31 ], [ %94, %93 ]
  %38 = add nsw i32 %36, -1
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %98, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %37, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bAction, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !66
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds %struct.AnimData, ptr %37, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !69
  %50 = icmp eq ptr %49, null
  br i1 %50, label %93, label %51

51:                                               ; preds = %47, %43
  %52 = icmp eq i32 %38, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %7, ptr noundef nonnull %2) #22
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %54, %53 ], [ %35, %51 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %93, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %37, align 8, !tbaa !64
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.bAction, ptr %59, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call ptr @list_find_fcurve(ptr noundef nonnull %62, ptr noundef nonnull %56, i32 noundef %3) #23
  br label %67

67:                                               ; preds = %65, %61, %58
  %68 = phi ptr [ %66, %65 ], [ %34, %61 ], [ %34, %58 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.AnimData, ptr %37, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = call ptr @list_find_fcurve(ptr noundef nonnull %71, ptr noundef nonnull %56, i32 noundef %3) #23
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  store i8 1, ptr %5, align 1, !tbaa !63
  br label %78

78:                                               ; preds = %77, %67
  %79 = phi ptr [ %68, %67 ], [ %75, %77 ]
  br i1 %32, label %82, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %37, align 8, !tbaa !64
  store ptr %81, ptr %4, align 8, !tbaa !43
  br label %102

82:                                               ; preds = %70, %74, %78
  %83 = phi ptr [ %79, %78 ], [ null, %74 ], [ null, %70 ]
  br i1 %52, label %93, label %84

84:                                               ; preds = %82
  %85 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %56) #22
  %86 = icmp eq ptr %85, null
  %87 = icmp eq ptr %85, %56
  %88 = or i1 %86, %87
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %90(ptr noundef nonnull %56) #22
  %91 = load ptr, ptr %7, align 8, !tbaa !77
  %92 = call ptr @BKE_animdata_from_id(ptr noundef %91) #22
  br label %93

93:                                               ; preds = %89, %55, %82, %47
  %94 = phi ptr [ %37, %82 ], [ %37, %55 ], [ %37, %47 ], [ %92, %89 ]
  %95 = phi ptr [ %56, %82 ], [ null, %55 ], [ %35, %47 ], [ %85, %89 ]
  %96 = phi ptr [ %83, %82 ], [ %34, %55 ], [ %34, %47 ], [ %83, %89 ]
  %97 = icmp eq ptr %94, null
  br i1 %97, label %98, label %33, !llvm.loop !80

98:                                               ; preds = %33, %93, %26
  %99 = phi ptr [ %29, %26 ], [ %95, %93 ], [ %35, %33 ]
  %100 = phi ptr [ null, %26 ], [ %96, %93 ], [ %34, %33 ]
  %101 = icmp eq ptr %99, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %84, %80, %98
  %103 = phi ptr [ %79, %80 ], [ %100, %98 ], [ %83, %84 ]
  %104 = phi ptr [ %56, %80 ], [ %99, %98 ], [ %56, %84 ]
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %105(ptr noundef nonnull %104) #22
  br label %106

106:                                              ; preds = %98, %102, %12, %6
  %107 = phi ptr [ null, %12 ], [ null, %6 ], [ %103, %102 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  ret ptr %107
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_animdata_driver_path_hack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @binarysearch_bezt_index(ptr noundef %0, float noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 {
  %5 = tail call fastcc i32 @binarysearch_bezt_index_ex(ptr noundef %0, float noundef %1, i32 noundef %2, float noundef 0x3F847AE140000000, ptr noundef %3) #23
  ret i32 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @binarysearch_bezt_index_ex(ptr noundef readonly %0, float noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #7 !PGOFuncName !81 {
  %6 = shl nsw i32 %2, 1
  store i8 0, ptr %4, align 1, !tbaa !63
  %7 = icmp slt i32 %2, 1
  %8 = icmp eq ptr %0, null
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %75

12:                                               ; preds = %5
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = fcmp olt float %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = fsub float %1, %14
  %18 = fcmp ugt float %17, %3
  br i1 %18, label %23, label %22

19:                                               ; preds = %12
  %20 = fsub float %14, %1
  %21 = fcmp ugt float %20, %3
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %75

23:                                               ; preds = %19, %16
  %24 = fcmp ogt float %14, %1
  br i1 %24, label %75, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %2, -1
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 %27, i32 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !82
  %30 = fcmp olt float %29, %1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = fsub float %1, %29
  %33 = fcmp ugt float %32, %3
  br i1 %33, label %75, label %37

34:                                               ; preds = %25
  %35 = fsub float %29, %1
  %36 = fcmp ugt float %35, %3
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %31
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %75

38:                                               ; preds = %34, %62
  %39 = phi i32 [ %64, %62 ], [ 0, %34 ]
  %40 = phi i32 [ %63, %62 ], [ %2, %34 ]
  %41 = phi i32 [ %65, %62 ], [ 0, %34 ]
  %42 = sub nsw i32 %40, %39
  %43 = sdiv i32 %42, 2
  %44 = add nsw i32 %43, %39
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 %45, i32 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !82
  %48 = fcmp olt float %47, %1
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = fsub float %1, %47
  %51 = fcmp ugt float %50, %3
  br i1 %51, label %55, label %61

52:                                               ; preds = %38
  %53 = fsub float %47, %1
  %54 = fcmp ugt float %53, %3
  br i1 %54, label %57, label %61

55:                                               ; preds = %49
  %56 = add nsw i32 %44, 1
  br label %62

57:                                               ; preds = %52
  %58 = fcmp ogt float %47, %1
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = add nsw i32 %44, -1
  br label %62

61:                                               ; preds = %49, %52
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %75

62:                                               ; preds = %57, %59, %55
  %63 = phi i32 [ %40, %57 ], [ %60, %59 ], [ %40, %55 ]
  %64 = phi i32 [ %39, %57 ], [ %39, %59 ], [ %56, %55 ]
  %65 = add nuw nsw i32 %41, 1
  %66 = icmp sle i32 %64, %63
  %67 = icmp slt i32 %65, %6
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %38, label %69, !llvm.loop !83

69:                                               ; preds = %62
  %70 = add i32 %6, -2
  %71 = icmp eq i32 %41, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %65, i32 noundef %64, i32 noundef %63, i32 noundef %2) #23
  br label %75

75:                                               ; preds = %23, %37, %22, %31, %61, %69, %72, %10
  %76 = phi i32 [ 0, %10 ], [ %44, %61 ], [ %64, %72 ], [ %64, %69 ], [ %2, %31 ], [ 0, %23 ], [ %26, %37 ], [ 0, %22 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @calc_fcurve_bounds(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #7 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %170, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %113, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !43
  %18 = icmp ne ptr %1, null
  %19 = icmp ne ptr %2, null
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = call fastcc signext i16 @get_fcurve_end_keyframes(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext %5) #23, !range !85
  %23 = trunc i16 %22 to i8
  %24 = load ptr, ptr %8, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %21
  %27 = icmp eq i8 %6, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %26
  %29 = load float, ptr %24, align 4, !tbaa !82
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !82
  %32 = tail call fastcc float @min_fff(float noundef %29, float noundef %31) #23
  %33 = load ptr, ptr %9, align 8, !tbaa !43
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !82
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !82
  %38 = tail call fastcc float @max_fff(float noundef %35, float noundef %37) #23
  br label %47

39:                                               ; preds = %26
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !82
  %42 = tail call fastcc float @min_ff(float noundef 1.000000e+09, float noundef %41) #23
  %43 = load ptr, ptr %9, align 8, !tbaa !43
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !82
  %46 = tail call fastcc float @max_ff(float noundef -1.000000e+09, float noundef %45) #23
  br label %47

47:                                               ; preds = %21, %39, %28, %17
  %48 = phi float [ %32, %28 ], [ %42, %39 ], [ 1.000000e+09, %21 ], [ 1.000000e+09, %17 ]
  %49 = phi float [ %38, %28 ], [ %46, %39 ], [ -1.000000e+09, %21 ], [ -1.000000e+09, %17 ]
  %50 = phi i8 [ %23, %28 ], [ %23, %39 ], [ %23, %21 ], [ 0, %17 ]
  %51 = icmp ne ptr %3, null
  %52 = icmp ne ptr %4, null
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %149

54:                                               ; preds = %47
  %55 = icmp eq i8 %5, 0
  %56 = icmp eq i8 %6, 0
  br label %57

57:                                               ; preds = %54, %106
  %58 = phi ptr [ null, %54 ], [ %59, %106 ]
  %59 = phi ptr [ %15, %54 ], [ %110, %106 ]
  %60 = phi i32 [ 0, %54 ], [ %111, %106 ]
  %61 = phi i8 [ %50, %54 ], [ %109, %106 ]
  %62 = phi float [ -1.000000e+09, %54 ], [ %108, %106 ]
  %63 = phi float [ 1.000000e+09, %54 ], [ %107, %106 ]
  br i1 %55, label %79, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !86
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 7
  %71 = load i8, ptr %70, align 1, !tbaa !88
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 9
  %76 = load i8, ptr %75, align 1, !tbaa !89
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %74, %69, %64, %57
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 0, i64 1, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !82
  %82 = tail call fastcc float @min_ff(float noundef %63, float noundef %81) #23
  %83 = tail call fastcc float @max_ff(float noundef %62, float noundef %81) #23
  br i1 %56, label %106, label %84

84:                                               ; preds = %79
  %85 = icmp eq ptr %58, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 4
  %88 = load i8, ptr %87, align 4, !tbaa !90
  %89 = icmp eq i8 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = getelementptr inbounds [3 x float], ptr %59, i64 0, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !82
  %93 = tail call fastcc float @min_ff(float noundef %82, float noundef %92) #23
  %94 = tail call fastcc float @max_ff(float noundef %83, float noundef %92) #23
  br label %95

95:                                               ; preds = %90, %86, %84
  %96 = phi float [ %93, %90 ], [ %82, %86 ], [ %82, %84 ]
  %97 = phi float [ %94, %90 ], [ %83, %86 ], [ %83, %84 ]
  %98 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 4
  %99 = load i8, ptr %98, align 4, !tbaa !90
  %100 = icmp eq i8 %99, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 0, i64 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !82
  %104 = tail call fastcc float @min_ff(float noundef %96, float noundef %103) #23
  %105 = tail call fastcc float @max_ff(float noundef %97, float noundef %103) #23
  br label %106

106:                                              ; preds = %79, %101, %95, %74
  %107 = phi float [ %63, %74 ], [ %104, %101 ], [ %96, %95 ], [ %82, %79 ]
  %108 = phi float [ %62, %74 ], [ %105, %101 ], [ %97, %95 ], [ %83, %79 ]
  %109 = phi i8 [ %61, %74 ], [ 1, %101 ], [ 1, %95 ], [ 1, %79 ]
  %110 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 1
  %111 = add nuw i32 %60, 1
  %112 = icmp eq i32 %111, %11
  br i1 %112, label %149, label %57, !llvm.loop !91

113:                                              ; preds = %13
  %114 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = icmp eq ptr %115, null
  br i1 %116, label %170, label %117

117:                                              ; preds = %113
  %118 = icmp ne ptr %1, null
  %119 = icmp ne ptr %2, null
  %120 = or i1 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load float, ptr %115, align 4, !tbaa !82
  %123 = tail call fastcc float @min_ff(float noundef 1.000000e+09, float noundef %122) #23
  %124 = add i32 %11, -1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.FPoint, ptr %115, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !82
  %128 = tail call fastcc float @max_ff(float noundef -1.000000e+09, float noundef %127) #23
  br label %129

129:                                              ; preds = %117, %121
  %130 = phi float [ %123, %121 ], [ 1.000000e+09, %117 ]
  %131 = phi float [ %128, %121 ], [ -1.000000e+09, %117 ]
  %132 = icmp ne ptr %3, null
  %133 = icmp ne ptr %4, null
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %129, %135
  %136 = phi ptr [ %146, %135 ], [ %115, %129 ]
  %137 = phi i32 [ %147, %135 ], [ 0, %129 ]
  %138 = phi float [ %145, %135 ], [ -1.000000e+09, %129 ]
  %139 = phi float [ %143, %135 ], [ 1.000000e+09, %129 ]
  %140 = getelementptr inbounds [2 x float], ptr %136, i64 0, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !82
  %142 = fcmp olt float %141, %139
  %143 = select i1 %142, float %141, float %139
  %144 = fcmp ogt float %141, %138
  %145 = select i1 %144, float %141, float %138
  %146 = getelementptr inbounds %struct.FPoint, ptr %136, i64 1
  %147 = add nuw i32 %137, 1
  %148 = icmp eq i32 %147, %11
  br i1 %148, label %154, label %135, !llvm.loop !92

149:                                              ; preds = %106, %47
  %150 = phi float [ 1.000000e+09, %47 ], [ %107, %106 ]
  %151 = phi float [ -1.000000e+09, %47 ], [ %108, %106 ]
  %152 = phi i8 [ %50, %47 ], [ %109, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %170, label %154

154:                                              ; preds = %135, %149
  %155 = phi i8 [ %152, %149 ], [ 1, %135 ]
  %156 = phi float [ %151, %149 ], [ %145, %135 ]
  %157 = phi float [ %150, %149 ], [ %143, %135 ]
  %158 = phi float [ %49, %149 ], [ %131, %135 ]
  %159 = phi float [ %48, %149 ], [ %130, %135 ]
  %160 = icmp eq ptr %1, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  store float %159, ptr %1, align 4, !tbaa !82
  br label %162

162:                                              ; preds = %161, %154
  %163 = icmp eq ptr %2, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %162
  store float %158, ptr %2, align 4, !tbaa !82
  br label %165

165:                                              ; preds = %164, %162
  %166 = icmp eq ptr %3, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  store float %157, ptr %3, align 4, !tbaa !82
  br label %168

168:                                              ; preds = %167, %165
  %169 = icmp eq ptr %4, null
  br i1 %169, label %190, label %187

170:                                              ; preds = %7, %113, %129, %149
  %171 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %176

176:                                              ; preds = %174, %170
  %177 = icmp eq ptr %1, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %176
  store float 0.000000e+00, ptr %1, align 4, !tbaa !82
  br label %179

179:                                              ; preds = %178, %176
  %180 = icmp eq ptr %2, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %179
  store float 1.000000e+00, ptr %2, align 4, !tbaa !82
  br label %182

182:                                              ; preds = %181, %179
  %183 = icmp eq ptr %3, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %182
  store float 0.000000e+00, ptr %3, align 4, !tbaa !82
  br label %185

185:                                              ; preds = %184, %182
  %186 = icmp eq ptr %4, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %185, %168
  %188 = phi float [ %156, %168 ], [ 1.000000e+00, %185 ]
  %189 = phi i8 [ %155, %168 ], [ 0, %185 ]
  store float %188, ptr %4, align 4, !tbaa !82
  br label %190

190:                                              ; preds = %187, %185, %168
  %191 = phi i8 [ 0, %185 ], [ %155, %168 ], [ %189, %187 ]
  ret i8 %191
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i16 @get_fcurve_end_keyframes(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #8 !PGOFuncName !95 {
  store ptr null, ptr %1, align 8, !tbaa !43
  store ptr null, ptr %2, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %4
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %75, label %14

14:                                               ; preds = %10, %31
  %15 = phi i32 [ %33, %31 ], [ 0, %10 ]
  %16 = phi ptr [ %32, %31 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !86
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !88
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 9
  %28 = load i8, ptr %27, align 1, !tbaa !89
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  %33 = add nuw i32 %15, 1
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %37, label %14, !llvm.loop !96

35:                                               ; preds = %14, %21, %26
  store ptr %16, ptr %1, align 8, !tbaa !43
  %36 = load ptr, ptr %5, align 8, !tbaa !34
  br i1 %13, label %75, label %37

37:                                               ; preds = %31, %35
  %38 = phi i16 [ 1, %35 ], [ 0, %31 ]
  %39 = phi ptr [ %36, %35 ], [ %6, %31 ]
  %40 = add i32 %12, -1
  %41 = zext i32 %40 to i64
  %42 = mul nuw nsw i64 %41, 72
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  br label %44

44:                                               ; preds = %37, %61
  %45 = phi i32 [ %63, %61 ], [ 0, %37 ]
  %46 = phi ptr [ %62, %61 ], [ %43, %37 ]
  %47 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 8
  %48 = load i8, ptr %47, align 4, !tbaa !86
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 7
  %53 = load i8, ptr %52, align 1, !tbaa !88
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 9
  %58 = load i8, ptr %57, align 1, !tbaa !89
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 -1
  %63 = add nuw i32 %45, 1
  %64 = icmp eq i32 %63, %12
  br i1 %64, label %75, label %44, !llvm.loop !97

65:                                               ; preds = %8
  store ptr %6, ptr %1, align 8, !tbaa !43
  %66 = load ptr, ptr %5, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !84
  %69 = add i32 %68, -1
  %70 = zext i32 %69 to i64
  %71 = mul nuw nsw i64 %70, 72
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  br label %73

73:                                               ; preds = %44, %51, %56, %65
  %74 = phi ptr [ %72, %65 ], [ %46, %56 ], [ %46, %51 ], [ %46, %44 ]
  store ptr %74, ptr %2, align 8, !tbaa !43
  br label %75

75:                                               ; preds = %61, %73, %35, %10, %4
  %76 = phi i16 [ 0, %4 ], [ 1, %35 ], [ 0, %10 ], [ 1, %73 ], [ %38, %61 ]
  ret i16 %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !98 {
  %3 = tail call fastcc float @min_ff(float noundef 1.000000e+09, float noundef %0) #23
  %4 = tail call fastcc float @min_ff(float noundef %3, float noundef %1) #23
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !99 {
  %3 = tail call fastcc float @max_ff(float noundef -1.000000e+09, float noundef %0) #23
  %4 = tail call fastcc float @max_ff(float noundef %3, float noundef %1) #23
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !100 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !101 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @calc_fcurve_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #8 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  store ptr null, ptr %7, align 8, !tbaa !43
  %16 = call fastcc signext i16 @get_fcurve_end_keyframes(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %3) #23, !range !85
  %17 = load ptr, ptr %6, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !82
  %22 = tail call fastcc float @min_ff(float noundef 1.000000e+09, float noundef %21) #23
  %23 = load ptr, ptr %7, align 8, !tbaa !43
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !82
  %26 = tail call fastcc float @max_ff(float noundef -1.000000e+09, float noundef %25) #23
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi float [ %22, %19 ], [ 1.000000e+09, %15 ]
  %29 = phi float [ %26, %19 ], [ -1.000000e+09, %15 ]
  %30 = phi i8 [ 1, %19 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %43

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load float, ptr %33, align 4, !tbaa !82
  %37 = tail call fastcc float @min_ff(float noundef 1.000000e+09, float noundef %36) #23
  %38 = add i32 %9, -1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.FPoint, ptr %33, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !82
  %42 = tail call fastcc float @max_ff(float noundef -1.000000e+09, float noundef %41) #23
  br label %43

43:                                               ; preds = %27, %35, %31, %5
  %44 = phi float [ %28, %27 ], [ %37, %35 ], [ 1.000000e+09, %31 ], [ 1.000000e+09, %5 ]
  %45 = phi float [ %29, %27 ], [ %42, %35 ], [ -1.000000e+09, %31 ], [ -1.000000e+09, %5 ]
  %46 = phi i8 [ %30, %27 ], [ 1, %35 ], [ 0, %31 ], [ 0, %5 ]
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, float 0.000000e+00, float %44
  %49 = select i1 %47, float 0.000000e+00, float %45
  %50 = icmp ne i8 %4, 0
  %51 = fcmp oeq float %48, %49
  %52 = and i1 %50, %51
  %53 = fadd float %49, 1.000000e+00
  %54 = select i1 %52, float %53, float %49
  store float %48, ptr %1, align 4, !tbaa !82
  store float %54, ptr %2, align 4, !tbaa !82
  ret i8 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @fcurve_are_keyframes_usable(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11, %38
  %16 = phi ptr [ %40, %38 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !103
  %19 = and i16 %18, 9
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !105
  switch i16 %23, label %42 [
    i16 4, label %38
    i16 9, label %38
    i16 5, label %38
    i16 1, label %24
    i16 2, label %31
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.FMod_Generator, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !107
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %38

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !109
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31, %24, %21, %21, %21, %15
  %39 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %15, !llvm.loop !111

42:                                               ; preds = %38, %31, %24, %21, %11, %7, %3, %1
  %43 = phi i8 [ 0, %1 ], [ 0, %3 ], [ 1, %7 ], [ 1, %11 ], [ 1, %38 ], [ 0, %31 ], [ 0, %24 ], [ 0, %21 ]
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_fcurve_is_protected(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 8, !tbaa !112
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  br label %16

16:                                               ; preds = %6, %10, %1
  %17 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %15, %10 ]
  ret i8 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @fcurve_is_keyframable(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = tail call zeroext i8 @fcurve_are_keyframes_usable(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_fcurve_is_protected(ptr noundef %0) #23, !range !117
  %6 = xor i8 %5, 1
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i8 [ 0, %1 ], [ %6, %4 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bezt_add_to_cfra_elem(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br label %4

4:                                                ; preds = %19, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %19 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CfraElem, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !118
  %11 = load float, ptr %3, align 4, !tbaa !82
  %12 = fcmp oeq float %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !86
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %34

19:                                               ; preds = %8
  %20 = fcmp ogt float %10, %11
  br i1 %20, label %21, label %4, !llvm.loop !120

21:                                               ; preds = %19
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %23 = tail call ptr %22(i64 noundef 24, ptr noundef nonnull @.str.1) #22
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %23) #22
  br label %27

24:                                               ; preds = %4
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %26 = tail call ptr %25(i64 noundef 24, ptr noundef nonnull @.str.1) #22
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %26) #22
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %23, %21 ]
  %29 = load float, ptr %3, align 4, !tbaa !82
  %30 = getelementptr inbounds %struct.CfraElem, ptr %28, i64 0, i32 2
  store float %29, ptr %30, align 8, !tbaa !118
  %31 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %32 = load i8, ptr %31, align 4, !tbaa !86
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %13, %27
  %35 = phi ptr [ %28, %27 ], [ %6, %13 ]
  %36 = phi i32 [ %33, %27 ], [ %16, %13 ]
  %37 = getelementptr inbounds %struct.CfraElem, ptr %35, i64 0, i32 3
  store i32 %36, ptr %37, align 4, !tbaa !121
  br label %38

38:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @fcurve_samplingcb_evalcurve(ptr noundef %0, ptr nocapture noundef readnone %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %2) #23
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @evaluate_fcurve(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store float 0.000000e+00, ptr %3, align 4, !tbaa !82
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc float @evaluate_driver(ptr noundef nonnull %5) #23
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %12, %36
  %17 = phi ptr [ %37, %36 ], [ %14, %12 ]
  %18 = phi i1 [ true, %36 ], [ false, %12 ]
  br label %19

19:                                               ; preds = %16, %33
  %20 = phi ptr [ %34, %33 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.FModifier, ptr %20, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !103
  %23 = and i16 %22, 16
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.FModifier, ptr %20, i64 0, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !122
  %28 = fcmp ugt float %27, %8
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.FModifier, ptr %20, i64 0, i32 8
  %31 = load float, ptr %30, align 4, !tbaa !123
  %32 = fcmp ult float %31, %8
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %19
  %34 = load ptr, ptr %20, align 8, !tbaa !43
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %19, !llvm.loop !124

36:                                               ; preds = %25, %29
  %37 = load ptr, ptr %20, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %16, !llvm.loop !124

39:                                               ; preds = %33
  br i1 %18, label %41, label %40

40:                                               ; preds = %12, %39
  store float %8, ptr %3, align 4, !tbaa !82
  br label %41

41:                                               ; preds = %36, %39, %40, %7, %2
  %42 = phi float [ 0.000000e+00, %7 ], [ 0.000000e+00, %2 ], [ %8, %40 ], [ 0.000000e+00, %39 ], [ 0.000000e+00, %36 ]
  %43 = phi float [ %8, %7 ], [ %1, %2 ], [ %8, %40 ], [ %8, %39 ], [ %8, %36 ]
  %44 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %45 = tail call ptr @evaluate_fmodifiers_storage_new(ptr noundef nonnull %44) #22
  %46 = tail call float @evaluate_time_fmodifiers(ptr noundef %45, ptr noundef nonnull %44, ptr noundef %0, float noundef %42, float noundef %43) #22
  %47 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = tail call fastcc float @fcurve_eval_keyframes(ptr noundef nonnull %0, ptr noundef nonnull %48, float noundef %46) #23
  store float %51, ptr %3, align 4, !tbaa !82
  br label %58

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc float @fcurve_eval_samples(ptr noundef nonnull %0, ptr noundef nonnull %54, float noundef %46) #23
  store float %57, ptr %3, align 4, !tbaa !82
  br label %58

58:                                               ; preds = %52, %56, %50
  call void @evaluate_value_fmodifiers(ptr noundef %45, ptr noundef nonnull %44, ptr noundef nonnull %0, ptr noundef nonnull %3, float noundef %46) #22
  call void @evaluate_fmodifiers_storage_free(ptr noundef %45) #22
  %59 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %60 = load i16, ptr %59, align 8, !tbaa !112
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  %63 = load float, ptr %3, align 4, !tbaa !82
  br i1 %62, label %67, label %64

64:                                               ; preds = %58
  %65 = fadd float %63, 5.000000e-01
  %66 = call float @llvm.floor.f32(float %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi float [ %66, %64 ], [ %63, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret float %68
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.4) #22
  br label %22

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %2, %15 ], [ %28, %22 ]
  %24 = phi ptr [ %21, %15 ], [ %29, %22 ]
  %25 = sitofp i32 %23 to float
  store float %25, ptr %24, align 4, !tbaa !82
  %26 = tail call float %4(ptr noundef %0, ptr noundef %1, float noundef %25) #22
  %27 = getelementptr inbounds [2 x float], ptr %24, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !82
  %28 = add i32 %23, 1
  %29 = getelementptr inbounds %struct.FPoint, ptr %24, i64 1
  %30 = icmp eq i32 %23, %3
  br i1 %30, label %31, label %22, !llvm.loop !125

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %36(ptr noundef nonnull %33) #22
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %42(ptr noundef nonnull %39) #22
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calchandles_fcurve(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = icmp slt i32 %3, 2
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %53, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 1
  %11 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  br label %12

12:                                               ; preds = %9, %47
  %13 = phi i32 [ %3, %9 ], [ %17, %47 ]
  %14 = phi ptr [ %10, %9 ], [ %50, %47 ]
  %15 = phi ptr [ null, %9 ], [ %16, %47 ]
  %16 = phi ptr [ %5, %9 ], [ %51, %47 ]
  %17 = add nsw i32 %13, -1
  %18 = load float, ptr %16, align 4, !tbaa !82
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !82
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store float %20, ptr %16, align 4, !tbaa !82
  br label %23

23:                                               ; preds = %22, %12
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !82
  %26 = fcmp olt float %25, %20
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store float %20, ptr %24, align 4, !tbaa !82
  br label %28

28:                                               ; preds = %27, %23
  tail call void @BKE_nurb_handle_calc(ptr noundef nonnull %16, ptr noundef %15, ptr noundef %14, i8 noundef zeroext 1) #22
  %29 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !126
  switch i8 %30, label %47 [
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %28, %28
  %32 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 6
  %33 = load i8, ptr %32, align 2, !tbaa !127
  switch i8 %33, label %47 [
    i8 1, label %34
    i8 4, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = icmp eq i32 %17, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %2, align 8, !tbaa !84
  %38 = icmp eq i32 %13, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %36, %34
  %40 = load i16, ptr %11, align 2, !tbaa !128
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !82
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2, i64 1
  store float %44, ptr %45, align 4, !tbaa !82
  %46 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  store float %44, ptr %46, align 4, !tbaa !82
  br label %47

47:                                               ; preds = %31, %28, %36, %42, %39
  %48 = icmp eq i32 %17, 1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %50 = select i1 %48, ptr null, ptr %49
  %51 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  %52 = icmp eq i32 %17, 0
  br i1 %52, label %53, label %12, !llvm.loop !129

53:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @testhandles_fcurve(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
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
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef nonnull %14, i8 noundef zeroext %1) #22
  %15 = add nuw i32 %13, 1
  %16 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %17 = load i32, ptr %9, align 8, !tbaa !84
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %12, label %19, !llvm.loop !130

19:                                               ; preds = %12, %8
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #23
  br label %20

20:                                               ; preds = %2, %4, %19
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_bezt_handle_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sort_time_fcurve(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = alloca %struct.BezTriple, align 4
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  br label %5

5:                                                ; preds = %1, %52
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 8, !tbaa !84
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %8, %46
  %12 = phi i32 [ %50, %46 ], [ %9, %8 ]
  %13 = phi i8 [ %47, %46 ], [ 0, %8 ]
  %14 = phi ptr [ %49, %46 ], [ %6, %8 ]
  %15 = phi i32 [ %48, %46 ], [ 0, %8 ]
  %16 = add i32 %12, -1
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !82
  %21 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1, i32 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !82
  %23 = fcmp ogt float %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %14, i64 72, i1 false), !tbaa.struct !131
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %14, ptr noundef nonnull align 4 dereferenceable(72) %25, i64 72, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %25, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2)
  %26 = load float, ptr %19, align 4, !tbaa !82
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi float [ %26, %24 ], [ %20, %18 ]
  %29 = phi i8 [ 1, %24 ], [ %13, %18 ]
  %30 = load float, ptr %14, align 4, !tbaa !82
  %31 = fcmp ogt float %30, %28
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !82
  br i1 %31, label %34, label %42

34:                                               ; preds = %27
  %35 = fcmp olt float %33, %28
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  store float %33, ptr %14, align 4, !tbaa !82
  store float %30, ptr %32, align 4, !tbaa !82
  %37 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !82
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !82
  store float %40, ptr %37, align 4, !tbaa !82
  store float %38, ptr %39, align 4, !tbaa !82
  br label %46

41:                                               ; preds = %34
  store float %28, ptr %14, align 4, !tbaa !82
  br label %42

42:                                               ; preds = %27, %41
  %43 = fcmp olt float %33, %28
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  store float %28, ptr %45, align 4, !tbaa !82
  br label %46

46:                                               ; preds = %11, %42, %44, %36
  %47 = phi i8 [ %29, %36 ], [ %29, %44 ], [ %29, %42 ], [ %13, %11 ]
  %48 = add nuw i32 %15, 1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %50 = load i32, ptr %4, align 8, !tbaa !84
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %11, label %52, !llvm.loop !132

52:                                               ; preds = %46
  %53 = icmp eq i8 %47, 0
  br i1 %53, label %54, label %5, !llvm.loop !133

54:                                               ; preds = %8, %5, %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @test_time_fcurve(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

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
  br i1 %11, label %45, label %12

12:                                               ; preds = %7, %20
  %13 = phi ptr [ %21, %20 ], [ %5, %7 ]
  %14 = phi i32 [ %22, %20 ], [ 0, %7 ]
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 1, i32 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !82
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 1
  %22 = add nuw i32 %14, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %45, label %12, !llvm.loop !134

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !84
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load float, ptr %26, align 4, !tbaa !82
  br label %38

35:                                               ; preds = %38
  %36 = add nuw i32 %41, 1
  %37 = icmp eq i32 %36, %31
  br i1 %37, label %45, label %38, !llvm.loop !135

38:                                               ; preds = %33, %35
  %39 = phi float [ %43, %35 ], [ %34, %33 ]
  %40 = phi ptr [ %42, %35 ], [ %26, %33 ]
  %41 = phi i32 [ %36, %35 ], [ 0, %33 ]
  %42 = getelementptr inbounds %struct.FPoint, ptr %40, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !82
  %44 = fcmp ogt float %39, %43
  br i1 %44, label %45, label %35

45:                                               ; preds = %12, %20, %38, %35, %7, %28, %24, %1
  %46 = phi i16 [ 0, %1 ], [ 0, %24 ], [ 0, %28 ], [ 0, %7 ], [ 1, %38 ], [ 0, %35 ], [ 1, %12 ], [ 0, %20 ]
  ret i16 %46
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %10) #22
  br label %14

14:                                               ; preds = %6, %12
  %15 = add nuw nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.DriverTarget, ptr %8, i64 1
  %17 = icmp eq i32 %15, 8
  br i1 %17, label %18, label %6, !llvm.loop !136

18:                                               ; preds = %14
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %19

19:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @driver_change_variable_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call fastcc ptr @get_dvar_typeinfo(i32 noundef %1) #23
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 5
  store i16 %8, ptr %9, align 2, !tbaa !137
  %10 = getelementptr inbounds %struct.DriverVarTypeInfo, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !138
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 4
  store i16 %12, ptr %13, align 8, !tbaa !140
  %14 = shl i32 %11, 16
  %15 = ashr exact i32 %14, 16
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.DriverVar, ptr %0, i64 0, i32 3
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %34
  %21 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %22 = phi ptr [ %18, %17 ], [ %36, %34 ]
  %23 = getelementptr inbounds %struct.DriverVarTypeInfo, ptr %3, i64 0, i32 3, i64 %21
  %24 = load i16, ptr %23, align 2, !tbaa !141
  %25 = getelementptr inbounds %struct.DriverTarget, ptr %22, i64 0, i32 4
  store i16 %24, ptr %25, align 2, !tbaa !142
  %26 = and i16 %24, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.DriverTarget, ptr %22, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !143
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds %struct.DriverTarget, ptr %22, i64 0, i32 5
  store i32 16975, ptr %33, align 4, !tbaa !143
  br label %34

34:                                               ; preds = %32, %28
  %35 = add nuw nsw i64 %21, 1
  %36 = getelementptr inbounds %struct.DriverTarget, ptr %22, i64 1
  %37 = icmp eq i64 %35, %19
  br i1 %37, label %38, label %20, !llvm.loop !144

38:                                               ; preds = %34, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @get_dvar_typeinfo(i32 noundef %0) unnamed_addr #9 !PGOFuncName !145 {
  %2 = icmp ult i32 %0, 4
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [4 x %struct.DriverVarTypeInfo], ptr @dvar_types, i64 0, i64 %3
  %5 = select i1 %2, ptr %4, ptr null
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @driver_add_new_variable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 536, ptr noundef nonnull @.str.5) #22
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 2
  store i32 7496054, ptr %6, align 1
  tail call void @BLI_uniquename(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @.str.6, i8 noundef zeroext 95, i32 noundef 16, i32 noundef 64) #22
  tail call void @driver_change_variable_type(ptr noundef %5, i32 noundef 0) #23
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @driver_get_variable_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !137
  %9 = sext i16 %8 to i32
  %10 = tail call fastcc ptr @get_dvar_typeinfo(i32 noundef %9) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call float %13(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  br label %17

17:                                               ; preds = %6, %12, %15
  %18 = phi float [ %16, %15 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %6 ]
  %19 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 6
  store float %18, ptr %19, align 4, !tbaa !147
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi float [ 0.000000e+00, %2 ], [ %18, %17 ]
  ret float %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @correct_bezpart(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 {
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
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @evaluate_driver(ptr noundef %0) unnamed_addr #0 !PGOFuncName !148 {
  %2 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %71

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !150
  switch i32 %8, label %9 [
    i32 0, label %12
    i32 2, label %12
    i32 3, label %45
    i32 4, label %45
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !151
  br label %71

12:                                               ; preds = %6, %6
  %13 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %0) #23, !range !117
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  br i1 %14, label %16, label %18

16:                                               ; preds = %12
  %17 = icmp eq ptr %15, null
  br i1 %17, label %32, label %21

18:                                               ; preds = %12
  %19 = tail call float @driver_get_variable_value(ptr noundef nonnull %0, ptr noundef %15) #23
  %20 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 3
  store float %19, ptr %20, align 8, !tbaa !151
  br label %71

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %28, %21 ], [ %15, %16 ]
  %23 = phi i32 [ %27, %21 ], [ 0, %16 ]
  %24 = phi float [ %26, %21 ], [ 0.000000e+00, %16 ]
  %25 = tail call float @driver_get_variable_value(ptr noundef nonnull %0, ptr noundef nonnull %22) #23
  %26 = fadd float %24, %25
  %27 = add nuw nsw i32 %23, 1
  %28 = load ptr, ptr %22, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !152

30:                                               ; preds = %21
  %31 = load i32, ptr %7, align 8, !tbaa !150
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i32 [ %8, %16 ], [ %31, %30 ]
  %34 = phi float [ 0.000000e+00, %16 ], [ %26, %30 ]
  %35 = phi i32 [ 0, %16 ], [ %27, %30 ]
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = icmp eq i32 %35, 0
  %39 = sitofp i32 %35 to float
  %40 = fdiv float %34, %39
  %41 = select i1 %38, float 0.000000e+00, float %40
  %42 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 3
  store float %41, ptr %42, align 8, !tbaa !151
  br label %71

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 3
  store float %34, ptr %44, align 8, !tbaa !151
  br label %71

45:                                               ; preds = %6, %6
  %46 = load ptr, ptr %0, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %45, %64
  %49 = phi ptr [ %66, %64 ], [ %46, %45 ]
  %50 = phi float [ %65, %64 ], [ 0.000000e+00, %45 ]
  %51 = tail call float @driver_get_variable_value(ptr noundef nonnull %0, ptr noundef nonnull %49) #23
  %52 = getelementptr inbounds %struct.DriverVar, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !153
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %7, align 8, !tbaa !150
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = fcmp ogt float %51, %50
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %64

61:                                               ; preds = %55
  %62 = fcmp olt float %51, %50
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %48, %60, %58, %63, %61
  %65 = phi float [ %51, %60 ], [ %50, %58 ], [ %51, %63 ], [ %50, %61 ], [ %51, %48 ]
  %66 = load ptr, ptr %49, align 8, !tbaa !43
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %48, !llvm.loop !154

68:                                               ; preds = %64, %45
  %69 = phi float [ 0.000000e+00, %45 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 3
  store float %69, ptr %70, align 8, !tbaa !151
  br label %71

71:                                               ; preds = %68, %18, %43, %37, %9, %1
  %72 = phi float [ 0.000000e+00, %1 ], [ %11, %9 ], [ %41, %37 ], [ %34, %43 ], [ %19, %18 ], [ %69, %68 ]
  ret float %72
}

; Function Attrs: optsize
declare ptr @evaluate_fmodifiers_storage_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @evaluate_time_fmodifiers(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @fcurve_eval_keyframes(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !155 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [32 x float], align 16
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #24
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = add i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 %13
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = fcmp ult float %16, %2
  br i1 %17, label %76, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !128
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  %24 = load i8, ptr %23, align 4, !tbaa !90
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %28 = load i16, ptr %27, align 8, !tbaa !112
  %29 = and i16 %28, 4096
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  %32 = icmp eq i8 %24, 1
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  %34 = icmp eq i32 %11, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !82
  br label %354

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !82
  %41 = fsub float %40, %16
  %42 = fcmp une float %41, 0.000000e+00
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = fsub float %16, %2
  %45 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 0, i64 1, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !82
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !82
  %49 = fsub float %46, %48
  %50 = fneg float %49
  %51 = fdiv float %50, %41
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %44, float %48)
  br label %354

53:                                               ; preds = %38
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !82
  br label %354

56:                                               ; preds = %31
  %57 = load float, ptr %1, align 4, !tbaa !82
  %58 = fsub float %16, %57
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = fsub float %16, %2
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !82
  %64 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !82
  %66 = fsub float %63, %65
  %67 = fneg float %66
  %68 = fdiv float %67, %58
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %61, float %63)
  br label %354

70:                                               ; preds = %56
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !82
  br label %354

73:                                               ; preds = %26, %22, %18
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !82
  br label %354

76:                                               ; preds = %3
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !82
  %79 = fcmp ugt float %78, %2
  br i1 %79, label %137, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 10
  %82 = load i16, ptr %81, align 2, !tbaa !128
  %83 = icmp eq i16 %82, 1
  br i1 %83, label %84, label %134

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 %13, i32 4
  %86 = load i8, ptr %85, align 4, !tbaa !90
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %134, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %90 = load i16, ptr %89, align 8, !tbaa !112
  %91 = and i16 %90, 4096
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %134

93:                                               ; preds = %88
  %94 = icmp eq i8 %86, 1
  br i1 %94, label %95, label %117

95:                                               ; preds = %93
  %96 = icmp eq i32 %11, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !82
  br label %354

100:                                              ; preds = %95
  %101 = getelementptr %struct.BezTriple, ptr %14, i64 -1, i32 0, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !82
  %103 = fsub float %78, %102
  %104 = fcmp une float %103, 0.000000e+00
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = fsub float %2, %78
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !82
  %109 = getelementptr %struct.BezTriple, ptr %14, i64 -1, i32 0, i64 1, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !82
  %111 = fsub float %108, %110
  %112 = fdiv float %111, %103
  %113 = tail call float @llvm.fmuladd.f32(float %112, float %106, float %108)
  br label %354

114:                                              ; preds = %100
  %115 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !82
  br label %354

117:                                              ; preds = %93
  %118 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !82
  %120 = fsub float %119, %78
  %121 = fcmp une float %120, 0.000000e+00
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = fsub float %2, %78
  %124 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !82
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !82
  %128 = fsub float %125, %127
  %129 = fdiv float %128, %120
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %123, float %127)
  br label %354

131:                                              ; preds = %117
  %132 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !82
  br label %354

134:                                              ; preds = %88, %84, %80
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !82
  br label %354

137:                                              ; preds = %76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #24
  store i8 0, ptr %9, align 1, !tbaa !63
  %138 = call fastcc i32 @binarysearch_bezt_index_ex(ptr noundef nonnull %1, float noundef %2, i32 noundef %11, float noundef 0x3F1A36E2E0000000, ptr noundef nonnull %9) #23
  %139 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  %145 = fpext float %2 to double
  %146 = load i32, ptr %10, align 8, !tbaa !84
  %147 = load i8, ptr %9, align 1, !tbaa !63
  %148 = zext i8 %147 to i32
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %144, double noundef %145, i32 noundef %138, i32 noundef %146, i32 noundef %148) #23
  br label %152

150:                                              ; preds = %137
  %151 = load i8, ptr %9, align 1, !tbaa !63
  br label %152

152:                                              ; preds = %150, %142
  %153 = phi i8 [ %151, %150 ], [ %147, %142 ]
  %154 = icmp eq i8 %153, 0
  %155 = zext i32 %138 to i64
  br i1 %154, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 %155, i32 0, i64 1, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !82
  br label %352

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 %155
  %161 = icmp eq i32 %138, 0
  %162 = getelementptr inbounds %struct.BezTriple, ptr %160, i64 -1
  %163 = select i1 %161, ptr %1, ptr %162
  %164 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !82
  %166 = fsub float %165, %2
  %167 = tail call float @llvm.fabs.f32(float %166)
  %168 = fcmp olt float %167, 0x3E45798EE0000000
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !82
  br label %352

172:                                              ; preds = %159
  %173 = getelementptr inbounds [3 x [3 x float]], ptr %163, i64 0, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !82
  %175 = fcmp ugt float %174, %2
  %176 = fcmp ult float %165, %2
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %342, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %163, i64 0, i64 1, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !82
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !82
  %183 = fsub float %182, %180
  %184 = fsub float %165, %174
  %185 = fsub float %2, %174
  %186 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 13
  %187 = load float, ptr %186, align 4, !tbaa !156
  %188 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 14
  %189 = load float, ptr %188, align 4, !tbaa !157
  %190 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 4
  %191 = load i8, ptr %190, align 4, !tbaa !90
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %352, label %193

193:                                              ; preds = %178
  %194 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %195 = load i16, ptr %194, align 8, !tbaa !112
  %196 = and i16 %195, 4096
  %197 = icmp ne i16 %196, 0
  %198 = fcmp oeq float %184, 0.000000e+00
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %352, label %200

200:                                              ; preds = %193
  switch i8 %191, label %352 [
    i8 2, label %201
    i8 1, label %228
    i8 3, label %230
    i8 4, label %243
    i8 5, label %254
    i8 6, label %265
    i8 7, label %276
    i8 8, label %287
    i8 9, label %298
    i8 10, label %309
    i8 11, label %320
    i8 12, label %331
  ]

201:                                              ; preds = %200
  store float %174, ptr %4, align 4, !tbaa !82
  %202 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %180, ptr %202, align 4, !tbaa !82
  %203 = getelementptr inbounds [3 x [3 x float]], ptr %163, i64 0, i64 2
  %204 = load <2 x float>, ptr %203, align 4, !tbaa !82
  store <2 x float> %204, ptr %5, align 8, !tbaa !82
  %205 = load <2 x float>, ptr %160, align 4, !tbaa !82
  store <2 x float> %205, ptr %6, align 8, !tbaa !82
  store float %165, ptr %7, align 4, !tbaa !82
  %206 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %182, ptr %206, align 4, !tbaa !82
  call void @correct_bezpart(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %207 = load float, ptr %5, align 8, !tbaa !82
  %208 = load float, ptr %6, align 8, !tbaa !82
  %209 = call fastcc i32 @findzero(float noundef %2, float noundef %174, float noundef %207, float noundef %208, float noundef %165, ptr noundef nonnull %8) #23
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %201
  %212 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %213 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !82
  %215 = load float, ptr %212, align 4, !tbaa !82
  call fastcc void @berekeny(float noundef %180, float noundef %214, float noundef %215, float noundef %182, ptr noundef nonnull %8) #23
  %216 = load float, ptr %8, align 16, !tbaa !82
  br label %352

217:                                              ; preds = %201
  %218 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %352, label %221

221:                                              ; preds = %217
  %222 = fpext float %2 to double
  %223 = fpext float %174 to double
  %224 = fpext float %207 to double
  %225 = fpext float %208 to double
  %226 = fpext float %165 to double
  %227 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %222, double noundef %223, double noundef %224, double noundef %225, double noundef %226) #23
  br label %352

228:                                              ; preds = %200
  %229 = tail call float @BLI_easing_linear_ease(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

230:                                              ; preds = %200
  %231 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %232 = load i8, ptr %231, align 1, !tbaa !158
  %233 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 12
  %234 = load float, ptr %233, align 4, !tbaa !159
  switch i8 %232, label %241 [
    i8 1, label %235
    i8 2, label %237
    i8 3, label %239
  ]

235:                                              ; preds = %230
  %236 = tail call float @BLI_easing_back_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %234) #22
  br label %352

237:                                              ; preds = %230
  %238 = tail call float @BLI_easing_back_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %234) #22
  br label %352

239:                                              ; preds = %230
  %240 = tail call float @BLI_easing_back_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %234) #22
  br label %352

241:                                              ; preds = %230
  %242 = tail call float @BLI_easing_back_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %234) #22
  br label %352

243:                                              ; preds = %200
  %244 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %245 = load i8, ptr %244, align 1, !tbaa !158
  switch i8 %245, label %252 [
    i8 1, label %246
    i8 2, label %248
    i8 3, label %250
  ]

246:                                              ; preds = %243
  %247 = tail call float @BLI_easing_bounce_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

248:                                              ; preds = %243
  %249 = tail call float @BLI_easing_bounce_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

250:                                              ; preds = %243
  %251 = tail call float @BLI_easing_bounce_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

252:                                              ; preds = %243
  %253 = tail call float @BLI_easing_bounce_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

254:                                              ; preds = %200
  %255 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %256 = load i8, ptr %255, align 1, !tbaa !158
  switch i8 %256, label %263 [
    i8 1, label %257
    i8 2, label %259
    i8 3, label %261
  ]

257:                                              ; preds = %254
  %258 = tail call float @BLI_easing_circ_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

259:                                              ; preds = %254
  %260 = tail call float @BLI_easing_circ_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

261:                                              ; preds = %254
  %262 = tail call float @BLI_easing_circ_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

263:                                              ; preds = %254
  %264 = tail call float @BLI_easing_circ_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

265:                                              ; preds = %200
  %266 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %267 = load i8, ptr %266, align 1, !tbaa !158
  switch i8 %267, label %274 [
    i8 1, label %268
    i8 2, label %270
    i8 3, label %272
  ]

268:                                              ; preds = %265
  %269 = tail call float @BLI_easing_cubic_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

270:                                              ; preds = %265
  %271 = tail call float @BLI_easing_cubic_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

272:                                              ; preds = %265
  %273 = tail call float @BLI_easing_cubic_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

274:                                              ; preds = %265
  %275 = tail call float @BLI_easing_cubic_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

276:                                              ; preds = %200
  %277 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %278 = load i8, ptr %277, align 1, !tbaa !158
  switch i8 %278, label %285 [
    i8 1, label %279
    i8 2, label %281
    i8 3, label %283
  ]

279:                                              ; preds = %276
  %280 = tail call float @BLI_easing_elastic_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %187, float noundef %189) #22
  br label %352

281:                                              ; preds = %276
  %282 = tail call float @BLI_easing_elastic_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %187, float noundef %189) #22
  br label %352

283:                                              ; preds = %276
  %284 = tail call float @BLI_easing_elastic_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %187, float noundef %189) #22
  br label %352

285:                                              ; preds = %276
  %286 = tail call float @BLI_easing_elastic_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184, float noundef %187, float noundef %189) #22
  br label %352

287:                                              ; preds = %200
  %288 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %289 = load i8, ptr %288, align 1, !tbaa !158
  switch i8 %289, label %296 [
    i8 1, label %290
    i8 2, label %292
    i8 3, label %294
  ]

290:                                              ; preds = %287
  %291 = tail call float @BLI_easing_expo_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

292:                                              ; preds = %287
  %293 = tail call float @BLI_easing_expo_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

294:                                              ; preds = %287
  %295 = tail call float @BLI_easing_expo_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

296:                                              ; preds = %287
  %297 = tail call float @BLI_easing_expo_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

298:                                              ; preds = %200
  %299 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %300 = load i8, ptr %299, align 1, !tbaa !158
  switch i8 %300, label %307 [
    i8 1, label %301
    i8 2, label %303
    i8 3, label %305
  ]

301:                                              ; preds = %298
  %302 = tail call float @BLI_easing_quad_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

303:                                              ; preds = %298
  %304 = tail call float @BLI_easing_quad_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

305:                                              ; preds = %298
  %306 = tail call float @BLI_easing_quad_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

307:                                              ; preds = %298
  %308 = tail call float @BLI_easing_quad_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

309:                                              ; preds = %200
  %310 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %311 = load i8, ptr %310, align 1, !tbaa !158
  switch i8 %311, label %318 [
    i8 1, label %312
    i8 2, label %314
    i8 3, label %316
  ]

312:                                              ; preds = %309
  %313 = tail call float @BLI_easing_quart_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

314:                                              ; preds = %309
  %315 = tail call float @BLI_easing_quart_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

316:                                              ; preds = %309
  %317 = tail call float @BLI_easing_quart_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

318:                                              ; preds = %309
  %319 = tail call float @BLI_easing_quart_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

320:                                              ; preds = %200
  %321 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %322 = load i8, ptr %321, align 1, !tbaa !158
  switch i8 %322, label %329 [
    i8 1, label %323
    i8 2, label %325
    i8 3, label %327
  ]

323:                                              ; preds = %320
  %324 = tail call float @BLI_easing_quint_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

325:                                              ; preds = %320
  %326 = tail call float @BLI_easing_quint_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

327:                                              ; preds = %320
  %328 = tail call float @BLI_easing_quint_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

329:                                              ; preds = %320
  %330 = tail call float @BLI_easing_quint_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

331:                                              ; preds = %200
  %332 = getelementptr inbounds %struct.BezTriple, ptr %163, i64 0, i32 11
  %333 = load i8, ptr %332, align 1, !tbaa !158
  switch i8 %333, label %340 [
    i8 1, label %334
    i8 2, label %336
    i8 3, label %338
  ]

334:                                              ; preds = %331
  %335 = tail call float @BLI_easing_sine_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

336:                                              ; preds = %331
  %337 = tail call float @BLI_easing_sine_ease_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

338:                                              ; preds = %331
  %339 = tail call float @BLI_easing_sine_ease_in_out(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

340:                                              ; preds = %331
  %341 = tail call float @BLI_easing_sine_ease_in(float noundef %185, float noundef %180, float noundef %183, float noundef %184) #22
  br label %352

342:                                              ; preds = %172
  %343 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %342
  %347 = fpext float %174 to double
  %348 = fpext float %165 to double
  %349 = fpext float %2 to double
  %350 = fpext float %167 to double
  %351 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %347, double noundef %348, double noundef %349, double noundef %350) #23
  br label %352

352:                                              ; preds = %178, %193, %334, %336, %338, %340, %323, %325, %327, %329, %312, %314, %316, %318, %301, %303, %305, %307, %290, %292, %294, %296, %279, %281, %283, %285, %268, %270, %272, %274, %257, %259, %261, %263, %246, %248, %250, %252, %235, %237, %239, %241, %211, %221, %217, %228, %200, %169, %342, %346, %156
  %353 = phi float [ %158, %156 ], [ %171, %169 ], [ 0.000000e+00, %346 ], [ 0.000000e+00, %342 ], [ %341, %340 ], [ %339, %338 ], [ %337, %336 ], [ %335, %334 ], [ %330, %329 ], [ %328, %327 ], [ %326, %325 ], [ %324, %323 ], [ %319, %318 ], [ %317, %316 ], [ %315, %314 ], [ %313, %312 ], [ %308, %307 ], [ %306, %305 ], [ %304, %303 ], [ %302, %301 ], [ %297, %296 ], [ %295, %294 ], [ %293, %292 ], [ %291, %290 ], [ %286, %285 ], [ %284, %283 ], [ %282, %281 ], [ %280, %279 ], [ %275, %274 ], [ %273, %272 ], [ %271, %270 ], [ %269, %268 ], [ %264, %263 ], [ %262, %261 ], [ %260, %259 ], [ %258, %257 ], [ %253, %252 ], [ %251, %250 ], [ %249, %248 ], [ %247, %246 ], [ %242, %241 ], [ %240, %239 ], [ %238, %237 ], [ %236, %235 ], [ %229, %228 ], [ %216, %211 ], [ 0.000000e+00, %221 ], [ 0.000000e+00, %217 ], [ %180, %200 ], [ %180, %193 ], [ %180, %178 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #24
  br label %354

354:                                              ; preds = %352, %105, %114, %97, %131, %122, %134, %73, %60, %70, %35, %53, %43
  %355 = phi float [ %75, %73 ], [ %37, %35 ], [ %52, %43 ], [ %55, %53 ], [ %69, %60 ], [ %72, %70 ], [ %136, %134 ], [ %99, %97 ], [ %113, %105 ], [ %116, %114 ], [ %130, %122 ], [ %133, %131 ], [ %353, %352 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret float %355
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @fcurve_eval_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #16 !PGOFuncName !160 {
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.FPoint, ptr %1, i64 %6
  %8 = load float, ptr %1, align 4, !tbaa !82
  %9 = fcmp ult float %8, %2
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !82
  br label %38

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.FPoint, ptr %7, i64 -1
  %15 = load float, ptr %14, align 4, !tbaa !82
  %16 = fcmp ugt float %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.FPoint, ptr %7, i64 -1, i32 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !82
  br label %38

20:                                               ; preds = %13
  %21 = tail call float @llvm.floor.f32(float %2)
  %22 = fsub float %2, %21
  %23 = fsub float %2, %8
  %24 = fptosi float %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.FPoint, ptr %1, i64 %25
  %27 = fcmp une float %22, 0.000000e+00
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = tail call float @llvm.fabs.f32(float %22)
  %30 = getelementptr inbounds [2 x float], ptr %26, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !82
  %32 = getelementptr inbounds %struct.FPoint, ptr %26, i64 1, i32 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !82
  %34 = tail call fastcc float @interpf(float noundef %31, float noundef %33, float noundef %29) #23
  br label %38

35:                                               ; preds = %20
  %36 = getelementptr inbounds [2 x float], ptr %26, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !82
  br label %38

38:                                               ; preds = %28, %35, %17, %10
  %39 = phi float [ %12, %10 ], [ %19, %17 ], [ %34, %28 ], [ %37, %35 ]
  ret float %39
}

; Function Attrs: optsize
declare void @evaluate_value_fmodifiers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @evaluate_fmodifiers_storage_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = load i32, ptr %11, align 4, !tbaa !149
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %17 = tail call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %16, i32 noundef 0, i16 noundef signext 3) #22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10, %2
  %20 = tail call float @evaluate_fcurve(ptr noundef nonnull %0, float noundef %1) #23
  %21 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 8
  store float %20, ptr %21, align 4, !tbaa !161
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal float @dvar_eval_singleProp(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !162 {
  %3 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %4 = tail call fastcc float @dtar_get_prop_val(ptr noundef %0, ptr noundef nonnull %3) #23
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @dvar_eval_rotDiff(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !163 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %8 = tail call fastcc ptr @dtar_get_pchan_ptr(ptr noundef %0, ptr noundef nonnull %6) #23
  %9 = tail call fastcc ptr @dtar_get_pchan_ptr(ptr noundef %0, ptr noundef nonnull %7) #23
  %10 = icmp eq ptr %8, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !149
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !149
  %17 = select i1 %10, i1 %11, i1 false
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !142
  %27 = or i16 %26, 16
  store i16 %27, ptr %25, align 2, !tbaa !142
  %28 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %29 = load i16, ptr %28, align 2, !tbaa !142
  %30 = or i16 %29, 16
  store i16 %30, ptr %28, align 2, !tbaa !142
  br label %77

31:                                               ; preds = %13
  br i1 %10, label %32, label %45

32:                                               ; preds = %31
  %33 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !142
  %41 = or i16 %40, 16
  store i16 %41, ptr %39, align 2, !tbaa !142
  %42 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !142
  %44 = and i16 %43, -17
  store i16 %44, ptr %42, align 2, !tbaa !142
  br label %77

45:                                               ; preds = %31
  br i1 %11, label %46, label %77

46:                                               ; preds = %45
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %54 = load i16, ptr %53, align 2, !tbaa !142
  %55 = and i16 %54, -17
  store i16 %55, ptr %53, align 2, !tbaa !142
  %56 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !142
  %58 = or i16 %57, 16
  store i16 %58, ptr %56, align 2, !tbaa !142
  br label %77

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %61 = load i16, ptr %60, align 2, !tbaa !142
  %62 = and i16 %61, -17
  store i16 %62, ptr %60, align 2, !tbaa !142
  %63 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1, i32 4
  %64 = load i16, ptr %63, align 2, !tbaa !142
  %65 = and i16 %64, -17
  store i16 %65, ptr %63, align 2, !tbaa !142
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 29
  call void @mat4_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %66) #22
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 29
  call void @mat4_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %67) #22
  call void @invert_qt(ptr noundef nonnull %3) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %68 = load float, ptr %5, align 16, !tbaa !82
  %69 = call fastcc float @saacos(float noundef %68) #23
  %70 = fmul float %69, 2.000000e+00
  %71 = fcmp olt float %70, 0.000000e+00
  %72 = fneg float %70
  %73 = select i1 %71, float %72, float %70
  %74 = fcmp ogt float %73, 0x400921FB60000000
  %75 = fsub float 0x401921FB60000000, %73
  %76 = select i1 %74, float %75, float %73
  br label %77

77:                                               ; preds = %24, %45, %52, %38, %59
  %78 = phi float [ %76, %59 ], [ 0.000000e+00, %38 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %45 ], [ 0.000000e+00, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret float %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @dvar_eval_locDiff(ptr nocapture noundef %0, ptr noundef %1) #0 !PGOFuncName !164 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !140
  %11 = sext i16 %10 to i32
  %12 = icmp sgt i16 %10, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %37
  %16 = phi i16 [ 0, %13 ], [ %38, %37 ]
  %17 = phi ptr [ %8, %13 ], [ %40, %37 ]
  %18 = phi i32 [ 0, %13 ], [ %39, %37 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !165
  %20 = tail call fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef %19) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !141
  %25 = icmp eq i16 %24, 16975
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %15
  %27 = load i32, ptr %14, align 4, !tbaa !149
  %28 = or i32 %27, 1
  store i32 %28, ptr %14, align 4, !tbaa !149
  %29 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !142
  %31 = or i16 %30, 16
  store i16 %31, ptr %29, align 2, !tbaa !142
  br label %37

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 0, i32 4
  %34 = load i16, ptr %33, align 2, !tbaa !142
  %35 = and i16 %34, -17
  store i16 %35, ptr %33, align 2, !tbaa !142
  %36 = add i16 %16, 1
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i16 [ %16, %26 ], [ %36, %32 ]
  %39 = add nuw nsw i32 %18, 1
  %40 = getelementptr inbounds %struct.DriverTarget, ptr %17, i64 1
  %41 = icmp eq i32 %39, %11
  br i1 %41, label %42, label %15, !llvm.loop !166

42:                                               ; preds = %37
  %43 = sext i16 %38 to i32
  %44 = icmp slt i16 %38, %10
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  br i1 %12, label %46, label %102

46:                                               ; preds = %45
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  br label %58

49:                                               ; preds = %42
  %50 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %104, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %8, align 8, !tbaa !165
  %55 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !165
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %43, ptr noundef %54, ptr noundef %56) #23
  br label %104

58:                                               ; preds = %46, %94
  %59 = phi i32 [ 0, %46 ], [ %97, %94 ]
  %60 = phi ptr [ %8, %46 ], [ %98, %94 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !165
  %62 = call fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef %61) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 18
  %64 = load ptr, ptr %63, align 8, !tbaa !167
  %65 = getelementptr inbounds %struct.DriverTarget, ptr %60, i64 0, i32 2
  %66 = call ptr @BKE_pose_channel_find_name(ptr noundef %64, ptr noundef nonnull %65) #22
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %struct.DriverTarget, ptr %60, i64 0, i32 4
  %69 = load i16, ptr %68, align 2, !tbaa !142
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %67, label %84, label %73

73:                                               ; preds = %58
  br i1 %72, label %81, label %74

74:                                               ; preds = %73
  %75 = and i32 %70, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %78) #22
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %62, ptr noundef nonnull %66, ptr noundef nonnull %6, i16 noundef signext 2, i16 noundef signext 1) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %47) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  br label %94

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %80) #23
  br label %94

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %82) #23
  %83 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %83, ptr noundef nonnull %5) #22
  br label %94

84:                                               ; preds = %58
  br i1 %72, label %92, label %85

85:                                               ; preds = %84
  %86 = and i32 %70, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  %89 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %89) #22
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %62, ptr noundef null, ptr noundef nonnull %7, i16 noundef signext 0, i16 noundef signext 1) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %48) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  br label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %91) #23
  br label %94

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %93) #23
  br label %94

94:                                               ; preds = %92, %90, %88, %81, %79, %77
  %95 = icmp eq i32 %59, 0
  %96 = select i1 %95, ptr %3, ptr %4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %96, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  %97 = add nuw nsw i32 %59, 1
  %98 = getelementptr inbounds %struct.DriverTarget, ptr %60, i64 1
  %99 = load i16, ptr %9, align 8, !tbaa !140
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %58, label %102, !llvm.loop !171

102:                                              ; preds = %94, %2, %45
  %103 = call fastcc float @len_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  br label %104

104:                                              ; preds = %49, %53, %102
  %105 = phi float [ %103, %102 ], [ 0.000000e+00, %53 ], [ 0.000000e+00, %49 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret float %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @dvar_eval_transChan(ptr nocapture noundef %0, ptr noundef %1) #0 !PGOFuncName !172 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !165
  %9 = tail call fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef %8) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !141
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !149
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !149
  %19 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !142
  %21 = or i16 %20, 16
  store i16 %21, ptr %19, align 2, !tbaa !142
  br label %103

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !142
  %25 = and i16 %24, -17
  store i16 %25, ptr %23, align 2, !tbaa !142
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !167
  %28 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 2
  %29 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %27, ptr noundef nonnull %28) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 26
  %33 = load i16, ptr %32, align 4, !tbaa !173
  %34 = icmp sgt i16 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %36) #23
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i8 [ 1, %35 ], [ 0, %31 ]
  %39 = phi i16 [ %33, %35 ], [ 1, %31 ]
  %40 = load i16, ptr %23, align 2, !tbaa !142
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = and i32 %41, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %48) #22
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %3, i16 noundef signext 2, i16 noundef signext 1) #22
  br label %74

49:                                               ; preds = %44
  call void @BKE_pchan_to_mat4(ptr noundef nonnull %29, ptr noundef nonnull %3) #22
  br label %74

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef nonnull %52) #22
  br label %74

53:                                               ; preds = %22
  %54 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 83
  %55 = load i16, ptr %54, align 8, !tbaa !175
  %56 = icmp sgt i16 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %58) #23
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i8 [ 1, %57 ], [ 0, %53 ]
  %61 = phi i16 [ %55, %57 ], [ 1, %53 ]
  %62 = load i16, ptr %23, align 2, !tbaa !142
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = and i32 %63, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %70) #22
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 1) #22
  br label %74

71:                                               ; preds = %66
  call void @BKE_object_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %3) #22
  br label %74

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %73) #22
  br label %74

74:                                               ; preds = %72, %71, %69, %50, %49, %47
  %75 = phi i8 [ %38, %47 ], [ %38, %49 ], [ %38, %50 ], [ %60, %69 ], [ %60, %71 ], [ %60, %72 ]
  %76 = phi i16 [ %39, %47 ], [ %39, %49 ], [ %39, %50 ], [ %61, %69 ], [ %61, %71 ], [ %61, %72 ]
  %77 = getelementptr inbounds %struct.DriverVar, ptr %1, i64 0, i32 3, i64 0, i32 3
  %78 = load i16, ptr %77, align 8, !tbaa !176
  %79 = icmp sgt i16 %78, 8
  br i1 %79, label %103, label %80

80:                                               ; preds = %74
  %81 = icmp sgt i16 %78, 5
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %3) #22
  %83 = load i16, ptr %77, align 8, !tbaa !176
  %84 = sext i16 %83 to i64
  %85 = add nsw i64 %84, -6
  %86 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %103

88:                                               ; preds = %80
  %89 = icmp sgt i16 %78, 2
  br i1 %89, label %90, label %99

90:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @mat4_to_eulO(ptr noundef nonnull %6, i16 noundef signext %76, ptr noundef nonnull %3) #22
  %91 = icmp eq i8 %75, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  call void @compatible_eul(ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  br label %93

93:                                               ; preds = %92, %90
  %94 = load i16, ptr %77, align 8, !tbaa !176
  %95 = sext i16 %94 to i64
  %96 = add nsw i64 %95, -3
  %97 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  br label %103

99:                                               ; preds = %88
  %100 = sext i16 %78 to i64
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 %100
  %102 = load float, ptr %101, align 4, !tbaa !82
  br label %103

103:                                              ; preds = %74, %99, %93, %82, %15
  %104 = phi float [ 0.000000e+00, %15 ], [ %87, %82 ], [ %98, %93 ], [ %102, %99 ], [ 0.000000e+00, %74 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret float %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @dtar_get_prop_val(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !177 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store i32 -1, ptr %6, align 4, !tbaa !178
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %116, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !165
  %12 = tail call fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %20) #23
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !149
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !149
  %26 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 4
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = or i16 %27, 16
  store i16 %28, ptr %26, align 2, !tbaa !142
  br label %116

29:                                               ; preds = %10
  call void @RNA_id_pointer_create(ptr noundef nonnull %12, ptr noundef nonnull %3) #22
  %30 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = call zeroext i8 @RNA_path_resolve_property_full(ptr noundef nonnull %3, ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8, !tbaa !43
  %36 = call zeroext i8 @RNA_property_array_check(ptr noundef %35) #22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %78, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %6, align 4, !tbaa !178
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load ptr, ptr %5, align 8, !tbaa !43
  %43 = call i32 @RNA_property_array_length(ptr noundef nonnull %4, ptr noundef %42) #22
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8, !tbaa !43
  %47 = call i32 @RNA_property_type(ptr noundef %46) #22
  switch i32 %47, label %111 [
    i32 0, label %48
    i32 1, label %53
    i32 2, label %58
  ]

48:                                               ; preds = %45
  %49 = load ptr, ptr %5, align 8, !tbaa !43
  %50 = load i32, ptr %6, align 4, !tbaa !178
  %51 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %4, ptr noundef %49, i32 noundef %50) #22
  %52 = sitofp i32 %51 to float
  br label %111

53:                                               ; preds = %45
  %54 = load ptr, ptr %5, align 8, !tbaa !43
  %55 = load i32, ptr %6, align 4, !tbaa !178
  %56 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %4, ptr noundef %54, i32 noundef %55) #22
  %57 = sitofp i32 %56 to float
  br label %111

58:                                               ; preds = %45
  %59 = load ptr, ptr %5, align 8, !tbaa !43
  %60 = load i32, ptr %6, align 4, !tbaa !178
  %61 = call float @RNA_property_float_get_index(ptr noundef nonnull %4, ptr noundef %59, i32 noundef %60) #22
  br label %111

62:                                               ; preds = %41, %38
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  %68 = load ptr, ptr %30, align 8, !tbaa !59
  %69 = load i32, ptr %6, align 4, !tbaa !178
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %67, ptr noundef %68, i32 noundef %69) #23
  br label %71

71:                                               ; preds = %66, %62
  %72 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %73 = load i32, ptr %72, align 4, !tbaa !149
  %74 = or i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !149
  %75 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 4
  %76 = load i16, ptr %75, align 2, !tbaa !142
  %77 = or i16 %76, 16
  store i16 %77, ptr %75, align 2, !tbaa !142
  br label %116

78:                                               ; preds = %34
  %79 = load ptr, ptr %5, align 8, !tbaa !43
  %80 = call i32 @RNA_property_type(ptr noundef %79) #22
  switch i32 %80, label %111 [
    i32 0, label %81
    i32 1, label %85
    i32 2, label %89
    i32 4, label %92
  ]

81:                                               ; preds = %78
  %82 = load ptr, ptr %5, align 8, !tbaa !43
  %83 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %4, ptr noundef %82) #22
  %84 = sitofp i32 %83 to float
  br label %111

85:                                               ; preds = %78
  %86 = load ptr, ptr %5, align 8, !tbaa !43
  %87 = call i32 @RNA_property_int_get(ptr noundef nonnull %4, ptr noundef %86) #22
  %88 = sitofp i32 %87 to float
  br label %111

89:                                               ; preds = %78
  %90 = load ptr, ptr %5, align 8, !tbaa !43
  %91 = call float @RNA_property_float_get(ptr noundef nonnull %4, ptr noundef %90) #22
  br label %111

92:                                               ; preds = %78
  %93 = load ptr, ptr %5, align 8, !tbaa !43
  %94 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %93) #22
  %95 = sitofp i32 %94 to float
  br label %111

96:                                               ; preds = %29
  %97 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  %102 = load ptr, ptr %30, align 8, !tbaa !59
  %103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %101, ptr noundef %102) #23
  br label %104

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds %struct.ChannelDriver, ptr %0, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !149
  %107 = or i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !149
  %108 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 4
  %109 = load i16, ptr %108, align 2, !tbaa !142
  %110 = or i16 %109, 16
  store i16 %110, ptr %108, align 2, !tbaa !142
  br label %116

111:                                              ; preds = %48, %53, %58, %45, %78, %92, %89, %85, %81
  %112 = phi float [ 0.000000e+00, %45 ], [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], [ 0.000000e+00, %78 ], [ %95, %92 ], [ %91, %89 ], [ %88, %85 ], [ %84, %81 ]
  %113 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 4
  %114 = load i16, ptr %113, align 2, !tbaa !142
  %115 = and i16 %114, -17
  store i16 %115, ptr %113, align 2, !tbaa !142
  br label %116

116:                                              ; preds = %2, %111, %104, %71, %22
  %117 = phi float [ 0.000000e+00, %22 ], [ %112, %111 ], [ 0.000000e+00, %71 ], [ 0.000000e+00, %104 ], [ 0.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret float %117
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef readonly %0) unnamed_addr #16 !PGOFuncName !179 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !141
  %6 = icmp eq i16 %5, 16975
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %3, %1
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi ptr [ %0, %11 ], [ %9, %7 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dtar_get_pchan_ptr(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !181 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !165
  %8 = tail call fastcc ptr @dtar_id_ensure_proxy_from(ptr noundef %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !141
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds %struct.DriverTarget, ptr %1, i64 0, i32 2
  %18 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %16, ptr noundef nonnull %17) #22
  br label %19

19:                                               ; preds = %6, %10, %2, %14
  %20 = phi ptr [ %18, %14 ], [ null, %2 ], [ null, %10 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @invert_qt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #17 !PGOFuncName !182 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #22
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraint_mat_convertspace(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !183 {
  %3 = load float, ptr %1, align 4, !tbaa !82
  store float %3, ptr %0, align 4, !tbaa !82
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 !PGOFuncName !184 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #23
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #14 !PGOFuncName !185 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = load float, ptr %2, align 4, !tbaa !82
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #20 !PGOFuncName !186 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #23
  %3 = tail call float @sqrtf(float noundef %2) #22
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !187 {
  %3 = load float, ptr %0, align 4, !tbaa !82
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BKE_pchan_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @compatible_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !188 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc i32 @findzero(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #17 !PGOFuncName !190 {
  %7 = fsub float %1, %0
  %8 = fpext float %7 to double
  %9 = fsub float %2, %1
  %10 = fmul float %9, 3.000000e+00
  %11 = fpext float %10 to double
  %12 = tail call float @llvm.fmuladd.f32(float %2, float -2.000000e+00, float %1)
  %13 = fadd float %12, %3
  %14 = fmul float %13, 3.000000e+00
  %15 = fpext float %14 to double
  %16 = fsub float %4, %1
  %17 = fsub float %2, %3
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 3.000000e+00, float %16)
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %20, label %113

20:                                               ; preds = %6
  %21 = fpext float %18 to double
  %22 = fdiv double %15, %21
  %23 = fdiv double %11, %21
  %24 = fdiv double %8, %21
  %25 = fdiv double %22, 3.000000e+00
  %26 = fdiv double %23, 3.000000e+00
  %27 = fneg double %25
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %25, double %26)
  %29 = fmul double %25, 2.000000e+00
  %30 = fmul double %25, %29
  %31 = fmul double %23, %27
  %32 = tail call double @llvm.fmuladd.f64(double %30, double %25, double %31)
  %33 = fadd double %24, %32
  %34 = fmul double %33, 5.000000e-01
  %35 = fmul double %28, %28
  %36 = fmul double %28, %35
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %36)
  %38 = fcmp ogt double %37, 0.000000e+00
  %39 = fneg double %34
  br i1 %38, label %40, label %53

40:                                               ; preds = %20
  %41 = tail call double @sqrt(double noundef %37) #22
  %42 = fsub double %41, %34
  %43 = tail call fastcc double @sqrt3d(double noundef %42) #23
  %44 = fsub double %39, %41
  %45 = tail call fastcc double @sqrt3d(double noundef %44) #23
  %46 = fadd double %43, %45
  %47 = fsub double %46, %25
  %48 = fptrunc double %47 to float
  store float %48, ptr %5, align 4, !tbaa !82
  %49 = fcmp oge float %48, 0xBDDB7CDFE0000000
  %50 = fcmp ole float %48, 0x3FF0000100000000
  %51 = and i1 %49, %50
  %52 = zext i1 %51 to i32
  br label %165

53:                                               ; preds = %20
  %54 = fcmp oeq double %37, 0.000000e+00
  br i1 %54, label %55, label %73

55:                                               ; preds = %53
  %56 = tail call fastcc double @sqrt3d(double noundef %39) #23
  %57 = tail call double @llvm.fmuladd.f64(double %56, double 2.000000e+00, double %27)
  %58 = fptrunc double %57 to float
  store float %58, ptr %5, align 4, !tbaa !82
  %59 = fcmp oge float %58, 0xBDDB7CDFE0000000
  %60 = fcmp ole float %58, 0x3FF0000100000000
  %61 = and i1 %59, %60
  %62 = zext i1 %61 to i32
  %63 = fneg double %56
  %64 = fsub double %63, %25
  %65 = fptrunc double %64 to float
  %66 = zext i1 %61 to i64
  %67 = getelementptr inbounds float, ptr %5, i64 %66
  store float %65, ptr %67, align 4, !tbaa !82
  %68 = fcmp ult float %65, 0xBDDB7CDFE0000000
  %69 = fcmp ugt float %65, 0x3FF0000100000000
  %70 = or i1 %68, %69
  %71 = select i1 %61, i32 2, i32 1
  %72 = select i1 %70, i32 %62, i32 %71
  br label %165

73:                                               ; preds = %53
  %74 = fneg double %36
  %75 = tail call double @sqrt(double noundef %74) #22
  %76 = fdiv double %39, %75
  %77 = tail call double @acos(double noundef %76) #22
  %78 = fneg double %28
  %79 = tail call double @sqrt(double noundef %78) #22
  %80 = fdiv double %77, 3.000000e+00
  %81 = tail call double @cos(double noundef %80) #22
  %82 = fmul double %81, -3.000000e+00
  %83 = tail call double @llvm.fmuladd.f64(double %82, double %81, double 3.000000e+00)
  %84 = tail call double @sqrt(double noundef %83) #22
  %85 = fmul double %79, 2.000000e+00
  %86 = tail call double @llvm.fmuladd.f64(double %85, double %81, double %27)
  %87 = fptrunc double %86 to float
  store float %87, ptr %5, align 4, !tbaa !82
  %88 = fcmp oge float %87, 0xBDDB7CDFE0000000
  %89 = fcmp ole float %87, 0x3FF0000100000000
  %90 = and i1 %88, %89
  %91 = zext i1 %90 to i32
  %92 = fneg double %79
  %93 = fadd double %81, %84
  %94 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %27)
  %95 = fptrunc double %94 to float
  %96 = zext i1 %90 to i64
  %97 = getelementptr inbounds float, ptr %5, i64 %96
  store float %95, ptr %97, align 4, !tbaa !82
  %98 = fcmp ult float %95, 0xBDDB7CDFE0000000
  %99 = fcmp ugt float %95, 0x3FF0000100000000
  %100 = or i1 %98, %99
  %101 = select i1 %90, i32 2, i32 1
  %102 = select i1 %100, i32 %91, i32 %101
  %103 = fsub double %81, %84
  %104 = tail call double @llvm.fmuladd.f64(double %92, double %103, double %27)
  %105 = fptrunc double %104 to float
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds float, ptr %5, i64 %106
  store float %105, ptr %107, align 4, !tbaa !82
  %108 = fcmp oge float %105, 0xBDDB7CDFE0000000
  %109 = fcmp ole float %105, 0x3FF0000100000000
  %110 = and i1 %108, %109
  %111 = zext i1 %110 to i32
  %112 = add nuw nsw i32 %102, %111
  br label %165

113:                                              ; preds = %6
  %114 = fcmp une float %14, 0.000000e+00
  br i1 %114, label %115, label %152

115:                                              ; preds = %113
  %116 = fmul double %15, -4.000000e+00
  %117 = fmul double %116, %8
  %118 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %117)
  %119 = fcmp ogt double %118, 0.000000e+00
  br i1 %119, label %120, label %141

120:                                              ; preds = %115
  %121 = tail call double @sqrt(double noundef %118) #22
  %122 = fneg double %11
  %123 = fsub double %122, %121
  %124 = fmul double %15, 2.000000e+00
  %125 = fdiv double %123, %124
  %126 = fptrunc double %125 to float
  store float %126, ptr %5, align 4, !tbaa !82
  %127 = fcmp oge float %126, 0xBDDB7CDFE0000000
  %128 = fcmp ole float %126, 0x3FF0000100000000
  %129 = and i1 %127, %128
  %130 = zext i1 %129 to i32
  %131 = fsub double %121, %11
  %132 = fdiv double %131, %124
  %133 = fptrunc double %132 to float
  %134 = zext i1 %129 to i64
  %135 = getelementptr inbounds float, ptr %5, i64 %134
  store float %133, ptr %135, align 4, !tbaa !82
  %136 = fcmp ult float %133, 0xBDDB7CDFE0000000
  %137 = fcmp ugt float %133, 0x3FF0000100000000
  %138 = or i1 %136, %137
  %139 = select i1 %129, i32 2, i32 1
  %140 = select i1 %138, i32 %130, i32 %139
  br label %165

141:                                              ; preds = %115
  %142 = fcmp oeq double %118, 0.000000e+00
  br i1 %142, label %143, label %165

143:                                              ; preds = %141
  %144 = fneg double %11
  %145 = fmul double %15, 2.000000e+00
  %146 = fdiv double %144, %145
  %147 = fptrunc double %146 to float
  store float %147, ptr %5, align 4, !tbaa !82
  %148 = fcmp oge float %147, 0xBDDB7CDFE0000000
  %149 = fcmp ole float %147, 0x3FF0000100000000
  %150 = and i1 %148, %149
  %151 = zext i1 %150 to i32
  br label %165

152:                                              ; preds = %113
  %153 = fcmp une float %10, 0.000000e+00
  br i1 %153, label %154, label %162

154:                                              ; preds = %152
  %155 = fneg double %8
  %156 = fdiv double %155, %11
  %157 = fptrunc double %156 to float
  store float %157, ptr %5, align 4, !tbaa !82
  %158 = fcmp oge float %157, 0xBDDB7CDFE0000000
  %159 = fcmp ole float %157, 0x3FF0000100000000
  %160 = and i1 %158, %159
  %161 = zext i1 %160 to i32
  br label %165

162:                                              ; preds = %152
  %163 = fcmp oeq float %7, 0.000000e+00
  br i1 %163, label %164, label %165

164:                                              ; preds = %162
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  br label %165

165:                                              ; preds = %120, %73, %55, %154, %143, %40, %141, %162, %164
  %166 = phi i32 [ 1, %164 ], [ 0, %162 ], [ 0, %141 ], [ %52, %40 ], [ %151, %143 ], [ %161, %154 ], [ %72, %55 ], [ %112, %73 ], [ %140, %120 ]
  ret i32 %166
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @berekeny(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4) unnamed_addr #14 !PGOFuncName !191 {
  %6 = fsub float %1, %0
  %7 = fmul float %6, 3.000000e+00
  %8 = tail call float @llvm.fmuladd.f32(float %1, float -2.000000e+00, float %0)
  %9 = fadd float %8, %2
  %10 = fmul float %9, 3.000000e+00
  %11 = fsub float %3, %0
  %12 = fsub float %1, %2
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 3.000000e+00, float %11)
  %14 = load float, ptr %4, align 4, !tbaa !82
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %7, float %0)
  %16 = fmul float %14, %14
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %10, float %15)
  %18 = fmul float %14, %16
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %13, float %17)
  store float %19, ptr %4, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare float @BLI_easing_linear_ease(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_back_ease_in(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_back_ease_out(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_back_ease_in_out(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_bounce_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_bounce_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_bounce_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_circ_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_circ_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_circ_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_cubic_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_cubic_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_cubic_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_elastic_ease_in(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_elastic_ease_out(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_elastic_ease_in_out(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_expo_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_expo_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_expo_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quad_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quad_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quad_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quart_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quart_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quart_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quint_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quint_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_quint_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_sine_ease_in(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_sine_ease_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_easing_sine_ease_in_out(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @sqrt3d(double noundef %0) unnamed_addr #17 !PGOFuncName !192 {
  %2 = fcmp oeq double %0, 0.000000e+00
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0.000000e+00
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = fneg double %0
  %7 = tail call double @log(double noundef %6) #22
  %8 = fdiv double %7, 3.000000e+00
  %9 = tail call double @exp(double noundef %8) #22
  %10 = fneg double %9
  br label %15

11:                                               ; preds = %3
  %12 = tail call double @log(double noundef %0) #22
  %13 = fdiv double %12, 3.000000e+00
  %14 = tail call double @exp(double noundef %13) #22
  br label %15

15:                                               ; preds = %1, %11, %5
  %16 = phi double [ %10, %5 ], [ %14, %11 ], [ 0.000000e+00, %1 ]
  ret double %16
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #9 !PGOFuncName !193 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }

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
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!39, !36, i64 0}
!54 = !{!35, !36, i64 0}
!55 = distinct !{!55, !52}
!56 = !{!"fcurve.c:BLI_listbase_clear"}
!57 = !{!48, !36, i64 272}
!58 = distinct !{!58, !52}
!59 = !{!60, !36, i64 8}
!60 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !42, i64 48, !42, i64 50, !40, i64 52}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !52}
!63 = !{!37, !37, i64 0}
!64 = !{!65, !36, i64 0}
!65 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !40, i64 80, !40, i64 84, !42, i64 88, !42, i64 90, !41, i64 92}
!66 = !{!67, !36, i64 120}
!67 = !{!"bAction", !68, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!68 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!69 = !{!65, !36, i64 48}
!70 = !{!35, !40, i64 76}
!71 = distinct !{!71, !52}
!72 = distinct !{!72, !52}
!73 = !{!74, !36, i64 16}
!74 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!75 = distinct !{!75, !52}
!76 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!77 = !{!78, !36, i64 0}
!78 = !{!"PointerRNA", !79, i64 0, !36, i64 8, !36, i64 16}
!79 = !{!"", !36, i64 0}
!80 = distinct !{!80, !52}
!81 = !{!"fcurve.c:binarysearch_bezt_index_ex"}
!82 = !{!41, !41, i64 0}
!83 = distinct !{!83, !52}
!84 = !{!35, !40, i64 64}
!85 = !{i16 0, i16 2}
!86 = !{!87, !37, i64 52}
!87 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!88 = !{!87, !37, i64 51}
!89 = !{!87, !37, i64 53}
!90 = !{!87, !37, i64 48}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, !52}
!93 = !{!94, !40, i64 2100}
!94 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!95 = !{!"fcurve.c:get_fcurve_end_keyframes"}
!96 = distinct !{!96, !52}
!97 = distinct !{!97, !52}
!98 = !{!"fcurve.c:min_fff"}
!99 = !{!"fcurve.c:max_fff"}
!100 = !{!"fcurve.c:min_ff"}
!101 = !{!"fcurve.c:max_ff"}
!102 = !{!35, !36, i64 32}
!103 = !{!104, !42, i64 90}
!104 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !42, i64 88, !42, i64 90, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108}
!105 = !{!104, !42, i64 88}
!106 = !{!104, !36, i64 16}
!107 = !{!108, !40, i64 20}
!108 = !{!"FMod_Generator", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!109 = !{!110, !40, i64 20}
!110 = !{!"FMod_FunctionGenerator", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 20}
!111 = distinct !{!111, !52}
!112 = !{!35, !42, i64 72}
!113 = !{!35, !36, i64 16}
!114 = !{!115, !40, i64 32}
!115 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !37, i64 40, !116, i64 104}
!116 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !42, i64 12, !42, i64 14}
!117 = !{i8 0, i8 2}
!118 = !{!119, !41, i64 16}
!119 = !{!"CfraElem", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 20}
!120 = distinct !{!120, !52}
!121 = !{!119, !40, i64 20}
!122 = !{!104, !41, i64 96}
!123 = !{!104, !41, i64 100}
!124 = distinct !{!124, !52}
!125 = distinct !{!125, !52}
!126 = !{!87, !37, i64 49}
!127 = !{!87, !37, i64 50}
!128 = !{!35, !42, i64 74}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = !{i64 0, i64 36, !63, i64 36, i64 4, !82, i64 40, i64 4, !82, i64 44, i64 4, !82, i64 48, i64 1, !63, i64 49, i64 1, !63, i64 50, i64 1, !63, i64 51, i64 1, !63, i64 52, i64 1, !63, i64 53, i64 1, !63, i64 54, i64 1, !63, i64 55, i64 1, !63, i64 56, i64 4, !82, i64 60, i64 4, !82, i64 64, i64 4, !82, i64 68, i64 4, !63}
!132 = distinct !{!132, !52}
!133 = distinct !{!133, !52}
!134 = distinct !{!134, !52}
!135 = distinct !{!135, !52}
!136 = distinct !{!136, !52}
!137 = !{!50, !42, i64 530}
!138 = !{!139, !40, i64 8}
!139 = !{!"DriverVarTypeInfo", !36, i64 0, !40, i64 8, !37, i64 16, !37, i64 80}
!140 = !{!50, !42, i64 528}
!141 = !{!42, !42, i64 0}
!142 = !{!60, !42, i64 50}
!143 = !{!60, !40, i64 52}
!144 = distinct !{!144, !52}
!145 = !{!"fcurve.c:get_dvar_typeinfo"}
!146 = !{!139, !36, i64 0}
!147 = !{!50, !41, i64 532}
!148 = !{!"fcurve.c:evaluate_driver"}
!149 = !{!48, !40, i64 292}
!150 = !{!48, !40, i64 288}
!151 = !{!48, !41, i64 280}
!152 = distinct !{!152, !52}
!153 = !{!50, !36, i64 8}
!154 = distinct !{!154, !52}
!155 = !{!"fcurve.c:fcurve_eval_keyframes"}
!156 = !{!87, !41, i64 60}
!157 = !{!87, !41, i64 64}
!158 = !{!87, !37, i64 55}
!159 = !{!87, !41, i64 56}
!160 = !{!"fcurve.c:fcurve_eval_samples"}
!161 = !{!35, !41, i64 68}
!162 = !{!"fcurve.c:dvar_eval_singleProp"}
!163 = !{!"fcurve.c:dvar_eval_rotDiff"}
!164 = !{!"fcurve.c:dvar_eval_locDiff"}
!165 = !{!60, !36, i64 0}
!166 = distinct !{!166, !52}
!167 = !{!168, !36, i64 288}
!168 = !{!"Object", !68, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !169, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !170, i64 1304, !170, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!169 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!170 = !{!"long", !37, i64 0}
!171 = distinct !{!171, !52}
!172 = !{!"fcurve.c:dvar_eval_transChan"}
!173 = !{!174, !42, i64 268}
!174 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !41, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !41, i64 524, !41, i64 528, !41, i64 532, !36, i64 536}
!175 = !{!168, !42, i64 1040}
!176 = !{!60, !42, i64 48}
!177 = !{!"fcurve.c:dtar_get_prop_val"}
!178 = !{!40, !40, i64 0}
!179 = !{!"fcurve.c:dtar_id_ensure_proxy_from"}
!180 = !{!168, !36, i64 248}
!181 = !{!"fcurve.c:dtar_get_pchan_ptr"}
!182 = !{!"fcurve.c:saacos"}
!183 = !{!"fcurve.c:copy_v3_v3"}
!184 = !{!"fcurve.c:len_v3v3"}
!185 = !{!"fcurve.c:sub_v3_v3v3"}
!186 = !{!"fcurve.c:len_v3"}
!187 = !{!"fcurve.c:dot_v3v3"}
!188 = !{!"fcurve.c:BLI_listbase_is_single"}
!189 = !{!39, !36, i64 8}
!190 = !{!"fcurve.c:findzero"}
!191 = !{!"fcurve.c:berekeny"}
!192 = !{!"fcurve.c:sqrt3d"}
!193 = !{!"fcurve.c:interpf"}

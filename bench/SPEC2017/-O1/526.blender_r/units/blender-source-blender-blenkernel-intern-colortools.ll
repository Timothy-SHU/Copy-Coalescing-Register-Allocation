; ModuleID = 'blender/source/blender/blenkernel/intern/colortools.c'
source_filename = "blender/source/blender/blenkernel/intern/colortools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"curve points\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"new curvemap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"premul table\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CurveMapping\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"temp historgram bins\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"waveform point channel 1\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"waveform point channel 2\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"waveform point channel 3\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vectorscope point channel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"beztarr\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dist table\00", align 1
@switch.table.curvemap_reset = private unnamed_addr constant [7 x i16] [i16 2, i16 4, i16 4, i16 2, i16 9, i16 4, i16 4], align 2

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_set_defaults(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  store i32 1, ptr %0, align 8, !tbaa !34
  %7 = icmp eq i32 %1, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !41
  br label %10

10:                                               ; preds = %8, %6
  %11 = fcmp olt float %2, %4
  %12 = select i1 %11, float %2, float %4
  %13 = fcmp olt float %3, %5
  %14 = select i1 %13, float %3, float %5
  %15 = fcmp ogt float %2, %4
  %16 = select i1 %15, float %2, float %4
  %17 = fcmp ogt float %3, %5
  %18 = select i1 %17, float %3, float %5
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 4
  tail call void @BLI_rctf_init(ptr noundef nonnull %19, float noundef %12, float noundef %16, float noundef %14, float noundef %18) #17
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !42
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 2
  store float 1.000000e+00, ptr %22, align 4, !tbaa !43
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !43
  store float 1.000000e+00, ptr %21, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 2
  store float 1.000000e+00, ptr %25, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 1
  store float 1.000000e+00, ptr %26, align 4, !tbaa !43
  store float 1.000000e+00, ptr %24, align 8, !tbaa !43
  %27 = icmp sgt i32 %1, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %10
  %29 = zext nneg i32 %1 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %40, %30 ]
  %32 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %31
  %33 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %31, i32 1
  store i16 1, ptr %33, align 2, !tbaa !44
  store i16 2, ptr %32, align 8, !tbaa !48
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %35 = tail call ptr %34(i64 noundef 24, ptr noundef nonnull @.str) #17
  %36 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %31, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !50
  store float %2, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 0, i32 1
  store float %3, ptr %37, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 1
  store float %4, ptr %38, align 4, !tbaa !51
  %39 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 1, i32 1
  store float %5, ptr %39, align 4, !tbaa !53
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %29
  br i1 %41, label %42, label %30, !llvm.loop !54

42:                                               ; preds = %30, %10
  %43 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  store i32 0, ptr %43, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @curvemapping_add(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.1) #17
  store i32 1, ptr %7, align 8, !tbaa !34
  %8 = icmp eq i32 %0, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 1
  store i32 3, ptr %10, align 4, !tbaa !41
  br label %11

11:                                               ; preds = %9, %5
  %12 = fcmp olt float %1, %3
  %13 = select i1 %12, float %1, float %3
  %14 = fcmp olt float %2, %4
  %15 = select i1 %14, float %2, float %4
  %16 = fcmp ogt float %1, %3
  %17 = select i1 %16, float %1, float %3
  %18 = fcmp ogt float %2, %4
  %19 = select i1 %18, float %2, float %4
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 4
  tail call void @BLI_rctf_init(ptr noundef nonnull %20, float noundef %13, float noundef %17, float noundef %15, float noundef %19) #17
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !42
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 8
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 8, i64 2
  store float 1.000000e+00, ptr %23, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 8, i64 1
  store float 1.000000e+00, ptr %24, align 4, !tbaa !43
  store float 1.000000e+00, ptr %22, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 9
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 9, i64 2
  store float 1.000000e+00, ptr %26, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 9, i64 1
  store float 1.000000e+00, ptr %27, align 4, !tbaa !43
  store float 1.000000e+00, ptr %25, align 8, !tbaa !43
  %28 = icmp sgt i32 %0, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %11
  %30 = zext nneg i32 %0 to i64
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %41, %31 ]
  %33 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 6, i64 %32
  %34 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 6, i64 %32, i32 1
  store i16 1, ptr %34, align 2, !tbaa !44
  store i16 2, ptr %33, align 8, !tbaa !48
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %36 = tail call ptr %35(i64 noundef 24, ptr noundef nonnull @.str) #17
  %37 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 6, i64 %32, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !50
  store float %1, ptr %36, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.CurveMapPoint, ptr %36, i64 0, i32 1
  store float %2, ptr %38, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.CurveMapPoint, ptr %36, i64 1
  store float %3, ptr %39, align 4, !tbaa !51
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %36, i64 1, i32 1
  store float %4, ptr %40, align 4, !tbaa !53
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, %30
  br i1 %42, label %43, label %31, !llvm.loop !54

43:                                               ; preds = %31, %11
  %44 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 3
  store i32 0, ptr %44, align 4, !tbaa !57
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_free_data(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %21
  %3 = phi i64 [ 0, %1 ], [ %22, %21 ]
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %3, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef nonnull %5) #17
  store ptr null, ptr %4, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %3, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %14(ptr noundef nonnull %11) #17
  store ptr null, ptr %10, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %3, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %20(ptr noundef nonnull %17) #17
  store ptr null, ptr %16, align 8, !tbaa !59
  br label %21

21:                                               ; preds = %15, %19
  %22 = add nuw nsw i64 %3, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %2, !llvm.loop !60

24:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1, %22
  %4 = phi i64 [ %23, %22 ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %9(ptr noundef nonnull %6) #17
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %15(ptr noundef nonnull %12) #17
  store ptr null, ptr %11, align 8, !tbaa !58
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %21(ptr noundef nonnull %18) #17
  store ptr null, ptr %17, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %20, %16
  %23 = add nuw nsw i64 %4, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %3, !llvm.loop !60

25:                                               ; preds = %22
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %26(ptr noundef nonnull %0) #17
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_copy_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false), !tbaa.struct !61
  br label %3

3:                                                ; preds = %2, %28
  %4 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %10 = tail call ptr %9(ptr noundef nonnull %6) #17
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %18 = tail call ptr %17(ptr noundef nonnull %14) #17
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %26 = tail call ptr %25(ptr noundef nonnull %22) #17
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !59
  br label %28

28:                                               ; preds = %20, %24
  %29 = add nuw nsw i64 %4, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %3, !llvm.loop !64

31:                                               ; preds = %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @curvemapping_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %5 = tail call ptr %4(ptr noundef nonnull %0) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %5, ptr noundef nonnull align 8 dereferenceable(384) %0, i64 384, i1 false), !tbaa.struct !61
  br label %6

6:                                                ; preds = %31, %3
  %7 = phi i64 [ 0, %3 ], [ %32, %31 ]
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %7, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %13 = tail call ptr %12(ptr noundef nonnull %9) #17
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %5, i64 0, i32 6, i64 %7, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %7, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %21 = tail call ptr %20(ptr noundef nonnull %17) #17
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %5, i64 0, i32 6, i64 %7, i32 8
  store ptr %21, ptr %22, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %7, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %29 = tail call ptr %28(ptr noundef nonnull %25) #17
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %5, i64 0, i32 6, i64 %7, i32 9
  store ptr %29, ptr %30, align 8, !tbaa !59
  br label %31

31:                                               ; preds = %27, %23
  %32 = add nuw nsw i64 %7, 1
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %6, !llvm.loop !64

34:                                               ; preds = %31, %1
  %35 = phi ptr [ null, %1 ], [ %5, %31 ]
  ret ptr %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @curvemapping_set_black_white_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %15, %4 ]
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fsub float %7, %9
  %11 = fcmp ogt float %10, 0x3EE4F8B580000000
  %12 = select i1 %11, float %10, float 0x3EE4F8B580000000
  %13 = fdiv float 1.000000e+00, %12
  %14 = getelementptr inbounds float, ptr %2, i64 %5
  store float %13, ptr %14, align 4, !tbaa !43
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %4, !llvm.loop !65

17:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @curvemapping_set_black_white(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %7 = load float, ptr %2, align 4, !tbaa !43
  store float %7, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 1
  store float %9, ptr %10, align 4, !tbaa !43
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 2
  store float %12, ptr %13, align 4, !tbaa !43
  br label %14

14:                                               ; preds = %5, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %18 = load float, ptr %1, align 4, !tbaa !43
  store float %18, ptr %17, align 4, !tbaa !43
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 1
  store float %20, ptr %21, align 4, !tbaa !43
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 2
  store float %23, ptr %24, align 4, !tbaa !43
  br label %25

25:                                               ; preds = %16, %14
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %28 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %40, %29 ]
  %31 = getelementptr inbounds float, ptr %27, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !43
  %33 = getelementptr inbounds float, ptr %26, i64 %30
  %34 = load float, ptr %33, align 4, !tbaa !43
  %35 = fsub float %32, %34
  %36 = fcmp ogt float %35, 0x3EE4F8B580000000
  %37 = select i1 %36, float %35, float 0x3EE4F8B580000000
  %38 = fdiv float 1.000000e+00, %37
  %39 = getelementptr inbounds float, ptr %28, i64 %30
  store float %38, ptr %39, align 4, !tbaa !43
  %40 = add nuw nsw i64 %30, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %29, !llvm.loop !65

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @curvemap_remove_point(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !48
  %4 = icmp slt i16 %3, 3
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %7 = zext nneg i16 %3 to i64
  %8 = mul nuw nsw i64 %7, 12
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #17
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi i64 [ 0, %12 ], [ %30, %27 ]
  %16 = phi i32 [ 0, %12 ], [ %29, %27 ]
  %17 = phi i32 [ 0, %12 ], [ %28, %27 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.CurveMapPoint, ptr %18, i64 %15
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !66
  %24 = add nsw i32 %17, 1
  br label %27

25:                                               ; preds = %14
  %26 = add nsw i32 %16, 1
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi i32 [ %24, %21 ], [ %17, %25 ]
  %29 = phi i32 [ %16, %21 ], [ %26, %25 ]
  %30 = add nuw nsw i64 %15, 1
  %31 = load i16, ptr %0, align 8, !tbaa !48
  %32 = sext i16 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %14, label %34, !llvm.loop !68

34:                                               ; preds = %27, %5
  %35 = phi i32 [ 0, %5 ], [ %29, %27 ]
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  tail call void %36(ptr noundef %38) #17
  store ptr %9, ptr %37, align 8, !tbaa !50
  %39 = load i16, ptr %0, align 8, !tbaa !48
  %40 = trunc i32 %35 to i16
  %41 = sub i16 %39, %40
  store i16 %41, ptr %0, align 8, !tbaa !48
  %42 = icmp ne i32 %35, 0
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %2, %34
  %45 = phi i8 [ %43, %34 ], [ 0, %2 ]
  ret i8 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemap_remove(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %4 = load i16, ptr %0, align 8, !tbaa !48
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 12
  %7 = tail call ptr %3(i64 noundef %6, ptr noundef nonnull @.str) #17
  %8 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !66
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %40

12:                                               ; preds = %2, %28
  %13 = phi i64 [ %31, %28 ], [ 1, %2 ]
  %14 = phi i32 [ %30, %28 ], [ 0, %2 ]
  %15 = phi i32 [ %29, %28 ], [ 1, %2 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.CurveMapPoint, ptr %16, i64 %13, i32 2
  %18 = load i16, ptr %17, align 4, !tbaa !69
  %19 = and i16 %18, %1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.CurveMapPoint, ptr %16, i64 %13
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds %struct.CurveMapPoint, ptr %7, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, ptr noundef nonnull align 4 dereferenceable(12) %22, i64 12, i1 false), !tbaa.struct !66
  %25 = add nsw i32 %15, 1
  br label %28

26:                                               ; preds = %12
  %27 = add nsw i32 %14, 1
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi i32 [ %15, %26 ], [ %25, %21 ]
  %30 = phi i32 [ %27, %26 ], [ %14, %21 ]
  %31 = add nuw nsw i64 %13, 1
  %32 = load i16, ptr %0, align 8, !tbaa !48
  %33 = sext i16 %32 to i64
  %34 = add nsw i64 %33, -1
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %12, label %36, !llvm.loop !70

36:                                               ; preds = %28
  %37 = sext i32 %29 to i64
  %38 = and i64 %31, 4294967295
  %39 = trunc i32 %30 to i16
  br label %40

40:                                               ; preds = %36, %2
  %41 = phi i64 [ 1, %2 ], [ %38, %36 ]
  %42 = phi i64 [ 1, %2 ], [ %37, %36 ]
  %43 = phi i16 [ 0, %2 ], [ %39, %36 ]
  %44 = getelementptr inbounds %struct.CurveMapPoint, ptr %7, i64 %42
  %45 = load ptr, ptr %8, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.CurveMapPoint, ptr %45, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %44, ptr noundef nonnull align 4 dereferenceable(12) %46, i64 12, i1 false), !tbaa.struct !66
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %48 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void %47(ptr noundef %48) #17
  store ptr %7, ptr %8, align 8, !tbaa !50
  %49 = load i16, ptr %0, align 8, !tbaa !48
  %50 = sub i16 %49, %43
  store i16 %50, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @curvemap_insert(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = load i16, ptr %0, align 8, !tbaa !48
  %6 = sext i16 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = add nsw i64 %7, 12
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str) #17
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = add i16 %10, 1
  store i16 %11, ptr %0, align 8, !tbaa !48
  %12 = icmp ult i16 %10, 32767
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = sext i16 %11 to i32
  %15 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %17 = zext i32 %14 to i64
  %18 = zext i32 %14 to i64
  br label %19

19:                                               ; preds = %13, %54
  %20 = phi i64 [ 0, %13 ], [ %58, %54 ]
  %21 = phi i8 [ 0, %13 ], [ %57, %54 ]
  %22 = phi i32 [ 0, %13 ], [ %56, %54 ]
  %23 = phi ptr [ null, %13 ], [ %55, %54 ]
  %24 = icmp eq i8 %21, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 %20
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fcmp ogt float %31, %1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20
  store float %1, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20, i32 1
  store float %2, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20, i32 2
  store i16 1, ptr %36, align 4, !tbaa !69
  br label %54

37:                                               ; preds = %28, %19
  %38 = load ptr, ptr %16, align 8, !tbaa !50
  %39 = sext i32 %22 to i64
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %38, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20
  store float %41, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds %struct.CurveMapPoint, ptr %38, i64 %39, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !53
  %45 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20, i32 1
  store float %44, ptr %45, align 4, !tbaa !53
  %46 = getelementptr inbounds %struct.CurveMapPoint, ptr %38, i64 %39, i32 2
  %47 = load i16, ptr %46, align 4, !tbaa !69
  %48 = and i16 %47, -2
  %49 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20, i32 2
  store i16 %48, ptr %49, align 4, !tbaa !69
  %50 = getelementptr inbounds %struct.CurveMapPoint, ptr %38, i64 %39, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !71
  %52 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %20, i32 3
  store i16 %51, ptr %52, align 2, !tbaa !71
  %53 = add nsw i32 %22, 1
  br label %54

54:                                               ; preds = %33, %37
  %55 = phi ptr [ %34, %33 ], [ %23, %37 ]
  %56 = phi i32 [ %22, %33 ], [ %53, %37 ]
  %57 = phi i8 [ 1, %33 ], [ %21, %37 ]
  %58 = add nuw nsw i64 %20, 1
  %59 = icmp eq i64 %58, %18
  br i1 %59, label %60, label %19, !llvm.loop !72

60:                                               ; preds = %54, %3
  %61 = phi ptr [ null, %3 ], [ %55, %54 ]
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !50
  tail call void %62(ptr noundef %64) #17
  store ptr %9, ptr %63, align 8, !tbaa !50
  ret ptr %61
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemap_reset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %9(ptr noundef nonnull %6) #17
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp ult i32 %2, 7
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds [7 x i16], ptr @switch.table.curvemap_reset, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2
  store i16 %15, ptr %0, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %10, %12
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %18 = load i16, ptr %0, align 8, !tbaa !48
  %19 = sext i16 %18 to i64
  %20 = mul nsw i64 %19, 12
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str) #17
  store ptr %21, ptr %5, align 8, !tbaa !50
  switch i32 %2, label %87 [
    i32 0, label %29
    i32 1, label %42
    i32 2, label %50
    i32 3, label %58
    i32 4, label %22
    i32 5, label %71
    i32 6, label %79
  ]

22:                                               ; preds = %16
  %23 = load i16, ptr %0, align 8, !tbaa !48
  %24 = icmp sgt i16 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %22
  %26 = zext nneg i16 %23 to i64
  %27 = add nsw i16 %23, -1
  %28 = sitofp i16 %27 to float
  br label %62

29:                                               ; preds = %16
  %30 = load float, ptr %1, align 4, !tbaa !73
  store float %30, ptr %21, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !74
  %33 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float %32, ptr %33, align 4, !tbaa !53
  %34 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 2
  store i16 0, ptr %34, align 4, !tbaa !69
  %35 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !75
  %37 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !76
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float %39, ptr %40, align 4, !tbaa !53
  %41 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 2
  store i16 0, ptr %41, align 4, !tbaa !69
  br label %87

42:                                               ; preds = %16
  store float 0.000000e+00, ptr %21, align 4, !tbaa !51
  %43 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %43, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float 2.500000e-01, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float 5.000000e-01, ptr %45, align 4, !tbaa !53
  %46 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2
  store float 7.500000e-01, ptr %46, align 4, !tbaa !51
  %47 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2, i32 1
  store float 0x3FA47AE140000000, ptr %47, align 4, !tbaa !53
  %48 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !51
  %49 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3, i32 1
  store float 0.000000e+00, ptr %49, align 4, !tbaa !53
  br label %87

50:                                               ; preds = %16
  store float 0.000000e+00, ptr %21, align 4, !tbaa !51
  %51 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %51, align 4, !tbaa !53
  %52 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float 2.500000e-01, ptr %52, align 4, !tbaa !51
  %53 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float 0x3FEE147AE0000000, ptr %53, align 4, !tbaa !53
  %54 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2
  store float 7.500000e-01, ptr %54, align 4, !tbaa !51
  %55 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2, i32 1
  store float 0x3FAEB851E0000000, ptr %55, align 4, !tbaa !53
  %56 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3
  store float 1.000000e+00, ptr %56, align 4, !tbaa !51
  %57 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3, i32 1
  store float 0.000000e+00, ptr %57, align 4, !tbaa !53
  br label %87

58:                                               ; preds = %16
  store float 0.000000e+00, ptr %21, align 4, !tbaa !51
  %59 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %59, align 4, !tbaa !53
  %60 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float 1.000000e+00, ptr %60, align 4, !tbaa !51
  %61 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float 1.000000e+00, ptr %61, align 4, !tbaa !53
  br label %87

62:                                               ; preds = %25, %62
  %63 = phi i64 [ 0, %25 ], [ %69, %62 ]
  %64 = trunc i64 %63 to i32
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %65, %28
  %67 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 %63
  store float %66, ptr %67, align 4, !tbaa !51
  %68 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 %63, i32 1
  store float 5.000000e-01, ptr %68, align 4, !tbaa !53
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %26
  br i1 %70, label %87, label %62, !llvm.loop !77

71:                                               ; preds = %16
  store float 0.000000e+00, ptr %21, align 4, !tbaa !51
  %72 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %72, align 4, !tbaa !53
  %73 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float 5.000000e-01, ptr %73, align 4, !tbaa !51
  %74 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float 0x3FECCCCCC0000000, ptr %74, align 4, !tbaa !53
  %75 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2
  store float 0x3FEB851EC0000000, ptr %75, align 4, !tbaa !51
  %76 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2, i32 1
  store float 5.000000e-01, ptr %76, align 4, !tbaa !53
  %77 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3
  store float 1.000000e+00, ptr %77, align 4, !tbaa !51
  %78 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3, i32 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !53
  br label %87

79:                                               ; preds = %16
  store float 0.000000e+00, ptr %21, align 4, !tbaa !51
  %80 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %80, align 4, !tbaa !53
  %81 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1
  store float 2.500000e-01, ptr %81, align 4, !tbaa !51
  %82 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 1, i32 1
  store float 0x3FEE666660000000, ptr %82, align 4, !tbaa !53
  %83 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2
  store float 7.500000e-01, ptr %83, align 4, !tbaa !51
  %84 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 2, i32 1
  store float 0x3FDC28F5C0000000, ptr %84, align 4, !tbaa !53
  %85 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3
  store float 1.000000e+00, ptr %85, align 4, !tbaa !51
  %86 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 3, i32 1
  store float 0.000000e+00, ptr %86, align 4, !tbaa !53
  br label %87

87:                                               ; preds = %62, %22, %16, %79, %71, %58, %50, %42, %29
  %88 = icmp eq i32 %3, 1
  br i1 %88, label %89, label %111

89:                                               ; preds = %87
  %90 = load i16, ptr %0, align 8, !tbaa !48
  %91 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %92 = tail call ptr %91(ptr noundef %21) #17
  %93 = load i16, ptr %0, align 8, !tbaa !48
  %94 = icmp sgt i16 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = zext nneg i16 %93 to i64
  %97 = load ptr, ptr %5, align 8, !tbaa !50
  %98 = sext i16 %90 to i64
  br label %99

99:                                               ; preds = %95, %99
  %100 = phi i64 [ 0, %95 ], [ %106, %99 ]
  %101 = xor i64 %100, -1
  %102 = add nsw i64 %101, %98
  %103 = getelementptr inbounds %struct.CurveMapPoint, ptr %97, i64 %102, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !53
  %105 = getelementptr inbounds %struct.CurveMapPoint, ptr %92, i64 %100, i32 1
  store float %104, ptr %105, align 4, !tbaa !53
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %106, %96
  br i1 %107, label %108, label %99, !llvm.loop !78

108:                                              ; preds = %99, %89
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %110 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void %109(ptr noundef %110) #17
  store ptr %92, ptr %5, align 8, !tbaa !50
  br label %111

111:                                              ; preds = %108, %87
  %112 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !58
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %116(ptr noundef nonnull %113) #17
  store ptr null, ptr %112, align 8, !tbaa !58
  br label %117

117:                                              ; preds = %115, %111
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemap_sethandle(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load i16, ptr %0, align 8, !tbaa !48
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i16 0, i16 2
  br label %11

11:                                               ; preds = %5, %20
  %12 = phi i64 [ 0, %5 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.CurveMapPoint, ptr %8, i64 %12, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !69
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = and i16 %14, -3
  %19 = or disjoint i16 %18, %10
  store i16 %19, ptr %13, align 4, !tbaa !69
  br label %20

20:                                               ; preds = %17, %11
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %11, !llvm.loop !79

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_premultiply(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 8, !tbaa !34
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %3, label %32, label %7

7:                                                ; preds = %2
  br i1 %6, label %102, label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ %27, %8 ], [ 0, %7 ]
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  tail call void %10(ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  store ptr %14, ptr %11, align 8, !tbaa !58
  store ptr null, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 5
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 10
  %17 = load float, ptr %16, align 4, !tbaa !43
  store float %17, ptr %15, align 4, !tbaa !43
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !43
  %20 = getelementptr inbounds float, ptr %15, i64 1
  store float %19, ptr %20, align 4, !tbaa !43
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 6
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 11
  %23 = load float, ptr %22, align 4, !tbaa !43
  store float %23, ptr %21, align 4, !tbaa !43
  %24 = getelementptr inbounds float, ptr %22, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = getelementptr inbounds float, ptr %21, i64 1
  store float %25, ptr %26, align 4, !tbaa !43
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br i1 %28, label %29, label %8, !llvm.loop !80

29:                                               ; preds = %8
  %30 = load i32, ptr %0, align 8, !tbaa !34
  %31 = and i32 %30, -3
  br label %100

32:                                               ; preds = %2
  br i1 %6, label %33, label %102

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  br label %36

36:                                               ; preds = %33, %43
  %37 = phi i64 [ 0, %33 ], [ %49, %43 ]
  %38 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %37, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.CurveMap, ptr %34, i64 %37
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %42, ptr noundef nonnull %35)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load ptr, ptr %38, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %37, i32 9
  store ptr %44, ptr %45, align 8, !tbaa !59
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %47 = tail call ptr %46(i64 noundef 3084, ptr noundef nonnull @.str.2) #17
  store ptr %47, ptr %38, align 8, !tbaa !58
  %48 = load ptr, ptr %45, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3084) %47, ptr noundef nonnull align 4 dereferenceable(3084) %48, i64 3084, i1 false)
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %51, label %36, !llvm.loop !81

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3
  %53 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %52, ptr noundef nonnull %57)
  br label %58

58:                                               ; preds = %56, %51
  %59 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 5
  %60 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 5, i64 1
  %61 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 6
  %62 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 6, i64 1
  br label %63

63:                                               ; preds = %58, %74
  %64 = phi i64 [ 0, %58 ], [ %95, %74 ]
  %65 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %64, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  br label %67

67:                                               ; preds = %63, %67
  %68 = phi i64 [ 0, %63 ], [ %72, %67 ]
  %69 = getelementptr inbounds %struct.CurveMapPoint, ptr %66, i64 %68, i32 1
  %70 = load float, ptr %69, align 4, !tbaa !53
  %71 = tail call float @curvemap_evaluateF(ptr noundef nonnull %52, float noundef %70)
  store float %71, ptr %69, align 4, !tbaa !53
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, 257
  br i1 %73, label %74, label %67, !llvm.loop !82

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %64, i32 10
  %76 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %64, i32 5
  %77 = load float, ptr %76, align 4, !tbaa !43
  store float %77, ptr %75, align 4, !tbaa !43
  %78 = getelementptr inbounds float, ptr %76, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !43
  %80 = getelementptr inbounds float, ptr %75, i64 1
  store float %79, ptr %80, align 4, !tbaa !43
  %81 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %64, i32 11
  %82 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %64, i32 6
  %83 = load float, ptr %82, align 4, !tbaa !43
  store float %83, ptr %81, align 4, !tbaa !43
  %84 = getelementptr inbounds float, ptr %82, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !43
  %86 = getelementptr inbounds float, ptr %81, i64 1
  store float %85, ptr %86, align 4, !tbaa !43
  %87 = load float, ptr %59, align 4, !tbaa !43
  %88 = fmul float %77, %87
  store float %88, ptr %76, align 4, !tbaa !43
  %89 = load float, ptr %60, align 4, !tbaa !43
  %90 = fmul float %79, %89
  store float %90, ptr %78, align 4, !tbaa !43
  %91 = load float, ptr %61, align 4, !tbaa !43
  %92 = fmul float %83, %91
  store float %92, ptr %82, align 4, !tbaa !43
  %93 = load float, ptr %62, align 4, !tbaa !43
  %94 = fmul float %85, %93
  store float %94, ptr %84, align 4, !tbaa !43
  %95 = add nuw nsw i64 %64, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %63, !llvm.loop !83

97:                                               ; preds = %74
  %98 = load i32, ptr %0, align 8, !tbaa !34
  %99 = or i32 %98, 2
  br label %100

100:                                              ; preds = %29, %97
  %101 = phi i32 [ %99, %97 ], [ %31, %29 ]
  store i32 %101, ptr %0, align 8, !tbaa !34
  br label %102

102:                                              ; preds = %100, %32, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @curvemap_make_table(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %388, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %1, align 4, !tbaa !73
  %8 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 3
  store float %7, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !75
  %11 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !85
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %13 = load i16, ptr %0, align 8, !tbaa !48
  %14 = sext i16 %13 to i64
  %15 = mul nsw i64 %14, 72
  %16 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull @.str.12) #17
  %17 = load i16, ptr %0, align 8, !tbaa !48
  %18 = icmp sgt i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = zext nneg i16 %17 to i64
  br label %27

21:                                               ; preds = %27, %6
  %22 = load i16, ptr %0, align 8, !tbaa !48
  %23 = icmp sgt i16 %22, 0
  br i1 %23, label %24, label %196

24:                                               ; preds = %21
  %25 = zext nneg i16 %22 to i64
  %26 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  br label %51

27:                                               ; preds = %19, %27
  %28 = phi i64 [ 0, %19 ], [ %49, %27 ]
  %29 = load float, ptr %8, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 %28
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fcmp olt float %29, %31
  %33 = select i1 %32, float %29, float %31
  store float %33, ptr %8, align 8, !tbaa !84
  %34 = load float, ptr %11, align 4, !tbaa !85
  %35 = fcmp ogt float %34, %31
  %36 = select i1 %35, float %34, float %31
  store float %36, ptr %11, align 4, !tbaa !85
  %37 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %28
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1
  store float %31, ptr %38, align 4, !tbaa !43
  %39 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 %28, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1, i64 1
  store float %40, ptr %41, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 %28, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !69
  %44 = and i16 %43, 2
  %45 = icmp eq i16 %44, 0
  %46 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %28, i32 6
  %47 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %28, i32 5
  %48 = select i1 %45, i8 1, i8 2
  store i8 %48, ptr %46, align 2, !tbaa !86
  store i8 %48, ptr %47, align 1, !tbaa !88
  %49 = add nuw nsw i64 %28, 1
  %50 = icmp eq i64 %49, %20
  br i1 %50, label %21, label %27, !llvm.loop !89

51:                                               ; preds = %24, %65
  %52 = phi i64 [ 0, %24 ], [ %66, %65 ]
  %53 = phi i64 [ %25, %24 ], [ %68, %65 ]
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @calchandle_curvemap(ptr noundef %16, ptr noundef null, ptr noundef nonnull %26)
  br label %65

56:                                               ; preds = %51
  %57 = add nsw i64 %53, 4294967295
  %58 = and i64 %57, 4294967295
  %59 = icmp eq i64 %52, %58
  %60 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %52
  %61 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 -1
  br i1 %59, label %62, label %63

62:                                               ; preds = %56
  tail call fastcc void @calchandle_curvemap(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef null)
  br label %65

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 1
  tail call fastcc void @calchandle_curvemap(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef nonnull %64)
  br label %65

65:                                               ; preds = %55, %63, %62
  %66 = add nuw nsw i64 %52, 1
  %67 = load i16, ptr %0, align 8, !tbaa !48
  %68 = sext i16 %67 to i64
  %69 = sext i16 %67 to i64
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %51, label %71, !llvm.loop !90

71:                                               ; preds = %65
  %72 = icmp sgt i16 %67, 2
  br i1 %72, label %73, label %196

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 6
  %75 = load i8, ptr %74, align 2, !tbaa !86
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %77, label %132

77:                                               ; preds = %73
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !43
  %81 = load float, ptr %78, align 4, !tbaa !43
  %82 = fsub float %80, %81
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !43
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !43
  %87 = fsub float %84, %86
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !43
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !43
  %92 = fsub float %89, %91
  %93 = fmul float %87, %87
  %94 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %94)
  %96 = tail call float @sqrtf(float noundef %95) #17
  %97 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !43
  %99 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1, i32 0, i64 0, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !43
  %101 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1, i32 0, i64 0, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !43
  %103 = load float, ptr %78, align 4, !tbaa !43
  %104 = fcmp olt float %98, %103
  %105 = select i1 %104, float %103, float %98
  %106 = fsub float %105, %103
  %107 = load float, ptr %85, align 4, !tbaa !43
  %108 = fsub float %100, %107
  %109 = load float, ptr %90, align 4, !tbaa !43
  %110 = fsub float %102, %109
  %111 = fmul float %108, %108
  %112 = tail call float @llvm.fmuladd.f32(float %106, float %106, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %110, float %110, float %112)
  %114 = tail call float @sqrtf(float noundef %113) #17
  %115 = fcmp ogt float %114, 0x3E80000000000000
  br i1 %115, label %116, label %132

116:                                              ; preds = %77
  %117 = fdiv float %96, %114
  %118 = fmul float %106, %117
  %119 = fmul float %108, %117
  %120 = fmul float %110, %117
  %121 = load float, ptr %78, align 4, !tbaa !43
  %122 = fadd float %118, %121
  store float %122, ptr %79, align 4, !tbaa !43
  %123 = load float, ptr %85, align 4, !tbaa !43
  %124 = fadd float %119, %123
  store float %124, ptr %83, align 4, !tbaa !43
  %125 = load float, ptr %90, align 4, !tbaa !43
  %126 = fadd float %120, %125
  store float %126, ptr %88, align 4, !tbaa !43
  %127 = fsub float %121, %118
  store float %127, ptr %16, align 4, !tbaa !43
  %128 = fsub float %123, %119
  %129 = getelementptr inbounds float, ptr %16, i64 1
  store float %128, ptr %129, align 4, !tbaa !43
  %130 = fsub float %125, %120
  %131 = getelementptr inbounds float, ptr %16, i64 2
  store float %130, ptr %131, align 4, !tbaa !43
  br label %132

132:                                              ; preds = %77, %116, %73
  %133 = load i16, ptr %0, align 8, !tbaa !48
  %134 = sext i16 %133 to i64
  %135 = add nsw i64 %134, -1
  %136 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %135
  %137 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %135, i32 6
  %138 = load i8, ptr %137, align 2, !tbaa !86
  %139 = icmp eq i8 %138, 1
  br i1 %139, label %140, label %196

140:                                              ; preds = %132
  %141 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 1
  %142 = load float, ptr %136, align 4, !tbaa !43
  %143 = load float, ptr %141, align 4, !tbaa !43
  %144 = fsub float %142, %143
  %145 = getelementptr inbounds float, ptr %136, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !43
  %147 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 1, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !43
  %149 = fsub float %146, %148
  %150 = getelementptr inbounds float, ptr %136, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !43
  %152 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 1, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !43
  %154 = fsub float %151, %153
  %155 = fmul float %149, %149
  %156 = tail call float @llvm.fmuladd.f32(float %144, float %144, float %155)
  %157 = tail call float @llvm.fmuladd.f32(float %154, float %154, float %156)
  %158 = tail call float @sqrtf(float noundef %157) #17
  %159 = getelementptr %struct.BezTriple, ptr %16, i64 %134
  %160 = getelementptr %struct.BezTriple, ptr %159, i64 -2, i32 0, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !43
  %162 = getelementptr %struct.BezTriple, ptr %159, i64 -2, i32 0, i64 2, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !43
  %164 = getelementptr %struct.BezTriple, ptr %159, i64 -2, i32 0, i64 2, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !43
  %166 = load float, ptr %141, align 4, !tbaa !43
  %167 = fcmp ogt float %161, %166
  %168 = select i1 %167, float %166, float %161
  %169 = fsub float %168, %166
  %170 = load float, ptr %147, align 4, !tbaa !43
  %171 = fsub float %163, %170
  %172 = load float, ptr %152, align 4, !tbaa !43
  %173 = fsub float %165, %172
  %174 = fmul float %171, %171
  %175 = tail call float @llvm.fmuladd.f32(float %169, float %169, float %174)
  %176 = tail call float @llvm.fmuladd.f32(float %173, float %173, float %175)
  %177 = tail call float @sqrtf(float noundef %176) #17
  %178 = fcmp ogt float %177, 0x3E80000000000000
  br i1 %178, label %179, label %196

179:                                              ; preds = %140
  %180 = fdiv float %158, %177
  %181 = fmul float %169, %180
  %182 = fmul float %171, %180
  %183 = fmul float %173, %180
  %184 = load float, ptr %141, align 4, !tbaa !43
  %185 = fadd float %181, %184
  store float %185, ptr %136, align 4, !tbaa !43
  %186 = load float, ptr %147, align 4, !tbaa !43
  %187 = fadd float %182, %186
  store float %187, ptr %145, align 4, !tbaa !43
  %188 = load float, ptr %152, align 4, !tbaa !43
  %189 = fadd float %183, %188
  store float %189, ptr %150, align 4, !tbaa !43
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 2
  %191 = fsub float %184, %181
  store float %191, ptr %190, align 4, !tbaa !43
  %192 = fsub float %186, %182
  %193 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 2, i64 1
  store float %192, ptr %193, align 4, !tbaa !43
  %194 = fsub float %188, %183
  %195 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 2, i64 2
  store float %194, ptr %195, align 4, !tbaa !43
  br label %196

196:                                              ; preds = %21, %132, %179, %140, %71
  %197 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %198 = load ptr, ptr %197, align 8, !tbaa !58
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %201(ptr noundef nonnull %198) #17
  br label %202

202:                                              ; preds = %200, %196
  %203 = load i16, ptr %0, align 8, !tbaa !48
  %204 = sext i16 %203 to i32
  %205 = shl nsw i32 %204, 6
  %206 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %207 = add nsw i32 %205, -64
  %208 = sext i32 %207 to i64
  %209 = shl nsw i64 %208, 2
  %210 = tail call ptr %206(i64 noundef %209, ptr noundef nonnull @.str.13) #17
  %211 = load i16, ptr %0, align 8, !tbaa !48
  %212 = icmp sgt i16 %211, 1
  br i1 %212, label %213, label %240

213:                                              ; preds = %202, %213
  %214 = phi i64 [ %219, %213 ], [ 0, %202 ]
  %215 = phi ptr [ %235, %213 ], [ %210, %202 ]
  %216 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %214
  %217 = getelementptr inbounds [3 x [3 x float]], ptr %216, i64 0, i64 1
  %218 = getelementptr inbounds [3 x [3 x float]], ptr %216, i64 0, i64 2
  %219 = add nuw nsw i64 %214, 1
  %220 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %219
  %221 = getelementptr inbounds [3 x [3 x float]], ptr %220, i64 0, i64 1
  tail call void @correct_bezpart(ptr noundef nonnull %217, ptr noundef nonnull %218, ptr noundef nonnull %220, ptr noundef nonnull %221) #17
  %222 = load float, ptr %217, align 4, !tbaa !43
  %223 = load float, ptr %218, align 4, !tbaa !43
  %224 = load float, ptr %220, align 4, !tbaa !43
  %225 = load float, ptr %221, align 4, !tbaa !43
  tail call void @BKE_curve_forward_diff_bezier(float noundef %222, float noundef %223, float noundef %224, float noundef %225, ptr noundef %215, i32 noundef 31, i32 noundef 8) #17
  %226 = getelementptr inbounds [3 x [3 x float]], ptr %216, i64 0, i64 1, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !43
  %228 = getelementptr inbounds [3 x [3 x float]], ptr %216, i64 0, i64 2, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !43
  %230 = getelementptr inbounds [3 x float], ptr %220, i64 0, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !43
  %232 = getelementptr inbounds [3 x [3 x float]], ptr %220, i64 0, i64 1, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !43
  %234 = getelementptr inbounds float, ptr %215, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %227, float noundef %229, float noundef %231, float noundef %233, ptr noundef nonnull %234, i32 noundef 31, i32 noundef 8) #17
  %235 = getelementptr inbounds float, ptr %215, i64 64
  %236 = load i16, ptr %0, align 8, !tbaa !48
  %237 = sext i16 %236 to i64
  %238 = add nsw i64 %237, -1
  %239 = icmp slt i64 %219, %238
  br i1 %239, label %213, label %240, !llvm.loop !91

240:                                              ; preds = %213, %202
  %241 = load float, ptr %16, align 4, !tbaa !43
  %242 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !43
  %244 = fsub float %241, %243
  %245 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5
  store float %244, ptr %245, align 8, !tbaa !43
  %246 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !43
  %248 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !43
  %250 = fsub float %247, %249
  %251 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5, i64 1
  store float %250, ptr %251, align 4, !tbaa !43
  %252 = fmul float %250, %250
  %253 = tail call float @llvm.fmuladd.f32(float %244, float %244, float %252)
  %254 = tail call float @sqrtf(float noundef %253) #17
  %255 = load float, ptr %245, align 8, !tbaa !43
  %256 = fdiv float %255, %254
  store float %256, ptr %245, align 8, !tbaa !43
  %257 = load float, ptr %251, align 4, !tbaa !43
  %258 = fdiv float %257, %254
  store float %258, ptr %251, align 4, !tbaa !43
  %259 = load i16, ptr %0, align 8, !tbaa !48
  %260 = sext i16 %259 to i64
  %261 = getelementptr %struct.BezTriple, ptr %16, i64 %260
  %262 = getelementptr %struct.BezTriple, ptr %261, i64 -1, i32 0, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !43
  %264 = getelementptr %struct.BezTriple, ptr %261, i64 -1, i32 0, i64 2
  %265 = load float, ptr %264, align 4, !tbaa !43
  %266 = fsub float %263, %265
  %267 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6
  store float %266, ptr %267, align 8, !tbaa !43
  %268 = getelementptr %struct.BezTriple, ptr %261, i64 -1, i32 0, i64 1, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !43
  %270 = getelementptr %struct.BezTriple, ptr %261, i64 -1, i32 0, i64 2, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !43
  %272 = fsub float %269, %271
  %273 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6, i64 1
  store float %272, ptr %273, align 4, !tbaa !43
  %274 = fmul float %272, %272
  %275 = tail call float @llvm.fmuladd.f32(float %266, float %266, float %274)
  %276 = tail call float @sqrtf(float noundef %275) #17
  %277 = load float, ptr %267, align 8, !tbaa !43
  %278 = fdiv float %277, %276
  store float %278, ptr %267, align 8, !tbaa !43
  %279 = load float, ptr %273, align 4, !tbaa !43
  %280 = fdiv float %279, %276
  store float %280, ptr %273, align 4, !tbaa !43
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %281(ptr noundef nonnull %16) #17
  %282 = load float, ptr %11, align 4, !tbaa !85
  %283 = load float, ptr %8, align 8, !tbaa !84
  %284 = fsub float %282, %283
  %285 = fmul float %284, 3.906250e-03
  %286 = fdiv float 1.000000e+00, %285
  %287 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 2
  store float %286, ptr %287, align 4, !tbaa !92
  %288 = sext i32 %205 to i64
  %289 = getelementptr float, ptr %210, i64 %288
  %290 = getelementptr float, ptr %289, i64 -66
  %291 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %292 = tail call ptr %291(i64 noundef 3084, ptr noundef nonnull @.str.14) #17
  %293 = load float, ptr %8, align 8, !tbaa !84
  %294 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %295 = getelementptr inbounds float, ptr %210, i64 1
  %296 = getelementptr inbounds float, ptr %210, i64 1
  %297 = getelementptr inbounds float, ptr %210, i64 1
  %298 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %299 = getelementptr float, ptr %289, i64 -65
  %300 = getelementptr float, ptr %289, i64 -65
  %301 = getelementptr float, ptr %289, i64 -65
  br label %302

302:                                              ; preds = %240, %381
  %303 = phi i64 [ 0, %240 ], [ %384, %381 ]
  %304 = phi ptr [ %210, %240 ], [ %310, %381 ]
  %305 = trunc i64 %303 to i32
  %306 = sitofp i32 %305 to float
  %307 = tail call float @llvm.fmuladd.f32(float %285, float %306, float %293)
  %308 = getelementptr inbounds %struct.CurveMapPoint, ptr %292, i64 %303
  store float %307, ptr %308, align 4, !tbaa !51
  br label %309

309:                                              ; preds = %309, %302
  %310 = phi ptr [ %304, %302 ], [ %315, %309 ]
  %311 = load float, ptr %310, align 4, !tbaa !43
  %312 = fcmp oge float %307, %311
  %313 = icmp ne ptr %310, %290
  %314 = select i1 %312, i1 %313, i1 false
  %315 = getelementptr inbounds float, ptr %310, i64 2
  br i1 %314, label %309, label %316, !llvm.loop !93

316:                                              ; preds = %309
  %317 = icmp eq ptr %310, %210
  %318 = icmp eq ptr %310, %290
  %319 = select i1 %312, i1 %318, i1 false
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %321, label %366

321:                                              ; preds = %316
  %322 = load float, ptr %210, align 4, !tbaa !43
  %323 = fcmp ult float %322, %307
  br i1 %323, label %343, label %324

324:                                              ; preds = %321
  %325 = load i16, ptr %294, align 2, !tbaa !44
  %326 = and i16 %325, 1
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = load float, ptr %297, align 4, !tbaa !43
  br label %381

330:                                              ; preds = %324
  %331 = load float, ptr %245, align 8, !tbaa !43
  %332 = fcmp oeq float %331, 0.000000e+00
  %333 = load float, ptr %251, align 4, !tbaa !43
  br i1 %332, label %334, label %337

334:                                              ; preds = %330
  %335 = load float, ptr %296, align 4, !tbaa !43
  %336 = tail call float @llvm.fmuladd.f32(float %333, float 1.000000e+04, float %335)
  br label %381

337:                                              ; preds = %330
  %338 = load float, ptr %295, align 4, !tbaa !43
  %339 = fsub float %307, %322
  %340 = fmul float %339, %333
  %341 = fdiv float %340, %331
  %342 = fadd float %338, %341
  br label %381

343:                                              ; preds = %321
  %344 = load float, ptr %290, align 4, !tbaa !43
  %345 = fcmp ugt float %344, %307
  br i1 %345, label %381, label %346

346:                                              ; preds = %343
  %347 = load i16, ptr %298, align 2, !tbaa !44
  %348 = and i16 %347, 1
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = load float, ptr %301, align 4, !tbaa !43
  br label %381

352:                                              ; preds = %346
  %353 = load float, ptr %267, align 8, !tbaa !43
  %354 = fcmp oeq float %353, 0.000000e+00
  %355 = load float, ptr %273, align 4, !tbaa !43
  br i1 %354, label %356, label %360

356:                                              ; preds = %352
  %357 = load float, ptr %300, align 4, !tbaa !43
  %358 = fneg float %355
  %359 = tail call float @llvm.fmuladd.f32(float %358, float 1.000000e+04, float %357)
  br label %381

360:                                              ; preds = %352
  %361 = load float, ptr %299, align 4, !tbaa !43
  %362 = fsub float %307, %344
  %363 = fmul float %362, %355
  %364 = fdiv float %363, %353
  %365 = fadd float %361, %364
  br label %381

366:                                              ; preds = %316
  %367 = getelementptr inbounds float, ptr %310, i64 -2
  %368 = load float, ptr %367, align 4, !tbaa !43
  %369 = fsub float %311, %368
  %370 = fcmp ogt float %369, 0x3E80000000000000
  %371 = fsub float %311, %307
  %372 = fdiv float %371, %369
  %373 = select i1 %370, float %372, float 0.000000e+00
  %374 = getelementptr inbounds float, ptr %310, i64 -1
  %375 = load float, ptr %374, align 4, !tbaa !43
  %376 = fsub float 1.000000e+00, %373
  %377 = getelementptr inbounds float, ptr %310, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !43
  %379 = fmul float %378, %376
  %380 = tail call float @llvm.fmuladd.f32(float %373, float %375, float %379)
  br label %381

381:                                              ; preds = %360, %356, %350, %343, %337, %334, %328, %366
  %382 = phi float [ %380, %366 ], [ %329, %328 ], [ %336, %334 ], [ %342, %337 ], [ %351, %350 ], [ %359, %356 ], [ %365, %360 ], [ 0.000000e+00, %343 ]
  %383 = getelementptr inbounds %struct.CurveMapPoint, ptr %292, i64 %303, i32 1
  store float %382, ptr %383, align 4, !tbaa !53
  %384 = add nuw nsw i64 %303, 1
  %385 = icmp eq i64 %384, 257
  br i1 %385, label %386, label %302, !llvm.loop !94

386:                                              ; preds = %381
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %387(ptr noundef %210) #17
  store ptr %292, ptr %197, align 8, !tbaa !58
  br label %388

388:                                              ; preds = %2, %386
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @curvemap_evaluateF(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 8, !tbaa !84
  %5 = fsub float %1, %4
  %6 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !92
  %8 = fmul float %5, %7
  %9 = fptosi float %8 to i32
  %10 = fcmp olt float %8, 0.000000e+00
  %11 = fcmp ogt float %8, 2.560000e+02
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fcmp ult float %16, %1
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !44
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds float, ptr %15, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !43
  br label %97

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !43
  %29 = fcmp oeq float %28, 0.000000e+00
  %30 = getelementptr inbounds float, ptr %15, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !43
  %32 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !43
  br i1 %29, label %34, label %36

34:                                               ; preds = %26
  %35 = tail call float @llvm.fmuladd.f32(float %33, float 1.000000e+04, float %31)
  br label %97

36:                                               ; preds = %26
  %37 = fsub float %1, %16
  %38 = fmul float %37, %33
  %39 = fdiv float %38, %28
  %40 = fadd float %31, %39
  br label %97

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %15, i64 256
  %43 = load float, ptr %42, align 4, !tbaa !43
  %44 = fcmp ugt float %43, %1
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !44
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.CurveMapPoint, ptr %15, i64 256, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !43
  br label %97

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6
  %55 = load float, ptr %54, align 8, !tbaa !43
  %56 = fcmp oeq float %55, 0.000000e+00
  %57 = getelementptr inbounds %struct.CurveMapPoint, ptr %15, i64 256, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !43
  %59 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !43
  br i1 %56, label %61, label %64

61:                                               ; preds = %53
  %62 = fneg float %60
  %63 = tail call float @llvm.fmuladd.f32(float %62, float 1.000000e+04, float %58)
  br label %97

64:                                               ; preds = %53
  %65 = fsub float %1, %43
  %66 = fmul float %65, %60
  %67 = fdiv float %66, %55
  %68 = fadd float %58, %67
  br label %97

69:                                               ; preds = %2
  %70 = icmp slt i32 %9, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.CurveMapPoint, ptr %73, i64 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !53
  br label %97

76:                                               ; preds = %69
  %77 = icmp sgt i32 %9, 255
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.CurveMapPoint, ptr %80, i64 256, i32 1
  %82 = load float, ptr %81, align 4, !tbaa !53
  br label %97

83:                                               ; preds = %76
  %84 = sitofp i32 %9 to float
  %85 = fsub float %8, %84
  %86 = fsub float 1.000000e+00, %85
  %87 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = zext nneg i32 %9 to i64
  %90 = getelementptr inbounds %struct.CurveMapPoint, ptr %88, i64 %89, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !53
  %92 = getelementptr %struct.CurveMapPoint, ptr %88, i64 %89
  %93 = getelementptr %struct.CurveMapPoint, ptr %92, i64 1, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !53
  %95 = fmul float %85, %94
  %96 = tail call float @llvm.fmuladd.f32(float %86, float %91, float %95)
  br label %97

97:                                               ; preds = %64, %61, %50, %41, %36, %34, %23, %83, %78, %71
  %98 = phi float [ %75, %71 ], [ %82, %78 ], [ %96, %83 ], [ %25, %23 ], [ %35, %34 ], [ %40, %36 ], [ %52, %50 ], [ %63, %61 ], [ %68, %64 ], [ 0.000000e+00, %41 ]
  ret float %98
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_changed(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 %6
  %8 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 %6, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !75
  %13 = load float, ptr %10, align 4, !tbaa !73
  %14 = fsub float %12, %13
  %15 = fmul float %14, 0x3F847AE140000000
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !57
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !57
  %19 = load i32, ptr %0, align 8, !tbaa !34
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %96, label %22

22:                                               ; preds = %2
  %23 = load i16, ptr %7, align 8, !tbaa !48
  %24 = sext i16 %23 to i32
  %25 = icmp sgt i16 %23, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 2
  %28 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 3
  %29 = zext nneg i32 %24 to i64
  br label %36

30:                                               ; preds = %75, %22
  %31 = phi float [ 0.000000e+00, %22 ], [ %76, %75 ]
  %32 = phi float [ 0.000000e+00, %22 ], [ %77, %75 ]
  %33 = icmp sgt i16 %23, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = zext nneg i32 %24 to i64
  br label %80

36:                                               ; preds = %26, %75
  %37 = phi i64 [ 0, %26 ], [ %78, %75 ]
  %38 = phi float [ 0.000000e+00, %26 ], [ %77, %75 ]
  %39 = phi float [ 0.000000e+00, %26 ], [ %76, %75 ]
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %37, i32 2
  %41 = load i16, ptr %40, align 4, !tbaa !69
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %37
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = fcmp olt float %46, %13
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = fsub float %46, %13
  %50 = fcmp olt float %39, %49
  %51 = select i1 %50, float %39, float %49
  br label %58

52:                                               ; preds = %44
  %53 = fcmp ogt float %46, %12
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = fsub float %46, %12
  %56 = fcmp ogt float %39, %55
  %57 = select i1 %56, float %39, float %55
  br label %58

58:                                               ; preds = %52, %54, %48
  %59 = phi float [ %51, %48 ], [ %57, %54 ], [ %39, %52 ]
  %60 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %37, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !53
  %62 = load float, ptr %27, align 4, !tbaa !76
  %63 = fcmp olt float %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = fsub float %61, %62
  %66 = fcmp olt float %38, %65
  %67 = select i1 %66, float %38, float %65
  br label %75

68:                                               ; preds = %58
  %69 = load float, ptr %28, align 4, !tbaa !74
  %70 = fcmp ogt float %61, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = fsub float %61, %69
  %73 = fcmp ogt float %38, %72
  %74 = select i1 %73, float %38, float %72
  br label %75

75:                                               ; preds = %36, %68, %71, %64
  %76 = phi float [ %59, %64 ], [ %59, %71 ], [ %59, %68 ], [ %39, %36 ]
  %77 = phi float [ %67, %64 ], [ %74, %71 ], [ %38, %68 ], [ %38, %36 ]
  %78 = add nuw nsw i64 %37, 1
  %79 = icmp eq i64 %78, %29
  br i1 %79, label %30, label %36, !llvm.loop !95

80:                                               ; preds = %34, %93
  %81 = phi i64 [ 0, %34 ], [ %94, %93 ]
  %82 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %81, i32 2
  %83 = load i16, ptr %82, align 4, !tbaa !69
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %81
  %88 = load float, ptr %87, align 4, !tbaa !51
  %89 = fsub float %88, %31
  store float %89, ptr %87, align 4, !tbaa !51
  %90 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %81, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !53
  %92 = fsub float %91, %32
  store float %92, ptr %90, align 4, !tbaa !53
  br label %93

93:                                               ; preds = %80, %86
  %94 = add nuw nsw i64 %81, 1
  %95 = icmp eq i64 %94, %35
  br i1 %95, label %96, label %80, !llvm.loop !96

96:                                               ; preds = %93, %30, %2
  %97 = load i16, ptr %7, align 8, !tbaa !48
  %98 = sext i16 %97 to i64
  tail call void @qsort(ptr noundef %9, i64 noundef %98, i64 noundef 12, ptr noundef nonnull @sort_curvepoints) #17
  %99 = icmp eq i8 %1, 0
  br i1 %99, label %204, label %100

100:                                              ; preds = %96
  %101 = load i16, ptr %7, align 8, !tbaa !48
  %102 = icmp sgt i16 %101, 2
  br i1 %102, label %103, label %204

103:                                              ; preds = %100, %109
  %104 = phi i64 [ %112, %109 ], [ 0, %100 ]
  %105 = load i16, ptr %7, align 8, !tbaa !48
  %106 = sext i16 %105 to i64
  %107 = add nsw i64 %106, -1
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %104
  %111 = load float, ptr %110, align 4, !tbaa !51
  %112 = add nuw nsw i64 %104, 1
  %113 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !51
  %115 = fsub float %111, %114
  %116 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %104, i32 1
  %117 = load float, ptr %116, align 4, !tbaa !53
  %118 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %112, i32 1
  %119 = load float, ptr %118, align 4, !tbaa !53
  %120 = fsub float %117, %119
  %121 = fmul float %120, %120
  %122 = tail call float @llvm.fmuladd.f32(float %115, float %115, float %121)
  %123 = tail call float @sqrtf(float noundef %122) #17
  %124 = fcmp olt float %123, %15
  br i1 %124, label %125, label %103, !llvm.loop !97

125:                                              ; preds = %109
  %126 = trunc i64 %104 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %112, i32 2
  %130 = load i16, ptr %129, align 4, !tbaa !69
  %131 = or i16 %130, 2
  store i16 %131, ptr %129, align 4, !tbaa !69
  %132 = and i16 %130, 1
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %104, i32 2
  %136 = load i16, ptr %135, align 4, !tbaa !69
  %137 = or i16 %136, 1
  store i16 %137, ptr %135, align 4, !tbaa !69
  br label %150

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %104, i32 2
  %140 = load i16, ptr %139, align 4, !tbaa !69
  %141 = or i16 %140, 2
  store i16 %141, ptr %139, align 4, !tbaa !69
  %142 = and i16 %140, 1
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %112, i32 2
  %146 = load i16, ptr %145, align 4, !tbaa !69
  %147 = or i16 %146, 1
  store i16 %147, ptr %145, align 4, !tbaa !69
  br label %150

148:                                              ; preds = %103
  %149 = trunc i64 %104 to i32
  br label %150

150:                                              ; preds = %148, %134, %128, %144, %138
  %151 = phi i32 [ %149, %148 ], [ %126, %134 ], [ %126, %128 ], [ %126, %144 ], [ %126, %138 ]
  %152 = load i16, ptr %7, align 8, !tbaa !48
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %153, -1
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %204, label %156

156:                                              ; preds = %150
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %158 = sext i16 %152 to i64
  %159 = mul nsw i64 %158, 12
  %160 = tail call ptr %157(i64 noundef %159, ptr noundef nonnull @.str) #17
  %161 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 %6, i32 7
  %162 = load ptr, ptr %161, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %160, ptr noundef nonnull align 4 dereferenceable(12) %162, i64 12, i1 false), !tbaa.struct !66
  %163 = load i16, ptr %7, align 8, !tbaa !48
  %164 = icmp sgt i16 %163, 2
  br i1 %164, label %165, label %193

165:                                              ; preds = %156, %181
  %166 = phi i64 [ %184, %181 ], [ 1, %156 ]
  %167 = phi i32 [ %183, %181 ], [ 0, %156 ]
  %168 = phi i32 [ %182, %181 ], [ 1, %156 ]
  %169 = load ptr, ptr %161, align 8, !tbaa !50
  %170 = getelementptr inbounds %struct.CurveMapPoint, ptr %169, i64 %166, i32 2
  %171 = load i16, ptr %170, align 4, !tbaa !69
  %172 = and i16 %171, 2
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.CurveMapPoint, ptr %169, i64 %166
  %176 = sext i32 %168 to i64
  %177 = getelementptr inbounds %struct.CurveMapPoint, ptr %160, i64 %176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %177, ptr noundef nonnull align 4 dereferenceable(12) %175, i64 12, i1 false), !tbaa.struct !66
  %178 = add nsw i32 %168, 1
  br label %181

179:                                              ; preds = %165
  %180 = add nsw i32 %167, 1
  br label %181

181:                                              ; preds = %179, %174
  %182 = phi i32 [ %168, %179 ], [ %178, %174 ]
  %183 = phi i32 [ %180, %179 ], [ %167, %174 ]
  %184 = add nuw nsw i64 %166, 1
  %185 = load i16, ptr %7, align 8, !tbaa !48
  %186 = sext i16 %185 to i64
  %187 = add nsw i64 %186, -1
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %165, label %189, !llvm.loop !70

189:                                              ; preds = %181
  %190 = sext i32 %182 to i64
  %191 = and i64 %184, 4294967295
  %192 = trunc i32 %183 to i16
  br label %193

193:                                              ; preds = %156, %189
  %194 = phi i64 [ 1, %156 ], [ %191, %189 ]
  %195 = phi i64 [ 1, %156 ], [ %190, %189 ]
  %196 = phi i16 [ 0, %156 ], [ %192, %189 ]
  %197 = getelementptr inbounds %struct.CurveMapPoint, ptr %160, i64 %195
  %198 = load ptr, ptr %161, align 8, !tbaa !50
  %199 = getelementptr inbounds %struct.CurveMapPoint, ptr %198, i64 %194
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %197, ptr noundef nonnull align 4 dereferenceable(12) %199, i64 12, i1 false), !tbaa.struct !66
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %201 = load ptr, ptr %161, align 8, !tbaa !50
  tail call void %200(ptr noundef %201) #17
  store ptr %160, ptr %161, align 8, !tbaa !50
  %202 = load i16, ptr %7, align 8, !tbaa !48
  %203 = sub i16 %202, %196
  store i16 %203, ptr %7, align 8, !tbaa !48
  br label %204

204:                                              ; preds = %150, %193, %100, %96
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %7, ptr noundef nonnull %10)
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @sort_curvepoints(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = fcmp ogt float %3, %4
  %6 = fcmp olt float %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_changed_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !41
  br label %4

4:                                                ; preds = %1, %11
  %5 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %5, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = trunc i64 %5 to i32
  store i32 %10, ptr %2, align 4, !tbaa !41
  tail call void @curvemapping_changed(ptr noundef %0, i8 noundef zeroext 0)
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !98

14:                                               ; preds = %11
  store i32 %3, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @curvemapping_evaluateF(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %5
  %7 = tail call float @curvemap_evaluateF(ptr noundef nonnull %6, float noundef %2)
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate3F(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %5)
  store float %6, ptr %1, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = tail call float @curvemap_evaluateF(ptr noundef nonnull %7, float noundef %9)
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float %10, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = tail call float @curvemap_evaluateF(ptr noundef nonnull %12, float noundef %14)
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float %15, ptr %16, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluateRGBF(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3
  %6 = load float, ptr %2, align 4, !tbaa !43
  %7 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %6)
  %8 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %7)
  store float %8, ptr %1, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %11)
  %13 = tail call float @curvemap_evaluateF(ptr noundef nonnull %9, float noundef %12)
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %17)
  %19 = tail call float @curvemap_evaluateF(ptr noundef nonnull %15, float noundef %18)
  %20 = getelementptr inbounds float, ptr %1, i64 2
  store float %19, ptr %20, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGBF_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 {
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %7 = load float, ptr %2, align 4, !tbaa !43
  %8 = load float, ptr %3, align 4, !tbaa !43
  %9 = fsub float %7, %8
  %10 = load float, ptr %4, align 4, !tbaa !43
  %11 = fmul float %9, %10
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %6, float noundef %11)
  store float %12, ptr %1, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !43
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = fmul float %18, %20
  %22 = tail call float @curvemap_evaluateF(ptr noundef nonnull %13, float noundef %21)
  %23 = getelementptr inbounds float, ptr %1, i64 1
  store float %22, ptr %23, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !43
  %27 = getelementptr inbounds float, ptr %3, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !43
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds float, ptr %4, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !43
  %32 = fmul float %29, %31
  %33 = tail call float @curvemap_evaluateF(ptr noundef nonnull %24, float noundef %32)
  %34 = getelementptr inbounds float, ptr %1, i64 2
  store float %33, ptr %34, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGBF(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %7 = load float, ptr %6, align 8, !tbaa !43
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !43
  %11 = fmul float %8, %10
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %11)
  store float %12, ptr %1, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = fmul float %18, %20
  %22 = tail call float @curvemap_evaluateF(ptr noundef nonnull %13, float noundef %21)
  %23 = getelementptr inbounds float, ptr %1, i64 1
  store float %22, ptr %23, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !43
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !43
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !43
  %32 = fmul float %29, %31
  %33 = tail call float @curvemap_evaluateF(ptr noundef nonnull %24, float noundef %32)
  %34 = getelementptr inbounds float, ptr %1, i64 2
  store float %33, ptr %34, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = load i8, ptr %2, align 1, !tbaa !63
  %5 = uitofp i8 %4 to float
  %6 = fdiv float %5, 2.550000e+02
  %7 = getelementptr inbounds i8, ptr %2, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !63
  %9 = uitofp i8 %8 to float
  %10 = fdiv float %9, 2.550000e+02
  %11 = getelementptr inbounds i8, ptr %2, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !63
  %13 = uitofp i8 %12 to float
  %14 = fdiv float %13, 2.550000e+02
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !43
  %18 = fsub float %6, %17
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !43
  %21 = fmul float %18, %20
  %22 = tail call float @curvemap_evaluateF(ptr noundef nonnull %15, float noundef %21)
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = fsub float %10, %25
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !43
  %29 = fmul float %26, %28
  %30 = tail call float @curvemap_evaluateF(ptr noundef nonnull %23, float noundef %29)
  %31 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %32 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !43
  %34 = fsub float %14, %33
  %35 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !43
  %37 = fmul float %34, %36
  %38 = tail call float @curvemap_evaluateF(ptr noundef nonnull %31, float noundef %37)
  %39 = fcmp ugt float %22, 0.000000e+00
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = fcmp ogt float %22, 0x3FEFEFEFE0000000
  %42 = tail call float @llvm.fmuladd.f32(float %22, float 2.550000e+02, float 5.000000e-01)
  %43 = select i1 %41, float 2.550000e+02, float %42
  %44 = fptoui float %43 to i8
  br label %45

45:                                               ; preds = %3, %40
  %46 = phi i8 [ %44, %40 ], [ 0, %3 ]
  store i8 %46, ptr %1, align 1, !tbaa !63
  %47 = fcmp ugt float %30, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = fcmp ogt float %30, 0x3FEFEFEFE0000000
  %50 = tail call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %51 = select i1 %49, float 2.550000e+02, float %50
  %52 = fptoui float %51 to i8
  br label %53

53:                                               ; preds = %45, %48
  %54 = phi i8 [ %52, %48 ], [ 0, %45 ]
  %55 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !63
  %56 = fcmp ugt float %38, 0.000000e+00
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = fcmp ogt float %38, 0x3FEFEFEFE0000000
  %59 = tail call float @llvm.fmuladd.f32(float %38, float 2.550000e+02, float 5.000000e-01)
  %60 = select i1 %58, float 2.550000e+02, float %59
  %61 = fptoui float %60 to i8
  br label %62

62:                                               ; preds = %53, %57
  %63 = phi i8 [ %61, %57 ], [ 0, %53 ]
  %64 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %63, ptr %64, align 1, !tbaa !63
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @curvemapping_RGBA_does_something(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %3 = load float, ptr %2, align 8, !tbaa !43
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !43
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %15 = load float, ptr %14, align 4, !tbaa !43
  %16 = fcmp une float %15, 1.000000e+00
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !43
  %20 = fcmp une float %19, 1.000000e+00
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !43
  %24 = fcmp une float %23, 1.000000e+00
  br i1 %24, label %52, label %25

25:                                               ; preds = %21, %49
  %26 = phi i64 [ %50, %49 ], [ 0, %21 ]
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %26, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %26
  %32 = load i16, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load float, ptr %28, align 4, !tbaa !51
  %36 = fcmp une float %35, 0.000000e+00
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.CurveMapPoint, ptr %28, i64 0, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !53
  %40 = fcmp une float %39, 0.000000e+00
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %28, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = fcmp une float %43, 1.000000e+00
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.CurveMapPoint, ptr %28, i64 1, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !53
  %48 = fcmp une float %47, 1.000000e+00
  br i1 %48, label %52, label %49

49:                                               ; preds = %25, %45
  %50 = add nuw nsw i64 %26, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %25, !llvm.loop !99

52:                                               ; preds = %49, %45, %41, %37, %34, %30, %21, %17, %13, %9, %5, %1
  %53 = phi i32 [ 1, %1 ], [ 1, %5 ], [ 1, %9 ], [ 1, %13 ], [ 1, %17 ], [ 1, %21 ], [ 1, %30 ], [ 1, %34 ], [ 1, %37 ], [ 1, %41 ], [ 1, %45 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_initialize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  br label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ 0, %3 ], [ %14, %13 ]
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %7, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %12, ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %6, %11
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %6, !llvm.loop !100

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @curvemapping_table_RGBA(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  store i32 257, ptr %2, align 4, !tbaa !62
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = tail call ptr %4(i64 noundef 4112, ptr noundef nonnull @.str.3) #17
  store ptr %5, ptr %1, align 8, !tbaa !49
  %6 = load i32, ptr %2, align 4, !tbaa !62
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  %21 = zext nneg i32 %6 to i64
  br label %22

22:                                               ; preds = %8, %54
  %23 = phi i64 [ 0, %8 ], [ %55, %54 ]
  br i1 %11, label %30, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.CurveMapPoint, ptr %10, i64 %23, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !53
  %27 = shl i64 %23, 2
  %28 = and i64 %27, 4294967292
  %29 = getelementptr inbounds float, ptr %5, i64 %28
  store float %26, ptr %29, align 4, !tbaa !43
  br label %30

30:                                               ; preds = %24, %22
  br i1 %14, label %38, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.CurveMapPoint, ptr %13, i64 %23, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = shl i64 %23, 2
  %35 = and i64 %34, 4294967292
  %36 = or disjoint i64 %35, 1
  %37 = getelementptr inbounds float, ptr %5, i64 %36
  store float %33, ptr %37, align 4, !tbaa !43
  br label %38

38:                                               ; preds = %31, %30
  br i1 %17, label %46, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %16, i64 %23, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !53
  %42 = shl i64 %23, 2
  %43 = and i64 %42, 4294967292
  %44 = or disjoint i64 %43, 2
  %45 = getelementptr inbounds float, ptr %5, i64 %44
  store float %41, ptr %45, align 4, !tbaa !43
  br label %46

46:                                               ; preds = %39, %38
  br i1 %20, label %54, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.CurveMapPoint, ptr %19, i64 %23, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !53
  %50 = shl i64 %23, 2
  %51 = and i64 %50, 4294967292
  %52 = or disjoint i64 %51, 3
  %53 = getelementptr inbounds float, ptr %5, i64 %52
  store float %49, ptr %53, align 4, !tbaa !43
  br label %54

54:                                               ; preds = %46, %47
  %55 = add nuw nsw i64 %23, 1
  %56 = icmp eq i64 %55, %21
  br i1 %56, label %57, label %22, !llvm.loop !101

57:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_histogram_update_sample_line(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = sitofp i32 %9 to float
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %10, float 5.000000e-01)
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %10, float 5.000000e-01)
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = sitofp i32 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %21, float 5.000000e-01)
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12, i64 1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %21, float 5.000000e-01)
  %27 = fptosi float %26 to i32
  store i32 3, ptr %0, align 4, !tbaa !107
  %28 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 1
  store i32 256, ptr %28, align 4, !tbaa !109
  %29 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %29, align 4, !tbaa !110
  %30 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = icmp eq ptr %35, null
  br i1 %36, label %161, label %37

37:                                               ; preds = %33, %4
  %38 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !112
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #17
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi ptr [ %42, %41 ], [ null, %37 ]
  %45 = sitofp i32 %12 to float
  %46 = fadd float %45, 5.000000e-01
  %47 = sub nsw i32 %16, %12
  %48 = sitofp i32 %47 to float
  %49 = sitofp i32 %23 to float
  %50 = fadd float %49, 5.000000e-01
  %51 = sub nsw i32 %27, %23
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %54 = getelementptr inbounds float, ptr %5, i64 1
  %55 = getelementptr inbounds float, ptr %5, i64 2
  br label %56

56:                                               ; preds = %43, %155
  %57 = phi i64 [ 0, %43 ], [ %156, %155 ]
  %58 = trunc i64 %57 to i32
  %59 = sitofp i32 %58 to float
  %60 = fmul float %48, %59
  %61 = fdiv float %60, 2.550000e+02
  %62 = fadd float %46, %61
  %63 = fptosi float %62 to i32
  %64 = fmul float %52, %59
  %65 = fdiv float %64, 2.550000e+02
  %66 = fadd float %50, %65
  %67 = fptosi float %66 to i32
  %68 = icmp slt i32 %63, 0
  %69 = icmp slt i32 %67, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load i32, ptr %8, align 8, !tbaa !102
  %73 = icmp sgt i32 %72, %63
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr %19, align 4, !tbaa !106
  %76 = icmp sgt i32 %75, %67
  br i1 %76, label %83, label %77

77:                                               ; preds = %74, %71, %56
  %78 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %57
  store float 0.000000e+00, ptr %78, align 4, !tbaa !43
  %79 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %57
  store float 0.000000e+00, ptr %79, align 4, !tbaa !43
  %80 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %57
  store float 0.000000e+00, ptr %80, align 4, !tbaa !43
  %81 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %57
  store float 0.000000e+00, ptr %81, align 4, !tbaa !43
  %82 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %57
  store float 0.000000e+00, ptr %82, align 4, !tbaa !43
  br label %155

83:                                               ; preds = %74
  %84 = load ptr, ptr %38, align 8, !tbaa !112
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %53, align 4, !tbaa !113
  %88 = mul nsw i32 %72, %67
  %89 = add nsw i32 %88, %63
  %90 = mul nsw i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, ptr %84, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !43
  store float %93, ptr %5, align 4, !tbaa !43
  %94 = getelementptr inbounds float, ptr %92, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !43
  store float %95, ptr %54, align 4, !tbaa !43
  %96 = getelementptr inbounds float, ptr %92, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !43
  store float %97, ptr %55, align 4, !tbaa !43
  call void @IMB_colormanagement_processor_apply_v3(ptr noundef %44, ptr noundef nonnull %5) #17
  %98 = load float, ptr %5, align 4, !tbaa !43
  %99 = load float, ptr %54, align 4, !tbaa !43
  %100 = fmul float %99, 0x3FE2C8B440000000
  %101 = call float @llvm.fmuladd.f32(float %98, float 0x3FD322D0E0000000, float %100)
  %102 = load float, ptr %55, align 4, !tbaa !43
  %103 = call float @llvm.fmuladd.f32(float %102, float 0x3FBD2F1AA0000000, float %101)
  %104 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %57
  store float %103, ptr %104, align 4, !tbaa !43
  %105 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %57
  store float %98, ptr %105, align 4, !tbaa !43
  %106 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %57
  store float %99, ptr %106, align 4, !tbaa !43
  %107 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %57
  store float %102, ptr %107, align 4, !tbaa !43
  %108 = getelementptr inbounds float, ptr %92, i64 3
  %109 = load float, ptr %108, align 4, !tbaa !43
  %110 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %57
  store float %109, ptr %110, align 4, !tbaa !43
  br label %155

111:                                              ; preds = %83
  %112 = load ptr, ptr %30, align 8, !tbaa !111
  %113 = icmp eq ptr %112, null
  br i1 %113, label %155, label %114

114:                                              ; preds = %111
  %115 = mul nsw i32 %72, %67
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %112, i64 %116
  %118 = zext nneg i32 %63 to i64
  %119 = getelementptr inbounds i32, ptr %117, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !63
  %121 = zext i8 %120 to i32
  %122 = mul nuw nsw i32 %121, 76
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !63
  %125 = zext i8 %124 to i32
  %126 = mul nuw nsw i32 %125, 150
  %127 = add nuw nsw i32 %126, %122
  %128 = getelementptr inbounds i8, ptr %119, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !63
  %130 = zext i8 %129 to i32
  %131 = mul nuw nsw i32 %130, 29
  %132 = add nuw nsw i32 %127, %131
  %133 = udiv i32 %132, 255
  %134 = trunc i32 %133 to i8
  %135 = uitofp i8 %134 to float
  %136 = fdiv float %135, 2.550000e+02
  %137 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %57
  store float %136, ptr %137, align 4, !tbaa !43
  %138 = load i8, ptr %119, align 1, !tbaa !63
  %139 = uitofp i8 %138 to float
  %140 = fdiv float %139, 2.550000e+02
  %141 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %57
  store float %140, ptr %141, align 4, !tbaa !43
  %142 = load i8, ptr %123, align 1, !tbaa !63
  %143 = uitofp i8 %142 to float
  %144 = fdiv float %143, 2.550000e+02
  %145 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %57
  store float %144, ptr %145, align 4, !tbaa !43
  %146 = load i8, ptr %128, align 1, !tbaa !63
  %147 = uitofp i8 %146 to float
  %148 = fdiv float %147, 2.550000e+02
  %149 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %57
  store float %148, ptr %149, align 4, !tbaa !43
  %150 = getelementptr inbounds i8, ptr %119, i64 3
  %151 = load i8, ptr %150, align 1, !tbaa !63
  %152 = uitofp i8 %151 to float
  %153 = fdiv float %152, 2.550000e+02
  %154 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %57
  store float %153, ptr %154, align 4, !tbaa !43
  br label %155

155:                                              ; preds = %77, %111, %114, %86
  %156 = add nuw nsw i64 %57, 1
  %157 = icmp eq i64 %156, 256
  br i1 %157, label %158, label %56, !llvm.loop !114

158:                                              ; preds = %155
  %159 = icmp eq ptr %44, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %158
  call void @IMB_colormanagement_processor_free(ptr noundef nonnull %44) #17
  br label %161

161:                                              ; preds = %158, %160, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret void
}

declare ptr @IMB_colormanagement_display_processor_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_processor_apply_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_processor_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @scopes_update(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp ne ptr %10, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = icmp ne ptr %13, null
  %15 = select i1 %14, i1 true, i1 %11
  br i1 %15, label %16, label %437

16:                                               ; preds = %4
  %17 = load i32, ptr %0, align 8, !tbaa !115
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %437, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 8
  %22 = load float, ptr %21, align 4, !tbaa !117
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store float 1.000000e+00, ptr %21, align 4, !tbaa !117
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !113
  %28 = add i32 %27, -3
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %437

30:                                               ; preds = %25
  store i32 3, ptr %20, align 8, !tbaa !118
  %31 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 1
  store i32 256, ptr %31, align 4, !tbaa !119
  %32 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !120
  switch i32 %33, label %37 [
    i32 3, label %36
    i32 0, label %34
    i32 4, label %34
    i32 2, label %35
  ]

34:                                               ; preds = %30, %30
  br label %37

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %30, %36, %35, %34
  %38 = phi i1 [ false, %36 ], [ false, %35 ], [ false, %34 ], [ true, %30 ]
  %39 = phi i32 [ 1, %36 ], [ 0, %35 ], [ 2, %34 ], [ -1, %30 ]
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %41 = tail call ptr %40(i64 noundef 1024, ptr noundef nonnull @.str.4) #17
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %43 = tail call ptr %42(i64 noundef 1024, ptr noundef nonnull @.str.4) #17
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %45 = tail call ptr %44(i64 noundef 1024, ptr noundef nonnull @.str.4) #17
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %47 = tail call ptr %46(i64 noundef 1024, ptr noundef nonnull @.str.4) #17
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %49 = tail call ptr %48(i64 noundef 1024, ptr noundef nonnull @.str.4) #17
  %50 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 3
  %51 = load float, ptr %50, align 4, !tbaa !121
  %52 = fmul float %51, 0x3F847AE140000000
  %53 = fmul float %52, %52
  %54 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !106
  %56 = sitofp i32 %55 to float
  %57 = fmul float %53, %56
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 2
  store i32 %58, ptr %59, align 8, !tbaa !122
  %60 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !123
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %58, i32 %55
  store i32 %63, ptr %59, align 8
  br label %64

64:                                               ; preds = %37, %64
  %65 = phi i64 [ 0, %37 ], [ %68, %64 ]
  %66 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %65
  store float 2.550000e+04, ptr %66, align 8, !tbaa !43
  %67 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %65, i64 1
  store float -2.550000e+04, ptr %67, align 4, !tbaa !43
  %68 = add nuw nsw i64 %65, 1
  %69 = icmp eq i64 %68, 3
  br i1 %69, label %70, label %64, !llvm.loop !124

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !102
  %73 = load i32, ptr %59, align 8, !tbaa !122
  %74 = mul nsw i32 %73, %72
  %75 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 16
  store i32 %74, ptr %75, align 8, !tbaa !125
  %76 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !126
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %80(ptr noundef nonnull %77) #17
  br label %81

81:                                               ; preds = %79, %70
  %82 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %83 = load ptr, ptr %82, align 8, !tbaa !127
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %86(ptr noundef nonnull %83) #17
  br label %87

87:                                               ; preds = %85, %81
  %88 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !128
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %92(ptr noundef nonnull %89) #17
  br label %93

93:                                               ; preds = %91, %87
  %94 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 15
  %95 = load ptr, ptr %94, align 8, !tbaa !129
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %98(ptr noundef nonnull %95) #17
  br label %99

99:                                               ; preds = %97, %93
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %101 = load i32, ptr %75, align 8, !tbaa !125
  %102 = shl nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  %105 = tail call ptr %100(i64 noundef %104, ptr noundef nonnull @.str.5) #17
  store ptr %105, ptr %76, align 8, !tbaa !126
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %107 = load i32, ptr %75, align 8, !tbaa !125
  %108 = shl nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = shl nsw i64 %109, 2
  %111 = tail call ptr %106(i64 noundef %110, ptr noundef nonnull @.str.6) #17
  store ptr %111, ptr %82, align 8, !tbaa !127
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %113 = load i32, ptr %75, align 8, !tbaa !125
  %114 = shl nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = tail call ptr %112(i64 noundef %116, ptr noundef nonnull @.str.7) #17
  store ptr %117, ptr %88, align 8, !tbaa !128
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %119 = load i32, ptr %75, align 8, !tbaa !125
  %120 = shl nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 2
  %123 = tail call ptr %118(i64 noundef %122, ptr noundef nonnull @.str.8) #17
  store ptr %123, ptr %94, align 8, !tbaa !129
  br i1 %11, label %124, label %126

124:                                              ; preds = %99
  %125 = load ptr, ptr %9, align 8, !tbaa !112
  br label %128

126:                                              ; preds = %99
  %127 = call ptr @IMB_display_buffer_acquire(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8) #17
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ null, %124 ], [ %127, %126 ]
  %130 = phi ptr [ %125, %124 ], [ null, %126 ]
  %131 = load ptr, ptr %9, align 8, !tbaa !112
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #17
  br label %135

135:                                              ; preds = %133, %128
  %136 = phi ptr [ %134, %133 ], [ null, %128 ]
  %137 = load i32, ptr %54, align 4, !tbaa !106
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %344

139:                                              ; preds = %135
  %140 = getelementptr inbounds float, ptr %6, i64 1
  %141 = getelementptr inbounds float, ptr %6, i64 2
  %142 = getelementptr inbounds float, ptr %6, i64 3
  %143 = getelementptr inbounds float, ptr %6, i64 1
  %144 = getelementptr inbounds float, ptr %6, i64 2
  %145 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %146 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %147 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %148 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %149 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %150 = getelementptr inbounds float, ptr %7, i64 1
  %151 = getelementptr inbounds float, ptr %7, i64 2
  br label %152

152:                                              ; preds = %139, %335
  %153 = phi i32 [ %137, %139 ], [ %342, %335 ]
  %154 = phi i32 [ 0, %139 ], [ %341, %335 ]
  %155 = phi i32 [ 0, %139 ], [ %340, %335 ]
  %156 = phi ptr [ %130, %139 ], [ %337, %335 ]
  %157 = phi ptr [ %129, %139 ], [ %336, %335 ]
  %158 = load i32, ptr %59, align 8, !tbaa !122
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = mul nsw i32 %153, %155
  %162 = add nsw i32 %158, 1
  %163 = sdiv i32 %161, %162
  %164 = icmp slt i32 %154, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160, %152
  br label %166

166:                                              ; preds = %160, %165
  %167 = phi i1 [ true, %165 ], [ false, %160 ]
  %168 = load i32, ptr %71, align 8, !tbaa !102
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %335

170:                                              ; preds = %166, %327
  %171 = phi i32 [ %332, %327 ], [ 0, %166 ]
  %172 = phi ptr [ %330, %327 ], [ %156, %166 ]
  %173 = phi ptr [ %331, %327 ], [ %157, %166 ]
  br i1 %11, label %174, label %182

174:                                              ; preds = %170
  %175 = load float, ptr %172, align 4, !tbaa !43
  store float %175, ptr %6, align 16, !tbaa !43
  %176 = getelementptr inbounds float, ptr %172, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !43
  store float %177, ptr %140, align 4, !tbaa !43
  %178 = getelementptr inbounds float, ptr %172, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !43
  store float %179, ptr %141, align 8, !tbaa !43
  %180 = getelementptr inbounds float, ptr %172, i64 3
  %181 = load float, ptr %180, align 4, !tbaa !43
  store float %181, ptr %142, align 4, !tbaa !43
  call void @IMB_colormanagement_processor_apply_v4(ptr noundef %136, ptr noundef nonnull %6) #17
  br label %191

182:                                              ; preds = %170, %182
  %183 = phi i64 [ %189, %182 ], [ 0, %170 ]
  %184 = getelementptr inbounds i8, ptr %173, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !63
  %186 = uitofp i8 %185 to float
  %187 = fmul float %186, 0x3F70101020000000
  %188 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %183
  store float %187, ptr %188, align 4, !tbaa !43
  %189 = add nuw nsw i64 %183, 1
  %190 = icmp eq i64 %189, 4
  br i1 %190, label %191, label %182, !llvm.loop !130

191:                                              ; preds = %182, %174
  %192 = load float, ptr %6, align 16, !tbaa !43
  %193 = load float, ptr %143, align 4, !tbaa !43
  %194 = fmul float %193, 0x3FE2C8B440000000
  %195 = call float @llvm.fmuladd.f32(float %192, float 0x3FD322D0E0000000, float %194)
  %196 = load float, ptr %144, align 8, !tbaa !43
  %197 = call float @llvm.fmuladd.f32(float %196, float 0x3FBD2F1AA0000000, float %195)
  br i1 %38, label %198, label %214

198:                                              ; preds = %191, %211
  %199 = phi i64 [ %212, %211 ], [ 0, %191 ]
  %200 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %199
  %201 = load float, ptr %200, align 4, !tbaa !43
  %202 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %199
  %203 = load float, ptr %202, align 8, !tbaa !43
  %204 = fcmp olt float %201, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store float %201, ptr %202, align 8, !tbaa !43
  br label %206

206:                                              ; preds = %205, %198
  %207 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %199, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !43
  %209 = fcmp ogt float %201, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store float %201, ptr %207, align 4, !tbaa !43
  br label %211

211:                                              ; preds = %206, %210
  %212 = add nuw nsw i64 %199, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %232, label %198, !llvm.loop !131

214:                                              ; preds = %191
  call void @rgb_to_ycc(float noundef %192, float noundef %193, float noundef %196, ptr noundef nonnull %7, ptr noundef nonnull %145, ptr noundef nonnull %146, i32 noundef %39) #17
  br label %215

215:                                              ; preds = %214, %229
  %216 = phi i64 [ 0, %214 ], [ %230, %229 ]
  %217 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !43
  %219 = fmul float %218, 0x3F70101020000000
  store float %219, ptr %217, align 4, !tbaa !43
  %220 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %216
  %221 = load float, ptr %220, align 8, !tbaa !43
  %222 = fcmp olt float %219, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  store float %219, ptr %220, align 8, !tbaa !43
  br label %224

224:                                              ; preds = %223, %215
  %225 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %216, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !43
  %227 = fcmp ogt float %219, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store float %219, ptr %225, align 4, !tbaa !43
  br label %229

229:                                              ; preds = %224, %228
  %230 = add nuw nsw i64 %216, 1
  %231 = icmp eq i64 %230, 3
  br i1 %231, label %232, label %215, !llvm.loop !132

232:                                              ; preds = %229, %211
  %233 = call float @llvm.fmuladd.f32(float %197, float 2.550000e+02, float 5.000000e-01)
  %234 = fptosi float %233 to i32
  %235 = call i32 @llvm.smin.i32(i32 %234, i32 255)
  %236 = call i32 @llvm.smax.i32(i32 %235, i32 0)
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds i32, ptr %49, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !62
  %240 = add i32 %239, 1
  store i32 %240, ptr %238, align 4, !tbaa !62
  %241 = load float, ptr %6, align 16, !tbaa !43
  %242 = call float @llvm.fmuladd.f32(float %241, float 2.550000e+02, float 5.000000e-01)
  %243 = fptosi float %242 to i32
  %244 = call i32 @llvm.smin.i32(i32 %243, i32 255)
  %245 = call i32 @llvm.smax.i32(i32 %244, i32 0)
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %41, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !62
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4, !tbaa !62
  %250 = load float, ptr %143, align 4, !tbaa !43
  %251 = call float @llvm.fmuladd.f32(float %250, float 2.550000e+02, float 5.000000e-01)
  %252 = fptosi float %251 to i32
  %253 = call i32 @llvm.smin.i32(i32 %252, i32 255)
  %254 = call i32 @llvm.smax.i32(i32 %253, i32 0)
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %43, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !62
  %258 = add i32 %257, 1
  store i32 %258, ptr %256, align 4, !tbaa !62
  %259 = load float, ptr %144, align 8, !tbaa !43
  %260 = call float @llvm.fmuladd.f32(float %259, float 2.550000e+02, float 5.000000e-01)
  %261 = fptosi float %260 to i32
  %262 = call i32 @llvm.smin.i32(i32 %261, i32 255)
  %263 = call i32 @llvm.smax.i32(i32 %262, i32 0)
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds i32, ptr %45, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !62
  %267 = add i32 %266, 1
  store i32 %267, ptr %265, align 4, !tbaa !62
  %268 = load float, ptr %147, align 4, !tbaa !43
  %269 = call float @llvm.fmuladd.f32(float %268, float 2.550000e+02, float 5.000000e-01)
  %270 = fptosi float %269 to i32
  %271 = call i32 @llvm.smin.i32(i32 %270, i32 255)
  %272 = call i32 @llvm.smax.i32(i32 %271, i32 0)
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds i32, ptr %47, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !62
  %276 = add i32 %275, 1
  store i32 %276, ptr %274, align 4, !tbaa !62
  br i1 %167, label %327, label %277

277:                                              ; preds = %232
  %278 = sitofp i32 %171 to float
  %279 = load i32, ptr %71, align 8, !tbaa !102
  %280 = sitofp i32 %279 to float
  %281 = fdiv float %278, %280
  %282 = mul nsw i32 %279, %155
  %283 = add nsw i32 %282, %171
  %284 = shl nsw i32 %283, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @rgb_to_yuv(float noundef %241, float noundef %250, float noundef %259, ptr noundef nonnull %5, ptr noundef nonnull %148, ptr noundef nonnull %149) #17
  %285 = load float, ptr %148, align 4, !tbaa !43
  %286 = load ptr, ptr %94, align 8, !tbaa !129
  %287 = sext i32 %284 to i64
  %288 = getelementptr inbounds float, ptr %286, i64 %287
  store float %285, ptr %288, align 4, !tbaa !43
  %289 = load float, ptr %149, align 4, !tbaa !43
  %290 = or disjoint i32 %284, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, ptr %286, i64 %291
  store float %289, ptr %292, align 4, !tbaa !43
  %293 = load i32, ptr %32, align 8, !tbaa !120
  switch i32 %293, label %326 [
    i32 1, label %294
    i32 0, label %306
    i32 4, label %310
    i32 3, label %310
    i32 2, label %310
  ]

294:                                              ; preds = %277
  %295 = load ptr, ptr %76, align 8, !tbaa !126
  %296 = getelementptr inbounds float, ptr %295, i64 %287
  store float %281, ptr %296, align 4, !tbaa !43
  %297 = load float, ptr %6, align 16, !tbaa !43
  %298 = getelementptr inbounds float, ptr %295, i64 %291
  store float %297, ptr %298, align 4, !tbaa !43
  %299 = load ptr, ptr %82, align 8, !tbaa !127
  %300 = getelementptr inbounds float, ptr %299, i64 %287
  store float %281, ptr %300, align 4, !tbaa !43
  %301 = load float, ptr %143, align 4, !tbaa !43
  %302 = getelementptr inbounds float, ptr %299, i64 %291
  store float %301, ptr %302, align 4, !tbaa !43
  %303 = load ptr, ptr %88, align 8, !tbaa !128
  %304 = getelementptr inbounds float, ptr %303, i64 %287
  store float %281, ptr %304, align 4, !tbaa !43
  %305 = load float, ptr %144, align 8, !tbaa !43
  br label %322

306:                                              ; preds = %277
  %307 = load ptr, ptr %76, align 8, !tbaa !126
  %308 = getelementptr inbounds float, ptr %307, i64 %287
  store float %281, ptr %308, align 4, !tbaa !43
  %309 = load float, ptr %7, align 4, !tbaa !43
  br label %322

310:                                              ; preds = %277, %277, %277
  %311 = load ptr, ptr %76, align 8, !tbaa !126
  %312 = getelementptr inbounds float, ptr %311, i64 %287
  store float %281, ptr %312, align 4, !tbaa !43
  %313 = load float, ptr %7, align 4, !tbaa !43
  %314 = getelementptr inbounds float, ptr %311, i64 %291
  store float %313, ptr %314, align 4, !tbaa !43
  %315 = load ptr, ptr %82, align 8, !tbaa !127
  %316 = getelementptr inbounds float, ptr %315, i64 %287
  store float %281, ptr %316, align 4, !tbaa !43
  %317 = load float, ptr %150, align 4, !tbaa !43
  %318 = getelementptr inbounds float, ptr %315, i64 %291
  store float %317, ptr %318, align 4, !tbaa !43
  %319 = load ptr, ptr %88, align 8, !tbaa !128
  %320 = getelementptr inbounds float, ptr %319, i64 %287
  store float %281, ptr %320, align 4, !tbaa !43
  %321 = load float, ptr %151, align 4, !tbaa !43
  br label %322

322:                                              ; preds = %310, %306, %294
  %323 = phi ptr [ %303, %294 ], [ %307, %306 ], [ %319, %310 ]
  %324 = phi float [ %305, %294 ], [ %309, %306 ], [ %321, %310 ]
  %325 = getelementptr inbounds float, ptr %323, i64 %291
  store float %324, ptr %325, align 4, !tbaa !43
  br label %326

326:                                              ; preds = %322, %277
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %327

327:                                              ; preds = %326, %232
  %328 = load i32, ptr %26, align 4, !tbaa !113
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, ptr %172, i64 %329
  %331 = getelementptr inbounds i8, ptr %173, i64 %329
  %332 = add nuw nsw i32 %171, 1
  %333 = load i32, ptr %71, align 8, !tbaa !102
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %170, label %335, !llvm.loop !133

335:                                              ; preds = %327, %166
  %336 = phi ptr [ %157, %166 ], [ %331, %327 ]
  %337 = phi ptr [ %156, %166 ], [ %330, %327 ]
  %338 = xor i1 %167, true
  %339 = zext i1 %338 to i32
  %340 = add nuw nsw i32 %155, %339
  %341 = add nuw nsw i32 %154, 1
  %342 = load i32, ptr %54, align 4, !tbaa !106
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %152, label %344, !llvm.loop !134

344:                                              ; preds = %335, %135
  br label %345

345:                                              ; preds = %344, %345
  %346 = phi i64 [ %367, %345 ], [ 0, %344 ]
  %347 = phi i32 [ %354, %345 ], [ 0, %344 ]
  %348 = phi i32 [ %366, %345 ], [ 0, %344 ]
  %349 = phi i32 [ %357, %345 ], [ 0, %344 ]
  %350 = phi i32 [ %360, %345 ], [ 0, %344 ]
  %351 = phi i32 [ %363, %345 ], [ 0, %344 ]
  %352 = getelementptr inbounds i32, ptr %49, i64 %346
  %353 = load i32, ptr %352, align 4, !tbaa !62
  %354 = call i32 @llvm.umax.i32(i32 %353, i32 %347)
  %355 = getelementptr inbounds i32, ptr %41, i64 %346
  %356 = load i32, ptr %355, align 4, !tbaa !62
  %357 = call i32 @llvm.umax.i32(i32 %356, i32 %349)
  %358 = getelementptr inbounds i32, ptr %43, i64 %346
  %359 = load i32, ptr %358, align 4, !tbaa !62
  %360 = call i32 @llvm.umax.i32(i32 %359, i32 %350)
  %361 = getelementptr inbounds i32, ptr %45, i64 %346
  %362 = load i32, ptr %361, align 4, !tbaa !62
  %363 = call i32 @llvm.umax.i32(i32 %362, i32 %351)
  %364 = getelementptr inbounds i32, ptr %47, i64 %346
  %365 = load i32, ptr %364, align 4, !tbaa !62
  %366 = call i32 @llvm.umax.i32(i32 %365, i32 %348)
  %367 = add nuw nsw i64 %346, 1
  %368 = icmp eq i64 %367, 256
  br i1 %368, label %369, label %345, !llvm.loop !135

369:                                              ; preds = %345
  %370 = icmp eq i32 %354, 0
  %371 = uitofp i32 %354 to double
  %372 = fdiv double 1.000000e+00, %371
  %373 = select i1 %370, double 1.000000e+00, double %372
  %374 = icmp eq i32 %366, 0
  %375 = uitofp i32 %366 to double
  %376 = fdiv double 1.000000e+00, %375
  %377 = select i1 %374, double 1.000000e+00, double %376
  %378 = icmp eq i32 %357, 0
  %379 = uitofp i32 %357 to double
  %380 = fdiv double 1.000000e+00, %379
  %381 = select i1 %378, double 1.000000e+00, double %380
  %382 = icmp eq i32 %360, 0
  %383 = uitofp i32 %360 to double
  %384 = fdiv double 1.000000e+00, %383
  %385 = select i1 %382, double 1.000000e+00, double %384
  %386 = icmp eq i32 %363, 0
  %387 = uitofp i32 %363 to double
  %388 = fdiv double 1.000000e+00, %387
  %389 = select i1 %386, double 1.000000e+00, double %388
  br label %390

390:                                              ; preds = %369, %390
  %391 = phi i64 [ 0, %369 ], [ %422, %390 ]
  %392 = getelementptr inbounds i32, ptr %49, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !62
  %394 = uitofp i32 %393 to double
  %395 = fmul double %373, %394
  %396 = fptrunc double %395 to float
  %397 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 2, i64 %391
  store float %396, ptr %397, align 4, !tbaa !43
  %398 = getelementptr inbounds i32, ptr %41, i64 %391
  %399 = load i32, ptr %398, align 4, !tbaa !62
  %400 = uitofp i32 %399 to double
  %401 = fmul double %381, %400
  %402 = fptrunc double %401 to float
  %403 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 3, i64 %391
  store float %402, ptr %403, align 4, !tbaa !43
  %404 = getelementptr inbounds i32, ptr %43, i64 %391
  %405 = load i32, ptr %404, align 4, !tbaa !62
  %406 = uitofp i32 %405 to double
  %407 = fmul double %385, %406
  %408 = fptrunc double %407 to float
  %409 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 4, i64 %391
  store float %408, ptr %409, align 4, !tbaa !43
  %410 = getelementptr inbounds i32, ptr %45, i64 %391
  %411 = load i32, ptr %410, align 4, !tbaa !62
  %412 = uitofp i32 %411 to double
  %413 = fmul double %389, %412
  %414 = fptrunc double %413 to float
  %415 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 5, i64 %391
  store float %414, ptr %415, align 4, !tbaa !43
  %416 = getelementptr inbounds i32, ptr %47, i64 %391
  %417 = load i32, ptr %416, align 4, !tbaa !62
  %418 = uitofp i32 %417 to double
  %419 = fmul double %377, %418
  %420 = fptrunc double %419 to float
  %421 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 6, i64 %391
  store float %420, ptr %421, align 4, !tbaa !43
  %422 = add nuw nsw i64 %391, 1
  %423 = icmp eq i64 %422, 256
  br i1 %423, label %424, label %390, !llvm.loop !136

424:                                              ; preds = %390
  %425 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %425(ptr noundef %49) #17
  %426 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %426(ptr noundef %41) #17
  %427 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %427(ptr noundef %43) #17
  %428 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %428(ptr noundef %45) #17
  %429 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %429(ptr noundef %47) #17
  %430 = icmp eq ptr %136, null
  br i1 %430, label %432, label %431

431:                                              ; preds = %424
  call void @IMB_colormanagement_processor_free(ptr noundef nonnull %136) #17
  br label %432

432:                                              ; preds = %431, %424
  %433 = load ptr, ptr %8, align 8, !tbaa !49
  %434 = icmp eq ptr %433, null
  br i1 %434, label %436, label %435

435:                                              ; preds = %432
  call void @IMB_display_buffer_release(ptr noundef nonnull %433) #17
  br label %436

436:                                              ; preds = %435, %432
  store i32 1, ptr %0, align 8, !tbaa !115
  br label %437

437:                                              ; preds = %4, %25, %16, %436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret void
}

declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_processor_apply_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_to_ycc(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @scopes_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !126
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %9) #17
  store ptr null, ptr %8, align 8, !tbaa !127
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %18(ptr noundef nonnull %15) #17
  store ptr null, ptr %14, align 8, !tbaa !128
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %24(ptr noundef nonnull %21) #17
  store ptr null, ptr %20, align 8, !tbaa !129
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @scopes_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 3
  store float 3.000000e+01, ptr %2, align 4, !tbaa !121
  %3 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 9
  store i16 1, ptr %3, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 5
  store float 0x3FD3333340000000, ptr %4, align 4, !tbaa !138
  %5 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 8
  store float 0x3FD3333340000000, ptr %5, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 7
  store i32 100, ptr %6, align 4, !tbaa !140
  %7 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 9
  store i32 100, ptr %7, align 4, !tbaa !141
  %8 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 11
  store i32 100, ptr %8, align 4, !tbaa !142
  store i32 0, ptr %0, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_display_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @IMB_colormanagement_display_get_default_name() #17
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %2, i64 noundef 64) #17
  ret void
}

declare ptr @IMB_colormanagement_display_get_default_name() local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_display_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_view_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %3 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, i64 noundef 64) #17
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.10, i64 noundef 64) #17
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !143
  %7 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %7, align 8, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_view_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 64) #17
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 64) #17
  %9 = load i32, ptr %1, align 8, !tbaa !146
  store i32 %9, ptr %0, align 8, !tbaa !146
  %10 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  store float %11, ptr %12, align 8, !tbaa !145
  %13 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 5
  %14 = load float, ptr %13, align 4, !tbaa !143
  %15 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 5
  store float %14, ptr %15, align 4, !tbaa !143
  %16 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %21 = tail call ptr %20(ptr noundef nonnull %17) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %21, ptr noundef nonnull align 8 dereferenceable(384) %17, i64 384, i1 false), !tbaa.struct !61
  br label %22

22:                                               ; preds = %47, %19
  %23 = phi i64 [ 0, %19 ], [ %48, %47 ]
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %17, i64 0, i32 6, i64 %23, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %29 = tail call ptr %28(ptr noundef nonnull %25) #17
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %21, i64 0, i32 6, i64 %23, i32 7
  store ptr %29, ptr %30, align 8, !tbaa !50
  br label %31

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.CurveMapping, ptr %17, i64 0, i32 6, i64 %23, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %37 = tail call ptr %36(ptr noundef nonnull %33) #17
  %38 = getelementptr inbounds %struct.CurveMapping, ptr %21, i64 0, i32 6, i64 %23, i32 8
  store ptr %37, ptr %38, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.CurveMapping, ptr %17, i64 0, i32 6, i64 %23, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %45 = tail call ptr %44(ptr noundef nonnull %41) #17
  %46 = getelementptr inbounds %struct.CurveMapping, ptr %21, i64 0, i32 6, i64 %23, i32 9
  store ptr %45, ptr %46, align 8, !tbaa !59
  br label %47

47:                                               ; preds = %43, %39
  %48 = add nuw nsw i64 %23, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %50, label %22, !llvm.loop !64

50:                                               ; preds = %47, %2
  %51 = phi ptr [ null, %2 ], [ %21, %47 ]
  %52 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_view_settings_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %24
  %6 = phi i64 [ %25, %24 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 6, i64 %6, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %11(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 6, i64 %6, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %17(ptr noundef nonnull %14) #17
  store ptr null, ptr %13, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 6, i64 %6, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %23(ptr noundef nonnull %20) #17
  store ptr null, ptr %19, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %22, %18
  %25 = add nuw nsw i64 %6, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %5, !llvm.loop !60

27:                                               ; preds = %24
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %28(ptr noundef nonnull %3) #17
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_colorspace_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 64) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_color_managed_colorspace_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calchandle_curvemap(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #14 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !88
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 2, !tbaa !86
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %135, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %17 = load float, ptr %13, align 4, !tbaa !43
  %18 = load float, ptr %16, align 4, !tbaa !43
  %19 = fneg float %18
  %20 = tail call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %19)
  store float %20, ptr %4, align 4, !tbaa !43
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !43
  %25 = fneg float %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+00, float %25)
  %27 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !43
  br label %30

28:                                               ; preds = %12
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi ptr [ %4, %15 ], [ %29, %28 ]
  %32 = icmp eq ptr %2, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %35 = load float, ptr %13, align 4, !tbaa !43
  %36 = load float, ptr %34, align 4, !tbaa !43
  %37 = fneg float %36
  %38 = tail call float @llvm.fmuladd.f32(float %35, float 2.000000e+00, float %37)
  store float %38, ptr %4, align 4, !tbaa !43
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !43
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !43
  %43 = fneg float %42
  %44 = tail call float @llvm.fmuladd.f32(float %40, float 2.000000e+00, float %43)
  %45 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !43
  br label %48

46:                                               ; preds = %30
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi ptr [ %4, %33 ], [ %47, %46 ]
  %50 = phi ptr [ %34, %33 ], [ %31, %46 ]
  %51 = load float, ptr %13, align 4, !tbaa !43
  %52 = load float, ptr %50, align 4, !tbaa !43
  %53 = fsub float %51, %52
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !43
  %56 = getelementptr inbounds float, ptr %50, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !43
  %58 = fsub float %55, %57
  %59 = load float, ptr %49, align 4, !tbaa !43
  %60 = fsub float %59, %51
  %61 = getelementptr inbounds float, ptr %49, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !43
  %63 = fsub float %62, %55
  %64 = fmul float %58, %58
  %65 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %64)
  %66 = tail call float @sqrtf(float noundef %65) #17
  %67 = fmul float %63, %63
  %68 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %67)
  %69 = tail call float @sqrtf(float noundef %68) #17
  %70 = fcmp oeq float %66, 0.000000e+00
  %71 = select i1 %70, float 1.000000e+00, float %66
  %72 = fcmp oeq float %69, 0.000000e+00
  %73 = select i1 %72, float 1.000000e+00, float %69
  %74 = load i8, ptr %5, align 1, !tbaa !88
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %48
  %77 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %78 = load i8, ptr %77, align 2, !tbaa !86
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %80, label %115

80:                                               ; preds = %76, %48
  %81 = fdiv float %60, %73
  %82 = fdiv float %53, %71
  %83 = fadd float %82, %81
  %84 = fdiv float %63, %73
  %85 = fdiv float %58, %71
  %86 = fadd float %85, %84
  %87 = fmul float %86, %86
  %88 = tail call float @llvm.fmuladd.f32(float %83, float %83, float %87)
  %89 = tail call float @sqrtf(float noundef %88) #17
  %90 = fmul float %89, 0x40047DBF40000000
  %91 = fcmp une float %90, 0.000000e+00
  br i1 %91, label %92, label %115

92:                                               ; preds = %80
  %93 = load i8, ptr %5, align 1, !tbaa !88
  %94 = icmp eq i8 %93, 1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = fneg float %71
  %97 = fdiv float %96, %90
  %98 = load float, ptr %13, align 4, !tbaa !43
  %99 = tail call float @llvm.fmuladd.f32(float %83, float %97, float %98)
  store float %99, ptr %0, align 4, !tbaa !43
  %100 = load float, ptr %54, align 4, !tbaa !43
  %101 = tail call float @llvm.fmuladd.f32(float %86, float %97, float %100)
  %102 = getelementptr inbounds float, ptr %0, i64 1
  store float %101, ptr %102, align 4, !tbaa !43
  br label %103

103:                                              ; preds = %95, %92
  %104 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %105 = load i8, ptr %104, align 2, !tbaa !86
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = fdiv float %73, %90
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %110 = load float, ptr %13, align 4, !tbaa !43
  %111 = tail call float @llvm.fmuladd.f32(float %83, float %108, float %110)
  store float %111, ptr %109, align 4, !tbaa !43
  %112 = load float, ptr %54, align 4, !tbaa !43
  %113 = tail call float @llvm.fmuladd.f32(float %86, float %108, float %112)
  %114 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %113, ptr %114, align 4, !tbaa !43
  br label %115

115:                                              ; preds = %80, %107, %103, %76
  %116 = load i8, ptr %5, align 1, !tbaa !88
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load float, ptr %13, align 4, !tbaa !43
  %120 = tail call float @llvm.fmuladd.f32(float %53, float 0xBFD5555560000000, float %119)
  store float %120, ptr %0, align 4, !tbaa !43
  %121 = load float, ptr %54, align 4, !tbaa !43
  %122 = tail call float @llvm.fmuladd.f32(float %58, float 0xBFD5555560000000, float %121)
  %123 = getelementptr inbounds float, ptr %0, i64 1
  store float %122, ptr %123, align 4, !tbaa !43
  br label %124

124:                                              ; preds = %118, %115
  %125 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %126 = load i8, ptr %125, align 2, !tbaa !86
  %127 = icmp eq i8 %126, 2
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %130 = load float, ptr %13, align 4, !tbaa !43
  %131 = tail call float @llvm.fmuladd.f32(float %60, float 0x3FD5555560000000, float %130)
  store float %131, ptr %129, align 4, !tbaa !43
  %132 = load float, ptr %54, align 4, !tbaa !43
  %133 = tail call float @llvm.fmuladd.f32(float %63, float 0x3FD5555560000000, float %132)
  %134 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %133, ptr %134, align 4, !tbaa !43
  br label %135

135:                                              ; preds = %124, %128, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare void @correct_bezpart(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"CurveMapping", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"float", !37, i64 0}
!41 = !{!35, !36, i64 4}
!42 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !46, i64 2}
!45 = !{!"CurveMap", !46, i64 0, !46, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !37, i64 56, !37, i64 64}
!46 = !{!"short", !37, i64 0}
!47 = !{!"any pointer", !37, i64 0}
!48 = !{!45, !46, i64 0}
!49 = !{!47, !47, i64 0}
!50 = !{!45, !47, i64 32}
!51 = !{!52, !40, i64 0}
!52 = !{!"CurveMapPoint", !40, i64 0, !40, i64 4, !46, i64 8, !46, i64 10}
!53 = !{!52, !40, i64 4}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!35, !36, i64 12}
!58 = !{!45, !47, i64 40}
!59 = !{!45, !47, i64 48}
!60 = distinct !{!60, !55, !56}
!61 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 4, !62, i64 12, i64 4, !62, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 288, !63, i64 336, i64 12, !63, i64 348, i64 12, !63, i64 360, i64 12, !63, i64 372, i64 12, !63}
!62 = !{!36, !36, i64 0}
!63 = !{!37, !37, i64 0}
!64 = distinct !{!64, !55, !56}
!65 = distinct !{!65, !55, !56}
!66 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 2, !67, i64 10, i64 2, !67}
!67 = !{!46, !46, i64 0}
!68 = distinct !{!68, !55, !56}
!69 = !{!52, !46, i64 8}
!70 = distinct !{!70, !55, !56}
!71 = !{!52, !46, i64 10}
!72 = distinct !{!72, !55, !56}
!73 = !{!39, !40, i64 0}
!74 = !{!39, !40, i64 12}
!75 = !{!39, !40, i64 4}
!76 = !{!39, !40, i64 8}
!77 = distinct !{!77, !55, !56}
!78 = distinct !{!78, !55, !56}
!79 = distinct !{!79, !55, !56}
!80 = distinct !{!80, !55, !56}
!81 = distinct !{!81, !55, !56}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}
!84 = !{!45, !40, i64 8}
!85 = !{!45, !40, i64 12}
!86 = !{!87, !37, i64 50}
!87 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!88 = !{!87, !37, i64 49}
!89 = distinct !{!89, !55, !56}
!90 = distinct !{!90, !55, !56}
!91 = distinct !{!91, !55, !56}
!92 = !{!45, !40, i64 4}
!93 = distinct !{!93, !55, !56}
!94 = distinct !{!94, !55, !56}
!95 = distinct !{!95, !55, !56}
!96 = distinct !{!96, !55, !56}
!97 = distinct !{!97, !55, !56}
!98 = distinct !{!98, !55, !56}
!99 = distinct !{!99, !55, !56}
!100 = distinct !{!100, !55, !56}
!101 = distinct !{!101, !55, !56}
!102 = !{!103, !36, i64 16}
!103 = !{!"ImBuf", !47, i64 0, !47, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !47, i64 40, !47, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !47, i64 88, !47, i64 96, !47, i64 104, !40, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !47, i64 296, !47, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !47, i64 2368, !36, i64 2376, !47, i64 2384, !36, i64 2392, !36, i64 2396, !47, i64 2400, !47, i64 2408, !47, i64 2416, !47, i64 2424, !36, i64 2432, !104, i64 2436, !105, i64 2456}
!104 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!105 = !{!"DDSData", !36, i64 0, !36, i64 4, !47, i64 8, !36, i64 16}
!106 = !{!103, !36, i64 20}
!107 = !{!108, !36, i64 0}
!108 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !46, i64 5136, !46, i64 5138, !36, i64 5140, !37, i64 5144}
!109 = !{!108, !36, i64 4}
!110 = !{!108, !40, i64 5128}
!111 = !{!103, !47, i64 40}
!112 = !{!103, !47, i64 48}
!113 = !{!103, !36, i64 28}
!114 = distinct !{!114, !55, !56}
!115 = !{!116, !36, i64 0}
!116 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !108, i64 64, !47, i64 5224, !47, i64 5232, !47, i64 5240, !47, i64 5248, !36, i64 5256, !36, i64 5260}
!117 = !{!116, !40, i64 5196}
!118 = !{!116, !36, i64 64}
!119 = !{!116, !36, i64 68}
!120 = !{!116, !36, i64 16}
!121 = !{!116, !40, i64 12}
!122 = !{!116, !36, i64 8}
!123 = !{!116, !36, i64 4}
!124 = distinct !{!124, !55, !56}
!125 = !{!116, !36, i64 5256}
!126 = !{!116, !47, i64 5224}
!127 = !{!116, !47, i64 5232}
!128 = !{!116, !47, i64 5240}
!129 = !{!116, !47, i64 5248}
!130 = distinct !{!130, !55, !56}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = distinct !{!135, !55, !56}
!136 = distinct !{!136, !55, !56}
!137 = !{!116, !46, i64 5200}
!138 = !{!116, !40, i64 20}
!139 = !{!116, !40, i64 32}
!140 = !{!116, !36, i64 28}
!141 = !{!116, !36, i64 36}
!142 = !{!116, !36, i64 5204}
!143 = !{!144, !40, i64 140}
!144 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !47, i64 144, !47, i64 152}
!145 = !{!144, !40, i64 136}
!146 = !{!144, !36, i64 0}
!147 = !{!144, !47, i64 144}

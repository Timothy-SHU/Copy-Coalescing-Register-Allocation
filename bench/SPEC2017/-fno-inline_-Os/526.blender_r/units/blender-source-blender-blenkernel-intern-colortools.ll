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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_set_defaults(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  store i32 1, ptr %0, align 8, !tbaa !34
  %7 = icmp eq i32 %1, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !41
  br label %10

10:                                               ; preds = %8, %6
  %11 = tail call fastcc float @min_ff(float noundef %2, float noundef %4) #20
  %12 = tail call fastcc float @min_ff(float noundef %3, float noundef %5) #20
  %13 = tail call fastcc float @max_ff(float noundef %2, float noundef %4) #20
  %14 = tail call fastcc float @max_ff(float noundef %3, float noundef %5) #20
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 4
  tail call void @BLI_rctf_init(ptr noundef nonnull %15, float noundef %11, float noundef %13, float noundef %12, float noundef %14) #21
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !42
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9, i64 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %18, align 4, !tbaa !43
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %17, align 4, !tbaa !43
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %32, %22 ]
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %23
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %23, i32 1
  store i16 1, ptr %25, align 2, !tbaa !44
  store i16 2, ptr %24, align 8, !tbaa !48
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %27 = tail call ptr %26(i64 noundef 24, ptr noundef nonnull @.str) #21
  %28 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %23, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !50
  store float %2, ptr %27, align 4, !tbaa !51
  %29 = getelementptr inbounds %struct.CurveMapPoint, ptr %27, i64 0, i32 1
  store float %3, ptr %29, align 4, !tbaa !53
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %27, i64 1
  store float %4, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.CurveMapPoint, ptr %27, i64 1, i32 1
  store float %5, ptr %31, align 4, !tbaa !53
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, %21
  br i1 %33, label %34, label %22, !llvm.loop !54

34:                                               ; preds = %22, %10
  %35 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  store i32 0, ptr %35, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !57 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !58 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @curvemapping_add(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.1) #21
  tail call void @curvemapping_set_defaults(ptr noundef %7, i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) #20
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %8(ptr noundef nonnull %5) #21
  store ptr null, ptr %4, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %3, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %14(ptr noundef nonnull %11) #21
  store ptr null, ptr %10, align 8, !tbaa !59
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %3, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %20(ptr noundef nonnull %17) #21
  store ptr null, ptr %16, align 8, !tbaa !60
  br label %21

21:                                               ; preds = %15, %19
  %22 = add nuw nsw i64 %3, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %2, !llvm.loop !61

24:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @curvemapping_free_data(ptr noundef nonnull %0) #20
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %4(ptr noundef nonnull %0) #21
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_copy_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false), !tbaa.struct !62
  br label %3

3:                                                ; preds = %2, %28
  %4 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %10 = tail call ptr %9(ptr noundef nonnull %6) #21
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %18 = tail call ptr %17(ptr noundef nonnull %14) #21
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %26 = tail call ptr %25(ptr noundef nonnull %22) #21
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %4, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %20, %24
  %29 = add nuw nsw i64 %4, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %3, !llvm.loop !65

31:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @curvemapping_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %5 = tail call ptr %4(ptr noundef nonnull %0) #21
  tail call void @curvemapping_copy_data(ptr noundef %5, ptr noundef nonnull %0) #20
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @curvemapping_set_black_white_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %14, %4 ]
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fsub float %7, %9
  %11 = tail call fastcc float @max_ff(float noundef %10, float noundef 0x3EE4F8B580000000) #20
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds float, ptr %2, i64 %5
  store float %12, ptr %13, align 4, !tbaa !43
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %4, !llvm.loop !66

16:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @curvemapping_set_black_white(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %2) #20
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  tail call void @curvemapping_set_black_white_ex(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !67 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @curvemap_remove_point(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !48
  %4 = icmp slt i16 %3, 3
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %7 = zext nneg i16 %3 to i64
  %8 = mul nuw nsw i64 %7, 12
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #21
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  br label %14

14:                                               ; preds = %12, %29
  %15 = phi i16 [ %10, %12 ], [ %30, %29 ]
  %16 = phi i64 [ 0, %12 ], [ %33, %29 ]
  %17 = phi i32 [ 0, %12 ], [ %32, %29 ]
  %18 = phi i32 [ 0, %12 ], [ %31, %29 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.CurveMapPoint, ptr %19, i64 %16
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, ptr noundef nonnull align 4 dereferenceable(12) %20, i64 12, i1 false), !tbaa.struct !68
  %25 = add nsw i32 %18, 1
  %26 = load i16, ptr %0, align 8, !tbaa !48
  br label %29

27:                                               ; preds = %14
  %28 = add nsw i32 %17, 1
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i16 [ %26, %22 ], [ %15, %27 ]
  %31 = phi i32 [ %25, %22 ], [ %18, %27 ]
  %32 = phi i32 [ %17, %22 ], [ %28, %27 ]
  %33 = add nuw nsw i64 %16, 1
  %34 = sext i16 %30 to i64
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %14, label %36, !llvm.loop !70

36:                                               ; preds = %29, %5
  %37 = phi i32 [ 0, %5 ], [ %32, %29 ]
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  tail call void %38(ptr noundef %40) #21
  store ptr %9, ptr %39, align 8, !tbaa !50
  %41 = load i16, ptr %0, align 8, !tbaa !48
  %42 = trunc i32 %37 to i16
  %43 = sub i16 %41, %42
  store i16 %43, ptr %0, align 8, !tbaa !48
  %44 = icmp ne i32 %37, 0
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %2, %36
  %47 = phi i8 [ %45, %36 ], [ 0, %2 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemap_remove(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %4 = load i16, ptr %0, align 8, !tbaa !48
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 12
  %7 = tail call ptr %3(i64 noundef %6, ptr noundef nonnull @.str) #21
  %8 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !68
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %41

12:                                               ; preds = %2, %30
  %13 = phi i16 [ %31, %30 ], [ %10, %2 ]
  %14 = phi i64 [ %34, %30 ], [ 1, %2 ]
  %15 = phi i16 [ %33, %30 ], [ 0, %2 ]
  %16 = phi i32 [ %32, %30 ], [ 1, %2 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 %14, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !71
  %20 = and i16 %19, %1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 %14
  %24 = sext i32 %16 to i64
  %25 = getelementptr inbounds %struct.CurveMapPoint, ptr %7, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %25, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !68
  %26 = add nsw i32 %16, 1
  %27 = load i16, ptr %0, align 8, !tbaa !48
  br label %30

28:                                               ; preds = %12
  %29 = add i16 %15, 1
  br label %30

30:                                               ; preds = %22, %28
  %31 = phi i16 [ %13, %28 ], [ %27, %22 ]
  %32 = phi i32 [ %16, %28 ], [ %26, %22 ]
  %33 = phi i16 [ %29, %28 ], [ %15, %22 ]
  %34 = add nuw nsw i64 %14, 1
  %35 = sext i16 %31 to i64
  %36 = add nsw i64 %35, -1
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %12, label %38, !llvm.loop !72

38:                                               ; preds = %30
  %39 = sext i32 %32 to i64
  %40 = and i64 %34, 4294967295
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi i64 [ 1, %2 ], [ %40, %38 ]
  %43 = phi i64 [ 1, %2 ], [ %39, %38 ]
  %44 = phi i16 [ 0, %2 ], [ %33, %38 ]
  %45 = getelementptr inbounds %struct.CurveMapPoint, ptr %7, i64 %43
  %46 = load ptr, ptr %8, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.CurveMapPoint, ptr %46, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %45, ptr noundef nonnull align 4 dereferenceable(12) %47, i64 12, i1 false), !tbaa.struct !68
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %49 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void %48(ptr noundef %49) #21
  store ptr %7, ptr %8, align 8, !tbaa !50
  %50 = load i16, ptr %0, align 8, !tbaa !48
  %51 = sub i16 %50, %44
  store i16 %51, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @curvemap_insert(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = load i16, ptr %0, align 8, !tbaa !48
  %6 = sext i16 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = add nsw i64 %7, 12
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str) #21
  %10 = load i16, ptr %0, align 8, !tbaa !48
  %11 = add i16 %10, 1
  store i16 %11, ptr %0, align 8, !tbaa !48
  %12 = icmp ult i16 %10, 32767
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = zext nneg i16 %11 to i64
  %15 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  br label %16

16:                                               ; preds = %13, %52
  %17 = phi i64 [ 0, %13 ], [ %53, %52 ]
  %18 = phi i8 [ 0, %13 ], [ %56, %52 ]
  %19 = phi i32 [ 0, %13 ], [ %55, %52 ]
  %20 = phi ptr [ null, %13 ], [ %54, %52 ]
  %21 = icmp eq i8 %18, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %15, align 8, !tbaa !50
  %24 = add nuw nsw i64 %17, 1
  br label %37

25:                                               ; preds = %16
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 %17
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fcmp ogt float %31, %1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17
  store float %1, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17, i32 1
  store float %2, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17, i32 2
  store i16 1, ptr %36, align 4, !tbaa !71
  br label %52

37:                                               ; preds = %22, %28
  %38 = phi i64 [ %24, %22 ], [ %26, %28 ]
  %39 = phi ptr [ %23, %22 ], [ %29, %28 ]
  %40 = sext i32 %19 to i64
  %41 = getelementptr inbounds %struct.CurveMapPoint, ptr %39, i64 %40
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17
  %43 = load <2 x float>, ptr %41, align 4, !tbaa !43
  store <2 x float> %43, ptr %42, align 4, !tbaa !43
  %44 = getelementptr inbounds %struct.CurveMapPoint, ptr %39, i64 %40, i32 2
  %45 = load i16, ptr %44, align 4, !tbaa !71
  %46 = and i16 %45, -2
  %47 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17, i32 2
  store i16 %46, ptr %47, align 4, !tbaa !71
  %48 = getelementptr inbounds %struct.CurveMapPoint, ptr %39, i64 %40, i32 3
  %49 = load i16, ptr %48, align 2, !tbaa !73
  %50 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %17, i32 3
  store i16 %49, ptr %50, align 2, !tbaa !73
  %51 = add nsw i32 %19, 1
  br label %52

52:                                               ; preds = %33, %37
  %53 = phi i64 [ %26, %33 ], [ %38, %37 ]
  %54 = phi ptr [ %34, %33 ], [ %20, %37 ]
  %55 = phi i32 [ %19, %33 ], [ %51, %37 ]
  %56 = phi i8 [ 1, %33 ], [ %18, %37 ]
  %57 = icmp eq i64 %53, %14
  br i1 %57, label %58, label %16, !llvm.loop !74

58:                                               ; preds = %52, %3
  %59 = phi ptr [ null, %3 ], [ %54, %52 ]
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  tail call void %60(ptr noundef %62) #21
  store ptr %9, ptr %61, align 8, !tbaa !50
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemap_reset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %9(ptr noundef nonnull %6) #21
  br label %10

10:                                               ; preds = %8, %4
  switch i32 %2, label %11 [
    i32 0, label %15
    i32 1, label %27
    i32 2, label %33
    i32 3, label %39
    i32 4, label %43
    i32 5, label %44
    i32 6, label %50
  ]

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 8, !tbaa !48
  %13 = sext i16 %12 to i64
  %14 = mul nsw i64 %13, 12
  br label %56

15:                                               ; preds = %10
  store i16 2, ptr %0, align 8, !tbaa !48
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %17 = tail call ptr %16(i64 noundef 24, ptr noundef nonnull @.str) #21
  store ptr %17, ptr %5, align 8, !tbaa !50
  %18 = load float, ptr %1, align 4, !tbaa !75
  store float %18, ptr %17, align 4, !tbaa !51
  %19 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !76
  %21 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 0, i32 1
  store float %20, ptr %21, align 4, !tbaa !53
  %22 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 0, i32 2
  store i16 0, ptr %22, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 1
  %25 = load <2 x float>, ptr %23, align 4, !tbaa !43
  store <2 x float> %25, ptr %24, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.CurveMapPoint, ptr %17, i64 1, i32 2
  store i16 0, ptr %26, align 4, !tbaa !71
  br label %77

27:                                               ; preds = %10
  store i16 4, ptr %0, align 8, !tbaa !48
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %29 = tail call ptr %28(i64 noundef 48, ptr noundef nonnull @.str) #21
  store ptr %29, ptr %5, align 8, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %29, align 4, !tbaa !43
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 1
  store <2 x float> <float 2.500000e-01, float 5.000000e-01>, ptr %30, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 2
  store <2 x float> <float 7.500000e-01, float 0x3FA47AE140000000>, ptr %31, align 4, !tbaa !43
  %32 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 3
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %32, align 4, !tbaa !43
  br label %77

33:                                               ; preds = %10
  store i16 4, ptr %0, align 8, !tbaa !48
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %35 = tail call ptr %34(i64 noundef 48, ptr noundef nonnull @.str) #21
  store ptr %35, ptr %5, align 8, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %35, align 4, !tbaa !43
  %36 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 1
  store <2 x float> <float 2.500000e-01, float 0x3FEE147AE0000000>, ptr %36, align 4, !tbaa !43
  %37 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 2
  store <2 x float> <float 7.500000e-01, float 0x3FAEB851E0000000>, ptr %37, align 4, !tbaa !43
  %38 = getelementptr inbounds %struct.CurveMapPoint, ptr %35, i64 3
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %38, align 4, !tbaa !43
  br label %77

39:                                               ; preds = %10
  store i16 2, ptr %0, align 8, !tbaa !48
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %41 = tail call ptr %40(i64 noundef 24, ptr noundef nonnull @.str) #21
  store ptr %41, ptr %5, align 8, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %41, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.CurveMapPoint, ptr %41, i64 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %42, align 4, !tbaa !43
  br label %77

43:                                               ; preds = %10
  store i16 9, ptr %0, align 8, !tbaa !48
  br label %56

44:                                               ; preds = %10
  store i16 4, ptr %0, align 8, !tbaa !48
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %46 = tail call ptr %45(i64 noundef 48, ptr noundef nonnull @.str) #21
  store ptr %46, ptr %5, align 8, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %46, align 4, !tbaa !43
  %47 = getelementptr inbounds %struct.CurveMapPoint, ptr %46, i64 1
  store <2 x float> <float 5.000000e-01, float 0x3FECCCCCC0000000>, ptr %47, align 4, !tbaa !43
  %48 = getelementptr inbounds %struct.CurveMapPoint, ptr %46, i64 2
  store <2 x float> <float 0x3FEB851EC0000000, float 5.000000e-01>, ptr %48, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.CurveMapPoint, ptr %46, i64 3
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %49, align 4, !tbaa !43
  br label %77

50:                                               ; preds = %10
  store i16 4, ptr %0, align 8, !tbaa !48
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %52 = tail call ptr %51(i64 noundef 48, ptr noundef nonnull @.str) #21
  store ptr %52, ptr %5, align 8, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %52, align 4, !tbaa !43
  %53 = getelementptr inbounds %struct.CurveMapPoint, ptr %52, i64 1
  store <2 x float> <float 2.500000e-01, float 0x3FEE666660000000>, ptr %53, align 4, !tbaa !43
  %54 = getelementptr inbounds %struct.CurveMapPoint, ptr %52, i64 2
  store <2 x float> <float 7.500000e-01, float 0x3FDC28F5C0000000>, ptr %54, align 4, !tbaa !43
  %55 = getelementptr inbounds %struct.CurveMapPoint, ptr %52, i64 3
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %55, align 4, !tbaa !43
  br label %77

56:                                               ; preds = %11, %43
  %57 = phi i64 [ %14, %11 ], [ 108, %43 ]
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %59 = tail call ptr %58(i64 noundef %57, ptr noundef nonnull @.str) #21
  store ptr %59, ptr %5, align 8, !tbaa !50
  %60 = icmp eq i32 %2, 4
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i16, ptr %0, align 8, !tbaa !48
  %63 = icmp sgt i16 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = zext nneg i16 %62 to i64
  %66 = add nsw i16 %62, -1
  %67 = sitofp i16 %66 to float
  br label %68

68:                                               ; preds = %64, %68
  %69 = phi i64 [ 0, %64 ], [ %75, %68 ]
  %70 = trunc i64 %69 to i32
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, %67
  %73 = getelementptr inbounds %struct.CurveMapPoint, ptr %59, i64 %69
  store float %72, ptr %73, align 4, !tbaa !51
  %74 = getelementptr inbounds %struct.CurveMapPoint, ptr %59, i64 %69, i32 1
  store float 5.000000e-01, ptr %74, align 4, !tbaa !53
  %75 = add nuw nsw i64 %69, 1
  %76 = icmp eq i64 %75, %65
  br i1 %76, label %77, label %68, !llvm.loop !77

77:                                               ; preds = %68, %61, %56, %50, %44, %39, %33, %27, %15
  %78 = phi ptr [ %59, %56 ], [ %52, %50 ], [ %46, %44 ], [ %41, %39 ], [ %35, %33 ], [ %29, %27 ], [ %17, %15 ], [ %59, %61 ], [ %59, %68 ]
  %79 = icmp eq i32 %3, 1
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i16, ptr %0, align 8, !tbaa !48
  %82 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %83 = tail call ptr %82(ptr noundef %78) #21
  %84 = load i16, ptr %0, align 8, !tbaa !48
  %85 = icmp sgt i16 %84, 0
  %86 = load ptr, ptr %5, align 8, !tbaa !50
  br i1 %85, label %87, label %99

87:                                               ; preds = %80
  %88 = zext nneg i16 %84 to i64
  %89 = sext i16 %81 to i64
  br label %90

90:                                               ; preds = %87, %90
  %91 = phi i64 [ 0, %87 ], [ %97, %90 ]
  %92 = xor i64 %91, -1
  %93 = add nsw i64 %92, %89
  %94 = getelementptr inbounds %struct.CurveMapPoint, ptr %86, i64 %93, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !53
  %96 = getelementptr inbounds %struct.CurveMapPoint, ptr %83, i64 %91, i32 1
  store float %95, ptr %96, align 4, !tbaa !53
  %97 = add nuw nsw i64 %91, 1
  %98 = icmp eq i64 %97, %88
  br i1 %98, label %99, label %90, !llvm.loop !78

99:                                               ; preds = %90, %80
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %100(ptr noundef %86) #21
  store ptr %83, ptr %5, align 8, !tbaa !50
  br label %101

101:                                              ; preds = %99, %77
  %102 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %106(ptr noundef nonnull %103) #21
  store ptr null, ptr %102, align 8, !tbaa !59
  br label %107

107:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemap_sethandle(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
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
  %14 = load i16, ptr %13, align 4, !tbaa !71
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = and i16 %14, -3
  %19 = or disjoint i16 %18, %10
  store i16 %19, ptr %13, align 4, !tbaa !71
  br label %20

20:                                               ; preds = %17, %11
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %11, !llvm.loop !79

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_premultiply(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 8, !tbaa !34
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %3, label %24, label %7

7:                                                ; preds = %2
  br i1 %6, label %76, label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  tail call void %10(ptr noundef %12) #21
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  store ptr %14, ptr %11, align 8, !tbaa !59
  store ptr null, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 5
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 10
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %15, ptr noundef nonnull %16) #20
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 6
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %9, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  tail call fastcc void @zero_v2(ptr noundef nonnull %16) #20
  tail call fastcc void @zero_v2(ptr noundef nonnull %18) #20
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %8, !llvm.loop !80

21:                                               ; preds = %8
  %22 = load i32, ptr %0, align 8, !tbaa !34
  %23 = and i32 %22, -3
  br label %74

24:                                               ; preds = %2
  br i1 %6, label %25, label %76

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  br label %28

28:                                               ; preds = %25, %36
  %29 = phi i64 [ 0, %25 ], [ %42, %36 ]
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %29, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.CurveMap, ptr %26, i64 %29
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %34, ptr noundef nonnull %27) #20
  %35 = load ptr, ptr %30, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %35, %33 ], [ %31, %28 ]
  %38 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %29, i32 9
  store ptr %37, ptr %38, align 8, !tbaa !60
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %40 = tail call ptr %39(i64 noundef 3084, ptr noundef nonnull @.str.2) #21
  store ptr %40, ptr %30, align 8, !tbaa !59
  %41 = load ptr, ptr %38, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3084) %40, ptr noundef nonnull align 4 dereferenceable(3084) %41, i64 3084, i1 false)
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %28, !llvm.loop !81

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3
  %46 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %45, ptr noundef nonnull %27) #20
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 5
  %52 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 6
  br label %53

53:                                               ; preds = %50, %64
  %54 = phi i64 [ 0, %50 ], [ %69, %64 ]
  %55 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %54, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi i64 [ 0, %53 ], [ %62, %57 ]
  %59 = getelementptr inbounds %struct.CurveMapPoint, ptr %56, i64 %58, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !53
  %61 = tail call float @curvemap_evaluateF(ptr noundef nonnull %45, float noundef %60) #20
  store float %61, ptr %59, align 4, !tbaa !53
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, 257
  br i1 %63, label %64, label %57, !llvm.loop !82

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %54, i32 10
  %66 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %54, i32 5
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %65, ptr noundef nonnull %66) #20
  %67 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %54, i32 11
  %68 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 %54, i32 6
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %67, ptr noundef nonnull %68) #20
  tail call fastcc void @mul_v2_v2(ptr noundef nonnull %66, ptr noundef nonnull %51) #20
  tail call fastcc void @mul_v2_v2(ptr noundef nonnull %68, ptr noundef nonnull %52) #20
  %69 = add nuw nsw i64 %54, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %71, label %53, !llvm.loop !83

71:                                               ; preds = %64
  %72 = load i32, ptr %0, align 8, !tbaa !34
  %73 = or i32 %72, 2
  br label %74

74:                                               ; preds = %21, %71
  %75 = phi i32 [ %73, %71 ], [ %23, %21 ]
  store i32 %75, ptr %0, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %74, %24, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !84 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !85 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curvemap_make_table(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %251, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 4
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !43
  store <2 x float> %10, ptr %8, align 8, !tbaa !43
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %12 = load i16, ptr %0, align 8, !tbaa !48
  %13 = sext i16 %12 to i64
  %14 = mul nsw i64 %13, 72
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str.12) #21
  %16 = load i16, ptr %0, align 8, !tbaa !48
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i16 %16, 0
  br i1 %18, label %19, label %110

19:                                               ; preds = %7
  %20 = zext nneg i32 %17 to i64
  br label %24

21:                                               ; preds = %24
  br i1 %18, label %22, label %110

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  br label %46

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %44, %24 ]
  %26 = load float, ptr %8, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.CurveMapPoint, ptr %5, i64 %25
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = tail call fastcc float @min_ff(float noundef %26, float noundef %28) #20
  store float %29, ptr %8, align 8, !tbaa !87
  %30 = load float, ptr %9, align 4, !tbaa !88
  %31 = tail call fastcc float @max_ff(float noundef %30, float noundef %28) #20
  store float %31, ptr %9, align 4, !tbaa !88
  %32 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %25
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %32, i64 0, i64 1
  store float %28, ptr %33, align 4, !tbaa !43
  %34 = getelementptr inbounds %struct.CurveMapPoint, ptr %5, i64 %25, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !53
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %32, i64 0, i64 1, i64 1
  store float %35, ptr %36, align 4, !tbaa !43
  %37 = getelementptr inbounds %struct.CurveMapPoint, ptr %5, i64 %25, i32 2
  %38 = load i16, ptr %37, align 4, !tbaa !71
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  %41 = select i1 %40, i8 1, i8 2
  %42 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %25, i32 6
  store i8 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %25, i32 5
  store i8 %41, ptr %43, align 1
  %44 = add nuw nsw i64 %25, 1
  %45 = icmp eq i64 %44, %20
  br i1 %45, label %21, label %24, !llvm.loop !89

46:                                               ; preds = %22, %60
  %47 = phi i64 [ 0, %22 ], [ %61, %60 ]
  %48 = phi i32 [ %17, %22 ], [ %63, %60 ]
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call fastcc void @calchandle_curvemap(ptr noundef %15, ptr noundef null, ptr noundef nonnull %23) #20
  br label %60

51:                                               ; preds = %46
  %52 = add nsw i32 %48, -1
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %47, %53
  %55 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %47
  %56 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 -1
  br i1 %54, label %57, label %58

57:                                               ; preds = %51
  tail call fastcc void @calchandle_curvemap(ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef null) #20
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 1
  tail call fastcc void @calchandle_curvemap(ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %59) #20
  br label %60

60:                                               ; preds = %50, %58, %57
  %61 = add nuw nsw i64 %47, 1
  %62 = load i16, ptr %0, align 8, !tbaa !48
  %63 = sext i16 %62 to i32
  %64 = sext i16 %62 to i64
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %46, label %66, !llvm.loop !90

66:                                               ; preds = %60
  %67 = icmp sgt i16 %62, 2
  br i1 %67, label %68, label %110

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  %69 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 0, i32 6
  %70 = load i8, ptr %69, align 2, !tbaa !91
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 2
  %75 = tail call fastcc float @len_v3v3(ptr noundef nonnull %73, ptr noundef nonnull %74) #20
  %76 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %76) #20
  %77 = load float, ptr %3, align 4, !tbaa !43
  %78 = load float, ptr %73, align 4, !tbaa !43
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store float %78, ptr %3, align 4, !tbaa !43
  br label %81

81:                                               ; preds = %80, %72
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %73) #20
  %82 = call fastcc float @len_v3(ptr noundef nonnull %3) #20
  %83 = fcmp ogt float %82, 0x3E80000000000000
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = fdiv float %75, %82
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %85) #20
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %74, ptr noundef nonnull %3, ptr noundef nonnull %73) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %73, ptr noundef nonnull %3) #20
  br label %86

86:                                               ; preds = %81, %84, %68
  %87 = load i16, ptr %0, align 8, !tbaa !48
  %88 = sext i16 %87 to i64
  %89 = add nsw i64 %88, -1
  %90 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %89
  %91 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %89, i32 6
  %92 = load i8, ptr %91, align 2, !tbaa !91
  %93 = icmp eq i8 %92, 1
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = getelementptr inbounds [3 x [3 x float]], ptr %90, i64 0, i64 1
  %96 = tail call fastcc float @len_v3v3(ptr noundef nonnull %95, ptr noundef nonnull %90) #20
  %97 = getelementptr %struct.BezTriple, ptr %15, i64 %88
  %98 = getelementptr %struct.BezTriple, ptr %97, i64 -2, i32 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %98) #20
  %99 = load float, ptr %3, align 4, !tbaa !43
  %100 = load float, ptr %95, align 4, !tbaa !43
  %101 = fcmp ogt float %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store float %100, ptr %3, align 4, !tbaa !43
  br label %103

103:                                              ; preds = %102, %94
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %95) #20
  %104 = call fastcc float @len_v3(ptr noundef nonnull %3) #20
  %105 = fcmp ogt float %104, 0x3E80000000000000
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = fdiv float %96, %104
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %107) #20
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %90, ptr noundef nonnull %3, ptr noundef nonnull %95) #20
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %90, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %108, ptr noundef nonnull %95, ptr noundef nonnull %3) #20
  br label %109

109:                                              ; preds = %103, %106, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  br label %110

110:                                              ; preds = %7, %21, %109, %66
  %111 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %112 = load ptr, ptr %111, align 8, !tbaa !59
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %115(ptr noundef nonnull %112) #21
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i16, ptr %0, align 8, !tbaa !48
  %118 = sext i16 %117 to i32
  %119 = shl nsw i32 %118, 6
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %121 = add nsw i32 %119, -64
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  %124 = tail call ptr %120(i64 noundef %123, ptr noundef nonnull @.str.13) #21
  %125 = load i16, ptr %0, align 8, !tbaa !48
  %126 = icmp sgt i16 %125, 1
  br i1 %126, label %127, label %154

127:                                              ; preds = %116, %127
  %128 = phi i64 [ %133, %127 ], [ 0, %116 ]
  %129 = phi ptr [ %149, %127 ], [ %124, %116 ]
  %130 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %128
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %130, i64 0, i64 1
  %132 = getelementptr inbounds [3 x [3 x float]], ptr %130, i64 0, i64 2
  %133 = add nuw nsw i64 %128, 1
  %134 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 %133
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %134, i64 0, i64 1
  tail call void @correct_bezpart(ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef nonnull %134, ptr noundef nonnull %135) #21
  %136 = load float, ptr %131, align 4, !tbaa !43
  %137 = load float, ptr %132, align 4, !tbaa !43
  %138 = load float, ptr %134, align 4, !tbaa !43
  %139 = load float, ptr %135, align 4, !tbaa !43
  tail call void @BKE_curve_forward_diff_bezier(float noundef %136, float noundef %137, float noundef %138, float noundef %139, ptr noundef %129, i32 noundef 31, i32 noundef 8) #21
  %140 = getelementptr inbounds [3 x [3 x float]], ptr %130, i64 0, i64 1, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !43
  %142 = getelementptr inbounds [3 x [3 x float]], ptr %130, i64 0, i64 2, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !43
  %144 = getelementptr inbounds [3 x float], ptr %134, i64 0, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !43
  %146 = getelementptr inbounds [3 x [3 x float]], ptr %134, i64 0, i64 1, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !43
  %148 = getelementptr inbounds float, ptr %129, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %141, float noundef %143, float noundef %145, float noundef %147, ptr noundef nonnull %148, i32 noundef 31, i32 noundef 8) #21
  %149 = getelementptr inbounds float, ptr %129, i64 64
  %150 = load i16, ptr %0, align 8, !tbaa !48
  %151 = sext i16 %150 to i64
  %152 = add nsw i64 %151, -1
  %153 = icmp slt i64 %133, %152
  br i1 %153, label %127, label %154, !llvm.loop !93

154:                                              ; preds = %127, %116
  %155 = phi i16 [ %125, %116 ], [ %150, %127 ]
  %156 = load float, ptr %15, align 4, !tbaa !43
  %157 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !43
  %159 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5
  %160 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %161 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1, i64 1
  %162 = fsub float %156, %158
  store float %162, ptr %159, align 8, !tbaa !43
  %163 = load float, ptr %160, align 4, !tbaa !43
  %164 = load float, ptr %161, align 4, !tbaa !43
  %165 = fsub float %163, %164
  %166 = fmul float %165, %165
  %167 = tail call float @llvm.fmuladd.f32(float %162, float %162, float %166)
  %168 = tail call float @llvm.sqrt.f32(float %167)
  %169 = insertelement <2 x float> poison, float %162, i64 0
  %170 = insertelement <2 x float> %169, float %165, i64 1
  %171 = insertelement <2 x float> poison, float %168, i64 0
  %172 = shufflevector <2 x float> %171, <2 x float> poison, <2 x i32> zeroinitializer
  %173 = fdiv <2 x float> %170, %172
  store <2 x float> %173, ptr %159, align 8, !tbaa !43
  %174 = sext i16 %155 to i64
  %175 = getelementptr %struct.BezTriple, ptr %15, i64 %174
  %176 = getelementptr %struct.BezTriple, ptr %175, i64 -1, i32 0, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !43
  %178 = getelementptr %struct.BezTriple, ptr %175, i64 -1, i32 0, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !43
  %180 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6
  %181 = getelementptr %struct.BezTriple, ptr %175, i64 -1, i32 0, i64 1, i64 1
  %182 = getelementptr %struct.BezTriple, ptr %175, i64 -1, i32 0, i64 2, i64 1
  %183 = fsub float %177, %179
  store float %183, ptr %180, align 8, !tbaa !43
  %184 = load float, ptr %181, align 4, !tbaa !43
  %185 = load float, ptr %182, align 4, !tbaa !43
  %186 = fsub float %184, %185
  %187 = fmul float %186, %186
  %188 = tail call float @llvm.fmuladd.f32(float %183, float %183, float %187)
  %189 = tail call float @llvm.sqrt.f32(float %188)
  %190 = insertelement <2 x float> poison, float %183, i64 0
  %191 = insertelement <2 x float> %190, float %186, i64 1
  %192 = insertelement <2 x float> poison, float %189, i64 0
  %193 = shufflevector <2 x float> %192, <2 x float> poison, <2 x i32> zeroinitializer
  %194 = fdiv <2 x float> %191, %193
  store <2 x float> %194, ptr %180, align 8, !tbaa !43
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %195(ptr noundef nonnull %15) #21
  %196 = load float, ptr %9, align 4, !tbaa !88
  %197 = load float, ptr %8, align 8, !tbaa !87
  %198 = fsub float %196, %197
  %199 = fmul float %198, 3.906250e-03
  %200 = fdiv float 1.000000e+00, %199
  %201 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 2
  store float %200, ptr %201, align 4, !tbaa !94
  %202 = sext i32 %119 to i64
  %203 = getelementptr float, ptr %124, i64 %202
  %204 = getelementptr float, ptr %203, i64 -66
  %205 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %206 = tail call ptr %205(i64 noundef 3084, ptr noundef nonnull @.str.14) #21
  %207 = load float, ptr %8, align 8, !tbaa !87
  br label %208

208:                                              ; preds = %154, %244
  %209 = phi i64 [ 0, %154 ], [ %247, %244 ]
  %210 = phi ptr [ %124, %154 ], [ %216, %244 ]
  %211 = trunc i64 %209 to i32
  %212 = sitofp i32 %211 to float
  %213 = tail call float @llvm.fmuladd.f32(float %199, float %212, float %207)
  %214 = getelementptr inbounds %struct.CurveMapPoint, ptr %206, i64 %209
  store float %213, ptr %214, align 4, !tbaa !51
  br label %215

215:                                              ; preds = %215, %208
  %216 = phi ptr [ %210, %208 ], [ %221, %215 ]
  %217 = load float, ptr %216, align 4, !tbaa !43
  %218 = fcmp oge float %213, %217
  %219 = icmp ne ptr %216, %204
  %220 = select i1 %218, i1 %219, i1 false
  %221 = getelementptr inbounds float, ptr %216, i64 2
  br i1 %220, label %215, label %222, !llvm.loop !95

222:                                              ; preds = %215
  %223 = icmp eq ptr %216, %124
  %224 = icmp eq ptr %216, %204
  %225 = select i1 %218, i1 %224, i1 false
  %226 = select i1 %223, i1 true, i1 %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = tail call fastcc float @curvemap_calc_extend(ptr noundef nonnull %0, float noundef %213, ptr noundef %124, ptr noundef %204) #20
  br label %244

229:                                              ; preds = %222
  %230 = getelementptr inbounds float, ptr %216, i64 -2
  %231 = load float, ptr %230, align 4, !tbaa !43
  %232 = fsub float %217, %231
  %233 = fcmp ogt float %232, 0x3E80000000000000
  %234 = fsub float %217, %213
  %235 = fdiv float %234, %232
  %236 = select i1 %233, float %235, float 0.000000e+00
  %237 = getelementptr inbounds float, ptr %216, i64 -1
  %238 = load float, ptr %237, align 4, !tbaa !43
  %239 = fsub float 1.000000e+00, %236
  %240 = getelementptr inbounds float, ptr %216, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !43
  %242 = fmul float %241, %239
  %243 = tail call float @llvm.fmuladd.f32(float %236, float %238, float %242)
  br label %244

244:                                              ; preds = %227, %229
  %245 = phi float [ %228, %227 ], [ %243, %229 ]
  %246 = getelementptr inbounds %struct.CurveMapPoint, ptr %206, i64 %209, i32 1
  store float %245, ptr %246, align 4
  %247 = add nuw nsw i64 %209, 1
  %248 = icmp eq i64 %247, 257
  br i1 %248, label %249, label %208, !llvm.loop !96

249:                                              ; preds = %244
  %250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %250(ptr noundef %124) #21
  store ptr %206, ptr %111, align 8, !tbaa !59
  br label %251

251:                                              ; preds = %2, %249
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @curvemap_evaluateF(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 8, !tbaa !87
  %5 = fsub float %1, %4
  %6 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = fmul float %5, %7
  %9 = fptosi float %8 to i32
  %10 = fcmp olt float %8, 0.000000e+00
  %11 = fcmp ogt float %8, 2.560000e+02
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.CurveMapPoint, ptr %15, i64 256
  %17 = tail call fastcc float @curvemap_calc_extend(ptr noundef nonnull %0, float noundef %1, ptr noundef %15, ptr noundef nonnull %16) #20
  br label %46

18:                                               ; preds = %2
  %19 = icmp slt i32 %9, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.CurveMapPoint, ptr %22, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  br label %46

25:                                               ; preds = %18
  %26 = icmp ugt i32 %9, 255
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 256, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !53
  br label %46

32:                                               ; preds = %25
  %33 = sitofp i32 %9 to float
  %34 = fsub float %8, %33
  %35 = fsub float 1.000000e+00, %34
  %36 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = zext nneg i32 %9 to i64
  %39 = getelementptr inbounds %struct.CurveMapPoint, ptr %37, i64 %38, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = getelementptr %struct.CurveMapPoint, ptr %37, i64 %38
  %42 = getelementptr %struct.CurveMapPoint, ptr %41, i64 1, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fmul float %34, %43
  %45 = tail call float @llvm.fmuladd.f32(float %35, float %40, float %44)
  br label %46

46:                                               ; preds = %32, %27, %20, %13
  %47 = phi float [ %17, %13 ], [ %24, %20 ], [ %31, %27 ], [ %45, %32 ]
  ret float %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !97 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  %4 = load float, ptr %0, align 4, !tbaa !43
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_changed(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 %6
  %8 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 %6, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5
  %11 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %10) #20
  %12 = fmul float %11, 0x3F847AE140000000
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !56
  %16 = load i32, ptr %0, align 8, !tbaa !34
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = load i16, ptr %7, align 8, !tbaa !48
  br i1 %18, label %89, label %20

20:                                               ; preds = %2
  %21 = sext i16 %19 to i32
  %22 = icmp sgt i16 %19, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 1
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 2
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 5, i32 3
  %27 = zext nneg i32 %21 to i64
  br label %31

28:                                               ; preds = %68
  br i1 %22, label %29, label %89

29:                                               ; preds = %28
  %30 = zext nneg i32 %21 to i64
  br label %73

31:                                               ; preds = %23, %68
  %32 = phi i64 [ 0, %23 ], [ %71, %68 ]
  %33 = phi float [ 0.000000e+00, %23 ], [ %70, %68 ]
  %34 = phi float [ 0.000000e+00, %23 ], [ %69, %68 ]
  %35 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %32, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !71
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %32
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = load float, ptr %10, align 4, !tbaa !75
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = fsub float %41, %42
  %46 = tail call fastcc float @min_ff(float noundef %34, float noundef %45) #20
  br label %53

47:                                               ; preds = %39
  %48 = load float, ptr %24, align 4, !tbaa !98
  %49 = fcmp ogt float %41, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = fsub float %41, %48
  %52 = tail call fastcc float @max_ff(float noundef %34, float noundef %51) #20
  br label %53

53:                                               ; preds = %47, %50, %44
  %54 = phi float [ %46, %44 ], [ %52, %50 ], [ %34, %47 ]
  %55 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %32, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !53
  %57 = load float, ptr %25, align 4, !tbaa !99
  %58 = fcmp olt float %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = fsub float %56, %57
  %61 = tail call fastcc float @min_ff(float noundef %33, float noundef %60) #20
  br label %68

62:                                               ; preds = %53
  %63 = load float, ptr %26, align 4, !tbaa !76
  %64 = fcmp ogt float %56, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = fsub float %56, %63
  %67 = tail call fastcc float @max_ff(float noundef %33, float noundef %66) #20
  br label %68

68:                                               ; preds = %31, %62, %65, %59
  %69 = phi float [ %54, %59 ], [ %54, %65 ], [ %54, %62 ], [ %34, %31 ]
  %70 = phi float [ %61, %59 ], [ %67, %65 ], [ %33, %62 ], [ %33, %31 ]
  %71 = add nuw nsw i64 %32, 1
  %72 = icmp eq i64 %71, %27
  br i1 %72, label %28, label %31, !llvm.loop !100

73:                                               ; preds = %29, %86
  %74 = phi i64 [ 0, %29 ], [ %87, %86 ]
  %75 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %74, i32 2
  %76 = load i16, ptr %75, align 4, !tbaa !71
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %74
  %81 = load float, ptr %80, align 4, !tbaa !51
  %82 = fsub float %81, %69
  store float %82, ptr %80, align 4, !tbaa !51
  %83 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %74, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !53
  %85 = fsub float %84, %70
  store float %85, ptr %83, align 4, !tbaa !53
  br label %86

86:                                               ; preds = %73, %79
  %87 = add nuw nsw i64 %74, 1
  %88 = icmp eq i64 %87, %30
  br i1 %88, label %89, label %73, !llvm.loop !101

89:                                               ; preds = %86, %20, %28, %2
  %90 = sext i16 %19 to i64
  tail call void @qsort(ptr noundef %9, i64 noundef %90, i64 noundef 12, ptr noundef nonnull @sort_curvepoints) #21
  %91 = icmp eq i8 %1, 0
  br i1 %91, label %143, label %92

92:                                               ; preds = %89
  %93 = load i16, ptr %7, align 8, !tbaa !48
  %94 = icmp sgt i16 %93, 2
  br i1 %94, label %95, label %143

95:                                               ; preds = %92
  %96 = zext nneg i16 %93 to i32
  %97 = add nsw i32 %96, -1
  %98 = zext nneg i32 %97 to i64
  br label %99

99:                                               ; preds = %95, %102
  %100 = phi i64 [ 0, %95 ], [ %105, %102 ]
  %101 = icmp eq i64 %100, %98
  br i1 %101, label %139, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %100
  %104 = load float, ptr %103, align 4, !tbaa !51
  %105 = add nuw nsw i64 %100, 1
  %106 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !51
  %108 = fsub float %104, %107
  %109 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %100, i32 1
  %110 = load float, ptr %109, align 4, !tbaa !53
  %111 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %105, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !53
  %113 = fsub float %110, %112
  %114 = fmul float %113, %113
  %115 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %114)
  %116 = tail call float @llvm.sqrt.f32(float %115)
  %117 = fcmp olt float %116, %12
  br i1 %117, label %118, label %99, !llvm.loop !102

118:                                              ; preds = %102
  %119 = trunc i64 %100 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %105, i32 2
  %123 = load i16, ptr %122, align 4, !tbaa !71
  %124 = or i16 %123, 2
  store i16 %124, ptr %122, align 4, !tbaa !71
  %125 = and i16 %123, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %139, label %133

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %100, i32 2
  %129 = load i16, ptr %128, align 4, !tbaa !71
  %130 = or i16 %129, 2
  store i16 %130, ptr %128, align 4, !tbaa !71
  %131 = and i16 %129, 1
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127, %121
  %134 = phi i64 [ %100, %121 ], [ %105, %127 ]
  %135 = phi i32 [ 0, %121 ], [ %119, %127 ]
  %136 = getelementptr inbounds %struct.CurveMapPoint, ptr %9, i64 %134, i32 2
  %137 = load i16, ptr %136, align 4, !tbaa !71
  %138 = or i16 %137, 1
  store i16 %138, ptr %136, align 4, !tbaa !71
  br label %139

139:                                              ; preds = %99, %133, %121, %127
  %140 = phi i32 [ 0, %121 ], [ %119, %127 ], [ %135, %133 ], [ %97, %99 ]
  %141 = icmp eq i32 %140, %97
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call void @curvemap_remove(ptr noundef nonnull %7, i16 noundef signext 2) #20
  br label %143

143:                                              ; preds = %139, %142, %92, %89
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %7, ptr noundef nonnull %10) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !98
  %4 = load float, ptr %0, align 4, !tbaa !75
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @sort_curvepoints(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !PGOFuncName !104 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = fcmp ogt float %3, %4
  %6 = fcmp olt float %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @curvemapping_changed(ptr noundef nonnull %0, i8 noundef zeroext 0) #20
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !105

14:                                               ; preds = %11
  store i32 %3, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @curvemap_calc_extend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !PGOFuncName !106 {
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fcmp ult float %5, %1
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !44
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !43
  br label %57

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !43
  %18 = fcmp oeq float %17, 0.000000e+00
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 5, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !43
  br i1 %18, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call float @llvm.fmuladd.f32(float %22, float 1.000000e+04, float %20)
  br label %57

25:                                               ; preds = %15
  %26 = fsub float %1, %5
  %27 = fmul float %26, %22
  %28 = fdiv float %27, %17
  %29 = fadd float %20, %28
  br label %57

30:                                               ; preds = %4
  %31 = load float, ptr %3, align 4, !tbaa !43
  %32 = fcmp ugt float %31, %1
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !44
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !43
  br label %57

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !43
  %44 = fcmp oeq float %43, 0.000000e+00
  %45 = getelementptr inbounds float, ptr %3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !43
  %47 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 6, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !43
  br i1 %44, label %49, label %52

49:                                               ; preds = %41
  %50 = fneg float %48
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 1.000000e+04, float %46)
  br label %57

52:                                               ; preds = %41
  %53 = fsub float %1, %31
  %54 = fmul float %53, %48
  %55 = fdiv float %54, %43
  %56 = fadd float %46, %55
  br label %57

57:                                               ; preds = %30, %52, %49, %38, %25, %23, %12
  %58 = phi float [ %14, %12 ], [ %24, %23 ], [ %29, %25 ], [ %40, %38 ], [ %51, %49 ], [ %56, %52 ], [ 0.000000e+00, %30 ]
  ret float %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @curvemapping_evaluateF(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %5
  %7 = tail call float @curvemap_evaluateF(ptr noundef nonnull %6, float noundef %2) #20
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate3F(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %5) #20
  store float %6, ptr %1, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = tail call float @curvemap_evaluateF(ptr noundef nonnull %7, float noundef %9) #20
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float %10, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = tail call float @curvemap_evaluateF(ptr noundef nonnull %12, float noundef %14) #20
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float %15, ptr %16, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluateRGBF(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3
  %6 = load float, ptr %2, align 4, !tbaa !43
  %7 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %6) #20
  %8 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %7) #20
  store float %8, ptr %1, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %11) #20
  %13 = tail call float @curvemap_evaluateF(ptr noundef nonnull %9, float noundef %12) #20
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %17) #20
  %19 = tail call float @curvemap_evaluateF(ptr noundef nonnull %15, float noundef %18) #20
  %20 = getelementptr inbounds float, ptr %1, i64 2
  store float %19, ptr %20, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGBF_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #14 {
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %7 = load float, ptr %2, align 4, !tbaa !43
  %8 = load float, ptr %3, align 4, !tbaa !43
  %9 = fsub float %7, %8
  %10 = load float, ptr %4, align 4, !tbaa !43
  %11 = fmul float %9, %10
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %6, float noundef %11) #20
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
  %22 = tail call float @curvemap_evaluateF(ptr noundef nonnull %13, float noundef %21) #20
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
  %33 = tail call float @curvemap_evaluateF(ptr noundef nonnull %24, float noundef %32) #20
  %34 = getelementptr inbounds float, ptr %1, i64 2
  store float %33, ptr %34, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGBF(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  %7 = load float, ptr %6, align 8, !tbaa !43
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !43
  %11 = fmul float %8, %10
  %12 = tail call float @curvemap_evaluateF(ptr noundef nonnull %4, float noundef %11) #20
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
  %22 = tail call float @curvemap_evaluateF(ptr noundef nonnull %13, float noundef %21) #20
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
  %33 = tail call float @curvemap_evaluateF(ptr noundef nonnull %24, float noundef %32) #20
  %34 = getelementptr inbounds float, ptr %1, i64 2
  store float %33, ptr %34, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @curvemapping_evaluate_premulRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = load <2 x i8>, ptr %2, align 1, !tbaa !64
  %7 = uitofp <2 x i8> %6 to <2 x float>
  %8 = fdiv <2 x float> %7, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %8, ptr %4, align 8, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %2, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !64
  %11 = uitofp i8 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %12, ptr %13, align 8, !tbaa !43
  call void @curvemapping_evaluate_premulRGBF(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %14 = load float, ptr %5, align 4
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = fcmp ogt float %14, 0x3FEFEFEFE0000000
  %18 = tail call float @llvm.fmuladd.f32(float %14, float 2.550000e+02, float 5.000000e-01)
  %19 = select i1 %17, float 2.550000e+02, float %18
  %20 = fptoui float %19 to i8
  br label %21

21:                                               ; preds = %3, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %3 ]
  store i8 %22, ptr %1, align 1, !tbaa !64
  %23 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %24 = load float, ptr %23, align 4
  %25 = fcmp ugt float %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = fcmp ogt float %24, 0x3FEFEFEFE0000000
  %28 = tail call float @llvm.fmuladd.f32(float %24, float 2.550000e+02, float 5.000000e-01)
  %29 = select i1 %27, float 2.550000e+02, float %28
  %30 = fptoui float %29 to i8
  br label %31

31:                                               ; preds = %21, %26
  %32 = phi i8 [ %30, %26 ], [ 0, %21 ]
  %33 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !64
  %34 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %35 = load float, ptr %34, align 4
  %36 = fcmp ugt float %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = fcmp ogt float %35, 0x3FEFEFEFE0000000
  %39 = tail call float @llvm.fmuladd.f32(float %35, float 2.550000e+02, float 5.000000e-01)
  %40 = select i1 %38, float 2.550000e+02, float %39
  %41 = fptoui float %40 to i8
  br label %42

42:                                               ; preds = %31, %37
  %43 = phi i8 [ %41, %37 ], [ 0, %31 ]
  %44 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @curvemapping_RGBA_does_something(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
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
  br i1 %51, label %52, label %25, !llvm.loop !107

52:                                               ; preds = %49, %45, %41, %37, %34, %30, %21, %17, %13, %9, %5, %1
  %53 = phi i32 [ 1, %1 ], [ 1, %5 ], [ 1, %9 ], [ 1, %13 ], [ 1, %17 ], [ 1, %21 ], [ 0, %49 ], [ 1, %45 ], [ 1, %41 ], [ 1, %37 ], [ 1, %34 ], [ 1, %30 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7
  tail call fastcc void @curvemap_make_table(ptr noundef nonnull %12, ptr noundef nonnull %5) #20
  br label %13

13:                                               ; preds = %6, %11
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %6, !llvm.loop !108

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curvemapping_table_RGBA(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  store i32 257, ptr %2, align 4, !tbaa !63
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = tail call ptr %4(i64 noundef 4112, ptr noundef nonnull @.str.3) #21
  store ptr %5, ptr %1, align 8, !tbaa !49
  %6 = load i32, ptr %2, align 4, !tbaa !63
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 1, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 2, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6, i64 3, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !59
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
  br i1 %56, label %57, label %22, !llvm.loop !109

57:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_histogram_update_sample_line(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 12, i64 1
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %10 = load <2 x float>, ptr %6, align 4, !tbaa !43
  %11 = load <2 x i32>, ptr %7, align 8, !tbaa !63
  %12 = sitofp <2 x i32> %11 to <2 x float>
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %12, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %14 = load <2 x float>, ptr %8, align 4, !tbaa !43
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %12, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %16 = fptosi <2 x float> %13 to <2 x i32>
  %17 = fptosi <2 x float> %15 to <2 x i32>
  store i32 3, ptr %0, align 4, !tbaa !110
  %18 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 1
  store i32 256, ptr %18, align 4, !tbaa !112
  %19 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %19, align 4, !tbaa !113
  %20 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, null
  br i1 %22, label %26, label %29

26:                                               ; preds = %4
  br i1 %25, label %131, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  br label %31

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  br i1 %25, label %34, label %31

31:                                               ; preds = %27, %29
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %33 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #21
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi ptr [ %32, %31 ], [ %30, %29 ]
  %36 = phi ptr [ %33, %31 ], [ null, %29 ]
  %37 = sitofp <2 x i32> %16 to <2 x float>
  %38 = sub nsw <2 x i32> %17, %16
  %39 = fadd <2 x float> %37, <float 5.000000e-01, float 5.000000e-01>
  %40 = sitofp <2 x i32> %38 to <2 x float>
  %41 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %42 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br label %44

44:                                               ; preds = %34, %125
  %45 = phi i64 [ 0, %34 ], [ %126, %125 ]
  %46 = trunc i64 %45 to i32
  %47 = sitofp i32 %46 to float
  %48 = insertelement <2 x float> poison, float %47, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = fmul <2 x float> %49, %40
  %51 = fdiv <2 x float> %50, <float 2.550000e+02, float 2.550000e+02>
  %52 = fadd <2 x float> %39, %51
  %53 = fptosi <2 x float> %52 to <2 x i32>
  %54 = icmp slt <2 x i32> %53, zeroinitializer
  %55 = extractelement <2 x i1> %54, i64 0
  %56 = extractelement <2 x i1> %54, i64 1
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %44
  %59 = load i32, ptr %7, align 8, !tbaa !119
  %60 = extractelement <2 x i32> %53, i64 0
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, ptr %9, align 4, !tbaa !120
  %64 = extractelement <2 x i32> %53, i64 1
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %58, %44
  %67 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %45
  store float 0.000000e+00, ptr %67, align 4, !tbaa !43
  %68 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %45
  store float 0.000000e+00, ptr %68, align 4, !tbaa !43
  %69 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %45
  store float 0.000000e+00, ptr %69, align 4, !tbaa !43
  %70 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %45
  store float 0.000000e+00, ptr %70, align 4, !tbaa !43
  %71 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %45
  store float 0.000000e+00, ptr %71, align 4, !tbaa !43
  br label %125

72:                                               ; preds = %62
  %73 = load ptr, ptr %35, align 8, !tbaa !118
  %74 = icmp eq ptr %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %41, align 4, !tbaa !121
  %77 = mul nsw i32 %59, %64
  %78 = add nsw i32 %77, %60
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %73, i64 %80
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %81) #20
  call void @IMB_colormanagement_processor_apply_v3(ptr noundef %36, ptr noundef nonnull %5) #21
  %82 = call fastcc float @rgb_to_luma(ptr noundef nonnull %5) #20
  %83 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %45
  store float %82, ptr %83, align 4, !tbaa !43
  %84 = load float, ptr %5, align 4, !tbaa !43
  %85 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %45
  store float %84, ptr %85, align 4, !tbaa !43
  %86 = load float, ptr %42, align 4, !tbaa !43
  %87 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %45
  store float %86, ptr %87, align 4, !tbaa !43
  %88 = load float, ptr %43, align 4, !tbaa !43
  %89 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %45
  store float %88, ptr %89, align 4, !tbaa !43
  %90 = getelementptr inbounds float, ptr %81, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !43
  %92 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %45
  store float %91, ptr %92, align 4, !tbaa !43
  br label %125

93:                                               ; preds = %72
  %94 = load ptr, ptr %20, align 8, !tbaa !114
  %95 = icmp eq ptr %94, null
  br i1 %95, label %125, label %96

96:                                               ; preds = %93
  %97 = mul nsw i32 %59, %64
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %94, i64 %98
  %100 = zext nneg i32 %60 to i64
  %101 = getelementptr inbounds i32, ptr %99, i64 %100
  %102 = call fastcc zeroext i8 @rgb_to_luma_byte(ptr noundef nonnull %101) #20
  %103 = uitofp i8 %102 to float
  %104 = fdiv float %103, 2.550000e+02
  %105 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 2, i64 %45
  store float %104, ptr %105, align 4, !tbaa !43
  %106 = load i8, ptr %101, align 1, !tbaa !64
  %107 = uitofp i8 %106 to float
  %108 = fdiv float %107, 2.550000e+02
  %109 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 3, i64 %45
  store float %108, ptr %109, align 4, !tbaa !43
  %110 = getelementptr inbounds i8, ptr %101, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !64
  %112 = uitofp i8 %111 to float
  %113 = fdiv float %112, 2.550000e+02
  %114 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 4, i64 %45
  store float %113, ptr %114, align 4, !tbaa !43
  %115 = getelementptr inbounds i8, ptr %101, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !64
  %117 = uitofp i8 %116 to float
  %118 = fdiv float %117, 2.550000e+02
  %119 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 5, i64 %45
  store float %118, ptr %119, align 4, !tbaa !43
  %120 = getelementptr inbounds i8, ptr %101, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !64
  %122 = uitofp i8 %121 to float
  %123 = fdiv float %122, 2.550000e+02
  %124 = getelementptr inbounds %struct.Histogram, ptr %0, i64 0, i32 6, i64 %45
  store float %123, ptr %124, align 4, !tbaa !43
  br label %125

125:                                              ; preds = %66, %93, %96, %75
  %126 = add nuw nsw i64 %45, 1
  %127 = icmp eq i64 %126, 256
  br i1 %127, label %128, label %44, !llvm.loop !122

128:                                              ; preds = %125
  %129 = icmp eq ptr %36, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  call void @IMB_colormanagement_processor_free(ptr noundef nonnull %36) #21
  br label %131

131:                                              ; preds = %128, %130, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_processor_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_processor_apply_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_luma(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !123 {
  %2 = load float, ptr %0, align 4, !tbaa !43
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !43
  %5 = fmul float %4, 0x3FE2C8B440000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD322D0E0000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBD2F1AA0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rgb_to_luma_byte(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !124 {
  %2 = load i8, ptr %0, align 1, !tbaa !64
  %3 = zext i8 %2 to i16
  %4 = mul nuw nsw i16 %3, 76
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !64
  %7 = zext i8 %6 to i16
  %8 = mul nuw i16 %7, 150
  %9 = add nuw i16 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %12 = zext i8 %11 to i16
  %13 = mul nuw nsw i16 %12, 29
  %14 = add nuw i16 %9, %13
  %15 = udiv i16 %14, 255
  %16 = trunc i16 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare void @IMB_colormanagement_processor_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scopes_update(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = icmp ne ptr %9, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = icmp ne ptr %12, null
  %14 = select i1 %13, i1 true, i1 %10
  br i1 %14, label %15, label %379

15:                                               ; preds = %4
  %16 = load i32, ptr %0, align 8, !tbaa !125
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %379, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 8
  %21 = load float, ptr %20, align 4, !tbaa !127
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store float 1.000000e+00, ptr %20, align 4, !tbaa !127
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !121
  %27 = add i32 %26, -3
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %379

29:                                               ; preds = %24
  store i32 3, ptr %19, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 1
  store i32 256, ptr %30, align 4, !tbaa !129
  %31 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !130
  switch i32 %32, label %36 [
    i32 3, label %35
    i32 0, label %33
    i32 4, label %33
    i32 2, label %34
  ]

33:                                               ; preds = %29, %29
  br label %36

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %29, %35, %34, %33
  %37 = phi i1 [ false, %35 ], [ false, %34 ], [ false, %33 ], [ true, %29 ]
  %38 = phi i32 [ 1, %35 ], [ 0, %34 ], [ 2, %33 ], [ -1, %29 ]
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %40 = tail call ptr %39(i64 noundef 1024, ptr noundef nonnull @.str.4) #21
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %42 = tail call ptr %41(i64 noundef 1024, ptr noundef nonnull @.str.4) #21
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %44 = tail call ptr %43(i64 noundef 1024, ptr noundef nonnull @.str.4) #21
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %46 = tail call ptr %45(i64 noundef 1024, ptr noundef nonnull @.str.4) #21
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %48 = tail call ptr %47(i64 noundef 1024, ptr noundef nonnull @.str.4) #21
  %49 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !131
  %51 = fmul float %50, 0x3F847AE140000000
  %52 = fmul float %51, %51
  %53 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !120
  %55 = sitofp i32 %54 to float
  %56 = fmul float %52, %55
  %57 = fptosi float %56 to i32
  %58 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 2
  %59 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !132
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %57, i32 %54
  store i32 %62, ptr %58, align 8
  br label %63

63:                                               ; preds = %36, %63
  %64 = phi i64 [ 0, %36 ], [ %66, %63 ]
  %65 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %64
  store <2 x float> <float 2.550000e+04, float -2.550000e+04>, ptr %65, align 8, !tbaa !43
  %66 = add nuw nsw i64 %64, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %63, !llvm.loop !133

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !119
  %71 = mul nsw i32 %62, %70
  %72 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 16
  store i32 %71, ptr %72, align 8, !tbaa !134
  %73 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %77(ptr noundef nonnull %74) #21
  br label %78

78:                                               ; preds = %76, %68
  %79 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !136
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %83(ptr noundef nonnull %80) #21
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %86 = load ptr, ptr %85, align 8, !tbaa !137
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %89(ptr noundef nonnull %86) #21
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 15
  %92 = load ptr, ptr %91, align 8, !tbaa !138
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %95(ptr noundef nonnull %92) #21
  br label %96

96:                                               ; preds = %94, %90
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %98 = load i32, ptr %72, align 8, !tbaa !134
  %99 = shl nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 2
  %102 = tail call ptr %97(i64 noundef %101, ptr noundef nonnull @.str.5) #21
  store ptr %102, ptr %73, align 8, !tbaa !135
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %104 = load i32, ptr %72, align 8, !tbaa !134
  %105 = shl nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 2
  %108 = tail call ptr %103(i64 noundef %107, ptr noundef nonnull @.str.6) #21
  store ptr %108, ptr %79, align 8, !tbaa !136
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %110 = load i32, ptr %72, align 8, !tbaa !134
  %111 = shl nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 2
  %114 = tail call ptr %109(i64 noundef %113, ptr noundef nonnull @.str.7) #21
  store ptr %114, ptr %85, align 8, !tbaa !137
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %116 = load i32, ptr %72, align 8, !tbaa !134
  %117 = shl nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 2
  %120 = tail call ptr %115(i64 noundef %119, ptr noundef nonnull @.str.8) #21
  store ptr %120, ptr %91, align 8, !tbaa !138
  br i1 %10, label %121, label %123

121:                                              ; preds = %96
  %122 = load ptr, ptr %8, align 8, !tbaa !118
  br label %126

123:                                              ; preds = %96
  %124 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #21
  %125 = load ptr, ptr %8, align 8, !tbaa !118
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi ptr [ %125, %123 ], [ %122, %121 ]
  %128 = phi ptr [ %124, %123 ], [ null, %121 ]
  %129 = phi ptr [ null, %123 ], [ %122, %121 ]
  %130 = icmp eq ptr %127, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #21
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi ptr [ %132, %131 ], [ null, %126 ]
  %135 = load i32, ptr %53, align 4, !tbaa !120
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %331

137:                                              ; preds = %133
  %138 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %139 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %140 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %141 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %142 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  br label %203

143:                                              ; preds = %331, %143
  %144 = phi i64 [ %165, %143 ], [ 0, %331 ]
  %145 = phi <4 x i32> [ %152, %143 ], [ zeroinitializer, %331 ]
  %146 = phi <4 x i32> [ %164, %143 ], [ zeroinitializer, %331 ]
  %147 = phi <4 x i32> [ %155, %143 ], [ zeroinitializer, %331 ]
  %148 = phi <4 x i32> [ %158, %143 ], [ zeroinitializer, %331 ]
  %149 = phi <4 x i32> [ %161, %143 ], [ zeroinitializer, %331 ]
  %150 = getelementptr inbounds i32, ptr %48, i64 %144
  %151 = load <4 x i32>, ptr %150, align 4, !tbaa !63
  %152 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %151, <4 x i32> %145)
  %153 = getelementptr inbounds i32, ptr %40, i64 %144
  %154 = load <4 x i32>, ptr %153, align 4, !tbaa !63
  %155 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %154, <4 x i32> %147)
  %156 = getelementptr inbounds i32, ptr %42, i64 %144
  %157 = load <4 x i32>, ptr %156, align 4, !tbaa !63
  %158 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %157, <4 x i32> %148)
  %159 = getelementptr inbounds i32, ptr %44, i64 %144
  %160 = load <4 x i32>, ptr %159, align 4, !tbaa !63
  %161 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %160, <4 x i32> %149)
  %162 = getelementptr inbounds i32, ptr %46, i64 %144
  %163 = load <4 x i32>, ptr %162, align 4, !tbaa !63
  %164 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %163, <4 x i32> %146)
  %165 = add nuw i64 %144, 4
  %166 = icmp eq i64 %165, 256
  br i1 %166, label %167, label %143, !llvm.loop !139

167:                                              ; preds = %143
  %168 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %152)
  %169 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %164)
  %170 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %155)
  %171 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %158)
  %172 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %161)
  %173 = icmp eq i32 %172, 0
  %174 = uitofp i32 %172 to double
  %175 = fdiv double 1.000000e+00, %174
  %176 = select i1 %173, double 1.000000e+00, double %175
  %177 = icmp eq i32 %171, 0
  %178 = uitofp i32 %171 to double
  %179 = fdiv double 1.000000e+00, %178
  %180 = select i1 %177, double 1.000000e+00, double %179
  %181 = icmp eq i32 %170, 0
  %182 = uitofp i32 %170 to double
  %183 = fdiv double 1.000000e+00, %182
  %184 = select i1 %181, double 1.000000e+00, double %183
  %185 = icmp eq i32 %169, 0
  %186 = uitofp i32 %169 to double
  %187 = fdiv double 1.000000e+00, %186
  %188 = select i1 %185, double 1.000000e+00, double %187
  %189 = icmp eq i32 %168, 0
  %190 = uitofp i32 %168 to double
  %191 = fdiv double 1.000000e+00, %190
  %192 = select i1 %189, double 1.000000e+00, double %191
  %193 = insertelement <4 x double> poison, double %192, i64 0
  %194 = shufflevector <4 x double> %193, <4 x double> poison, <4 x i32> zeroinitializer
  %195 = insertelement <4 x double> poison, double %184, i64 0
  %196 = shufflevector <4 x double> %195, <4 x double> poison, <4 x i32> zeroinitializer
  %197 = insertelement <4 x double> poison, double %180, i64 0
  %198 = shufflevector <4 x double> %197, <4 x double> poison, <4 x i32> zeroinitializer
  %199 = insertelement <4 x double> poison, double %176, i64 0
  %200 = shufflevector <4 x double> %199, <4 x double> poison, <4 x i32> zeroinitializer
  %201 = insertelement <4 x double> poison, double %188, i64 0
  %202 = shufflevector <4 x double> %201, <4 x double> poison, <4 x i32> zeroinitializer
  br label %332

203:                                              ; preds = %137, %322
  %204 = phi i32 [ %135, %137 ], [ %323, %322 ]
  %205 = phi i32 [ 0, %137 ], [ %329, %322 ]
  %206 = phi i32 [ 0, %137 ], [ %328, %322 ]
  %207 = phi ptr [ %129, %137 ], [ %325, %322 ]
  %208 = phi ptr [ %128, %137 ], [ %324, %322 ]
  %209 = load i32, ptr %58, align 8, !tbaa !142
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = mul nsw i32 %204, %206
  %213 = add nsw i32 %209, 1
  %214 = sdiv i32 %212, %213
  %215 = icmp slt i32 %205, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %211, %203
  br label %217

217:                                              ; preds = %211, %216
  %218 = phi i1 [ true, %216 ], [ false, %211 ]
  %219 = load i32, ptr %69, align 8, !tbaa !119
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %322

221:                                              ; preds = %217, %312
  %222 = phi i32 [ %317, %312 ], [ 0, %217 ]
  %223 = phi ptr [ %315, %312 ], [ %207, %217 ]
  %224 = phi ptr [ %316, %312 ], [ %208, %217 ]
  br i1 %10, label %225, label %226

225:                                              ; preds = %221
  call fastcc void @copy_v4_v4(ptr noundef nonnull %5, ptr noundef %223) #20
  call void @IMB_colormanagement_processor_apply_v4(ptr noundef %134, ptr noundef nonnull %5) #21
  br label %235

226:                                              ; preds = %221, %226
  %227 = phi i64 [ %233, %226 ], [ 0, %221 ]
  %228 = getelementptr inbounds i8, ptr %224, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !64
  %230 = uitofp i8 %229 to float
  %231 = fmul float %230, 0x3F70101020000000
  %232 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %227
  store float %231, ptr %232, align 4, !tbaa !43
  %233 = add nuw nsw i64 %227, 1
  %234 = icmp eq i64 %233, 4
  br i1 %234, label %235, label %226, !llvm.loop !143

235:                                              ; preds = %226, %225
  %236 = call fastcc float @rgb_to_luma(ptr noundef nonnull %5) #20
  br i1 %37, label %237, label %253

237:                                              ; preds = %235, %250
  %238 = phi i64 [ %251, %250 ], [ 0, %235 ]
  %239 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %238
  %240 = load float, ptr %239, align 4, !tbaa !43
  %241 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %238
  %242 = load float, ptr %241, align 8, !tbaa !43
  %243 = fcmp olt float %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  store float %240, ptr %241, align 8, !tbaa !43
  br label %245

245:                                              ; preds = %244, %237
  %246 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %238, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !43
  %248 = fcmp ogt float %240, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store float %240, ptr %246, align 4, !tbaa !43
  br label %250

250:                                              ; preds = %245, %249
  %251 = add nuw nsw i64 %238, 1
  %252 = icmp eq i64 %251, 3
  br i1 %252, label %274, label %237, !llvm.loop !144

253:                                              ; preds = %235
  %254 = load float, ptr %5, align 16, !tbaa !43
  %255 = load float, ptr %138, align 4, !tbaa !43
  %256 = load float, ptr %139, align 8, !tbaa !43
  call void @rgb_to_ycc(float noundef %254, float noundef %255, float noundef %256, ptr noundef nonnull %6, ptr noundef nonnull %140, ptr noundef nonnull %141, i32 noundef %38) #21
  br label %257

257:                                              ; preds = %253, %271
  %258 = phi i64 [ 0, %253 ], [ %272, %271 ]
  %259 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !43
  %261 = fmul float %260, 0x3F70101020000000
  store float %261, ptr %259, align 4, !tbaa !43
  %262 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %258
  %263 = load float, ptr %262, align 8, !tbaa !43
  %264 = fcmp olt float %261, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  store float %261, ptr %262, align 8, !tbaa !43
  br label %266

266:                                              ; preds = %265, %257
  %267 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 10, i64 %258, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !43
  %269 = fcmp ogt float %261, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store float %261, ptr %267, align 4, !tbaa !43
  br label %271

271:                                              ; preds = %266, %270
  %272 = add nuw nsw i64 %258, 1
  %273 = icmp eq i64 %272, 3
  br i1 %273, label %274, label %257, !llvm.loop !145

274:                                              ; preds = %271, %250
  %275 = call fastcc i32 @get_bin_float(float noundef %236) #20, !range !146
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds i32, ptr %48, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !63
  %279 = add i32 %278, 1
  store i32 %279, ptr %277, align 4, !tbaa !63
  %280 = load float, ptr %5, align 16, !tbaa !43
  %281 = call fastcc i32 @get_bin_float(float noundef %280) #20, !range !146
  %282 = zext nneg i32 %281 to i64
  %283 = getelementptr inbounds i32, ptr %40, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !63
  %285 = add i32 %284, 1
  store i32 %285, ptr %283, align 4, !tbaa !63
  %286 = load float, ptr %138, align 4, !tbaa !43
  %287 = call fastcc i32 @get_bin_float(float noundef %286) #20, !range !146
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %42, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !63
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 4, !tbaa !63
  %292 = load float, ptr %139, align 8, !tbaa !43
  %293 = call fastcc i32 @get_bin_float(float noundef %292) #20, !range !146
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %44, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !63
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 4, !tbaa !63
  %298 = load float, ptr %142, align 4, !tbaa !43
  %299 = call fastcc i32 @get_bin_float(float noundef %298) #20, !range !146
  %300 = zext nneg i32 %299 to i64
  %301 = getelementptr inbounds i32, ptr %46, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !63
  %303 = add i32 %302, 1
  store i32 %303, ptr %301, align 4, !tbaa !63
  br i1 %218, label %312, label %304

304:                                              ; preds = %274
  %305 = sitofp i32 %222 to float
  %306 = load i32, ptr %69, align 8, !tbaa !119
  %307 = sitofp i32 %306 to float
  %308 = fdiv float %305, %307
  %309 = mul nsw i32 %306, %206
  %310 = add nsw i32 %309, %222
  %311 = shl nsw i32 %310, 1
  call fastcc void @save_sample_line(ptr noundef nonnull %0, i32 noundef %311, float noundef %308, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  br label %312

312:                                              ; preds = %304, %274
  %313 = load i32, ptr %25, align 4, !tbaa !121
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, ptr %223, i64 %314
  %316 = getelementptr inbounds i8, ptr %224, i64 %314
  %317 = add nuw nsw i32 %222, 1
  %318 = load i32, ptr %69, align 8, !tbaa !119
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %221, label %320, !llvm.loop !147

320:                                              ; preds = %312
  %321 = load i32, ptr %53, align 4, !tbaa !120
  br label %322

322:                                              ; preds = %320, %217
  %323 = phi i32 [ %204, %217 ], [ %321, %320 ]
  %324 = phi ptr [ %208, %217 ], [ %316, %320 ]
  %325 = phi ptr [ %207, %217 ], [ %315, %320 ]
  %326 = xor i1 %218, true
  %327 = zext i1 %326 to i32
  %328 = add nuw nsw i32 %206, %327
  %329 = add nuw nsw i32 %205, 1
  %330 = icmp slt i32 %329, %323
  br i1 %330, label %203, label %331, !llvm.loop !148

331:                                              ; preds = %322, %133
  br label %143

332:                                              ; preds = %332, %167
  %333 = phi i64 [ 0, %167 ], [ %364, %332 ]
  %334 = getelementptr inbounds i32, ptr %48, i64 %333
  %335 = load <4 x i32>, ptr %334, align 4, !tbaa !63
  %336 = uitofp <4 x i32> %335 to <4 x double>
  %337 = fmul <4 x double> %194, %336
  %338 = fptrunc <4 x double> %337 to <4 x float>
  %339 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 2, i64 %333
  store <4 x float> %338, ptr %339, align 4, !tbaa !43
  %340 = getelementptr inbounds i32, ptr %40, i64 %333
  %341 = load <4 x i32>, ptr %340, align 4, !tbaa !63
  %342 = uitofp <4 x i32> %341 to <4 x double>
  %343 = fmul <4 x double> %196, %342
  %344 = fptrunc <4 x double> %343 to <4 x float>
  %345 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 3, i64 %333
  store <4 x float> %344, ptr %345, align 4, !tbaa !43
  %346 = getelementptr inbounds i32, ptr %42, i64 %333
  %347 = load <4 x i32>, ptr %346, align 4, !tbaa !63
  %348 = uitofp <4 x i32> %347 to <4 x double>
  %349 = fmul <4 x double> %198, %348
  %350 = fptrunc <4 x double> %349 to <4 x float>
  %351 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 4, i64 %333
  store <4 x float> %350, ptr %351, align 4, !tbaa !43
  %352 = getelementptr inbounds i32, ptr %44, i64 %333
  %353 = load <4 x i32>, ptr %352, align 4, !tbaa !63
  %354 = uitofp <4 x i32> %353 to <4 x double>
  %355 = fmul <4 x double> %200, %354
  %356 = fptrunc <4 x double> %355 to <4 x float>
  %357 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 5, i64 %333
  store <4 x float> %356, ptr %357, align 4, !tbaa !43
  %358 = getelementptr inbounds i32, ptr %46, i64 %333
  %359 = load <4 x i32>, ptr %358, align 4, !tbaa !63
  %360 = uitofp <4 x i32> %359 to <4 x double>
  %361 = fmul <4 x double> %202, %360
  %362 = fptrunc <4 x double> %361 to <4 x float>
  %363 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 6, i64 %333
  store <4 x float> %362, ptr %363, align 4, !tbaa !43
  %364 = add nuw i64 %333, 4
  %365 = icmp eq i64 %364, 256
  br i1 %365, label %366, label %332, !llvm.loop !149

366:                                              ; preds = %332
  %367 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %367(ptr noundef nonnull %48) #21
  %368 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %368(ptr noundef nonnull %40) #21
  %369 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %369(ptr noundef nonnull %42) #21
  %370 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %370(ptr noundef nonnull %44) #21
  %371 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %371(ptr noundef nonnull %46) #21
  %372 = icmp eq ptr %134, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %366
  call void @IMB_colormanagement_processor_free(ptr noundef nonnull %134) #21
  br label %374

374:                                              ; preds = %373, %366
  %375 = load ptr, ptr %7, align 8, !tbaa !49
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  call void @IMB_display_buffer_release(ptr noundef nonnull %375) #21
  br label %378

378:                                              ; preds = %377, %374
  store i32 1, ptr %0, align 8, !tbaa !125
  br label %379

379:                                              ; preds = %4, %24, %15, %378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !150 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_processor_apply_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rgb_to_ycc(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_bin_float(float noundef %0) unnamed_addr #2 !PGOFuncName !151 {
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 2.550000e+02, float 5.000000e-01)
  %3 = fptosi float %2 to i32
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 255)
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_sample_line(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !152 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %7 = load float, ptr %3, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %3, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @rgb_to_yuv(float noundef %7, float noundef %9, float noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  %14 = load float, ptr %12, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds float, ptr %16, i64 %17
  store float %14, ptr %18, align 4, !tbaa !43
  %19 = load float, ptr %13, align 4, !tbaa !43
  %20 = add nsw i32 %1, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %16, i64 %21
  store float %19, ptr %22, align 4, !tbaa !43
  %23 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !130
  switch i32 %24, label %64 [
    i32 1, label %25
    i32 0, label %39
    i32 4, label %43
    i32 3, label %43
    i32 2, label %43
  ]

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !135
  %28 = getelementptr inbounds float, ptr %27, i64 %17
  store float %2, ptr %28, align 4, !tbaa !43
  %29 = load float, ptr %3, align 4, !tbaa !43
  %30 = getelementptr inbounds float, ptr %27, i64 %21
  store float %29, ptr %30, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = getelementptr inbounds float, ptr %32, i64 %17
  store float %2, ptr %33, align 4, !tbaa !43
  %34 = load float, ptr %8, align 4, !tbaa !43
  %35 = getelementptr inbounds float, ptr %32, i64 %21
  store float %34, ptr %35, align 4, !tbaa !43
  %36 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  %38 = getelementptr inbounds float, ptr %37, i64 %17
  store float %2, ptr %38, align 4, !tbaa !43
  br label %59

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !135
  %42 = getelementptr inbounds float, ptr %41, i64 %17
  store float %2, ptr %42, align 4, !tbaa !43
  br label %59

43:                                               ; preds = %5, %5, %5
  %44 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !135
  %46 = getelementptr inbounds float, ptr %45, i64 %17
  store float %2, ptr %46, align 4, !tbaa !43
  %47 = load float, ptr %4, align 4, !tbaa !43
  %48 = getelementptr inbounds float, ptr %45, i64 %21
  store float %47, ptr %48, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !136
  %51 = getelementptr inbounds float, ptr %50, i64 %17
  store float %2, ptr %51, align 4, !tbaa !43
  %52 = getelementptr inbounds float, ptr %4, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !43
  %54 = getelementptr inbounds float, ptr %50, i64 %21
  store float %53, ptr %54, align 4, !tbaa !43
  %55 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = getelementptr inbounds float, ptr %56, i64 %17
  store float %2, ptr %57, align 4, !tbaa !43
  %58 = getelementptr inbounds float, ptr %4, i64 2
  br label %59

59:                                               ; preds = %25, %39, %43
  %60 = phi ptr [ %58, %43 ], [ %4, %39 ], [ %10, %25 ]
  %61 = phi ptr [ %56, %43 ], [ %41, %39 ], [ %37, %25 ]
  %62 = load float, ptr %60, align 4, !tbaa !43
  %63 = getelementptr inbounds float, ptr %61, i64 %21
  store float %62, ptr %63, align 4, !tbaa !43
  br label %64

64:                                               ; preds = %59, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scopes_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #21
  store ptr null, ptr %2, align 8, !tbaa !135
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %9) #21
  store ptr null, ptr %8, align 8, !tbaa !136
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %18(ptr noundef nonnull %15) #21
  store ptr null, ptr %14, align 8, !tbaa !137
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %24(ptr noundef nonnull %21) #21
  store ptr null, ptr %20, align 8, !tbaa !138
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @scopes_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 3
  store float 3.000000e+01, ptr %2, align 4, !tbaa !131
  %3 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 9
  store i16 1, ptr %3, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 5
  store float 0x3FD3333340000000, ptr %4, align 4, !tbaa !154
  %5 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 8
  store float 0x3FD3333340000000, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 7
  store i32 100, ptr %6, align 4, !tbaa !156
  %7 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 9
  store i32 100, ptr %7, align 4, !tbaa !157
  %8 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 11, i32 11
  store i32 100, ptr %8, align 4, !tbaa !158
  store i32 0, ptr %0, align 8, !tbaa !125
  %9 = getelementptr inbounds %struct.Scopes, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_display_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @IMB_colormanagement_display_get_default_name() #21
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %2, i64 noundef 64) #21
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_default_name() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_display_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_view_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %3 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, i64 noundef 64) #21
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.10, i64 noundef 64) #21
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %6, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_view_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 64) #21
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 64) #21
  %9 = load i32, ptr %1, align 8, !tbaa !159
  store i32 %9, ptr %0, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  %12 = load <2 x float>, ptr %10, align 8, !tbaa !43
  store <2 x float> %12, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call ptr @curvemapping_copy(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi ptr [ %17, %16 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  store ptr %19, ptr %20, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_view_settings_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @curvemapping_free(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_colorspace_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 64) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_color_managed_colorspace_settings_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calchandle_curvemap(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #16 !PGOFuncName !162 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %8 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !163
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %13 = load i8, ptr %12, align 2, !tbaa !91
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %85, label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %20 = load <2 x float>, ptr %16, align 4, !tbaa !43
  %21 = load <2 x float>, ptr %19, align 4, !tbaa !43
  %22 = fneg <2 x float> %21
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %22)
  store <2 x float> %23, ptr %4, align 8, !tbaa !43
  br label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load <2 x float>, ptr %16, align 4, !tbaa !43
  %29 = load <2 x float>, ptr %25, align 4, !tbaa !43
  %30 = fneg <2 x float> %29
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %30)
  store <2 x float> %31, ptr %4, align 8, !tbaa !43
  br label %35

32:                                               ; preds = %18, %24
  %33 = phi ptr [ %4, %18 ], [ %25, %24 ]
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %4, %27 ], [ %34, %32 ]
  %37 = phi ptr [ %25, %27 ], [ %33, %32 ]
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef nonnull %37) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %36, ptr noundef nonnull %16) #20
  %38 = call fastcc float @len_v2(ptr noundef nonnull %5) #20
  %39 = call fastcc float @len_v2(ptr noundef nonnull %6) #20
  %40 = fcmp oeq float %38, 0.000000e+00
  %41 = select i1 %40, float 1.000000e+00, float %38
  %42 = fcmp oeq float %39, 0.000000e+00
  %43 = select i1 %42, float 1.000000e+00, float %39
  %44 = icmp eq i8 %9, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %47 = load i8, ptr %46, align 2, !tbaa !91
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %49, label %75

49:                                               ; preds = %45, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %50 = load <2 x float>, ptr %6, align 8, !tbaa !43
  %51 = insertelement <2 x float> poison, float %43, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = fdiv <2 x float> %50, %52
  %54 = load <2 x float>, ptr %5, align 8, !tbaa !43
  %55 = insertelement <2 x float> poison, float %41, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fdiv <2 x float> %54, %56
  %58 = fadd <2 x float> %53, %57
  store <2 x float> %58, ptr %7, align 8, !tbaa !43
  %59 = call fastcc float @len_v2(ptr noundef nonnull %7) #20
  %60 = fmul float %59, 0x40047DBF40000000
  %61 = fcmp une float %60, 0.000000e+00
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  br i1 %44, label %63, label %66

63:                                               ; preds = %62
  %64 = fneg float %41
  %65 = fdiv float %64, %60
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %7, float noundef %65) #20
  br label %66

66:                                               ; preds = %63, %62
  %67 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %68 = load i8, ptr %67, align 2, !tbaa !91
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = fdiv float %43, %60
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %72, ptr noundef nonnull %16, ptr noundef nonnull %7, float noundef %71) #20
  br label %73

73:                                               ; preds = %66, %70, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  %74 = load i8, ptr %8, align 1, !tbaa !163
  br label %75

75:                                               ; preds = %73, %45
  %76 = phi i8 [ %74, %73 ], [ %9, %45 ]
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %5, float noundef 0xBFD5555560000000) #20
  br label %79

79:                                               ; preds = %78, %75
  %80 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %81 = load i8, ptr %80, align 2, !tbaa !91
  %82 = icmp eq i8 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %84, ptr noundef nonnull %16, ptr noundef nonnull %6, float noundef 0x3FD5555560000000) #20
  br label %85

85:                                               ; preds = %79, %83, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !PGOFuncName !164 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !165 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  %4 = load float, ptr %0, align 4, !tbaa !43
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !43
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #17 !PGOFuncName !166 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #20
  %3 = tail call float @sqrtf(float noundef %2) #21
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !167 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !43
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !168 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !169 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @correct_bezpart(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !170 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !171 {
  %2 = load float, ptr %0, align 4, !tbaa !43
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !43
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !172 {
  %5 = load float, ptr %1, align 4, !tbaa !43
  %6 = load float, ptr %2, align 4, !tbaa !43
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !173 {
  %3 = load float, ptr %0, align 4, !tbaa !43
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!35, !36, i64 12}
!57 = !{!"colortools.c:min_ff"}
!58 = !{!"colortools.c:max_ff"}
!59 = !{!45, !47, i64 40}
!60 = !{!45, !47, i64 48}
!61 = distinct !{!61, !55}
!62 = !{i64 0, i64 4, !63, i64 4, i64 4, !63, i64 8, i64 4, !63, i64 12, i64 4, !63, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 288, !64, i64 336, i64 12, !64, i64 348, i64 12, !64, i64 360, i64 12, !64, i64 372, i64 12, !64}
!63 = !{!36, !36, i64 0}
!64 = !{!37, !37, i64 0}
!65 = distinct !{!65, !55}
!66 = distinct !{!66, !55}
!67 = !{!"colortools.c:copy_v3_v3"}
!68 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 2, !69, i64 10, i64 2, !69}
!69 = !{!46, !46, i64 0}
!70 = distinct !{!70, !55}
!71 = !{!52, !46, i64 8}
!72 = distinct !{!72, !55}
!73 = !{!52, !46, i64 10}
!74 = distinct !{!74, !55}
!75 = !{!39, !40, i64 0}
!76 = !{!39, !40, i64 12}
!77 = distinct !{!77, !55}
!78 = distinct !{!78, !55}
!79 = distinct !{!79, !55}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = distinct !{!83, !55}
!84 = !{!"colortools.c:copy_v2_v2"}
!85 = !{!"colortools.c:zero_v2"}
!86 = !{!"colortools.c:curvemap_make_table"}
!87 = !{!45, !40, i64 8}
!88 = !{!45, !40, i64 12}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = !{!92, !37, i64 50}
!92 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!93 = distinct !{!93, !55}
!94 = !{!45, !40, i64 4}
!95 = distinct !{!95, !55}
!96 = distinct !{!96, !55}
!97 = !{!"colortools.c:mul_v2_v2"}
!98 = !{!39, !40, i64 4}
!99 = !{!39, !40, i64 8}
!100 = distinct !{!100, !55}
!101 = distinct !{!101, !55}
!102 = distinct !{!102, !55}
!103 = !{!"colortools.c:BLI_rctf_size_x"}
!104 = !{!"colortools.c:sort_curvepoints"}
!105 = distinct !{!105, !55}
!106 = !{!"colortools.c:curvemap_calc_extend"}
!107 = distinct !{!107, !55}
!108 = distinct !{!108, !55}
!109 = distinct !{!109, !55}
!110 = !{!111, !36, i64 0}
!111 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !46, i64 5136, !46, i64 5138, !36, i64 5140, !37, i64 5144}
!112 = !{!111, !36, i64 4}
!113 = !{!111, !40, i64 5128}
!114 = !{!115, !47, i64 40}
!115 = !{!"ImBuf", !47, i64 0, !47, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !47, i64 40, !47, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !47, i64 88, !47, i64 96, !47, i64 104, !40, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !47, i64 296, !47, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !47, i64 2368, !36, i64 2376, !47, i64 2384, !36, i64 2392, !36, i64 2396, !47, i64 2400, !47, i64 2408, !47, i64 2416, !47, i64 2424, !36, i64 2432, !116, i64 2436, !117, i64 2456}
!116 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!117 = !{!"DDSData", !36, i64 0, !36, i64 4, !47, i64 8, !36, i64 16}
!118 = !{!115, !47, i64 48}
!119 = !{!115, !36, i64 16}
!120 = !{!115, !36, i64 20}
!121 = !{!115, !36, i64 28}
!122 = distinct !{!122, !55}
!123 = !{!"colortools.c:rgb_to_luma"}
!124 = !{!"colortools.c:rgb_to_luma_byte"}
!125 = !{!126, !36, i64 0}
!126 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !111, i64 64, !47, i64 5224, !47, i64 5232, !47, i64 5240, !47, i64 5248, !36, i64 5256, !36, i64 5260}
!127 = !{!126, !40, i64 5196}
!128 = !{!126, !36, i64 64}
!129 = !{!126, !36, i64 68}
!130 = !{!126, !36, i64 16}
!131 = !{!126, !40, i64 12}
!132 = !{!126, !36, i64 4}
!133 = distinct !{!133, !55}
!134 = !{!126, !36, i64 5256}
!135 = !{!126, !47, i64 5224}
!136 = !{!126, !47, i64 5232}
!137 = !{!126, !47, i64 5240}
!138 = !{!126, !47, i64 5248}
!139 = distinct !{!139, !55, !140, !141}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!126, !36, i64 8}
!143 = distinct !{!143, !55}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = !{i32 0, i32 -2147483648}
!147 = distinct !{!147, !55}
!148 = distinct !{!148, !55}
!149 = distinct !{!149, !55, !140, !141}
!150 = !{!"colortools.c:copy_v4_v4"}
!151 = !{!"colortools.c:get_bin_float"}
!152 = !{!"colortools.c:save_sample_line"}
!153 = !{!126, !46, i64 5200}
!154 = !{!126, !40, i64 20}
!155 = !{!126, !40, i64 32}
!156 = !{!126, !36, i64 28}
!157 = !{!126, !36, i64 36}
!158 = !{!126, !36, i64 5204}
!159 = !{!160, !36, i64 0}
!160 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !47, i64 144, !47, i64 152}
!161 = !{!160, !47, i64 144}
!162 = !{!"colortools.c:calchandle_curvemap"}
!163 = !{!92, !37, i64 49}
!164 = !{!"colortools.c:len_v3v3"}
!165 = !{!"colortools.c:sub_v3_v3"}
!166 = !{!"colortools.c:len_v3"}
!167 = !{!"colortools.c:mul_v3_fl"}
!168 = !{!"colortools.c:add_v3_v3v3"}
!169 = !{!"colortools.c:sub_v3_v3v3"}
!170 = !{!"colortools.c:sub_v2_v2v2"}
!171 = !{!"colortools.c:len_v2"}
!172 = !{!"colortools.c:madd_v2_v2v2fl"}
!173 = !{!"colortools.c:dot_v3v3"}

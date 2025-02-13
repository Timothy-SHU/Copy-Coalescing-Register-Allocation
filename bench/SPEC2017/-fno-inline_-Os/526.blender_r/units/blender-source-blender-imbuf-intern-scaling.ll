; ModuleID = 'blender/source/blender/imbuf/intern/scaling.c'
source_filename = "blender/source/blender/imbuf/intern/scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.imbufRGBA = type { float, float, float, float }
%struct.ScaleTreadInitData = type { ptr, i32, i32, ptr, ptr }
%struct.ScaleThreadData = type { ptr, i32, i32, i32, i32, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"scalefastimbuf\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"scalefastimbuf f\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"threaded scale byte buffer\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"threaded scale float buffer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"z rect\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"scaledownx\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"scaledownxf\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"scaledowny\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"scaledownyf\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"scaleupx\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"scaleupxf\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"scaleupy\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"scaleupyf\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_half_x(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #8
  br label %28

17:                                               ; preds = %11
  %18 = lshr i32 %13, 1
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @IMB_allocImBuf(i32 noundef %18, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call fastcc void @imb_half_x_no_alloc(ptr noundef nonnull %25, ptr noundef nonnull %0) #9
  br label %28

28:                                               ; preds = %17, %7, %1, %27, %15
  %29 = phi ptr [ %16, %15 ], [ %25, %27 ], [ null, %1 ], [ null, %7 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @imb_half_x_no_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !48 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !45
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %18, %81
  %26 = phi ptr [ %4, %18 ], [ %75, %81 ]
  %27 = phi ptr [ %20, %18 ], [ %68, %81 ]
  %28 = phi ptr [ %7, %18 ], [ %82, %81 ]
  %29 = phi ptr [ %22, %18 ], [ %67, %81 ]
  %30 = phi i32 [ %16, %18 ], [ %83, %81 ]
  %31 = load i32, ptr %23, align 8, !tbaa !44
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %25, %61
  %34 = phi ptr [ %52, %61 ], [ %26, %25 ]
  %35 = phi ptr [ %63, %61 ], [ %27, %25 ]
  %36 = phi ptr [ %62, %61 ], [ %28, %25 ]
  %37 = phi ptr [ %51, %61 ], [ %29, %25 ]
  %38 = phi i32 [ %64, %61 ], [ %31, %25 ]
  br i1 %5, label %50, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %34, i64 4
  %41 = getelementptr inbounds i8, ptr %34, i64 8
  %42 = getelementptr inbounds i8, ptr %37, i64 4
  %43 = load <4 x i8>, ptr %34, align 1, !tbaa !49
  %44 = load <4 x i8>, ptr %40, align 1, !tbaa !49
  %45 = zext <4 x i8> %44 to <4 x i16>
  %46 = zext <4 x i8> %43 to <4 x i16>
  %47 = add nuw nsw <4 x i16> %45, %46
  %48 = lshr <4 x i16> %47, <i16 1, i16 1, i16 1, i16 1>
  %49 = trunc <4 x i16> %48 to <4 x i8>
  store <4 x i8> %49, ptr %37, align 1, !tbaa !49
  br label %50

50:                                               ; preds = %39, %33
  %51 = phi ptr [ %42, %39 ], [ %37, %33 ]
  %52 = phi ptr [ %41, %39 ], [ %34, %33 ]
  br i1 %14, label %61, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds float, ptr %36, i64 4
  %55 = getelementptr inbounds float, ptr %36, i64 8
  %56 = getelementptr inbounds float, ptr %35, i64 4
  %57 = load <4 x float>, ptr %36, align 4, !tbaa !50
  %58 = load <4 x float>, ptr %54, align 4, !tbaa !50
  %59 = fadd <4 x float> %57, %58
  %60 = fmul <4 x float> %59, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %60, ptr %35, align 4, !tbaa !50
  br label %61

61:                                               ; preds = %50, %53
  %62 = phi ptr [ %55, %53 ], [ %36, %50 ]
  %63 = phi ptr [ %56, %53 ], [ %35, %50 ]
  %64 = add nsw i32 %38, -1
  %65 = icmp sgt i32 %38, 1
  br i1 %65, label %33, label %66, !llvm.loop !51

66:                                               ; preds = %61, %25
  %67 = phi ptr [ %29, %25 ], [ %51, %61 ]
  %68 = phi ptr [ %27, %25 ], [ %63, %61 ]
  br i1 %5, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %24, align 8, !tbaa !44
  %71 = shl i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %26, i64 %72
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ %73, %69 ], [ %26, %66 ]
  br i1 %14, label %81, label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %24, align 8, !tbaa !44
  %78 = shl i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %28, i64 %79
  br label %81

81:                                               ; preds = %74, %76
  %82 = phi ptr [ %80, %76 ], [ %28, %74 ]
  %83 = add nsw i32 %30, -1
  %84 = icmp sgt i32 %30, 1
  br i1 %84, label %25, label %85, !llvm.loop !53

85:                                               ; preds = %81, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_double_fast_x(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  %10 = xor i1 %9, true
  %11 = select i1 %6, i1 true, i1 %10
  %12 = select i1 %6, i1 %9, i1 false
  br i1 %11, label %13, label %74

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = shl nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %16, i32 noundef %18, i8 noundef zeroext %20, i32 noundef %22) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %74, label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %17, align 4, !tbaa !45
  %27 = load i32, ptr %14, align 8, !tbaa !44
  %28 = mul nsw i32 %27, %26
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = load ptr, ptr %4, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %30, %69
  %39 = phi ptr [ %71, %69 ], [ %32, %30 ]
  %40 = phi ptr [ %70, %69 ], [ %34, %30 ]
  %41 = phi ptr [ %51, %69 ], [ %37, %30 ]
  %42 = phi ptr [ %50, %69 ], [ %36, %30 ]
  %43 = phi i32 [ %72, %69 ], [ %28, %30 ]
  br i1 %6, label %44, label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds i32, ptr %41, i64 1
  %46 = load i32, ptr %41, align 4, !tbaa !54
  %47 = getelementptr inbounds i32, ptr %42, i64 1
  store i32 %46, ptr %42, align 4, !tbaa !54
  %48 = getelementptr inbounds i32, ptr %42, i64 2
  store i32 %46, ptr %47, align 4, !tbaa !54
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi ptr [ %48, %44 ], [ %42, %38 ]
  %51 = phi ptr [ %45, %44 ], [ %41, %38 ]
  br i1 %12, label %69, label %52

52:                                               ; preds = %49
  %53 = load float, ptr %40, align 4, !tbaa !50
  %54 = getelementptr inbounds float, ptr %39, i64 4
  store float %53, ptr %54, align 4, !tbaa !50
  store float %53, ptr %39, align 4, !tbaa !50
  %55 = getelementptr inbounds float, ptr %40, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds float, ptr %39, i64 5
  store float %56, ptr %57, align 4, !tbaa !50
  %58 = getelementptr inbounds float, ptr %39, i64 1
  store float %56, ptr %58, align 4, !tbaa !50
  %59 = getelementptr inbounds float, ptr %40, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = getelementptr inbounds float, ptr %39, i64 6
  store float %60, ptr %61, align 4, !tbaa !50
  %62 = getelementptr inbounds float, ptr %39, i64 2
  store float %60, ptr %62, align 4, !tbaa !50
  %63 = getelementptr inbounds float, ptr %40, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !50
  %65 = getelementptr inbounds float, ptr %39, i64 7
  store float %64, ptr %65, align 4, !tbaa !50
  %66 = getelementptr inbounds float, ptr %39, i64 3
  store float %64, ptr %66, align 4, !tbaa !50
  %67 = getelementptr inbounds float, ptr %39, i64 8
  %68 = getelementptr inbounds float, ptr %40, i64 4
  br label %69

69:                                               ; preds = %49, %52
  %70 = phi ptr [ %68, %52 ], [ %40, %49 ]
  %71 = phi ptr [ %67, %52 ], [ %39, %49 ]
  %72 = add nsw i32 %43, -1
  %73 = icmp sgt i32 %43, 1
  br i1 %73, label %38, label %74, !llvm.loop !55

74:                                               ; preds = %69, %3, %25, %13, %1
  %75 = phi ptr [ null, %1 ], [ null, %13 ], [ %23, %25 ], [ null, %3 ], [ %23, %69 ]
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_double_x(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %3
  %12 = tail call ptr @IMB_double_fast_x(ptr noundef nonnull %0) #9
  tail call void @imb_filterx(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %7, %1, %11
  %14 = phi ptr [ %12, %11 ], [ null, %1 ], [ null, %7 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @imb_filterx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_half_y(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #8
  br label %28

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = lshr i32 %13, 1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @IMB_allocImBuf(i32 noundef %19, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call fastcc void @imb_half_y_no_alloc(ptr noundef nonnull %25, ptr noundef nonnull %0) #9
  br label %28

28:                                               ; preds = %17, %7, %1, %27, %15
  %29 = phi ptr [ %16, %15 ], [ %25, %27 ], [ null, %1 ], [ null, %7 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @imb_half_y_no_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !45
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %113

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  br label %25

25:                                               ; preds = %18, %109
  %26 = phi ptr [ %20, %18 ], [ %96, %109 ]
  %27 = phi ptr [ %7, %18 ], [ %110, %109 ]
  %28 = phi ptr [ null, %18 ], [ %95, %109 ]
  %29 = phi ptr [ null, %18 ], [ %94, %109 ]
  %30 = phi ptr [ null, %18 ], [ %93, %109 ]
  %31 = phi ptr [ null, %18 ], [ %92, %109 ]
  %32 = phi ptr [ %4, %18 ], [ %103, %109 ]
  %33 = phi ptr [ %22, %18 ], [ %91, %109 ]
  %34 = phi i32 [ %16, %18 ], [ %111, %109 ]
  br i1 %5, label %40, label %35

35:                                               ; preds = %25
  %36 = load i32, ptr %23, align 8, !tbaa !44
  %37 = shl i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %32, i64 %38
  br label %40

40:                                               ; preds = %35, %25
  %41 = phi ptr [ %39, %35 ], [ %31, %25 ]
  %42 = phi ptr [ %32, %35 ], [ %30, %25 ]
  br i1 %14, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, ptr %23, align 8, !tbaa !44
  %45 = shl i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %27, i64 %46
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi ptr [ %27, %43 ], [ %29, %40 ]
  %50 = phi ptr [ %47, %43 ], [ %28, %40 ]
  %51 = load i32, ptr %24, align 8, !tbaa !44
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %48, %84
  %54 = phi ptr [ %87, %84 ], [ %26, %48 ]
  %55 = phi ptr [ %86, %84 ], [ %50, %48 ]
  %56 = phi ptr [ %85, %84 ], [ %49, %48 ]
  %57 = phi ptr [ %75, %84 ], [ %42, %48 ]
  %58 = phi ptr [ %74, %84 ], [ %41, %48 ]
  %59 = phi ptr [ %73, %84 ], [ %33, %48 ]
  %60 = phi i32 [ %88, %84 ], [ %51, %48 ]
  br i1 %5, label %72, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, ptr %57, i64 4
  %63 = getelementptr inbounds i8, ptr %58, i64 4
  %64 = getelementptr inbounds i8, ptr %59, i64 4
  %65 = load <4 x i8>, ptr %57, align 1, !tbaa !49
  %66 = load <4 x i8>, ptr %58, align 1, !tbaa !49
  %67 = zext <4 x i8> %66 to <4 x i16>
  %68 = zext <4 x i8> %65 to <4 x i16>
  %69 = add nuw nsw <4 x i16> %67, %68
  %70 = lshr <4 x i16> %69, <i16 1, i16 1, i16 1, i16 1>
  %71 = trunc <4 x i16> %70 to <4 x i8>
  store <4 x i8> %71, ptr %59, align 1, !tbaa !49
  br label %72

72:                                               ; preds = %61, %53
  %73 = phi ptr [ %64, %61 ], [ %59, %53 ]
  %74 = phi ptr [ %63, %61 ], [ %58, %53 ]
  %75 = phi ptr [ %62, %61 ], [ %57, %53 ]
  br i1 %14, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds float, ptr %56, i64 4
  %78 = getelementptr inbounds float, ptr %55, i64 4
  %79 = getelementptr inbounds float, ptr %54, i64 4
  %80 = load <4 x float>, ptr %56, align 4, !tbaa !50
  %81 = load <4 x float>, ptr %55, align 4, !tbaa !50
  %82 = fadd <4 x float> %80, %81
  %83 = fmul <4 x float> %82, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %83, ptr %54, align 4, !tbaa !50
  br label %84

84:                                               ; preds = %72, %76
  %85 = phi ptr [ %77, %76 ], [ %56, %72 ]
  %86 = phi ptr [ %78, %76 ], [ %55, %72 ]
  %87 = phi ptr [ %79, %76 ], [ %54, %72 ]
  %88 = add nsw i32 %60, -1
  %89 = icmp sgt i32 %60, 1
  br i1 %89, label %53, label %90, !llvm.loop !57

90:                                               ; preds = %84, %48
  %91 = phi ptr [ %33, %48 ], [ %73, %84 ]
  %92 = phi ptr [ %41, %48 ], [ %74, %84 ]
  %93 = phi ptr [ %42, %48 ], [ %75, %84 ]
  %94 = phi ptr [ %49, %48 ], [ %85, %84 ]
  %95 = phi ptr [ %50, %48 ], [ %86, %84 ]
  %96 = phi ptr [ %26, %48 ], [ %87, %84 ]
  br i1 %5, label %102, label %97

97:                                               ; preds = %90
  %98 = load i32, ptr %23, align 8, !tbaa !44
  %99 = shl i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %32, i64 %100
  br label %102

102:                                              ; preds = %97, %90
  %103 = phi ptr [ %101, %97 ], [ %32, %90 ]
  br i1 %14, label %104, label %109

104:                                              ; preds = %102
  %105 = load i32, ptr %23, align 8, !tbaa !44
  %106 = shl i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, ptr %27, i64 %107
  br label %109

109:                                              ; preds = %102, %104
  %110 = phi ptr [ %108, %104 ], [ %27, %102 ]
  %111 = add nsw i32 %34, -1
  %112 = icmp sgt i32 %34, 1
  br i1 %112, label %25, label %113, !llvm.loop !58

113:                                              ; preds = %109, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_double_fast_y(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %84, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  %10 = xor i1 %9, true
  %11 = select i1 %6, i1 true, i1 %10
  %12 = select i1 %6, i1 %9, i1 false
  br i1 %11, label %13, label %84

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = shl nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %16, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %23) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26

26:                                               ; preds = %13
  %27 = load i32, ptr %17, align 4, !tbaa !45
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = load ptr, ptr %14, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = load ptr, ptr %4, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 2
  br label %37

37:                                               ; preds = %29, %79
  %38 = phi ptr [ %35, %29 ], [ %61, %79 ]
  %39 = phi i32 [ %27, %29 ], [ %82, %79 ]
  %40 = phi ptr [ %31, %29 ], [ %81, %79 ]
  %41 = phi ptr [ %32, %29 ], [ %80, %79 ]
  %42 = phi ptr [ %34, %29 ], [ %60, %79 ]
  br i1 %6, label %43, label %59

43:                                               ; preds = %37
  %44 = load i32, ptr %36, align 8, !tbaa !44
  %45 = sext i32 %44 to i64
  %46 = getelementptr i32, ptr %42, i64 %45
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %53, %48 ], [ %38, %43 ]
  %50 = phi i32 [ %57, %48 ], [ %44, %43 ]
  %51 = phi ptr [ %55, %48 ], [ %46, %43 ]
  %52 = phi ptr [ %56, %48 ], [ %42, %43 ]
  %53 = getelementptr inbounds i32, ptr %49, i64 1
  %54 = load i32, ptr %49, align 4, !tbaa !54
  %55 = getelementptr inbounds i32, ptr %51, i64 1
  store i32 %54, ptr %51, align 4, !tbaa !54
  %56 = getelementptr inbounds i32, ptr %52, i64 1
  store i32 %54, ptr %52, align 4, !tbaa !54
  %57 = add nsw i32 %50, -1
  %58 = icmp ugt i32 %50, 1
  br i1 %58, label %48, label %59, !llvm.loop !59

59:                                               ; preds = %48, %43, %37
  %60 = phi ptr [ %42, %37 ], [ %46, %43 ], [ %55, %48 ]
  %61 = phi ptr [ %38, %37 ], [ %38, %43 ], [ %53, %48 ]
  br i1 %12, label %79, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %36, align 8, !tbaa !44
  %64 = shl i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr float, ptr %40, i64 %65
  %67 = icmp sgt i32 %63, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62, %68
  %69 = phi i32 [ %77, %68 ], [ %64, %62 ]
  %70 = phi ptr [ %75, %68 ], [ %66, %62 ]
  %71 = phi ptr [ %76, %68 ], [ %40, %62 ]
  %72 = phi ptr [ %73, %68 ], [ %41, %62 ]
  %73 = getelementptr inbounds float, ptr %72, i64 1
  %74 = load float, ptr %72, align 4, !tbaa !50
  %75 = getelementptr inbounds float, ptr %70, i64 1
  store float %74, ptr %70, align 4, !tbaa !50
  %76 = getelementptr inbounds float, ptr %71, i64 1
  store float %74, ptr %71, align 4, !tbaa !50
  %77 = add nsw i32 %69, -1
  %78 = icmp sgt i32 %69, 1
  br i1 %78, label %68, label %79, !llvm.loop !60

79:                                               ; preds = %68, %62, %59
  %80 = phi ptr [ %41, %59 ], [ %41, %62 ], [ %73, %68 ]
  %81 = phi ptr [ %40, %59 ], [ %66, %62 ], [ %75, %68 ]
  %82 = add nsw i32 %39, -1
  %83 = icmp sgt i32 %39, 1
  br i1 %83, label %37, label %84, !llvm.loop !61

84:                                               ; preds = %79, %3, %26, %13, %1
  %85 = phi ptr [ null, %1 ], [ null, %13 ], [ %24, %26 ], [ null, %3 ], [ %24, %79 ]
  ret ptr %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_double_y(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @IMB_double_fast_y(ptr noundef nonnull %0) #9
  tail call void @IMB_filtery(ptr noundef %8) #8
  br label %9

9:                                                ; preds = %3, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @IMB_filtery(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_onehalf_no_alloc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i16], align 16
  %4 = alloca [8 x i16], align 16
  %5 = alloca [4 x i16], align 8
  %6 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  br i1 %8, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %0) #8
  br label %24

24:                                               ; preds = %22, %18, %16
  %25 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call fastcc void @imb_half_y_no_alloc(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %181

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call fastcc void @imb_half_x_no_alloc(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %181

34:                                               ; preds = %29
  br i1 %8, label %94, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !45
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = load ptr, ptr %6, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %44 = getelementptr inbounds i16, ptr %3, i64 4
  %45 = getelementptr inbounds i16, ptr %4, i64 4
  br label %46

46:                                               ; preds = %39, %84
  %47 = phi i32 [ %26, %39 ], [ %86, %84 ]
  %48 = phi ptr [ %41, %39 ], [ %88, %84 ]
  %49 = phi ptr [ %42, %39 ], [ %91, %84 ]
  %50 = phi i32 [ %37, %39 ], [ %92, %84 ]
  %51 = shl i32 %47, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load i32, ptr %43, align 8, !tbaa !44
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %46, %56
  %57 = phi ptr [ %78, %56 ], [ %48, %46 ]
  %58 = phi ptr [ %77, %56 ], [ %53, %46 ]
  %59 = phi ptr [ %76, %56 ], [ %49, %46 ]
  %60 = phi i32 [ %79, %56 ], [ %54, %46 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call fastcc void @straight_uchar_to_premul_ushort(ptr noundef nonnull %3, ptr noundef %59) #9
  call fastcc void @straight_uchar_to_premul_ushort(ptr noundef nonnull %4, ptr noundef %58) #9
  %61 = getelementptr inbounds i8, ptr %59, i64 4
  call fastcc void @straight_uchar_to_premul_ushort(ptr noundef nonnull %44, ptr noundef nonnull %61) #9
  %62 = getelementptr inbounds i8, ptr %58, i64 4
  call fastcc void @straight_uchar_to_premul_ushort(ptr noundef nonnull %45, ptr noundef nonnull %62) #9
  %63 = load <4 x i16>, ptr %3, align 16, !tbaa !62
  %64 = zext <4 x i16> %63 to <4 x i32>
  %65 = load <4 x i16>, ptr %4, align 16, !tbaa !62
  %66 = zext <4 x i16> %65 to <4 x i32>
  %67 = add nuw nsw <4 x i32> %66, %64
  %68 = load <4 x i16>, ptr %44, align 8, !tbaa !62
  %69 = zext <4 x i16> %68 to <4 x i32>
  %70 = add nuw nsw <4 x i32> %67, %69
  %71 = load <4 x i16>, ptr %45, align 8, !tbaa !62
  %72 = zext <4 x i16> %71 to <4 x i32>
  %73 = add nuw nsw <4 x i32> %70, %72
  %74 = lshr <4 x i32> %73, <i32 2, i32 2, i32 2, i32 2>
  %75 = trunc <4 x i32> %74 to <4 x i16>
  store <4 x i16> %75, ptr %5, align 8, !tbaa !62
  call fastcc void @premul_ushort_to_straight_uchar(ptr noundef %57, ptr noundef nonnull %5) #9
  %76 = getelementptr inbounds i8, ptr %59, i64 8
  %77 = getelementptr inbounds i8, ptr %58, i64 8
  %78 = getelementptr inbounds i8, ptr %57, i64 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %79 = add nsw i32 %60, -1
  %80 = icmp ugt i32 %60, 1
  br i1 %80, label %56, label %81, !llvm.loop !64

81:                                               ; preds = %56
  %82 = load i32, ptr %25, align 8, !tbaa !44
  %83 = shl i32 %82, 2
  br label %84

84:                                               ; preds = %81, %46
  %85 = phi i32 [ %83, %81 ], [ %51, %46 ]
  %86 = phi i32 [ %82, %81 ], [ %47, %46 ]
  %87 = phi ptr [ %77, %81 ], [ %53, %46 ]
  %88 = phi ptr [ %78, %81 ], [ %48, %46 ]
  %89 = and i32 %85, 4
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %87, i64 %90
  %92 = add nsw i32 %50, -1
  %93 = icmp sgt i32 %50, 1
  br i1 %93, label %46, label %94, !llvm.loop !65

94:                                               ; preds = %84, %35, %34
  %95 = phi i32 [ %26, %35 ], [ %26, %34 ], [ %86, %84 ]
  br i1 %17, label %181, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !45
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %181

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !43
  %103 = load ptr, ptr %9, align 8, !tbaa !43
  %104 = shl i32 %95, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !44
  %108 = icmp sgt i32 %107, 0
  %109 = and i32 %104, 4
  %110 = zext nneg i32 %109 to i64
  br label %111

111:                                              ; preds = %100, %175
  %112 = phi ptr [ %102, %100 ], [ %177, %175 ]
  %113 = phi ptr [ %103, %100 ], [ %178, %175 ]
  %114 = phi i32 [ %98, %100 ], [ %179, %175 ]
  %115 = getelementptr inbounds float, ptr %113, i64 %105
  br i1 %108, label %116, label %175

116:                                              ; preds = %111, %116
  %117 = phi ptr [ %172, %116 ], [ %112, %111 ]
  %118 = phi ptr [ %171, %116 ], [ %115, %111 ]
  %119 = phi ptr [ %170, %116 ], [ %113, %111 ]
  %120 = phi i32 [ %173, %116 ], [ %107, %111 ]
  %121 = load float, ptr %119, align 4, !tbaa !50
  %122 = load float, ptr %118, align 4, !tbaa !50
  %123 = fadd float %121, %122
  %124 = getelementptr inbounds float, ptr %119, i64 4
  %125 = load float, ptr %124, align 4, !tbaa !50
  %126 = fadd float %123, %125
  %127 = getelementptr inbounds float, ptr %118, i64 4
  %128 = load float, ptr %127, align 4, !tbaa !50
  %129 = fadd float %126, %128
  %130 = fmul float %129, 2.500000e-01
  store float %130, ptr %117, align 4, !tbaa !50
  %131 = getelementptr inbounds float, ptr %119, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !50
  %133 = getelementptr inbounds float, ptr %118, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !50
  %135 = fadd float %132, %134
  %136 = getelementptr inbounds float, ptr %119, i64 5
  %137 = load float, ptr %136, align 4, !tbaa !50
  %138 = fadd float %135, %137
  %139 = getelementptr inbounds float, ptr %118, i64 5
  %140 = load float, ptr %139, align 4, !tbaa !50
  %141 = fadd float %138, %140
  %142 = fmul float %141, 2.500000e-01
  %143 = getelementptr inbounds float, ptr %117, i64 1
  store float %142, ptr %143, align 4, !tbaa !50
  %144 = getelementptr inbounds float, ptr %119, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !50
  %146 = getelementptr inbounds float, ptr %118, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !50
  %148 = fadd float %145, %147
  %149 = getelementptr inbounds float, ptr %119, i64 6
  %150 = load float, ptr %149, align 4, !tbaa !50
  %151 = fadd float %148, %150
  %152 = getelementptr inbounds float, ptr %118, i64 6
  %153 = load float, ptr %152, align 4, !tbaa !50
  %154 = fadd float %151, %153
  %155 = fmul float %154, 2.500000e-01
  %156 = getelementptr inbounds float, ptr %117, i64 2
  store float %155, ptr %156, align 4, !tbaa !50
  %157 = getelementptr inbounds float, ptr %119, i64 3
  %158 = load float, ptr %157, align 4, !tbaa !50
  %159 = getelementptr inbounds float, ptr %118, i64 3
  %160 = load float, ptr %159, align 4, !tbaa !50
  %161 = fadd float %158, %160
  %162 = getelementptr inbounds float, ptr %119, i64 7
  %163 = load float, ptr %162, align 4, !tbaa !50
  %164 = fadd float %161, %163
  %165 = getelementptr inbounds float, ptr %118, i64 7
  %166 = load float, ptr %165, align 4, !tbaa !50
  %167 = fadd float %164, %166
  %168 = fmul float %167, 2.500000e-01
  %169 = getelementptr inbounds float, ptr %117, i64 3
  store float %168, ptr %169, align 4, !tbaa !50
  %170 = getelementptr inbounds float, ptr %119, i64 8
  %171 = getelementptr inbounds float, ptr %118, i64 8
  %172 = getelementptr inbounds float, ptr %117, i64 4
  %173 = add nsw i32 %120, -1
  %174 = icmp ugt i32 %120, 1
  br i1 %174, label %116, label %175, !llvm.loop !66

175:                                              ; preds = %116, %111
  %176 = phi ptr [ %115, %111 ], [ %171, %116 ]
  %177 = phi ptr [ %112, %111 ], [ %172, %116 ]
  %178 = getelementptr inbounds float, ptr %176, i64 %110
  %179 = add nsw i32 %114, -1
  %180 = icmp sgt i32 %114, 1
  br i1 %180, label %111, label %181, !llvm.loop !67

181:                                              ; preds = %175, %96, %94, %33, %28
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_ushort(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !68 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !49
  %5 = load i8, ptr %1, align 1, !tbaa !49
  %6 = zext i8 %5 to i32
  %7 = zext i8 %4 to i32
  %8 = mul nuw nsw i32 %6, %7
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %0, align 2, !tbaa !62
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %12, %7
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %14, ptr %15, align 2, !tbaa !62
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, %7
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %20, ptr %21, align 2, !tbaa !62
  %22 = zext i8 %4 to i16
  %23 = shl nuw i16 %22, 8
  %24 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %23, ptr %24, align 2, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_ushort_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !69 {
  %3 = getelementptr inbounds i16, ptr %1, i64 3
  %4 = load i16, ptr %3, align 2, !tbaa !62
  %5 = icmp ult i16 %4, 256
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i16, ptr %1, align 2, !tbaa !62
  %8 = icmp ugt i16 %7, -130
  %9 = zext i16 %7 to i32
  %10 = add nuw nsw i32 %9, 128
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = select i1 %8, i8 -1, i8 %12
  store i8 %13, ptr %0, align 1, !tbaa !49
  %14 = getelementptr inbounds i16, ptr %1, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !62
  %16 = icmp ugt i16 %15, -130
  %17 = zext i16 %15 to i32
  %18 = add nuw nsw i32 %17, 128
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  %21 = select i1 %16, i8 -1, i8 %20
  %22 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %21, ptr %22, align 1, !tbaa !49
  %23 = getelementptr inbounds i16, ptr %1, i64 2
  %24 = load i16, ptr %23, align 2, !tbaa !62
  %25 = icmp ugt i16 %24, -130
  %26 = zext i16 %24 to i32
  %27 = add nuw nsw i32 %26, 128
  %28 = lshr i32 %27, 8
  %29 = trunc i32 %28 to i8
  %30 = select i1 %25, i8 -1, i8 %29
  br label %48

31:                                               ; preds = %2
  %32 = lshr i16 %4, 8
  %33 = load i16, ptr %1, align 2, !tbaa !62
  %34 = udiv i16 %33, %32
  %35 = tail call i16 @llvm.umin.i16(i16 %34, i16 255)
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr %0, align 1, !tbaa !49
  %37 = getelementptr inbounds i16, ptr %1, i64 1
  %38 = load i16, ptr %37, align 2, !tbaa !62
  %39 = udiv i16 %38, %32
  %40 = tail call i16 @llvm.umin.i16(i16 %39, i16 255)
  %41 = trunc i16 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !49
  %43 = getelementptr inbounds i16, ptr %1, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !62
  %45 = udiv i16 %44, %32
  %46 = tail call i16 @llvm.umin.i16(i16 %45, i16 255)
  %47 = trunc i16 %46 to i8
  br label %48

48:                                               ; preds = %31, %6
  %49 = phi i8 [ %47, %31 ], [ %30, %6 ]
  %50 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !49
  %51 = load i16, ptr %3, align 2, !tbaa !62
  %52 = icmp ugt i16 %51, -130
  %53 = zext i16 %51 to i32
  %54 = add nuw nsw i32 %53, 128
  %55 = lshr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = select i1 %52, i8 -1, i8 %56
  %58 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %57, ptr %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_onehalf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call ptr @IMB_half_y(ptr noundef nonnull %0) #9
  br label %33

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call ptr @IMB_half_x(ptr noundef nonnull %0) #9
  br label %33

23:                                               ; preds = %17
  %24 = lshr i32 %13, 1
  %25 = lshr i32 %19, 1
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !47
  %30 = tail call ptr @IMB_allocImBuf(i32 noundef %24, i32 noundef %25, i8 noundef zeroext %27, i32 noundef %29) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void @imb_onehalf_no_alloc(ptr noundef nonnull %30, ptr noundef nonnull %0) #9
  br label %33

33:                                               ; preds = %23, %7, %1, %32, %21, %15
  %34 = phi ptr [ %16, %15 ], [ %22, %21 ], [ %30, %32 ], [ null, %1 ], [ null, %7 ], [ null, %23 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_scaleImBuf(ptr noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %49, label %21

21:                                               ; preds = %17, %13
  tail call fastcc void @scalefast_Z_ImBuf(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #9
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @scaledownx(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %28

28:                                               ; preds = %26, %23, %21
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !45
  %33 = icmp ugt i32 %32, %2
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @scaledowny(ptr noundef nonnull %0, i32 noundef %2) #9
  br label %36

36:                                               ; preds = %34, %30, %28
  br i1 %22, label %42, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %14, align 8, !tbaa !44
  %39 = icmp ult i32 %38, %1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @scaleupx(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %42

42:                                               ; preds = %40, %37, %36
  br i1 %29, label %49, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = icmp ult i32 %45, %2
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @scaleupy(ptr noundef nonnull %0, i32 noundef %2) #9
  br label %49

49:                                               ; preds = %42, %43, %47, %17, %9, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scalefast_Z_ImBuf(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %9 = mul nsw i32 %2, %1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %8(i64 noundef %11, ptr noundef nonnull @.str.4) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, -1.000000e+00
  %19 = fmul double %18, 6.553600e+04
  %20 = sitofp i32 %1 to double
  %21 = fadd double %20, -1.000000e+00
  %22 = fdiv double %19, %21
  %23 = fadd double %22, 5.000000e-01
  %24 = fptosi double %23 to i32
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = sitofp i32 %26 to double
  %28 = fadd double %27, -1.000000e+00
  %29 = fmul double %28, 6.553600e+04
  %30 = sitofp i32 %2 to double
  %31 = fadd double %30, -1.000000e+00
  %32 = fdiv double %29, %31
  %33 = fadd double %32, 5.000000e-01
  %34 = fptosi double %33 to i32
  %35 = icmp sgt i32 %2, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %14
  %37 = load ptr, ptr %4, align 8, !tbaa !71
  %38 = icmp sgt i32 %1, 0
  br label %39

39:                                               ; preds = %36, %61
  %40 = phi ptr [ %12, %36 ], [ %62, %61 ]
  %41 = phi i32 [ 32768, %36 ], [ %48, %61 ]
  %42 = phi i32 [ %2, %36 ], [ %63, %61 ]
  %43 = ashr i32 %41, 16
  %44 = load i32, ptr %15, align 8, !tbaa !44
  %45 = mul nsw i32 %44, %43
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %37, i64 %46
  %48 = add nsw i32 %41, %34
  br i1 %38, label %49, label %61

49:                                               ; preds = %39, %49
  %50 = phi ptr [ %57, %49 ], [ %40, %39 ]
  %51 = phi i32 [ %58, %49 ], [ 32768, %39 ]
  %52 = phi i32 [ %59, %49 ], [ %1, %39 ]
  %53 = ashr i32 %51, 16
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %47, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !54
  %57 = getelementptr inbounds i32, ptr %50, i64 1
  store i32 %56, ptr %50, align 4, !tbaa !54
  %58 = add nsw i32 %51, %24
  %59 = add nsw i32 %52, -1
  %60 = icmp ugt i32 %52, 1
  br i1 %60, label %49, label %61, !llvm.loop !73

61:                                               ; preds = %49, %39
  %62 = phi ptr [ %40, %39 ], [ %57, %49 ]
  %63 = add nsw i32 %42, -1
  %64 = icmp sgt i32 %42, 1
  br i1 %64, label %39, label %65, !llvm.loop !74

65:                                               ; preds = %61, %14
  tail call void @IMB_freezbufImBuf(ptr noundef %0) #8
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !75
  %68 = or i32 %67, 8
  store i32 %68, ptr %66, align 4, !tbaa !75
  store ptr %12, ptr %4, align 8, !tbaa !71
  br label %69

69:                                               ; preds = %3, %65, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scaledownx(ptr noundef returned %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = select i1 %5, i1 true, i1 %8
  br i1 %12, label %13, label %171

13:                                               ; preds = %2
  br i1 %5, label %14, label %21

14:                                               ; preds = %13
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %16 = mul nsw i32 %11, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %171, label %21

21:                                               ; preds = %14, %13
  %22 = phi ptr [ %19, %14 ], [ null, %13 ]
  br i1 %8, label %23, label %35

23:                                               ; preds = %21
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %25 = load i32, ptr %10, align 4, !tbaa !45
  %26 = mul nsw i32 %25, %1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 4
  %29 = tail call ptr %24(i64 noundef %28, ptr noundef nonnull @.str.6) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = icmp eq ptr %22, null
  br i1 %32, label %171, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %34(ptr noundef nonnull %22) #8
  br label %171

35:                                               ; preds = %23, %21
  %36 = phi ptr [ %29, %23 ], [ null, %21 ]
  %37 = load i32, ptr %9, align 8, !tbaa !44
  %38 = sitofp i32 %37 to double
  %39 = fadd double %38, -1.000000e-02
  %40 = sitofp i32 %1 to double
  %41 = fdiv double %39, %40
  %42 = fptrunc double %41 to float
  br i1 %5, label %43, label %45

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %44, %43 ], [ null, %35 ]
  %47 = phi ptr [ %22, %43 ], [ null, %35 ]
  br i1 %8, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 8, !tbaa !43
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = phi ptr [ %36, %48 ], [ null, %45 ]
  %53 = load i32, ptr %10, align 4, !tbaa !45
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %160

55:                                               ; preds = %50
  %56 = icmp sgt i32 %1, 0
  %57 = insertelement <4 x float> poison, float %42, i64 0
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <4 x i32> zeroinitializer
  %59 = insertelement <4 x float> poison, float %42, i64 0
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> zeroinitializer
  br label %61

61:                                               ; preds = %55, %151
  %62 = phi i32 [ %53, %55 ], [ %158, %151 ]
  %63 = phi ptr [ %52, %55 ], [ %155, %151 ]
  %64 = phi ptr [ %51, %55 ], [ %154, %151 ]
  %65 = phi ptr [ %47, %55 ], [ %153, %151 ]
  %66 = phi ptr [ %46, %55 ], [ %152, %151 ]
  %67 = phi <4 x float> [ zeroinitializer, %55 ], [ %156, %151 ]
  %68 = phi <4 x float> [ zeroinitializer, %55 ], [ %157, %151 ]
  br i1 %56, label %69, label %151

69:                                               ; preds = %61, %144
  %70 = phi i32 [ %149, %144 ], [ %1, %61 ]
  %71 = phi float [ %148, %144 ], [ 0.000000e+00, %61 ]
  %72 = phi ptr [ %146, %144 ], [ %63, %61 ]
  %73 = phi ptr [ %145, %144 ], [ %64, %61 ]
  %74 = phi ptr [ %134, %144 ], [ %65, %61 ]
  %75 = phi ptr [ %133, %144 ], [ %66, %61 ]
  %76 = phi <4 x float> [ %147, %144 ], [ zeroinitializer, %61 ]
  %77 = phi <4 x float> [ %119, %144 ], [ %67, %61 ]
  %78 = phi <4 x float> [ %135, %144 ], [ zeroinitializer, %61 ]
  %79 = phi <4 x float> [ %120, %144 ], [ %68, %61 ]
  %80 = fneg <4 x float> %78
  %81 = insertelement <4 x float> poison, float %71, i64 0
  %82 = shufflevector <4 x float> %81, <4 x float> poison, <4 x i32> zeroinitializer
  %83 = fmul <4 x float> %82, %80
  %84 = select i1 %5, <4 x float> %83, <4 x float> %79
  %85 = fneg <4 x float> %76
  %86 = insertelement <4 x float> poison, float %71, i64 0
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> zeroinitializer
  %88 = fmul <4 x float> %87, %85
  %89 = select i1 %8, <4 x float> %88, <4 x float> %77
  %90 = fadd float %71, %42
  %91 = fcmp ult float %90, 1.000000e+00
  br i1 %91, label %115, label %92

92:                                               ; preds = %69, %111
  %93 = phi float [ %98, %111 ], [ %90, %69 ]
  %94 = phi ptr [ %112, %111 ], [ %73, %69 ]
  %95 = phi ptr [ %105, %111 ], [ %75, %69 ]
  %96 = phi <4 x float> [ %113, %111 ], [ %89, %69 ]
  %97 = phi <4 x float> [ %106, %111 ], [ %84, %69 ]
  %98 = fadd float %93, -1.000000e+00
  br i1 %5, label %99, label %104

99:                                               ; preds = %92
  %100 = load <4 x i8>, ptr %95, align 1, !tbaa !49
  %101 = uitofp <4 x i8> %100 to <4 x float>
  %102 = fadd <4 x float> %97, %101
  %103 = getelementptr inbounds i8, ptr %95, i64 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = phi ptr [ %103, %99 ], [ %95, %92 ]
  %106 = phi <4 x float> [ %102, %99 ], [ %97, %92 ]
  br i1 %8, label %107, label %111

107:                                              ; preds = %104
  %108 = load <4 x float>, ptr %94, align 4, !tbaa !50
  %109 = fadd <4 x float> %96, %108
  %110 = getelementptr inbounds float, ptr %94, i64 4
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi ptr [ %110, %107 ], [ %94, %104 ]
  %113 = phi <4 x float> [ %109, %107 ], [ %96, %104 ]
  %114 = fcmp ult float %98, 1.000000e+00
  br i1 %114, label %115, label %92, !llvm.loop !77

115:                                              ; preds = %111, %69
  %116 = phi ptr [ %75, %69 ], [ %105, %111 ]
  %117 = phi ptr [ %73, %69 ], [ %112, %111 ]
  %118 = phi float [ %90, %69 ], [ %98, %111 ]
  %119 = phi <4 x float> [ %89, %69 ], [ %113, %111 ]
  %120 = phi <4 x float> [ %84, %69 ], [ %106, %111 ]
  br i1 %5, label %121, label %132

121:                                              ; preds = %115
  %122 = load <4 x i8>, ptr %116, align 1, !tbaa !49
  %123 = uitofp <4 x i8> %122 to <4 x float>
  %124 = getelementptr inbounds i8, ptr %116, i64 4
  %125 = insertelement <4 x float> poison, float %118, i64 0
  %126 = shufflevector <4 x float> %125, <4 x float> poison, <4 x i32> zeroinitializer
  %127 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %126, <4 x float> %123, <4 x float> %120)
  %128 = fdiv <4 x float> %127, %58
  %129 = fadd <4 x float> %128, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %130 = fptoui <4 x float> %129 to <4 x i8>
  store <4 x i8> %130, ptr %74, align 1, !tbaa !49
  %131 = getelementptr inbounds i8, ptr %74, i64 4
  br label %132

132:                                              ; preds = %121, %115
  %133 = phi ptr [ %124, %121 ], [ %116, %115 ]
  %134 = phi ptr [ %131, %121 ], [ %74, %115 ]
  %135 = phi <4 x float> [ %123, %121 ], [ %78, %115 ]
  br i1 %8, label %136, label %144

136:                                              ; preds = %132
  %137 = load <4 x float>, ptr %117, align 4, !tbaa !50
  %138 = getelementptr inbounds float, ptr %117, i64 4
  %139 = insertelement <4 x float> poison, float %118, i64 0
  %140 = shufflevector <4 x float> %139, <4 x float> poison, <4 x i32> zeroinitializer
  %141 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %140, <4 x float> %137, <4 x float> %119)
  %142 = fdiv <4 x float> %141, %60
  store <4 x float> %142, ptr %72, align 4, !tbaa !50
  %143 = getelementptr inbounds float, ptr %72, i64 4
  br label %144

144:                                              ; preds = %136, %132
  %145 = phi ptr [ %138, %136 ], [ %117, %132 ]
  %146 = phi ptr [ %143, %136 ], [ %72, %132 ]
  %147 = phi <4 x float> [ %137, %136 ], [ %76, %132 ]
  %148 = fadd float %118, -1.000000e+00
  %149 = add nsw i32 %70, -1
  %150 = icmp sgt i32 %70, 1
  br i1 %150, label %69, label %151, !llvm.loop !78

151:                                              ; preds = %144, %61
  %152 = phi ptr [ %66, %61 ], [ %133, %144 ]
  %153 = phi ptr [ %65, %61 ], [ %134, %144 ]
  %154 = phi ptr [ %64, %61 ], [ %145, %144 ]
  %155 = phi ptr [ %63, %61 ], [ %146, %144 ]
  %156 = phi <4 x float> [ %67, %61 ], [ %119, %144 ]
  %157 = phi <4 x float> [ %68, %61 ], [ %120, %144 ]
  %158 = add nsw i32 %62, -1
  %159 = icmp sgt i32 %62, 1
  br i1 %159, label %61, label %160, !llvm.loop !79

160:                                              ; preds = %151, %50
  br i1 %5, label %161, label %165

161:                                              ; preds = %160
  tail call void @imb_freerectImBuf(ptr noundef %0) #8
  %162 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %163 = load i32, ptr %162, align 4, !tbaa !75
  %164 = or i32 %163, 1
  store i32 %164, ptr %162, align 4, !tbaa !75
  store ptr %22, ptr %3, align 8, !tbaa !34
  br label %165

165:                                              ; preds = %161, %160
  br i1 %8, label %166, label %170

166:                                              ; preds = %165
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #8
  %167 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %168 = load i32, ptr %167, align 4, !tbaa !75
  %169 = or i32 %168, 32
  store i32 %169, ptr %167, align 4, !tbaa !75
  store ptr %36, ptr %6, align 8, !tbaa !43
  br label %170

170:                                              ; preds = %166, %165
  store i32 %1, ptr %9, align 8, !tbaa !44
  br label %171

171:                                              ; preds = %31, %33, %14, %2, %170
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scaledowny(ptr noundef returned %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %12 = select i1 %5, i1 true, i1 %8
  br i1 %12, label %13, label %184

13:                                               ; preds = %2
  br i1 %5, label %14, label %23

14:                                               ; preds = %13
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %16 = mul nsw i32 %10, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.7) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %184, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %9, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ %22, %21 ], [ %10, %13 ]
  %25 = phi ptr [ %19, %21 ], [ null, %13 ]
  br i1 %8, label %26, label %39

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %28 = mul nsw i32 %24, %1
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 4
  %31 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull @.str.8) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %9, align 8, !tbaa !44
  br label %39

35:                                               ; preds = %26
  %36 = icmp eq ptr %25, null
  br i1 %36, label %184, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %38(ptr noundef nonnull %25) #8
  br label %184

39:                                               ; preds = %33, %23
  %40 = phi i32 [ %34, %33 ], [ %24, %23 ]
  %41 = phi ptr [ %31, %33 ], [ null, %23 ]
  %42 = load i32, ptr %11, align 4, !tbaa !45
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, -1.000000e-02
  %45 = sitofp i32 %1 to double
  %46 = fdiv double %44, %45
  %47 = fptrunc double %46 to float
  %48 = icmp sgt i32 %40, 0
  br i1 %48, label %49, label %173

49:                                               ; preds = %39
  %50 = shl i32 %40, 2
  %51 = icmp sgt i32 %1, 0
  %52 = zext i32 %50 to i64
  %53 = insertelement <4 x float> poison, float %47, i64 0
  %54 = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> zeroinitializer
  %55 = insertelement <4 x float> poison, float %47, i64 0
  %56 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> zeroinitializer
  br label %66

57:                                               ; preds = %166, %88
  %58 = phi ptr [ %81, %88 ], [ %155, %166 ]
  %59 = phi ptr [ %89, %88 ], [ %167, %166 ]
  %60 = phi ptr [ %90, %88 ], [ %168, %166 ]
  %61 = phi ptr [ %82, %88 ], [ %156, %166 ]
  %62 = phi <4 x float> [ %72, %88 ], [ %141, %166 ]
  %63 = phi <4 x float> [ %73, %88 ], [ %142, %166 ]
  %64 = trunc i64 %67 to i32
  %65 = icmp sgt i32 %64, 7
  br i1 %65, label %66, label %173, !llvm.loop !81

66:                                               ; preds = %49, %57
  %67 = phi i64 [ %52, %49 ], [ %74, %57 ]
  %68 = phi ptr [ null, %49 ], [ %61, %57 ]
  %69 = phi ptr [ null, %49 ], [ %60, %57 ]
  %70 = phi ptr [ null, %49 ], [ %59, %57 ]
  %71 = phi ptr [ null, %49 ], [ %58, %57 ]
  %72 = phi <4 x float> [ zeroinitializer, %49 ], [ %62, %57 ]
  %73 = phi <4 x float> [ zeroinitializer, %49 ], [ %63, %57 ]
  %74 = add nsw i64 %67, -4
  br i1 %5, label %75, label %80

75:                                               ; preds = %66
  %76 = load ptr, ptr %3, align 8, !tbaa !34
  %77 = and i64 %74, 4294967292
  %78 = getelementptr inbounds i8, ptr %76, i64 %77
  %79 = getelementptr inbounds i8, ptr %25, i64 %77
  br label %80

80:                                               ; preds = %75, %66
  %81 = phi ptr [ %79, %75 ], [ %71, %66 ]
  %82 = phi ptr [ %78, %75 ], [ %68, %66 ]
  br i1 %8, label %83, label %88

83:                                               ; preds = %80
  %84 = load ptr, ptr %6, align 8, !tbaa !43
  %85 = and i64 %74, 4294967292
  %86 = getelementptr inbounds float, ptr %84, i64 %85
  %87 = getelementptr inbounds float, ptr %41, i64 %85
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi ptr [ %86, %83 ], [ %70, %80 ]
  %90 = phi ptr [ %87, %83 ], [ %69, %80 ]
  br i1 %51, label %91, label %57

91:                                               ; preds = %88, %166
  %92 = phi i32 [ %171, %166 ], [ %1, %88 ]
  %93 = phi ptr [ %156, %166 ], [ %82, %88 ]
  %94 = phi float [ %170, %166 ], [ 0.000000e+00, %88 ]
  %95 = phi ptr [ %168, %166 ], [ %90, %88 ]
  %96 = phi ptr [ %167, %166 ], [ %89, %88 ]
  %97 = phi ptr [ %155, %166 ], [ %81, %88 ]
  %98 = phi <4 x float> [ %169, %166 ], [ zeroinitializer, %88 ]
  %99 = phi <4 x float> [ %141, %166 ], [ %72, %88 ]
  %100 = phi <4 x float> [ %157, %166 ], [ zeroinitializer, %88 ]
  %101 = phi <4 x float> [ %142, %166 ], [ %73, %88 ]
  %102 = fneg <4 x float> %100
  %103 = insertelement <4 x float> poison, float %94, i64 0
  %104 = shufflevector <4 x float> %103, <4 x float> poison, <4 x i32> zeroinitializer
  %105 = fmul <4 x float> %104, %102
  %106 = select i1 %5, <4 x float> %105, <4 x float> %101
  %107 = fneg <4 x float> %98
  %108 = insertelement <4 x float> poison, float %94, i64 0
  %109 = shufflevector <4 x float> %108, <4 x float> poison, <4 x i32> zeroinitializer
  %110 = fmul <4 x float> %109, %107
  %111 = select i1 %8, <4 x float> %110, <4 x float> %99
  %112 = fadd float %94, %47
  %113 = fcmp ult float %112, 1.000000e+00
  br i1 %113, label %137, label %114

114:                                              ; preds = %91, %133
  %115 = phi ptr [ %127, %133 ], [ %93, %91 ]
  %116 = phi float [ %120, %133 ], [ %112, %91 ]
  %117 = phi ptr [ %134, %133 ], [ %96, %91 ]
  %118 = phi <4 x float> [ %135, %133 ], [ %111, %91 ]
  %119 = phi <4 x float> [ %128, %133 ], [ %106, %91 ]
  %120 = fadd float %116, -1.000000e+00
  br i1 %5, label %121, label %126

121:                                              ; preds = %114
  %122 = load <4 x i8>, ptr %115, align 1, !tbaa !49
  %123 = uitofp <4 x i8> %122 to <4 x float>
  %124 = fadd <4 x float> %119, %123
  %125 = getelementptr inbounds i8, ptr %115, i64 %52
  br label %126

126:                                              ; preds = %121, %114
  %127 = phi ptr [ %125, %121 ], [ %115, %114 ]
  %128 = phi <4 x float> [ %124, %121 ], [ %119, %114 ]
  br i1 %8, label %129, label %133

129:                                              ; preds = %126
  %130 = load <4 x float>, ptr %117, align 4, !tbaa !50
  %131 = fadd <4 x float> %118, %130
  %132 = getelementptr inbounds float, ptr %117, i64 %52
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi ptr [ %132, %129 ], [ %117, %126 ]
  %135 = phi <4 x float> [ %131, %129 ], [ %118, %126 ]
  %136 = fcmp ult float %120, 1.000000e+00
  br i1 %136, label %137, label %114, !llvm.loop !82

137:                                              ; preds = %133, %91
  %138 = phi ptr [ %96, %91 ], [ %134, %133 ]
  %139 = phi float [ %112, %91 ], [ %120, %133 ]
  %140 = phi ptr [ %93, %91 ], [ %127, %133 ]
  %141 = phi <4 x float> [ %111, %91 ], [ %135, %133 ]
  %142 = phi <4 x float> [ %106, %91 ], [ %128, %133 ]
  br i1 %5, label %143, label %154

143:                                              ; preds = %137
  %144 = load <4 x i8>, ptr %140, align 1, !tbaa !49
  %145 = uitofp <4 x i8> %144 to <4 x float>
  %146 = getelementptr inbounds i8, ptr %140, i64 %52
  %147 = insertelement <4 x float> poison, float %139, i64 0
  %148 = shufflevector <4 x float> %147, <4 x float> poison, <4 x i32> zeroinitializer
  %149 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %148, <4 x float> %145, <4 x float> %142)
  %150 = fdiv <4 x float> %149, %54
  %151 = fadd <4 x float> %150, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %152 = fptoui <4 x float> %151 to <4 x i8>
  store <4 x i8> %152, ptr %97, align 1, !tbaa !49
  %153 = getelementptr inbounds i8, ptr %97, i64 %52
  br label %154

154:                                              ; preds = %143, %137
  %155 = phi ptr [ %153, %143 ], [ %97, %137 ]
  %156 = phi ptr [ %146, %143 ], [ %140, %137 ]
  %157 = phi <4 x float> [ %145, %143 ], [ %100, %137 ]
  br i1 %8, label %158, label %166

158:                                              ; preds = %154
  %159 = load <4 x float>, ptr %138, align 4, !tbaa !50
  %160 = getelementptr inbounds float, ptr %138, i64 %52
  %161 = insertelement <4 x float> poison, float %139, i64 0
  %162 = shufflevector <4 x float> %161, <4 x float> poison, <4 x i32> zeroinitializer
  %163 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %162, <4 x float> %159, <4 x float> %141)
  %164 = fdiv <4 x float> %163, %56
  store <4 x float> %164, ptr %95, align 4, !tbaa !50
  %165 = getelementptr inbounds float, ptr %95, i64 %52
  br label %166

166:                                              ; preds = %158, %154
  %167 = phi ptr [ %160, %158 ], [ %138, %154 ]
  %168 = phi ptr [ %165, %158 ], [ %95, %154 ]
  %169 = phi <4 x float> [ %159, %158 ], [ %98, %154 ]
  %170 = fadd float %139, -1.000000e+00
  %171 = add nsw i32 %92, -1
  %172 = icmp sgt i32 %92, 1
  br i1 %172, label %91, label %57, !llvm.loop !83

173:                                              ; preds = %57, %39
  br i1 %5, label %174, label %178

174:                                              ; preds = %173
  tail call void @imb_freerectImBuf(ptr noundef %0) #8
  %175 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %176 = load i32, ptr %175, align 4, !tbaa !75
  %177 = or i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !75
  store ptr %25, ptr %3, align 8, !tbaa !34
  br label %178

178:                                              ; preds = %174, %173
  br i1 %8, label %179, label %183

179:                                              ; preds = %178
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #8
  %180 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %181 = load i32, ptr %180, align 4, !tbaa !75
  %182 = or i32 %181, 32
  store i32 %182, ptr %180, align 4, !tbaa !75
  store ptr %41, ptr %6, align 8, !tbaa !43
  br label %183

183:                                              ; preds = %179, %178
  store i32 %1, ptr %11, align 4, !tbaa !45
  br label %184

184:                                              ; preds = %35, %37, %14, %2, %183
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scaleupx(ptr noundef returned %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %181, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  br label %26

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = mul nsw i32 %15, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %13(i64 noundef %18, ptr noundef nonnull @.str.9) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %181, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  br i1 %24, label %41, label %26

26:                                               ; preds = %10, %21
  %27 = phi ptr [ %11, %10 ], [ %25, %21 ]
  %28 = phi ptr [ null, %10 ], [ %19, %21 ]
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = mul nsw i32 %31, %1
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 4
  %35 = tail call ptr %29(i64 noundef %34, ptr noundef nonnull @.str.10) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = icmp eq ptr %28, null
  br i1 %38, label %181, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %40(ptr noundef nonnull %28) #8
  br label %181

41:                                               ; preds = %26, %21
  %42 = phi ptr [ %27, %26 ], [ %25, %21 ]
  %43 = phi ptr [ %28, %26 ], [ %19, %21 ]
  %44 = phi i1 [ false, %26 ], [ true, %21 ]
  %45 = phi ptr [ %35, %26 ], [ null, %21 ]
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !44
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, -1.001000e+00
  %50 = sitofp i32 %1 to double
  %51 = fadd double %50, -1.000000e+00
  %52 = fdiv double %49, %51
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !45
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %170

57:                                               ; preds = %41
  %58 = load ptr, ptr %42, align 8, !tbaa !43
  %59 = load ptr, ptr %3, align 8, !tbaa !34
  %60 = icmp sgt i32 %1, 0
  br label %61

61:                                               ; preds = %57, %157
  %62 = phi i32 [ %55, %57 ], [ %168, %157 ]
  %63 = phi ptr [ %45, %57 ], [ %161, %157 ]
  %64 = phi ptr [ %58, %57 ], [ %160, %157 ]
  %65 = phi ptr [ %43, %57 ], [ %159, %157 ]
  %66 = phi ptr [ %59, %57 ], [ %158, %157 ]
  %67 = phi <4 x float> [ zeroinitializer, %57 ], [ %162, %157 ]
  %68 = phi <4 x float> [ zeroinitializer, %57 ], [ %163, %157 ]
  %69 = phi <4 x float> [ zeroinitializer, %57 ], [ %164, %157 ]
  %70 = phi <4 x float> [ zeroinitializer, %57 ], [ %165, %157 ]
  %71 = phi <4 x float> [ zeroinitializer, %57 ], [ %166, %157 ]
  %72 = phi <4 x float> [ zeroinitializer, %57 ], [ %167, %157 ]
  br i1 %5, label %82, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds i8, ptr %66, i64 4
  %75 = load <4 x i8>, ptr %66, align 1, !tbaa !49
  %76 = uitofp <4 x i8> %75 to <4 x float>
  %77 = load <4 x i8>, ptr %74, align 1, !tbaa !49
  %78 = uitofp <4 x i8> %77 to <4 x float>
  %79 = fsub <4 x float> %78, %76
  %80 = fadd <4 x float> %76, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %81 = getelementptr inbounds i8, ptr %66, i64 8
  br label %82

82:                                               ; preds = %73, %61
  %83 = phi ptr [ %81, %73 ], [ %66, %61 ]
  %84 = phi <4 x float> [ %78, %73 ], [ %70, %61 ]
  %85 = phi <4 x float> [ %79, %73 ], [ %71, %61 ]
  %86 = phi <4 x float> [ %80, %73 ], [ %72, %61 ]
  br i1 %44, label %93, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds float, ptr %64, i64 4
  %89 = load <4 x float>, ptr %64, align 4, !tbaa !50
  %90 = load <4 x float>, ptr %88, align 4, !tbaa !50
  %91 = fsub <4 x float> %90, %89
  %92 = getelementptr inbounds float, ptr %64, i64 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi ptr [ %92, %87 ], [ %64, %82 ]
  %95 = phi <4 x float> [ %91, %87 ], [ %67, %82 ]
  %96 = phi <4 x float> [ %90, %87 ], [ %68, %82 ]
  %97 = phi <4 x float> [ %89, %87 ], [ %69, %82 ]
  br i1 %60, label %98, label %157

98:                                               ; preds = %93, %152
  %99 = phi i32 [ %155, %152 ], [ %1, %93 ]
  %100 = phi float [ %154, %152 ], [ 0.000000e+00, %93 ]
  %101 = phi ptr [ %153, %152 ], [ %63, %93 ]
  %102 = phi ptr [ %131, %152 ], [ %94, %93 ]
  %103 = phi ptr [ %146, %152 ], [ %65, %93 ]
  %104 = phi ptr [ %130, %152 ], [ %83, %93 ]
  %105 = phi <4 x float> [ %134, %152 ], [ %96, %93 ]
  %106 = phi <4 x float> [ %133, %152 ], [ %95, %93 ]
  %107 = phi <4 x float> [ %135, %152 ], [ %97, %93 ]
  %108 = phi <4 x float> [ %136, %152 ], [ %84, %93 ]
  %109 = phi <4 x float> [ %137, %152 ], [ %85, %93 ]
  %110 = phi <4 x float> [ %138, %152 ], [ %86, %93 ]
  %111 = fcmp ult float %100, 1.000000e+00
  br i1 %111, label %129, label %112

112:                                              ; preds = %98
  %113 = fadd float %100, -1.000000e+00
  br i1 %5, label %120, label %114

114:                                              ; preds = %112
  %115 = load <4 x i8>, ptr %104, align 1, !tbaa !49
  %116 = uitofp <4 x i8> %115 to <4 x float>
  %117 = fsub <4 x float> %116, %108
  %118 = fadd <4 x float> %108, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %119 = getelementptr inbounds i8, ptr %104, i64 4
  br label %120

120:                                              ; preds = %114, %112
  %121 = phi ptr [ %119, %114 ], [ %104, %112 ]
  %122 = phi <4 x float> [ %116, %114 ], [ %108, %112 ]
  %123 = phi <4 x float> [ %117, %114 ], [ %109, %112 ]
  %124 = phi <4 x float> [ %118, %114 ], [ %110, %112 ]
  br i1 %44, label %129, label %125

125:                                              ; preds = %120
  %126 = load <4 x float>, ptr %102, align 4, !tbaa !50
  %127 = fsub <4 x float> %126, %105
  %128 = getelementptr inbounds float, ptr %102, i64 4
  br label %129

129:                                              ; preds = %120, %125, %98
  %130 = phi ptr [ %121, %125 ], [ %121, %120 ], [ %104, %98 ]
  %131 = phi ptr [ %128, %125 ], [ %102, %120 ], [ %102, %98 ]
  %132 = phi float [ %113, %125 ], [ %113, %120 ], [ %100, %98 ]
  %133 = phi <4 x float> [ %127, %125 ], [ %106, %120 ], [ %106, %98 ]
  %134 = phi <4 x float> [ %126, %125 ], [ %105, %120 ], [ %105, %98 ]
  %135 = phi <4 x float> [ %105, %125 ], [ %107, %120 ], [ %107, %98 ]
  %136 = phi <4 x float> [ %122, %125 ], [ %122, %120 ], [ %108, %98 ]
  %137 = phi <4 x float> [ %123, %125 ], [ %123, %120 ], [ %109, %98 ]
  %138 = phi <4 x float> [ %124, %125 ], [ %124, %120 ], [ %110, %98 ]
  br i1 %5, label %145, label %139

139:                                              ; preds = %129
  %140 = insertelement <4 x float> poison, float %132, i64 0
  %141 = shufflevector <4 x float> %140, <4 x float> poison, <4 x i32> zeroinitializer
  %142 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %141, <4 x float> %137, <4 x float> %138)
  %143 = fptoui <4 x float> %142 to <4 x i8>
  store <4 x i8> %143, ptr %103, align 1, !tbaa !49
  %144 = getelementptr inbounds i8, ptr %103, i64 4
  br label %145

145:                                              ; preds = %139, %129
  %146 = phi ptr [ %144, %139 ], [ %103, %129 ]
  br i1 %44, label %152, label %147

147:                                              ; preds = %145
  %148 = insertelement <4 x float> poison, float %132, i64 0
  %149 = shufflevector <4 x float> %148, <4 x float> poison, <4 x i32> zeroinitializer
  %150 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %149, <4 x float> %133, <4 x float> %135)
  store <4 x float> %150, ptr %101, align 4, !tbaa !50
  %151 = getelementptr inbounds float, ptr %101, i64 4
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi ptr [ %151, %147 ], [ %101, %145 ]
  %154 = fadd float %132, %53
  %155 = add nsw i32 %99, -1
  %156 = icmp sgt i32 %99, 1
  br i1 %156, label %98, label %157, !llvm.loop !85

157:                                              ; preds = %152, %93
  %158 = phi ptr [ %83, %93 ], [ %130, %152 ]
  %159 = phi ptr [ %65, %93 ], [ %146, %152 ]
  %160 = phi ptr [ %94, %93 ], [ %131, %152 ]
  %161 = phi ptr [ %63, %93 ], [ %153, %152 ]
  %162 = phi <4 x float> [ %95, %93 ], [ %133, %152 ]
  %163 = phi <4 x float> [ %96, %93 ], [ %134, %152 ]
  %164 = phi <4 x float> [ %97, %93 ], [ %135, %152 ]
  %165 = phi <4 x float> [ %84, %93 ], [ %136, %152 ]
  %166 = phi <4 x float> [ %85, %93 ], [ %137, %152 ]
  %167 = phi <4 x float> [ %86, %93 ], [ %138, %152 ]
  %168 = add nsw i32 %62, -1
  %169 = icmp sgt i32 %62, 1
  br i1 %169, label %61, label %170, !llvm.loop !86

170:                                              ; preds = %157, %41
  br i1 %5, label %175, label %171

171:                                              ; preds = %170
  tail call void @imb_freerectImBuf(ptr noundef %0) #8
  %172 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %173 = load i32, ptr %172, align 4, !tbaa !75
  %174 = or i32 %173, 1
  store i32 %174, ptr %172, align 4, !tbaa !75
  store ptr %43, ptr %3, align 8, !tbaa !34
  br label %175

175:                                              ; preds = %171, %170
  br i1 %44, label %180, label %176

176:                                              ; preds = %175
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #8
  %177 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %178 = load i32, ptr %177, align 4, !tbaa !75
  %179 = or i32 %178, 32
  store i32 %179, ptr %177, align 4, !tbaa !75
  store ptr %45, ptr %42, align 8, !tbaa !43
  br label %180

180:                                              ; preds = %176, %175
  store i32 %1, ptr %46, align 8, !tbaa !44
  br label %181

181:                                              ; preds = %37, %39, %12, %6, %180
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scaleupy(ptr noundef returned %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %202, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  br label %26

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = mul nsw i32 %15, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %13(i64 noundef %18, ptr noundef nonnull @.str.11) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %202, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  br i1 %24, label %41, label %26

26:                                               ; preds = %10, %21
  %27 = phi ptr [ %11, %10 ], [ %25, %21 ]
  %28 = phi ptr [ null, %10 ], [ %19, %21 ]
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !44
  %32 = mul nsw i32 %31, %1
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 4
  %35 = tail call ptr %29(i64 noundef %34, ptr noundef nonnull @.str.12) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = icmp eq ptr %28, null
  br i1 %38, label %202, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %40(ptr noundef nonnull %28) #8
  br label %202

41:                                               ; preds = %26, %21
  %42 = phi ptr [ %27, %26 ], [ %25, %21 ]
  %43 = phi ptr [ %28, %26 ], [ %19, %21 ]
  %44 = phi i1 [ false, %26 ], [ true, %21 ]
  %45 = phi ptr [ %35, %26 ], [ null, %21 ]
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !45
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, -1.001000e+00
  %50 = sitofp i32 %1 to double
  %51 = fadd double %50, -1.000000e+00
  %52 = fdiv double %49, %51
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !44
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %191

57:                                               ; preds = %41
  %58 = load ptr, ptr %42, align 8, !tbaa !43
  %59 = load ptr, ptr %3, align 8, !tbaa !34
  %60 = shl nsw i32 %55, 2
  %61 = zext nneg i32 %60 to i64
  %62 = shl nsw i32 %55, 3
  %63 = zext nneg i32 %62 to i64
  %64 = icmp sgt i32 %1, 0
  %65 = zext nneg i32 %55 to i64
  br label %66

66:                                               ; preds = %57, %178
  %67 = phi i64 [ %65, %57 ], [ %189, %178 ]
  %68 = phi ptr [ %59, %57 ], [ %182, %178 ]
  %69 = phi ptr [ %45, %57 ], [ %181, %178 ]
  %70 = phi ptr [ %58, %57 ], [ %180, %178 ]
  %71 = phi ptr [ %43, %57 ], [ %179, %178 ]
  %72 = phi <4 x float> [ zeroinitializer, %57 ], [ %183, %178 ]
  %73 = phi <4 x float> [ zeroinitializer, %57 ], [ %184, %178 ]
  %74 = phi <4 x float> [ zeroinitializer, %57 ], [ %185, %178 ]
  %75 = phi <4 x float> [ zeroinitializer, %57 ], [ %186, %178 ]
  %76 = phi <4 x float> [ zeroinitializer, %57 ], [ %187, %178 ]
  %77 = phi <4 x float> [ zeroinitializer, %57 ], [ %188, %178 ]
  br i1 %5, label %94, label %78

78:                                               ; preds = %66
  %79 = load ptr, ptr %3, align 8, !tbaa !34
  %80 = trunc i64 %67 to i32
  %81 = shl i32 %80, 2
  %82 = add i32 %81, -4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %79, i64 %83
  %85 = getelementptr inbounds i8, ptr %43, i64 %83
  %86 = getelementptr inbounds i8, ptr %84, i64 %61
  %87 = load <4 x i8>, ptr %84, align 1, !tbaa !49
  %88 = uitofp <4 x i8> %87 to <4 x float>
  %89 = load <4 x i8>, ptr %86, align 1, !tbaa !49
  %90 = uitofp <4 x i8> %89 to <4 x float>
  %91 = fsub <4 x float> %90, %88
  %92 = fadd <4 x float> %88, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %93 = getelementptr inbounds i8, ptr %84, i64 %63
  br label %94

94:                                               ; preds = %78, %66
  %95 = phi ptr [ %85, %78 ], [ %71, %66 ]
  %96 = phi ptr [ %93, %78 ], [ %68, %66 ]
  %97 = phi <4 x float> [ %90, %78 ], [ %75, %66 ]
  %98 = phi <4 x float> [ %91, %78 ], [ %76, %66 ]
  %99 = phi <4 x float> [ %92, %78 ], [ %77, %66 ]
  br i1 %44, label %113, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %42, align 8, !tbaa !43
  %102 = trunc i64 %67 to i32
  %103 = shl i32 %102, 2
  %104 = add i32 %103, -4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, ptr %101, i64 %105
  %107 = getelementptr inbounds float, ptr %45, i64 %105
  %108 = getelementptr inbounds float, ptr %106, i64 %61
  %109 = load <4 x float>, ptr %106, align 4, !tbaa !50
  %110 = load <4 x float>, ptr %108, align 4, !tbaa !50
  %111 = fsub <4 x float> %110, %109
  %112 = getelementptr inbounds float, ptr %106, i64 %63
  br label %113

113:                                              ; preds = %100, %94
  %114 = phi ptr [ %112, %100 ], [ %70, %94 ]
  %115 = phi ptr [ %107, %100 ], [ %69, %94 ]
  %116 = phi <4 x float> [ %111, %100 ], [ %72, %94 ]
  %117 = phi <4 x float> [ %110, %100 ], [ %73, %94 ]
  %118 = phi <4 x float> [ %109, %100 ], [ %74, %94 ]
  br i1 %64, label %119, label %178

119:                                              ; preds = %113, %173
  %120 = phi i32 [ %176, %173 ], [ %1, %113 ]
  %121 = phi ptr [ %153, %173 ], [ %96, %113 ]
  %122 = phi float [ %175, %173 ], [ 0.000000e+00, %113 ]
  %123 = phi ptr [ %174, %173 ], [ %115, %113 ]
  %124 = phi ptr [ %151, %173 ], [ %114, %113 ]
  %125 = phi ptr [ %167, %173 ], [ %95, %113 ]
  %126 = phi <4 x float> [ %155, %173 ], [ %117, %113 ]
  %127 = phi <4 x float> [ %154, %173 ], [ %116, %113 ]
  %128 = phi <4 x float> [ %156, %173 ], [ %118, %113 ]
  %129 = phi <4 x float> [ %157, %173 ], [ %97, %113 ]
  %130 = phi <4 x float> [ %158, %173 ], [ %98, %113 ]
  %131 = phi <4 x float> [ %159, %173 ], [ %99, %113 ]
  %132 = fcmp ult float %122, 1.000000e+00
  br i1 %132, label %150, label %133

133:                                              ; preds = %119
  %134 = fadd float %122, -1.000000e+00
  br i1 %5, label %141, label %135

135:                                              ; preds = %133
  %136 = load <4 x i8>, ptr %121, align 1, !tbaa !49
  %137 = uitofp <4 x i8> %136 to <4 x float>
  %138 = fsub <4 x float> %137, %129
  %139 = fadd <4 x float> %129, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %140 = getelementptr inbounds i8, ptr %121, i64 %61
  br label %141

141:                                              ; preds = %135, %133
  %142 = phi ptr [ %140, %135 ], [ %121, %133 ]
  %143 = phi <4 x float> [ %137, %135 ], [ %129, %133 ]
  %144 = phi <4 x float> [ %138, %135 ], [ %130, %133 ]
  %145 = phi <4 x float> [ %139, %135 ], [ %131, %133 ]
  br i1 %44, label %150, label %146

146:                                              ; preds = %141
  %147 = load <4 x float>, ptr %124, align 4, !tbaa !50
  %148 = fsub <4 x float> %147, %126
  %149 = getelementptr inbounds float, ptr %124, i64 %61
  br label %150

150:                                              ; preds = %141, %146, %119
  %151 = phi ptr [ %149, %146 ], [ %124, %141 ], [ %124, %119 ]
  %152 = phi float [ %134, %146 ], [ %134, %141 ], [ %122, %119 ]
  %153 = phi ptr [ %142, %146 ], [ %142, %141 ], [ %121, %119 ]
  %154 = phi <4 x float> [ %148, %146 ], [ %127, %141 ], [ %127, %119 ]
  %155 = phi <4 x float> [ %147, %146 ], [ %126, %141 ], [ %126, %119 ]
  %156 = phi <4 x float> [ %126, %146 ], [ %128, %141 ], [ %128, %119 ]
  %157 = phi <4 x float> [ %143, %146 ], [ %143, %141 ], [ %129, %119 ]
  %158 = phi <4 x float> [ %144, %146 ], [ %144, %141 ], [ %130, %119 ]
  %159 = phi <4 x float> [ %145, %146 ], [ %145, %141 ], [ %131, %119 ]
  br i1 %5, label %166, label %160

160:                                              ; preds = %150
  %161 = insertelement <4 x float> poison, float %152, i64 0
  %162 = shufflevector <4 x float> %161, <4 x float> poison, <4 x i32> zeroinitializer
  %163 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %162, <4 x float> %158, <4 x float> %159)
  %164 = fptoui <4 x float> %163 to <4 x i8>
  store <4 x i8> %164, ptr %125, align 1, !tbaa !49
  %165 = getelementptr inbounds i8, ptr %125, i64 %61
  br label %166

166:                                              ; preds = %160, %150
  %167 = phi ptr [ %165, %160 ], [ %125, %150 ]
  br i1 %44, label %173, label %168

168:                                              ; preds = %166
  %169 = insertelement <4 x float> poison, float %152, i64 0
  %170 = shufflevector <4 x float> %169, <4 x float> poison, <4 x i32> zeroinitializer
  %171 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %170, <4 x float> %154, <4 x float> %156)
  store <4 x float> %171, ptr %123, align 4, !tbaa !50
  %172 = getelementptr inbounds float, ptr %123, i64 %61
  br label %173

173:                                              ; preds = %168, %166
  %174 = phi ptr [ %172, %168 ], [ %123, %166 ]
  %175 = fadd float %152, %53
  %176 = add nsw i32 %120, -1
  %177 = icmp sgt i32 %120, 1
  br i1 %177, label %119, label %178, !llvm.loop !88

178:                                              ; preds = %173, %113
  %179 = phi ptr [ %95, %113 ], [ %167, %173 ]
  %180 = phi ptr [ %114, %113 ], [ %151, %173 ]
  %181 = phi ptr [ %115, %113 ], [ %174, %173 ]
  %182 = phi ptr [ %96, %113 ], [ %153, %173 ]
  %183 = phi <4 x float> [ %116, %113 ], [ %154, %173 ]
  %184 = phi <4 x float> [ %117, %113 ], [ %155, %173 ]
  %185 = phi <4 x float> [ %118, %113 ], [ %156, %173 ]
  %186 = phi <4 x float> [ %97, %113 ], [ %157, %173 ]
  %187 = phi <4 x float> [ %98, %113 ], [ %158, %173 ]
  %188 = phi <4 x float> [ %99, %113 ], [ %159, %173 ]
  %189 = add nsw i64 %67, -1
  %190 = icmp sgt i64 %67, 1
  br i1 %190, label %66, label %191, !llvm.loop !89

191:                                              ; preds = %178, %41
  br i1 %5, label %196, label %192

192:                                              ; preds = %191
  tail call void @imb_freerectImBuf(ptr noundef %0) #8
  %193 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %194 = load i32, ptr %193, align 4, !tbaa !75
  %195 = or i32 %194, 1
  store i32 %195, ptr %193, align 4, !tbaa !75
  store ptr %43, ptr %3, align 8, !tbaa !34
  br label %196

196:                                              ; preds = %192, %191
  br i1 %44, label %201, label %197

197:                                              ; preds = %196
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #8
  %198 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %199 = load i32, ptr %198, align 4, !tbaa !75
  %200 = or i32 %199, 32
  store i32 %200, ptr %198, align 4, !tbaa !75
  store ptr %45, ptr %42, align 8, !tbaa !43
  br label %201

201:                                              ; preds = %197, %196
  store i32 %1, ptr %46, align 4, !tbaa !45
  br label %202

202:                                              ; preds = %37, %39, %12, %6, %201
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_scalefastImBuf(ptr noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %134, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  %12 = and i1 %8, %11
  br i1 %12, label %134, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %134, label %21

21:                                               ; preds = %17, %13
  br i1 %8, label %29, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %24 = mul i32 %2, %1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @.str) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %134, label %29

29:                                               ; preds = %22, %21
  %30 = phi ptr [ null, %21 ], [ %27, %22 ]
  br i1 %11, label %42, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %33 = mul i32 %2, %1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 4
  %36 = tail call ptr %32(i64 noundef %35, ptr noundef nonnull @.str.1) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = icmp eq ptr %30, null
  br i1 %39, label %134, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %41(ptr noundef nonnull %30) #8
  br label %134

42:                                               ; preds = %31, %29
  %43 = phi ptr [ null, %29 ], [ %36, %31 ]
  %44 = load i32, ptr %14, align 8, !tbaa !44
  %45 = sitofp i32 %44 to double
  %46 = fadd double %45, -1.000000e+00
  %47 = fmul double %46, 6.553600e+04
  %48 = uitofp i32 %1 to double
  %49 = fadd double %48, -1.000000e+00
  %50 = fdiv double %47, %49
  %51 = fadd double %50, 5.000000e-01
  %52 = fptosi double %51 to i32
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !45
  %55 = sitofp i32 %54 to double
  %56 = fadd double %55, -1.000000e+00
  %57 = fmul double %56, 6.553600e+04
  %58 = uitofp i32 %2 to double
  %59 = fadd double %58, -1.000000e+00
  %60 = fdiv double %57, %59
  %61 = fadd double %60, 5.000000e-01
  %62 = fptosi double %61 to i32
  %63 = icmp sgt i32 %2, 0
  br i1 %63, label %64, label %123

64:                                               ; preds = %42
  %65 = icmp slt i32 %1, 1
  %66 = or i1 %8, %65
  %67 = or i1 %11, %65
  br label %68

68:                                               ; preds = %64, %119
  %69 = phi ptr [ null, %64 ], [ %83, %119 ]
  %70 = phi i32 [ 32768, %64 ], [ %93, %119 ]
  %71 = phi i32 [ %2, %64 ], [ %121, %119 ]
  %72 = phi ptr [ %43, %64 ], [ %120, %119 ]
  %73 = phi ptr [ null, %64 ], [ %92, %119 ]
  %74 = phi ptr [ %30, %64 ], [ %107, %119 ]
  br i1 %8, label %82, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %6, align 8, !tbaa !34
  %77 = ashr i32 %70, 16
  %78 = load i32, ptr %14, align 8, !tbaa !44
  %79 = mul nsw i32 %78, %77
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %76, i64 %80
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi ptr [ %81, %75 ], [ %69, %68 ]
  br i1 %11, label %91, label %84

84:                                               ; preds = %82
  %85 = load ptr, ptr %9, align 8, !tbaa !43
  %86 = ashr i32 %70, 16
  %87 = load i32, ptr %14, align 8, !tbaa !44
  %88 = mul nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.imbufRGBA, ptr %85, i64 %89
  br label %91

91:                                               ; preds = %84, %82
  %92 = phi ptr [ %90, %84 ], [ %73, %82 ]
  %93 = add nsw i32 %70, %62
  br i1 %66, label %106, label %94

94:                                               ; preds = %91, %94
  %95 = phi i32 [ %103, %94 ], [ 32768, %91 ]
  %96 = phi i32 [ %104, %94 ], [ %1, %91 ]
  %97 = phi ptr [ %102, %94 ], [ %74, %91 ]
  %98 = ashr i32 %95, 16
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %83, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !54
  %102 = getelementptr inbounds i32, ptr %97, i64 1
  store i32 %101, ptr %97, align 4, !tbaa !54
  %103 = add nsw i32 %95, %52
  %104 = add nsw i32 %96, -1
  %105 = icmp ugt i32 %96, 1
  br i1 %105, label %94, label %106, !llvm.loop !90

106:                                              ; preds = %94, %91
  %107 = phi ptr [ %74, %91 ], [ %102, %94 ]
  br i1 %67, label %119, label %108

108:                                              ; preds = %106, %108
  %109 = phi i32 [ %116, %108 ], [ 32768, %106 ]
  %110 = phi i32 [ %117, %108 ], [ %1, %106 ]
  %111 = phi ptr [ %112, %108 ], [ %72, %106 ]
  %112 = getelementptr inbounds %struct.imbufRGBA, ptr %111, i64 1
  %113 = ashr i32 %109, 16
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.imbufRGBA, ptr %92, i64 %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %111, ptr noundef nonnull align 4 dereferenceable(16) %115, i64 16, i1 false), !tbaa.struct !91
  %116 = add nsw i32 %109, %52
  %117 = add nsw i32 %110, -1
  %118 = icmp ugt i32 %110, 1
  br i1 %118, label %108, label %119, !llvm.loop !92

119:                                              ; preds = %108, %106
  %120 = phi ptr [ %72, %106 ], [ %112, %108 ]
  %121 = add nsw i32 %71, -1
  %122 = icmp sgt i32 %71, 1
  br i1 %122, label %68, label %123, !llvm.loop !93

123:                                              ; preds = %119, %42
  br i1 %8, label %128, label %124

124:                                              ; preds = %123
  tail call void @imb_freerectImBuf(ptr noundef nonnull %0) #8
  %125 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %126 = load i32, ptr %125, align 4, !tbaa !75
  %127 = or i32 %126, 1
  store i32 %127, ptr %125, align 4, !tbaa !75
  store ptr %30, ptr %6, align 8, !tbaa !34
  br label %128

128:                                              ; preds = %124, %123
  br i1 %11, label %133, label %129

129:                                              ; preds = %128
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %0) #8
  %130 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %131 = load i32, ptr %130, align 4, !tbaa !75
  %132 = or i32 %131, 32
  store i32 %132, ptr %130, align 4, !tbaa !75
  store ptr %43, ptr %9, align 8, !tbaa !43
  br label %133

133:                                              ; preds = %129, %128
  tail call fastcc void @scalefast_Z_ImBuf(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #9
  store i32 %1, ptr %14, align 8, !tbaa !44
  store i32 %2, ptr %53, align 4, !tbaa !45
  br label %134

134:                                              ; preds = %38, %40, %22, %17, %5, %3, %133
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_scaleImBuf_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ScaleTreadInitData, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !97
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %13 = shl i32 %1, 2
  %14 = mul i32 %13, %2
  %15 = zext i32 %14 to i64
  %16 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull @.str.2) #8
  %17 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !98
  br label %18

18:                                               ; preds = %11, %3
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !99
  %26 = mul i32 %2, %1
  %27 = mul i32 %26, %25
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = tail call ptr %23(i64 noundef %29, ptr noundef nonnull @.str.3) #8
  %31 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !100
  br label %32

32:                                               ; preds = %22, %18
  call void @IMB_processor_apply_threaded(i32 noundef %2, i32 noundef 40, ptr noundef nonnull %4, ptr noundef nonnull @scale_thread_init, ptr noundef nonnull @do_scale_thread) #8
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  store i32 %1, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  store i32 %2, ptr %34, align 4, !tbaa !45
  %35 = load ptr, ptr %8, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  call void @imb_freerectImBuf(ptr noundef nonnull %0) #8
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !75
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !75
  %41 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  store ptr %42, ptr %8, align 8, !tbaa !34
  br label %43

43:                                               ; preds = %37, %32
  %44 = load ptr, ptr %19, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  call void @imb_freerectfloatImBuf(ptr noundef nonnull %0) #8
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !75
  %49 = or i32 %48, 32
  store i32 %49, ptr %47, align 4, !tbaa !75
  %50 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !100
  store ptr %51, ptr %19, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @scale_thread_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #4 !PGOFuncName !101 {
  %5 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %5, ptr %0, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 1
  %8 = load <2 x i32>, ptr %6, align 8, !tbaa !54
  store <2 x i32> %8, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 4
  store i32 %2, ptr %10, align 4, !tbaa !105
  %11 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 5
  %13 = load <2 x ptr>, ptr %11, align 8, !tbaa !72
  store <2 x ptr> %13, ptr %12, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @do_scale_thread(ptr nocapture noundef readonly %0) #0 !PGOFuncName !106 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = uitofp i32 %7 to float
  %9 = fdiv float %5, %8
  %10 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !108
  %15 = uitofp i32 %14 to float
  %16 = fdiv float %12, %15
  %17 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %24 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %26 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  br label %27

27:                                               ; preds = %20, %70
  %28 = phi i32 [ %18, %20 ], [ %71, %70 ]
  %29 = phi i32 [ %7, %20 ], [ %72, %70 ]
  %30 = phi i32 [ 0, %20 ], [ %73, %70 ]
  %31 = load i32, ptr %21, align 8, !tbaa !104
  %32 = add nsw i32 %31, %30
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %27
  %35 = sitofp i32 %32 to float
  %36 = fmul float %16, %35
  br label %37

37:                                               ; preds = %34, %64
  %38 = phi i32 [ %29, %34 ], [ %66, %64 ]
  %39 = phi i32 [ 0, %34 ], [ %65, %64 ]
  %40 = sitofp i32 %39 to float
  %41 = fmul float %9, %40
  %42 = mul i32 %38, %32
  %43 = add i32 %42, %39
  %44 = load ptr, ptr %22, align 8, !tbaa !109
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = shl nsw i32 %43, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %44, i64 %48
  %50 = load ptr, ptr %23, align 8, !tbaa !34
  %51 = load i32, ptr %3, align 8, !tbaa !44
  %52 = load i32, ptr %10, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_char(ptr noundef %50, ptr noundef nonnull %49, i32 noundef %51, i32 noundef %52, i32 noundef 4, float noundef %41, float noundef %36) #8
  br label %53

53:                                               ; preds = %46, %37
  %54 = load ptr, ptr %24, align 8, !tbaa !110
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %25, align 4, !tbaa !99
  %58 = mul nsw i32 %57, %43
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %54, i64 %59
  %61 = load ptr, ptr %26, align 8, !tbaa !43
  %62 = load i32, ptr %3, align 8, !tbaa !44
  %63 = load i32, ptr %10, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_fl(ptr noundef %61, ptr noundef nonnull %60, i32 noundef %62, i32 noundef %63, i32 noundef %57, float noundef %41, float noundef %36) #8
  br label %64

64:                                               ; preds = %56, %53
  %65 = add nuw nsw i32 %39, 1
  %66 = load i32, ptr %6, align 8, !tbaa !107
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %37, label %68, !llvm.loop !111

68:                                               ; preds = %64
  %69 = load i32, ptr %17, align 4, !tbaa !105
  br label %70

70:                                               ; preds = %68, %27
  %71 = phi i32 [ %69, %68 ], [ %28, %27 ]
  %72 = phi i32 [ %66, %68 ], [ 0, %27 ]
  %73 = add nuw nsw i32 %30, 1
  %74 = icmp slt i32 %73, %71
  br i1 %74, label %27, label %75, !llvm.loop !112

75:                                               ; preds = %70, %1
  ret ptr null
}

; Function Attrs: optsize
declare void @IMB_freezbufImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bilinear_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bilinear_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !36, i64 48}
!44 = !{!35, !39, i64 16}
!45 = !{!35, !39, i64 20}
!46 = !{!35, !37, i64 24}
!47 = !{!35, !39, i64 32}
!48 = !{!"scaling.c:imb_half_x_no_alloc"}
!49 = !{!37, !37, i64 0}
!50 = !{!40, !40, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !52}
!56 = !{!"scaling.c:imb_half_y_no_alloc"}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, !52}
!61 = distinct !{!61, !52}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !37, i64 0}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52}
!68 = !{!"scaling.c:straight_uchar_to_premul_ushort"}
!69 = !{!"scaling.c:premul_ushort_to_straight_uchar"}
!70 = !{!"scaling.c:scalefast_Z_ImBuf"}
!71 = !{!35, !36, i64 96}
!72 = !{!36, !36, i64 0}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = !{!35, !39, i64 36}
!76 = !{!"scaling.c:scaledownx"}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !52}
!80 = !{!"scaling.c:scaledowny"}
!81 = distinct !{!81, !52}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !52}
!84 = !{!"scaling.c:scaleupx"}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = !{!"scaling.c:scaleupy"}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50, i64 12, i64 4, !50}
!92 = distinct !{!92, !52}
!93 = distinct !{!93, !52}
!94 = !{!95, !36, i64 0}
!95 = !{!"ScaleTreadInitData", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 24}
!96 = !{!95, !39, i64 8}
!97 = !{!95, !39, i64 12}
!98 = !{!95, !36, i64 16}
!99 = !{!35, !39, i64 28}
!100 = !{!95, !36, i64 24}
!101 = !{!"scaling.c:scale_thread_init"}
!102 = !{!103, !36, i64 0}
!103 = !{!"ScaleThreadData", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32}
!104 = !{!103, !39, i64 16}
!105 = !{!103, !39, i64 20}
!106 = !{!"scaling.c:do_scale_thread"}
!107 = !{!103, !39, i64 8}
!108 = !{!103, !39, i64 12}
!109 = !{!103, !36, i64 24}
!110 = !{!103, !36, i64 32}
!111 = distinct !{!111, !52}
!112 = distinct !{!112, !52}

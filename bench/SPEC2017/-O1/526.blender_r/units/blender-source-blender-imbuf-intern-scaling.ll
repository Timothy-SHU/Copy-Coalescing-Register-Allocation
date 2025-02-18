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

; Function Attrs: nounwind uwtable
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
  %16 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #9
  br label %28

17:                                               ; preds = %11
  %18 = lshr i32 %13, 1
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @IMB_allocImBuf(i32 noundef %18, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call fastcc void @imb_half_x_no_alloc(ptr noundef nonnull %25, ptr noundef nonnull %0)
  br label %28

28:                                               ; preds = %17, %7, %1, %27, %15
  %29 = phi ptr [ %16, %15 ], [ %25, %27 ], [ null, %1 ], [ null, %7 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @imb_half_x_no_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
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
  br i1 %17, label %18, label %137

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  br label %26

26:                                               ; preds = %18, %133
  %27 = phi ptr [ %4, %18 ], [ %127, %133 ]
  %28 = phi ptr [ %20, %18 ], [ %120, %133 ]
  %29 = phi ptr [ %7, %18 ], [ %134, %133 ]
  %30 = phi ptr [ %22, %18 ], [ %119, %133 ]
  %31 = phi i32 [ %16, %18 ], [ %135, %133 ]
  %32 = load i32, ptr %23, align 8, !tbaa !44
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %26, %113
  %35 = phi ptr [ %83, %113 ], [ %27, %26 ]
  %36 = phi ptr [ %115, %113 ], [ %28, %26 ]
  %37 = phi ptr [ %114, %113 ], [ %29, %26 ]
  %38 = phi ptr [ %82, %113 ], [ %30, %26 ]
  %39 = phi i32 [ %116, %113 ], [ %32, %26 ]
  br i1 %5, label %81, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %35, i64 1
  %42 = load i8, ptr %35, align 1, !tbaa !48
  %43 = getelementptr inbounds i8, ptr %35, i64 2
  %44 = load i8, ptr %41, align 1, !tbaa !48
  %45 = getelementptr inbounds i8, ptr %35, i64 3
  %46 = load i8, ptr %43, align 1, !tbaa !48
  %47 = getelementptr inbounds i8, ptr %35, i64 4
  %48 = load i8, ptr %45, align 1, !tbaa !48
  %49 = getelementptr inbounds i8, ptr %35, i64 5
  %50 = load i8, ptr %47, align 1, !tbaa !48
  %51 = zext i8 %50 to i16
  %52 = zext i8 %42 to i16
  %53 = add nuw nsw i16 %51, %52
  %54 = getelementptr inbounds i8, ptr %35, i64 6
  %55 = load i8, ptr %49, align 1, !tbaa !48
  %56 = zext i8 %55 to i16
  %57 = zext i8 %44 to i16
  %58 = add nuw nsw i16 %56, %57
  %59 = getelementptr inbounds i8, ptr %35, i64 7
  %60 = load i8, ptr %54, align 1, !tbaa !48
  %61 = zext i8 %60 to i16
  %62 = zext i8 %46 to i16
  %63 = add nuw nsw i16 %61, %62
  %64 = getelementptr inbounds i8, ptr %35, i64 8
  %65 = load i8, ptr %59, align 1, !tbaa !48
  %66 = zext i8 %65 to i16
  %67 = zext i8 %48 to i16
  %68 = add nuw nsw i16 %66, %67
  %69 = lshr i16 %53, 1
  %70 = trunc i16 %69 to i8
  %71 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %70, ptr %38, align 1, !tbaa !48
  %72 = lshr i16 %58, 1
  %73 = trunc i16 %72 to i8
  %74 = getelementptr inbounds i8, ptr %38, i64 2
  store i8 %73, ptr %71, align 1, !tbaa !48
  %75 = lshr i16 %63, 1
  %76 = trunc i16 %75 to i8
  %77 = getelementptr inbounds i8, ptr %38, i64 3
  store i8 %76, ptr %74, align 1, !tbaa !48
  %78 = lshr i16 %68, 1
  %79 = trunc i16 %78 to i8
  %80 = getelementptr inbounds i8, ptr %38, i64 4
  store i8 %79, ptr %77, align 1, !tbaa !48
  br label %81

81:                                               ; preds = %40, %34
  %82 = phi ptr [ %80, %40 ], [ %38, %34 ]
  %83 = phi ptr [ %64, %40 ], [ %35, %34 ]
  br i1 %14, label %113, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds float, ptr %37, i64 1
  %86 = load float, ptr %37, align 4, !tbaa !49
  %87 = getelementptr inbounds float, ptr %37, i64 2
  %88 = load float, ptr %85, align 4, !tbaa !49
  %89 = getelementptr inbounds float, ptr %37, i64 3
  %90 = load float, ptr %87, align 4, !tbaa !49
  %91 = getelementptr inbounds float, ptr %37, i64 4
  %92 = load float, ptr %89, align 4, !tbaa !49
  %93 = getelementptr inbounds float, ptr %37, i64 5
  %94 = load float, ptr %91, align 4, !tbaa !49
  %95 = fadd float %86, %94
  %96 = getelementptr inbounds float, ptr %37, i64 6
  %97 = load float, ptr %93, align 4, !tbaa !49
  %98 = fadd float %88, %97
  %99 = getelementptr inbounds float, ptr %37, i64 7
  %100 = load float, ptr %96, align 4, !tbaa !49
  %101 = fadd float %90, %100
  %102 = getelementptr inbounds float, ptr %37, i64 8
  %103 = load float, ptr %99, align 4, !tbaa !49
  %104 = fadd float %92, %103
  %105 = fmul float %95, 5.000000e-01
  %106 = getelementptr inbounds float, ptr %36, i64 1
  store float %105, ptr %36, align 4, !tbaa !49
  %107 = fmul float %98, 5.000000e-01
  %108 = getelementptr inbounds float, ptr %36, i64 2
  store float %107, ptr %106, align 4, !tbaa !49
  %109 = fmul float %101, 5.000000e-01
  %110 = getelementptr inbounds float, ptr %36, i64 3
  store float %109, ptr %108, align 4, !tbaa !49
  %111 = fmul float %104, 5.000000e-01
  %112 = getelementptr inbounds float, ptr %36, i64 4
  store float %111, ptr %110, align 4, !tbaa !49
  br label %113

113:                                              ; preds = %81, %84
  %114 = phi ptr [ %102, %84 ], [ %37, %81 ]
  %115 = phi ptr [ %112, %84 ], [ %36, %81 ]
  %116 = add nsw i32 %39, -1
  %117 = icmp sgt i32 %39, 1
  br i1 %117, label %34, label %118, !llvm.loop !50

118:                                              ; preds = %113, %26
  %119 = phi ptr [ %30, %26 ], [ %82, %113 ]
  %120 = phi ptr [ %28, %26 ], [ %115, %113 ]
  br i1 %5, label %126, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %24, align 8, !tbaa !44
  %123 = shl i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %27, i64 %124
  br label %126

126:                                              ; preds = %121, %118
  %127 = phi ptr [ %125, %121 ], [ %27, %118 ]
  br i1 %14, label %133, label %128

128:                                              ; preds = %126
  %129 = load i32, ptr %25, align 8, !tbaa !44
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, ptr %29, i64 %131
  br label %133

133:                                              ; preds = %126, %128
  %134 = phi ptr [ %132, %128 ], [ %29, %126 ]
  %135 = add nsw i32 %31, -1
  %136 = icmp sgt i32 %31, 1
  br i1 %136, label %26, label %137, !llvm.loop !53

137:                                              ; preds = %133, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_double_fast_x(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = shl nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %17, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %23) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %74, label %26

26:                                               ; preds = %11
  %27 = load i32, ptr %18, align 4, !tbaa !45
  %28 = load i32, ptr %15, align 8, !tbaa !44
  %29 = mul nsw i32 %28, %27
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = load ptr, ptr %12, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = load ptr, ptr %4, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %31, %69
  %39 = phi ptr [ %71, %69 ], [ %33, %31 ]
  %40 = phi ptr [ %70, %69 ], [ %34, %31 ]
  %41 = phi ptr [ %51, %69 ], [ %37, %31 ]
  %42 = phi ptr [ %50, %69 ], [ %36, %31 ]
  %43 = phi i32 [ %72, %69 ], [ %29, %31 ]
  br i1 %6, label %49, label %44

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
  br i1 %14, label %69, label %52

52:                                               ; preds = %49
  %53 = load float, ptr %40, align 4, !tbaa !49
  %54 = getelementptr inbounds float, ptr %39, i64 4
  store float %53, ptr %54, align 4, !tbaa !49
  store float %53, ptr %39, align 4, !tbaa !49
  %55 = getelementptr inbounds float, ptr %40, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = getelementptr inbounds float, ptr %39, i64 5
  store float %56, ptr %57, align 4, !tbaa !49
  %58 = getelementptr inbounds float, ptr %39, i64 1
  store float %56, ptr %58, align 4, !tbaa !49
  %59 = getelementptr inbounds float, ptr %40, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = getelementptr inbounds float, ptr %39, i64 6
  store float %60, ptr %61, align 4, !tbaa !49
  %62 = getelementptr inbounds float, ptr %39, i64 2
  store float %60, ptr %62, align 4, !tbaa !49
  %63 = getelementptr inbounds float, ptr %40, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !49
  %65 = getelementptr inbounds float, ptr %39, i64 7
  store float %64, ptr %65, align 4, !tbaa !49
  %66 = getelementptr inbounds float, ptr %39, i64 3
  store float %64, ptr %66, align 4, !tbaa !49
  %67 = getelementptr inbounds float, ptr %39, i64 8
  %68 = getelementptr inbounds float, ptr %40, i64 4
  br label %69

69:                                               ; preds = %49, %52
  %70 = phi ptr [ %68, %52 ], [ %40, %49 ]
  %71 = phi ptr [ %67, %52 ], [ %39, %49 ]
  %72 = add nsw i32 %43, -1
  %73 = icmp sgt i32 %43, 1
  br i1 %73, label %38, label %74, !llvm.loop !55

74:                                               ; preds = %69, %26, %11, %7, %1
  %75 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %11 ], [ %24, %26 ], [ %24, %69 ]
  ret ptr %75
}

; Function Attrs: nounwind uwtable
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
  %12 = tail call ptr @IMB_double_fast_x(ptr noundef nonnull %0)
  tail call void @imb_filterx(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %7, %1, %11
  %14 = phi ptr [ %12, %11 ], [ null, %1 ], [ null, %7 ]
  ret ptr %14
}

declare void @imb_filterx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %16 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #9
  br label %28

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = lshr i32 %13, 1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @IMB_allocImBuf(i32 noundef %19, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call fastcc void @imb_half_y_no_alloc(ptr noundef nonnull %25, ptr noundef nonnull %0)
  br label %28

28:                                               ; preds = %17, %7, %1, %27, %15
  %29 = phi ptr [ %16, %15 ], [ %25, %27 ], [ null, %1 ], [ null, %7 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @imb_half_y_no_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
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
  br i1 %17, label %18, label %167

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  br label %28

28:                                               ; preds = %18, %163
  %29 = phi ptr [ %20, %18 ], [ %150, %163 ]
  %30 = phi ptr [ %7, %18 ], [ %164, %163 ]
  %31 = phi ptr [ null, %18 ], [ %149, %163 ]
  %32 = phi ptr [ null, %18 ], [ %148, %163 ]
  %33 = phi ptr [ null, %18 ], [ %147, %163 ]
  %34 = phi ptr [ null, %18 ], [ %146, %163 ]
  %35 = phi ptr [ %4, %18 ], [ %157, %163 ]
  %36 = phi ptr [ %22, %18 ], [ %145, %163 ]
  %37 = phi i32 [ %16, %18 ], [ %165, %163 ]
  br i1 %5, label %43, label %38

38:                                               ; preds = %28
  %39 = load i32, ptr %23, align 8, !tbaa !44
  %40 = shl i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %35, i64 %41
  br label %43

43:                                               ; preds = %38, %28
  %44 = phi ptr [ %42, %38 ], [ %34, %28 ]
  %45 = phi ptr [ %35, %38 ], [ %33, %28 ]
  br i1 %14, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, ptr %24, align 8, !tbaa !44
  %48 = shl i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, ptr %30, i64 %49
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi ptr [ %30, %46 ], [ %32, %43 ]
  %53 = phi ptr [ %50, %46 ], [ %31, %43 ]
  %54 = load i32, ptr %25, align 8, !tbaa !44
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %144

56:                                               ; preds = %51, %138
  %57 = phi ptr [ %141, %138 ], [ %29, %51 ]
  %58 = phi ptr [ %140, %138 ], [ %53, %51 ]
  %59 = phi ptr [ %139, %138 ], [ %52, %51 ]
  %60 = phi ptr [ %108, %138 ], [ %45, %51 ]
  %61 = phi ptr [ %107, %138 ], [ %44, %51 ]
  %62 = phi ptr [ %106, %138 ], [ %36, %51 ]
  %63 = phi i32 [ %142, %138 ], [ %54, %51 ]
  br i1 %5, label %105, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds i8, ptr %60, i64 1
  %66 = load i8, ptr %60, align 1, !tbaa !48
  %67 = getelementptr inbounds i8, ptr %60, i64 2
  %68 = load i8, ptr %65, align 1, !tbaa !48
  %69 = getelementptr inbounds i8, ptr %60, i64 3
  %70 = load i8, ptr %67, align 1, !tbaa !48
  %71 = getelementptr inbounds i8, ptr %60, i64 4
  %72 = load i8, ptr %69, align 1, !tbaa !48
  %73 = getelementptr inbounds i8, ptr %61, i64 1
  %74 = load i8, ptr %61, align 1, !tbaa !48
  %75 = zext i8 %74 to i16
  %76 = zext i8 %66 to i16
  %77 = add nuw nsw i16 %75, %76
  %78 = getelementptr inbounds i8, ptr %61, i64 2
  %79 = load i8, ptr %73, align 1, !tbaa !48
  %80 = zext i8 %79 to i16
  %81 = zext i8 %68 to i16
  %82 = add nuw nsw i16 %80, %81
  %83 = getelementptr inbounds i8, ptr %61, i64 3
  %84 = load i8, ptr %78, align 1, !tbaa !48
  %85 = zext i8 %84 to i16
  %86 = zext i8 %70 to i16
  %87 = add nuw nsw i16 %85, %86
  %88 = getelementptr inbounds i8, ptr %61, i64 4
  %89 = load i8, ptr %83, align 1, !tbaa !48
  %90 = zext i8 %89 to i16
  %91 = zext i8 %72 to i16
  %92 = add nuw nsw i16 %90, %91
  %93 = lshr i16 %77, 1
  %94 = trunc i16 %93 to i8
  %95 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %94, ptr %62, align 1, !tbaa !48
  %96 = lshr i16 %82, 1
  %97 = trunc i16 %96 to i8
  %98 = getelementptr inbounds i8, ptr %62, i64 2
  store i8 %97, ptr %95, align 1, !tbaa !48
  %99 = lshr i16 %87, 1
  %100 = trunc i16 %99 to i8
  %101 = getelementptr inbounds i8, ptr %62, i64 3
  store i8 %100, ptr %98, align 1, !tbaa !48
  %102 = lshr i16 %92, 1
  %103 = trunc i16 %102 to i8
  %104 = getelementptr inbounds i8, ptr %62, i64 4
  store i8 %103, ptr %101, align 1, !tbaa !48
  br label %105

105:                                              ; preds = %64, %56
  %106 = phi ptr [ %104, %64 ], [ %62, %56 ]
  %107 = phi ptr [ %88, %64 ], [ %61, %56 ]
  %108 = phi ptr [ %71, %64 ], [ %60, %56 ]
  br i1 %14, label %109, label %138

109:                                              ; preds = %105
  %110 = getelementptr inbounds float, ptr %59, i64 1
  %111 = load float, ptr %59, align 4, !tbaa !49
  %112 = getelementptr inbounds float, ptr %59, i64 2
  %113 = load float, ptr %110, align 4, !tbaa !49
  %114 = getelementptr inbounds float, ptr %59, i64 3
  %115 = load float, ptr %112, align 4, !tbaa !49
  %116 = getelementptr inbounds float, ptr %59, i64 4
  %117 = load float, ptr %114, align 4, !tbaa !49
  %118 = getelementptr inbounds float, ptr %58, i64 1
  %119 = load float, ptr %58, align 4, !tbaa !49
  %120 = fadd float %111, %119
  %121 = getelementptr inbounds float, ptr %58, i64 2
  %122 = load float, ptr %118, align 4, !tbaa !49
  %123 = fadd float %113, %122
  %124 = getelementptr inbounds float, ptr %58, i64 3
  %125 = load float, ptr %121, align 4, !tbaa !49
  %126 = fadd float %115, %125
  %127 = getelementptr inbounds float, ptr %58, i64 4
  %128 = load float, ptr %124, align 4, !tbaa !49
  %129 = fadd float %117, %128
  %130 = fmul float %120, 5.000000e-01
  %131 = getelementptr inbounds float, ptr %57, i64 1
  store float %130, ptr %57, align 4, !tbaa !49
  %132 = fmul float %123, 5.000000e-01
  %133 = getelementptr inbounds float, ptr %57, i64 2
  store float %132, ptr %131, align 4, !tbaa !49
  %134 = fmul float %126, 5.000000e-01
  %135 = getelementptr inbounds float, ptr %57, i64 3
  store float %134, ptr %133, align 4, !tbaa !49
  %136 = fmul float %129, 5.000000e-01
  %137 = getelementptr inbounds float, ptr %57, i64 4
  store float %136, ptr %135, align 4, !tbaa !49
  br label %138

138:                                              ; preds = %105, %109
  %139 = phi ptr [ %116, %109 ], [ %59, %105 ]
  %140 = phi ptr [ %127, %109 ], [ %58, %105 ]
  %141 = phi ptr [ %137, %109 ], [ %57, %105 ]
  %142 = add nsw i32 %63, -1
  %143 = icmp sgt i32 %63, 1
  br i1 %143, label %56, label %144, !llvm.loop !56

144:                                              ; preds = %138, %51
  %145 = phi ptr [ %36, %51 ], [ %106, %138 ]
  %146 = phi ptr [ %44, %51 ], [ %107, %138 ]
  %147 = phi ptr [ %45, %51 ], [ %108, %138 ]
  %148 = phi ptr [ %52, %51 ], [ %139, %138 ]
  %149 = phi ptr [ %53, %51 ], [ %140, %138 ]
  %150 = phi ptr [ %29, %51 ], [ %141, %138 ]
  br i1 %5, label %156, label %151

151:                                              ; preds = %144
  %152 = load i32, ptr %26, align 8, !tbaa !44
  %153 = shl i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %35, i64 %154
  br label %156

156:                                              ; preds = %151, %144
  %157 = phi ptr [ %155, %151 ], [ %35, %144 ]
  br i1 %14, label %158, label %163

158:                                              ; preds = %156
  %159 = load i32, ptr %27, align 8, !tbaa !44
  %160 = shl i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, ptr %30, i64 %161
  br label %163

163:                                              ; preds = %156, %158
  %164 = phi ptr [ %162, %158 ], [ %30, %156 ]
  %165 = add nsw i32 %37, -1
  %166 = icmp sgt i32 %37, 1
  br i1 %166, label %28, label %167, !llvm.loop !57

167:                                              ; preds = %163, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_double_fast_y(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %85, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = shl nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %16, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %23) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %11
  %27 = load i32, ptr %17, align 4, !tbaa !45
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = load ptr, ptr %12, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = load ptr, ptr %4, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 2
  %37 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 2
  br label %38

38:                                               ; preds = %29, %80
  %39 = phi ptr [ %35, %29 ], [ %62, %80 ]
  %40 = phi i32 [ %27, %29 ], [ %83, %80 ]
  %41 = phi ptr [ %31, %29 ], [ %82, %80 ]
  %42 = phi ptr [ %32, %29 ], [ %81, %80 ]
  %43 = phi ptr [ %34, %29 ], [ %61, %80 ]
  br i1 %6, label %60, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %36, align 8, !tbaa !44
  %46 = sext i32 %45 to i64
  %47 = getelementptr i32, ptr %43, i64 %46
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44, %49
  %50 = phi ptr [ %54, %49 ], [ %39, %44 ]
  %51 = phi i32 [ %58, %49 ], [ %45, %44 ]
  %52 = phi ptr [ %56, %49 ], [ %47, %44 ]
  %53 = phi ptr [ %57, %49 ], [ %43, %44 ]
  %54 = getelementptr inbounds i32, ptr %50, i64 1
  %55 = load i32, ptr %50, align 4, !tbaa !54
  %56 = getelementptr inbounds i32, ptr %52, i64 1
  store i32 %55, ptr %52, align 4, !tbaa !54
  %57 = getelementptr inbounds i32, ptr %53, i64 1
  store i32 %55, ptr %53, align 4, !tbaa !54
  %58 = add nsw i32 %51, -1
  %59 = icmp sgt i32 %51, 1
  br i1 %59, label %49, label %60, !llvm.loop !58

60:                                               ; preds = %49, %44, %38
  %61 = phi ptr [ %43, %38 ], [ %47, %44 ], [ %56, %49 ]
  %62 = phi ptr [ %39, %38 ], [ %39, %44 ], [ %54, %49 ]
  br i1 %14, label %80, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %37, align 8, !tbaa !44
  %65 = shl i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr float, ptr %41, i64 %66
  %68 = icmp sgt i32 %64, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63, %69
  %70 = phi i32 [ %78, %69 ], [ %65, %63 ]
  %71 = phi ptr [ %76, %69 ], [ %67, %63 ]
  %72 = phi ptr [ %77, %69 ], [ %41, %63 ]
  %73 = phi ptr [ %74, %69 ], [ %42, %63 ]
  %74 = getelementptr inbounds float, ptr %73, i64 1
  %75 = load float, ptr %73, align 4, !tbaa !49
  %76 = getelementptr inbounds float, ptr %71, i64 1
  store float %75, ptr %71, align 4, !tbaa !49
  %77 = getelementptr inbounds float, ptr %72, i64 1
  store float %75, ptr %72, align 4, !tbaa !49
  %78 = add nsw i32 %70, -1
  %79 = icmp sgt i32 %70, 1
  br i1 %79, label %69, label %80, !llvm.loop !59

80:                                               ; preds = %69, %63, %60
  %81 = phi ptr [ %42, %60 ], [ %42, %63 ], [ %74, %69 ]
  %82 = phi ptr [ %41, %60 ], [ %67, %63 ], [ %76, %69 ]
  %83 = add nsw i32 %40, -1
  %84 = icmp sgt i32 %40, 1
  br i1 %84, label %38, label %85, !llvm.loop !60

85:                                               ; preds = %80, %26, %11, %7, %1
  %86 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %11 ], [ %24, %26 ], [ %24, %80 ]
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IMB_double_y(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @IMB_double_fast_y(ptr noundef nonnull %0)
  tail call void @IMB_filtery(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %3, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %3 ]
  ret ptr %10
}

declare void @IMB_filtery(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @imb_onehalf_no_alloc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  br i1 %5, label %21, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef %0) #9
  br label %21

21:                                               ; preds = %19, %15, %13
  %22 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @imb_half_y_no_alloc(ptr noundef %0, ptr noundef %1)
  br label %275

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !45
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @imb_half_x_no_alloc(ptr noundef %0, ptr noundef %1)
  br label %275

31:                                               ; preds = %26
  br i1 %5, label %188, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %188

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = load ptr, ptr %3, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  br label %41

41:                                               ; preds = %36, %178
  %42 = phi ptr [ %38, %36 ], [ %180, %178 ]
  %43 = phi ptr [ %39, %36 ], [ %185, %178 ]
  %44 = phi i32 [ %34, %36 ], [ %186, %178 ]
  %45 = load i32, ptr %22, align 8, !tbaa !44
  %46 = shl i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %43, i64 %47
  %49 = load i32, ptr %40, align 8, !tbaa !44
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %178

51:                                               ; preds = %41, %170
  %52 = phi ptr [ %175, %170 ], [ %42, %41 ]
  %53 = phi ptr [ %174, %170 ], [ %48, %41 ]
  %54 = phi ptr [ %173, %170 ], [ %43, %41 ]
  %55 = phi i32 [ %176, %170 ], [ %49, %41 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !48
  %58 = load i8, ptr %54, align 1, !tbaa !48
  %59 = zext i8 %58 to i32
  %60 = zext i8 %57 to i32
  %61 = mul nuw nsw i32 %59, %60
  %62 = getelementptr inbounds i8, ptr %54, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !48
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %64, %60
  %66 = getelementptr inbounds i8, ptr %54, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !48
  %68 = zext i8 %67 to i32
  %69 = mul nuw nsw i32 %68, %60
  %70 = zext i8 %57 to i16
  %71 = getelementptr inbounds i8, ptr %53, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !48
  %73 = load i8, ptr %53, align 1, !tbaa !48
  %74 = zext i8 %73 to i32
  %75 = zext i8 %72 to i32
  %76 = mul nuw nsw i32 %74, %75
  %77 = getelementptr inbounds i8, ptr %53, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !48
  %79 = zext i8 %78 to i32
  %80 = mul nuw nsw i32 %79, %75
  %81 = getelementptr inbounds i8, ptr %53, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !48
  %83 = zext i8 %82 to i32
  %84 = mul nuw nsw i32 %83, %75
  %85 = zext i8 %72 to i16
  %86 = getelementptr inbounds i8, ptr %54, i64 4
  %87 = getelementptr inbounds i8, ptr %54, i64 7
  %88 = load i8, ptr %87, align 1, !tbaa !48
  %89 = load i8, ptr %86, align 1, !tbaa !48
  %90 = zext i8 %89 to i32
  %91 = zext i8 %88 to i32
  %92 = mul nuw nsw i32 %90, %91
  %93 = getelementptr inbounds i8, ptr %54, i64 5
  %94 = load i8, ptr %93, align 1, !tbaa !48
  %95 = zext i8 %94 to i32
  %96 = mul nuw nsw i32 %95, %91
  %97 = getelementptr inbounds i8, ptr %54, i64 6
  %98 = load i8, ptr %97, align 1, !tbaa !48
  %99 = zext i8 %98 to i32
  %100 = mul nuw nsw i32 %99, %91
  %101 = zext i8 %88 to i16
  %102 = getelementptr inbounds i8, ptr %53, i64 4
  %103 = getelementptr inbounds i8, ptr %53, i64 7
  %104 = load i8, ptr %103, align 1, !tbaa !48
  %105 = load i8, ptr %102, align 1, !tbaa !48
  %106 = zext i8 %105 to i32
  %107 = zext i8 %104 to i32
  %108 = mul nuw nsw i32 %106, %107
  %109 = getelementptr inbounds i8, ptr %53, i64 5
  %110 = load i8, ptr %109, align 1, !tbaa !48
  %111 = zext i8 %110 to i32
  %112 = mul nuw nsw i32 %111, %107
  %113 = getelementptr inbounds i8, ptr %53, i64 6
  %114 = load i8, ptr %113, align 1, !tbaa !48
  %115 = zext i8 %114 to i32
  %116 = mul nuw nsw i32 %115, %107
  %117 = zext i8 %104 to i16
  %118 = add nuw nsw i32 %76, %61
  %119 = add nuw nsw i32 %118, %92
  %120 = add nuw nsw i32 %119, %108
  %121 = lshr i32 %120, 2
  %122 = add nuw nsw i32 %80, %65
  %123 = add nuw nsw i32 %122, %96
  %124 = add nuw nsw i32 %123, %112
  %125 = lshr i32 %124, 2
  %126 = add nuw nsw i32 %84, %69
  %127 = add nuw nsw i32 %126, %100
  %128 = add nuw nsw i32 %127, %116
  %129 = lshr i32 %128, 2
  %130 = add nuw nsw i16 %85, %70
  %131 = add nuw nsw i16 %130, %101
  %132 = add nuw nsw i16 %131, %117
  %133 = shl nuw i16 %132, 6
  %134 = icmp ult i16 %132, 4
  br i1 %134, label %135, label %150

135:                                              ; preds = %51
  %136 = add nuw nsw i32 %121, 128
  %137 = lshr i32 %136, 8
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %52, align 1, !tbaa !48
  %139 = add nuw nsw i32 %125, 128
  %140 = lshr i32 %139, 8
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %141, ptr %142, align 1, !tbaa !48
  %143 = add nuw nsw i32 %129, 128
  %144 = lshr i32 %143, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds i8, ptr %52, i64 2
  store i8 %145, ptr %146, align 1, !tbaa !48
  %147 = add nuw nsw i16 %133, 128
  %148 = lshr i16 %147, 8
  %149 = trunc i16 %148 to i8
  br label %170

150:                                              ; preds = %51
  %151 = trunc i32 %129 to i16
  %152 = trunc i32 %125 to i16
  %153 = trunc i32 %121 to i16
  %154 = lshr i16 %132, 2
  %155 = udiv i16 %153, %154
  %156 = tail call i16 @llvm.umin.i16(i16 %155, i16 255)
  %157 = trunc i16 %156 to i8
  store i8 %157, ptr %52, align 1, !tbaa !48
  %158 = udiv i16 %152, %154
  %159 = tail call i16 @llvm.umin.i16(i16 %158, i16 255)
  %160 = trunc i16 %159 to i8
  %161 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %160, ptr %161, align 1, !tbaa !48
  %162 = udiv i16 %151, %154
  %163 = tail call i16 @llvm.umin.i16(i16 %162, i16 255)
  %164 = trunc i16 %163 to i8
  %165 = getelementptr inbounds i8, ptr %52, i64 2
  store i8 %164, ptr %165, align 1, !tbaa !48
  %166 = zext i16 %133 to i32
  %167 = add nuw nsw i32 %166, 128
  %168 = lshr i32 %167, 8
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %135, %150
  %171 = phi i8 [ %149, %135 ], [ %169, %150 ]
  %172 = getelementptr inbounds i8, ptr %52, i64 3
  store i8 %171, ptr %172, align 1, !tbaa !48
  %173 = getelementptr inbounds i8, ptr %54, i64 8
  %174 = getelementptr inbounds i8, ptr %53, i64 8
  %175 = getelementptr inbounds i8, ptr %52, i64 4
  %176 = add nsw i32 %55, -1
  %177 = icmp sgt i32 %55, 1
  br i1 %177, label %51, label %178, !llvm.loop !61

178:                                              ; preds = %170, %41
  %179 = phi ptr [ %48, %41 ], [ %174, %170 ]
  %180 = phi ptr [ %42, %41 ], [ %175, %170 ]
  %181 = load i32, ptr %22, align 8, !tbaa !44
  %182 = shl i32 %181, 2
  %183 = and i32 %182, 4
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %179, i64 %184
  %186 = add nsw i32 %44, -1
  %187 = icmp sgt i32 %44, 1
  br i1 %187, label %41, label %188, !llvm.loop !62

188:                                              ; preds = %178, %32, %31
  br i1 %14, label %275, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !45
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %275

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %195 = load ptr, ptr %194, align 8, !tbaa !43
  %196 = load ptr, ptr %6, align 8, !tbaa !43
  %197 = load i32, ptr %22, align 8, !tbaa !44
  %198 = shl i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !44
  %202 = icmp sgt i32 %201, 0
  %203 = and i32 %198, 4
  %204 = zext nneg i32 %203 to i64
  br label %205

205:                                              ; preds = %193, %269
  %206 = phi ptr [ %195, %193 ], [ %271, %269 ]
  %207 = phi ptr [ %196, %193 ], [ %272, %269 ]
  %208 = phi i32 [ %191, %193 ], [ %273, %269 ]
  %209 = getelementptr inbounds float, ptr %207, i64 %199
  br i1 %202, label %210, label %269

210:                                              ; preds = %205, %210
  %211 = phi ptr [ %266, %210 ], [ %206, %205 ]
  %212 = phi ptr [ %265, %210 ], [ %209, %205 ]
  %213 = phi ptr [ %264, %210 ], [ %207, %205 ]
  %214 = phi i32 [ %267, %210 ], [ %201, %205 ]
  %215 = load float, ptr %213, align 4, !tbaa !49
  %216 = load float, ptr %212, align 4, !tbaa !49
  %217 = fadd float %215, %216
  %218 = getelementptr inbounds float, ptr %213, i64 4
  %219 = load float, ptr %218, align 4, !tbaa !49
  %220 = fadd float %217, %219
  %221 = getelementptr inbounds float, ptr %212, i64 4
  %222 = load float, ptr %221, align 4, !tbaa !49
  %223 = fadd float %220, %222
  %224 = fmul float %223, 2.500000e-01
  store float %224, ptr %211, align 4, !tbaa !49
  %225 = getelementptr inbounds float, ptr %213, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !49
  %227 = getelementptr inbounds float, ptr %212, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !49
  %229 = fadd float %226, %228
  %230 = getelementptr inbounds float, ptr %213, i64 5
  %231 = load float, ptr %230, align 4, !tbaa !49
  %232 = fadd float %229, %231
  %233 = getelementptr inbounds float, ptr %212, i64 5
  %234 = load float, ptr %233, align 4, !tbaa !49
  %235 = fadd float %232, %234
  %236 = fmul float %235, 2.500000e-01
  %237 = getelementptr inbounds float, ptr %211, i64 1
  store float %236, ptr %237, align 4, !tbaa !49
  %238 = getelementptr inbounds float, ptr %213, i64 2
  %239 = load float, ptr %238, align 4, !tbaa !49
  %240 = getelementptr inbounds float, ptr %212, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !49
  %242 = fadd float %239, %241
  %243 = getelementptr inbounds float, ptr %213, i64 6
  %244 = load float, ptr %243, align 4, !tbaa !49
  %245 = fadd float %242, %244
  %246 = getelementptr inbounds float, ptr %212, i64 6
  %247 = load float, ptr %246, align 4, !tbaa !49
  %248 = fadd float %245, %247
  %249 = fmul float %248, 2.500000e-01
  %250 = getelementptr inbounds float, ptr %211, i64 2
  store float %249, ptr %250, align 4, !tbaa !49
  %251 = getelementptr inbounds float, ptr %213, i64 3
  %252 = load float, ptr %251, align 4, !tbaa !49
  %253 = getelementptr inbounds float, ptr %212, i64 3
  %254 = load float, ptr %253, align 4, !tbaa !49
  %255 = fadd float %252, %254
  %256 = getelementptr inbounds float, ptr %213, i64 7
  %257 = load float, ptr %256, align 4, !tbaa !49
  %258 = fadd float %255, %257
  %259 = getelementptr inbounds float, ptr %212, i64 7
  %260 = load float, ptr %259, align 4, !tbaa !49
  %261 = fadd float %258, %260
  %262 = fmul float %261, 2.500000e-01
  %263 = getelementptr inbounds float, ptr %211, i64 3
  store float %262, ptr %263, align 4, !tbaa !49
  %264 = getelementptr inbounds float, ptr %213, i64 8
  %265 = getelementptr inbounds float, ptr %212, i64 8
  %266 = getelementptr inbounds float, ptr %211, i64 4
  %267 = add nsw i32 %214, -1
  %268 = icmp sgt i32 %214, 1
  br i1 %268, label %210, label %269, !llvm.loop !63

269:                                              ; preds = %210, %205
  %270 = phi ptr [ %209, %205 ], [ %265, %210 ]
  %271 = phi ptr [ %206, %205 ], [ %266, %210 ]
  %272 = getelementptr inbounds float, ptr %270, i64 %204
  %273 = add nsw i32 %208, -1
  %274 = icmp sgt i32 %208, 1
  br i1 %274, label %205, label %275, !llvm.loop !64

275:                                              ; preds = %269, %189, %188, %30, %25
  ret void
}

declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_onehalf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  br i1 %6, label %16, label %20

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %16, %15
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #9
  br label %63

26:                                               ; preds = %20
  %27 = lshr i32 %22, 1
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !47
  %32 = tail call ptr @IMB_allocImBuf(i32 noundef %13, i32 noundef %27, i8 noundef zeroext %29, i32 noundef %31) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %26
  tail call fastcc void @imb_half_y_no_alloc(ptr noundef nonnull %32, ptr noundef nonnull %0)
  br label %63

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !45
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  br i1 %6, label %40, label %44

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %39, %40
  %45 = lshr i32 %13, 1
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %47 = load i8, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !47
  %50 = tail call ptr @IMB_allocImBuf(i32 noundef %45, i32 noundef %37, i8 noundef zeroext %47, i32 noundef %49) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %44
  tail call fastcc void @imb_half_x_no_alloc(ptr noundef nonnull %50, ptr noundef nonnull %0)
  br label %63

53:                                               ; preds = %35
  %54 = lshr i32 %13, 1
  %55 = lshr i32 %37, 1
  %56 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %57 = load i8, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !47
  %60 = tail call ptr @IMB_allocImBuf(i32 noundef %54, i32 noundef %55, i8 noundef zeroext %57, i32 noundef %59) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  tail call void @imb_onehalf_no_alloc(ptr noundef nonnull %60, ptr noundef nonnull %0)
  br label %63

63:                                               ; preds = %52, %44, %40, %34, %26, %24, %16, %53, %7, %1, %62
  %64 = phi ptr [ %60, %62 ], [ null, %1 ], [ null, %7 ], [ null, %53 ], [ %25, %24 ], [ %32, %34 ], [ null, %16 ], [ null, %26 ], [ %50, %52 ], [ null, %40 ], [ null, %44 ]
  ret ptr %64
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IMB_scaleImBuf(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1347, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1347, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %1347, label %21

21:                                               ; preds = %17, %13
  tail call fastcc void @scalefast_Z_ImBuf(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %311, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %26, label %311

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 8, !tbaa !34
  %28 = icmp ne ptr %27, null
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !45
  %34 = select i1 %28, i1 true, i1 %31
  br i1 %34, label %35, label %311

35:                                               ; preds = %26
  br i1 %28, label %36, label %43

36:                                               ; preds = %35
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %38 = mul nsw i32 %33, %1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr %37(i64 noundef %40, ptr noundef nonnull @.str.5) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %311, label %43

43:                                               ; preds = %36, %35
  %44 = phi ptr [ %41, %36 ], [ null, %35 ]
  br i1 %31, label %45, label %57

45:                                               ; preds = %43
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %47 = load i32, ptr %32, align 4, !tbaa !45
  %48 = mul nsw i32 %47, %1
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 4
  %51 = tail call ptr %46(i64 noundef %50, ptr noundef nonnull @.str.6) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = icmp eq ptr %44, null
  br i1 %54, label %311, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %56(ptr noundef nonnull %44) #9
  br label %311

57:                                               ; preds = %45, %43
  %58 = phi ptr [ %51, %45 ], [ null, %43 ]
  %59 = load i32, ptr %14, align 8, !tbaa !44
  %60 = sitofp i32 %59 to double
  %61 = fadd double %60, -1.000000e-02
  %62 = sitofp i32 %1 to double
  %63 = fdiv double %61, %62
  %64 = fptrunc double %63 to float
  br i1 %28, label %65, label %67

65:                                               ; preds = %57
  %66 = load ptr, ptr %6, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %66, %65 ], [ null, %57 ]
  %69 = phi ptr [ %44, %65 ], [ null, %57 ]
  br i1 %31, label %70, label %72

70:                                               ; preds = %67
  %71 = load ptr, ptr %29, align 8, !tbaa !43
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi ptr [ %71, %70 ], [ null, %67 ]
  %74 = phi ptr [ %58, %70 ], [ null, %67 ]
  %75 = load i32, ptr %32, align 4, !tbaa !45
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %300

77:                                               ; preds = %72
  %78 = icmp sgt i32 %1, 0
  br label %79

79:                                               ; preds = %77, %285
  %80 = phi i32 [ %75, %77 ], [ %298, %285 ]
  %81 = phi float [ 0.000000e+00, %77 ], [ %297, %285 ]
  %82 = phi float [ 0.000000e+00, %77 ], [ %296, %285 ]
  %83 = phi float [ 0.000000e+00, %77 ], [ %295, %285 ]
  %84 = phi float [ 0.000000e+00, %77 ], [ %294, %285 ]
  %85 = phi float [ 0.000000e+00, %77 ], [ %293, %285 ]
  %86 = phi float [ 0.000000e+00, %77 ], [ %292, %285 ]
  %87 = phi float [ 0.000000e+00, %77 ], [ %291, %285 ]
  %88 = phi float [ 0.000000e+00, %77 ], [ %290, %285 ]
  %89 = phi ptr [ %74, %77 ], [ %289, %285 ]
  %90 = phi ptr [ %73, %77 ], [ %288, %285 ]
  %91 = phi ptr [ %69, %77 ], [ %287, %285 ]
  %92 = phi ptr [ %68, %77 ], [ %286, %285 ]
  br i1 %78, label %93, label %285

93:                                               ; preds = %79, %275
  %94 = phi i32 [ %283, %275 ], [ %1, %79 ]
  %95 = phi float [ %213, %275 ], [ %81, %79 ]
  %96 = phi float [ %212, %275 ], [ %82, %79 ]
  %97 = phi float [ %211, %275 ], [ %83, %79 ]
  %98 = phi float [ %210, %275 ], [ %84, %79 ]
  %99 = phi float [ %281, %275 ], [ 0.000000e+00, %79 ]
  %100 = phi float [ %280, %275 ], [ 0.000000e+00, %79 ]
  %101 = phi float [ %279, %275 ], [ 0.000000e+00, %79 ]
  %102 = phi float [ %278, %275 ], [ 0.000000e+00, %79 ]
  %103 = phi float [ %209, %275 ], [ %85, %79 ]
  %104 = phi float [ %208, %275 ], [ %86, %79 ]
  %105 = phi float [ %207, %275 ], [ %87, %79 ]
  %106 = phi float [ %206, %275 ], [ %88, %79 ]
  %107 = phi float [ %253, %275 ], [ 0.000000e+00, %79 ]
  %108 = phi float [ %252, %275 ], [ 0.000000e+00, %79 ]
  %109 = phi float [ %251, %275 ], [ 0.000000e+00, %79 ]
  %110 = phi float [ %250, %275 ], [ 0.000000e+00, %79 ]
  %111 = phi float [ %282, %275 ], [ 0.000000e+00, %79 ]
  %112 = phi ptr [ %277, %275 ], [ %89, %79 ]
  %113 = phi ptr [ %276, %275 ], [ %90, %79 ]
  %114 = phi ptr [ %249, %275 ], [ %91, %79 ]
  %115 = phi ptr [ %248, %275 ], [ %92, %79 ]
  br i1 %28, label %116, label %125

116:                                              ; preds = %93
  %117 = fneg float %107
  %118 = fmul float %111, %117
  %119 = fneg float %108
  %120 = fmul float %111, %119
  %121 = fneg float %109
  %122 = fmul float %111, %121
  %123 = fneg float %110
  %124 = fmul float %111, %123
  br label %125

125:                                              ; preds = %116, %93
  %126 = phi float [ %124, %116 ], [ %106, %93 ]
  %127 = phi float [ %122, %116 ], [ %105, %93 ]
  %128 = phi float [ %120, %116 ], [ %104, %93 ]
  %129 = phi float [ %118, %116 ], [ %103, %93 ]
  br i1 %31, label %130, label %139

130:                                              ; preds = %125
  %131 = fneg float %99
  %132 = fmul float %111, %131
  %133 = fneg float %100
  %134 = fmul float %111, %133
  %135 = fneg float %101
  %136 = fmul float %111, %135
  %137 = fneg float %102
  %138 = fmul float %111, %137
  br label %139

139:                                              ; preds = %130, %125
  %140 = phi float [ %138, %130 ], [ %98, %125 ]
  %141 = phi float [ %136, %130 ], [ %97, %125 ]
  %142 = phi float [ %134, %130 ], [ %96, %125 ]
  %143 = phi float [ %132, %130 ], [ %95, %125 ]
  %144 = fadd float %111, %64
  %145 = fcmp ult float %144, 1.000000e+00
  br i1 %145, label %202, label %146

146:                                              ; preds = %139, %195
  %147 = phi float [ %200, %195 ], [ %143, %139 ]
  %148 = phi float [ %199, %195 ], [ %142, %139 ]
  %149 = phi float [ %198, %195 ], [ %141, %139 ]
  %150 = phi float [ %197, %195 ], [ %140, %139 ]
  %151 = phi float [ %181, %195 ], [ %129, %139 ]
  %152 = phi float [ %180, %195 ], [ %128, %139 ]
  %153 = phi float [ %179, %195 ], [ %127, %139 ]
  %154 = phi float [ %178, %195 ], [ %126, %139 ]
  %155 = phi float [ %158, %195 ], [ %144, %139 ]
  %156 = phi ptr [ %196, %195 ], [ %113, %139 ]
  %157 = phi ptr [ %177, %195 ], [ %115, %139 ]
  %158 = fadd float %155, -1.000000e+00
  br i1 %28, label %159, label %176

159:                                              ; preds = %146
  %160 = load i8, ptr %157, align 1, !tbaa !48
  %161 = uitofp i8 %160 to float
  %162 = fadd float %151, %161
  %163 = getelementptr inbounds i8, ptr %157, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !48
  %165 = uitofp i8 %164 to float
  %166 = fadd float %152, %165
  %167 = getelementptr inbounds i8, ptr %157, i64 2
  %168 = load i8, ptr %167, align 1, !tbaa !48
  %169 = uitofp i8 %168 to float
  %170 = fadd float %153, %169
  %171 = getelementptr inbounds i8, ptr %157, i64 3
  %172 = load i8, ptr %171, align 1, !tbaa !48
  %173 = uitofp i8 %172 to float
  %174 = fadd float %154, %173
  %175 = getelementptr inbounds i8, ptr %157, i64 4
  br label %176

176:                                              ; preds = %159, %146
  %177 = phi ptr [ %175, %159 ], [ %157, %146 ]
  %178 = phi float [ %174, %159 ], [ %154, %146 ]
  %179 = phi float [ %170, %159 ], [ %153, %146 ]
  %180 = phi float [ %166, %159 ], [ %152, %146 ]
  %181 = phi float [ %162, %159 ], [ %151, %146 ]
  br i1 %31, label %182, label %195

182:                                              ; preds = %176
  %183 = load float, ptr %156, align 4, !tbaa !49
  %184 = fadd float %147, %183
  %185 = getelementptr inbounds float, ptr %156, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !49
  %187 = fadd float %148, %186
  %188 = getelementptr inbounds float, ptr %156, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !49
  %190 = fadd float %149, %189
  %191 = getelementptr inbounds float, ptr %156, i64 3
  %192 = load float, ptr %191, align 4, !tbaa !49
  %193 = fadd float %150, %192
  %194 = getelementptr inbounds float, ptr %156, i64 4
  br label %195

195:                                              ; preds = %182, %176
  %196 = phi ptr [ %194, %182 ], [ %156, %176 ]
  %197 = phi float [ %193, %182 ], [ %150, %176 ]
  %198 = phi float [ %190, %182 ], [ %149, %176 ]
  %199 = phi float [ %187, %182 ], [ %148, %176 ]
  %200 = phi float [ %184, %182 ], [ %147, %176 ]
  %201 = fcmp ult float %158, 1.000000e+00
  br i1 %201, label %202, label %146, !llvm.loop !66

202:                                              ; preds = %195, %139
  %203 = phi ptr [ %115, %139 ], [ %177, %195 ]
  %204 = phi ptr [ %113, %139 ], [ %196, %195 ]
  %205 = phi float [ %144, %139 ], [ %158, %195 ]
  %206 = phi float [ %126, %139 ], [ %178, %195 ]
  %207 = phi float [ %127, %139 ], [ %179, %195 ]
  %208 = phi float [ %128, %139 ], [ %180, %195 ]
  %209 = phi float [ %129, %139 ], [ %181, %195 ]
  %210 = phi float [ %140, %139 ], [ %197, %195 ]
  %211 = phi float [ %141, %139 ], [ %198, %195 ]
  %212 = phi float [ %142, %139 ], [ %199, %195 ]
  %213 = phi float [ %143, %139 ], [ %200, %195 ]
  br i1 %28, label %214, label %247

214:                                              ; preds = %202
  %215 = load i8, ptr %203, align 1, !tbaa !48
  %216 = uitofp i8 %215 to float
  %217 = getelementptr inbounds i8, ptr %203, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !48
  %219 = uitofp i8 %218 to float
  %220 = getelementptr inbounds i8, ptr %203, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !48
  %222 = uitofp i8 %221 to float
  %223 = getelementptr inbounds i8, ptr %203, i64 3
  %224 = load i8, ptr %223, align 1, !tbaa !48
  %225 = uitofp i8 %224 to float
  %226 = getelementptr inbounds i8, ptr %203, i64 4
  %227 = tail call float @llvm.fmuladd.f32(float %205, float %216, float %209)
  %228 = fdiv float %227, %64
  %229 = fadd float %228, 5.000000e-01
  %230 = fptoui float %229 to i8
  store i8 %230, ptr %114, align 1, !tbaa !48
  %231 = tail call float @llvm.fmuladd.f32(float %205, float %219, float %208)
  %232 = fdiv float %231, %64
  %233 = fadd float %232, 5.000000e-01
  %234 = fptoui float %233 to i8
  %235 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %234, ptr %235, align 1, !tbaa !48
  %236 = tail call float @llvm.fmuladd.f32(float %205, float %222, float %207)
  %237 = fdiv float %236, %64
  %238 = fadd float %237, 5.000000e-01
  %239 = fptoui float %238 to i8
  %240 = getelementptr inbounds i8, ptr %114, i64 2
  store i8 %239, ptr %240, align 1, !tbaa !48
  %241 = tail call float @llvm.fmuladd.f32(float %205, float %225, float %206)
  %242 = fdiv float %241, %64
  %243 = fadd float %242, 5.000000e-01
  %244 = fptoui float %243 to i8
  %245 = getelementptr inbounds i8, ptr %114, i64 3
  store i8 %244, ptr %245, align 1, !tbaa !48
  %246 = getelementptr inbounds i8, ptr %114, i64 4
  br label %247

247:                                              ; preds = %214, %202
  %248 = phi ptr [ %226, %214 ], [ %203, %202 ]
  %249 = phi ptr [ %246, %214 ], [ %114, %202 ]
  %250 = phi float [ %225, %214 ], [ %110, %202 ]
  %251 = phi float [ %222, %214 ], [ %109, %202 ]
  %252 = phi float [ %219, %214 ], [ %108, %202 ]
  %253 = phi float [ %216, %214 ], [ %107, %202 ]
  br i1 %31, label %254, label %275

254:                                              ; preds = %247
  %255 = load float, ptr %204, align 4, !tbaa !49
  %256 = getelementptr inbounds float, ptr %204, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !49
  %258 = getelementptr inbounds float, ptr %204, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !49
  %260 = getelementptr inbounds float, ptr %204, i64 3
  %261 = load float, ptr %260, align 4, !tbaa !49
  %262 = getelementptr inbounds float, ptr %204, i64 4
  %263 = tail call float @llvm.fmuladd.f32(float %205, float %255, float %213)
  %264 = fdiv float %263, %64
  store float %264, ptr %112, align 4, !tbaa !49
  %265 = tail call float @llvm.fmuladd.f32(float %205, float %257, float %212)
  %266 = fdiv float %265, %64
  %267 = getelementptr inbounds float, ptr %112, i64 1
  store float %266, ptr %267, align 4, !tbaa !49
  %268 = tail call float @llvm.fmuladd.f32(float %205, float %259, float %211)
  %269 = fdiv float %268, %64
  %270 = getelementptr inbounds float, ptr %112, i64 2
  store float %269, ptr %270, align 4, !tbaa !49
  %271 = tail call float @llvm.fmuladd.f32(float %205, float %261, float %210)
  %272 = fdiv float %271, %64
  %273 = getelementptr inbounds float, ptr %112, i64 3
  store float %272, ptr %273, align 4, !tbaa !49
  %274 = getelementptr inbounds float, ptr %112, i64 4
  br label %275

275:                                              ; preds = %254, %247
  %276 = phi ptr [ %262, %254 ], [ %204, %247 ]
  %277 = phi ptr [ %274, %254 ], [ %112, %247 ]
  %278 = phi float [ %261, %254 ], [ %102, %247 ]
  %279 = phi float [ %259, %254 ], [ %101, %247 ]
  %280 = phi float [ %257, %254 ], [ %100, %247 ]
  %281 = phi float [ %255, %254 ], [ %99, %247 ]
  %282 = fadd float %205, -1.000000e+00
  %283 = add nsw i32 %94, -1
  %284 = icmp sgt i32 %94, 1
  br i1 %284, label %93, label %285, !llvm.loop !67

285:                                              ; preds = %275, %79
  %286 = phi ptr [ %92, %79 ], [ %248, %275 ]
  %287 = phi ptr [ %91, %79 ], [ %249, %275 ]
  %288 = phi ptr [ %90, %79 ], [ %276, %275 ]
  %289 = phi ptr [ %89, %79 ], [ %277, %275 ]
  %290 = phi float [ %88, %79 ], [ %206, %275 ]
  %291 = phi float [ %87, %79 ], [ %207, %275 ]
  %292 = phi float [ %86, %79 ], [ %208, %275 ]
  %293 = phi float [ %85, %79 ], [ %209, %275 ]
  %294 = phi float [ %84, %79 ], [ %210, %275 ]
  %295 = phi float [ %83, %79 ], [ %211, %275 ]
  %296 = phi float [ %82, %79 ], [ %212, %275 ]
  %297 = phi float [ %81, %79 ], [ %213, %275 ]
  %298 = add nsw i32 %80, -1
  %299 = icmp sgt i32 %80, 1
  br i1 %299, label %79, label %300, !llvm.loop !68

300:                                              ; preds = %285, %72
  br i1 %28, label %301, label %305

301:                                              ; preds = %300
  tail call void @imb_freerectImBuf(ptr noundef %0) #9
  %302 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %303 = load i32, ptr %302, align 4, !tbaa !69
  %304 = or i32 %303, 1
  store i32 %304, ptr %302, align 4, !tbaa !69
  store ptr %44, ptr %6, align 8, !tbaa !34
  br label %305

305:                                              ; preds = %301, %300
  br i1 %31, label %306, label %310

306:                                              ; preds = %305
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #9
  %307 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %308 = load i32, ptr %307, align 4, !tbaa !69
  %309 = or i32 %308, 32
  store i32 %309, ptr %307, align 4, !tbaa !69
  store ptr %58, ptr %29, align 8, !tbaa !43
  br label %310

310:                                              ; preds = %306, %305
  store i32 %1, ptr %14, align 8, !tbaa !44
  br label %311

311:                                              ; preds = %310, %55, %53, %36, %26, %23, %21
  %312 = icmp eq i32 %2, 0
  br i1 %312, label %613, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %315 = load i32, ptr %314, align 4, !tbaa !45
  %316 = icmp ugt i32 %315, %2
  br i1 %316, label %317, label %613

317:                                              ; preds = %313
  %318 = load ptr, ptr %6, align 8, !tbaa !34
  %319 = icmp ne ptr %318, null
  %320 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %321 = load ptr, ptr %320, align 8, !tbaa !43
  %322 = icmp ne ptr %321, null
  %323 = load i32, ptr %14, align 8, !tbaa !44
  %324 = select i1 %319, i1 true, i1 %322
  br i1 %324, label %325, label %613

325:                                              ; preds = %317
  br i1 %319, label %326, label %333

326:                                              ; preds = %325
  %327 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %328 = mul nsw i32 %323, %2
  %329 = sext i32 %328 to i64
  %330 = shl nsw i64 %329, 2
  %331 = tail call ptr %327(i64 noundef %330, ptr noundef nonnull @.str.7) #9
  %332 = icmp eq ptr %331, null
  br i1 %332, label %613, label %333

333:                                              ; preds = %326, %325
  %334 = phi ptr [ %331, %326 ], [ null, %325 ]
  br i1 %322, label %335, label %347

335:                                              ; preds = %333
  %336 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %337 = load i32, ptr %14, align 8, !tbaa !44
  %338 = mul nsw i32 %337, %2
  %339 = sext i32 %338 to i64
  %340 = shl nsw i64 %339, 4
  %341 = tail call ptr %336(i64 noundef %340, ptr noundef nonnull @.str.8) #9
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %335
  %344 = icmp eq ptr %334, null
  br i1 %344, label %613, label %345

345:                                              ; preds = %343
  %346 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %346(ptr noundef nonnull %334) #9
  br label %613

347:                                              ; preds = %335, %333
  %348 = phi ptr [ %341, %335 ], [ null, %333 ]
  %349 = load i32, ptr %314, align 4, !tbaa !45
  %350 = sitofp i32 %349 to double
  %351 = fadd double %350, -1.000000e-02
  %352 = sitofp i32 %2 to double
  %353 = fdiv double %351, %352
  %354 = fptrunc double %353 to float
  %355 = load i32, ptr %14, align 8, !tbaa !44
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %602

357:                                              ; preds = %347
  %358 = shl i32 %355, 2
  %359 = icmp sgt i32 %2, 0
  %360 = zext nneg i32 %358 to i64
  %361 = zext i32 %358 to i64
  %362 = zext nneg i32 %358 to i64
  %363 = zext nneg i32 %358 to i64
  br label %379

364:                                              ; preds = %592, %407
  %365 = phi ptr [ %400, %407 ], [ %565, %592 ]
  %366 = phi ptr [ %408, %407 ], [ %593, %592 ]
  %367 = phi ptr [ %409, %407 ], [ %594, %592 ]
  %368 = phi ptr [ %401, %407 ], [ %566, %592 ]
  %369 = phi float [ %388, %407 ], [ %523, %592 ]
  %370 = phi float [ %387, %407 ], [ %524, %592 ]
  %371 = phi float [ %386, %407 ], [ %525, %592 ]
  %372 = phi float [ %385, %407 ], [ %526, %592 ]
  %373 = phi float [ %384, %407 ], [ %527, %592 ]
  %374 = phi float [ %383, %407 ], [ %528, %592 ]
  %375 = phi float [ %382, %407 ], [ %529, %592 ]
  %376 = phi float [ %381, %407 ], [ %530, %592 ]
  %377 = trunc i64 %380 to i32
  %378 = icmp sgt i32 %377, 7
  br i1 %378, label %379, label %602, !llvm.loop !70

379:                                              ; preds = %357, %364
  %380 = phi i64 [ %361, %357 ], [ %393, %364 ]
  %381 = phi float [ 0.000000e+00, %357 ], [ %376, %364 ]
  %382 = phi float [ 0.000000e+00, %357 ], [ %375, %364 ]
  %383 = phi float [ 0.000000e+00, %357 ], [ %374, %364 ]
  %384 = phi float [ 0.000000e+00, %357 ], [ %373, %364 ]
  %385 = phi float [ 0.000000e+00, %357 ], [ %372, %364 ]
  %386 = phi float [ 0.000000e+00, %357 ], [ %371, %364 ]
  %387 = phi float [ 0.000000e+00, %357 ], [ %370, %364 ]
  %388 = phi float [ 0.000000e+00, %357 ], [ %369, %364 ]
  %389 = phi ptr [ null, %357 ], [ %368, %364 ]
  %390 = phi ptr [ null, %357 ], [ %367, %364 ]
  %391 = phi ptr [ null, %357 ], [ %366, %364 ]
  %392 = phi ptr [ null, %357 ], [ %365, %364 ]
  %393 = add nsw i64 %380, -4
  br i1 %319, label %394, label %399

394:                                              ; preds = %379
  %395 = load ptr, ptr %6, align 8, !tbaa !34
  %396 = and i64 %393, 4294967292
  %397 = getelementptr inbounds i8, ptr %395, i64 %396
  %398 = getelementptr inbounds i8, ptr %334, i64 %396
  br label %399

399:                                              ; preds = %394, %379
  %400 = phi ptr [ %398, %394 ], [ %392, %379 ]
  %401 = phi ptr [ %397, %394 ], [ %389, %379 ]
  br i1 %322, label %402, label %407

402:                                              ; preds = %399
  %403 = load ptr, ptr %320, align 8, !tbaa !43
  %404 = and i64 %393, 4294967292
  %405 = getelementptr inbounds float, ptr %403, i64 %404
  %406 = getelementptr inbounds float, ptr %348, i64 %404
  br label %407

407:                                              ; preds = %402, %399
  %408 = phi ptr [ %405, %402 ], [ %391, %399 ]
  %409 = phi ptr [ %406, %402 ], [ %390, %399 ]
  br i1 %359, label %410, label %364

410:                                              ; preds = %407, %592
  %411 = phi i32 [ %600, %592 ], [ %2, %407 ]
  %412 = phi float [ %530, %592 ], [ %381, %407 ]
  %413 = phi float [ %529, %592 ], [ %382, %407 ]
  %414 = phi float [ %528, %592 ], [ %383, %407 ]
  %415 = phi float [ %527, %592 ], [ %384, %407 ]
  %416 = phi float [ %598, %592 ], [ 0.000000e+00, %407 ]
  %417 = phi float [ %597, %592 ], [ 0.000000e+00, %407 ]
  %418 = phi float [ %596, %592 ], [ 0.000000e+00, %407 ]
  %419 = phi float [ %595, %592 ], [ 0.000000e+00, %407 ]
  %420 = phi float [ %526, %592 ], [ %385, %407 ]
  %421 = phi float [ %525, %592 ], [ %386, %407 ]
  %422 = phi float [ %524, %592 ], [ %387, %407 ]
  %423 = phi float [ %523, %592 ], [ %388, %407 ]
  %424 = phi float [ %570, %592 ], [ 0.000000e+00, %407 ]
  %425 = phi float [ %569, %592 ], [ 0.000000e+00, %407 ]
  %426 = phi float [ %568, %592 ], [ 0.000000e+00, %407 ]
  %427 = phi float [ %567, %592 ], [ 0.000000e+00, %407 ]
  %428 = phi ptr [ %566, %592 ], [ %401, %407 ]
  %429 = phi float [ %599, %592 ], [ 0.000000e+00, %407 ]
  %430 = phi ptr [ %594, %592 ], [ %409, %407 ]
  %431 = phi ptr [ %593, %592 ], [ %408, %407 ]
  %432 = phi ptr [ %565, %592 ], [ %400, %407 ]
  br i1 %319, label %433, label %442

433:                                              ; preds = %410
  %434 = fneg float %424
  %435 = fmul float %429, %434
  %436 = fneg float %425
  %437 = fmul float %429, %436
  %438 = fneg float %426
  %439 = fmul float %429, %438
  %440 = fneg float %427
  %441 = fmul float %429, %440
  br label %442

442:                                              ; preds = %433, %410
  %443 = phi float [ %441, %433 ], [ %423, %410 ]
  %444 = phi float [ %439, %433 ], [ %422, %410 ]
  %445 = phi float [ %437, %433 ], [ %421, %410 ]
  %446 = phi float [ %435, %433 ], [ %420, %410 ]
  br i1 %322, label %447, label %456

447:                                              ; preds = %442
  %448 = fneg float %416
  %449 = fmul float %429, %448
  %450 = fneg float %417
  %451 = fmul float %429, %450
  %452 = fneg float %418
  %453 = fmul float %429, %452
  %454 = fneg float %419
  %455 = fmul float %429, %454
  br label %456

456:                                              ; preds = %447, %442
  %457 = phi float [ %455, %447 ], [ %415, %442 ]
  %458 = phi float [ %453, %447 ], [ %414, %442 ]
  %459 = phi float [ %451, %447 ], [ %413, %442 ]
  %460 = phi float [ %449, %447 ], [ %412, %442 ]
  %461 = fadd float %429, %354
  %462 = fcmp ult float %461, 1.000000e+00
  br i1 %462, label %519, label %463

463:                                              ; preds = %456, %512
  %464 = phi float [ %517, %512 ], [ %460, %456 ]
  %465 = phi float [ %516, %512 ], [ %459, %456 ]
  %466 = phi float [ %515, %512 ], [ %458, %456 ]
  %467 = phi float [ %514, %512 ], [ %457, %456 ]
  %468 = phi float [ %498, %512 ], [ %446, %456 ]
  %469 = phi float [ %497, %512 ], [ %445, %456 ]
  %470 = phi float [ %496, %512 ], [ %444, %456 ]
  %471 = phi float [ %495, %512 ], [ %443, %456 ]
  %472 = phi ptr [ %494, %512 ], [ %428, %456 ]
  %473 = phi float [ %475, %512 ], [ %461, %456 ]
  %474 = phi ptr [ %513, %512 ], [ %431, %456 ]
  %475 = fadd float %473, -1.000000e+00
  br i1 %319, label %476, label %493

476:                                              ; preds = %463
  %477 = load i8, ptr %472, align 1, !tbaa !48
  %478 = uitofp i8 %477 to float
  %479 = fadd float %468, %478
  %480 = getelementptr inbounds i8, ptr %472, i64 1
  %481 = load i8, ptr %480, align 1, !tbaa !48
  %482 = uitofp i8 %481 to float
  %483 = fadd float %469, %482
  %484 = getelementptr inbounds i8, ptr %472, i64 2
  %485 = load i8, ptr %484, align 1, !tbaa !48
  %486 = uitofp i8 %485 to float
  %487 = fadd float %470, %486
  %488 = getelementptr inbounds i8, ptr %472, i64 3
  %489 = load i8, ptr %488, align 1, !tbaa !48
  %490 = uitofp i8 %489 to float
  %491 = fadd float %471, %490
  %492 = getelementptr inbounds i8, ptr %472, i64 %360
  br label %493

493:                                              ; preds = %476, %463
  %494 = phi ptr [ %492, %476 ], [ %472, %463 ]
  %495 = phi float [ %491, %476 ], [ %471, %463 ]
  %496 = phi float [ %487, %476 ], [ %470, %463 ]
  %497 = phi float [ %483, %476 ], [ %469, %463 ]
  %498 = phi float [ %479, %476 ], [ %468, %463 ]
  br i1 %322, label %499, label %512

499:                                              ; preds = %493
  %500 = load float, ptr %474, align 4, !tbaa !49
  %501 = fadd float %464, %500
  %502 = getelementptr inbounds float, ptr %474, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !49
  %504 = fadd float %465, %503
  %505 = getelementptr inbounds float, ptr %474, i64 2
  %506 = load float, ptr %505, align 4, !tbaa !49
  %507 = fadd float %466, %506
  %508 = getelementptr inbounds float, ptr %474, i64 3
  %509 = load float, ptr %508, align 4, !tbaa !49
  %510 = fadd float %467, %509
  %511 = getelementptr inbounds float, ptr %474, i64 %361
  br label %512

512:                                              ; preds = %499, %493
  %513 = phi ptr [ %511, %499 ], [ %474, %493 ]
  %514 = phi float [ %510, %499 ], [ %467, %493 ]
  %515 = phi float [ %507, %499 ], [ %466, %493 ]
  %516 = phi float [ %504, %499 ], [ %465, %493 ]
  %517 = phi float [ %501, %499 ], [ %464, %493 ]
  %518 = fcmp ult float %475, 1.000000e+00
  br i1 %518, label %519, label %463, !llvm.loop !71

519:                                              ; preds = %512, %456
  %520 = phi ptr [ %431, %456 ], [ %513, %512 ]
  %521 = phi float [ %461, %456 ], [ %475, %512 ]
  %522 = phi ptr [ %428, %456 ], [ %494, %512 ]
  %523 = phi float [ %443, %456 ], [ %495, %512 ]
  %524 = phi float [ %444, %456 ], [ %496, %512 ]
  %525 = phi float [ %445, %456 ], [ %497, %512 ]
  %526 = phi float [ %446, %456 ], [ %498, %512 ]
  %527 = phi float [ %457, %456 ], [ %514, %512 ]
  %528 = phi float [ %458, %456 ], [ %515, %512 ]
  %529 = phi float [ %459, %456 ], [ %516, %512 ]
  %530 = phi float [ %460, %456 ], [ %517, %512 ]
  br i1 %319, label %531, label %564

531:                                              ; preds = %519
  %532 = load i8, ptr %522, align 1, !tbaa !48
  %533 = uitofp i8 %532 to float
  %534 = getelementptr inbounds i8, ptr %522, i64 1
  %535 = load i8, ptr %534, align 1, !tbaa !48
  %536 = uitofp i8 %535 to float
  %537 = getelementptr inbounds i8, ptr %522, i64 2
  %538 = load i8, ptr %537, align 1, !tbaa !48
  %539 = uitofp i8 %538 to float
  %540 = getelementptr inbounds i8, ptr %522, i64 3
  %541 = load i8, ptr %540, align 1, !tbaa !48
  %542 = uitofp i8 %541 to float
  %543 = getelementptr inbounds i8, ptr %522, i64 %362
  %544 = tail call float @llvm.fmuladd.f32(float %521, float %533, float %526)
  %545 = fdiv float %544, %354
  %546 = fadd float %545, 5.000000e-01
  %547 = fptoui float %546 to i8
  store i8 %547, ptr %432, align 1, !tbaa !48
  %548 = tail call float @llvm.fmuladd.f32(float %521, float %536, float %525)
  %549 = fdiv float %548, %354
  %550 = fadd float %549, 5.000000e-01
  %551 = fptoui float %550 to i8
  %552 = getelementptr inbounds i8, ptr %432, i64 1
  store i8 %551, ptr %552, align 1, !tbaa !48
  %553 = tail call float @llvm.fmuladd.f32(float %521, float %539, float %524)
  %554 = fdiv float %553, %354
  %555 = fadd float %554, 5.000000e-01
  %556 = fptoui float %555 to i8
  %557 = getelementptr inbounds i8, ptr %432, i64 2
  store i8 %556, ptr %557, align 1, !tbaa !48
  %558 = tail call float @llvm.fmuladd.f32(float %521, float %542, float %523)
  %559 = fdiv float %558, %354
  %560 = fadd float %559, 5.000000e-01
  %561 = fptoui float %560 to i8
  %562 = getelementptr inbounds i8, ptr %432, i64 3
  store i8 %561, ptr %562, align 1, !tbaa !48
  %563 = getelementptr inbounds i8, ptr %432, i64 %362
  br label %564

564:                                              ; preds = %531, %519
  %565 = phi ptr [ %563, %531 ], [ %432, %519 ]
  %566 = phi ptr [ %543, %531 ], [ %522, %519 ]
  %567 = phi float [ %542, %531 ], [ %427, %519 ]
  %568 = phi float [ %539, %531 ], [ %426, %519 ]
  %569 = phi float [ %536, %531 ], [ %425, %519 ]
  %570 = phi float [ %533, %531 ], [ %424, %519 ]
  br i1 %322, label %571, label %592

571:                                              ; preds = %564
  %572 = load float, ptr %520, align 4, !tbaa !49
  %573 = getelementptr inbounds float, ptr %520, i64 1
  %574 = load float, ptr %573, align 4, !tbaa !49
  %575 = getelementptr inbounds float, ptr %520, i64 2
  %576 = load float, ptr %575, align 4, !tbaa !49
  %577 = getelementptr inbounds float, ptr %520, i64 3
  %578 = load float, ptr %577, align 4, !tbaa !49
  %579 = getelementptr inbounds float, ptr %520, i64 %363
  %580 = tail call float @llvm.fmuladd.f32(float %521, float %572, float %530)
  %581 = fdiv float %580, %354
  store float %581, ptr %430, align 4, !tbaa !49
  %582 = tail call float @llvm.fmuladd.f32(float %521, float %574, float %529)
  %583 = fdiv float %582, %354
  %584 = getelementptr inbounds float, ptr %430, i64 1
  store float %583, ptr %584, align 4, !tbaa !49
  %585 = tail call float @llvm.fmuladd.f32(float %521, float %576, float %528)
  %586 = fdiv float %585, %354
  %587 = getelementptr inbounds float, ptr %430, i64 2
  store float %586, ptr %587, align 4, !tbaa !49
  %588 = tail call float @llvm.fmuladd.f32(float %521, float %578, float %527)
  %589 = fdiv float %588, %354
  %590 = getelementptr inbounds float, ptr %430, i64 3
  store float %589, ptr %590, align 4, !tbaa !49
  %591 = getelementptr inbounds float, ptr %430, i64 %363
  br label %592

592:                                              ; preds = %571, %564
  %593 = phi ptr [ %579, %571 ], [ %520, %564 ]
  %594 = phi ptr [ %591, %571 ], [ %430, %564 ]
  %595 = phi float [ %578, %571 ], [ %419, %564 ]
  %596 = phi float [ %576, %571 ], [ %418, %564 ]
  %597 = phi float [ %574, %571 ], [ %417, %564 ]
  %598 = phi float [ %572, %571 ], [ %416, %564 ]
  %599 = fadd float %521, -1.000000e+00
  %600 = add nsw i32 %411, -1
  %601 = icmp sgt i32 %411, 1
  br i1 %601, label %410, label %364, !llvm.loop !72

602:                                              ; preds = %364, %347
  br i1 %319, label %603, label %607

603:                                              ; preds = %602
  tail call void @imb_freerectImBuf(ptr noundef %0) #9
  %604 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %605 = load i32, ptr %604, align 4, !tbaa !69
  %606 = or i32 %605, 1
  store i32 %606, ptr %604, align 4, !tbaa !69
  store ptr %334, ptr %6, align 8, !tbaa !34
  br label %607

607:                                              ; preds = %603, %602
  br i1 %322, label %608, label %612

608:                                              ; preds = %607
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #9
  %609 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %610 = load i32, ptr %609, align 4, !tbaa !69
  %611 = or i32 %610, 32
  store i32 %611, ptr %609, align 4, !tbaa !69
  store ptr %348, ptr %320, align 8, !tbaa !43
  br label %612

612:                                              ; preds = %608, %607
  store i32 %2, ptr %314, align 4, !tbaa !45
  br label %613

613:                                              ; preds = %612, %345, %343, %326, %317, %313, %311
  br i1 %22, label %961, label %614

614:                                              ; preds = %613
  %615 = load i32, ptr %14, align 8, !tbaa !44
  %616 = icmp ult i32 %615, %1
  br i1 %616, label %617, label %961

617:                                              ; preds = %614
  %618 = load ptr, ptr %6, align 8, !tbaa !34
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %625

620:                                              ; preds = %617
  %621 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %622 = load ptr, ptr %621, align 8, !tbaa !43
  %623 = icmp eq ptr %622, null
  br i1 %623, label %961, label %624

624:                                              ; preds = %620
  br i1 %619, label %634, label %625

625:                                              ; preds = %617, %624
  %626 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %627 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %628 = load i32, ptr %627, align 4, !tbaa !45
  %629 = mul nsw i32 %628, %1
  %630 = sext i32 %629 to i64
  %631 = shl nsw i64 %630, 2
  %632 = tail call ptr %626(i64 noundef %631, ptr noundef nonnull @.str.9) #9
  %633 = icmp eq ptr %632, null
  br i1 %633, label %961, label %634

634:                                              ; preds = %625, %624
  %635 = phi ptr [ %632, %625 ], [ null, %624 ]
  %636 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %637 = load ptr, ptr %636, align 8, !tbaa !43
  %638 = icmp eq ptr %637, null
  br i1 %638, label %652, label %639

639:                                              ; preds = %634
  %640 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %641 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %642 = load i32, ptr %641, align 4, !tbaa !45
  %643 = mul nsw i32 %642, %1
  %644 = sext i32 %643 to i64
  %645 = shl nsw i64 %644, 4
  %646 = tail call ptr %640(i64 noundef %645, ptr noundef nonnull @.str.10) #9
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %652

648:                                              ; preds = %639
  %649 = icmp eq ptr %635, null
  br i1 %649, label %961, label %650

650:                                              ; preds = %648
  %651 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %651(ptr noundef nonnull %635) #9
  br label %961

652:                                              ; preds = %639, %634
  %653 = phi ptr [ %646, %639 ], [ null, %634 ]
  %654 = load i32, ptr %14, align 8, !tbaa !44
  %655 = sitofp i32 %654 to double
  %656 = fadd double %655, -1.001000e+00
  %657 = sitofp i32 %1 to double
  %658 = fadd double %657, -1.000000e+00
  %659 = fdiv double %656, %658
  %660 = fptrunc double %659 to float
  %661 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %662 = load i32, ptr %661, align 4, !tbaa !45
  %663 = icmp sgt i32 %662, 0
  br i1 %663, label %664, label %950

664:                                              ; preds = %652
  %665 = load ptr, ptr %636, align 8, !tbaa !43
  %666 = load ptr, ptr %6, align 8, !tbaa !34
  %667 = icmp sgt i32 %1, 0
  br label %668

668:                                              ; preds = %664, %919
  %669 = phi i32 [ %662, %664 ], [ %948, %919 ]
  %670 = phi float [ 0.000000e+00, %664 ], [ %947, %919 ]
  %671 = phi float [ 0.000000e+00, %664 ], [ %946, %919 ]
  %672 = phi float [ 0.000000e+00, %664 ], [ %945, %919 ]
  %673 = phi float [ 0.000000e+00, %664 ], [ %944, %919 ]
  %674 = phi float [ 0.000000e+00, %664 ], [ %943, %919 ]
  %675 = phi float [ 0.000000e+00, %664 ], [ %942, %919 ]
  %676 = phi float [ 0.000000e+00, %664 ], [ %941, %919 ]
  %677 = phi float [ 0.000000e+00, %664 ], [ %940, %919 ]
  %678 = phi float [ 0.000000e+00, %664 ], [ %939, %919 ]
  %679 = phi float [ 0.000000e+00, %664 ], [ %938, %919 ]
  %680 = phi float [ 0.000000e+00, %664 ], [ %937, %919 ]
  %681 = phi float [ 0.000000e+00, %664 ], [ %936, %919 ]
  %682 = phi float [ 0.000000e+00, %664 ], [ %935, %919 ]
  %683 = phi float [ 0.000000e+00, %664 ], [ %934, %919 ]
  %684 = phi float [ 0.000000e+00, %664 ], [ %933, %919 ]
  %685 = phi float [ 0.000000e+00, %664 ], [ %932, %919 ]
  %686 = phi float [ 0.000000e+00, %664 ], [ %931, %919 ]
  %687 = phi float [ 0.000000e+00, %664 ], [ %930, %919 ]
  %688 = phi float [ 0.000000e+00, %664 ], [ %929, %919 ]
  %689 = phi float [ 0.000000e+00, %664 ], [ %928, %919 ]
  %690 = phi float [ 0.000000e+00, %664 ], [ %927, %919 ]
  %691 = phi float [ 0.000000e+00, %664 ], [ %926, %919 ]
  %692 = phi float [ 0.000000e+00, %664 ], [ %925, %919 ]
  %693 = phi float [ 0.000000e+00, %664 ], [ %924, %919 ]
  %694 = phi ptr [ %653, %664 ], [ %923, %919 ]
  %695 = phi ptr [ %665, %664 ], [ %922, %919 ]
  %696 = phi ptr [ %635, %664 ], [ %921, %919 ]
  %697 = phi ptr [ %666, %664 ], [ %920, %919 ]
  br i1 %619, label %731, label %698

698:                                              ; preds = %668
  %699 = load i8, ptr %697, align 1, !tbaa !48
  %700 = uitofp i8 %699 to float
  %701 = getelementptr inbounds i8, ptr %697, i64 4
  %702 = load i8, ptr %701, align 1, !tbaa !48
  %703 = uitofp i8 %702 to float
  %704 = fsub float %703, %700
  %705 = fadd float %700, 5.000000e-01
  %706 = getelementptr inbounds i8, ptr %697, i64 1
  %707 = load i8, ptr %706, align 1, !tbaa !48
  %708 = uitofp i8 %707 to float
  %709 = getelementptr inbounds i8, ptr %697, i64 5
  %710 = load i8, ptr %709, align 1, !tbaa !48
  %711 = uitofp i8 %710 to float
  %712 = fsub float %711, %708
  %713 = fadd float %708, 5.000000e-01
  %714 = getelementptr inbounds i8, ptr %697, i64 2
  %715 = load i8, ptr %714, align 1, !tbaa !48
  %716 = uitofp i8 %715 to float
  %717 = getelementptr inbounds i8, ptr %697, i64 6
  %718 = load i8, ptr %717, align 1, !tbaa !48
  %719 = uitofp i8 %718 to float
  %720 = fsub float %719, %716
  %721 = fadd float %716, 5.000000e-01
  %722 = getelementptr inbounds i8, ptr %697, i64 3
  %723 = load i8, ptr %722, align 1, !tbaa !48
  %724 = uitofp i8 %723 to float
  %725 = getelementptr inbounds i8, ptr %697, i64 7
  %726 = load i8, ptr %725, align 1, !tbaa !48
  %727 = uitofp i8 %726 to float
  %728 = fsub float %727, %724
  %729 = fadd float %724, 5.000000e-01
  %730 = getelementptr inbounds i8, ptr %697, i64 8
  br label %731

731:                                              ; preds = %698, %668
  %732 = phi ptr [ %730, %698 ], [ %697, %668 ]
  %733 = phi float [ %705, %698 ], [ %693, %668 ]
  %734 = phi float [ %703, %698 ], [ %692, %668 ]
  %735 = phi float [ %704, %698 ], [ %691, %668 ]
  %736 = phi float [ %713, %698 ], [ %690, %668 ]
  %737 = phi float [ %711, %698 ], [ %689, %668 ]
  %738 = phi float [ %712, %698 ], [ %688, %668 ]
  %739 = phi float [ %721, %698 ], [ %687, %668 ]
  %740 = phi float [ %719, %698 ], [ %686, %668 ]
  %741 = phi float [ %720, %698 ], [ %685, %668 ]
  %742 = phi float [ %729, %698 ], [ %684, %668 ]
  %743 = phi float [ %727, %698 ], [ %683, %668 ]
  %744 = phi float [ %728, %698 ], [ %682, %668 ]
  br i1 %638, label %766, label %745

745:                                              ; preds = %731
  %746 = load float, ptr %695, align 4, !tbaa !49
  %747 = getelementptr inbounds float, ptr %695, i64 4
  %748 = load float, ptr %747, align 4, !tbaa !49
  %749 = fsub float %748, %746
  %750 = getelementptr inbounds float, ptr %695, i64 1
  %751 = load float, ptr %750, align 4, !tbaa !49
  %752 = getelementptr inbounds float, ptr %695, i64 5
  %753 = load float, ptr %752, align 4, !tbaa !49
  %754 = fsub float %753, %751
  %755 = getelementptr inbounds float, ptr %695, i64 2
  %756 = load float, ptr %755, align 4, !tbaa !49
  %757 = getelementptr inbounds float, ptr %695, i64 6
  %758 = load float, ptr %757, align 4, !tbaa !49
  %759 = fsub float %758, %756
  %760 = getelementptr inbounds float, ptr %695, i64 3
  %761 = load float, ptr %760, align 4, !tbaa !49
  %762 = getelementptr inbounds float, ptr %695, i64 7
  %763 = load float, ptr %762, align 4, !tbaa !49
  %764 = fsub float %763, %761
  %765 = getelementptr inbounds float, ptr %695, i64 8
  br label %766

766:                                              ; preds = %745, %731
  %767 = phi ptr [ %765, %745 ], [ %695, %731 ]
  %768 = phi float [ %746, %745 ], [ %681, %731 ]
  %769 = phi float [ %748, %745 ], [ %680, %731 ]
  %770 = phi float [ %749, %745 ], [ %679, %731 ]
  %771 = phi float [ %751, %745 ], [ %678, %731 ]
  %772 = phi float [ %753, %745 ], [ %677, %731 ]
  %773 = phi float [ %754, %745 ], [ %676, %731 ]
  %774 = phi float [ %756, %745 ], [ %675, %731 ]
  %775 = phi float [ %758, %745 ], [ %674, %731 ]
  %776 = phi float [ %759, %745 ], [ %673, %731 ]
  %777 = phi float [ %761, %745 ], [ %672, %731 ]
  %778 = phi float [ %763, %745 ], [ %671, %731 ]
  %779 = phi float [ %764, %745 ], [ %670, %731 ]
  br i1 %667, label %780, label %919

780:                                              ; preds = %766, %914
  %781 = phi i32 [ %917, %914 ], [ %1, %766 ]
  %782 = phi float [ %889, %914 ], [ %779, %766 ]
  %783 = phi float [ %888, %914 ], [ %778, %766 ]
  %784 = phi float [ %887, %914 ], [ %777, %766 ]
  %785 = phi float [ %886, %914 ], [ %776, %766 ]
  %786 = phi float [ %885, %914 ], [ %775, %766 ]
  %787 = phi float [ %884, %914 ], [ %774, %766 ]
  %788 = phi float [ %883, %914 ], [ %773, %766 ]
  %789 = phi float [ %882, %914 ], [ %772, %766 ]
  %790 = phi float [ %881, %914 ], [ %771, %766 ]
  %791 = phi float [ %880, %914 ], [ %770, %766 ]
  %792 = phi float [ %879, %914 ], [ %769, %766 ]
  %793 = phi float [ %878, %914 ], [ %768, %766 ]
  %794 = phi float [ %877, %914 ], [ %744, %766 ]
  %795 = phi float [ %876, %914 ], [ %743, %766 ]
  %796 = phi float [ %875, %914 ], [ %742, %766 ]
  %797 = phi float [ %874, %914 ], [ %741, %766 ]
  %798 = phi float [ %873, %914 ], [ %740, %766 ]
  %799 = phi float [ %872, %914 ], [ %739, %766 ]
  %800 = phi float [ %871, %914 ], [ %738, %766 ]
  %801 = phi float [ %870, %914 ], [ %737, %766 ]
  %802 = phi float [ %869, %914 ], [ %736, %766 ]
  %803 = phi float [ %868, %914 ], [ %735, %766 ]
  %804 = phi float [ %867, %914 ], [ %734, %766 ]
  %805 = phi float [ %866, %914 ], [ %733, %766 ]
  %806 = phi float [ %916, %914 ], [ 0.000000e+00, %766 ]
  %807 = phi ptr [ %915, %914 ], [ %694, %766 ]
  %808 = phi ptr [ %864, %914 ], [ %767, %766 ]
  %809 = phi ptr [ %904, %914 ], [ %696, %766 ]
  %810 = phi ptr [ %863, %914 ], [ %732, %766 ]
  %811 = fcmp ult float %806, 1.000000e+00
  br i1 %811, label %862, label %812

812:                                              ; preds = %780
  %813 = fadd float %806, -1.000000e+00
  br i1 %619, label %835, label %814

814:                                              ; preds = %812
  %815 = load i8, ptr %810, align 1, !tbaa !48
  %816 = uitofp i8 %815 to float
  %817 = fsub float %816, %804
  %818 = fadd float %804, 5.000000e-01
  %819 = getelementptr inbounds i8, ptr %810, i64 1
  %820 = load i8, ptr %819, align 1, !tbaa !48
  %821 = uitofp i8 %820 to float
  %822 = fsub float %821, %801
  %823 = fadd float %801, 5.000000e-01
  %824 = getelementptr inbounds i8, ptr %810, i64 2
  %825 = load i8, ptr %824, align 1, !tbaa !48
  %826 = uitofp i8 %825 to float
  %827 = fsub float %826, %798
  %828 = fadd float %798, 5.000000e-01
  %829 = getelementptr inbounds i8, ptr %810, i64 3
  %830 = load i8, ptr %829, align 1, !tbaa !48
  %831 = uitofp i8 %830 to float
  %832 = fsub float %831, %795
  %833 = fadd float %795, 5.000000e-01
  %834 = getelementptr inbounds i8, ptr %810, i64 4
  br label %835

835:                                              ; preds = %814, %812
  %836 = phi ptr [ %834, %814 ], [ %810, %812 ]
  %837 = phi float [ %818, %814 ], [ %805, %812 ]
  %838 = phi float [ %816, %814 ], [ %804, %812 ]
  %839 = phi float [ %817, %814 ], [ %803, %812 ]
  %840 = phi float [ %823, %814 ], [ %802, %812 ]
  %841 = phi float [ %821, %814 ], [ %801, %812 ]
  %842 = phi float [ %822, %814 ], [ %800, %812 ]
  %843 = phi float [ %828, %814 ], [ %799, %812 ]
  %844 = phi float [ %826, %814 ], [ %798, %812 ]
  %845 = phi float [ %827, %814 ], [ %797, %812 ]
  %846 = phi float [ %833, %814 ], [ %796, %812 ]
  %847 = phi float [ %831, %814 ], [ %795, %812 ]
  %848 = phi float [ %832, %814 ], [ %794, %812 ]
  br i1 %638, label %862, label %849

849:                                              ; preds = %835
  %850 = load float, ptr %808, align 4, !tbaa !49
  %851 = fsub float %850, %792
  %852 = getelementptr inbounds float, ptr %808, i64 1
  %853 = load float, ptr %852, align 4, !tbaa !49
  %854 = fsub float %853, %789
  %855 = getelementptr inbounds float, ptr %808, i64 2
  %856 = load float, ptr %855, align 4, !tbaa !49
  %857 = fsub float %856, %786
  %858 = getelementptr inbounds float, ptr %808, i64 3
  %859 = load float, ptr %858, align 4, !tbaa !49
  %860 = fsub float %859, %783
  %861 = getelementptr inbounds float, ptr %808, i64 4
  br label %862

862:                                              ; preds = %849, %835, %780
  %863 = phi ptr [ %836, %849 ], [ %836, %835 ], [ %810, %780 ]
  %864 = phi ptr [ %861, %849 ], [ %808, %835 ], [ %808, %780 ]
  %865 = phi float [ %813, %849 ], [ %813, %835 ], [ %806, %780 ]
  %866 = phi float [ %837, %849 ], [ %837, %835 ], [ %805, %780 ]
  %867 = phi float [ %838, %849 ], [ %838, %835 ], [ %804, %780 ]
  %868 = phi float [ %839, %849 ], [ %839, %835 ], [ %803, %780 ]
  %869 = phi float [ %840, %849 ], [ %840, %835 ], [ %802, %780 ]
  %870 = phi float [ %841, %849 ], [ %841, %835 ], [ %801, %780 ]
  %871 = phi float [ %842, %849 ], [ %842, %835 ], [ %800, %780 ]
  %872 = phi float [ %843, %849 ], [ %843, %835 ], [ %799, %780 ]
  %873 = phi float [ %844, %849 ], [ %844, %835 ], [ %798, %780 ]
  %874 = phi float [ %845, %849 ], [ %845, %835 ], [ %797, %780 ]
  %875 = phi float [ %846, %849 ], [ %846, %835 ], [ %796, %780 ]
  %876 = phi float [ %847, %849 ], [ %847, %835 ], [ %795, %780 ]
  %877 = phi float [ %848, %849 ], [ %848, %835 ], [ %794, %780 ]
  %878 = phi float [ %792, %849 ], [ %793, %835 ], [ %793, %780 ]
  %879 = phi float [ %850, %849 ], [ %792, %835 ], [ %792, %780 ]
  %880 = phi float [ %851, %849 ], [ %791, %835 ], [ %791, %780 ]
  %881 = phi float [ %789, %849 ], [ %790, %835 ], [ %790, %780 ]
  %882 = phi float [ %853, %849 ], [ %789, %835 ], [ %789, %780 ]
  %883 = phi float [ %854, %849 ], [ %788, %835 ], [ %788, %780 ]
  %884 = phi float [ %786, %849 ], [ %787, %835 ], [ %787, %780 ]
  %885 = phi float [ %856, %849 ], [ %786, %835 ], [ %786, %780 ]
  %886 = phi float [ %857, %849 ], [ %785, %835 ], [ %785, %780 ]
  %887 = phi float [ %783, %849 ], [ %784, %835 ], [ %784, %780 ]
  %888 = phi float [ %859, %849 ], [ %783, %835 ], [ %783, %780 ]
  %889 = phi float [ %860, %849 ], [ %782, %835 ], [ %782, %780 ]
  br i1 %619, label %903, label %890

890:                                              ; preds = %862
  %891 = tail call float @llvm.fmuladd.f32(float %865, float %868, float %866)
  %892 = fptoui float %891 to i8
  store i8 %892, ptr %809, align 1, !tbaa !48
  %893 = tail call float @llvm.fmuladd.f32(float %865, float %871, float %869)
  %894 = fptoui float %893 to i8
  %895 = getelementptr inbounds i8, ptr %809, i64 1
  store i8 %894, ptr %895, align 1, !tbaa !48
  %896 = tail call float @llvm.fmuladd.f32(float %865, float %874, float %872)
  %897 = fptoui float %896 to i8
  %898 = getelementptr inbounds i8, ptr %809, i64 2
  store i8 %897, ptr %898, align 1, !tbaa !48
  %899 = tail call float @llvm.fmuladd.f32(float %865, float %877, float %875)
  %900 = fptoui float %899 to i8
  %901 = getelementptr inbounds i8, ptr %809, i64 3
  store i8 %900, ptr %901, align 1, !tbaa !48
  %902 = getelementptr inbounds i8, ptr %809, i64 4
  br label %903

903:                                              ; preds = %890, %862
  %904 = phi ptr [ %902, %890 ], [ %809, %862 ]
  br i1 %638, label %914, label %905

905:                                              ; preds = %903
  %906 = tail call float @llvm.fmuladd.f32(float %865, float %880, float %878)
  store float %906, ptr %807, align 4, !tbaa !49
  %907 = tail call float @llvm.fmuladd.f32(float %865, float %883, float %881)
  %908 = getelementptr inbounds float, ptr %807, i64 1
  store float %907, ptr %908, align 4, !tbaa !49
  %909 = tail call float @llvm.fmuladd.f32(float %865, float %886, float %884)
  %910 = getelementptr inbounds float, ptr %807, i64 2
  store float %909, ptr %910, align 4, !tbaa !49
  %911 = tail call float @llvm.fmuladd.f32(float %865, float %889, float %887)
  %912 = getelementptr inbounds float, ptr %807, i64 3
  store float %911, ptr %912, align 4, !tbaa !49
  %913 = getelementptr inbounds float, ptr %807, i64 4
  br label %914

914:                                              ; preds = %905, %903
  %915 = phi ptr [ %913, %905 ], [ %807, %903 ]
  %916 = fadd float %865, %660
  %917 = add nsw i32 %781, -1
  %918 = icmp sgt i32 %781, 1
  br i1 %918, label %780, label %919, !llvm.loop !73

919:                                              ; preds = %914, %766
  %920 = phi ptr [ %732, %766 ], [ %863, %914 ]
  %921 = phi ptr [ %696, %766 ], [ %904, %914 ]
  %922 = phi ptr [ %767, %766 ], [ %864, %914 ]
  %923 = phi ptr [ %694, %766 ], [ %915, %914 ]
  %924 = phi float [ %733, %766 ], [ %866, %914 ]
  %925 = phi float [ %734, %766 ], [ %867, %914 ]
  %926 = phi float [ %735, %766 ], [ %868, %914 ]
  %927 = phi float [ %736, %766 ], [ %869, %914 ]
  %928 = phi float [ %737, %766 ], [ %870, %914 ]
  %929 = phi float [ %738, %766 ], [ %871, %914 ]
  %930 = phi float [ %739, %766 ], [ %872, %914 ]
  %931 = phi float [ %740, %766 ], [ %873, %914 ]
  %932 = phi float [ %741, %766 ], [ %874, %914 ]
  %933 = phi float [ %742, %766 ], [ %875, %914 ]
  %934 = phi float [ %743, %766 ], [ %876, %914 ]
  %935 = phi float [ %744, %766 ], [ %877, %914 ]
  %936 = phi float [ %768, %766 ], [ %878, %914 ]
  %937 = phi float [ %769, %766 ], [ %879, %914 ]
  %938 = phi float [ %770, %766 ], [ %880, %914 ]
  %939 = phi float [ %771, %766 ], [ %881, %914 ]
  %940 = phi float [ %772, %766 ], [ %882, %914 ]
  %941 = phi float [ %773, %766 ], [ %883, %914 ]
  %942 = phi float [ %774, %766 ], [ %884, %914 ]
  %943 = phi float [ %775, %766 ], [ %885, %914 ]
  %944 = phi float [ %776, %766 ], [ %886, %914 ]
  %945 = phi float [ %777, %766 ], [ %887, %914 ]
  %946 = phi float [ %778, %766 ], [ %888, %914 ]
  %947 = phi float [ %779, %766 ], [ %889, %914 ]
  %948 = add nsw i32 %669, -1
  %949 = icmp sgt i32 %669, 1
  br i1 %949, label %668, label %950, !llvm.loop !74

950:                                              ; preds = %919, %652
  br i1 %619, label %955, label %951

951:                                              ; preds = %950
  tail call void @imb_freerectImBuf(ptr noundef %0) #9
  %952 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %953 = load i32, ptr %952, align 4, !tbaa !69
  %954 = or i32 %953, 1
  store i32 %954, ptr %952, align 4, !tbaa !69
  store ptr %635, ptr %6, align 8, !tbaa !34
  br label %955

955:                                              ; preds = %951, %950
  br i1 %638, label %960, label %956

956:                                              ; preds = %955
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #9
  %957 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %958 = load i32, ptr %957, align 4, !tbaa !69
  %959 = or i32 %958, 32
  store i32 %959, ptr %957, align 4, !tbaa !69
  store ptr %653, ptr %636, align 8, !tbaa !43
  br label %960

960:                                              ; preds = %956, %955
  store i32 %1, ptr %14, align 8, !tbaa !44
  br label %961

961:                                              ; preds = %960, %650, %648, %625, %620, %614, %613
  br i1 %312, label %1347, label %962

962:                                              ; preds = %961
  %963 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %964 = load i32, ptr %963, align 4, !tbaa !45
  %965 = icmp ult i32 %964, %2
  br i1 %965, label %966, label %1347

966:                                              ; preds = %962
  %967 = load ptr, ptr %6, align 8, !tbaa !34
  %968 = icmp eq ptr %967, null
  br i1 %968, label %969, label %974

969:                                              ; preds = %966
  %970 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %971 = load ptr, ptr %970, align 8, !tbaa !43
  %972 = icmp eq ptr %971, null
  br i1 %972, label %1347, label %973

973:                                              ; preds = %969
  br i1 %968, label %982, label %974

974:                                              ; preds = %966, %973
  %975 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %976 = load i32, ptr %14, align 8, !tbaa !44
  %977 = mul nsw i32 %976, %2
  %978 = sext i32 %977 to i64
  %979 = shl nsw i64 %978, 2
  %980 = tail call ptr %975(i64 noundef %979, ptr noundef nonnull @.str.11) #9
  %981 = icmp eq ptr %980, null
  br i1 %981, label %1347, label %982

982:                                              ; preds = %974, %973
  %983 = phi ptr [ %980, %974 ], [ null, %973 ]
  %984 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %985 = load ptr, ptr %984, align 8, !tbaa !43
  %986 = icmp eq ptr %985, null
  br i1 %986, label %999, label %987

987:                                              ; preds = %982
  %988 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %989 = load i32, ptr %14, align 8, !tbaa !44
  %990 = mul nsw i32 %989, %2
  %991 = sext i32 %990 to i64
  %992 = shl nsw i64 %991, 4
  %993 = tail call ptr %988(i64 noundef %992, ptr noundef nonnull @.str.12) #9
  %994 = icmp eq ptr %993, null
  br i1 %994, label %995, label %999

995:                                              ; preds = %987
  %996 = icmp eq ptr %983, null
  br i1 %996, label %1347, label %997

997:                                              ; preds = %995
  %998 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %998(ptr noundef nonnull %983) #9
  br label %1347

999:                                              ; preds = %987, %982
  %1000 = phi ptr [ %993, %987 ], [ null, %982 ]
  %1001 = load i32, ptr %963, align 4, !tbaa !45
  %1002 = sitofp i32 %1001 to double
  %1003 = fadd double %1002, -1.001000e+00
  %1004 = sitofp i32 %2 to double
  %1005 = fadd double %1004, -1.000000e+00
  %1006 = fdiv double %1003, %1005
  %1007 = fptrunc double %1006 to float
  %1008 = load i32, ptr %14, align 8, !tbaa !44
  %1009 = icmp sgt i32 %1008, 0
  br i1 %1009, label %1010, label %1336

1010:                                             ; preds = %999
  %1011 = load ptr, ptr %984, align 8, !tbaa !43
  %1012 = load ptr, ptr %6, align 8, !tbaa !34
  %1013 = shl nsw i32 %1008, 2
  %1014 = zext nneg i32 %1013 to i64
  %1015 = or disjoint i32 %1013, 1
  %1016 = zext nneg i32 %1015 to i64
  %1017 = or disjoint i32 %1013, 2
  %1018 = zext nneg i32 %1017 to i64
  %1019 = or disjoint i32 %1013, 3
  %1020 = zext nneg i32 %1019 to i64
  %1021 = shl nsw i32 %1008, 3
  %1022 = zext nneg i32 %1021 to i64
  %1023 = zext nneg i32 %1013 to i64
  %1024 = or disjoint i32 %1013, 1
  %1025 = zext nneg i32 %1024 to i64
  %1026 = or disjoint i32 %1013, 2
  %1027 = zext nneg i32 %1026 to i64
  %1028 = or disjoint i32 %1013, 3
  %1029 = zext nneg i32 %1028 to i64
  %1030 = shl nsw i32 %1008, 3
  %1031 = zext nneg i32 %1030 to i64
  %1032 = icmp sgt i32 %2, 0
  %1033 = zext nneg i32 %1013 to i64
  %1034 = zext nneg i32 %1013 to i64
  %1035 = zext nneg i32 %1013 to i64
  %1036 = zext nneg i32 %1013 to i64
  %1037 = zext nneg i32 %1008 to i64
  br label %1038

1038:                                             ; preds = %1010, %1305
  %1039 = phi i64 [ %1037, %1010 ], [ %1334, %1305 ]
  %1040 = phi float [ 0.000000e+00, %1010 ], [ %1333, %1305 ]
  %1041 = phi float [ 0.000000e+00, %1010 ], [ %1332, %1305 ]
  %1042 = phi float [ 0.000000e+00, %1010 ], [ %1331, %1305 ]
  %1043 = phi float [ 0.000000e+00, %1010 ], [ %1330, %1305 ]
  %1044 = phi float [ 0.000000e+00, %1010 ], [ %1329, %1305 ]
  %1045 = phi float [ 0.000000e+00, %1010 ], [ %1328, %1305 ]
  %1046 = phi float [ 0.000000e+00, %1010 ], [ %1327, %1305 ]
  %1047 = phi float [ 0.000000e+00, %1010 ], [ %1326, %1305 ]
  %1048 = phi float [ 0.000000e+00, %1010 ], [ %1325, %1305 ]
  %1049 = phi float [ 0.000000e+00, %1010 ], [ %1324, %1305 ]
  %1050 = phi float [ 0.000000e+00, %1010 ], [ %1323, %1305 ]
  %1051 = phi float [ 0.000000e+00, %1010 ], [ %1322, %1305 ]
  %1052 = phi float [ 0.000000e+00, %1010 ], [ %1321, %1305 ]
  %1053 = phi float [ 0.000000e+00, %1010 ], [ %1320, %1305 ]
  %1054 = phi float [ 0.000000e+00, %1010 ], [ %1319, %1305 ]
  %1055 = phi float [ 0.000000e+00, %1010 ], [ %1318, %1305 ]
  %1056 = phi float [ 0.000000e+00, %1010 ], [ %1317, %1305 ]
  %1057 = phi float [ 0.000000e+00, %1010 ], [ %1316, %1305 ]
  %1058 = phi float [ 0.000000e+00, %1010 ], [ %1315, %1305 ]
  %1059 = phi float [ 0.000000e+00, %1010 ], [ %1314, %1305 ]
  %1060 = phi float [ 0.000000e+00, %1010 ], [ %1313, %1305 ]
  %1061 = phi float [ 0.000000e+00, %1010 ], [ %1312, %1305 ]
  %1062 = phi float [ 0.000000e+00, %1010 ], [ %1311, %1305 ]
  %1063 = phi float [ 0.000000e+00, %1010 ], [ %1310, %1305 ]
  %1064 = phi ptr [ %1012, %1010 ], [ %1309, %1305 ]
  %1065 = phi ptr [ %1000, %1010 ], [ %1308, %1305 ]
  %1066 = phi ptr [ %1011, %1010 ], [ %1307, %1305 ]
  %1067 = phi ptr [ %983, %1010 ], [ %1306, %1305 ]
  br i1 %968, label %1108, label %1068

1068:                                             ; preds = %1038
  %1069 = load ptr, ptr %6, align 8, !tbaa !34
  %1070 = trunc i64 %1039 to i32
  %1071 = shl i32 %1070, 2
  %1072 = add i32 %1071, -4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds i8, ptr %1069, i64 %1073
  %1075 = getelementptr inbounds i8, ptr %983, i64 %1073
  %1076 = load i8, ptr %1074, align 1, !tbaa !48
  %1077 = uitofp i8 %1076 to float
  %1078 = getelementptr inbounds i8, ptr %1074, i64 %1014
  %1079 = load i8, ptr %1078, align 1, !tbaa !48
  %1080 = uitofp i8 %1079 to float
  %1081 = fsub float %1080, %1077
  %1082 = fadd float %1077, 5.000000e-01
  %1083 = getelementptr inbounds i8, ptr %1074, i64 1
  %1084 = load i8, ptr %1083, align 1, !tbaa !48
  %1085 = uitofp i8 %1084 to float
  %1086 = getelementptr inbounds i8, ptr %1074, i64 %1016
  %1087 = load i8, ptr %1086, align 1, !tbaa !48
  %1088 = uitofp i8 %1087 to float
  %1089 = fsub float %1088, %1085
  %1090 = fadd float %1085, 5.000000e-01
  %1091 = getelementptr inbounds i8, ptr %1074, i64 2
  %1092 = load i8, ptr %1091, align 1, !tbaa !48
  %1093 = uitofp i8 %1092 to float
  %1094 = getelementptr inbounds i8, ptr %1074, i64 %1018
  %1095 = load i8, ptr %1094, align 1, !tbaa !48
  %1096 = uitofp i8 %1095 to float
  %1097 = fsub float %1096, %1093
  %1098 = fadd float %1093, 5.000000e-01
  %1099 = getelementptr inbounds i8, ptr %1074, i64 3
  %1100 = load i8, ptr %1099, align 1, !tbaa !48
  %1101 = uitofp i8 %1100 to float
  %1102 = getelementptr inbounds i8, ptr %1074, i64 %1020
  %1103 = load i8, ptr %1102, align 1, !tbaa !48
  %1104 = uitofp i8 %1103 to float
  %1105 = fsub float %1104, %1101
  %1106 = fadd float %1101, 5.000000e-01
  %1107 = getelementptr inbounds i8, ptr %1074, i64 %1022
  br label %1108

1108:                                             ; preds = %1068, %1038
  %1109 = phi ptr [ %1075, %1068 ], [ %1067, %1038 ]
  %1110 = phi ptr [ %1107, %1068 ], [ %1064, %1038 ]
  %1111 = phi float [ %1082, %1068 ], [ %1063, %1038 ]
  %1112 = phi float [ %1080, %1068 ], [ %1062, %1038 ]
  %1113 = phi float [ %1081, %1068 ], [ %1061, %1038 ]
  %1114 = phi float [ %1090, %1068 ], [ %1060, %1038 ]
  %1115 = phi float [ %1088, %1068 ], [ %1059, %1038 ]
  %1116 = phi float [ %1089, %1068 ], [ %1058, %1038 ]
  %1117 = phi float [ %1098, %1068 ], [ %1057, %1038 ]
  %1118 = phi float [ %1096, %1068 ], [ %1056, %1038 ]
  %1119 = phi float [ %1097, %1068 ], [ %1055, %1038 ]
  %1120 = phi float [ %1106, %1068 ], [ %1054, %1038 ]
  %1121 = phi float [ %1104, %1068 ], [ %1053, %1038 ]
  %1122 = phi float [ %1105, %1068 ], [ %1052, %1038 ]
  br i1 %986, label %1151, label %1123

1123:                                             ; preds = %1108
  %1124 = load ptr, ptr %984, align 8, !tbaa !43
  %1125 = trunc i64 %1039 to i32
  %1126 = shl i32 %1125, 2
  %1127 = add i32 %1126, -4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds float, ptr %1124, i64 %1128
  %1130 = getelementptr inbounds float, ptr %1000, i64 %1128
  %1131 = load float, ptr %1129, align 4, !tbaa !49
  %1132 = getelementptr inbounds float, ptr %1129, i64 %1023
  %1133 = load float, ptr %1132, align 4, !tbaa !49
  %1134 = fsub float %1133, %1131
  %1135 = getelementptr inbounds float, ptr %1129, i64 1
  %1136 = load float, ptr %1135, align 4, !tbaa !49
  %1137 = getelementptr inbounds float, ptr %1129, i64 %1025
  %1138 = load float, ptr %1137, align 4, !tbaa !49
  %1139 = fsub float %1138, %1136
  %1140 = getelementptr inbounds float, ptr %1129, i64 2
  %1141 = load float, ptr %1140, align 4, !tbaa !49
  %1142 = getelementptr inbounds float, ptr %1129, i64 %1027
  %1143 = load float, ptr %1142, align 4, !tbaa !49
  %1144 = fsub float %1143, %1141
  %1145 = getelementptr inbounds float, ptr %1129, i64 3
  %1146 = load float, ptr %1145, align 4, !tbaa !49
  %1147 = getelementptr inbounds float, ptr %1129, i64 %1029
  %1148 = load float, ptr %1147, align 4, !tbaa !49
  %1149 = fsub float %1148, %1146
  %1150 = getelementptr inbounds float, ptr %1129, i64 %1031
  br label %1151

1151:                                             ; preds = %1123, %1108
  %1152 = phi ptr [ %1150, %1123 ], [ %1066, %1108 ]
  %1153 = phi ptr [ %1130, %1123 ], [ %1065, %1108 ]
  %1154 = phi float [ %1131, %1123 ], [ %1051, %1108 ]
  %1155 = phi float [ %1133, %1123 ], [ %1050, %1108 ]
  %1156 = phi float [ %1134, %1123 ], [ %1049, %1108 ]
  %1157 = phi float [ %1136, %1123 ], [ %1048, %1108 ]
  %1158 = phi float [ %1138, %1123 ], [ %1047, %1108 ]
  %1159 = phi float [ %1139, %1123 ], [ %1046, %1108 ]
  %1160 = phi float [ %1141, %1123 ], [ %1045, %1108 ]
  %1161 = phi float [ %1143, %1123 ], [ %1044, %1108 ]
  %1162 = phi float [ %1144, %1123 ], [ %1043, %1108 ]
  %1163 = phi float [ %1146, %1123 ], [ %1042, %1108 ]
  %1164 = phi float [ %1148, %1123 ], [ %1041, %1108 ]
  %1165 = phi float [ %1149, %1123 ], [ %1040, %1108 ]
  br i1 %1032, label %1166, label %1305

1166:                                             ; preds = %1151, %1300
  %1167 = phi i32 [ %1303, %1300 ], [ %2, %1151 ]
  %1168 = phi float [ %1275, %1300 ], [ %1165, %1151 ]
  %1169 = phi float [ %1274, %1300 ], [ %1164, %1151 ]
  %1170 = phi float [ %1273, %1300 ], [ %1163, %1151 ]
  %1171 = phi float [ %1272, %1300 ], [ %1162, %1151 ]
  %1172 = phi float [ %1271, %1300 ], [ %1161, %1151 ]
  %1173 = phi float [ %1270, %1300 ], [ %1160, %1151 ]
  %1174 = phi float [ %1269, %1300 ], [ %1159, %1151 ]
  %1175 = phi float [ %1268, %1300 ], [ %1158, %1151 ]
  %1176 = phi float [ %1267, %1300 ], [ %1157, %1151 ]
  %1177 = phi float [ %1266, %1300 ], [ %1156, %1151 ]
  %1178 = phi float [ %1265, %1300 ], [ %1155, %1151 ]
  %1179 = phi float [ %1264, %1300 ], [ %1154, %1151 ]
  %1180 = phi float [ %1263, %1300 ], [ %1122, %1151 ]
  %1181 = phi float [ %1262, %1300 ], [ %1121, %1151 ]
  %1182 = phi float [ %1261, %1300 ], [ %1120, %1151 ]
  %1183 = phi float [ %1260, %1300 ], [ %1119, %1151 ]
  %1184 = phi float [ %1259, %1300 ], [ %1118, %1151 ]
  %1185 = phi float [ %1258, %1300 ], [ %1117, %1151 ]
  %1186 = phi float [ %1257, %1300 ], [ %1116, %1151 ]
  %1187 = phi float [ %1256, %1300 ], [ %1115, %1151 ]
  %1188 = phi float [ %1255, %1300 ], [ %1114, %1151 ]
  %1189 = phi float [ %1254, %1300 ], [ %1113, %1151 ]
  %1190 = phi float [ %1253, %1300 ], [ %1112, %1151 ]
  %1191 = phi float [ %1252, %1300 ], [ %1111, %1151 ]
  %1192 = phi ptr [ %1251, %1300 ], [ %1110, %1151 ]
  %1193 = phi float [ %1302, %1300 ], [ 0.000000e+00, %1151 ]
  %1194 = phi ptr [ %1301, %1300 ], [ %1153, %1151 ]
  %1195 = phi ptr [ %1249, %1300 ], [ %1152, %1151 ]
  %1196 = phi ptr [ %1290, %1300 ], [ %1109, %1151 ]
  %1197 = fcmp ult float %1193, 1.000000e+00
  br i1 %1197, label %1248, label %1198

1198:                                             ; preds = %1166
  %1199 = fadd float %1193, -1.000000e+00
  br i1 %968, label %1221, label %1200

1200:                                             ; preds = %1198
  %1201 = load i8, ptr %1192, align 1, !tbaa !48
  %1202 = uitofp i8 %1201 to float
  %1203 = fsub float %1202, %1190
  %1204 = fadd float %1190, 5.000000e-01
  %1205 = getelementptr inbounds i8, ptr %1192, i64 1
  %1206 = load i8, ptr %1205, align 1, !tbaa !48
  %1207 = uitofp i8 %1206 to float
  %1208 = fsub float %1207, %1187
  %1209 = fadd float %1187, 5.000000e-01
  %1210 = getelementptr inbounds i8, ptr %1192, i64 2
  %1211 = load i8, ptr %1210, align 1, !tbaa !48
  %1212 = uitofp i8 %1211 to float
  %1213 = fsub float %1212, %1184
  %1214 = fadd float %1184, 5.000000e-01
  %1215 = getelementptr inbounds i8, ptr %1192, i64 3
  %1216 = load i8, ptr %1215, align 1, !tbaa !48
  %1217 = uitofp i8 %1216 to float
  %1218 = fsub float %1217, %1181
  %1219 = fadd float %1181, 5.000000e-01
  %1220 = getelementptr inbounds i8, ptr %1192, i64 %1033
  br label %1221

1221:                                             ; preds = %1200, %1198
  %1222 = phi ptr [ %1220, %1200 ], [ %1192, %1198 ]
  %1223 = phi float [ %1204, %1200 ], [ %1191, %1198 ]
  %1224 = phi float [ %1202, %1200 ], [ %1190, %1198 ]
  %1225 = phi float [ %1203, %1200 ], [ %1189, %1198 ]
  %1226 = phi float [ %1209, %1200 ], [ %1188, %1198 ]
  %1227 = phi float [ %1207, %1200 ], [ %1187, %1198 ]
  %1228 = phi float [ %1208, %1200 ], [ %1186, %1198 ]
  %1229 = phi float [ %1214, %1200 ], [ %1185, %1198 ]
  %1230 = phi float [ %1212, %1200 ], [ %1184, %1198 ]
  %1231 = phi float [ %1213, %1200 ], [ %1183, %1198 ]
  %1232 = phi float [ %1219, %1200 ], [ %1182, %1198 ]
  %1233 = phi float [ %1217, %1200 ], [ %1181, %1198 ]
  %1234 = phi float [ %1218, %1200 ], [ %1180, %1198 ]
  br i1 %986, label %1248, label %1235

1235:                                             ; preds = %1221
  %1236 = load float, ptr %1195, align 4, !tbaa !49
  %1237 = fsub float %1236, %1178
  %1238 = getelementptr inbounds float, ptr %1195, i64 1
  %1239 = load float, ptr %1238, align 4, !tbaa !49
  %1240 = fsub float %1239, %1175
  %1241 = getelementptr inbounds float, ptr %1195, i64 2
  %1242 = load float, ptr %1241, align 4, !tbaa !49
  %1243 = fsub float %1242, %1172
  %1244 = getelementptr inbounds float, ptr %1195, i64 3
  %1245 = load float, ptr %1244, align 4, !tbaa !49
  %1246 = fsub float %1245, %1169
  %1247 = getelementptr inbounds float, ptr %1195, i64 %1034
  br label %1248

1248:                                             ; preds = %1235, %1221, %1166
  %1249 = phi ptr [ %1247, %1235 ], [ %1195, %1221 ], [ %1195, %1166 ]
  %1250 = phi float [ %1199, %1235 ], [ %1199, %1221 ], [ %1193, %1166 ]
  %1251 = phi ptr [ %1222, %1235 ], [ %1222, %1221 ], [ %1192, %1166 ]
  %1252 = phi float [ %1223, %1235 ], [ %1223, %1221 ], [ %1191, %1166 ]
  %1253 = phi float [ %1224, %1235 ], [ %1224, %1221 ], [ %1190, %1166 ]
  %1254 = phi float [ %1225, %1235 ], [ %1225, %1221 ], [ %1189, %1166 ]
  %1255 = phi float [ %1226, %1235 ], [ %1226, %1221 ], [ %1188, %1166 ]
  %1256 = phi float [ %1227, %1235 ], [ %1227, %1221 ], [ %1187, %1166 ]
  %1257 = phi float [ %1228, %1235 ], [ %1228, %1221 ], [ %1186, %1166 ]
  %1258 = phi float [ %1229, %1235 ], [ %1229, %1221 ], [ %1185, %1166 ]
  %1259 = phi float [ %1230, %1235 ], [ %1230, %1221 ], [ %1184, %1166 ]
  %1260 = phi float [ %1231, %1235 ], [ %1231, %1221 ], [ %1183, %1166 ]
  %1261 = phi float [ %1232, %1235 ], [ %1232, %1221 ], [ %1182, %1166 ]
  %1262 = phi float [ %1233, %1235 ], [ %1233, %1221 ], [ %1181, %1166 ]
  %1263 = phi float [ %1234, %1235 ], [ %1234, %1221 ], [ %1180, %1166 ]
  %1264 = phi float [ %1178, %1235 ], [ %1179, %1221 ], [ %1179, %1166 ]
  %1265 = phi float [ %1236, %1235 ], [ %1178, %1221 ], [ %1178, %1166 ]
  %1266 = phi float [ %1237, %1235 ], [ %1177, %1221 ], [ %1177, %1166 ]
  %1267 = phi float [ %1175, %1235 ], [ %1176, %1221 ], [ %1176, %1166 ]
  %1268 = phi float [ %1239, %1235 ], [ %1175, %1221 ], [ %1175, %1166 ]
  %1269 = phi float [ %1240, %1235 ], [ %1174, %1221 ], [ %1174, %1166 ]
  %1270 = phi float [ %1172, %1235 ], [ %1173, %1221 ], [ %1173, %1166 ]
  %1271 = phi float [ %1242, %1235 ], [ %1172, %1221 ], [ %1172, %1166 ]
  %1272 = phi float [ %1243, %1235 ], [ %1171, %1221 ], [ %1171, %1166 ]
  %1273 = phi float [ %1169, %1235 ], [ %1170, %1221 ], [ %1170, %1166 ]
  %1274 = phi float [ %1245, %1235 ], [ %1169, %1221 ], [ %1169, %1166 ]
  %1275 = phi float [ %1246, %1235 ], [ %1168, %1221 ], [ %1168, %1166 ]
  br i1 %968, label %1289, label %1276

1276:                                             ; preds = %1248
  %1277 = tail call float @llvm.fmuladd.f32(float %1250, float %1254, float %1252)
  %1278 = fptoui float %1277 to i8
  store i8 %1278, ptr %1196, align 1, !tbaa !48
  %1279 = tail call float @llvm.fmuladd.f32(float %1250, float %1257, float %1255)
  %1280 = fptoui float %1279 to i8
  %1281 = getelementptr inbounds i8, ptr %1196, i64 1
  store i8 %1280, ptr %1281, align 1, !tbaa !48
  %1282 = tail call float @llvm.fmuladd.f32(float %1250, float %1260, float %1258)
  %1283 = fptoui float %1282 to i8
  %1284 = getelementptr inbounds i8, ptr %1196, i64 2
  store i8 %1283, ptr %1284, align 1, !tbaa !48
  %1285 = tail call float @llvm.fmuladd.f32(float %1250, float %1263, float %1261)
  %1286 = fptoui float %1285 to i8
  %1287 = getelementptr inbounds i8, ptr %1196, i64 3
  store i8 %1286, ptr %1287, align 1, !tbaa !48
  %1288 = getelementptr inbounds i8, ptr %1196, i64 %1035
  br label %1289

1289:                                             ; preds = %1276, %1248
  %1290 = phi ptr [ %1288, %1276 ], [ %1196, %1248 ]
  br i1 %986, label %1300, label %1291

1291:                                             ; preds = %1289
  %1292 = tail call float @llvm.fmuladd.f32(float %1250, float %1266, float %1264)
  store float %1292, ptr %1194, align 4, !tbaa !49
  %1293 = tail call float @llvm.fmuladd.f32(float %1250, float %1269, float %1267)
  %1294 = getelementptr inbounds float, ptr %1194, i64 1
  store float %1293, ptr %1294, align 4, !tbaa !49
  %1295 = tail call float @llvm.fmuladd.f32(float %1250, float %1272, float %1270)
  %1296 = getelementptr inbounds float, ptr %1194, i64 2
  store float %1295, ptr %1296, align 4, !tbaa !49
  %1297 = tail call float @llvm.fmuladd.f32(float %1250, float %1275, float %1273)
  %1298 = getelementptr inbounds float, ptr %1194, i64 3
  store float %1297, ptr %1298, align 4, !tbaa !49
  %1299 = getelementptr inbounds float, ptr %1194, i64 %1036
  br label %1300

1300:                                             ; preds = %1291, %1289
  %1301 = phi ptr [ %1299, %1291 ], [ %1194, %1289 ]
  %1302 = fadd float %1250, %1007
  %1303 = add nsw i32 %1167, -1
  %1304 = icmp sgt i32 %1167, 1
  br i1 %1304, label %1166, label %1305, !llvm.loop !75

1305:                                             ; preds = %1300, %1151
  %1306 = phi ptr [ %1109, %1151 ], [ %1290, %1300 ]
  %1307 = phi ptr [ %1152, %1151 ], [ %1249, %1300 ]
  %1308 = phi ptr [ %1153, %1151 ], [ %1301, %1300 ]
  %1309 = phi ptr [ %1110, %1151 ], [ %1251, %1300 ]
  %1310 = phi float [ %1111, %1151 ], [ %1252, %1300 ]
  %1311 = phi float [ %1112, %1151 ], [ %1253, %1300 ]
  %1312 = phi float [ %1113, %1151 ], [ %1254, %1300 ]
  %1313 = phi float [ %1114, %1151 ], [ %1255, %1300 ]
  %1314 = phi float [ %1115, %1151 ], [ %1256, %1300 ]
  %1315 = phi float [ %1116, %1151 ], [ %1257, %1300 ]
  %1316 = phi float [ %1117, %1151 ], [ %1258, %1300 ]
  %1317 = phi float [ %1118, %1151 ], [ %1259, %1300 ]
  %1318 = phi float [ %1119, %1151 ], [ %1260, %1300 ]
  %1319 = phi float [ %1120, %1151 ], [ %1261, %1300 ]
  %1320 = phi float [ %1121, %1151 ], [ %1262, %1300 ]
  %1321 = phi float [ %1122, %1151 ], [ %1263, %1300 ]
  %1322 = phi float [ %1154, %1151 ], [ %1264, %1300 ]
  %1323 = phi float [ %1155, %1151 ], [ %1265, %1300 ]
  %1324 = phi float [ %1156, %1151 ], [ %1266, %1300 ]
  %1325 = phi float [ %1157, %1151 ], [ %1267, %1300 ]
  %1326 = phi float [ %1158, %1151 ], [ %1268, %1300 ]
  %1327 = phi float [ %1159, %1151 ], [ %1269, %1300 ]
  %1328 = phi float [ %1160, %1151 ], [ %1270, %1300 ]
  %1329 = phi float [ %1161, %1151 ], [ %1271, %1300 ]
  %1330 = phi float [ %1162, %1151 ], [ %1272, %1300 ]
  %1331 = phi float [ %1163, %1151 ], [ %1273, %1300 ]
  %1332 = phi float [ %1164, %1151 ], [ %1274, %1300 ]
  %1333 = phi float [ %1165, %1151 ], [ %1275, %1300 ]
  %1334 = add nsw i64 %1039, -1
  %1335 = icmp sgt i64 %1039, 1
  br i1 %1335, label %1038, label %1336, !llvm.loop !76

1336:                                             ; preds = %1305, %999
  br i1 %968, label %1341, label %1337

1337:                                             ; preds = %1336
  tail call void @imb_freerectImBuf(ptr noundef %0) #9
  %1338 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %1339 = load i32, ptr %1338, align 4, !tbaa !69
  %1340 = or i32 %1339, 1
  store i32 %1340, ptr %1338, align 4, !tbaa !69
  store ptr %983, ptr %6, align 8, !tbaa !34
  br label %1341

1341:                                             ; preds = %1337, %1336
  br i1 %986, label %1346, label %1342

1342:                                             ; preds = %1341
  tail call void @imb_freerectfloatImBuf(ptr noundef %0) #9
  %1343 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %1344 = load i32, ptr %1343, align 4, !tbaa !69
  %1345 = or i32 %1344, 32
  store i32 %1345, ptr %1343, align 4, !tbaa !69
  store ptr %1000, ptr %984, align 8, !tbaa !43
  br label %1346

1346:                                             ; preds = %1342, %1341
  store i32 %2, ptr %963, align 4, !tbaa !45
  br label %1347

1347:                                             ; preds = %1346, %997, %995, %974, %969, %961, %962, %17, %9, %3
  %1348 = phi ptr [ null, %3 ], [ %0, %9 ], [ %0, %17 ], [ %0, %962 ], [ %0, %961 ], [ %0, %969 ], [ %0, %974 ], [ %0, %995 ], [ %0, %997 ], [ %0, %1346 ]
  ret ptr %1348
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scalefast_Z_ImBuf(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %9 = mul nsw i32 %2, %1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %8(i64 noundef %11, ptr noundef nonnull @.str.4) #9
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
  %37 = load ptr, ptr %4, align 8, !tbaa !77
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
  %60 = icmp sgt i32 %52, 1
  br i1 %60, label %49, label %61, !llvm.loop !78

61:                                               ; preds = %49, %39
  %62 = phi ptr [ %40, %39 ], [ %57, %49 ]
  %63 = add nsw i32 %42, -1
  %64 = icmp sgt i32 %42, 1
  br i1 %64, label %39, label %65, !llvm.loop !79

65:                                               ; preds = %61, %14
  tail call void @IMB_freezbufImBuf(ptr noundef %0) #9
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !69
  %68 = or i32 %67, 8
  store i32 %68, ptr %66, align 4, !tbaa !69
  store ptr %12, ptr %4, align 8, !tbaa !77
  br label %69

69:                                               ; preds = %3, %65, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IMB_scalefastImBuf(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %135, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  %12 = and i1 %8, %11
  br i1 %12, label %135, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %135, label %21

21:                                               ; preds = %17, %13
  br i1 %8, label %29, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %24 = mul i32 %2, %1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @.str) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %135, label %29

29:                                               ; preds = %22, %21
  %30 = phi ptr [ null, %21 ], [ %27, %22 ]
  br i1 %11, label %42, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %33 = mul i32 %2, %1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 4
  %36 = tail call ptr %32(i64 noundef %35, ptr noundef nonnull @.str.1) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = icmp eq ptr %30, null
  br i1 %39, label %135, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %41(ptr noundef nonnull %30) #9
  br label %135

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
  br i1 %63, label %64, label %124

64:                                               ; preds = %42
  %65 = icmp slt i32 %1, 1
  %66 = icmp slt i32 %1, 1
  %67 = or i1 %8, %65
  %68 = or i1 %11, %66
  br label %69

69:                                               ; preds = %64, %120
  %70 = phi ptr [ null, %64 ], [ %84, %120 ]
  %71 = phi i32 [ 32768, %64 ], [ %94, %120 ]
  %72 = phi i32 [ %2, %64 ], [ %122, %120 ]
  %73 = phi ptr [ %43, %64 ], [ %121, %120 ]
  %74 = phi ptr [ null, %64 ], [ %93, %120 ]
  %75 = phi ptr [ %30, %64 ], [ %108, %120 ]
  br i1 %8, label %83, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %6, align 8, !tbaa !34
  %78 = ashr i32 %71, 16
  %79 = load i32, ptr %14, align 8, !tbaa !44
  %80 = mul nsw i32 %79, %78
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %77, i64 %81
  br label %83

83:                                               ; preds = %76, %69
  %84 = phi ptr [ %82, %76 ], [ %70, %69 ]
  br i1 %11, label %92, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %9, align 8, !tbaa !43
  %87 = ashr i32 %71, 16
  %88 = load i32, ptr %14, align 8, !tbaa !44
  %89 = mul nsw i32 %88, %87
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.imbufRGBA, ptr %86, i64 %90
  br label %92

92:                                               ; preds = %85, %83
  %93 = phi ptr [ %91, %85 ], [ %74, %83 ]
  %94 = add nsw i32 %71, %62
  br i1 %67, label %107, label %95

95:                                               ; preds = %92, %95
  %96 = phi i32 [ %104, %95 ], [ 32768, %92 ]
  %97 = phi i32 [ %105, %95 ], [ %1, %92 ]
  %98 = phi ptr [ %103, %95 ], [ %75, %92 ]
  %99 = ashr i32 %96, 16
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %84, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !54
  %103 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %102, ptr %98, align 4, !tbaa !54
  %104 = add nsw i32 %96, %52
  %105 = add nsw i32 %97, -1
  %106 = icmp sgt i32 %97, 1
  br i1 %106, label %95, label %107, !llvm.loop !80

107:                                              ; preds = %95, %92
  %108 = phi ptr [ %75, %92 ], [ %103, %95 ]
  br i1 %68, label %120, label %109

109:                                              ; preds = %107, %109
  %110 = phi i32 [ %117, %109 ], [ 32768, %107 ]
  %111 = phi i32 [ %118, %109 ], [ %1, %107 ]
  %112 = phi ptr [ %113, %109 ], [ %73, %107 ]
  %113 = getelementptr inbounds %struct.imbufRGBA, ptr %112, i64 1
  %114 = ashr i32 %110, 16
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.imbufRGBA, ptr %93, i64 %115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %112, ptr noundef nonnull align 4 dereferenceable(16) %116, i64 16, i1 false), !tbaa.struct !81
  %117 = add nsw i32 %110, %52
  %118 = add nsw i32 %111, -1
  %119 = icmp sgt i32 %111, 1
  br i1 %119, label %109, label %120, !llvm.loop !82

120:                                              ; preds = %109, %107
  %121 = phi ptr [ %73, %107 ], [ %113, %109 ]
  %122 = add nsw i32 %72, -1
  %123 = icmp sgt i32 %72, 1
  br i1 %123, label %69, label %124, !llvm.loop !83

124:                                              ; preds = %120, %42
  br i1 %8, label %129, label %125

125:                                              ; preds = %124
  tail call void @imb_freerectImBuf(ptr noundef nonnull %0) #9
  %126 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %127 = load i32, ptr %126, align 4, !tbaa !69
  %128 = or i32 %127, 1
  store i32 %128, ptr %126, align 4, !tbaa !69
  store ptr %30, ptr %6, align 8, !tbaa !34
  br label %129

129:                                              ; preds = %125, %124
  br i1 %11, label %134, label %130

130:                                              ; preds = %129
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %0) #9
  %131 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %132 = load i32, ptr %131, align 4, !tbaa !69
  %133 = or i32 %132, 32
  store i32 %133, ptr %131, align 4, !tbaa !69
  store ptr %43, ptr %9, align 8, !tbaa !43
  br label %134

134:                                              ; preds = %130, %129
  tail call fastcc void @scalefast_Z_ImBuf(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  store i32 %1, ptr %14, align 8, !tbaa !44
  store i32 %2, ptr %53, align 4, !tbaa !45
  br label %135

135:                                              ; preds = %38, %40, %22, %17, %5, %3, %134
  %136 = phi ptr [ %0, %134 ], [ null, %3 ], [ %0, %5 ], [ %0, %17 ], [ %0, %22 ], [ %0, %40 ], [ %0, %38 ]
  ret ptr %136
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_scaleImBuf_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ScaleTreadInitData, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %12 = shl i32 %1, 2
  %13 = mul i32 %12, %2
  %14 = zext i32 %13 to i64
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str.2) #9
  %16 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !88
  br label %17

17:                                               ; preds = %10, %3
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = mul i32 %2, %1
  %26 = mul i32 %25, %24
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.3) #9
  %30 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !90
  br label %31

31:                                               ; preds = %21, %17
  call void @IMB_processor_apply_threaded(i32 noundef %2, i32 noundef 40, ptr noundef nonnull %4, ptr noundef nonnull @scale_thread_init, ptr noundef nonnull @do_scale_thread) #9
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  store i32 %1, ptr %32, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  store i32 %2, ptr %33, align 4, !tbaa !45
  %34 = load ptr, ptr %7, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  call void @imb_freerectImBuf(ptr noundef %0) #9
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !69
  %40 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  store ptr %41, ptr %7, align 8, !tbaa !34
  br label %42

42:                                               ; preds = %36, %31
  %43 = load ptr, ptr %18, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  call void @imb_freerectfloatImBuf(ptr noundef %0) #9
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !69
  %48 = or i32 %47, 32
  store i32 %48, ptr %46, align 4, !tbaa !69
  %49 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %4, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  store ptr %50, ptr %18, align 8, !tbaa !43
  br label %51

51:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @scale_thread_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #6 {
  %5 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %5, ptr %0, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !87
  %11 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 2
  store i32 %10, ptr %11, align 4, !tbaa !94
  %12 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 3
  store i32 %1, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 4
  store i32 %2, ptr %13, align 4, !tbaa !96
  %14 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.ScaleTreadInitData, ptr %3, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_scale_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !93
  %8 = uitofp i32 %7 to float
  %9 = fdiv float %5, %8
  %10 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = uitofp i32 %14 to float
  %16 = fdiv float %12, %15
  %17 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %24 = getelementptr inbounds %struct.ScaleThreadData, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %26 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  br label %27

27:                                               ; preds = %20, %67
  %28 = phi i32 [ 0, %20 ], [ %68, %67 ]
  %29 = load i32, ptr %21, align 8, !tbaa !95
  %30 = add nsw i32 %29, %28
  %31 = load i32, ptr %6, align 8, !tbaa !93
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %27
  %34 = sitofp i32 %30 to float
  %35 = fmul float %16, %34
  br label %36

36:                                               ; preds = %33, %63
  %37 = phi i32 [ %31, %33 ], [ %65, %63 ]
  %38 = phi i32 [ 0, %33 ], [ %64, %63 ]
  %39 = sitofp i32 %38 to float
  %40 = fmul float %9, %39
  %41 = mul i32 %37, %30
  %42 = add i32 %41, %38
  %43 = load ptr, ptr %22, align 8, !tbaa !97
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = shl nsw i32 %42, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %43, i64 %47
  %49 = load ptr, ptr %23, align 8, !tbaa !34
  %50 = load i32, ptr %3, align 8, !tbaa !44
  %51 = load i32, ptr %10, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_char(ptr noundef %49, ptr noundef nonnull %48, i32 noundef %50, i32 noundef %51, i32 noundef 4, float noundef %40, float noundef %35) #9
  br label %52

52:                                               ; preds = %45, %36
  %53 = load ptr, ptr %24, align 8, !tbaa !98
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %25, align 4, !tbaa !89
  %57 = mul nsw i32 %56, %42
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %53, i64 %58
  %60 = load ptr, ptr %26, align 8, !tbaa !43
  %61 = load i32, ptr %3, align 8, !tbaa !44
  %62 = load i32, ptr %10, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_fl(ptr noundef %60, ptr noundef nonnull %59, i32 noundef %61, i32 noundef %62, i32 noundef %56, float noundef %40, float noundef %35) #9
  br label %63

63:                                               ; preds = %55, %52
  %64 = add nuw nsw i32 %38, 1
  %65 = load i32, ptr %6, align 8, !tbaa !93
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %36, label %67, !llvm.loop !99

67:                                               ; preds = %63, %27
  %68 = add nuw nsw i32 %28, 1
  %69 = load i32, ptr %17, align 4, !tbaa !96
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %27, label %71, !llvm.loop !100

71:                                               ; preds = %67, %1
  ret ptr null
}

declare void @IMB_freezbufImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @BLI_bilinear_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_bilinear_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!48 = !{!37, !37, i64 0}
!49 = !{!40, !40, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !51, !52}
!56 = distinct !{!56, !51, !52}
!57 = distinct !{!57, !51, !52}
!58 = distinct !{!58, !51, !52}
!59 = distinct !{!59, !51, !52}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = !{!36, !36, i64 0}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
!69 = !{!35, !39, i64 36}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51, !52}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = !{!35, !36, i64 96}
!78 = distinct !{!78, !51, !52}
!79 = distinct !{!79, !51, !52}
!80 = distinct !{!80, !51, !52}
!81 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49}
!82 = distinct !{!82, !51, !52}
!83 = distinct !{!83, !51, !52}
!84 = !{!85, !36, i64 0}
!85 = !{!"ScaleTreadInitData", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 24}
!86 = !{!85, !39, i64 8}
!87 = !{!85, !39, i64 12}
!88 = !{!85, !36, i64 16}
!89 = !{!35, !39, i64 28}
!90 = !{!85, !36, i64 24}
!91 = !{!92, !36, i64 0}
!92 = !{!"ScaleThreadData", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32}
!93 = !{!92, !39, i64 8}
!94 = !{!92, !39, i64 12}
!95 = !{!92, !39, i64 16}
!96 = !{!92, !39, i64 20}
!97 = !{!92, !36, i64 24}
!98 = !{!92, !36, i64 32}
!99 = distinct !{!99, !51, !52}
!100 = distinct !{!100, !51, !52}

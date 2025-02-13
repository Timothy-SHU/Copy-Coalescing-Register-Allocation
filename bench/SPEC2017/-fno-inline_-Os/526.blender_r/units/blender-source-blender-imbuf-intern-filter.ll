; ModuleID = 'blender/source/blender/imbuf/intern/filter.c'
source_filename = "blender/source/blender/imbuf/intern/filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_filtery(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = shl i32 %3, 2
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %8, %40
  %15 = phi ptr [ %12, %8 ], [ %29, %40 ]
  %16 = phi ptr [ %10, %8 ], [ %41, %40 ]
  %17 = phi i32 [ %3, %8 ], [ %42, %40 ]
  %18 = icmp eq ptr %15, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %13, align 8, !tbaa !46
  %21 = icmp ugt i8 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call fastcc void @filtcolum(ptr noundef nonnull %15, i32 noundef %5, i32 noundef %6) #11
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds i8, ptr %15, i64 1
  tail call fastcc void @filtcolum(ptr noundef nonnull %24, i32 noundef %5, i32 noundef %6) #11
  %25 = getelementptr inbounds i8, ptr %15, i64 2
  tail call fastcc void @filtcolum(ptr noundef nonnull %25, i32 noundef %5, i32 noundef %6) #11
  %26 = getelementptr inbounds i8, ptr %15, i64 3
  tail call fastcc void @filtcolum(ptr noundef nonnull %26, i32 noundef %5, i32 noundef %6) #11
  %27 = getelementptr inbounds i8, ptr %15, i64 4
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi ptr [ %27, %23 ], [ null, %14 ]
  %30 = icmp eq ptr %16, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i8, ptr %13, align 8, !tbaa !46
  %33 = icmp ugt i8 %32, 24
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call fastcc void @filtcolumf(ptr noundef nonnull %16, i32 noundef %5, i32 noundef %6) #11
  br label %35

35:                                               ; preds = %34, %31
  %36 = getelementptr inbounds float, ptr %16, i64 1
  tail call fastcc void @filtcolumf(ptr noundef nonnull %36, i32 noundef %5, i32 noundef %6) #11
  %37 = getelementptr inbounds float, ptr %16, i64 2
  tail call fastcc void @filtcolumf(ptr noundef nonnull %37, i32 noundef %5, i32 noundef %6) #11
  %38 = getelementptr inbounds float, ptr %16, i64 3
  tail call fastcc void @filtcolumf(ptr noundef nonnull %38, i32 noundef %5, i32 noundef %6) #11
  %39 = getelementptr inbounds float, ptr %16, i64 4
  br label %40

40:                                               ; preds = %28, %35
  %41 = phi ptr [ %39, %35 ], [ null, %28 ]
  %42 = add nsw i32 %17, -1
  %43 = icmp sgt i32 %17, 1
  br i1 %43, label %14, label %44, !llvm.loop !47

44:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @filtcolum(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !49 {
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1, !tbaa !50
  %7 = zext i8 %6 to i32
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %0, %5 ], [ %16, %9 ]
  %11 = phi i32 [ 2, %5 ], [ %23, %9 ]
  %12 = phi i32 [ %7, %5 ], [ %18, %9 ]
  %13 = phi i32 [ %7, %5 ], [ %12, %9 ]
  %14 = phi i32 [ %1, %5 ], [ %15, %9 ]
  %15 = add nsw i32 %14, -1
  %16 = getelementptr inbounds i8, ptr %10, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !50
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %12, 1
  %20 = add nuw nsw i32 %19, %13
  %21 = add nuw nsw i32 %20, %11
  %22 = add nuw nsw i32 %21, %18
  %23 = and i32 %22, 3
  %24 = lshr i32 %22, 2
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %10, align 1, !tbaa !50
  %26 = icmp ugt i32 %14, 2
  br i1 %26, label %9, label %27, !llvm.loop !51

27:                                               ; preds = %9
  %28 = shl nuw nsw i32 %18, 1
  %29 = add nuw nsw i32 %12, %18
  %30 = add nuw nsw i32 %29, %28
  %31 = add nuw nsw i32 %30, %23
  %32 = lshr i32 %31, 2
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %16, align 1, !tbaa !50
  br label %34

34:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @filtcolumf(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !52 {
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = load float, ptr %0, align 4, !tbaa !53
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %0, %5 ], [ %14, %8 ]
  %10 = phi float [ %6, %5 ], [ %15, %8 ]
  %11 = phi float [ %6, %5 ], [ %10, %8 ]
  %12 = phi i32 [ %1, %5 ], [ %13, %8 ]
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds float, ptr %9, i64 %7
  %15 = load float, ptr %14, align 4, !tbaa !53
  %16 = tail call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float %15)
  %17 = fadd float %11, %16
  %18 = fmul float %17, 2.500000e-01
  store float %18, ptr %9, align 4, !tbaa !53
  %19 = icmp ugt i32 %12, 2
  br i1 %19, label %8, label %20, !llvm.loop !54

20:                                               ; preds = %8
  %21 = tail call float @llvm.fmuladd.f32(float %15, float 2.000000e+00, float %10)
  %22 = fadd float %15, %21
  %23 = fmul float %22, 2.500000e-01
  store float %23, ptr %14, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @imb_filterx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %1
  %8 = shl i32 %3, 2
  %9 = add nsw i32 %8, -3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %15 = sext i32 %9 to i64
  br label %16

16:                                               ; preds = %7, %42
  %17 = phi ptr [ %13, %7 ], [ %31, %42 ]
  %18 = phi i32 [ %5, %7 ], [ %44, %42 ]
  %19 = phi ptr [ %11, %7 ], [ %43, %42 ]
  %20 = icmp eq ptr %17, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i8, ptr %14, align 8, !tbaa !46
  %23 = icmp ugt i8 %22, 24
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call fastcc void @filtrow(ptr noundef nonnull %17, i32 noundef %3) #11
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  tail call fastcc void @filtrow(ptr noundef nonnull %26, i32 noundef %3) #11
  %27 = getelementptr inbounds i8, ptr %17, i64 2
  tail call fastcc void @filtrow(ptr noundef nonnull %27, i32 noundef %3) #11
  %28 = getelementptr inbounds i8, ptr %17, i64 3
  tail call fastcc void @filtrow(ptr noundef nonnull %28, i32 noundef %3) #11
  %29 = getelementptr inbounds i8, ptr %28, i64 %15
  br label %30

30:                                               ; preds = %25, %16
  %31 = phi ptr [ %29, %25 ], [ null, %16 ]
  %32 = icmp eq ptr %19, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr %14, align 8, !tbaa !46
  %35 = icmp ugt i8 %34, 24
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call fastcc void @filtrowf(ptr noundef nonnull %19, i32 noundef %3) #11
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds float, ptr %19, i64 1
  tail call fastcc void @filtrowf(ptr noundef nonnull %38, i32 noundef %3) #11
  %39 = getelementptr inbounds float, ptr %19, i64 2
  tail call fastcc void @filtrowf(ptr noundef nonnull %39, i32 noundef %3) #11
  %40 = getelementptr inbounds float, ptr %19, i64 3
  tail call fastcc void @filtrowf(ptr noundef nonnull %40, i32 noundef %3) #11
  %41 = getelementptr inbounds float, ptr %40, i64 %15
  br label %42

42:                                               ; preds = %30, %37
  %43 = phi ptr [ %41, %37 ], [ null, %30 ]
  %44 = add nsw i32 %18, -1
  %45 = icmp sgt i32 %18, 1
  br i1 %45, label %16, label %46, !llvm.loop !55

46:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @filtrow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !50
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 2, %4 ], [ %21, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %14, %7 ]
  %10 = phi i32 [ %6, %4 ], [ %16, %7 ]
  %11 = phi i32 [ %6, %4 ], [ %10, %7 ]
  %12 = phi i32 [ %1, %4 ], [ %13, %7 ]
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds i8, ptr %9, i64 4
  %15 = load i8, ptr %14, align 1, !tbaa !50
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %10, 1
  %18 = add nuw nsw i32 %17, %11
  %19 = add nuw nsw i32 %18, %8
  %20 = add nuw nsw i32 %19, %16
  %21 = and i32 %20, 3
  %22 = lshr i32 %20, 2
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %9, align 1, !tbaa !50
  %24 = icmp ugt i32 %12, 2
  br i1 %24, label %7, label %25, !llvm.loop !57

25:                                               ; preds = %7
  %26 = shl nuw nsw i32 %16, 1
  %27 = add nuw nsw i32 %10, %16
  %28 = add nuw nsw i32 %27, %26
  %29 = add nuw nsw i32 %28, %21
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %14, align 1, !tbaa !50
  br label %32

32:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @filtrowf(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !58 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = load float, ptr %0, align 4, !tbaa !53
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %0, %4 ], [ %12, %6 ]
  %8 = phi float [ %5, %4 ], [ %13, %6 ]
  %9 = phi float [ %5, %4 ], [ %8, %6 ]
  %10 = phi i32 [ %1, %4 ], [ %11, %6 ]
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds float, ptr %7, i64 4
  %13 = load float, ptr %12, align 4, !tbaa !53
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float %13)
  %15 = fadd float %9, %14
  %16 = fmul float %15, 2.500000e-01
  store float %16, ptr %7, align 4, !tbaa !53
  %17 = icmp ugt i32 %10, 2
  br i1 %17, label %6, label %18, !llvm.loop !59

18:                                               ; preds = %6
  %19 = tail call float @llvm.fmuladd.f32(float %13, float 2.000000e+00, float %8)
  %20 = fadd float %13, %19
  %21 = fmul float %20, 2.500000e-01
  store float %21, ptr %12, align 4, !tbaa !53
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_filterN(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @IMB_rect_from_float(ptr noundef nonnull %1) #12
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %216

13:                                               ; preds = %9
  %14 = shl nsw i32 %4, 2
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %18 = icmp sgt i32 %4, 0
  %19 = add nsw i32 %4, -1
  %20 = sext i32 %4 to i64
  br label %21

21:                                               ; preds = %13, %211
  %22 = phi i32 [ %11, %13 ], [ %212, %211 ]
  %23 = phi i64 [ 0, %13 ], [ %213, %211 ]
  br i1 %18, label %24, label %211

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !45
  %26 = mul nsw i64 %23, %20
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load ptr, ptr %5, align 8, !tbaa !45
  %29 = getelementptr inbounds i32, ptr %28, i64 %26
  %30 = add nsw i32 %22, -1
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %23, %31
  %33 = select i1 %32, i64 0, i64 %15
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = icmp eq i64 %23, 0
  %36 = getelementptr inbounds i8, ptr %29, i64 %16
  %37 = select i1 %35, ptr %28, ptr %36
  br label %38

38:                                               ; preds = %24, %38
  %39 = phi i32 [ %207, %38 ], [ 0, %24 ]
  %40 = phi ptr [ %50, %38 ], [ %37, %24 ]
  %41 = phi ptr [ %206, %38 ], [ %27, %24 ]
  %42 = phi ptr [ %52, %38 ], [ %34, %24 ]
  %43 = phi ptr [ %51, %38 ], [ %29, %24 ]
  %44 = icmp eq i32 %39, 0
  %45 = select i1 %44, i64 0, i64 -4
  %46 = getelementptr inbounds i8, ptr %40, i64 %45
  %47 = getelementptr inbounds i8, ptr %43, i64 %45
  %48 = getelementptr inbounds i8, ptr %42, i64 %45
  %49 = icmp eq i32 %39, %19
  %50 = getelementptr inbounds i8, ptr %40, i64 4
  %51 = getelementptr inbounds i8, ptr %43, i64 4
  %52 = getelementptr inbounds i8, ptr %42, i64 4
  %53 = select i1 %49, ptr %40, ptr %50
  %54 = select i1 %49, ptr %43, ptr %51
  %55 = select i1 %49, ptr %42, ptr %52
  %56 = load i8, ptr %46, align 1, !tbaa !50
  %57 = zext i8 %56 to i16
  %58 = load i8, ptr %40, align 1, !tbaa !50
  %59 = zext i8 %58 to i16
  %60 = load i8, ptr %53, align 1, !tbaa !50
  %61 = zext i8 %60 to i16
  %62 = load i8, ptr %47, align 1, !tbaa !50
  %63 = zext i8 %62 to i16
  %64 = load i8, ptr %43, align 1, !tbaa !50
  %65 = zext i8 %64 to i16
  %66 = shl nuw nsw i16 %65, 2
  %67 = load i8, ptr %54, align 1, !tbaa !50
  %68 = zext i8 %67 to i16
  %69 = load i8, ptr %48, align 1, !tbaa !50
  %70 = zext i8 %69 to i16
  %71 = load i8, ptr %42, align 1, !tbaa !50
  %72 = zext i8 %71 to i16
  %73 = load i8, ptr %55, align 1, !tbaa !50
  %74 = zext i8 %73 to i16
  %75 = add nuw nsw i16 %63, %59
  %76 = add nuw nsw i16 %75, %68
  %77 = add nuw nsw i16 %76, %72
  %78 = shl nuw nsw i16 %77, 1
  %79 = add nuw nsw i16 %61, %57
  %80 = add nuw nsw i16 %79, %66
  %81 = add nuw nsw i16 %80, %70
  %82 = add nuw nsw i16 %81, %74
  %83 = add nuw nsw i16 %82, %78
  %84 = lshr i16 %83, 4
  %85 = trunc i16 %84 to i8
  store i8 %85, ptr %41, align 1, !tbaa !50
  %86 = getelementptr inbounds i8, ptr %46, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !50
  %88 = zext i8 %87 to i16
  %89 = getelementptr inbounds i8, ptr %40, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !50
  %91 = zext i8 %90 to i16
  %92 = getelementptr inbounds i8, ptr %53, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !50
  %94 = zext i8 %93 to i16
  %95 = getelementptr inbounds i8, ptr %47, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !50
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds i8, ptr %43, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !50
  %100 = zext i8 %99 to i16
  %101 = shl nuw nsw i16 %100, 2
  %102 = getelementptr inbounds i8, ptr %54, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !50
  %104 = zext i8 %103 to i16
  %105 = getelementptr inbounds i8, ptr %48, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !50
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds i8, ptr %42, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !50
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %55, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !50
  %113 = zext i8 %112 to i16
  %114 = add nuw nsw i16 %97, %91
  %115 = add nuw nsw i16 %114, %104
  %116 = add nuw nsw i16 %115, %110
  %117 = shl nuw nsw i16 %116, 1
  %118 = add nuw nsw i16 %94, %88
  %119 = add nuw nsw i16 %118, %101
  %120 = add nuw nsw i16 %119, %107
  %121 = add nuw nsw i16 %120, %113
  %122 = add nuw nsw i16 %121, %117
  %123 = lshr i16 %122, 4
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %124, ptr %125, align 1, !tbaa !50
  %126 = getelementptr inbounds i8, ptr %46, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !50
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %40, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !50
  %131 = zext i8 %130 to i16
  %132 = getelementptr inbounds i8, ptr %53, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !50
  %134 = zext i8 %133 to i16
  %135 = getelementptr inbounds i8, ptr %47, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !50
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %43, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !50
  %140 = zext i8 %139 to i16
  %141 = shl nuw nsw i16 %140, 2
  %142 = getelementptr inbounds i8, ptr %54, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !50
  %144 = zext i8 %143 to i16
  %145 = getelementptr inbounds i8, ptr %48, i64 2
  %146 = load i8, ptr %145, align 1, !tbaa !50
  %147 = zext i8 %146 to i16
  %148 = getelementptr inbounds i8, ptr %42, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !50
  %150 = zext i8 %149 to i16
  %151 = getelementptr inbounds i8, ptr %55, i64 2
  %152 = load i8, ptr %151, align 1, !tbaa !50
  %153 = zext i8 %152 to i16
  %154 = add nuw nsw i16 %137, %131
  %155 = add nuw nsw i16 %154, %144
  %156 = add nuw nsw i16 %155, %150
  %157 = shl nuw nsw i16 %156, 1
  %158 = add nuw nsw i16 %134, %128
  %159 = add nuw nsw i16 %158, %141
  %160 = add nuw nsw i16 %159, %147
  %161 = add nuw nsw i16 %160, %153
  %162 = add nuw nsw i16 %161, %157
  %163 = lshr i16 %162, 4
  %164 = trunc i16 %163 to i8
  %165 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 %164, ptr %165, align 1, !tbaa !50
  %166 = getelementptr inbounds i8, ptr %46, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !50
  %168 = zext i8 %167 to i16
  %169 = getelementptr inbounds i8, ptr %40, i64 3
  %170 = load i8, ptr %169, align 1, !tbaa !50
  %171 = zext i8 %170 to i16
  %172 = getelementptr inbounds i8, ptr %53, i64 3
  %173 = load i8, ptr %172, align 1, !tbaa !50
  %174 = zext i8 %173 to i16
  %175 = getelementptr inbounds i8, ptr %47, i64 3
  %176 = load i8, ptr %175, align 1, !tbaa !50
  %177 = zext i8 %176 to i16
  %178 = getelementptr inbounds i8, ptr %43, i64 3
  %179 = load i8, ptr %178, align 1, !tbaa !50
  %180 = zext i8 %179 to i16
  %181 = shl nuw nsw i16 %180, 2
  %182 = getelementptr inbounds i8, ptr %54, i64 3
  %183 = load i8, ptr %182, align 1, !tbaa !50
  %184 = zext i8 %183 to i16
  %185 = getelementptr inbounds i8, ptr %48, i64 3
  %186 = load i8, ptr %185, align 1, !tbaa !50
  %187 = zext i8 %186 to i16
  %188 = getelementptr inbounds i8, ptr %42, i64 3
  %189 = load i8, ptr %188, align 1, !tbaa !50
  %190 = zext i8 %189 to i16
  %191 = getelementptr inbounds i8, ptr %55, i64 3
  %192 = load i8, ptr %191, align 1, !tbaa !50
  %193 = zext i8 %192 to i16
  %194 = add nuw nsw i16 %177, %171
  %195 = add nuw nsw i16 %194, %184
  %196 = add nuw nsw i16 %195, %190
  %197 = shl nuw nsw i16 %196, 1
  %198 = add nuw nsw i16 %174, %168
  %199 = add nuw nsw i16 %198, %181
  %200 = add nuw nsw i16 %199, %187
  %201 = add nuw nsw i16 %200, %193
  %202 = add nuw nsw i16 %201, %197
  %203 = lshr i16 %202, 4
  %204 = trunc i16 %203 to i8
  %205 = getelementptr inbounds i8, ptr %41, i64 3
  store i8 %204, ptr %205, align 1, !tbaa !50
  %206 = getelementptr inbounds i8, ptr %41, i64 4
  %207 = add nuw nsw i32 %39, 1
  %208 = icmp eq i32 %207, %4
  br i1 %208, label %209, label %38, !llvm.loop !60

209:                                              ; preds = %38
  %210 = load i32, ptr %10, align 4, !tbaa !43
  br label %211

211:                                              ; preds = %209, %21
  %212 = phi i32 [ %210, %209 ], [ %22, %21 ]
  %213 = add nuw nsw i64 %23, 1
  %214 = sext i32 %212 to i64
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %21, label %216, !llvm.loop !61

216:                                              ; preds = %211, %9
  ret void
}

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_filter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @IMB_filtery(ptr noundef %0) #11
  tail call void @imb_filterx(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_mask_filter_extend(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !62
  %5 = tail call ptr %4(ptr noundef %0) #12
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %83, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = icmp sgt i32 %1, 0
  %10 = add nsw i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = zext nneg i32 %2 to i64
  %13 = add nuw i32 %2, 1
  %14 = zext i32 %13 to i64
  %15 = zext nneg i32 %1 to i64
  br label %16

16:                                               ; preds = %7, %80
  %17 = phi i64 [ 1, %7 ], [ %81, %80 ]
  br i1 %9, label %18, label %80

18:                                               ; preds = %16
  %19 = icmp eq i64 %17, 1
  %20 = add nsw i64 %17, -2
  %21 = mul nsw i64 %20, %8
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  %23 = getelementptr inbounds i8, ptr %22, i64 %8
  %24 = select i1 %19, ptr %23, ptr %22
  %25 = getelementptr inbounds i8, ptr %23, i64 %8
  %26 = icmp eq i64 %17, %12
  %27 = select i1 %26, ptr %23, ptr %25
  %28 = select i1 %19, ptr %25, ptr %27
  %29 = add nsw i64 %17, -1
  %30 = mul nsw i64 %29, %8
  %31 = getelementptr i8, ptr %0, i64 %30
  br label %32

32:                                               ; preds = %18, %72
  %33 = phi i64 [ 0, %18 ], [ %78, %72 ]
  %34 = phi ptr [ %24, %18 ], [ %77, %72 ]
  %35 = phi ptr [ %23, %18 ], [ %76, %72 ]
  %36 = phi ptr [ %28, %18 ], [ %75, %72 ]
  %37 = getelementptr i8, ptr %31, i64 %33
  %38 = load i8, ptr %37, align 1, !tbaa !50
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = load i8, ptr %34, align 1, !tbaa !50
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i8, ptr %35, align 1, !tbaa !50
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8, ptr %36, align 1, !tbaa !50
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %34, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !50
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %36, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !50
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = icmp eq i64 %33, %11
  br i1 %58, label %72, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %34, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !50
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %35, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !50
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %36, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !50
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %59, %63, %67, %40, %43, %46, %49, %53
  store i8 1, ptr %37, align 1, !tbaa !50
  br label %72

72:                                               ; preds = %71, %67, %57, %32
  %73 = icmp ne i64 %33, 0
  %74 = zext i1 %73 to i64
  %75 = getelementptr inbounds i8, ptr %36, i64 %74
  %76 = getelementptr inbounds i8, ptr %35, i64 %74
  %77 = getelementptr inbounds i8, ptr %34, i64 %74
  %78 = add nuw nsw i64 %33, 1
  %79 = icmp eq i64 %78, %15
  br i1 %79, label %80, label %32, !llvm.loop !63

80:                                               ; preds = %72, %16
  %81 = add nuw nsw i64 %17, 1
  %82 = icmp eq i64 %81, %14
  br i1 %82, label %83, label %16, !llvm.loop !64

83:                                               ; preds = %80, %3
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %84(ptr noundef %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_mask_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %6, label %18, label %10

10:                                               ; preds = %3
  br i1 %9, label %11, label %81

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  %15 = zext nneg i32 %8 to i64
  %16 = zext nneg i32 %8 to i64
  %17 = zext nneg i32 %13 to i64
  br label %23

18:                                               ; preds = %3
  br i1 %9, label %19, label %81

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %20, align 4, !tbaa !43
  br label %43

23:                                               ; preds = %11, %40
  %24 = phi i64 [ 0, %11 ], [ %41, %40 ]
  br i1 %14, label %25, label %40

25:                                               ; preds = %23, %37
  %26 = phi i64 [ %38, %37 ], [ 0, %23 ]
  %27 = mul nsw i64 %26, %15
  %28 = add nuw nsw i64 %27, %24
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !50
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = shl i64 %28, 2
  %35 = and i64 %34, 4294967292
  %36 = getelementptr inbounds float, ptr %5, i64 %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %25, %33
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, %17
  br i1 %39, label %40, label %25, !llvm.loop !65

40:                                               ; preds = %37, %23
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %81, label %23, !llvm.loop !66

43:                                               ; preds = %19, %74
  %44 = phi i32 [ %8, %19 ], [ %75, %74 ]
  %45 = phi i32 [ %22, %19 ], [ %76, %74 ]
  %46 = phi i32 [ %22, %19 ], [ %77, %74 ]
  %47 = phi i64 [ 0, %19 ], [ %78, %74 ]
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = trunc i64 %47 to i32
  br label %51

51:                                               ; preds = %49, %68
  %52 = phi i32 [ %45, %49 ], [ %69, %68 ]
  %53 = phi i32 [ 0, %49 ], [ %70, %68 ]
  %54 = load i32, ptr %7, align 8, !tbaa !34
  %55 = mul nsw i32 %54, %53
  %56 = add nsw i32 %55, %50
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !50
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load ptr, ptr %21, align 8, !tbaa !45
  %64 = sext i32 %55 to i64
  %65 = getelementptr inbounds i32, ptr %63, i64 %64
  %66 = getelementptr inbounds i32, ptr %65, i64 %47
  store i32 0, ptr %66, align 1
  %67 = load i32, ptr %20, align 4, !tbaa !43
  br label %68

68:                                               ; preds = %51, %62
  %69 = phi i32 [ %52, %51 ], [ %67, %62 ]
  %70 = add nuw nsw i32 %53, 1
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %51, label %72, !llvm.loop !67

72:                                               ; preds = %68
  %73 = load i32, ptr %7, align 8, !tbaa !34
  br label %74

74:                                               ; preds = %72, %43
  %75 = phi i32 [ %73, %72 ], [ %44, %43 ]
  %76 = phi i32 [ %69, %72 ], [ %45, %43 ]
  %77 = phi i32 [ %69, %72 ], [ %46, %43 ]
  %78 = add nuw nsw i64 %47, 1
  %79 = sext i32 %75 to i64
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %43, label %81, !llvm.loop !68

81:                                               ; preds = %40, %74, %10, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_filter_extend(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca [25 x float], align 16
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp ne ptr %10, null
  %12 = mul nsw i32 %8, %6
  %13 = shl nsw i32 %12, 2
  %14 = select i1 %11, i32 2, i32 0
  %15 = shl i32 %13, %14
  %16 = zext i1 %11 to i8
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !62
  br i1 %11, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi ptr [ %20, %18 ], [ %10, %3 ]
  %23 = tail call ptr %17(ptr noundef %22) #12
  %24 = icmp eq ptr %1, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !62
  %27 = tail call ptr %26(ptr noundef nonnull %1) #12
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  %30 = load ptr, ptr %9, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi ptr [ %34, %32 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #13
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00>, ptr %4, align 16, !tbaa !53
  %37 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 4
  store <4 x float> <float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00>, ptr %37, align 16, !tbaa !53
  %38 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 8
  store float 1.000000e+00, ptr %38, align 16, !tbaa !53
  %39 = icmp sgt i32 %2, 0
  br i1 %39, label %40, label %178

40:                                               ; preds = %35
  %41 = icmp sgt i32 %8, 0
  %42 = icmp sgt i32 %6, 0
  %43 = icmp eq ptr %29, null
  %44 = sext i32 %15 to i64
  %45 = sext i32 %12 to i64
  br label %46

46:                                               ; preds = %40, %173
  %47 = phi <4 x float> [ undef, %40 ], [ %170, %173 ]
  %48 = phi i32 [ 0, %40 ], [ %174, %173 ]
  br i1 %41, label %49, label %169

49:                                               ; preds = %46, %164
  %50 = phi <4 x float> [ %165, %164 ], [ %47, %46 ]
  %51 = phi i32 [ %167, %164 ], [ 0, %46 ]
  %52 = phi i32 [ %166, %164 ], [ 0, %46 ]
  br i1 %42, label %55, label %53

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %52, 1
  br label %164

55:                                               ; preds = %49
  %56 = add nsw i32 %52, -1
  %57 = add nuw nsw i32 %52, 1
  br label %58

58:                                               ; preds = %55, %159
  %59 = phi <4 x float> [ %50, %55 ], [ %160, %159 ]
  %60 = phi i32 [ %51, %55 ], [ %161, %159 ]
  %61 = phi i32 [ 0, %55 ], [ %162, %159 ]
  %62 = tail call fastcc i32 @filter_make_index(i32 noundef %61, i32 noundef %52, i32 noundef %6, i32 noundef %8) #11
  %63 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %62, i8 noundef zeroext %16) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %159

65:                                               ; preds = %58
  %66 = add nsw i32 %61, -1
  %67 = tail call fastcc i32 @filter_make_index(i32 noundef %66, i32 noundef %52, i32 noundef %6, i32 noundef %8) #11
  %68 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %67, i8 noundef zeroext %16) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %61, 1
  %72 = tail call fastcc i32 @filter_make_index(i32 noundef %71, i32 noundef %52, i32 noundef %6, i32 noundef %8) #11
  %73 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %72, i8 noundef zeroext %16) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = tail call fastcc i32 @filter_make_index(i32 noundef %61, i32 noundef %56, i32 noundef %6, i32 noundef %8) #11
  %77 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %76, i8 noundef zeroext %16) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = tail call fastcc i32 @filter_make_index(i32 noundef %61, i32 noundef %57, i32 noundef %6, i32 noundef %8) #11
  %81 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %80, i8 noundef zeroext %16) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %159, label %83

83:                                               ; preds = %79, %75, %70, %65
  br label %84

84:                                               ; preds = %83, %130
  %85 = phi <4 x float> [ zeroinitializer, %83 ], [ %124, %130 ]
  %86 = phi float [ 0.000000e+00, %83 ], [ %125, %130 ]
  %87 = phi i32 [ -1, %83 ], [ %131, %130 ]
  %88 = phi i32 [ 0, %83 ], [ %91, %130 ]
  %89 = add nsw i32 %87, %61
  %90 = sext i32 %88 to i64
  %91 = add i32 %88, 3
  br label %92

92:                                               ; preds = %84, %123
  %93 = phi <4 x float> [ %85, %84 ], [ %124, %123 ]
  %94 = phi i64 [ %90, %84 ], [ %126, %123 ]
  %95 = phi float [ %86, %84 ], [ %125, %123 ]
  %96 = phi i32 [ -1, %84 ], [ %127, %123 ]
  %97 = or i32 %96, %87
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %92
  %100 = add nsw i32 %96, %52
  %101 = tail call fastcc i32 @filter_make_index(i32 noundef %89, i32 noundef %100, i32 noundef %6, i32 noundef %8) #11
  %102 = tail call fastcc i32 @check_pixel_assigned(ptr noundef %36, ptr noundef %1, i32 noundef %101, i8 noundef zeroext %16) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %99
  %105 = shl nsw i32 %101, 2
  %106 = sext i32 %105 to i64
  br i1 %11, label %111, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %36, i64 %106
  %109 = load <4 x i8>, ptr %108, align 1, !tbaa !50
  %110 = uitofp <4 x i8> %109 to <4 x float>
  br label %115

111:                                              ; preds = %104
  %112 = shl nsw i64 %106, 2
  %113 = getelementptr i8, ptr %36, i64 %112
  %114 = load <4 x float>, ptr %113, align 4, !tbaa !53
  br label %115

115:                                              ; preds = %107, %111
  %116 = phi <4 x float> [ %114, %111 ], [ %110, %107 ]
  %117 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 %94
  %118 = load float, ptr %117, align 4, !tbaa !53
  %119 = insertelement <4 x float> poison, float %118, i64 0
  %120 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> zeroinitializer
  %121 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %120, <4 x float> %116, <4 x float> %93)
  %122 = fadd float %95, %118
  br label %123

123:                                              ; preds = %115, %99, %92
  %124 = phi <4 x float> [ %93, %92 ], [ %93, %99 ], [ %121, %115 ]
  %125 = phi float [ %95, %92 ], [ %95, %99 ], [ %122, %115 ]
  %126 = add nsw i64 %94, 1
  %127 = add nsw i32 %96, 1
  %128 = trunc i64 %126 to i32
  %129 = icmp eq i32 %91, %128
  br i1 %129, label %130, label %92, !llvm.loop !69

130:                                              ; preds = %123
  %131 = add nsw i32 %87, 1
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %84, !llvm.loop !70

133:                                              ; preds = %130
  %134 = fcmp une float %125, 0.000000e+00
  br i1 %134, label %135, label %159

135:                                              ; preds = %133
  %136 = insertelement <4 x float> poison, float %125, i64 0
  %137 = shufflevector <4 x float> %136, <4 x float> poison, <4 x i32> zeroinitializer
  %138 = fdiv <4 x float> %124, %137
  %139 = shl nsw i32 %62, 2
  %140 = sext i32 %139 to i64
  br i1 %11, label %152, label %141

141:                                              ; preds = %135
  %142 = getelementptr i8, ptr %23, i64 %140
  %143 = fcmp ule <4 x float> %138, <float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02>
  %144 = fcmp olt <4 x float> %138, zeroinitializer
  %145 = xor <4 x i1> %144, <i1 true, i1 true, i1 true, i1 true>
  %146 = and <4 x i1> %143, %145
  %147 = fadd <4 x float> %138, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %148 = fptoui <4 x float> %147 to <4 x i8>
  %149 = and <4 x i1> %143, %144
  %150 = select <4 x i1> %146, <4 x i8> %148, <4 x i8> <i8 -1, i8 -1, i8 -1, i8 -1>
  %151 = select <4 x i1> %149, <4 x i8> zeroinitializer, <4 x i8> %150
  store <4 x i8> %151, ptr %142, align 1, !tbaa !50
  br label %155

152:                                              ; preds = %135
  %153 = shl nsw i64 %140, 2
  %154 = getelementptr i8, ptr %23, i64 %153
  store <4 x float> %138, ptr %154, align 4, !tbaa !53
  br label %155

155:                                              ; preds = %141, %152
  br i1 %43, label %159, label %156

156:                                              ; preds = %155
  %157 = sext i32 %62 to i64
  %158 = getelementptr inbounds i8, ptr %29, i64 %157
  store i8 1, ptr %158, align 1, !tbaa !50
  br label %159

159:                                              ; preds = %79, %133, %156, %155, %58
  %160 = phi <4 x float> [ %59, %58 ], [ zeroinitializer, %79 ], [ %138, %155 ], [ %138, %156 ], [ %124, %133 ]
  %161 = phi i32 [ %60, %58 ], [ %60, %79 ], [ 1, %155 ], [ 1, %156 ], [ %60, %133 ]
  %162 = add nuw nsw i32 %61, 1
  %163 = icmp eq i32 %162, %6
  br i1 %163, label %164, label %58, !llvm.loop !71

164:                                              ; preds = %159, %53
  %165 = phi <4 x float> [ %50, %53 ], [ %160, %159 ]
  %166 = phi i32 [ %54, %53 ], [ %57, %159 ]
  %167 = phi i32 [ %51, %53 ], [ %161, %159 ]
  %168 = icmp eq i32 %166, %8
  br i1 %168, label %169, label %49, !llvm.loop !72

169:                                              ; preds = %164, %46
  %170 = phi <4 x float> [ %47, %46 ], [ %165, %164 ]
  %171 = phi i32 [ 0, %46 ], [ %167, %164 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %23, i64 %44, i1 false)
  br i1 %43, label %173, label %172

172:                                              ; preds = %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %29, i64 %45, i1 false)
  br label %173

173:                                              ; preds = %172, %169
  %174 = add nuw nsw i32 %48, 1
  %175 = icmp eq i32 %171, 1
  %176 = icmp slt i32 %174, %2
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %46, label %178, !llvm.loop !73

178:                                              ; preds = %173, %35
  %179 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %179(ptr noundef %23) #12
  %180 = icmp eq ptr %29, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %182(ptr noundef nonnull %29) #12
  br label %183

183:                                              ; preds = %181, %178
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @filter_make_index(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !74 {
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %0, %2
  %8 = icmp sgt i32 %1, -1
  %9 = and i1 %8, %7
  %10 = icmp slt i32 %1, %3
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = mul nsw i32 %2, %1
  %14 = add nsw i32 %13, %0
  br label %15

15:                                               ; preds = %4, %6, %12
  %16 = phi i32 [ %14, %12 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @check_pixel_assigned(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #6 !PGOFuncName !75 {
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !50
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %28

14:                                               ; preds = %6
  %15 = shl nsw i32 %2, 2
  %16 = or disjoint i32 %15, 3
  %17 = icmp eq i8 %3, 0
  %18 = zext nneg i32 %16 to i64
  br i1 %17, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds float, ptr %0, i64 %18
  %21 = load float, ptr %20, align 4, !tbaa !53
  %22 = fcmp une float %21, 0.000000e+00
  br i1 %22, label %27, label %28

23:                                               ; preds = %14
  %24 = getelementptr inbounds i8, ptr %0, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %19, %8, %27, %23, %4
  %29 = phi i32 [ 0, %4 ], [ %13, %8 ], [ 1, %27 ], [ 0, %23 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_remakemipmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 1, ptr %3, align 8, !tbaa !76
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 0
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %13

8:                                                ; preds = %46
  %9 = trunc i64 %32 to i32
  %10 = add nuw nsw i32 %9, 2
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ 2, %2 ]
  store i32 %12, ptr %3, align 8, !tbaa !76
  br label %50

13:                                               ; preds = %2, %46
  %14 = phi ptr [ %48, %46 ], [ %6, %2 ]
  %15 = phi ptr [ %47, %46 ], [ %5, %2 ]
  %16 = phi ptr [ %27, %46 ], [ %0, %2 ]
  %17 = phi i64 [ %32, %46 ], [ 0, %2 ]
  br i1 %4, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #12
  tail call void @IMB_filterN(ptr noundef %23, ptr noundef nonnull %16) #11
  %24 = load ptr, ptr %15, align 8, !tbaa !62
  tail call void @imb_onehalf_no_alloc(ptr noundef %24, ptr noundef %23) #12
  tail call void @IMB_freeImBuf(ptr noundef %23) #12
  br label %26

25:                                               ; preds = %13
  tail call void @imb_onehalf_no_alloc(ptr noundef nonnull %14, ptr noundef nonnull %16) #12
  br label %26

26:                                               ; preds = %18, %25
  %27 = load ptr, ptr %15, align 8, !tbaa !62
  %28 = trunc i64 %17 to i32
  %29 = add nuw nsw i32 %28, 2
  store i32 %29, ptr %3, align 8, !tbaa !76
  %30 = icmp eq ptr %27, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = add nuw nsw i64 %17, 1
  %33 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 21
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 4, !tbaa !77
  %35 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = icmp sgt i32 %40, 2
  %42 = icmp ult i64 %17, 19
  %43 = and i1 %41, %42
  br i1 %43, label %46, label %50

44:                                               ; preds = %31
  %45 = icmp ult i64 %17, 19
  br i1 %45, label %46, label %50

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %32
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %8, label %13, !llvm.loop !78

50:                                               ; preds = %26, %38, %44, %11
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @imb_onehalf_no_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_makemipmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void @imb_freemipmapImBuf(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %47, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 1, ptr %11, align 8, !tbaa !76
  %12 = icmp eq i32 %1, 0
  br label %13

13:                                               ; preds = %46, %10
  %14 = phi i64 [ 0, %10 ], [ %32, %46 ]
  %15 = phi ptr [ %0, %10 ], [ %29, %46 ]
  br i1 %12, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = tail call ptr @IMB_allocImBuf(i32 noundef %18, i32 noundef %20, i8 noundef zeroext 32, i32 noundef 1) #12
  tail call void @IMB_filterN(ptr noundef %21, ptr noundef nonnull %15) #11
  %22 = tail call ptr @IMB_onehalf(ptr noundef %21) #12
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %14
  store ptr %22, ptr %23, align 8, !tbaa !62
  tail call void @IMB_freeImBuf(ptr noundef %21) #12
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  br label %28

25:                                               ; preds = %13
  %26 = tail call ptr @IMB_onehalf(ptr noundef nonnull %15) #12
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %14
  store ptr %26, ptr %27, align 8, !tbaa !62
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi ptr [ %26, %25 ], [ %24, %16 ]
  %30 = trunc i64 %14 to i32
  %31 = add nuw nsw i32 %30, 2
  store i32 %31, ptr %11, align 8, !tbaa !76
  %32 = add nuw nsw i64 %14, 1
  %33 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 21
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 4, !tbaa !77
  %35 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = icmp sgt i32 %40, 2
  %42 = icmp ult i64 %14, 19
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %46, label %47

44:                                               ; preds = %28
  %45 = icmp ult i64 %14, 19
  br i1 %45, label %46, label %47

46:                                               ; preds = %44, %38
  br label %13, !llvm.loop !80

47:                                               ; preds = %44, %38, %6
  ret void
}

; Function Attrs: optsize
declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_onehalf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @IMB_getmipmap(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !76
  %7 = icmp sgt i32 %6, %1
  %8 = add nsw i32 %6, -1
  %9 = select i1 %7, i32 %1, i32 %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %9, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %2, %4, %11
  %17 = phi ptr [ %15, %11 ], [ %0, %4 ], [ %0, %2 ]
  ret ptr %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_rect(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %1, 24
  %6 = icmp sgt i32 %3, 0
  br i1 %5, label %10, label %7

7:                                                ; preds = %4
  br i1 %6, label %8, label %60

8:                                                ; preds = %7
  %9 = icmp sgt i32 %2, 0
  br label %27

10:                                               ; preds = %4
  br i1 %6, label %11, label %60

11:                                               ; preds = %10
  %12 = icmp sgt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %0, %11 ], [ %24, %23 ]
  %15 = phi i32 [ 0, %11 ], [ %25, %23 ]
  br i1 %12, label %16, label %23

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = phi i32 [ %20, %16 ], [ 0, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 -1, ptr %19, align 1, !tbaa !50
  %20 = add nuw nsw i32 %18, 1
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %16, !llvm.loop !81

23:                                               ; preds = %16, %13
  %24 = phi ptr [ %14, %13 ], [ %21, %16 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %60, label %13, !llvm.loop !82

27:                                               ; preds = %8, %56
  %28 = phi ptr [ %0, %8 ], [ %57, %56 ]
  %29 = phi i32 [ 0, %8 ], [ %58, %56 ]
  br i1 %9, label %30, label %56

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %54, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %53, %30 ], [ 0, %27 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %31, align 1, !tbaa !50
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %37, %35
  %39 = lshr i32 %38, 8
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %31, align 1, !tbaa !50
  %41 = getelementptr inbounds i8, ptr %31, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !50
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, %35
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %41, align 1, !tbaa !50
  %47 = getelementptr inbounds i8, ptr %31, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !50
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, %35
  %51 = lshr i32 %50, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %47, align 1, !tbaa !50
  %53 = add nuw nsw i32 %32, 1
  %54 = getelementptr inbounds i8, ptr %31, i64 4
  %55 = icmp eq i32 %53, %2
  br i1 %55, label %56, label %30, !llvm.loop !83

56:                                               ; preds = %30, %27
  %57 = phi ptr [ %28, %27 ], [ %54, %30 ]
  %58 = add nuw nsw i32 %29, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %27, !llvm.loop !84

60:                                               ; preds = %56, %23, %7, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_rect_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 4
  %6 = icmp sgt i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i32 [ 0, %8 ], [ %34, %32 ]
  %12 = phi ptr [ %0, %8 ], [ %33, %32 ]
  br i1 %9, label %13, label %32

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %29, %13 ], [ 0, %10 ]
  %15 = phi ptr [ %30, %13 ], [ %12, %10 ]
  %16 = getelementptr inbounds float, ptr %15, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !53
  %18 = load float, ptr %15, align 4, !tbaa !53
  %19 = getelementptr inbounds float, ptr %15, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !53
  %21 = insertelement <2 x float> poison, float %18, i64 0
  %22 = insertelement <2 x float> %21, float %17, i64 1
  %23 = insertelement <2 x float> poison, float %17, i64 0
  %24 = insertelement <2 x float> %23, float %20, i64 1
  %25 = fmul <2 x float> %22, %24
  store <2 x float> %25, ptr %15, align 4, !tbaa !53
  %26 = getelementptr inbounds float, ptr %15, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !53
  %28 = fmul float %17, %27
  store float %28, ptr %26, align 4, !tbaa !53
  %29 = add nuw nsw i32 %14, 1
  %30 = getelementptr inbounds float, ptr %15, i64 4
  %31 = icmp eq i32 %29, %2
  br i1 %31, label %32, label %13, !llvm.loop !85

32:                                               ; preds = %13, %10
  %33 = phi ptr [ %12, %10 ], [ %30, %13 ]
  %34 = add nuw nsw i32 %11, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %36, label %10, !llvm.loop !86

36:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_alpha(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  tail call void @IMB_premultiply_rect(ptr noundef nonnull %5, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13) #11
  br label %14

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !79
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !43
  tail call void @IMB_premultiply_rect_float(ptr noundef nonnull %16, i32 noundef %20, i32 noundef %22, i32 noundef %24) #11
  br label %25

25:                                               ; preds = %1, %18, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_rect(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %1, 24
  %6 = icmp sgt i32 %3, 0
  br i1 %5, label %10, label %7

7:                                                ; preds = %4
  br i1 %6, label %8, label %81

8:                                                ; preds = %7
  %9 = icmp sgt i32 %2, 0
  br label %27

10:                                               ; preds = %4
  br i1 %6, label %11, label %81

11:                                               ; preds = %10
  %12 = icmp sgt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %0, %11 ], [ %24, %23 ]
  %15 = phi i32 [ 0, %11 ], [ %25, %23 ]
  br i1 %12, label %16, label %23

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = phi i32 [ %20, %16 ], [ 0, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 -1, ptr %19, align 1, !tbaa !50
  %20 = add nuw nsw i32 %18, 1
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %16, !llvm.loop !87

23:                                               ; preds = %16, %13
  %24 = phi ptr [ %14, %13 ], [ %21, %16 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %81, label %13, !llvm.loop !88

27:                                               ; preds = %8, %77
  %28 = phi ptr [ %0, %8 ], [ %78, %77 ]
  %29 = phi i32 [ 0, %8 ], [ %79, %77 ]
  br i1 %9, label %30, label %77

30:                                               ; preds = %27, %71
  %31 = phi ptr [ %75, %71 ], [ %28, %27 ]
  %32 = phi i32 [ %74, %71 ], [ 0, %27 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = icmp eq i8 %34, 0
  %36 = uitofp i8 %34 to float
  %37 = fdiv float 1.000000e+00, %36
  %38 = select i1 %35, float 1.000000e+00, float %37
  %39 = load i8, ptr %31, align 1, !tbaa !50
  %40 = uitofp i8 %39 to float
  %41 = fmul float %38, %40
  %42 = fcmp ugt float %41, 0.000000e+00
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = fcmp ogt float %41, 0x3FEFEFEFE0000000
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call float @llvm.fmuladd.f32(float %41, float 2.550000e+02, float 5.000000e-01)
  br label %47

47:                                               ; preds = %45, %43, %30
  %48 = phi float [ 0.000000e+00, %30 ], [ %46, %45 ], [ 2.550000e+02, %43 ]
  %49 = fptoui float %48 to i8
  store i8 %49, ptr %31, align 1, !tbaa !50
  %50 = getelementptr inbounds i8, ptr %31, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !50
  %52 = uitofp i8 %51 to float
  %53 = fmul float %38, %52
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = fcmp ogt float %53, 0x3FEFEFEFE0000000
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call float @llvm.fmuladd.f32(float %53, float 2.550000e+02, float 5.000000e-01)
  br label %59

59:                                               ; preds = %57, %55, %47
  %60 = phi float [ 0.000000e+00, %47 ], [ %58, %57 ], [ 2.550000e+02, %55 ]
  %61 = fptoui float %60 to i8
  store i8 %61, ptr %50, align 1, !tbaa !50
  %62 = getelementptr inbounds i8, ptr %31, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !50
  %64 = uitofp i8 %63 to float
  %65 = fmul float %38, %64
  %66 = fcmp ugt float %65, 0.000000e+00
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = fcmp ogt float %65, 0x3FEFEFEFE0000000
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = tail call float @llvm.fmuladd.f32(float %65, float 2.550000e+02, float 5.000000e-01)
  br label %71

71:                                               ; preds = %69, %67, %59
  %72 = phi float [ 0.000000e+00, %59 ], [ %70, %69 ], [ 2.550000e+02, %67 ]
  %73 = fptoui float %72 to i8
  store i8 %73, ptr %62, align 1, !tbaa !50
  %74 = add nuw nsw i32 %32, 1
  %75 = getelementptr inbounds i8, ptr %31, i64 4
  %76 = icmp eq i32 %74, %2
  br i1 %76, label %77, label %30, !llvm.loop !89

77:                                               ; preds = %71, %27
  %78 = phi ptr [ %28, %27 ], [ %75, %71 ]
  %79 = add nuw nsw i32 %29, 1
  %80 = icmp eq i32 %79, %3
  br i1 %80, label %81, label %27, !llvm.loop !90

81:                                               ; preds = %77, %23, %7, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_rect_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 4
  %6 = icmp sgt i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi i32 [ 0, %8 ], [ %33, %31 ]
  %12 = phi ptr [ %0, %8 ], [ %32, %31 ]
  br i1 %9, label %13, label %31

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %28, %13 ], [ 0, %10 ]
  %15 = phi ptr [ %29, %13 ], [ %12, %10 ]
  %16 = getelementptr inbounds float, ptr %15, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !53
  %18 = fcmp une float %17, 0.000000e+00
  %19 = fdiv float 1.000000e+00, %17
  %20 = select i1 %18, float %19, float 1.000000e+00
  %21 = load <2 x float>, ptr %15, align 4, !tbaa !53
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %21, %23
  store <2 x float> %24, ptr %15, align 4, !tbaa !53
  %25 = getelementptr inbounds float, ptr %15, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !53
  %27 = fmul float %20, %26
  store float %27, ptr %25, align 4, !tbaa !53
  %28 = add nuw nsw i32 %14, 1
  %29 = getelementptr inbounds float, ptr %15, i64 4
  %30 = icmp eq i32 %28, %2
  br i1 %30, label %31, label %13, !llvm.loop !91

31:                                               ; preds = %13, %10
  %32 = phi ptr [ %12, %10 ], [ %29, %13 ]
  %33 = add nuw nsw i32 %11, 1
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %35, label %10, !llvm.loop !92

35:                                               ; preds = %31, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_alpha(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  tail call void @IMB_unpremultiply_rect(ptr noundef nonnull %5, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13) #11
  br label %14

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !79
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !43
  tail call void @IMB_unpremultiply_rect_float(ptr noundef nonnull %16, i32 noundef %20, i32 noundef %22, i32 noundef %24) #11
  br label %25

25:                                               ; preds = %1, %18, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !39, i64 20}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !37, i64 24}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"filter.c:filtcolum"}
!50 = !{!37, !37, i64 0}
!51 = distinct !{!51, !48}
!52 = !{!"filter.c:filtcolumf"}
!53 = !{!40, !40, i64 0}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{!"filter.c:filtrow"}
!57 = distinct !{!57, !48}
!58 = !{!"filter.c:filtrowf"}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = !{!"filter.c:filter_make_index"}
!75 = !{!"filter.c:check_pixel_assigned"}
!76 = !{!35, !39, i64 280}
!77 = !{!35, !39, i64 284}
!78 = distinct !{!78, !48}
!79 = !{!35, !39, i64 28}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}

; ModuleID = 'preproc.cpp'
source_filename = "preproc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.t_eval_comps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@psq_table = dso_local local_unnamed_addr global [12 x [64 x i8]] zeroinitializer, align 16
@flip = dso_local local_unnamed_addr constant [64 x i32] [i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@KSMask = external local_unnamed_addr global i64, align 8
@QSMask = external local_unnamed_addr global i64, align 8
@_ZL13wking_psq_end = internal unnamed_addr constant [64 x i32] [i32 0, i32 30, i32 35, i32 20, i32 20, i32 35, i32 30, i32 0, i32 -4, i32 25, i32 20, i32 24, i32 24, i32 20, i32 25, i32 -4, i32 -4, i32 14, i32 16, i32 6, i32 6, i32 16, i32 14, i32 -4, i32 -20, i32 0, i32 5, i32 -6, i32 -6, i32 5, i32 0, i32 -20, i32 -16, i32 -4, i32 0, i32 2, i32 2, i32 0, i32 -4, i32 -16, i32 -22, i32 -8, i32 -4, i32 0, i32 0, i32 -4, i32 -8, i32 -22, i32 -26, i32 -15, i32 -10, i32 -8, i32 -8, i32 -10, i32 -15, i32 -26, i32 -30, i32 -25, i32 -25, i32 -25, i32 -25, i32 -25, i32 -25, i32 -30], align 16
@_ZL17psq_king_kingside = internal unnamed_addr constant [64 x i32] [i32 -75, i32 -55, i32 -40, i32 -30, i32 -20, i32 -20, i32 -30, i32 -40, i32 -70, i32 -50, i32 -30, i32 -15, i32 -5, i32 0, i32 0, i32 -25, i32 -70, i32 -45, i32 -25, i32 -10, i32 20, i32 15, i32 10, i32 -20, i32 -60, i32 -35, i32 -15, i32 -5, i32 30, i32 30, i32 15, i32 -15, i32 -60, i32 -35, i32 -25, i32 -10, i32 25, i32 20, i32 10, i32 -15, i32 -75, i32 -45, i32 -25, i32 -15, i32 15, i32 15, i32 5, i32 -25, i32 -75, i32 -50, i32 -30, i32 -20, i32 -10, i32 -10, i32 -10, i32 -30, i32 -80, i32 -60, i32 -50, i32 -40, i32 -30, i32 -15, i32 -20, i32 -50], align 16
@_ZL18psq_king_queenside = internal unnamed_addr constant [64 x i32] [i32 -40, i32 -30, i32 -20, i32 -20, i32 -30, i32 -40, i32 -55, i32 -75, i32 -25, i32 0, i32 0, i32 -5, i32 -15, i32 -30, i32 -50, i32 -70, i32 -20, i32 10, i32 15, i32 20, i32 -10, i32 -25, i32 -45, i32 -70, i32 -15, i32 15, i32 30, i32 30, i32 -5, i32 -15, i32 -35, i32 -60, i32 -15, i32 10, i32 20, i32 25, i32 -10, i32 -25, i32 -35, i32 -60, i32 -25, i32 5, i32 15, i32 15, i32 -15, i32 -25, i32 -45, i32 -75, i32 -30, i32 -10, i32 -10, i32 -10, i32 -20, i32 -30, i32 -50, i32 -75, i32 -50, i32 -20, i32 -15, i32 -30, i32 -40, i32 -50, i32 -60, i32 -80], align 16
@_ZL15psq_king_nopawn = internal unnamed_addr constant [64 x i32] [i32 -40, i32 -30, i32 -22, i32 -20, i32 -20, i32 -22, i32 -30, i32 -40, i32 -30, i32 -15, i32 -10, i32 -5, i32 -5, i32 -10, i32 -15, i32 -30, i32 -22, i32 -10, i32 5, i32 10, i32 10, i32 5, i32 -10, i32 -22, i32 -20, i32 -5, i32 10, i32 20, i32 20, i32 10, i32 -5, i32 -20, i32 -20, i32 -5, i32 10, i32 20, i32 20, i32 10, i32 -5, i32 -20, i32 -22, i32 -10, i32 5, i32 10, i32 10, i32 5, i32 -10, i32 -22, i32 -30, i32 -15, i32 -10, i32 -5, i32 -5, i32 -10, i32 -15, i32 -30, i32 -40, i32 -30, i32 -22, i32 -20, i32 -20, i32 -22, i32 -30, i32 -40], align 16
@_ZL15wknight_psq_end = internal unnamed_addr constant [64 x i32] [i32 -25, i32 -5, i32 0, i32 8, i32 8, i32 0, i32 -5, i32 -25, i32 -16, i32 4, i32 10, i32 16, i32 16, i32 10, i32 4, i32 7, i32 -1, i32 15, i32 20, i32 22, i32 22, i32 20, i32 15, i32 -7, i32 -5, i32 10, i32 16, i32 16, i32 16, i32 16, i32 10, i32 6, i32 -6, i32 5, i32 14, i32 13, i32 13, i32 14, i32 5, i32 -2, i32 -14, i32 -3, i32 4, i32 7, i32 7, i32 4, i32 -3, i32 -14, i32 -20, i32 -12, i32 -4, i32 -5, i32 -5, i32 -4, i32 -12, i32 -20, i32 -25, i32 -24, i32 -16, i32 -14, i32 -14, i32 -16, i32 -24, i32 -25], align 16
@_ZL15wbishop_psq_end = internal unnamed_addr constant [64 x i32] [i32 -8, i32 -10, i32 -6, i32 -1, i32 -1, i32 -6, i32 -10, i32 -8, i32 -8, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -8, i32 -1, i32 5, i32 7, i32 8, i32 8, i32 7, i32 5, i32 -1, i32 -1, i32 4, i32 5, i32 10, i32 10, i32 5, i32 4, i32 -1, i32 2, i32 2, i32 3, i32 9, i32 9, i32 7, i32 3, i32 -5, i32 -2, i32 0, i32 6, i32 4, i32 4, i32 6, i32 0, i32 -2, i32 -5, i32 3, i32 1, i32 2, i32 2, i32 1, i32 3, i32 -5, i32 -10, i32 -6, i32 -8, i32 -8, i32 -8, i32 -8, i32 -6, i32 -10], align 16
@_ZL13wrook_psq_end = internal unnamed_addr constant [64 x i32] [i32 5, i32 5, i32 7, i32 10, i32 10, i32 7, i32 5, i32 5, i32 8, i32 10, i32 14, i32 14, i32 14, i32 14, i32 10, i32 8, i32 1, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 1, i32 -1, i32 4, i32 3, i32 0, i32 0, i32 3, i32 4, i32 -1, i32 -6, i32 -1, i32 -3, i32 -2, i32 -2, i32 -3, i32 -1, i32 -6, i32 -10, i32 -4, i32 -8, i32 -8, i32 -8, i32 -8, i32 -4, i32 -10, i32 -15, i32 -12, i32 -9, i32 -8, i32 -8, i32 -9, i32 -12, i32 -15, i32 -15, i32 -10, i32 -8, i32 -8, i32 -8, i32 -8, i32 -10, i32 -15], align 16
@_ZL14wqueen_psq_end = internal unnamed_addr constant [64 x i32] [i32 5, i32 12, i32 16, i32 16, i32 16, i32 16, i32 12, i32 5, i32 -10, i32 12, i32 20, i32 26, i32 26, i32 20, i32 12, i32 -10, i32 -5, i32 10, i32 15, i32 18, i32 18, i32 15, i32 10, i32 -5, i32 -15, i32 1, i32 10, i32 14, i32 14, i32 10, i32 1, i32 -15, i32 -7, i32 -4, i32 6, i32 9, i32 9, i32 6, i32 -4, i32 -7, i32 -12, i32 -8, i32 -2, i32 -4, i32 -4, i32 -2, i32 -8, i32 -12, i32 -12, i32 -12, i32 -13, i32 -10, i32 -10, i32 -13, i32 -12, i32 -12, i32 -20, i32 -25, i32 -25, i32 -10, i32 -10, i32 -25, i32 -25, i32 -20], align 16
@_ZL9wpawn_psq = internal unnamed_addr constant <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 -5, i32 8, i32 12, i32 12, i32 8, i32 -5, i32 0, i32 0, i32 0, i32 6, i32 10, i32 10, i32 6, i32 0, i32 0, i32 0, i32 0, i32 4, i32 8, i32 8, i32 4], [26 x i32] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z8psq_evalP7state_tP12t_eval_comps(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !39
  %7 = or i64 %6, %4
  %8 = load i64, ptr @KSMask, align 8, !tbaa !39
  %9 = and i64 %7, %8
  %10 = icmp eq i64 %9, 0
  %11 = load i64, ptr @QSMask, align 8, !tbaa !39
  %12 = and i64 %11, %7
  %13 = icmp eq i64 %12, 0
  br i1 %10, label %16, label %14, !prof !43

14:                                               ; preds = %2
  br i1 %13, label %15, label %18, !prof !44

15:                                               ; preds = %14
  br label %18

16:                                               ; preds = %2
  %17 = select i1 %13, ptr @_ZL15psq_king_nopawn, ptr @_ZL18psq_king_queenside, !prof !45
  br label %18

18:                                               ; preds = %15, %16, %14
  %19 = phi ptr [ @_ZL13wking_psq_end, %14 ], [ @_ZL17psq_king_kingside, %15 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %19, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.t_eval_comps, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = add nsw i32 %26, %24
  store i32 %27, ptr %25, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !52
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %19, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !49
  %36 = getelementptr inbounds %struct.t_eval_comps, ptr %1, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = sub nsw i32 %37, %35
  store i32 %38, ptr %36, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z14init_psq_scoreP7state_t(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !55
  store i64 %4, ptr %2, align 8, !tbaa !39
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6, !prof !56

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %17, %6 ], [ 0, %1 ]
  %8 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %2) #7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %13, i64 %9
  %15 = load i8, ptr %14, align 1, !tbaa !57
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %7, %16
  %18 = load i64, ptr %2, align 8, !tbaa !39
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %6, !prof !58, !llvm.loop !59

20:                                               ; preds = %6, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %6 ]
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z18preprocess_preparev() local_unnamed_addr #4 !prof !62 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) @psq_table, i8 0, i64 768, i1 false)
  br label %1

1:                                                ; preds = %0, %65
  %2 = phi i64 [ 1, %0 ], [ %66, %65 ]
  %3 = add nsw i64 %2, -1
  %4 = trunc i64 %2 to i32
  br label %5

5:                                                ; preds = %1, %59
  %6 = phi i64 [ 0, %1 ], [ %63, %59 ]
  switch i32 %4, label %59 [
    i32 1, label %7
    i32 2, label %10
    i32 3, label %17
    i32 4, label %20
    i32 11, label %27
    i32 12, label %30
    i32 7, label %37
    i32 8, label %40
    i32 9, label %47
    i32 10, label %51
  ], !prof !63

7:                                                ; preds = %5
  %8 = getelementptr inbounds [64 x i32], ptr @_ZL9wpawn_psq, i64 0, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !49
  br label %59

10:                                               ; preds = %5
  %11 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !49
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [64 x i32], ptr @_ZL9wpawn_psq, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = sub nsw i32 0, %15
  br label %59

17:                                               ; preds = %5
  %18 = getelementptr inbounds [64 x i32], ptr @_ZL15wknight_psq_end, i64 0, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !49
  br label %59

20:                                               ; preds = %5
  %21 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %6
  %22 = load i32, ptr %21, align 4, !tbaa !49
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i32], ptr @_ZL15wknight_psq_end, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !49
  %26 = sub nsw i32 0, %25
  br label %59

27:                                               ; preds = %5
  %28 = getelementptr inbounds [64 x i32], ptr @_ZL15wbishop_psq_end, i64 0, i64 %6
  %29 = load i32, ptr %28, align 4, !tbaa !49
  br label %59

30:                                               ; preds = %5
  %31 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %6
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i32], ptr @_ZL15wbishop_psq_end, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !49
  %36 = sub nsw i32 0, %35
  br label %59

37:                                               ; preds = %5
  %38 = getelementptr inbounds [64 x i32], ptr @_ZL13wrook_psq_end, i64 0, i64 %6
  %39 = load i32, ptr %38, align 4, !tbaa !49
  br label %59

40:                                               ; preds = %5
  %41 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %6
  %42 = load i32, ptr %41, align 4, !tbaa !49
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i32], ptr @_ZL13wrook_psq_end, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = sub nsw i32 0, %45
  br label %59

47:                                               ; preds = %5
  %48 = getelementptr inbounds [64 x i32], ptr @_ZL14wqueen_psq_end, i64 0, i64 %6
  %49 = load i32, ptr %48, align 4, !tbaa !49
  %50 = ashr i32 %49, 1
  br label %59

51:                                               ; preds = %5
  %52 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %6
  %53 = load i32, ptr %52, align 4, !tbaa !49
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i32], ptr @_ZL14wqueen_psq_end, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !49
  %57 = ashr i32 %56, 1
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %5, %10, %20, %30, %40, %51, %47, %37, %27, %17, %7
  %60 = phi i32 [ %9, %7 ], [ %16, %10 ], [ %19, %17 ], [ %26, %20 ], [ %29, %27 ], [ %36, %30 ], [ %39, %37 ], [ %46, %40 ], [ %50, %47 ], [ %58, %51 ], [ 0, %5 ]
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %3, i64 %6
  store i8 %61, ptr %62, align 1, !tbaa !57
  %63 = add nuw nsw i64 %6, 1
  %64 = icmp eq i64 %63, 64
  br i1 %64, label %65, label %5, !prof !64, !llvm.loop !65

65:                                               ; preds = %59
  %66 = add nuw nsw i64 %2, 1
  %67 = icmp eq i64 %66, 13
  br i1 %67, label %68, label %1, !prof !66, !llvm.loop !67

68:                                               ; preds = %65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @_Z14init_psq_scoreP7state_t, ptr @_Z15FindFirstRemovePy, i64 701}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 340459605}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"branch_weights", i32 22994, i32 340436613}
!44 = !{!"branch_weights", i32 1114497, i32 339322117}
!45 = !{!"branch_weights", i32 29, i32 22966}
!46 = !{!47, !48, i64 464}
!47 = !{!"_ZTS7state_t", !48, i64 0, !41, i64 4, !40, i64 264, !40, i64 272, !40, i64 280, !41, i64 288, !48, i64 392, !48, i64 396, !41, i64 400, !48, i64 452, !48, i64 456, !48, i64 460, !48, i64 464, !48, i64 468, !48, i64 472, !48, i64 476, !40, i64 480, !40, i64 488, !41, i64 496, !41, i64 2544, !41, i64 2800, !41, i64 3056, !40, i64 4080, !40, i64 4088, !48, i64 4096, !41, i64 4100, !48, i64 4356, !48, i64 4360, !48, i64 4364, !48, i64 4368, !48, i64 4372, !48, i64 4376, !48, i64 4380, !48, i64 4384, !48, i64 4388, !48, i64 4392, !41, i64 4400}
!48 = !{!"int", !41, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!51, !48, i64 24}
!51 = !{!"_ZTS12t_eval_comps", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40}
!52 = !{!47, !48, i64 468}
!53 = !{!51, !48, i64 28}
!54 = !{!"function_entry_count", i64 25}
!55 = !{!47, !40, i64 264}
!56 = !{!"branch_weights", i32 1, i32 207}
!57 = !{!41, !41, i64 0}
!58 = !{!"branch_weights", i32 207, i32 5625}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!47, !48, i64 396}
!62 = !{!"function_entry_count", i64 1}
!63 = !{!"branch_weights", i32 -1658558184, i32 1360195713, i32 1358269088, i32 1356153406, i32 1353807121, i32 1351173253, i32 1348170648, i32 1344677979, i32 1340501960, i32 1335306217, i32 1328423196}
!64 = !{!"branch_weights", i32 13, i32 756}
!65 = distinct !{!65, !60}
!66 = !{!"branch_weights", i32 2, i32 11}
!67 = distinct !{!67, !60}

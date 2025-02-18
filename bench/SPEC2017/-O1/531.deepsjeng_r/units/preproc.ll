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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z8psq_evalP7state_tP12t_eval_comps(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !38
  %7 = or i64 %6, %4
  %8 = load i64, ptr @KSMask, align 8, !tbaa !38
  %9 = and i64 %7, %8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11, !prof !42

11:                                               ; preds = %2
  %12 = load i64, ptr @QSMask, align 8, !tbaa !38
  %13 = and i64 %12, %7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21, !prof !43

15:                                               ; preds = %11
  br i1 %10, label %16, label %21, !prof !44

16:                                               ; preds = %2, %15
  %17 = load i64, ptr @QSMask, align 8, !tbaa !38
  %18 = and i64 %17, %7
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %19, ptr @_ZL15psq_king_nopawn, ptr @_ZL18psq_king_queenside, !prof !45
  br label %21

21:                                               ; preds = %16, %15, %11
  %22 = phi ptr [ @_ZL13wking_psq_end, %11 ], [ @_ZL17psq_king_kingside, %15 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = getelementptr inbounds %struct.t_eval_comps, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %28, align 4, !tbaa !50
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i32], ptr @flip, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !49
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %22, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds %struct.t_eval_comps, ptr %1, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = sub nsw i32 %40, %38
  store i32 %41, ptr %39, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z14init_psq_scoreP7state_t(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !55
  store i64 %4, ptr %2, align 8, !tbaa !38
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6, !prof !56

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %17, %6 ], [ 0, %1 ]
  %8 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %2)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %13, i64 %9
  %15 = load i8, ptr %14, align 1, !tbaa !57
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %7, %16
  %18 = load i64, ptr %2, align 8, !tbaa !38
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %6, !prof !58, !llvm.loop !59

20:                                               ; preds = %6, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %6 ]
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z18preprocess_preparev() local_unnamed_addr #4 !prof !63 {
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
  ], !prof !64

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
  br i1 %64, label %65, label %5, !prof !65, !llvm.loop !66

65:                                               ; preds = %59
  %66 = add nuw nsw i64 %2, 1
  %67 = icmp eq i64 %66, 13
  br i1 %67, label %68, label %1, !prof !67, !llvm.loop !68

68:                                               ; preds = %65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_Z14init_psq_scoreP7state_t, ptr @_Z15FindFirstRemovePy, i64 728}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 288009370}
!38 = !{!39, !39, i64 0}
!39 = !{!"long long", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"branch_weights", i32 16148, i32 287993222}
!43 = !{!"branch_weights", i32 1086596, i32 286906626}
!44 = !{!"branch_weights", i32 16148, i32 1086596}
!45 = !{!"branch_weights", i32 6, i32 16142}
!46 = !{!47, !48, i64 464}
!47 = !{!"_ZTS7state_t", !48, i64 0, !40, i64 4, !39, i64 264, !39, i64 272, !39, i64 280, !40, i64 288, !48, i64 392, !48, i64 396, !40, i64 400, !48, i64 452, !48, i64 456, !48, i64 460, !48, i64 464, !48, i64 468, !48, i64 472, !48, i64 476, !39, i64 480, !39, i64 488, !40, i64 496, !40, i64 2544, !40, i64 2800, !40, i64 3056, !39, i64 4080, !39, i64 4088, !48, i64 4096, !40, i64 4100, !48, i64 4356, !48, i64 4360, !48, i64 4364, !48, i64 4368, !48, i64 4372, !48, i64 4376, !48, i64 4380, !48, i64 4384, !48, i64 4388, !48, i64 4392, !40, i64 4400}
!48 = !{!"int", !40, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!51, !48, i64 24}
!51 = !{!"_ZTS12t_eval_comps", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40}
!52 = !{!47, !48, i64 468}
!53 = !{!51, !48, i64 28}
!54 = !{!"function_entry_count", i64 25}
!55 = !{!47, !39, i64 264}
!56 = !{!"branch_weights", i32 1, i32 199}
!57 = !{!40, !40, i64 0}
!58 = !{!"branch_weights", i32 199, i32 5625}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!47, !48, i64 396}
!63 = !{!"function_entry_count", i64 1}
!64 = !{!"branch_weights", i32 128, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64}
!65 = !{!"branch_weights", i32 12, i32 756}
!66 = distinct !{!66, !60, !61}
!67 = !{!"branch_weights", i32 1, i32 11}
!68 = distinct !{!68, !60, !61}

; ModuleID = 'blender/source/blender/blenlib/intern/rct.c'
source_filename = "blender/source/blender/blenlib/intern/rct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }

@.str = private unnamed_addr constant [62 x i8] c"%s: xmin %.8f, xmax %.8f, ymin %.8f, ymax %.8f (%.12fx%.12f)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: xmin %d, xmax %d, ymin %d, ymax %d (%dx%d)\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp sle i32 %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ 1, %1 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !42
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp ugt float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fcmp ole float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ 1, %1 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_x(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sge i32 %7, %1
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_y(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = icmp sge i32 %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_pt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = icmp sge i32 %16, %2
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %10, %6, %3
  %20 = phi i8 [ 0, %3 ], [ 0, %6 ], [ 0, %10 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp sgt i32 %3, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp sle i32 %12, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %16, %10, %6, %2
  %22 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %10 ], [ %20, %16 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = fcmp ogt float %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = fcmp uge float %7, %1
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !47
  %5 = fcmp ogt float %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp uge float %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_pt(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp ogt float %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = fcmp olt float %8, %1
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fcmp ogt float %12, %2
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fcmp uge float %16, %2
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %10, %6, %3
  %20 = phi i8 [ 0, %3 ], [ 0, %6 ], [ 0, %10 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = fcmp ogt float %3, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fcmp olt float %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !46
  %19 = fcmp ule float %12, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %16, %10, %6, %2
  %22 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %10 ], [ %20, %16 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_inside_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fcmp ugt float %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fcmp ult float %8, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !46
  %23 = fcmp oge float %20, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_inside_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = icmp sge i32 %20, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = load i32, ptr %1, align 4, !tbaa !48
  %7 = load i32, ptr %0, align 4, !tbaa !39
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4, !tbaa !48
  %11 = icmp slt i32 %10, %7
  br i1 %11, label %53, label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = icmp sgt i32 %6, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr %2, align 4, !tbaa !48
  %18 = icmp sgt i32 %17, %14
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds i32, ptr %2, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = icmp slt i32 %27, %23
  br i1 %28, label %53, label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = icmp sgt i32 %21, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds i32, ptr %2, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !48
  %36 = icmp sgt i32 %35, %31
  br i1 %36, label %53, label %37

37:                                               ; preds = %33, %29
  %38 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %0, ptr noundef nonnull %1) #9, !range !50
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %0, ptr noundef %2) #9, !range !50
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i32 %7, ptr %4, align 4, !tbaa !48
  %44 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %23, ptr %44, align 4, !tbaa !48
  store i32 %7, ptr %5, align 4, !tbaa !48
  %45 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %31, ptr %45, align 4, !tbaa !48
  %46 = call fastcc i32 @isect_segments_i(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #9, !range !51
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store i32 %31, ptr %44, align 4, !tbaa !48
  store i32 %14, ptr %5, align 4, !tbaa !48
  store i32 %23, ptr %45, align 4, !tbaa !48
  %49 = call fastcc i32 @isect_segments_i(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #9, !range !51
  %50 = trunc i32 %49 to i8
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i8 [ 1, %43 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %53

53:                                               ; preds = %37, %40, %33, %25, %16, %9, %51
  %54 = phi i8 [ %52, %51 ], [ 0, %9 ], [ 0, %16 ], [ 0, %25 ], [ 0, %33 ], [ 1, %40 ], [ 1, %37 ]
  ret i8 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @isect_segments_i(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !52 {
  %5 = load i32, ptr %1, align 4, !tbaa !48
  %6 = load i32, ptr %0, align 4, !tbaa !48
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = getelementptr inbounds i32, ptr %2, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !48
  %12 = sub nsw i32 %9, %11
  %13 = mul nsw i32 %12, %7
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = getelementptr inbounds i32, ptr %0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = sub nsw i32 %15, %17
  %19 = load i32, ptr %3, align 4, !tbaa !48
  %20 = load i32, ptr %2, align 4, !tbaa !48
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %21, %18
  %23 = icmp eq i32 %13, %22
  br i1 %23, label %47, label %24

24:                                               ; preds = %4
  %25 = sub nsw i32 %13, %22
  %26 = sitofp i32 %25 to double
  %27 = sub nsw i32 %17, %11
  %28 = mul nsw i32 %21, %27
  %29 = sub nsw i32 %6, %20
  %30 = mul nsw i32 %29, %12
  %31 = sub nsw i32 %28, %30
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, %26
  %34 = mul nsw i32 %27, %7
  %35 = mul nsw i32 %29, %18
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, %26
  %39 = fcmp oge double %33, 0.000000e+00
  %40 = fcmp ole double %33, 1.000000e+00
  %41 = and i1 %39, %40
  %42 = fcmp oge double %38, 0.000000e+00
  %43 = select i1 %41, i1 %42, i1 false
  %44 = fcmp ole double %38, 1.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %4, %24
  %48 = phi i32 [ %46, %24 ], [ 1, %4 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = load float, ptr %1, align 4, !tbaa !49
  %7 = load float, ptr %0, align 4, !tbaa !45
  %8 = fcmp olt float %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load float, ptr %2, align 4, !tbaa !49
  %11 = fcmp olt float %10, %7
  br i1 %11, label %53, label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = fcmp ogt float %6, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load float, ptr %2, align 4, !tbaa !49
  %18 = fcmp ogt float %17, %14
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !47
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = fcmp olt float %27, %23
  br i1 %28, label %53, label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !46
  %32 = fcmp ogt float %21, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = fcmp ogt float %35, %31
  br i1 %36, label %53, label %37

37:                                               ; preds = %33, %29
  %38 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %0, ptr noundef nonnull %1) #9, !range !50
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %0, ptr noundef %2) #9, !range !50
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store float %7, ptr %4, align 4, !tbaa !49
  %44 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %23, ptr %44, align 4, !tbaa !49
  store float %7, ptr %5, align 4, !tbaa !49
  %45 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %31, ptr %45, align 4, !tbaa !49
  %46 = call fastcc i32 @isect_segments_fl(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #9, !range !51
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store float %31, ptr %44, align 4, !tbaa !49
  store float %14, ptr %5, align 4, !tbaa !49
  store float %23, ptr %45, align 4, !tbaa !49
  %49 = call fastcc i32 @isect_segments_fl(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #9, !range !51
  %50 = trunc i32 %49 to i8
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i8 [ 1, %43 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %53

53:                                               ; preds = %37, %40, %33, %25, %16, %9, %51
  %54 = phi i8 [ %52, %51 ], [ 0, %9 ], [ 0, %16 ], [ 0, %25 ], [ 0, %33 ], [ 1, %40 ], [ 1, %37 ]
  ret i8 %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @isect_segments_fl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !53 {
  %5 = load float, ptr %1, align 4, !tbaa !49
  %6 = load float, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %3, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = load float, ptr %3, align 4, !tbaa !49
  %16 = load float, ptr %2, align 4, !tbaa !49
  %17 = insertelement <2 x float> poison, float %12, i64 0
  %18 = insertelement <2 x float> %17, float %8, i64 1
  %19 = insertelement <2 x float> poison, float %14, i64 0
  %20 = insertelement <2 x float> %19, float %10, i64 1
  %21 = fsub <2 x float> %18, %20
  %22 = insertelement <2 x float> poison, float %5, i64 0
  %23 = insertelement <2 x float> %22, float %15, i64 1
  %24 = insertelement <2 x float> poison, float %6, i64 0
  %25 = insertelement <2 x float> %24, float %16, i64 1
  %26 = fsub <2 x float> %23, %25
  %27 = extractelement <2 x float> %21, i64 0
  %28 = fneg float %27
  %29 = extractelement <2 x float> %26, i64 1
  %30 = fmul float %29, %28
  %31 = extractelement <2 x float> %26, i64 0
  %32 = extractelement <2 x float> %21, i64 1
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %30)
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %61, label %35

35:                                               ; preds = %4
  %36 = fpext float %33 to double
  %37 = fsub float %14, %10
  %38 = fsub float %6, %16
  %39 = fneg float %38
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x float> %21, %41
  %43 = insertelement <2 x float> poison, float %37, i64 0
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %26, <2 x float> %42)
  %46 = fpext <2 x float> %45 to <2 x double>
  %47 = insertelement <2 x double> poison, double %36, i64 0
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = fdiv <2 x double> %46, %48
  %50 = extractelement <2 x double> %49, i64 1
  %51 = fcmp oge double %50, 0.000000e+00
  %52 = fcmp ole <2 x double> %49, <double 1.000000e+00, double 1.000000e+00>
  %53 = extractelement <2 x i1> %52, i64 1
  %54 = and i1 %51, %53
  %55 = extractelement <2 x double> %49, i64 0
  %56 = fcmp oge double %55, 0.000000e+00
  %57 = select i1 %54, i1 %56, i1 false
  %58 = extractelement <2 x i1> %52, i64 0
  %59 = select i1 %57, i1 %58, i1 false
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %4, %35
  %62 = phi i32 [ %60, %35 ], [ 1, %4 ]
  ret i32 %62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load i32, ptr %0, align 4, !tbaa !39
  %6 = sitofp i32 %5 to float
  %7 = fcmp ult float %4, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = sitofp i32 %10 to float
  %12 = fcmp ugt float %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8, %3
  %14 = fcmp olt float %4, %6
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = fsub float %6, %4
  br label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sitofp i32 %19 to float
  %21 = fsub float %4, %20
  br label %22

22:                                               ; preds = %15, %17, %8
  %23 = phi float [ 0.000000e+00, %8 ], [ %16, %15 ], [ %21, %17 ]
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = sitofp i32 %27 to float
  %29 = fcmp ult float %25, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !40
  %33 = sitofp i32 %32 to float
  %34 = fcmp ugt float %25, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %22
  %36 = fcmp olt float %25, %28
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = fsub float %28, %25
  br label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = sitofp i32 %41 to float
  %43 = fsub float %25, %42
  br label %44

44:                                               ; preds = %37, %39, %30
  %45 = phi float [ 0.000000e+00, %30 ], [ %38, %37 ], [ %43, %39 ]
  %46 = fmul float %45, %45
  %47 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %46)
  %48 = fmul float %2, %2
  %49 = fcmp ole float %47, %48
  %50 = zext i1 %49 to i8
  ret i8 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !45
  %6 = fcmp ult float %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fcmp ugt float %4, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %3
  %12 = fcmp olt float %4, %5
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = fsub float %5, %4
  br label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !42
  %18 = fsub float %4, %17
  br label %19

19:                                               ; preds = %13, %15, %7
  %20 = phi float [ 0.000000e+00, %7 ], [ %14, %13 ], [ %18, %15 ]
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !47
  %25 = fcmp ult float %22, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !46
  %29 = fcmp ugt float %22, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %19
  %31 = fcmp olt float %22, %24
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = fsub float %24, %22
  br label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = fsub float %22, %36
  br label %38

38:                                               ; preds = %32, %34, %26
  %39 = phi float [ 0.000000e+00, %26 ], [ %33, %32 ], [ %37, %34 ]
  %40 = fmul float %39, %39
  %41 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %40)
  %42 = fmul float %2, %2
  %43 = fcmp ole float %41, %42
  %44 = zext i1 %43 to i8
  ret i8 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fcmp ogt float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float %4, ptr %0, align 4, !tbaa !45
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp olt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %8, align 4, !tbaa !42
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store float %18, ptr %15, align 4, !tbaa !47
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !46
  %26 = fcmp olt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store float %25, ptr %22, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %4, ptr %0, align 4, !tbaa !39
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 %11, ptr %8, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 %18, ptr %15, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 %25, ptr %22, align 4, !tbaa !40
  br label %28

28:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rctf_init(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #4 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = insertelement <2 x float> poison, float %2, i64 0
  %9 = insertelement <2 x float> %8, float %4, i64 1
  %10 = fcmp ugt <2 x float> %7, %9
  %11 = shufflevector <2 x i1> %10, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %12 = shufflevector <2 x float> %9, <2 x float> %7, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %14 = select <4 x i1> %11, <4 x float> %12, <4 x float> %13
  store <4 x float> %14, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rcti_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %6, ptr %8, align 4
  store i32 %7, ptr %0, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %10 = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rcti_init_minmax(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store <4 x i32> <i32 2147483647, i32 -2147483648, i32 2147483647, i32 -2147483648>, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rctf_init_minmax(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store <4 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %0, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_do_minmax_v(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i32 %3, ptr %0, align 4, !tbaa !39
  %7 = load i32, ptr %1, align 4, !tbaa !48
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 %9, ptr %10, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds i32, ptr %1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  store i32 %16, ptr %17, align 4, !tbaa !41
  %21 = load i32, ptr %15, align 4, !tbaa !48
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 %23, ptr %24, align 4, !tbaa !40
  br label %28

28:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_do_minmax_v(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store float %3, ptr %0, align 4, !tbaa !45
  %7 = load float, ptr %1, align 4, !tbaa !49
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi float [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float %9, ptr %10, align 4, !tbaa !42
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  store float %16, ptr %17, align 4, !tbaa !47
  %21 = load float, ptr %15, align 4, !tbaa !49
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi float [ %21, %20 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !46
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store float %23, ptr %24, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_transform_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = load float, ptr %3, align 4, !tbaa !49
  %6 = load float, ptr %1, align 4, !tbaa !45
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fsub float %9, %6
  %11 = fdiv float %7, %10
  store float %11, ptr %2, align 4, !tbaa !49
  %12 = load float, ptr %0, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = fsub float %14, %12
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %11, float %12)
  store float %16, ptr %2, align 4, !tbaa !49
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = fsub float %18, %20
  %22 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = fsub float %23, %20
  %25 = fdiv float %21, %24
  %26 = getelementptr inbounds float, ptr %2, i64 1
  store float %25, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !47
  %29 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !46
  %31 = fsub float %30, %28
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %25, float %28)
  store float %32, ptr %26, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_translate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load <4 x i32>, ptr %0, align 4, !tbaa !48
  %5 = insertelement <4 x i32> poison, i32 %1, i64 0
  %6 = insertelement <4 x i32> %5, i32 %2, i64 1
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %8 = add nsw <4 x i32> %4, %7
  store <4 x i32> %8, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_translate(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
  %4 = load <4 x float>, ptr %0, align 4, !tbaa !49
  %5 = insertelement <4 x float> poison, float %1, i64 0
  %6 = insertelement <4 x float> %5, float %2, i64 1
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %8 = fadd <4 x float> %4, %7
  store <4 x float> %8, ptr %0, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_recenter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %0) #9, !range !54
  %5 = sub nsw i32 %1, %4
  %6 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef %0) #9, !range !54
  %7 = sub nsw i32 %2, %6
  tail call void @BLI_rcti_translate(ptr noundef %0, i32 noundef %5, i32 noundef %7) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !55 {
  %2 = load i32, ptr %0, align 4, !tbaa !39
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_recenter(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
  %4 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef %0) #9
  %5 = fsub float %1, %4
  %6 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef %0) #9
  %7 = fsub float %2, %6
  tail call void @BLI_rctf_translate(ptr noundef %0, float noundef %5, float noundef %7) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = load float, ptr %0, align 4, !tbaa !45
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !42
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !47
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_resize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %0) #9, !range !54
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !34
  store i32 %4, ptr %0, align 4, !tbaa !39
  %6 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %0) #9, !range !54
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %9 = sdiv i32 %1, -2
  %10 = add nsw i32 %4, %9
  store i32 %10, ptr %0, align 4, !tbaa !39
  %11 = sdiv i32 %2, -2
  %12 = add nsw i32 %6, %11
  store i32 %12, ptr %8, align 4, !tbaa !41
  %13 = add nsw i32 %10, %1
  store i32 %13, ptr %5, align 4, !tbaa !34
  %14 = add nsw i32 %12, %2
  store i32 %14, ptr %7, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_resize(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
  %4 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %4, ptr %5, align 4, !tbaa !42
  store float %4, ptr %0, align 4, !tbaa !45
  %6 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %0) #9
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float %4)
  store float %10, ptr %0, align 4, !tbaa !45
  %11 = fneg float %2
  %12 = tail call float @llvm.fmuladd.f32(float %11, float 5.000000e-01, float %6)
  store float %12, ptr %8, align 4, !tbaa !47
  %13 = fadd float %10, %1
  store float %13, ptr %5, align 4, !tbaa !42
  %14 = fadd float %12, %2
  store float %14, ptr %7, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_scale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %0) #9, !range !54
  %4 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef %0) #9, !range !54
  %5 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %0) #9
  %6 = fmul float %1, 5.000000e-01
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #9
  %8 = insertelement <2 x i32> poison, i32 %5, i64 0
  %9 = insertelement <2 x i32> %8, i32 %7, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = insertelement <2 x float> poison, float %6, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %12, %10
  %14 = fptosi <2 x float> %13 to <2 x i32>
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %16 = insertelement <4 x i32> poison, i32 %3, i64 0
  %17 = insertelement <4 x i32> %16, i32 %4, i64 1
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %19 = sub nsw <4 x i32> %18, %15
  %20 = add nsw <4 x i32> %18, %15
  %21 = shufflevector <4 x i32> %19, <4 x i32> %20, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %21, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !40
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_scale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef %0) #9
  %4 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef %0) #9
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %0) #9
  %6 = fmul float %1, 5.000000e-01
  %7 = fmul float %6, %5
  %8 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #9
  %9 = fmul float %6, %8
  %10 = fsub float %3, %7
  store float %10, ptr %0, align 4, !tbaa !45
  %11 = fsub float %4, %9
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = fadd float %3, %7
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %13, ptr %14, align 4, !tbaa !42
  %15 = fadd float %4, %9
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %15, ptr %16, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !42
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !46
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_interp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load <4 x float>, ptr %1, align 4, !tbaa !49
  %7 = load <4 x float>, ptr %2, align 4, !tbaa !49
  %8 = insertelement <4 x float> poison, float %3, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = fmul <4 x float> %7, %9
  %11 = insertelement <4 x float> poison, float %5, i64 0
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %12, <4 x float> %10)
  store <4 x float> %13, ptr %0, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_clamp_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float %4, ptr %1, align 4, !tbaa !49
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi float [ %4, %6 ], [ %3, %2 ]
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp ogt float %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %1, align 4, !tbaa !49
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8 [ 1, %13 ], [ %9, %7 ]
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = fcmp olt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store float %19, ptr %16, align 4, !tbaa !49
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi float [ %19, %21 ], [ %17, %14 ]
  %24 = phi i8 [ 1, %21 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !46
  %27 = fcmp ogt float %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store float %26, ptr %16, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8 [ 1, %28 ], [ %24, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_clamp_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %4, ptr %1, align 4, !tbaa !48
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ %4, %6 ], [ %3, %2 ]
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 %11, ptr %1, align 4, !tbaa !48
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8 [ 1, %13 ], [ %9, %7 ]
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 %19, ptr %16, align 4, !tbaa !48
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i32 [ %19, %21 ], [ %17, %14 ]
  %24 = phi i8 [ 1, %21 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 %26, ptr %16, align 4, !tbaa !48
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8 [ 1, %28 ], [ %24, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !45
  %6 = fsub float %4, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp olt float %7, %2
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !42
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %2
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = fsub float %19, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp olt float %23, %2
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = fsub float %27, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp olt float %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %9, %25, %17, %3
  br label %34

34:                                               ; preds = %25, %33
  %35 = phi i8 [ 0, %33 ], [ 1, %25 ]
  ret i8 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %6, %18, %12, %2
  br label %25

25:                                               ; preds = %18, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = load <4 x float>, ptr %0, align 4, !tbaa !49
  %5 = load <4 x float>, ptr %1, align 4, !tbaa !49
  %6 = shufflevector <4 x float> %4, <4 x float> %5, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %7 = shufflevector <4 x float> %5, <4 x float> %4, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %8 = fcmp ogt <4 x float> %6, %7
  %9 = select <4 x i1> %8, <4 x float> %4, <4 x float> %5
  %10 = extractelement <4 x float> %9, i64 0
  %11 = extractelement <4 x float> %9, i64 1
  %12 = fcmp ult float %11, %10
  %13 = extractelement <4 x float> %9, i64 2
  %14 = extractelement <4 x float> %9, i64 3
  %15 = fcmp ult float %14, %13
  %16 = select i1 %12, i1 true, i1 %15
  %17 = icmp eq ptr %2, null
  br i1 %16, label %20, label %18

18:                                               ; preds = %3
  br i1 %17, label %22, label %19

19:                                               ; preds = %18
  store <4 x float> %9, ptr %2, align 4, !tbaa !49
  br label %22

20:                                               ; preds = %3
  br i1 %17, label %22, label %21

21:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %20, %21, %18, %19
  %23 = phi i8 [ 1, %19 ], [ 1, %18 ], [ 0, %21 ], [ 0, %20 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = load i32, ptr %1, align 4, !tbaa !39
  %6 = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = tail call i32 @llvm.smin.i32(i32 %8, i32 %10)
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  %17 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %20)
  %22 = icmp slt i32 %11, %6
  %23 = icmp slt i32 %21, %16
  %24 = select i1 %22, i1 true, i1 %23
  %25 = icmp eq ptr %2, null
  br i1 %24, label %31, label %26

26:                                               ; preds = %3
  br i1 %25, label %33, label %27

27:                                               ; preds = %26
  store i32 %6, ptr %2, align 4, !tbaa !39
  %28 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %11, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %16, ptr %29, align 4, !tbaa !41
  %30 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %21, ptr %30, align 4, !tbaa !40
  br label %33

31:                                               ; preds = %3
  br i1 %25, label %33, label %32

32:                                               ; preds = %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %31, %32, %26, %27
  %34 = phi i8 [ 1, %27 ], [ 1, %26 ], [ 0, %32 ], [ 0, %31 ]
  ret i8 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_rctf_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fadd float %3, 5.000000e-01
  %5 = tail call float @llvm.floor.f32(float %4)
  %6 = fptosi float %5 to i32
  store i32 %6, ptr %0, align 4, !tbaa !39
  %7 = sitofp i32 %6 to float
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %1) #9
  %9 = fadd float %8, 5.000000e-01
  %10 = tail call float @llvm.floor.f32(float %9)
  %11 = fadd float %10, %7
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fadd float %14, 5.000000e-01
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = insertelement <2 x float> poison, float %11, i64 0
  %18 = insertelement <2 x float> %17, float %16, i64 1
  %19 = fptosi <2 x float> %18 to <2 x i32>
  store <2 x i32> %19, ptr %12, align 4, !tbaa !48
  %20 = extractelement <2 x i32> %19, i64 1
  %21 = sitofp i32 %20 to float
  %22 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %1) #9
  %23 = fadd float %22, 5.000000e-01
  %24 = tail call float @llvm.floor.f32(float %23)
  %25 = fadd float %24, %21
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %26, ptr %27, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_rcti_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load <4 x i32>, ptr %1, align 4, !tbaa !48
  %4 = sitofp <4 x i32> %3 to <4 x float>
  store <4 x float> %4, ptr %0, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_rctf(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fpext float %12 to double
  %14 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %1) #9
  %15 = fpext float %14 to double
  %16 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %1) #9
  %17 = fpext float %16 to double
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13, double noundef %15, double noundef %17) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_rcti(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  %4 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #9
  %11 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #9
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %10, i32 noundef %11) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !36, i64 4}
!35 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = !{!35, !36, i64 12}
!41 = !{!35, !36, i64 8}
!42 = !{!43, !44, i64 4}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!43, !44, i64 0}
!46 = !{!43, !44, i64 12}
!47 = !{!43, !44, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!44, !44, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{i32 0, i32 2}
!52 = !{!"rct.c:isect_segments_i"}
!53 = !{!"rct.c:isect_segments_fl"}
!54 = !{i32 -1073741824, i32 1073741824}
!55 = !{!"rct.c:BLI_rcti_cent_x"}
!56 = !{!"rct.c:BLI_rcti_cent_y"}
!57 = !{!"rct.c:BLI_rctf_cent_x"}
!58 = !{!"rct.c:BLI_rctf_cent_y"}
!59 = !{!"rct.c:BLI_rcti_size_x"}
!60 = !{!"rct.c:BLI_rcti_size_y"}
!61 = !{!"rct.c:BLI_rctf_size_x"}
!62 = !{!"rct.c:BLI_rctf_size_y"}

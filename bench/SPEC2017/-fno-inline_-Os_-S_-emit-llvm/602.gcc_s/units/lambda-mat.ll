; ModuleID = 'lambda-mat.c'
source_filename = "lambda-mat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"lambda-mat.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"./lambda.h\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_matrix_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %4) #17
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = zext nneg i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %13, %9 ]
  %11 = tail call fastcc ptr @lambda_vector_new(i32 noundef %1) #18
  %12 = getelementptr inbounds ptr, ptr %5, i64 %10
  store ptr %11, ptr %12, align 8, !tbaa !6
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %15, label %9, !llvm.loop !10

15:                                               ; preds = %9, %2
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_vector_new(i32 noundef %0) unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds ptr, ptr %1, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_copy(ptr noundef %11, ptr noundef %13, i32 noundef %3) #18
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !12

16:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %52

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = add nuw nsw i64 %5, 3
  %7 = and i64 %6, 4294967292
  %8 = add nsw i64 %5, -1
  %9 = insertelement <4 x i64> poison, i64 %8, i64 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %49, %4
  %12 = phi i64 [ 0, %4 ], [ %50, %49 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %45, %11
  %16 = phi i64 [ 0, %11 ], [ %46, %45 ]
  %17 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %11 ], [ %47, %45 ]
  %18 = icmp ule <4 x i64> %17, %10
  %19 = extractelement <4 x i1> %18, i64 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = icmp eq i64 %12, %16
  %22 = getelementptr inbounds i32, ptr %14, i64 %16
  %23 = zext i1 %21 to i32
  store i32 %23, ptr %22, align 4, !tbaa !13
  br label %24

24:                                               ; preds = %20, %15
  %25 = extractelement <4 x i1> %18, i64 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = or disjoint i64 %16, 1
  %28 = icmp eq i64 %12, %27
  %29 = getelementptr inbounds i32, ptr %14, i64 %27
  %30 = zext i1 %28 to i32
  store i32 %30, ptr %29, align 4, !tbaa !13
  br label %31

31:                                               ; preds = %26, %24
  %32 = extractelement <4 x i1> %18, i64 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = or disjoint i64 %16, 2
  %35 = icmp eq i64 %12, %34
  %36 = getelementptr inbounds i32, ptr %14, i64 %34
  %37 = zext i1 %35 to i32
  store i32 %37, ptr %36, align 4, !tbaa !13
  br label %38

38:                                               ; preds = %33, %31
  %39 = extractelement <4 x i1> %18, i64 3
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = or disjoint i64 %16, 3
  %42 = icmp eq i64 %12, %41
  %43 = getelementptr inbounds i32, ptr %14, i64 %41
  %44 = zext i1 %42 to i32
  store i32 %44, ptr %43, align 4, !tbaa !13
  br label %45

45:                                               ; preds = %40, %38
  %46 = add i64 %16, 4
  %47 = add <4 x i64> %17, <i64 4, i64 4, i64 4, i64 4>
  %48 = icmp eq i64 %46, %7
  br i1 %48, label %49, label %15, !llvm.loop !15

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %12, 1
  %51 = icmp eq i64 %50, %5
  br i1 %51, label %52, label %11, !llvm.loop !18

52:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @lambda_matrix_id_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %24, %4
  %7 = phi i64 [ 0, %4 ], [ %25, %24 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i32, ptr %9, i64 %7
  br label %11

11:                                               ; preds = %6, %21
  %12 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, ptr %10, align 4, !tbaa !13
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds i32, ptr %9, i64 %12
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %5
  br i1 %23, label %24, label %11, !llvm.loop !19

24:                                               ; preds = %21
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %27, label %6, !llvm.loop !20

27:                                               ; preds = %24, %17, %14, %2
  %28 = phi i8 [ 1, %2 ], [ 0, %14 ], [ 0, %17 ], [ 1, %24 ]
  ret i8 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_negate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds ptr, ptr %1, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_negate(ptr noundef %11, ptr noundef %13, i32 noundef %3) #18
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !21

16:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_negate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #7 {
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_mult_const(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = sub nsw i32 0, %10
  %12 = getelementptr inbounds i32, ptr %1, i64 %8
  store i32 %11, ptr %12, align 4, !tbaa !13
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %15, label %7, !llvm.loop !22

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @lambda_vector_clear(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = sext i32 %1 to i64
  %4 = shl nsw i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %4, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_transpose(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  %8 = zext nneg i32 %3 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  br i1 %7, label %12, label %24

12:                                               ; preds = %10
  %13 = getelementptr inbounds ptr, ptr %1, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %22, %15 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %20, ptr %21, align 4, !tbaa !13
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %15, !llvm.loop !23

24:                                               ; preds = %15, %10
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !24

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %17, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds ptr, ptr %1, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds ptr, ptr %2, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_add(ptr noundef %12, ptr noundef %14, ptr noundef %16, i32 noundef %4) #18
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !25

19:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #7 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = getelementptr inbounds i32, ptr %1, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = add nsw i32 %13, %11
  %15 = getelementptr inbounds i32, ptr %2, i64 %9
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !26

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_add_mc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %19, %11 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds ptr, ptr %2, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %4, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_add_mc(ptr noundef %14, i32 noundef %1, ptr noundef %16, i32 noundef %3, ptr noundef %18, i32 noundef %6) #18
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !27

21:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_add_mc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #7 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %20, %10 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = mul nsw i32 %13, %1
  %15 = getelementptr inbounds i32, ptr %2, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = mul nsw i32 %16, %3
  %18 = add nsw i32 %17, %14
  %19 = getelementptr inbounds i32, ptr %4, i64 %11
  store i32 %18, ptr %19, align 4, !tbaa !13
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !28

22:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %6
  %9 = icmp sgt i32 %5, 0
  %10 = icmp sgt i32 %4, 0
  %11 = zext nneg i32 %3 to i64
  %12 = zext nneg i32 %5 to i64
  %13 = zext nneg i32 %4 to i64
  br label %14

14:                                               ; preds = %8, %41
  %15 = phi i64 [ 0, %8 ], [ %42, %41 ]
  br i1 %9, label %16, label %41

16:                                               ; preds = %14
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds ptr, ptr %0, i64 %15
  br label %20

20:                                               ; preds = %16, %38
  %21 = phi i64 [ 0, %16 ], [ %39, %38 ]
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  store i32 0, ptr %22, align 4, !tbaa !13
  br i1 %10, label %23, label %38

23:                                               ; preds = %20
  %24 = load ptr, ptr %19, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %36, %25 ]
  %27 = phi i32 [ 0, %23 ], [ %35, %25 ]
  %28 = getelementptr inbounds i32, ptr %24, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = getelementptr inbounds ptr, ptr %1, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i32, ptr %31, i64 %21
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = mul nsw i32 %33, %29
  %35 = add nsw i32 %27, %34
  store i32 %35, ptr %22, align 4, !tbaa !13
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %13
  br i1 %37, label %38, label %25, !llvm.loop !29

38:                                               ; preds = %25, %20
  %39 = add nuw nsw i64 %21, 1
  %40 = icmp eq i64 %39, %12
  br i1 %40, label %41, label %20, !llvm.loop !30

41:                                               ; preds = %38, %14
  %42 = add nuw nsw i64 %15, 1
  %43 = icmp eq i64 %42, %11
  br i1 %43, label %44, label %14, !llvm.loop !31

44:                                               ; preds = %41, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @lambda_matrix_delete_rows(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = sub i32 %3, %2
  %6 = icmp slt i32 %3, %1
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = sext i32 %3 to i64
  %9 = sext i32 %5 to i64
  %10 = sext i32 %1 to i64
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %8, %7 ], [ %17, %11 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = sub nsw i64 %12, %9
  %16 = getelementptr inbounds ptr, ptr %0, i64 %15
  store ptr %14, ptr %16, align 8, !tbaa !6
  %17 = add nsw i64 %12, 1
  %18 = icmp eq i64 %17, %10
  br i1 %18, label %19, label %11, !llvm.loop !32

19:                                               ; preds = %11, %4
  %20 = icmp sgt i32 %5, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = sub i32 %1, %5
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  %25 = getelementptr i8, ptr %0, i64 %24
  %26 = add i32 %2, %1
  %27 = add i32 %26, 1
  %28 = sub i32 %27, %3
  %29 = tail call i32 @llvm.smax.i32(i32 %1, i32 %28)
  %30 = add i32 %29, %3
  %31 = xor i32 %2, -1
  %32 = add i32 %30, %31
  %33 = sub i32 %32, %1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, i8 0, i64 %36, i1 false), !tbaa !6
  br label %37

37:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @lambda_matrix_row_exchange(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  store ptr %9, ptr %5, align 8, !tbaa !6
  store ptr %6, ptr %8, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp ne i32 %4, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = zext nneg i32 %1 to i64
  br label %17

17:                                               ; preds = %9, %17
  %18 = phi i64 [ 0, %9 ], [ %25, %17 ]
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = mul nsw i32 %20, %4
  %22 = getelementptr inbounds i32, ptr %15, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = add nsw i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !13
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %16
  br i1 %26, label %27, label %17, !llvm.loop !33

27:                                               ; preds = %17, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_negate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_negate(ptr noundef %6, ptr noundef %6, i32 noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_mc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %16, %11 ]
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = mul nsw i32 %14, %3
  store i32 %15, ptr %13, align 4, !tbaa !13
  %16 = add nuw nsw i64 %12, 1
  %17 = icmp eq i64 %16, %10
  br i1 %17, label %18, label %11, !llvm.loop !34

18:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_exchange(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = sext i32 %3 to i64
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds i32, ptr %13, i64 %7
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = getelementptr inbounds i32, ptr %13, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !13
  store i32 %17, ptr %14, align 4, !tbaa !13
  store i32 %15, ptr %16, align 4, !tbaa !13
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !35

20:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp ne i32 %4, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = sext i32 %3 to i64
  %12 = zext nneg i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %23, %13 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds i32, ptr %16, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !13
  %19 = mul nsw i32 %18, %4
  %20 = getelementptr inbounds i32, ptr %16, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = add nsw i32 %21, %19
  store i32 %22, ptr %20, align 4, !tbaa !13
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %25, label %13, !llvm.loop !36

25:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_negate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %15, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds i32, ptr %11, i64 %6
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = sub nsw i32 0, %13
  store i32 %14, ptr %12, align 4, !tbaa !13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !37

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_mc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i32, ptr %12, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = mul nsw i32 %14, %3
  store i32 %15, ptr %13, align 4, !tbaa !13
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !38

18:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lambda_matrix_inverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %36

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = getelementptr inbounds ptr, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = getelementptr inbounds i32, ptr %6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = getelementptr inbounds i32, ptr %9, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = load ptr, ptr %1, align 8, !tbaa !6
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = sub nsw i32 0, %12
  %17 = getelementptr inbounds i32, ptr %15, i64 1
  store i32 %16, ptr %17, align 4, !tbaa !13
  %18 = sub nsw i32 0, %10
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  store i32 %18, ptr %20, align 4, !tbaa !13
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %7, ptr %21, align 4, !tbaa !13
  %22 = mul nsw i32 %14, %7
  %23 = mul nsw i32 %12, %10
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %5
  %27 = sub nsw i32 0, %24
  %28 = load i32, ptr %15, align 4, !tbaa !13
  %29 = sub nsw i32 0, %28
  store i32 %29, ptr %15, align 4, !tbaa !13
  %30 = load i32, ptr %20, align 4, !tbaa !13
  %31 = sub nsw i32 0, %30
  store i32 %31, ptr %20, align 4, !tbaa !13
  %32 = load i32, ptr %17, align 4, !tbaa !13
  %33 = sub nsw i32 0, %32
  store i32 %33, ptr %17, align 4, !tbaa !13
  %34 = load i32, ptr %21, align 4, !tbaa !13
  %35 = sub nsw i32 0, %34
  store i32 %35, ptr %21, align 4, !tbaa !13
  br label %38

36:                                               ; preds = %3
  %37 = tail call fastcc i32 @lambda_matrix_inverse_hard(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  br label %38

38:                                               ; preds = %5, %26, %36
  %39 = phi i32 [ %37, %36 ], [ %27, %26 ], [ %24, %5 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lambda_matrix_inverse_hard(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @lambda_matrix_new(i32 noundef %2, i32 noundef %2) #18
  tail call void @lambda_matrix_copy(ptr noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef %2) #18
  tail call void @lambda_matrix_id(ptr noundef %1, i32 noundef %2) #18
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %114

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  %8 = zext nneg i32 %2 to i64
  br label %17

9:                                                ; preds = %41, %22
  %10 = add nuw nsw i64 %18, 1
  %11 = icmp eq i64 %23, %8
  br i1 %11, label %12, label %17, !llvm.loop !39

12:                                               ; preds = %9
  br i1 %5, label %13, label %114

13:                                               ; preds = %12
  %14 = add nsw i32 %2, -2
  %15 = zext nneg i32 %2 to i64
  %16 = zext nneg i32 %2 to i64
  br label %62

17:                                               ; preds = %6, %9
  %18 = phi i64 [ 1, %6 ], [ %10, %9 ]
  %19 = phi i64 [ 0, %6 ], [ %23, %9 ]
  %20 = getelementptr inbounds ptr, ptr %4, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  br label %31

22:                                               ; preds = %38
  %23 = add nuw nsw i64 %19, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef nonnull %21, i32 noundef %2, i32 noundef %24) #18
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %27, label %9

27:                                               ; preds = %22
  %28 = icmp ult i64 %23, %7
  %29 = getelementptr inbounds i32, ptr %21, i64 %19
  %30 = trunc i64 %19 to i32
  br label %44

31:                                               ; preds = %17, %38
  %32 = phi i64 [ %19, %17 ], [ %39, %38 ]
  %33 = getelementptr inbounds i32, ptr %21, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = trunc i64 %32 to i32
  tail call void @lambda_matrix_col_negate(ptr noundef %4, i32 noundef %2, i32 noundef %37) #18
  tail call void @lambda_matrix_col_negate(ptr noundef %1, i32 noundef %2, i32 noundef %37) #18
  br label %38

38:                                               ; preds = %31, %36
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %22, label %31, !llvm.loop !40

41:                                               ; preds = %55, %44
  %42 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %21, i32 noundef %2, i32 noundef %24) #18
  %43 = icmp slt i32 %42, %2
  br i1 %43, label %44, label %9, !llvm.loop !41

44:                                               ; preds = %27, %41
  %45 = tail call fastcc i32 @lambda_vector_min_nz(ptr noundef %21, i32 noundef %2, i32 noundef %30) #18
  tail call void @lambda_matrix_col_exchange(ptr noundef %4, i32 noundef %2, i32 noundef %30, i32 noundef %45) #18
  tail call void @lambda_matrix_col_exchange(ptr noundef %1, i32 noundef %2, i32 noundef %30, i32 noundef %45) #18
  br i1 %28, label %46, label %41

46:                                               ; preds = %44, %55
  %47 = phi i64 [ %58, %55 ], [ %18, %44 ]
  %48 = getelementptr inbounds i32, ptr %21, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = sub nsw i32 0, %49
  %51 = load i32, ptr %29, align 4, !tbaa !13
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = sdiv i32 %50, %51
  br label %55

55:                                               ; preds = %53, %46
  %56 = phi i32 [ %54, %53 ], [ %50, %46 ]
  %57 = trunc i64 %47 to i32
  tail call void @lambda_matrix_col_add(ptr noundef %4, i32 noundef %2, i32 noundef %30, i32 noundef %57, i32 noundef %56) #18
  tail call void @lambda_matrix_col_add(ptr noundef %1, i32 noundef %2, i32 noundef %30, i32 noundef %57, i32 noundef %56) #18
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %58, %8
  br i1 %59, label %41, label %46, !llvm.loop !42

60:                                               ; preds = %110
  %61 = add nsw i32 %64, -1
  br i1 %97, label %62, label %114, !llvm.loop !43

62:                                               ; preds = %13, %60
  %63 = phi i64 [ %15, %13 ], [ %69, %60 ]
  %64 = phi i32 [ %14, %13 ], [ %61, %60 ]
  %65 = phi i32 [ %2, %13 ], [ %67, %60 ]
  %66 = phi i32 [ 1, %13 ], [ %96, %60 ]
  %67 = add nsw i32 %65, -1
  %68 = zext i32 %64 to i64
  %69 = add nsw i64 %63, -1
  %70 = getelementptr inbounds ptr, ptr %4, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds i32, ptr %71, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.1) #17
  br label %79

76:                                               ; preds = %62
  %77 = mul nsw i32 %73, %66
  %78 = icmp eq i32 %73, 1
  br i1 %78, label %95, label %79

79:                                               ; preds = %75, %76
  %80 = phi i32 [ 0, %75 ], [ %77, %76 ]
  %81 = icmp ugt i64 %63, 1
  br i1 %81, label %86, label %82

82:                                               ; preds = %86, %79
  %83 = icmp slt i64 %63, %16
  br i1 %83, label %84, label %94

84:                                               ; preds = %82
  %85 = trunc i64 %63 to i32
  br label %90

86:                                               ; preds = %79, %86
  %87 = phi i32 [ %88, %86 ], [ 0, %79 ]
  tail call void @lambda_matrix_col_mc(ptr noundef %1, i32 noundef %2, i32 noundef %87, i32 noundef %73) #18
  %88 = add nuw nsw i32 %87, 1
  %89 = icmp eq i32 %88, %67
  br i1 %89, label %82, label %86, !llvm.loop !44

90:                                               ; preds = %84, %90
  %91 = phi i32 [ %92, %90 ], [ %85, %84 ]
  tail call void @lambda_matrix_col_mc(ptr noundef %1, i32 noundef %2, i32 noundef %91, i32 noundef %73) #18
  %92 = add i32 %91, 1
  %93 = icmp eq i32 %92, %2
  br i1 %93, label %94, label %90, !llvm.loop !45

94:                                               ; preds = %90, %82
  store i32 1, ptr %72, align 4, !tbaa !13
  br label %95

95:                                               ; preds = %94, %76
  %96 = phi i32 [ %80, %94 ], [ %77, %76 ]
  %97 = icmp sgt i64 %63, 1
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = trunc i64 %69 to i32
  br label %100

100:                                              ; preds = %98, %110
  %101 = phi i64 [ %68, %98 ], [ %112, %110 ]
  %102 = getelementptr inbounds i32, ptr %71, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = trunc i64 %101 to i32
  br label %110

107:                                              ; preds = %100
  %108 = sub nsw i32 0, %103
  %109 = trunc i64 %101 to i32
  tail call void @lambda_matrix_col_add(ptr noundef %4, i32 noundef %2, i32 noundef %99, i32 noundef %109, i32 noundef %108) #18
  tail call void @lambda_matrix_col_add(ptr noundef %1, i32 noundef %2, i32 noundef %99, i32 noundef %109, i32 noundef %108) #18
  br label %110

110:                                              ; preds = %105, %107
  %111 = phi i32 [ %106, %105 ], [ %109, %107 ]
  %112 = add nsw i64 %101, -1
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %100, label %60, !llvm.loop !46

114:                                              ; preds = %60, %95, %3, %12
  %115 = phi i32 [ 1, %12 ], [ 1, %3 ], [ %96, %95 ], [ %96, %60 ]
  ret i32 %115
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @lambda_vector_first_nz(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ %6, %5 ], [ %13, %12 ]
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = add nsw i64 %8, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %18, label %7, !llvm.loop !47

16:                                               ; preds = %7
  %17 = trunc i64 %8 to i32
  br label %18

18:                                               ; preds = %12, %16, %3
  %19 = phi i32 [ %2, %3 ], [ %17, %16 ], [ %1, %12 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lambda_vector_min_nz(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 345, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp slt i32 %2, %1
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = sext i32 %2 to i64
  %10 = sext i32 %1 to i64
  br label %11

11:                                               ; preds = %8, %26
  %12 = phi i64 [ %9, %8 ], [ %28, %26 ]
  %13 = phi i32 [ -1, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = icmp slt i32 %13, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %17
  %25 = trunc i64 %12 to i32
  br label %26

26:                                               ; preds = %11, %24, %19
  %27 = phi i32 [ %25, %24 ], [ %13, %19 ], [ %13, %11 ]
  %28 = add nsw i64 %12, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %11, !llvm.loop !48

30:                                               ; preds = %26
  %31 = icmp sgt i32 %27, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %6, %30
  %33 = phi i32 [ %27, %30 ], [ -1, %6 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 352, ptr noundef nonnull @.str.1) #17
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i32 [ %27, %30 ], [ %33, %32 ]
  ret i32 %35
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lambda_matrix_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call void @lambda_matrix_copy(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef %1) #18
  tail call void @lambda_matrix_id(ptr noundef %3, i32 noundef %1) #18
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  %8 = zext nneg i32 %1 to i64
  br label %12

9:                                                ; preds = %38, %17
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %18, %8
  br i1 %11, label %53, label %12, !llvm.loop !49

12:                                               ; preds = %6, %9
  %13 = phi i64 [ 1, %6 ], [ %10, %9 ]
  %14 = phi i64 [ 0, %6 ], [ %18, %9 ]
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %26

17:                                               ; preds = %35
  %18 = add nuw nsw i64 %14, 1
  %19 = trunc i64 %18 to i32
  %20 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %19) #18
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %22, label %9

22:                                               ; preds = %17
  %23 = icmp ult i64 %18, %7
  %24 = getelementptr inbounds i32, ptr %16, i64 %14
  %25 = trunc i64 %14 to i32
  br label %41

26:                                               ; preds = %12, %35
  %27 = phi i64 [ %14, %12 ], [ %36, %35 ]
  %28 = getelementptr inbounds i32, ptr %16, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = trunc i64 %27 to i32
  tail call void @lambda_matrix_col_negate(ptr noundef %2, i32 noundef %1, i32 noundef %32) #18
  %33 = getelementptr inbounds ptr, ptr %3, i64 %27
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  tail call fastcc void @lambda_vector_negate(ptr noundef %34, ptr noundef %34, i32 noundef %1) #18
  br label %35

35:                                               ; preds = %26, %31
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, %8
  br i1 %37, label %17, label %26, !llvm.loop !50

38:                                               ; preds = %43, %41
  %39 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %16, i32 noundef %1, i32 noundef %19) #18
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %41, label %9, !llvm.loop !51

41:                                               ; preds = %22, %38
  %42 = tail call fastcc i32 @lambda_vector_min_nz(ptr noundef %16, i32 noundef %1, i32 noundef %25) #18
  tail call void @lambda_matrix_col_exchange(ptr noundef %2, i32 noundef %1, i32 noundef %25, i32 noundef %42) #18
  tail call void @lambda_matrix_row_exchange(ptr noundef %3, i32 noundef %25, i32 noundef %42) #18
  br i1 %23, label %43, label %38

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %51, %43 ], [ %13, %41 ]
  %45 = getelementptr inbounds i32, ptr %16, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !13
  %47 = load i32, ptr %24, align 4, !tbaa !13
  %48 = sdiv i32 %46, %47
  %49 = sub nsw i32 0, %48
  %50 = trunc i64 %44 to i32
  tail call void @lambda_matrix_col_add(ptr noundef %2, i32 noundef %1, i32 noundef %25, i32 noundef %50, i32 noundef %49) #18
  tail call void @lambda_matrix_row_add(ptr noundef %3, i32 noundef %1, i32 noundef %50, i32 noundef %25, i32 noundef %48) #18
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %8
  br i1 %52, label %38, label %43, !llvm.loop !52

53:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_right_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #2 {
  tail call void @lambda_matrix_copy(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2) #18
  tail call void @lambda_matrix_id(ptr noundef %4, i32 noundef %1) #18
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %57

7:                                                ; preds = %5
  %8 = sext i32 %1 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %53
  %11 = phi i64 [ 0, %7 ], [ %55, %53 ]
  %12 = phi i32 [ 0, %7 ], [ %54, %53 ]
  %13 = getelementptr inbounds ptr, ptr %3, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %14, i32 noundef %1, i32 noundef %12) #18
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = add nsw i32 %12, 1
  %19 = icmp slt i32 %18, %1
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = sext i32 %18 to i64
  br label %24

22:                                               ; preds = %37, %24
  %23 = icmp sgt i64 %26, %21
  br i1 %23, label %24, label %53, !llvm.loop !53

24:                                               ; preds = %20, %22
  %25 = phi i64 [ %8, %20 ], [ %26, %22 ]
  %26 = add nsw i64 %25, -1
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds ptr, ptr %3, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i32, ptr %29, i64 %11
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %24
  %34 = add nsw i64 %25, -2
  %35 = getelementptr inbounds ptr, ptr %3, i64 %34
  %36 = trunc i64 %34 to i32
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %31, %33 ], [ %51, %37 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !6
  %40 = getelementptr inbounds i32, ptr %39, i64 %11
  %41 = load i32, ptr %40, align 4, !tbaa !13
  %42 = mul nsw i32 %41, %38
  %43 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %44 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %45 = udiv i32 %43, %44
  %46 = sub nsw i32 0, %45
  %47 = icmp slt i32 %42, 0
  %48 = select i1 %47, i32 %45, i32 %46
  tail call void @lambda_matrix_row_add(ptr noundef nonnull %3, i32 noundef %2, i32 noundef %27, i32 noundef %36, i32 noundef %48) #18
  tail call void @lambda_matrix_row_exchange(ptr noundef nonnull %3, i32 noundef %27, i32 noundef %36) #18
  tail call void @lambda_matrix_row_add(ptr noundef %4, i32 noundef %1, i32 noundef %27, i32 noundef %36, i32 noundef %48) #18
  tail call void @lambda_matrix_row_exchange(ptr noundef %4, i32 noundef %27, i32 noundef %36) #18
  %49 = load ptr, ptr %28, align 8, !tbaa !6
  %50 = getelementptr inbounds i32, ptr %49, i64 %11
  %51 = load i32, ptr %50, align 4, !tbaa !13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %22, label %37, !llvm.loop !54

53:                                               ; preds = %22, %17, %10
  %54 = phi i32 [ %12, %10 ], [ %18, %17 ], [ %18, %22 ]
  %55 = add nuw nsw i64 %11, 1
  %56 = icmp eq i64 %55, %9
  br i1 %56, label %57, label %10, !llvm.loop !55

57:                                               ; preds = %53, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_left_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  tail call void @lambda_matrix_copy(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2) #18
  tail call void @lambda_matrix_id(ptr noundef %4, i32 noundef %1) #18
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %5
  %8 = sext i32 %1 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %54
  %11 = phi i64 [ 0, %7 ], [ %56, %54 ]
  %12 = phi i32 [ 0, %7 ], [ %55, %54 ]
  %13 = getelementptr inbounds ptr, ptr %3, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %14, i32 noundef %1, i32 noundef %12) #18
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %54

17:                                               ; preds = %10
  %18 = add nsw i32 %12, 1
  %19 = icmp slt i32 %18, %1
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = sext i32 %18 to i64
  br label %24

22:                                               ; preds = %37, %24
  %23 = icmp sgt i64 %26, %21
  br i1 %23, label %24, label %54, !llvm.loop !56

24:                                               ; preds = %20, %22
  %25 = phi i64 [ %8, %20 ], [ %26, %22 ]
  %26 = add nsw i64 %25, -1
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds ptr, ptr %3, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i32, ptr %29, i64 %11
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %24
  %34 = add nsw i64 %25, -2
  %35 = getelementptr inbounds ptr, ptr %3, i64 %34
  %36 = trunc i64 %34 to i32
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %31, %33 ], [ %52, %37 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !6
  %40 = getelementptr inbounds i32, ptr %39, i64 %11
  %41 = load i32, ptr %40, align 4, !tbaa !13
  %42 = mul nsw i32 %41, %38
  %43 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %44 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %45 = udiv i32 %43, %44
  %46 = sub nsw i32 0, %45
  %47 = icmp slt i32 %42, 0
  %48 = select i1 %47, i32 %46, i32 %45
  %49 = sub nsw i32 0, %48
  tail call void @lambda_matrix_row_add(ptr noundef nonnull %3, i32 noundef %2, i32 noundef %27, i32 noundef %36, i32 noundef %49) #18
  tail call void @lambda_matrix_row_exchange(ptr noundef nonnull %3, i32 noundef %27, i32 noundef %36) #18
  tail call void @lambda_matrix_col_add(ptr noundef %4, i32 noundef %1, i32 noundef %36, i32 noundef %27, i32 noundef %48) #18
  tail call void @lambda_matrix_col_exchange(ptr noundef %4, i32 noundef %1, i32 noundef %27, i32 noundef %36) #18
  %50 = load ptr, ptr %28, align 8, !tbaa !6
  %51 = getelementptr inbounds i32, ptr %50, i64 %11
  %52 = load i32, ptr %51, align 4, !tbaa !13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %22, label %37, !llvm.loop !57

54:                                               ; preds = %22, %17, %10
  %55 = phi i32 [ %12, %10 ], [ %18, %17 ], [ %18, %22 ]
  %56 = add nuw nsw i64 %11, 1
  %57 = icmp eq i64 %56, %9
  br i1 %57, label %58, label %10, !llvm.loop !58

58:                                               ; preds = %54, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lambda_matrix_first_nz_vec(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = icmp slt i32 %3, %1
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = sext i32 %3 to i64
  %8 = sext i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi i64 [ %7, %6 ], [ %20, %18 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef nonnull %12, i32 noundef %2, i32 noundef %3) #18
  %16 = icmp slt i32 %15, %2
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i8 [ 0, %9 ], [ %17, %14 ]
  %20 = add nsw i64 %10, 1
  %21 = icmp slt i64 %20, %8
  %22 = freeze i8 %19
  %23 = icmp eq i8 %22, 0
  %24 = and i1 %21, %23
  br i1 %24, label %9, label %25, !llvm.loop !59

25:                                               ; preds = %18
  %26 = trunc i64 %20 to i32
  %27 = add nsw i32 %26, -1
  br i1 %23, label %28, label %29

28:                                               ; preds = %4, %25
  br label %29

29:                                               ; preds = %25, %28
  %30 = phi i32 [ %1, %28 ], [ %27, %25 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lambda_matrix_project_to_null(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @lambda_matrix_new(i32 noundef %2, i32 noundef %2) #18
  tail call void @lambda_matrix_transpose(ptr noundef %0, ptr noundef %6, i32 noundef %1, i32 noundef %2) #18
  %7 = tail call ptr @lambda_matrix_new(i32 noundef %2, i32 noundef %2) #18
  tail call void @lambda_matrix_mult(ptr noundef %0, ptr noundef %6, ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %1) #18
  %8 = tail call ptr @lambda_matrix_new(i32 noundef %2, i32 noundef %2) #18
  %9 = tail call i32 @lambda_matrix_inverse(ptr noundef %7, ptr noundef %8, i32 noundef %1) #18
  tail call void @lambda_matrix_mult(ptr noundef %6, ptr noundef %8, ptr noundef %7, i32 noundef %2, i32 noundef %1, i32 noundef %1) #18
  tail call void @lambda_matrix_mult(ptr noundef %7, ptr noundef %0, ptr noundef %6, i32 noundef %2, i32 noundef %1, i32 noundef %2) #18
  tail call void @lambda_matrix_negate(ptr noundef %6, ptr noundef %6, i32 noundef %2, i32 noundef %2) #18
  %10 = tail call ptr @lambda_matrix_new(i32 noundef %2, i32 noundef %2) #18
  tail call void @lambda_matrix_id(ptr noundef %10, i32 noundef %2) #18
  tail call void @lambda_matrix_add_mc(ptr noundef %10, i32 noundef %9, ptr noundef %6, i32 noundef 1, ptr noundef %7, i32 noundef %2, i32 noundef %2) #18
  %11 = add nsw i32 %3, -1
  tail call fastcc void @lambda_matrix_get_column(ptr noundef %7, i32 noundef %2, i32 noundef %11, ptr noundef %4) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lambda_matrix_get_column(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i32, ptr %12, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = getelementptr inbounds i32, ptr %3, i64 %10
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !60

18:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_vector_mult(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #12 {
  tail call fastcc void @lambda_vector_clear(ptr noundef %4, i32 noundef %1) #18
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp sgt i32 %2, 0
  %9 = zext nneg i32 %1 to i64
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %7, %29
  %12 = phi i64 [ 0, %7 ], [ %30, %29 ]
  br i1 %8, label %13, label %29

13:                                               ; preds = %11
  %14 = getelementptr inbounds ptr, ptr %0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds i32, ptr %4, i64 %12
  %17 = load i32, ptr %16, align 4, !tbaa !13
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi i32 [ %17, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds i32, ptr %15, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = getelementptr inbounds i32, ptr %3, i64 %19
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = mul nsw i32 %24, %22
  %26 = add nsw i32 %20, %25
  store i32 %26, ptr %16, align 4, !tbaa !13
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %18, !llvm.loop !61

29:                                               ; preds = %18, %11
  %30 = add nuw nsw i64 %12, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %32, label %11, !llvm.loop !62

32:                                               ; preds = %29, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_lambda_matrix(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %12, %8 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  tail call fastcc void @print_lambda_vector(ptr noundef %0, ptr noundef %11, i32 noundef %3) #18
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, %7
  br i1 %13, label %14, label %8, !llvm.loop !63

14:                                               ; preds = %8, %4
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_lambda_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %10) #18
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7, !llvm.loop !64

14:                                               ; preds = %7, %3
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = distinct !{!15, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}

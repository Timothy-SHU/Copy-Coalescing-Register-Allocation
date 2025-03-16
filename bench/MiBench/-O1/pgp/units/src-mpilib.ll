; ModuleID = 'src/mpilib.c'
source_filename = "src/mpilib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_precision = dso_local local_unnamed_addr global i16 0, align 2
@munit_prec = dso_local local_unnamed_addr global i16 0, align 2
@reciph = internal unnamed_addr global i16 0, align 2
@recipl = internal unnamed_addr global i16 0, align 2
@mshift = internal unnamed_addr global i32 0, align 4
@modulus = internal global [130 x i16] zeroinitializer, align 16
@modmpl = internal unnamed_addr global ptr null, align 8
@modlenMULTUNITS = internal unnamed_addr global i16 0, align 2
@mod_divisor = internal global [4 x i16] zeroinitializer, align 4
@mod_quotient = internal global [4 x i16] zeroinitializer, align 4
@ds_data = internal unnamed_addr global [262 x i16] zeroinitializer, align 16
@.str = private unnamed_addr constant [26 x i8] c"(c)1986 Philip Zimmermann\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mp_addc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @global_precision, align 2, !tbaa !5
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3, %23
  %7 = phi i16 [ %11, %23 ], [ %4, %3 ]
  %8 = phi i8 [ %26, %23 ], [ %2, %3 ]
  %9 = phi ptr [ %27, %23 ], [ %1, %3 ]
  %10 = phi ptr [ %28, %23 ], [ %0, %3 ]
  %11 = add i16 %7, -1
  %12 = icmp eq i8 %8, 0
  %13 = load i16, ptr %10, align 2, !tbaa !5
  %14 = load i16, ptr %9, align 2, !tbaa !5
  br i1 %12, label %20, label %15

15:                                               ; preds = %6
  %16 = add i16 %13, 1
  %17 = add i16 %16, %14
  %18 = xor i16 %13, -1
  %19 = icmp uge i16 %14, %18
  br label %23

20:                                               ; preds = %6
  %21 = add i16 %14, %13
  %22 = icmp ult i16 %21, %13
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ %19, %15 ], [ %22, %20 ]
  %25 = phi i16 [ %17, %15 ], [ %21, %20 ]
  %26 = zext i1 %24 to i8
  %27 = getelementptr inbounds i16, ptr %9, i64 1
  %28 = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %25, ptr %10, align 2, !tbaa !5
  %29 = icmp eq i16 %11, 0
  br i1 %29, label %30, label %6, !llvm.loop !9

30:                                               ; preds = %23, %3
  %31 = phi i8 [ %2, %3 ], [ %26, %23 ]
  ret i8 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mp_subb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @global_precision, align 2, !tbaa !5
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %3, %22
  %7 = phi i16 [ %11, %22 ], [ %4, %3 ]
  %8 = phi i8 [ %25, %22 ], [ %2, %3 ]
  %9 = phi ptr [ %26, %22 ], [ %1, %3 ]
  %10 = phi ptr [ %27, %22 ], [ %0, %3 ]
  %11 = add i16 %7, -1
  %12 = icmp eq i8 %8, 0
  %13 = load i16, ptr %10, align 2, !tbaa !5
  %14 = load i16, ptr %9, align 2, !tbaa !5
  br i1 %12, label %19, label %15

15:                                               ; preds = %6
  %16 = xor i16 %14, -1
  %17 = add i16 %13, %16
  %18 = icmp ule i16 %13, %14
  br label %22

19:                                               ; preds = %6
  %20 = sub i16 %13, %14
  %21 = icmp ult i16 %13, %14
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ %18, %15 ], [ %21, %19 ]
  %24 = phi i16 [ %17, %15 ], [ %20, %19 ]
  %25 = zext i1 %23 to i8
  %26 = getelementptr inbounds i16, ptr %9, i64 1
  %27 = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %24, ptr %10, align 2, !tbaa !5
  %28 = icmp eq i16 %11, 0
  br i1 %28, label %29, label %6, !llvm.loop !11

29:                                               ; preds = %22, %3
  %30 = phi i8 [ %2, %3 ], [ %25, %22 ]
  ret i8 %30
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mp_rotate_left(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i16, ptr @global_precision, align 2, !tbaa !5
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = sext i16 %3 to i32
  %7 = zext i8 %1 to i16
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i16 [ %14, %8 ], [ %7, %5 ]
  %10 = phi i32 [ %12, %8 ], [ %6, %5 ]
  %11 = phi ptr [ %17, %8 ], [ %0, %5 ]
  %12 = add nsw i32 %10, -1
  %13 = load i16, ptr %11, align 2, !tbaa !5
  %14 = lshr i16 %13, 15
  %15 = shl i16 %13, 1
  %16 = or i16 %15, %9
  store i16 %16, ptr %11, align 2, !tbaa !5
  %17 = getelementptr inbounds i16, ptr %11, i64 1
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %19, label %8, !llvm.loop !12

19:                                               ; preds = %8
  %20 = trunc i16 %14 to i8
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i8 [ %20, %19 ], [ undef, %2 ]
  ret i8 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mp_shift_right_bits(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = sext i16 %1 to i32
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = shl nsw i32 -1, %3
  %7 = sub i16 16, %1
  %8 = load i16, ptr @global_precision, align 2, !tbaa !5
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = icmp eq i16 %1, 16
  %13 = icmp eq i16 %8, 0
  br i1 %12, label %19, label %14

14:                                               ; preds = %5
  br i1 %13, label %43, label %15

15:                                               ; preds = %14
  %16 = trunc i32 %6 to i16
  %17 = xor i16 %16, -1
  %18 = zext nneg i16 %7 to i32
  br label %28

19:                                               ; preds = %5
  br i1 %13, label %43, label %20

20:                                               ; preds = %19, %20
  %21 = phi ptr [ %26, %20 ], [ %11, %19 ]
  %22 = phi i16 [ %24, %20 ], [ %8, %19 ]
  %23 = phi i16 [ %25, %20 ], [ 0, %19 ]
  %24 = add i16 %22, -1
  %25 = load i16, ptr %21, align 2, !tbaa !5
  store i16 %23, ptr %21, align 2, !tbaa !5
  %26 = getelementptr inbounds i16, ptr %21, i64 -1
  %27 = icmp eq i16 %24, 0
  br i1 %27, label %43, label %20, !llvm.loop !13

28:                                               ; preds = %15, %28
  %29 = phi ptr [ %11, %15 ], [ %41, %28 ]
  %30 = phi i16 [ %8, %15 ], [ %32, %28 ]
  %31 = phi i16 [ 0, %15 ], [ %35, %28 ]
  %32 = add i16 %30, -1
  %33 = load i16, ptr %29, align 2, !tbaa !5
  %34 = zext i16 %33 to i32
  %35 = and i16 %33, %17
  %36 = lshr i32 %34, %3
  %37 = zext i16 %31 to i32
  %38 = shl i32 %37, %18
  %39 = or i32 %36, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %29, align 2, !tbaa !5
  %41 = getelementptr inbounds i16, ptr %29, i64 -1
  %42 = icmp eq i16 %32, 0
  br i1 %42, label %43, label %28, !llvm.loop !14

43:                                               ; preds = %28, %20, %14, %19, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @mp_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i16, ptr @global_precision, align 2, !tbaa !5
  %4 = sext i16 %3 to i64
  %5 = getelementptr inbounds i16, ptr %0, i64 %4
  %6 = getelementptr inbounds i16, ptr %1, i64 %4
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi ptr [ %5, %2 ], [ %12, %18 ]
  %9 = phi ptr [ %6, %2 ], [ %11, %18 ]
  %10 = phi i16 [ %3, %2 ], [ %19, %18 ]
  %11 = getelementptr inbounds i16, ptr %9, i64 -1
  %12 = getelementptr inbounds i16, ptr %8, i64 -1
  %13 = load i16, ptr %12, align 2, !tbaa !5
  %14 = load i16, ptr %11, align 2, !tbaa !5
  %15 = icmp ult i16 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = icmp ugt i16 %13, %14
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = add i16 %10, -1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %7, !llvm.loop !15

21:                                               ; preds = %18, %16, %7
  %22 = phi i16 [ -1, %7 ], [ 1, %16 ], [ 0, %18 ]
  ret i16 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @mp_inc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi ptr [ %0, %1 ], [ %10, %9 ]
  %5 = phi i16 [ %2, %1 ], [ %11, %9 ]
  %6 = load i16, ptr %4, align 2, !tbaa !5
  %7 = add i16 %6, 1
  store i16 %7, ptr %4, align 2, !tbaa !5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds i16, ptr %4, i64 1
  %11 = add i16 %5, -1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %3, !llvm.loop !16

13:                                               ; preds = %9, %3
  %14 = phi i8 [ 0, %3 ], [ 1, %9 ]
  ret i8 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @mp_dec(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi ptr [ %0, %1 ], [ %10, %9 ]
  %5 = phi i16 [ %2, %1 ], [ %11, %9 ]
  %6 = load i16, ptr %4, align 2, !tbaa !5
  %7 = add i16 %6, -1
  store i16 %7, ptr %4, align 2, !tbaa !5
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds i16, ptr %4, i64 1
  %11 = add i16 %5, -1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %3, !llvm.loop !17

13:                                               ; preds = %9, %3
  %14 = phi i8 [ 0, %3 ], [ 1, %9 ]
  ret i8 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mp_neg(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %0, %1 ], [ %9, %3 ]
  %5 = phi i16 [ %2, %1 ], [ %10, %3 ]
  %6 = load i16, ptr %4, align 2, !tbaa !5
  %7 = add i16 %6, -1
  store i16 %7, ptr %4, align 2, !tbaa !5
  %8 = icmp ne i16 %6, 0
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  %10 = add i16 %5, -1
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %8, i1 true, i1 %11
  br i1 %12, label %13, label %3, !llvm.loop !17

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %18, %13 ], [ %0, %3 ]
  %15 = phi i16 [ %19, %13 ], [ %2, %3 ]
  %16 = load i16, ptr %14, align 2, !tbaa !5
  %17 = xor i16 %16, -1
  store i16 %17, ptr %14, align 2, !tbaa !5
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  %19 = add i16 %15, -1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %13, !llvm.loop !18

21:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @mp_init(ptr nocapture noundef writeonly %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = load i16, ptr @global_precision, align 2, !tbaa !5
  %4 = sext i16 %3 to i32
  %5 = shl nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %6, i1 false)
  store i16 %1, ptr %0, align 2, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @significance(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  %3 = sext i16 %2 to i64
  %4 = getelementptr inbounds i16, ptr %0, i64 %3
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %4, %1 ], [ %8, %11 ]
  %7 = phi i16 [ %2, %1 ], [ %12, %11 ]
  %8 = getelementptr inbounds i16, ptr %6, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !5
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = add i16 %7, -1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !19

14:                                               ; preds = %11, %5
  %15 = phi i16 [ %7, %5 ], [ 0, %11 ]
  ret i16 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_udiv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2, !tbaa !5
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load i16, ptr @global_precision, align 2, !tbaa !5
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds i16, ptr %3, i64 %9
  br label %11

11:                                               ; preds = %17, %7
  %12 = phi ptr [ %10, %7 ], [ %14, %17 ]
  %13 = phi i16 [ %8, %7 ], [ %18, %17 ]
  %14 = getelementptr inbounds i16, ptr %12, i64 -1
  %15 = load i16, ptr %14, align 2, !tbaa !5
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = add i16 %13, -1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %11, !llvm.loop !19

20:                                               ; preds = %11, %17
  %21 = phi i16 [ %13, %11 ], [ 0, %17 ]
  %22 = icmp slt i16 %21, 2
  br i1 %22, label %150, label %23

23:                                               ; preds = %20, %4
  %24 = load i16, ptr @global_precision, align 2, !tbaa !5
  %25 = sext i16 %24 to i32
  %26 = shl nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %27, i1 false)
  store i16 0, ptr %0, align 2, !tbaa !5
  %28 = load i16, ptr @global_precision, align 2, !tbaa !5
  %29 = sext i16 %28 to i32
  %30 = shl nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %31, i1 false)
  store i16 0, ptr %1, align 2, !tbaa !5
  %32 = load i16, ptr @global_precision, align 2, !tbaa !5
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds i16, ptr %2, i64 %33
  br label %35

35:                                               ; preds = %41, %23
  %36 = phi ptr [ %34, %23 ], [ %38, %41 ]
  %37 = phi i16 [ %32, %23 ], [ %42, %41 ]
  %38 = getelementptr inbounds i16, ptr %36, i64 -1
  %39 = load i16, ptr %38, align 2, !tbaa !5
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = add i16 %37, -1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %35, !llvm.loop !19

44:                                               ; preds = %35, %41
  %45 = phi i16 [ %37, %35 ], [ 0, %41 ]
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %150, label %47

47:                                               ; preds = %44
  %48 = sext i16 %45 to i32
  %49 = shl nsw i32 %48, 4
  %50 = sext i16 %45 to i64
  %51 = getelementptr inbounds i16, ptr %2, i64 %50
  %52 = getelementptr inbounds i16, ptr %51, i64 -1
  %53 = load i16, ptr %52, align 2, !tbaa !5
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %55
  %56 = phi i16 [ %58, %55 ], [ -32768, %47 ]
  %57 = phi i32 [ %59, %55 ], [ %49, %47 ]
  %58 = lshr i16 %56, 1
  %59 = add nsw i32 %57, -1
  %60 = and i16 %53, %58
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %55, label %62, !llvm.loop !20

62:                                               ; preds = %55, %47
  %63 = phi i32 [ %49, %47 ], [ %59, %55 ]
  %64 = phi i16 [ -32768, %47 ], [ %58, %55 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %150, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i16, ptr %1, i64 %50
  %68 = getelementptr inbounds i16, ptr %67, i64 -1
  br label %69

69:                                               ; preds = %66, %141
  %70 = phi i32 [ %74, %141 ], [ %63, %66 ]
  %71 = phi i16 [ %148, %141 ], [ %64, %66 ]
  %72 = phi ptr [ %147, %141 ], [ %68, %66 ]
  %73 = phi ptr [ %145, %141 ], [ %52, %66 ]
  %74 = add nsw i32 %70, -1
  %75 = load i16, ptr @global_precision, align 2, !tbaa !5
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %69
  %78 = load i16, ptr %73, align 2, !tbaa !5
  %79 = and i16 %78, %71
  %80 = icmp ne i16 %79, 0
  %81 = sext i16 %75 to i32
  %82 = zext i1 %80 to i16
  br label %83

83:                                               ; preds = %83, %77
  %84 = phi i16 [ %89, %83 ], [ %82, %77 ]
  %85 = phi i32 [ %87, %83 ], [ %81, %77 ]
  %86 = phi ptr [ %92, %83 ], [ %0, %77 ]
  %87 = add nsw i32 %85, -1
  %88 = load i16, ptr %86, align 2, !tbaa !5
  %89 = lshr i16 %88, 15
  %90 = shl i16 %88, 1
  %91 = or disjoint i16 %90, %84
  store i16 %91, ptr %86, align 2, !tbaa !5
  %92 = getelementptr inbounds i16, ptr %86, i64 1
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %94, label %83, !llvm.loop !12

94:                                               ; preds = %83, %69
  %95 = load i16, ptr @global_precision, align 2, !tbaa !5
  %96 = sext i16 %95 to i64
  %97 = getelementptr inbounds i16, ptr %0, i64 %96
  %98 = getelementptr inbounds i16, ptr %3, i64 %96
  br label %99

99:                                               ; preds = %99, %94
  %100 = phi ptr [ %97, %94 ], [ %104, %99 ]
  %101 = phi ptr [ %98, %94 ], [ %103, %99 ]
  %102 = phi i16 [ %95, %94 ], [ %108, %99 ]
  %103 = getelementptr inbounds i16, ptr %101, i64 -1
  %104 = getelementptr inbounds i16, ptr %100, i64 -1
  %105 = load i16, ptr %104, align 2, !tbaa !5
  %106 = load i16, ptr %103, align 2, !tbaa !5
  %107 = icmp ne i16 %105, %106
  %108 = add i16 %102, -1
  %109 = icmp eq i16 %108, 0
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %111, label %99, !llvm.loop !15

111:                                              ; preds = %99
  %112 = icmp ult i16 %105, %106
  br i1 %112, label %141, label %113

113:                                              ; preds = %111
  %114 = icmp eq i16 %95, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %113, %131
  %116 = phi i16 [ %120, %131 ], [ %95, %113 ]
  %117 = phi i8 [ %134, %131 ], [ 0, %113 ]
  %118 = phi ptr [ %135, %131 ], [ %3, %113 ]
  %119 = phi ptr [ %136, %131 ], [ %0, %113 ]
  %120 = add i16 %116, -1
  %121 = icmp eq i8 %117, 0
  %122 = load i16, ptr %119, align 2, !tbaa !5
  %123 = load i16, ptr %118, align 2, !tbaa !5
  br i1 %121, label %128, label %124

124:                                              ; preds = %115
  %125 = xor i16 %123, -1
  %126 = add i16 %122, %125
  %127 = icmp ule i16 %122, %123
  br label %131

128:                                              ; preds = %115
  %129 = sub i16 %122, %123
  %130 = icmp ult i16 %122, %123
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i1 [ %127, %124 ], [ %130, %128 ]
  %133 = phi i16 [ %126, %124 ], [ %129, %128 ]
  %134 = zext i1 %132 to i8
  %135 = getelementptr inbounds i16, ptr %118, i64 1
  %136 = getelementptr inbounds i16, ptr %119, i64 1
  store i16 %133, ptr %119, align 2, !tbaa !5
  %137 = icmp eq i16 %120, 0
  br i1 %137, label %138, label %115, !llvm.loop !11

138:                                              ; preds = %131, %113
  %139 = load i16, ptr %72, align 2, !tbaa !5
  %140 = or i16 %139, %71
  store i16 %140, ptr %72, align 2, !tbaa !5
  br label %141

141:                                              ; preds = %138, %111
  %142 = lshr i16 %71, 1
  %143 = icmp ult i16 %71, 2
  %144 = sext i1 %143 to i64
  %145 = getelementptr inbounds i16, ptr %73, i64 %144
  %146 = sext i1 %143 to i64
  %147 = getelementptr inbounds i16, ptr %72, i64 %146
  %148 = select i1 %143, i16 -32768, i16 %142
  %149 = icmp eq i32 %74, 0
  br i1 %149, label %150, label %69, !llvm.loop !21

150:                                              ; preds = %141, %62, %44, %20
  %151 = phi i32 [ -1, %20 ], [ 0, %44 ], [ 0, %62 ], [ 0, %141 ]
  ret i32 %151
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_recip(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #10
  %4 = load i16, ptr %1, align 2, !tbaa !5
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i16, ptr @global_precision, align 2, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  br label %10

10:                                               ; preds = %16, %6
  %11 = phi ptr [ %9, %6 ], [ %13, %16 ]
  %12 = phi i16 [ %7, %6 ], [ %17, %16 ]
  %13 = getelementptr inbounds i16, ptr %11, i64 -1
  %14 = load i16, ptr %13, align 2, !tbaa !5
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add i16 %12, -1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !19

19:                                               ; preds = %10, %16
  %20 = phi i16 [ %12, %10 ], [ 0, %16 ]
  %21 = icmp slt i16 %20, 2
  br i1 %21, label %158, label %22

22:                                               ; preds = %19, %2
  %23 = load i16, ptr @global_precision, align 2, !tbaa !5
  %24 = sext i16 %23 to i32
  %25 = shl nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %26, i1 false)
  store i16 0, ptr %3, align 16, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %26, i1 false)
  store i16 0, ptr %0, align 2, !tbaa !5
  %27 = load i16, ptr @global_precision, align 2, !tbaa !5
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %36, %22
  %31 = phi ptr [ %29, %22 ], [ %33, %36 ]
  %32 = phi i16 [ %27, %22 ], [ %37, %36 ]
  %33 = getelementptr inbounds i16, ptr %31, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = add i16 %32, -1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %30, !llvm.loop !19

39:                                               ; preds = %36, %30
  %40 = phi i16 [ %32, %30 ], [ 0, %36 ]
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = sext i16 %40 to i32
  %44 = shl nsw i32 %43, 4
  %45 = sext i16 %40 to i64
  %46 = getelementptr inbounds i16, ptr %1, i64 %45
  %47 = getelementptr inbounds i16, ptr %46, i64 -1
  %48 = load i16, ptr %47, align 2, !tbaa !5
  %49 = zext i16 %48 to i32
  %50 = icmp sgt i16 %48, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %42, %51
  %52 = phi i32 [ %54, %51 ], [ 32768, %42 ]
  %53 = phi i32 [ %55, %51 ], [ %44, %42 ]
  %54 = lshr i32 %52, 1
  %55 = add nsw i32 %53, -1
  %56 = and i32 %54, %49
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %51, label %58, !llvm.loop !22

58:                                               ; preds = %51, %39, %42
  %59 = phi i32 [ 0, %39 ], [ %44, %42 ], [ %55, %51 ]
  %60 = add i32 %59, 15
  %61 = and i32 %60, 15
  %62 = shl nuw nsw i32 1, %61
  %63 = ashr i32 %60, 4
  %64 = add nsw i32 %63, -1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [130 x i16], ptr %3, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !5
  %68 = trunc i32 %62 to i16
  %69 = or i16 %67, %68
  store i16 %69, ptr %66, align 2, !tbaa !5
  %70 = icmp eq i32 %59, 0
  br i1 %70, label %153, label %71

71:                                               ; preds = %58
  %72 = shl i32 %59, 12
  %73 = add i32 %72, 65536
  %74 = ashr i32 %73, 16
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, ptr %0, i64 %75
  %77 = getelementptr inbounds i16, ptr %76, i64 -1
  %78 = and i32 %59, 15
  %79 = shl nuw nsw i32 1, %78
  %80 = trunc i32 %79 to i16
  br label %81

81:                                               ; preds = %71, %146
  %82 = phi i32 [ %85, %146 ], [ %59, %71 ]
  %83 = phi i16 [ %151, %146 ], [ %80, %71 ]
  %84 = phi ptr [ %150, %146 ], [ %77, %71 ]
  %85 = add nsw i32 %82, -1
  %86 = load i16, ptr @global_precision, align 2, !tbaa !5
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %81
  %89 = sext i16 %86 to i32
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i16 [ %96, %90 ], [ 0, %88 ]
  %92 = phi i32 [ %94, %90 ], [ %89, %88 ]
  %93 = phi ptr [ %99, %90 ], [ %3, %88 ]
  %94 = add nsw i32 %92, -1
  %95 = load i16, ptr %93, align 2, !tbaa !5
  %96 = lshr i16 %95, 15
  %97 = shl i16 %95, 1
  %98 = or disjoint i16 %97, %91
  store i16 %98, ptr %93, align 2, !tbaa !5
  %99 = getelementptr inbounds i16, ptr %93, i64 1
  %100 = icmp eq i32 %94, 0
  br i1 %100, label %101, label %90, !llvm.loop !12

101:                                              ; preds = %90, %81
  %102 = sext i16 %86 to i64
  %103 = getelementptr inbounds i16, ptr %3, i64 %102
  %104 = getelementptr inbounds i16, ptr %1, i64 %102
  br label %105

105:                                              ; preds = %105, %101
  %106 = phi ptr [ %103, %101 ], [ %110, %105 ]
  %107 = phi ptr [ %104, %101 ], [ %109, %105 ]
  %108 = phi i16 [ %86, %101 ], [ %114, %105 ]
  %109 = getelementptr inbounds i16, ptr %107, i64 -1
  %110 = getelementptr inbounds i16, ptr %106, i64 -1
  %111 = load i16, ptr %110, align 2, !tbaa !5
  %112 = load i16, ptr %109, align 2, !tbaa !5
  %113 = icmp ne i16 %111, %112
  %114 = add i16 %108, -1
  %115 = icmp eq i16 %114, 0
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %117, label %105, !llvm.loop !15

117:                                              ; preds = %105
  %118 = icmp ult i16 %111, %112
  br i1 %118, label %146, label %119

119:                                              ; preds = %117
  br i1 %87, label %143, label %120

120:                                              ; preds = %119, %136
  %121 = phi i16 [ %125, %136 ], [ %86, %119 ]
  %122 = phi i8 [ %139, %136 ], [ 0, %119 ]
  %123 = phi ptr [ %140, %136 ], [ %1, %119 ]
  %124 = phi ptr [ %141, %136 ], [ %3, %119 ]
  %125 = add i16 %121, -1
  %126 = icmp eq i8 %122, 0
  %127 = load i16, ptr %124, align 2, !tbaa !5
  %128 = load i16, ptr %123, align 2, !tbaa !5
  br i1 %126, label %133, label %129

129:                                              ; preds = %120
  %130 = xor i16 %128, -1
  %131 = add i16 %127, %130
  %132 = icmp ule i16 %127, %128
  br label %136

133:                                              ; preds = %120
  %134 = sub i16 %127, %128
  %135 = icmp ult i16 %127, %128
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi i1 [ %132, %129 ], [ %135, %133 ]
  %138 = phi i16 [ %131, %129 ], [ %134, %133 ]
  %139 = zext i1 %137 to i8
  %140 = getelementptr inbounds i16, ptr %123, i64 1
  %141 = getelementptr inbounds i16, ptr %124, i64 1
  store i16 %138, ptr %124, align 2, !tbaa !5
  %142 = icmp eq i16 %125, 0
  br i1 %142, label %143, label %120, !llvm.loop !11

143:                                              ; preds = %136, %119
  %144 = load i16, ptr %84, align 2, !tbaa !5
  %145 = or i16 %144, %83
  store i16 %145, ptr %84, align 2, !tbaa !5
  br label %146

146:                                              ; preds = %143, %117
  %147 = lshr i16 %83, 1
  %148 = icmp ult i16 %83, 2
  %149 = sext i1 %148 to i64
  %150 = getelementptr inbounds i16, ptr %84, i64 %149
  %151 = select i1 %148, i16 -32768, i16 %147
  %152 = icmp eq i32 %85, 0
  br i1 %152, label %153, label %81, !llvm.loop !23

153:                                              ; preds = %146, %58
  %154 = load i16, ptr @global_precision, align 2, !tbaa !5
  %155 = sext i16 %154 to i32
  %156 = shl nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %157, i1 false)
  store i16 0, ptr %3, align 16, !tbaa !5
  br label %158

158:                                              ; preds = %19, %153
  %159 = phi i32 [ 0, %153 ], [ -1, %19 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #10
  ret i32 %159
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @countbits(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  %3 = sext i16 %2 to i64
  %4 = getelementptr inbounds i16, ptr %0, i64 %3
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %4, %1 ], [ %8, %11 ]
  %7 = phi i16 [ %2, %1 ], [ %12, %11 ]
  %8 = getelementptr inbounds i16, ptr %6, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !5
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = add i16 %7, -1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !19

14:                                               ; preds = %5, %11
  %15 = phi i16 [ %7, %5 ], [ 0, %11 ]
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = sext i16 %15 to i32
  %19 = shl nsw i32 %18, 4
  %20 = sext i16 %15 to i64
  %21 = getelementptr inbounds i16, ptr %0, i64 %20
  %22 = getelementptr inbounds i16, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !5
  %24 = zext i16 %23 to i32
  %25 = icmp sgt i16 %23, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %17, %26
  %27 = phi i32 [ %29, %26 ], [ 32768, %17 ]
  %28 = phi i32 [ %30, %26 ], [ %19, %17 ]
  %29 = lshr i32 %27, 1
  %30 = add nsw i32 %28, -1
  %31 = and i32 %29, %24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %26, label %33, !llvm.loop !22

33:                                               ; preds = %26, %17, %14
  %34 = phi i32 [ 0, %14 ], [ %19, %17 ], [ %30, %26 ]
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_div(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr @global_precision, align 2, !tbaa !5
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds i16, ptr %2, i64 %6
  %8 = getelementptr inbounds i16, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !5
  %10 = getelementptr inbounds i16, ptr %3, i64 %6
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !5
  %13 = icmp sgt i16 %9, -1
  br i1 %13, label %32, label %14

14:                                               ; preds = %4, %14
  %15 = phi ptr [ %20, %14 ], [ %2, %4 ]
  %16 = phi i16 [ %21, %14 ], [ %5, %4 ]
  %17 = load i16, ptr %15, align 2, !tbaa !5
  %18 = add i16 %17, -1
  store i16 %18, ptr %15, align 2, !tbaa !5
  %19 = icmp ne i16 %17, 0
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = add i16 %16, -1
  %22 = icmp eq i16 %21, 0
  %23 = select i1 %19, i1 true, i1 %22
  br i1 %23, label %24, label %14, !llvm.loop !17

24:                                               ; preds = %14, %24
  %25 = phi ptr [ %29, %24 ], [ %2, %14 ]
  %26 = phi i16 [ %30, %24 ], [ %5, %14 ]
  %27 = load i16, ptr %25, align 2, !tbaa !5
  %28 = xor i16 %27, -1
  store i16 %28, ptr %25, align 2, !tbaa !5
  %29 = getelementptr inbounds i16, ptr %25, i64 1
  %30 = add i16 %26, -1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %24, !llvm.loop !18

32:                                               ; preds = %24, %4
  %33 = icmp sgt i16 %12, -1
  br i1 %33, label %54, label %34

34:                                               ; preds = %32
  %35 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi ptr [ %3, %34 ], [ %42, %36 ]
  %38 = phi i16 [ %35, %34 ], [ %43, %36 ]
  %39 = load i16, ptr %37, align 2, !tbaa !5
  %40 = add i16 %39, -1
  store i16 %40, ptr %37, align 2, !tbaa !5
  %41 = icmp ne i16 %39, 0
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = add i16 %38, -1
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %41, i1 true, i1 %44
  br i1 %45, label %46, label %36, !llvm.loop !17

46:                                               ; preds = %36, %46
  %47 = phi ptr [ %51, %46 ], [ %3, %36 ]
  %48 = phi i16 [ %52, %46 ], [ %35, %36 ]
  %49 = load i16, ptr %47, align 2, !tbaa !5
  %50 = xor i16 %49, -1
  store i16 %50, ptr %47, align 2, !tbaa !5
  %51 = getelementptr inbounds i16, ptr %47, i64 1
  %52 = add i16 %48, -1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %46, !llvm.loop !18

54:                                               ; preds = %46, %32
  %55 = tail call i32 @mp_udiv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !24
  br i1 %13, label %76, label %56

56:                                               ; preds = %54
  %57 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi ptr [ %2, %56 ], [ %64, %58 ]
  %60 = phi i16 [ %57, %56 ], [ %65, %58 ]
  %61 = load i16, ptr %59, align 2, !tbaa !5
  %62 = add i16 %61, -1
  store i16 %62, ptr %59, align 2, !tbaa !5
  %63 = icmp ne i16 %61, 0
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = add i16 %60, -1
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %63, i1 true, i1 %66
  br i1 %67, label %68, label %58, !llvm.loop !17

68:                                               ; preds = %58, %68
  %69 = phi ptr [ %73, %68 ], [ %2, %58 ]
  %70 = phi i16 [ %74, %68 ], [ %57, %58 ]
  %71 = load i16, ptr %69, align 2, !tbaa !5
  %72 = xor i16 %71, -1
  store i16 %72, ptr %69, align 2, !tbaa !5
  %73 = getelementptr inbounds i16, ptr %69, i64 1
  %74 = add i16 %70, -1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %68, !llvm.loop !18

76:                                               ; preds = %68, %54
  br i1 %33, label %97, label %77

77:                                               ; preds = %76
  %78 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi ptr [ %3, %77 ], [ %85, %79 ]
  %81 = phi i16 [ %78, %77 ], [ %86, %79 ]
  %82 = load i16, ptr %80, align 2, !tbaa !5
  %83 = add i16 %82, -1
  store i16 %83, ptr %80, align 2, !tbaa !5
  %84 = icmp ne i16 %82, 0
  %85 = getelementptr inbounds i16, ptr %80, i64 1
  %86 = add i16 %81, -1
  %87 = icmp eq i16 %86, 0
  %88 = select i1 %84, i1 true, i1 %87
  br i1 %88, label %89, label %79, !llvm.loop !17

89:                                               ; preds = %79, %89
  %90 = phi ptr [ %94, %89 ], [ %3, %79 ]
  %91 = phi i16 [ %95, %89 ], [ %78, %79 ]
  %92 = load i16, ptr %90, align 2, !tbaa !5
  %93 = xor i16 %92, -1
  store i16 %93, ptr %90, align 2, !tbaa !5
  %94 = getelementptr inbounds i16, ptr %90, i64 1
  %95 = add i16 %91, -1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %89, !llvm.loop !18

97:                                               ; preds = %89, %76
  %98 = icmp slt i32 %55, 0
  br i1 %98, label %143, label %99

99:                                               ; preds = %97
  br i1 %13, label %120, label %100

100:                                              ; preds = %99
  %101 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi ptr [ %0, %100 ], [ %108, %102 ]
  %104 = phi i16 [ %101, %100 ], [ %109, %102 ]
  %105 = load i16, ptr %103, align 2, !tbaa !5
  %106 = add i16 %105, -1
  store i16 %106, ptr %103, align 2, !tbaa !5
  %107 = icmp ne i16 %105, 0
  %108 = getelementptr inbounds i16, ptr %103, i64 1
  %109 = add i16 %104, -1
  %110 = icmp eq i16 %109, 0
  %111 = select i1 %107, i1 true, i1 %110
  br i1 %111, label %112, label %102, !llvm.loop !17

112:                                              ; preds = %102, %112
  %113 = phi ptr [ %117, %112 ], [ %0, %102 ]
  %114 = phi i16 [ %118, %112 ], [ %101, %102 ]
  %115 = load i16, ptr %113, align 2, !tbaa !5
  %116 = xor i16 %115, -1
  store i16 %116, ptr %113, align 2, !tbaa !5
  %117 = getelementptr inbounds i16, ptr %113, i64 1
  %118 = add i16 %114, -1
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %112, !llvm.loop !18

120:                                              ; preds = %112, %99
  %121 = xor i16 %12, %9
  %122 = icmp sgt i16 %121, -1
  br i1 %122, label %143, label %123

123:                                              ; preds = %120
  %124 = load i16, ptr @global_precision, align 2, !tbaa !5
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi ptr [ %1, %123 ], [ %131, %125 ]
  %127 = phi i16 [ %124, %123 ], [ %132, %125 ]
  %128 = load i16, ptr %126, align 2, !tbaa !5
  %129 = add i16 %128, -1
  store i16 %129, ptr %126, align 2, !tbaa !5
  %130 = icmp ne i16 %128, 0
  %131 = getelementptr inbounds i16, ptr %126, i64 1
  %132 = add i16 %127, -1
  %133 = icmp eq i16 %132, 0
  %134 = select i1 %130, i1 true, i1 %133
  br i1 %134, label %135, label %125, !llvm.loop !17

135:                                              ; preds = %125, %135
  %136 = phi ptr [ %140, %135 ], [ %1, %125 ]
  %137 = phi i16 [ %141, %135 ], [ %124, %125 ]
  %138 = load i16, ptr %136, align 2, !tbaa !5
  %139 = xor i16 %138, -1
  store i16 %139, ptr %136, align 2, !tbaa !5
  %140 = getelementptr inbounds i16, ptr %136, i64 1
  %141 = add i16 %137, -1
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %135, !llvm.loop !18

143:                                              ; preds = %135, %120, %97
  ret i32 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @mp_shortdiv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr @global_precision, align 2, !tbaa !5
  %7 = sext i16 %6 to i32
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %9, i1 false)
  store i16 0, ptr %0, align 2, !tbaa !5
  %10 = load i16, ptr @global_precision, align 2, !tbaa !5
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  br label %13

13:                                               ; preds = %19, %5
  %14 = phi ptr [ %12, %5 ], [ %16, %19 ]
  %15 = phi i16 [ %10, %5 ], [ %20, %19 ]
  %16 = getelementptr inbounds i16, ptr %14, i64 -1
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = add i16 %15, -1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !19

22:                                               ; preds = %13, %19
  %23 = phi i16 [ %15, %13 ], [ 0, %19 ]
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %75, label %25

25:                                               ; preds = %22
  %26 = sext i16 %23 to i32
  %27 = shl nsw i32 %26, 4
  %28 = sext i16 %23 to i64
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  %30 = getelementptr inbounds i16, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = icmp sgt i16 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %33
  %34 = phi i16 [ %36, %33 ], [ -32768, %25 ]
  %35 = phi i32 [ %37, %33 ], [ %27, %25 ]
  %36 = lshr i16 %34, 1
  %37 = add nsw i32 %35, -1
  %38 = and i16 %31, %36
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %33, label %40, !llvm.loop !25

40:                                               ; preds = %33, %25
  %41 = phi i32 [ %27, %25 ], [ %37, %33 ]
  %42 = phi i16 [ -32768, %25 ], [ %36, %33 ]
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i16, ptr %0, i64 %28
  %46 = getelementptr inbounds i16, ptr %45, i64 -1
  br label %47

47:                                               ; preds = %44, %65
  %48 = phi i32 [ %53, %65 ], [ %41, %44 ]
  %49 = phi i16 [ %66, %65 ], [ 0, %44 ]
  %50 = phi i16 [ %73, %65 ], [ %42, %44 ]
  %51 = phi ptr [ %72, %65 ], [ %46, %44 ]
  %52 = phi ptr [ %70, %65 ], [ %30, %44 ]
  %53 = add nsw i32 %48, -1
  %54 = shl i16 %49, 1
  %55 = load i16, ptr %52, align 2, !tbaa !5
  %56 = and i16 %55, %50
  %57 = icmp ne i16 %56, 0
  %58 = zext i1 %57 to i16
  %59 = or disjoint i16 %54, %58
  %60 = icmp ult i16 %59, %2
  br i1 %60, label %65, label %61

61:                                               ; preds = %47
  %62 = sub i16 %59, %2
  %63 = load i16, ptr %51, align 2, !tbaa !5
  %64 = or i16 %63, %50
  store i16 %64, ptr %51, align 2, !tbaa !5
  br label %65

65:                                               ; preds = %61, %47
  %66 = phi i16 [ %62, %61 ], [ %59, %47 ]
  %67 = lshr i16 %50, 1
  %68 = icmp ult i16 %50, 2
  %69 = sext i1 %68 to i64
  %70 = getelementptr inbounds i16, ptr %52, i64 %69
  %71 = sext i1 %68 to i64
  %72 = getelementptr inbounds i16, ptr %51, i64 %71
  %73 = select i1 %68, i16 -32768, i16 %67
  %74 = icmp eq i32 %53, 0
  br i1 %74, label %75, label %47, !llvm.loop !26

75:                                               ; preds = %65, %40, %22, %3
  %76 = phi i16 [ -1, %3 ], [ 0, %22 ], [ 0, %40 ], [ %66, %65 ]
  ret i16 %76
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_mod(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %2, align 2, !tbaa !5
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i16, ptr @global_precision, align 2, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds i16, ptr %2, i64 %8
  br label %10

10:                                               ; preds = %16, %6
  %11 = phi ptr [ %9, %6 ], [ %13, %16 ]
  %12 = phi i16 [ %7, %6 ], [ %17, %16 ]
  %13 = getelementptr inbounds i16, ptr %11, i64 -1
  %14 = load i16, ptr %13, align 2, !tbaa !5
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add i16 %12, -1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !19

19:                                               ; preds = %10, %16
  %20 = phi i16 [ %12, %10 ], [ 0, %16 ]
  %21 = icmp slt i16 %20, 2
  br i1 %21, label %136, label %22

22:                                               ; preds = %19, %3
  %23 = load i16, ptr @global_precision, align 2, !tbaa !5
  %24 = sext i16 %23 to i32
  %25 = shl nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %26, i1 false)
  store i16 0, ptr %0, align 2, !tbaa !5
  %27 = load i16, ptr @global_precision, align 2, !tbaa !5
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %36, %22
  %31 = phi ptr [ %29, %22 ], [ %33, %36 ]
  %32 = phi i16 [ %27, %22 ], [ %37, %36 ]
  %33 = getelementptr inbounds i16, ptr %31, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = add i16 %32, -1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %30, !llvm.loop !19

39:                                               ; preds = %30, %36
  %40 = phi i16 [ %32, %30 ], [ 0, %36 ]
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %136, label %42

42:                                               ; preds = %39
  %43 = sext i16 %40 to i32
  %44 = shl nsw i32 %43, 4
  %45 = sext i16 %40 to i64
  %46 = getelementptr inbounds i16, ptr %1, i64 %45
  %47 = getelementptr inbounds i16, ptr %46, i64 -1
  %48 = load i16, ptr %47, align 2, !tbaa !5
  %49 = icmp sgt i16 %48, -1
  br i1 %49, label %54, label %50

50:                                               ; preds = %54, %42
  %51 = phi i32 [ %44, %42 ], [ %58, %54 ]
  %52 = phi i16 [ -32768, %42 ], [ %57, %54 ]
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %136, label %61

54:                                               ; preds = %42, %54
  %55 = phi i16 [ %57, %54 ], [ -32768, %42 ]
  %56 = phi i32 [ %58, %54 ], [ %44, %42 ]
  %57 = lshr i16 %55, 1
  %58 = add nsw i32 %56, -1
  %59 = and i16 %48, %57
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %54, label %50, !llvm.loop !27

61:                                               ; preds = %50, %129
  %62 = phi i32 [ %65, %129 ], [ %51, %50 ]
  %63 = phi i16 [ %134, %129 ], [ %52, %50 ]
  %64 = phi ptr [ %133, %129 ], [ %47, %50 ]
  %65 = add nsw i32 %62, -1
  %66 = load i16, ptr @global_precision, align 2, !tbaa !5
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %61
  %69 = load i16, ptr %64, align 2, !tbaa !5
  %70 = and i16 %69, %63
  %71 = icmp ne i16 %70, 0
  %72 = sext i16 %66 to i32
  %73 = zext i1 %71 to i16
  br label %74

74:                                               ; preds = %74, %68
  %75 = phi i16 [ %80, %74 ], [ %73, %68 ]
  %76 = phi i32 [ %78, %74 ], [ %72, %68 ]
  %77 = phi ptr [ %83, %74 ], [ %0, %68 ]
  %78 = add nsw i32 %76, -1
  %79 = load i16, ptr %77, align 2, !tbaa !5
  %80 = lshr i16 %79, 15
  %81 = shl i16 %79, 1
  %82 = or disjoint i16 %81, %75
  store i16 %82, ptr %77, align 2, !tbaa !5
  %83 = getelementptr inbounds i16, ptr %77, i64 1
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %85, label %74, !llvm.loop !12

85:                                               ; preds = %74, %61
  %86 = load i16, ptr @global_precision, align 2, !tbaa !5
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds i16, ptr %0, i64 %87
  %89 = getelementptr inbounds i16, ptr %2, i64 %87
  br label %90

90:                                               ; preds = %90, %85
  %91 = phi ptr [ %88, %85 ], [ %95, %90 ]
  %92 = phi ptr [ %89, %85 ], [ %94, %90 ]
  %93 = phi i16 [ %86, %85 ], [ %99, %90 ]
  %94 = getelementptr inbounds i16, ptr %92, i64 -1
  %95 = getelementptr inbounds i16, ptr %91, i64 -1
  %96 = load i16, ptr %95, align 2, !tbaa !5
  %97 = load i16, ptr %94, align 2, !tbaa !5
  %98 = icmp ne i16 %96, %97
  %99 = add i16 %93, -1
  %100 = icmp eq i16 %99, 0
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %102, label %90, !llvm.loop !15

102:                                              ; preds = %90
  %103 = icmp ult i16 %96, %97
  %104 = icmp eq i16 %86, 0
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %129, label %106

106:                                              ; preds = %102, %122
  %107 = phi i16 [ %111, %122 ], [ %86, %102 ]
  %108 = phi i8 [ %125, %122 ], [ 0, %102 ]
  %109 = phi ptr [ %126, %122 ], [ %2, %102 ]
  %110 = phi ptr [ %127, %122 ], [ %0, %102 ]
  %111 = add i16 %107, -1
  %112 = icmp eq i8 %108, 0
  %113 = load i16, ptr %110, align 2, !tbaa !5
  %114 = load i16, ptr %109, align 2, !tbaa !5
  br i1 %112, label %119, label %115

115:                                              ; preds = %106
  %116 = xor i16 %114, -1
  %117 = add i16 %113, %116
  %118 = icmp ule i16 %113, %114
  br label %122

119:                                              ; preds = %106
  %120 = sub i16 %113, %114
  %121 = icmp ult i16 %113, %114
  br label %122

122:                                              ; preds = %119, %115
  %123 = phi i1 [ %118, %115 ], [ %121, %119 ]
  %124 = phi i16 [ %117, %115 ], [ %120, %119 ]
  %125 = zext i1 %123 to i8
  %126 = getelementptr inbounds i16, ptr %109, i64 1
  %127 = getelementptr inbounds i16, ptr %110, i64 1
  store i16 %124, ptr %110, align 2, !tbaa !5
  %128 = icmp eq i16 %111, 0
  br i1 %128, label %129, label %106, !llvm.loop !11

129:                                              ; preds = %122, %102
  %130 = lshr i16 %63, 1
  %131 = icmp ult i16 %63, 2
  %132 = sext i1 %131 to i64
  %133 = getelementptr inbounds i16, ptr %64, i64 %132
  %134 = select i1 %131, i16 -32768, i16 %130
  %135 = icmp eq i32 %65, 0
  br i1 %135, label %136, label %61, !llvm.loop !28

136:                                              ; preds = %129, %50, %39, %19
  %137 = phi i32 [ -1, %19 ], [ 0, %39 ], [ 0, %50 ], [ 0, %129 ]
  ret i32 %137
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @mp_shortmod(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr @global_precision, align 2, !tbaa !5
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds i16, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %14, %4
  %9 = phi ptr [ %7, %4 ], [ %11, %14 ]
  %10 = phi i16 [ %5, %4 ], [ %15, %14 ]
  %11 = getelementptr inbounds i16, ptr %9, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !5
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = add i16 %10, -1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %8, !llvm.loop !19

17:                                               ; preds = %8, %14
  %18 = phi i16 [ %10, %8 ], [ 0, %14 ]
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  %21 = sext i16 %18 to i32
  %22 = shl nsw i32 %21, 4
  %23 = sext i16 %18 to i64
  %24 = getelementptr inbounds i16, ptr %0, i64 %23
  %25 = getelementptr inbounds i16, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = icmp sgt i16 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %32, %20
  %29 = phi i32 [ %22, %20 ], [ %36, %32 ]
  %30 = phi i16 [ -32768, %20 ], [ %35, %32 ]
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %60, label %39

32:                                               ; preds = %20, %32
  %33 = phi i16 [ %35, %32 ], [ -32768, %20 ]
  %34 = phi i32 [ %36, %32 ], [ %22, %20 ]
  %35 = lshr i16 %33, 1
  %36 = add nsw i32 %34, -1
  %37 = and i16 %26, %35
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %32, label %28, !llvm.loop !29

39:                                               ; preds = %28, %39
  %40 = phi i16 [ %53, %39 ], [ 0, %28 ]
  %41 = phi i16 [ %58, %39 ], [ %30, %28 ]
  %42 = phi i32 [ %44, %39 ], [ %29, %28 ]
  %43 = phi ptr [ %57, %39 ], [ %25, %28 ]
  %44 = add nsw i32 %42, -1
  %45 = shl i16 %40, 1
  %46 = load i16, ptr %43, align 2, !tbaa !5
  %47 = and i16 %46, %41
  %48 = icmp ne i16 %47, 0
  %49 = zext i1 %48 to i16
  %50 = or disjoint i16 %45, %49
  %51 = icmp ult i16 %50, %1
  %52 = select i1 %51, i16 0, i16 %1
  %53 = sub i16 %50, %52
  %54 = lshr i16 %41, 1
  %55 = icmp ult i16 %41, 2
  %56 = sext i1 %55 to i64
  %57 = getelementptr inbounds i16, ptr %43, i64 %56
  %58 = select i1 %55, i16 -32768, i16 %54
  %59 = icmp eq i32 %44, 0
  br i1 %59, label %60, label %39, !llvm.loop !30

60:                                               ; preds = %39, %28, %17, %2
  %61 = phi i16 [ -1, %2 ], [ 0, %17 ], [ 0, %28 ], [ %53, %39 ]
  ret i16 %61
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_mult(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @global_precision, align 2, !tbaa !5
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %7, i1 false)
  store i16 0, ptr %0, align 2, !tbaa !5
  %8 = load i16, ptr %1, align 2, !tbaa !5
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i16, ptr @global_precision, align 2, !tbaa !5
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds i16, ptr %1, i64 %12
  br label %14

14:                                               ; preds = %20, %10
  %15 = phi ptr [ %13, %10 ], [ %17, %20 ]
  %16 = phi i16 [ %11, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i16, ptr %15, i64 -1
  %18 = load i16, ptr %17, align 2, !tbaa !5
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = add i16 %16, -1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %14, !llvm.loop !19

23:                                               ; preds = %14, %20
  %24 = phi i16 [ %16, %14 ], [ 0, %20 ]
  %25 = icmp slt i16 %24, 2
  br i1 %25, label %119, label %26

26:                                               ; preds = %23, %3
  %27 = load i16, ptr @global_precision, align 2, !tbaa !5
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i16, ptr %2, i64 %28
  br label %30

30:                                               ; preds = %36, %26
  %31 = phi ptr [ %29, %26 ], [ %33, %36 ]
  %32 = phi i16 [ %27, %26 ], [ %37, %36 ]
  %33 = getelementptr inbounds i16, ptr %31, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = add i16 %32, -1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %30, !llvm.loop !19

39:                                               ; preds = %30, %36
  %40 = phi i16 [ %32, %30 ], [ 0, %36 ]
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %119, label %42

42:                                               ; preds = %39
  %43 = sext i16 %40 to i32
  %44 = shl nsw i32 %43, 4
  %45 = sext i16 %40 to i64
  %46 = getelementptr inbounds i16, ptr %2, i64 %45
  %47 = getelementptr inbounds i16, ptr %46, i64 -1
  %48 = load i16, ptr %47, align 2, !tbaa !5
  %49 = icmp sgt i16 %48, -1
  br i1 %49, label %54, label %50

50:                                               ; preds = %54, %42
  %51 = phi i32 [ %44, %42 ], [ %58, %54 ]
  %52 = phi i16 [ -32768, %42 ], [ %57, %54 ]
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %119, label %61

54:                                               ; preds = %42, %54
  %55 = phi i16 [ %57, %54 ], [ -32768, %42 ]
  %56 = phi i32 [ %58, %54 ], [ %44, %42 ]
  %57 = lshr i16 %55, 1
  %58 = add nsw i32 %56, -1
  %59 = and i16 %48, %57
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %54, label %50, !llvm.loop !31

61:                                               ; preds = %50, %112
  %62 = phi i32 [ %65, %112 ], [ %51, %50 ]
  %63 = phi i16 [ %117, %112 ], [ %52, %50 ]
  %64 = phi ptr [ %116, %112 ], [ %47, %50 ]
  %65 = add nsw i32 %62, -1
  %66 = load i16, ptr @global_precision, align 2, !tbaa !5
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = sext i16 %66 to i32
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i16 [ %76, %70 ], [ 0, %68 ]
  %72 = phi i32 [ %74, %70 ], [ %69, %68 ]
  %73 = phi ptr [ %79, %70 ], [ %0, %68 ]
  %74 = add nsw i32 %72, -1
  %75 = load i16, ptr %73, align 2, !tbaa !5
  %76 = lshr i16 %75, 15
  %77 = shl i16 %75, 1
  %78 = or disjoint i16 %77, %71
  store i16 %78, ptr %73, align 2, !tbaa !5
  %79 = getelementptr inbounds i16, ptr %73, i64 1
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %81, label %70, !llvm.loop !12

81:                                               ; preds = %70, %61
  %82 = load i16, ptr %64, align 2, !tbaa !5
  %83 = and i16 %82, %63
  %84 = icmp eq i16 %83, 0
  %85 = load i16, ptr @global_precision, align 2
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %112, label %88

88:                                               ; preds = %81, %105
  %89 = phi i16 [ %93, %105 ], [ %85, %81 ]
  %90 = phi i8 [ %108, %105 ], [ 0, %81 ]
  %91 = phi ptr [ %109, %105 ], [ %1, %81 ]
  %92 = phi ptr [ %110, %105 ], [ %0, %81 ]
  %93 = add i16 %89, -1
  %94 = icmp eq i8 %90, 0
  %95 = load i16, ptr %92, align 2, !tbaa !5
  %96 = load i16, ptr %91, align 2, !tbaa !5
  br i1 %94, label %102, label %97

97:                                               ; preds = %88
  %98 = add i16 %95, 1
  %99 = add i16 %98, %96
  %100 = xor i16 %95, -1
  %101 = icmp uge i16 %96, %100
  br label %105

102:                                              ; preds = %88
  %103 = add i16 %96, %95
  %104 = icmp ult i16 %103, %95
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i1 [ %101, %97 ], [ %104, %102 ]
  %107 = phi i16 [ %99, %97 ], [ %103, %102 ]
  %108 = zext i1 %106 to i8
  %109 = getelementptr inbounds i16, ptr %91, i64 1
  %110 = getelementptr inbounds i16, ptr %92, i64 1
  store i16 %107, ptr %92, align 2, !tbaa !5
  %111 = icmp eq i16 %93, 0
  br i1 %111, label %112, label %88, !llvm.loop !9

112:                                              ; preds = %105, %81
  %113 = lshr i16 %63, 1
  %114 = icmp ult i16 %63, 2
  %115 = sext i1 %114 to i64
  %116 = getelementptr inbounds i16, ptr %64, i64 %115
  %117 = select i1 %114, i16 -32768, i16 %113
  %118 = icmp eq i32 %65, 0
  br i1 %118, label %119, label %61, !llvm.loop !32

119:                                              ; preds = %112, %50, %39, %23
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mp_smul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = zext i16 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %23, %8 ]
  %10 = phi ptr [ %0, %6 ], [ %22, %8 ]
  %11 = phi i16 [ 0, %6 ], [ %24, %8 ]
  %12 = phi ptr [ %1, %6 ], [ %13, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %12, align 2, !tbaa !5
  %15 = zext i16 %14 to i64
  %16 = mul nuw nsw i64 %15, %7
  %17 = load i16, ptr %10, align 2, !tbaa !5
  %18 = zext i16 %17 to i64
  %19 = add nuw nsw i64 %9, %18
  %20 = add nuw nsw i64 %19, %16
  %21 = trunc i64 %20 to i16
  %22 = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %21, ptr %10, align 2, !tbaa !5
  %23 = lshr i64 %20, 16
  %24 = add nuw nsw i16 %11, 1
  %25 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %26 = icmp slt i16 %24, %25
  br i1 %26, label %8, label %27, !llvm.loop !33

27:                                               ; preds = %8
  %28 = trunc i64 %23 to i16
  br label %29

29:                                               ; preds = %27, %3
  %30 = phi ptr [ %0, %3 ], [ %22, %27 ]
  %31 = phi i16 [ 0, %3 ], [ %28, %27 ]
  %32 = load i16, ptr %30, align 2, !tbaa !5
  %33 = add i16 %32, %31
  store i16 %33, ptr %30, align 2, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mp_dmul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @global_precision, align 2, !tbaa !5
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 2
  %7 = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %7, i1 false)
  %8 = load i16, ptr @global_precision, align 2, !tbaa !5
  store i16 %8, ptr @munit_prec, align 2, !tbaa !5
  %9 = icmp sgt i16 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %3, %42
  %11 = phi i16 [ %48, %42 ], [ %8, %3 ]
  %12 = phi ptr [ %15, %42 ], [ %0, %3 ]
  %13 = phi ptr [ %16, %42 ], [ %2, %3 ]
  %14 = phi i32 [ %47, %42 ], [ 0, %3 ]
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  %16 = getelementptr inbounds i16, ptr %13, i64 1
  %17 = icmp sgt i16 %11, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %10
  %19 = load i16, ptr %13, align 2, !tbaa !5
  %20 = zext i16 %19 to i64
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %36, %21 ]
  %23 = phi ptr [ %12, %18 ], [ %35, %21 ]
  %24 = phi i16 [ 0, %18 ], [ %37, %21 ]
  %25 = phi ptr [ %1, %18 ], [ %26, %21 ]
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !5
  %28 = zext i16 %27 to i64
  %29 = mul nuw nsw i64 %28, %20
  %30 = load i16, ptr %23, align 2, !tbaa !5
  %31 = zext i16 %30 to i64
  %32 = add nuw nsw i64 %22, %31
  %33 = add nuw nsw i64 %32, %29
  %34 = trunc i64 %33 to i16
  %35 = getelementptr inbounds i16, ptr %23, i64 1
  store i16 %34, ptr %23, align 2, !tbaa !5
  %36 = lshr i64 %33, 16
  %37 = add nuw nsw i16 %24, 1
  %38 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %39 = icmp slt i16 %37, %38
  br i1 %39, label %21, label %40, !llvm.loop !33

40:                                               ; preds = %21
  %41 = trunc i64 %36 to i16
  br label %42

42:                                               ; preds = %10, %40
  %43 = phi ptr [ %12, %10 ], [ %35, %40 ]
  %44 = phi i16 [ 0, %10 ], [ %41, %40 ]
  %45 = load i16, ptr %43, align 2, !tbaa !5
  %46 = add i16 %45, %44
  store i16 %46, ptr %43, align 2, !tbaa !5
  %47 = add nuw nsw i32 %14, 1
  %48 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %49 = sext i16 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %10, label %51, !llvm.loop !34

51:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @mp_quo_digit(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i16, ptr %0, i64 -2
  %3 = load i16, ptr %2, align 2, !tbaa !5
  %4 = xor i16 %3, -1
  %5 = zext i16 %4 to i64
  %6 = load i16, ptr @reciph, align 2, !tbaa !5
  %7 = zext i16 %6 to i64
  %8 = add nuw nsw i64 %5, 1
  %9 = mul nuw nsw i64 %8, %7
  %10 = getelementptr inbounds i16, ptr %0, i64 -1
  %11 = load i16, ptr %10, align 2, !tbaa !5
  %12 = xor i16 %11, -1
  %13 = zext i16 %12 to i64
  %14 = load i16, ptr @recipl, align 2, !tbaa !5
  %15 = zext i16 %14 to i64
  %16 = mul nuw nsw i64 %15, %13
  %17 = add nuw nsw i64 %16, 65536
  %18 = lshr i64 %9, 1
  %19 = lshr i64 %17, 1
  %20 = add nuw nsw i64 %18, 1
  %21 = add nuw nsw i64 %20, %19
  %22 = mul nuw nsw i64 %13, %7
  %23 = load i16, ptr %0, align 2, !tbaa !5
  %24 = xor i16 %23, -1
  %25 = zext i16 %24 to i64
  %26 = mul nuw nsw i64 %25, %15
  %27 = lshr i64 %21, 16
  %28 = lshr i64 %22, 1
  %29 = lshr i64 %26, 1
  %30 = add nuw nsw i64 %28, 1
  %31 = add nuw nsw i64 %30, %29
  %32 = add nuw nsw i64 %31, %27
  %33 = lshr i64 %32, 14
  %34 = shl nuw nsw i64 %7, 1
  %35 = mul nuw nsw i64 %34, %25
  %36 = add nuw nsw i64 %33, %35
  %37 = load i32, ptr @mshift, align 4, !tbaa !35
  %38 = zext nneg i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = tail call i64 @llvm.umin.i64(i64 %39, i64 65535)
  %41 = trunc i64 %40 to i16
  ret i16 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @stage_smith_modulus(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @global_precision, align 2, !tbaa !5
  %3 = sext i16 %2 to i32
  %4 = shl nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @modulus, ptr align 1 %0, i64 %5, i1 false)
  store ptr @modulus, ptr @modmpl, align 8, !tbaa !37
  %6 = sext i16 %2 to i64
  %7 = getelementptr inbounds i16, ptr @modulus, i64 %6
  br label %8

8:                                                ; preds = %14, %1
  %9 = phi ptr [ %7, %1 ], [ %11, %14 ]
  %10 = phi i16 [ %2, %1 ], [ %15, %14 ]
  %11 = getelementptr inbounds i16, ptr %9, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !5
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = add i16 %10, -1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %8, !llvm.loop !19

17:                                               ; preds = %14, %8
  %18 = phi i16 [ %10, %8 ], [ 0, %14 ]
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = sext i16 %18 to i32
  %22 = shl nsw i32 %21, 4
  %23 = sext i16 %18 to i64
  %24 = getelementptr inbounds i16, ptr @modulus, i64 %23
  %25 = getelementptr inbounds i16, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = zext i16 %26 to i32
  %28 = icmp sgt i16 %26, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %20, %29
  %30 = phi i32 [ %32, %29 ], [ 32768, %20 ]
  %31 = phi i32 [ %33, %29 ], [ %22, %20 ]
  %32 = lshr i32 %30, 1
  %33 = add nsw i32 %31, -1
  %34 = and i32 %32, %27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %29, label %36, !llvm.loop !22

36:                                               ; preds = %29, %17, %20
  %37 = phi i32 [ 0, %17 ], [ %22, %20 ], [ %33, %29 ]
  %38 = shl i32 %37, 16
  %39 = ashr exact i32 %38, 16
  %40 = add nsw i32 %39, 15
  %41 = sdiv i32 %40, 16
  %42 = trunc i32 %41 to i16
  store i16 %42, ptr @modlenMULTUNITS, align 2, !tbaa !5
  br label %43

43:                                               ; preds = %49, %36
  %44 = phi ptr [ %7, %36 ], [ %46, %49 ]
  %45 = phi i16 [ %2, %36 ], [ %50, %49 ]
  %46 = getelementptr inbounds i16, ptr %44, i64 -1
  %47 = load i16, ptr %46, align 2, !tbaa !5
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = add i16 %45, -1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %43, !llvm.loop !19

52:                                               ; preds = %43, %49
  %53 = phi i16 [ %45, %43 ], [ 0, %49 ]
  store i16 3, ptr @global_precision, align 2, !tbaa !5
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds i16, ptr @modulus, i64 %54
  %56 = getelementptr inbounds i16, ptr %55, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) @mod_divisor, ptr noundef nonnull align 2 dereferenceable(6) %56, i64 6, i1 false)
  br label %57

57:                                               ; preds = %63, %52
  %58 = phi ptr [ getelementptr inbounds ([4 x i16], ptr @mod_divisor, i64 0, i64 3), %52 ], [ %60, %63 ]
  %59 = phi i16 [ 3, %52 ], [ %64, %63 ]
  %60 = getelementptr inbounds i16, ptr %58, i64 -1
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = add nsw i16 %59, -1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %57, !llvm.loop !19

66:                                               ; preds = %63, %57
  %67 = phi i16 [ %59, %57 ], [ 0, %63 ]
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = sext i16 %67 to i32
  %71 = shl nsw i32 %70, 4
  %72 = sext i16 %67 to i64
  %73 = getelementptr inbounds i16, ptr @mod_divisor, i64 %72
  %74 = getelementptr inbounds i16, ptr %73, i64 -1
  %75 = load i16, ptr %74, align 2, !tbaa !5
  %76 = zext i16 %75 to i32
  %77 = icmp sgt i16 %75, -1
  br i1 %77, label %78, label %85

78:                                               ; preds = %69, %78
  %79 = phi i32 [ %81, %78 ], [ 32768, %69 ]
  %80 = phi i32 [ %82, %78 ], [ %71, %69 ]
  %81 = lshr i32 %79, 1
  %82 = add nsw i32 %80, -1
  %83 = and i32 %81, %76
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %78, label %85, !llvm.loop !22

85:                                               ; preds = %78, %66, %69
  %86 = phi i32 [ 0, %66 ], [ %71, %69 ], [ %82, %78 ]
  %87 = add nsw i32 %86, -32
  store i32 %87, ptr @mshift, align 4, !tbaa !35
  %88 = trunc i32 %87 to i16
  %89 = shl i32 %87, 16
  %90 = ashr exact i32 %89, 16
  switch i16 %88, label %91 [
    i16 0, label %120
    i16 16, label %97
  ]

91:                                               ; preds = %85
  %92 = sub i32 48, %86
  %93 = shl nsw i32 -1, %90
  %94 = trunc i32 %93 to i16
  %95 = xor i16 %94, -1
  %96 = and i32 %92, 65535
  br label %105

97:                                               ; preds = %85, %97
  %98 = phi ptr [ %103, %97 ], [ getelementptr inbounds ([4 x i16], ptr @mod_divisor, i64 0, i64 2), %85 ]
  %99 = phi i16 [ %101, %97 ], [ 3, %85 ]
  %100 = phi i16 [ %102, %97 ], [ 0, %85 ]
  %101 = add nsw i16 %99, -1
  %102 = load i16, ptr %98, align 2, !tbaa !5
  store i16 %100, ptr %98, align 2, !tbaa !5
  %103 = getelementptr inbounds i16, ptr %98, i64 -1
  %104 = icmp eq i16 %101, 0
  br i1 %104, label %120, label %97, !llvm.loop !13

105:                                              ; preds = %105, %91
  %106 = phi ptr [ getelementptr inbounds ([4 x i16], ptr @mod_divisor, i64 0, i64 2), %91 ], [ %118, %105 ]
  %107 = phi i16 [ 3, %91 ], [ %109, %105 ]
  %108 = phi i16 [ 0, %91 ], [ %112, %105 ]
  %109 = add nsw i16 %107, -1
  %110 = load i16, ptr %106, align 2, !tbaa !5
  %111 = zext i16 %110 to i32
  %112 = and i16 %110, %95
  %113 = lshr i32 %111, %90
  %114 = zext i16 %108 to i32
  %115 = shl i32 %114, %96
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr %106, align 2, !tbaa !5
  %118 = getelementptr inbounds i16, ptr %106, i64 -1
  %119 = icmp eq i16 %109, 0
  br i1 %119, label %120, label %105, !llvm.loop !14

120:                                              ; preds = %97, %105, %85
  %121 = tail call i32 @mp_recip(ptr noundef nonnull @mod_quotient, ptr noundef nonnull @mod_divisor), !range !24
  %122 = load i16, ptr @global_precision, align 2, !tbaa !5
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds i16, ptr @mod_quotient, i64 %123
  %125 = getelementptr inbounds i16, ptr %124, i64 -1
  %126 = icmp eq i16 %122, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %120, %127
  %128 = phi ptr [ %135, %127 ], [ %125, %120 ]
  %129 = phi i16 [ %131, %127 ], [ %122, %120 ]
  %130 = phi i16 [ %133, %127 ], [ 0, %120 ]
  %131 = add i16 %129, -1
  %132 = load i16, ptr %128, align 2, !tbaa !5
  %133 = and i16 %132, 1
  %134 = tail call i16 @llvm.fshl.i16(i16 %130, i16 %132, i16 15)
  store i16 %134, ptr %128, align 2, !tbaa !5
  %135 = getelementptr inbounds i16, ptr %128, i64 -1
  %136 = icmp eq i16 %131, 0
  br i1 %136, label %137, label %127, !llvm.loop !14

137:                                              ; preds = %127, %120
  %138 = load i32, ptr @mshift, align 4, !tbaa !35
  %139 = add nsw i32 %138, 15
  %140 = srem i32 %139, 16
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr @mshift, align 4, !tbaa !35
  br label %142

142:                                              ; preds = %142, %137
  %143 = phi ptr [ @mod_quotient, %137 ], [ %148, %142 ]
  %144 = phi i16 [ %122, %137 ], [ %149, %142 ]
  %145 = load i16, ptr %143, align 2, !tbaa !5
  %146 = add i16 %145, 1
  store i16 %146, ptr %143, align 2, !tbaa !5
  %147 = icmp ne i16 %146, 0
  %148 = getelementptr inbounds i16, ptr %143, i64 1
  %149 = add i16 %144, -1
  %150 = icmp eq i16 %149, 0
  %151 = select i1 %147, i1 true, i1 %150
  br i1 %151, label %152, label %142, !llvm.loop !16

152:                                              ; preds = %142, %158
  %153 = phi ptr [ %155, %158 ], [ %124, %142 ]
  %154 = phi i16 [ %159, %158 ], [ %122, %142 ]
  %155 = getelementptr inbounds i16, ptr %153, i64 -1
  %156 = load i16, ptr %155, align 2, !tbaa !5
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = add i16 %154, -1
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %152, !llvm.loop !19

161:                                              ; preds = %158, %152
  %162 = phi i16 [ %154, %152 ], [ 0, %158 ]
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = sext i16 %162 to i32
  %166 = shl nsw i32 %165, 4
  %167 = sext i16 %162 to i64
  %168 = getelementptr inbounds i16, ptr @mod_quotient, i64 %167
  %169 = getelementptr inbounds i16, ptr %168, i64 -1
  %170 = load i16, ptr %169, align 2, !tbaa !5
  %171 = zext i16 %170 to i32
  %172 = icmp sgt i16 %170, -1
  br i1 %172, label %173, label %180

173:                                              ; preds = %164, %173
  %174 = phi i32 [ %176, %173 ], [ 32768, %164 ]
  %175 = phi i32 [ %177, %173 ], [ %166, %164 ]
  %176 = lshr i32 %174, 1
  %177 = add nsw i32 %175, -1
  %178 = and i32 %176, %171
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %173, label %180, !llvm.loop !22

180:                                              ; preds = %173, %161, %164
  %181 = phi i32 [ 0, %161 ], [ %166, %164 ], [ %177, %173 ]
  %182 = icmp sgt i32 %181, 32
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  br i1 %126, label %194, label %184

184:                                              ; preds = %183, %184
  %185 = phi ptr [ %192, %184 ], [ %125, %183 ]
  %186 = phi i16 [ %188, %184 ], [ %122, %183 ]
  %187 = phi i16 [ %190, %184 ], [ 0, %183 ]
  %188 = add i16 %186, -1
  %189 = load i16, ptr %185, align 2, !tbaa !5
  %190 = and i16 %189, 1
  %191 = tail call i16 @llvm.fshl.i16(i16 %187, i16 %189, i16 15)
  store i16 %191, ptr %185, align 2, !tbaa !5
  %192 = getelementptr inbounds i16, ptr %185, i64 -1
  %193 = icmp eq i16 %188, 0
  br i1 %193, label %194, label %184, !llvm.loop !14

194:                                              ; preds = %184, %183
  store i32 %140, ptr @mshift, align 4, !tbaa !35
  br label %195

195:                                              ; preds = %194, %180
  %196 = load i16, ptr @mod_quotient, align 2, !tbaa !5
  store i16 %196, ptr @recipl, align 2, !tbaa !5
  %197 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @mod_quotient, i64 0, i64 1), align 2, !tbaa !5
  store i16 %197, ptr @reciph, align 2, !tbaa !5
  store i16 %2, ptr @global_precision, align 2, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @smith_modmult(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr @global_precision, align 2, !tbaa !5
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 2
  %7 = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), i8 0, i64 %7, i1 false)
  store i16 %4, ptr @munit_prec, align 2, !tbaa !5
  %8 = icmp sgt i16 %4, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %3, %42
  %10 = phi i16 [ %48, %42 ], [ %4, %3 ]
  %11 = phi ptr [ %14, %42 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %3 ]
  %12 = phi ptr [ %15, %42 ], [ %2, %3 ]
  %13 = phi i32 [ %47, %42 ], [ 0, %3 ]
  %14 = getelementptr inbounds i16, ptr %11, i64 1
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  %16 = icmp sgt i16 %10, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %9
  %18 = load i16, ptr %12, align 2, !tbaa !5
  %19 = zext i16 %18 to i64
  %20 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %21 = tail call i16 @llvm.smax.i16(i16 %20, i16 1)
  br label %22

22:                                               ; preds = %22, %17
  %23 = phi i64 [ 0, %17 ], [ %37, %22 ]
  %24 = phi ptr [ %11, %17 ], [ %36, %22 ]
  %25 = phi i16 [ 0, %17 ], [ %38, %22 ]
  %26 = phi ptr [ %1, %17 ], [ %27, %22 ]
  %27 = getelementptr inbounds i16, ptr %26, i64 1
  %28 = load i16, ptr %26, align 2, !tbaa !5
  %29 = zext i16 %28 to i64
  %30 = mul nuw nsw i64 %29, %19
  %31 = load i16, ptr %24, align 2, !tbaa !5
  %32 = zext i16 %31 to i64
  %33 = add nuw nsw i64 %23, %32
  %34 = add nuw nsw i64 %33, %30
  %35 = trunc i64 %34 to i16
  %36 = getelementptr inbounds i16, ptr %24, i64 1
  store i16 %35, ptr %24, align 2, !tbaa !5
  %37 = lshr i64 %34, 16
  %38 = add nuw nsw i16 %25, 1
  %39 = icmp eq i16 %38, %21
  br i1 %39, label %40, label %22, !llvm.loop !33

40:                                               ; preds = %22
  %41 = trunc i64 %37 to i16
  br label %42

42:                                               ; preds = %40, %9
  %43 = phi ptr [ %11, %9 ], [ %36, %40 ]
  %44 = phi i16 [ 0, %9 ], [ %41, %40 ]
  %45 = load i16, ptr %43, align 2, !tbaa !5
  %46 = add i16 %45, %44
  store i16 %46, ptr %43, align 2, !tbaa !5
  %47 = add nuw nsw i32 %13, 1
  %48 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %49 = sext i16 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %9, label %51, !llvm.loop !34

51:                                               ; preds = %42, %3
  %52 = shl i16 %4, 1
  %53 = or disjoint i16 %52, 1
  store i16 %53, ptr @global_precision, align 2, !tbaa !5
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds i16, ptr getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), i64 %54
  %56 = getelementptr inbounds i16, ptr %55, i64 -1
  store i16 0, ptr %56, align 2, !tbaa !5
  br label %57

57:                                               ; preds = %63, %51
  %58 = phi ptr [ %55, %51 ], [ %60, %63 ]
  %59 = phi i16 [ %53, %51 ], [ %64, %63 ]
  %60 = getelementptr inbounds i16, ptr %58, i64 -1
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = add i16 %59, -1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %57, !llvm.loop !19

66:                                               ; preds = %57, %63
  %67 = phi i16 [ %59, %57 ], [ 0, %63 ]
  %68 = load i16, ptr @modlenMULTUNITS, align 2, !tbaa !5
  %69 = icmp slt i16 %67, %68
  br i1 %69, label %248, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %76, %70 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %66 ]
  %72 = phi i16 [ %77, %70 ], [ %53, %66 ]
  %73 = load i16, ptr %71, align 2, !tbaa !5
  %74 = add i16 %73, 1
  store i16 %74, ptr %71, align 2, !tbaa !5
  %75 = icmp ne i16 %74, 0
  %76 = getelementptr inbounds i16, ptr %71, i64 1
  %77 = add i16 %72, -1
  %78 = icmp eq i16 %77, 0
  %79 = select i1 %75, i1 true, i1 %78
  br i1 %79, label %80, label %70, !llvm.loop !16

80:                                               ; preds = %70, %80
  %81 = phi ptr [ %86, %80 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %70 ]
  %82 = phi i16 [ %87, %80 ], [ %53, %70 ]
  %83 = load i16, ptr %81, align 2, !tbaa !5
  %84 = add i16 %83, -1
  store i16 %84, ptr %81, align 2, !tbaa !5
  %85 = icmp ne i16 %83, 0
  %86 = getelementptr inbounds i16, ptr %81, i64 1
  %87 = add i16 %82, -1
  %88 = icmp eq i16 %87, 0
  %89 = select i1 %85, i1 true, i1 %88
  br i1 %89, label %90, label %80, !llvm.loop !17

90:                                               ; preds = %80, %90
  %91 = phi ptr [ %95, %90 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %80 ]
  %92 = phi i16 [ %96, %90 ], [ %53, %80 ]
  %93 = load i16, ptr %91, align 2, !tbaa !5
  %94 = xor i16 %93, -1
  store i16 %94, ptr %91, align 2, !tbaa !5
  %95 = getelementptr inbounds i16, ptr %91, i64 1
  %96 = add i16 %92, -1
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %90, !llvm.loop !18

98:                                               ; preds = %90
  store i16 %4, ptr @global_precision, align 2, !tbaa !5
  store i16 %4, ptr @munit_prec, align 2, !tbaa !5
  %99 = add i16 %67, 1
  %100 = sub i16 %99, %68
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %219, label %102

102:                                              ; preds = %98
  %103 = sext i16 %67 to i64
  %104 = getelementptr inbounds i16, ptr getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), i64 %103
  %105 = sext i16 %68 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i16, ptr %104, i64 %106
  %108 = load i16, ptr @reciph, align 2, !tbaa !5
  %109 = zext i16 %108 to i64
  %110 = load i16, ptr @recipl, align 2, !tbaa !5
  %111 = zext i16 %110 to i64
  %112 = shl nuw nsw i64 %109, 1
  %113 = load i32, ptr @mshift, align 4, !tbaa !35
  %114 = zext nneg i32 %113 to i64
  %115 = load ptr, ptr @modmpl, align 8
  br label %116

116:                                              ; preds = %102, %215
  %117 = phi ptr [ %104, %102 ], [ %126, %215 ]
  %118 = phi ptr [ %107, %102 ], [ %216, %215 ]
  %119 = phi i16 [ %100, %102 ], [ %217, %215 ]
  %120 = getelementptr inbounds i16, ptr %117, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !5
  %122 = xor i16 %121, -1
  %123 = zext i16 %122 to i64
  %124 = add nuw nsw i64 %123, 1
  %125 = mul nuw nsw i64 %124, %109
  %126 = getelementptr inbounds i16, ptr %117, i64 -1
  %127 = load i16, ptr %126, align 2, !tbaa !5
  %128 = xor i16 %127, -1
  %129 = zext i16 %128 to i64
  %130 = mul nuw nsw i64 %111, %129
  %131 = add nuw nsw i64 %130, 65536
  %132 = lshr i64 %125, 1
  %133 = lshr i64 %131, 1
  %134 = add nuw nsw i64 %132, 1
  %135 = add nuw nsw i64 %134, %133
  %136 = mul nuw nsw i64 %129, %109
  %137 = load i16, ptr %117, align 2, !tbaa !5
  %138 = xor i16 %137, -1
  %139 = zext i16 %138 to i64
  %140 = mul nuw nsw i64 %139, %111
  %141 = lshr i64 %135, 16
  %142 = lshr i64 %136, 1
  %143 = lshr i64 %140, 1
  %144 = add nuw nsw i64 %142, 1
  %145 = add nuw nsw i64 %144, %143
  %146 = add nuw nsw i64 %145, %141
  %147 = lshr i64 %146, 14
  %148 = mul nuw nsw i64 %112, %139
  %149 = add nuw nsw i64 %147, %148
  %150 = lshr i64 %149, %114
  %151 = tail call i64 @llvm.umin.i64(i64 %150, i64 65535)
  %152 = icmp eq i64 %150, 0
  br i1 %152, label %215, label %153

153:                                              ; preds = %116
  %154 = load i16, ptr @munit_prec, align 2, !tbaa !5
  %155 = icmp sgt i16 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %153, %156
  %157 = phi i64 [ %171, %156 ], [ 0, %153 ]
  %158 = phi ptr [ %170, %156 ], [ %118, %153 ]
  %159 = phi i16 [ %172, %156 ], [ 0, %153 ]
  %160 = phi ptr [ %161, %156 ], [ %115, %153 ]
  %161 = getelementptr inbounds i16, ptr %160, i64 1
  %162 = load i16, ptr %160, align 2, !tbaa !5
  %163 = zext i16 %162 to i64
  %164 = mul nuw nsw i64 %151, %163
  %165 = load i16, ptr %158, align 2, !tbaa !5
  %166 = zext i16 %165 to i64
  %167 = add nuw nsw i64 %157, %166
  %168 = add nuw nsw i64 %167, %164
  %169 = trunc i64 %168 to i16
  %170 = getelementptr inbounds i16, ptr %158, i64 1
  store i16 %169, ptr %158, align 2, !tbaa !5
  %171 = lshr i64 %168, 16
  %172 = add nuw nsw i16 %159, 1
  %173 = icmp eq i16 %172, %154
  br i1 %173, label %174, label %156, !llvm.loop !33

174:                                              ; preds = %156
  %175 = trunc i64 %171 to i16
  br label %176

176:                                              ; preds = %153, %174
  %177 = phi ptr [ %118, %153 ], [ %170, %174 ]
  %178 = phi i16 [ 0, %153 ], [ %175, %174 ]
  %179 = load i16, ptr %177, align 2, !tbaa !5
  %180 = add i16 %179, %178
  store i16 %180, ptr %177, align 2, !tbaa !5
  %181 = load i16, ptr %117, align 2, !tbaa !5
  %182 = icmp sgt i16 %181, -1
  br i1 %182, label %183, label %215

183:                                              ; preds = %176
  %184 = load i16, ptr @global_precision, align 2, !tbaa !5
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %209, label %186

186:                                              ; preds = %183, %202
  %187 = phi i16 [ %191, %202 ], [ %184, %183 ]
  %188 = phi i8 [ %205, %202 ], [ 0, %183 ]
  %189 = phi ptr [ %206, %202 ], [ @modulus, %183 ]
  %190 = phi ptr [ %207, %202 ], [ %118, %183 ]
  %191 = add i16 %187, -1
  %192 = icmp eq i8 %188, 0
  %193 = load i16, ptr %190, align 2, !tbaa !5
  %194 = load i16, ptr %189, align 2, !tbaa !5
  br i1 %192, label %199, label %195

195:                                              ; preds = %186
  %196 = xor i16 %194, -1
  %197 = add i16 %193, %196
  %198 = icmp ule i16 %193, %194
  br label %202

199:                                              ; preds = %186
  %200 = sub i16 %193, %194
  %201 = icmp ult i16 %193, %194
  br label %202

202:                                              ; preds = %199, %195
  %203 = phi i1 [ %198, %195 ], [ %201, %199 ]
  %204 = phi i16 [ %197, %195 ], [ %200, %199 ]
  %205 = zext i1 %203 to i8
  %206 = getelementptr inbounds i16, ptr %189, i64 1
  %207 = getelementptr inbounds i16, ptr %190, i64 1
  store i16 %204, ptr %190, align 2, !tbaa !5
  %208 = icmp eq i16 %191, 0
  br i1 %208, label %209, label %186, !llvm.loop !11

209:                                              ; preds = %202, %183
  %210 = phi i8 [ 0, %183 ], [ %205, %202 ]
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i16, ptr %117, align 2, !tbaa !5
  %214 = add i16 %213, -1
  store i16 %214, ptr %117, align 2, !tbaa !5
  br label %215

215:                                              ; preds = %176, %212, %209, %116
  %216 = getelementptr inbounds i16, ptr %118, i64 -1
  %217 = add i16 %119, -1
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %219, label %116, !llvm.loop !39

219:                                              ; preds = %215, %98
  store i16 %4, ptr @global_precision, align 2, !tbaa !5
  br label %220

220:                                              ; preds = %220, %219
  %221 = phi ptr [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %219 ], [ %226, %220 ]
  %222 = phi i16 [ %4, %219 ], [ %227, %220 ]
  %223 = load i16, ptr %221, align 2, !tbaa !5
  %224 = add i16 %223, -1
  store i16 %224, ptr %221, align 2, !tbaa !5
  %225 = icmp ne i16 %223, 0
  %226 = getelementptr inbounds i16, ptr %221, i64 1
  %227 = add i16 %222, -1
  %228 = icmp eq i16 %227, 0
  %229 = select i1 %225, i1 true, i1 %228
  br i1 %229, label %230, label %220, !llvm.loop !17

230:                                              ; preds = %220, %230
  %231 = phi ptr [ %235, %230 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %220 ]
  %232 = phi i16 [ %236, %230 ], [ %4, %220 ]
  %233 = load i16, ptr %231, align 2, !tbaa !5
  %234 = xor i16 %233, -1
  store i16 %234, ptr %231, align 2, !tbaa !5
  %235 = getelementptr inbounds i16, ptr %231, i64 1
  %236 = add i16 %232, -1
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %238, label %230, !llvm.loop !18

238:                                              ; preds = %230, %238
  %239 = phi ptr [ %244, %238 ], [ getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), %230 ]
  %240 = phi i16 [ %245, %238 ], [ %4, %230 ]
  %241 = load i16, ptr %239, align 2, !tbaa !5
  %242 = add i16 %241, -1
  store i16 %242, ptr %239, align 2, !tbaa !5
  %243 = icmp ne i16 %241, 0
  %244 = getelementptr inbounds i16, ptr %239, i64 1
  %245 = add i16 %240, -1
  %246 = icmp eq i16 %245, 0
  %247 = select i1 %243, i1 true, i1 %246
  br i1 %247, label %249, label %238, !llvm.loop !17

248:                                              ; preds = %66
  store i16 %4, ptr @global_precision, align 2, !tbaa !5
  br label %249

249:                                              ; preds = %238, %248
  %250 = load i16, ptr @global_precision, align 2, !tbaa !5
  %251 = sext i16 %250 to i32
  %252 = shl nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 2 getelementptr inbounds ([262 x i16], ptr @ds_data, i64 0, i64 1), i64 %253, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @smith_burn() local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(130) @modulus, i8 0, i64 130, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) @ds_data, i8 0, i64 262, i1 false)
  store i32 0, ptr @mod_quotient, align 4
  store i32 0, ptr @mod_divisor, align 4
  store ptr null, ptr @modmpl, align 8, !tbaa !37
  store i32 0, ptr @mshift, align 4, !tbaa !35
  store i16 0, ptr @recipl, align 2, !tbaa !5
  store i16 0, ptr @reciph, align 2, !tbaa !5
  store i16 0, ptr @modlenMULTUNITS, align 2, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @copyright_notice() local_unnamed_addr #8 {
  ret ptr @.str
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_modexp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #10
  %6 = load i16, ptr @global_precision, align 2, !tbaa !5
  %7 = sext i16 %6 to i32
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %9, i1 false)
  store i16 1, ptr %0, align 2, !tbaa !5
  %10 = load i16, ptr %2, align 2, !tbaa !5
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %4
  %13 = load i16, ptr @global_precision, align 2, !tbaa !5
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds i16, ptr %2, i64 %14
  br label %16

16:                                               ; preds = %22, %12
  %17 = phi ptr [ %15, %12 ], [ %19, %22 ]
  %18 = phi i16 [ %13, %12 ], [ %23, %22 ]
  %19 = getelementptr inbounds i16, ptr %17, i64 -1
  %20 = load i16, ptr %19, align 2, !tbaa !5
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add i16 %18, -1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !19

25:                                               ; preds = %16, %22
  %26 = phi i16 [ %18, %16 ], [ 0, %22 ]
  %27 = icmp slt i16 %26, 2
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i16, ptr %1, align 2, !tbaa !5
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds i16, ptr %1, i64 %14
  br label %33

33:                                               ; preds = %39, %31
  %34 = phi ptr [ %32, %31 ], [ %36, %39 ]
  %35 = phi i16 [ %13, %31 ], [ %40, %39 ]
  %36 = getelementptr inbounds i16, ptr %34, i64 -1
  %37 = load i16, ptr %36, align 2, !tbaa !5
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = add i16 %35, -1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %33, !llvm.loop !19

42:                                               ; preds = %33, %39
  %43 = phi i16 [ %35, %33 ], [ 0, %39 ]
  %44 = icmp slt i16 %43, 2
  br i1 %44, label %209, label %45

45:                                               ; preds = %42, %28
  br label %209

46:                                               ; preds = %25, %4
  %47 = load i16, ptr %3, align 2, !tbaa !5
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i16, ptr @global_precision, align 2, !tbaa !5
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, ptr %3, i64 %51
  br label %53

53:                                               ; preds = %59, %49
  %54 = phi ptr [ %52, %49 ], [ %56, %59 ]
  %55 = phi i16 [ %50, %49 ], [ %60, %59 ]
  %56 = getelementptr inbounds i16, ptr %54, i64 -1
  %57 = load i16, ptr %56, align 2, !tbaa !5
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = add i16 %55, -1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %53, !llvm.loop !19

62:                                               ; preds = %53, %59
  %63 = phi i16 [ %55, %53 ], [ 0, %59 ]
  %64 = icmp slt i16 %63, 2
  br i1 %64, label %209, label %65

65:                                               ; preds = %62, %46
  %66 = load i16, ptr @global_precision, align 2, !tbaa !5
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds i16, ptr %1, i64 %67
  %69 = getelementptr inbounds i16, ptr %3, i64 %67
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi ptr [ %68, %65 ], [ %75, %70 ]
  %72 = phi ptr [ %69, %65 ], [ %74, %70 ]
  %73 = phi i16 [ %66, %65 ], [ %79, %70 ]
  %74 = getelementptr inbounds i16, ptr %72, i64 -1
  %75 = getelementptr inbounds i16, ptr %71, i64 -1
  %76 = load i16, ptr %75, align 2, !tbaa !5
  %77 = load i16, ptr %74, align 2, !tbaa !5
  %78 = icmp ne i16 %76, %77
  %79 = add i16 %73, -1
  %80 = icmp eq i16 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %70, !llvm.loop !15

82:                                               ; preds = %70
  %83 = icmp ult i16 %76, %77
  br i1 %83, label %84, label %209

84:                                               ; preds = %82
  %85 = getelementptr inbounds i16, ptr %2, i64 %67
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi ptr [ %85, %84 ], [ %91, %86 ]
  %88 = phi ptr [ %69, %84 ], [ %90, %86 ]
  %89 = phi i16 [ %66, %84 ], [ %95, %86 ]
  %90 = getelementptr inbounds i16, ptr %88, i64 -1
  %91 = getelementptr inbounds i16, ptr %87, i64 -1
  %92 = load i16, ptr %91, align 2, !tbaa !5
  %93 = load i16, ptr %90, align 2, !tbaa !5
  %94 = icmp ne i16 %92, %93
  %95 = add i16 %89, -1
  %96 = icmp eq i16 %95, 0
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %98, label %86, !llvm.loop !15

98:                                               ; preds = %86
  %99 = icmp ult i16 %92, %93
  br i1 %99, label %100, label %209

100:                                              ; preds = %98, %106
  %101 = phi ptr [ %103, %106 ], [ %69, %98 ]
  %102 = phi i16 [ %107, %106 ], [ %66, %98 ]
  %103 = getelementptr inbounds i16, ptr %101, i64 -1
  %104 = load i16, ptr %103, align 2, !tbaa !5
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = add i16 %102, -1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %100, !llvm.loop !19

109:                                              ; preds = %106, %100
  %110 = phi i16 [ %102, %100 ], [ 0, %106 ]
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %109
  %113 = sext i16 %110 to i32
  %114 = shl nsw i32 %113, 4
  %115 = sext i16 %110 to i64
  %116 = getelementptr inbounds i16, ptr %3, i64 %115
  %117 = getelementptr inbounds i16, ptr %116, i64 -1
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = zext i16 %118 to i32
  %120 = icmp sgt i16 %118, -1
  br i1 %120, label %121, label %128

121:                                              ; preds = %112, %121
  %122 = phi i32 [ %124, %121 ], [ 32768, %112 ]
  %123 = phi i32 [ %125, %121 ], [ %114, %112 ]
  %124 = lshr i32 %122, 1
  %125 = add nsw i32 %123, -1
  %126 = and i32 %124, %119
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %121, label %128, !llvm.loop !22

128:                                              ; preds = %121, %109, %112
  %129 = phi i32 [ 0, %109 ], [ %114, %112 ], [ %125, %121 ]
  %130 = add nsw i32 %129, 15
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i16
  store i16 %132, ptr @global_precision, align 2, !tbaa !5
  %133 = tail call i32 @stage_smith_modulus(ptr noundef nonnull %3)
  %134 = load i16, ptr @global_precision, align 2, !tbaa !5
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds i16, ptr %2, i64 %135
  br label %137

137:                                              ; preds = %143, %128
  %138 = phi ptr [ %136, %128 ], [ %140, %143 ]
  %139 = phi i16 [ %134, %128 ], [ %144, %143 ]
  %140 = getelementptr inbounds i16, ptr %138, i64 -1
  %141 = load i16, ptr %140, align 2, !tbaa !5
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = add i16 %139, -1
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %137, !llvm.loop !19

146:                                              ; preds = %137, %143
  %147 = phi i16 [ %139, %137 ], [ 0, %143 ]
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %209, label %149

149:                                              ; preds = %146
  %150 = sext i16 %147 to i32
  %151 = shl nsw i32 %150, 4
  %152 = sext i16 %147 to i64
  %153 = getelementptr inbounds i16, ptr %2, i64 %152
  %154 = getelementptr inbounds i16, ptr %153, i64 -1
  %155 = load i16, ptr %154, align 2, !tbaa !5
  %156 = zext i16 %155 to i32
  %157 = icmp sgt i16 %155, -1
  br i1 %157, label %158, label %165

158:                                              ; preds = %149, %158
  %159 = phi i32 [ %161, %158 ], [ 32768, %149 ]
  %160 = phi i32 [ %162, %158 ], [ %151, %149 ]
  %161 = lshr i32 %159, 1
  %162 = add nsw i32 %160, -1
  %163 = and i32 %161, %156
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %158, label %165, !llvm.loop !40

165:                                              ; preds = %158, %149
  %166 = phi i32 [ %151, %149 ], [ %162, %158 ]
  %167 = phi i32 [ 32768, %149 ], [ %161, %158 ]
  %168 = sext i16 %134 to i32
  %169 = shl nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %1, i64 %170, i1 false)
  %171 = add nsw i32 %166, -1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %204, label %173

173:                                              ; preds = %165
  %174 = icmp ult i32 %167, 2
  %175 = lshr i32 %167, 1
  %176 = select i1 %174, i32 32768, i32 %175
  %177 = getelementptr inbounds i16, ptr %153, i64 -2
  %178 = select i1 %174, ptr %177, ptr %154
  br label %179

179:                                              ; preds = %173, %195
  %180 = phi i32 [ %202, %195 ], [ %171, %173 ]
  %181 = phi i32 [ %201, %195 ], [ %176, %173 ]
  %182 = phi ptr [ %200, %195 ], [ %178, %173 ]
  %183 = call i32 @smith_modmult(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %0)
  %184 = load i16, ptr %182, align 2, !tbaa !5
  %185 = zext i16 %184 to i32
  %186 = and i32 %181, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %179
  %189 = call i32 @smith_modmult(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %1)
  br label %195

190:                                              ; preds = %179
  %191 = load i16, ptr @global_precision, align 2, !tbaa !5
  %192 = sext i16 %191 to i32
  %193 = shl nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 16 %5, i64 %194, i1 false)
  br label %195

195:                                              ; preds = %190, %188
  %196 = lshr i32 %181, 1
  %197 = and i32 %196, 32767
  %198 = icmp eq i32 %197, 0
  %199 = sext i1 %198 to i64
  %200 = getelementptr inbounds i16, ptr %182, i64 %199
  %201 = select i1 %198, i32 32768, i32 %197
  %202 = add nsw i32 %180, -1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %179, !llvm.loop !41

204:                                              ; preds = %195, %165
  %205 = load i16, ptr @global_precision, align 2, !tbaa !5
  %206 = sext i16 %205 to i32
  %207 = shl nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %5, i8 0, i64 %208, i1 false)
  store i16 0, ptr %5, align 16, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(130) @modulus, i8 0, i64 130, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) @ds_data, i8 0, i64 262, i1 false)
  store i32 0, ptr @mod_quotient, align 4
  store i32 0, ptr @mod_divisor, align 4
  store ptr null, ptr @modmpl, align 8, !tbaa !37
  store i32 0, ptr @mshift, align 4, !tbaa !35
  store i16 0, ptr @recipl, align 2, !tbaa !5
  store i16 0, ptr @reciph, align 2, !tbaa !5
  store i16 0, ptr @modlenMULTUNITS, align 2, !tbaa !5
  store i16 %66, ptr @global_precision, align 2, !tbaa !5
  br label %209

209:                                              ; preds = %146, %98, %82, %62, %42, %204, %45
  %210 = phi i32 [ 0, %45 ], [ 0, %204 ], [ -1, %42 ], [ -2, %62 ], [ -3, %82 ], [ -4, %98 ], [ 0, %146 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #10
  ret i32 %210
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mp_modexp_crt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca [130 x i16], align 16
  %9 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #10
  %10 = call i32 @mp_mod(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2), !range !24
  %11 = call i32 @mp_modexp(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %2), !range !42
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i16, ptr @global_precision, align 2, !tbaa !5
  %15 = sext i16 %14 to i32
  %16 = shl nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %17, i1 false)
  store i16 1, ptr %0, align 2, !tbaa !5
  br label %116

18:                                               ; preds = %7
  %19 = call i32 @mp_mod(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %3), !range !24
  %20 = call i32 @mp_modexp(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %3), !range !42
  %21 = icmp slt i32 %20, 0
  %22 = load i16, ptr @global_precision, align 2, !tbaa !5
  br i1 %21, label %23, label %27

23:                                               ; preds = %18
  %24 = sext i16 %22 to i32
  %25 = shl nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %26, i1 false)
  store i16 1, ptr %0, align 2, !tbaa !5
  br label %116

27:                                               ; preds = %18
  %28 = icmp eq i16 %22, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %27, %45
  %30 = phi i16 [ %34, %45 ], [ %22, %27 ]
  %31 = phi i8 [ %48, %45 ], [ 0, %27 ]
  %32 = phi ptr [ %49, %45 ], [ %0, %27 ]
  %33 = phi ptr [ %50, %45 ], [ %8, %27 ]
  %34 = add i16 %30, -1
  %35 = icmp eq i8 %31, 0
  %36 = load i16, ptr %33, align 2, !tbaa !5
  %37 = load i16, ptr %32, align 2, !tbaa !5
  br i1 %35, label %42, label %38

38:                                               ; preds = %29
  %39 = xor i16 %37, -1
  %40 = add i16 %36, %39
  %41 = icmp ule i16 %36, %37
  br label %45

42:                                               ; preds = %29
  %43 = sub i16 %36, %37
  %44 = icmp ult i16 %36, %37
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i1 [ %41, %38 ], [ %44, %42 ]
  %47 = phi i16 [ %40, %38 ], [ %43, %42 ]
  %48 = zext i1 %46 to i8
  %49 = getelementptr inbounds i16, ptr %32, i64 1
  %50 = getelementptr inbounds i16, ptr %33, i64 1
  store i16 %47, ptr %33, align 2, !tbaa !5
  %51 = icmp eq i16 %34, 0
  br i1 %51, label %52, label %29, !llvm.loop !11

52:                                               ; preds = %45
  %53 = xor i1 %46, true
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i1 [ true, %27 ], [ %53, %52 ]
  %56 = or i1 %28, %55
  br i1 %56, label %81, label %57

57:                                               ; preds = %54, %74
  %58 = phi i16 [ %62, %74 ], [ %22, %54 ]
  %59 = phi i8 [ %77, %74 ], [ 0, %54 ]
  %60 = phi ptr [ %78, %74 ], [ %3, %54 ]
  %61 = phi ptr [ %79, %74 ], [ %8, %54 ]
  %62 = add i16 %58, -1
  %63 = icmp eq i8 %59, 0
  %64 = load i16, ptr %61, align 2, !tbaa !5
  %65 = load i16, ptr %60, align 2, !tbaa !5
  br i1 %63, label %71, label %66

66:                                               ; preds = %57
  %67 = add i16 %64, 1
  %68 = add i16 %67, %65
  %69 = xor i16 %64, -1
  %70 = icmp uge i16 %65, %69
  br label %74

71:                                               ; preds = %57
  %72 = add i16 %65, %64
  %73 = icmp ult i16 %72, %64
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi i1 [ %70, %66 ], [ %73, %71 ]
  %76 = phi i16 [ %68, %66 ], [ %72, %71 ]
  %77 = zext i1 %75 to i8
  %78 = getelementptr inbounds i16, ptr %60, i64 1
  %79 = getelementptr inbounds i16, ptr %61, i64 1
  store i16 %76, ptr %61, align 2, !tbaa !5
  %80 = icmp eq i16 %62, 0
  br i1 %80, label %81, label %57, !llvm.loop !9

81:                                               ; preds = %74, %54
  %82 = call i32 @mp_mult(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %6)
  %83 = call i32 @mp_mod(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %3), !range !24
  %84 = call i32 @mp_mult(ptr noundef nonnull %9, ptr noundef %2, ptr noundef nonnull %8)
  %85 = load i16, ptr @global_precision, align 2, !tbaa !5
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %81, %104
  %88 = phi i16 [ %92, %104 ], [ %85, %81 ]
  %89 = phi i8 [ %107, %104 ], [ 0, %81 ]
  %90 = phi ptr [ %108, %104 ], [ %9, %81 ]
  %91 = phi ptr [ %109, %104 ], [ %0, %81 ]
  %92 = add i16 %88, -1
  %93 = icmp eq i8 %89, 0
  %94 = load i16, ptr %91, align 2, !tbaa !5
  %95 = load i16, ptr %90, align 2, !tbaa !5
  br i1 %93, label %101, label %96

96:                                               ; preds = %87
  %97 = add i16 %94, 1
  %98 = add i16 %97, %95
  %99 = xor i16 %94, -1
  %100 = icmp uge i16 %95, %99
  br label %104

101:                                              ; preds = %87
  %102 = add i16 %95, %94
  %103 = icmp ult i16 %102, %94
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i1 [ %100, %96 ], [ %103, %101 ]
  %106 = phi i16 [ %98, %96 ], [ %102, %101 ]
  %107 = zext i1 %105 to i8
  %108 = getelementptr inbounds i16, ptr %90, i64 1
  %109 = getelementptr inbounds i16, ptr %91, i64 1
  store i16 %106, ptr %91, align 2, !tbaa !5
  %110 = icmp eq i16 %92, 0
  br i1 %110, label %111, label %87, !llvm.loop !9

111:                                              ; preds = %104, %81
  %112 = load i16, ptr @global_precision, align 2, !tbaa !5
  %113 = sext i16 %112 to i32
  %114 = shl nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 0, i64 %115, i1 false)
  store i16 0, ptr %8, align 16, !tbaa !5
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %9, i8 0, i64 %115, i1 false)
  store i16 0, ptr %9, align 16, !tbaa !5
  br label %116

116:                                              ; preds = %111, %23, %13
  %117 = phi i32 [ %11, %13 ], [ %20, %23 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #10
  ret i32 %117
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = !{i32 -1, i32 1}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !7, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !7, i64 0}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = !{i32 -4, i32 1}

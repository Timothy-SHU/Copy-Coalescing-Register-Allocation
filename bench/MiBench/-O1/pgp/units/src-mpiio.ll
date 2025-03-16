; ModuleID = 'src/mpiio.c'
source_filename = "src/mpiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" 0\0A\00", align 1
@global_precision = external local_unnamed_addr global i16, align 2
@stdout = external local_unnamed_addr global ptr, align 8
@puthexbyte.nibs = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @string_length(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = add nuw nsw i32 %7, 1
  %11 = load i8, ptr %9, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !8

13:                                               ; preds = %6, %3, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %10, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @mp_display(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = sext i8 %6 to i32
  %10 = load ptr, ptr @stdout, align 8, !tbaa !10
  %11 = tail call i32 @putc(i32 noundef %9, ptr noundef %10)
  %12 = load i8, ptr %8, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !12

14:                                               ; preds = %5, %2
  %15 = tail call signext i16 @significance(ptr noundef %1) #10
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14, %17
  %18 = phi i8 [ %25, %17 ], [ 32, %14 ]
  %19 = phi i64 [ %20, %17 ], [ 0, %14 ]
  %20 = add nuw nsw i64 %19, 1
  %21 = getelementptr inbounds i8, ptr @.str, i64 %20
  %22 = sext i8 %18 to i32
  %23 = load ptr, ptr @stdout, align 8, !tbaa !10
  %24 = tail call i32 @putc(i32 noundef %22, ptr noundef %23)
  %25 = load i8, ptr %21, align 1, !tbaa !5
  %26 = icmp eq i64 %20, 3
  br i1 %26, label %102, label %17, !llvm.loop !12

27:                                               ; preds = %14
  %28 = sext i16 %15 to i64
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %27, %62
  %31 = phi i16 [ %15, %27 ], [ %35, %62 ]
  %32 = phi ptr [ %29, %27 ], [ %34, %62 ]
  %33 = phi i32 [ 0, %27 ], [ %36, %62 ]
  %34 = getelementptr inbounds i16, ptr %32, i64 -1
  %35 = add i16 %31, -1
  %36 = add nuw nsw i32 %33, 1
  %37 = and i32 %33, 7
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne i32 %33, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %62

41:                                               ; preds = %30
  %42 = load ptr, ptr @stdout, align 8, !tbaa !10
  %43 = tail call i32 @putc(i32 noundef 10, ptr noundef %42)
  %44 = load i8, ptr %0, align 1, !tbaa !5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %50, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %49, %46 ], [ %0, %41 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = add nuw nsw i32 %47, 1
  %51 = load i8, ptr %49, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %46, !llvm.loop !8

53:                                               ; preds = %46, %41
  %54 = phi i32 [ 0, %41 ], [ %50, %46 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %56
  %57 = phi i32 [ %58, %56 ], [ %54, %53 ]
  %58 = add nsw i32 %57, -1
  %59 = load ptr, ptr @stdout, align 8, !tbaa !10
  %60 = tail call i32 @putc(i32 noundef 32, ptr noundef %59)
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %56, !llvm.loop !13

62:                                               ; preds = %56, %53, %30
  %63 = load i16, ptr %34, align 2, !tbaa !14
  %64 = lshr i16 %63, 8
  %65 = zext nneg i16 %64 to i32
  %66 = lshr i32 %65, 4
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [17 x i8], ptr @puthexbyte.nibs, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !5
  %70 = sext i8 %69 to i32
  %71 = load ptr, ptr @stdout, align 8, !tbaa !10
  %72 = tail call i32 @putc(i32 noundef %70, ptr noundef %71)
  %73 = and i32 %65, 15
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [17 x i8], ptr @puthexbyte.nibs, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = sext i8 %76 to i32
  %78 = load ptr, ptr @stdout, align 8, !tbaa !10
  %79 = tail call i32 @putc(i32 noundef %77, ptr noundef %78)
  %80 = and i16 %63, 255
  %81 = zext nneg i16 %80 to i32
  %82 = lshr i32 %81, 4
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [17 x i8], ptr @puthexbyte.nibs, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = sext i8 %85 to i32
  %87 = load ptr, ptr @stdout, align 8, !tbaa !10
  %88 = tail call i32 @putc(i32 noundef %86, ptr noundef %87)
  %89 = and i32 %81, 15
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [17 x i8], ptr @puthexbyte.nibs, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = sext i8 %92 to i32
  %94 = load ptr, ptr @stdout, align 8, !tbaa !10
  %95 = tail call i32 @putc(i32 noundef %93, ptr noundef %94)
  %96 = load ptr, ptr @stdout, align 8, !tbaa !10
  %97 = tail call i32 @putc(i32 noundef 32, ptr noundef %96)
  %98 = icmp eq i16 %35, 0
  br i1 %98, label %99, label %30, !llvm.loop !16

99:                                               ; preds = %62
  %100 = load ptr, ptr @stdout, align 8, !tbaa !10
  %101 = tail call i32 @putc(i32 noundef 10, ptr noundef %100)
  br label %102

102:                                              ; preds = %17, %99
  ret void
}

declare signext i16 @significance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @checksum(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi i16 [ %12, %4 ], [ 0, %2 ]
  %6 = phi i16 [ %8, %4 ], [ %1, %2 ]
  %7 = phi ptr [ %9, %4 ], [ %0, %2 ]
  %8 = add i16 %6, -1
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !5
  %11 = zext i8 %10 to i16
  %12 = add i16 %5, %11
  %13 = icmp eq i16 %8, 0
  br i1 %13, label %14, label %4, !llvm.loop !17

14:                                               ; preds = %4, %2
  %15 = phi i16 [ 0, %2 ], [ %12, %4 ]
  ret i16 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cbc_xor(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = zext i16 %2 to i32
  %5 = add nuw nsw i32 %4, 1
  %6 = lshr i32 %5, 1
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = shl i16 %7, 1
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i16 [ %21, %12 ], [ %8, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %1, %10 ]
  %15 = phi ptr [ %20, %12 ], [ %0, %10 ]
  %16 = getelementptr inbounds i16, ptr %14, i64 1
  %17 = load i16, ptr %14, align 2, !tbaa !14
  %18 = load i16, ptr %15, align 2, !tbaa !14
  %19 = xor i16 %18, %17
  store i16 %19, ptr %15, align 2, !tbaa !14
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = add i16 %13, -1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %12, !llvm.loop !18

23:                                               ; preds = %12
  %24 = add i16 %2, 2
  %25 = sub i16 %24, %11
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi ptr [ %0, %3 ], [ %20, %23 ]
  %28 = phi ptr [ %1, %3 ], [ %16, %23 ]
  %29 = phi i16 [ %2, %3 ], [ %25, %23 ]
  %30 = load i16, ptr %28, align 2, !tbaa !14
  %31 = zext i16 %29 to i32
  %32 = shl nuw nsw i32 %31, 3
  %33 = shl nsw i32 -1, %32
  %34 = load i16, ptr %27, align 2, !tbaa !14
  %35 = trunc i32 %33 to i16
  %36 = xor i16 %35, -1
  %37 = and i16 %30, %36
  %38 = xor i16 %37, %34
  store i16 %38, ptr %27, align 2, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hiloswap(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #4 {
  %3 = sext i16 %1 to i64
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = getelementptr inbounds i8, ptr %4, i64 -1
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %12, %7 ], [ %0, %2 ]
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = load i8, ptr %8, align 1, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %11, ptr %9, align 1, !tbaa !5
  store i8 %10, ptr %8, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %8, i64 -1
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %7, label %15, !llvm.loop !19

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @fetch_word16(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = load i8, ptr %2, align 1, !tbaa !5
  %5 = zext i8 %4 to i16
  %6 = zext i8 %3 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or disjoint i16 %7, %5
  ret i16 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local nonnull ptr @put_word16(i16 noundef zeroext %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = trunc i16 %0 to i8
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %3, ptr %4, align 1, !tbaa !5
  %5 = lshr i16 %0, 8
  %6 = trunc i16 %5 to i8
  store i8 %6, ptr %1, align 1, !tbaa !5
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @fetch_word32(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 2
  %6 = load i8, ptr %2, align 1, !tbaa !5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 3
  %9 = load i8, ptr %5, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = load i8, ptr %8, align 1, !tbaa !5
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %10, 8
  %14 = shl nuw nsw i64 %7, 16
  %15 = shl nuw nsw i64 %4, 24
  %16 = or disjoint i64 %14, %15
  %17 = or disjoint i64 %16, %12
  %18 = or disjoint i64 %17, %13
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local nonnull ptr @put_word32(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = trunc i64 %0 to i8
  %4 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %3, ptr %4, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %6, ptr %7, align 1, !tbaa !5
  %8 = lshr i64 %0, 16
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %9, ptr %10, align 1, !tbaa !5
  %11 = lshr i64 %0, 24
  %12 = trunc i64 %11 to i8
  store i8 %12, ptr %1, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %1, i64 4
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @mpi2reg(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [260 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %1, align 1, !tbaa !5
  %6 = load i8, ptr %4, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = zext i8 %5 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %7
  %11 = add nuw nsw i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = add nuw nsw i32 %12, 1
  %14 = lshr i32 %13, 1
  %15 = trunc i32 %14 to i16
  %16 = load i16, ptr @global_precision, align 2, !tbaa !14
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %56, label %19

19:                                               ; preds = %2
  %20 = trunc i32 %12 to i16
  %21 = shl nsw i32 %17, 1
  %22 = sub nsw i32 %21, %12
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %24, i1 false)
  %25 = icmp eq i16 %20, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = trunc i32 %22 to i16
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i16 [ %36, %29 ], [ %27, %26 ]
  %31 = phi ptr [ %34, %29 ], [ %28, %26 ]
  %32 = phi i16 [ %33, %29 ], [ %20, %26 ]
  %33 = add nsw i16 %32, -1
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  %35 = load i8, ptr %31, align 1, !tbaa !5
  %36 = add i16 %30, 1
  %37 = zext i16 %30 to i64
  %38 = getelementptr inbounds [260 x i8], ptr %3, i64 0, i64 %37
  store i8 %35, ptr %38, align 1, !tbaa !5
  %39 = icmp eq i16 %33, 0
  br i1 %39, label %40, label %29, !llvm.loop !20

40:                                               ; preds = %29, %19
  %41 = shl i16 %16, 1
  %42 = sext i16 %41 to i64
  %43 = getelementptr i8, ptr %3, i64 %42
  %44 = getelementptr inbounds i8, ptr %43, i64 -1
  %45 = icmp ugt ptr %44, %3
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %46
  %47 = phi ptr [ %52, %46 ], [ %44, %40 ]
  %48 = phi ptr [ %51, %46 ], [ %3, %40 ]
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = load i8, ptr %47, align 1, !tbaa !5
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %50, ptr %48, align 1, !tbaa !5
  store i8 %49, ptr %47, align 1, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %47, i64 -1
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %46, label %54, !llvm.loop !19

54:                                               ; preds = %46, %40
  %55 = sext i32 %21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %3, i64 %55, i1 false)
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext 0) #10
  br label %56

56:                                               ; preds = %2, %54
  %57 = phi i16 [ %15, %54 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #10
  ret i16 %57
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local signext i16 @reg2mpi(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [260 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #10
  %4 = tail call i32 @countbits(ptr noundef %1) #10
  %5 = and i32 %4, 65535
  %6 = add nuw nsw i32 %5, 7
  %7 = lshr i32 %6, 3
  %8 = trunc i32 %7 to i16
  %9 = load i16, ptr @global_precision, align 2, !tbaa !14
  %10 = sext i16 %9 to i32
  %11 = shl nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %1, i64 %12, i1 false)
  %13 = shl i16 %9, 1
  %14 = sext i16 %13 to i64
  %15 = getelementptr i8, ptr %3, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 -1
  %17 = icmp ugt ptr %16, %3
  br i1 %17, label %18, label %26

18:                                               ; preds = %2, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %2 ]
  %20 = phi ptr [ %23, %18 ], [ %3, %2 ]
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = load i8, ptr %19, align 1, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %22, ptr %20, align 1, !tbaa !5
  store i8 %21, ptr %19, align 1, !tbaa !5
  %24 = getelementptr inbounds i8, ptr %19, i64 -1
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %18, label %26, !llvm.loop !19

26:                                               ; preds = %18, %2
  %27 = trunc i32 %4 to i8
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !5
  %29 = lshr i32 %4, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %0, align 1, !tbaa !5
  %31 = icmp eq i16 %8, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %0, i64 2
  %34 = sub nsw i32 %11, %7
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, ptr %3, i64 %35
  %37 = and i32 %4, 65535
  %38 = add nuw nsw i32 %37, 7
  %39 = lshr i32 %38, 3
  %40 = zext nneg i32 %39 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %36, i64 %40, i1 false), !tbaa !5
  br label %41

41:                                               ; preds = %32, %26
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #10
  ret i16 %8
}

declare i32 @countbits(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}

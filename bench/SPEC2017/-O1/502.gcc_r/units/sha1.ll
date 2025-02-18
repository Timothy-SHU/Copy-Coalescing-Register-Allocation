; ModuleID = 'sha1.c'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha1_init_ctx(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 !prof !34 {
  store i32 1732584193, ptr %0, align 4, !tbaa !50
  %2 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 1
  store i32 -271733879, ptr %2, align 4, !tbaa !52
  %3 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 2
  store i32 -1732584194, ptr %3, align 4, !tbaa !53
  %4 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 3
  store i32 271733878, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 4
  store i32 -1009589776, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5, i64 1
  store i32 0, ptr %7, align 4, !tbaa !56
  store i32 0, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 6
  store i32 0, ptr %8, align 4, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sha1_read_ctx(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #6 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !50
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %7, ptr %8, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %15, ptr %16, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !55
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %19, ptr %20, align 4, !tbaa !56
  ret ptr %1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sha1_finish_ctx(ptr noundef %0, ptr noundef returned writeonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !56
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !56
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp ult i32 %4, 56
  %15 = select i1 %14, i64 16, i64 32
  %16 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %7, i32 3)
  %19 = shl i32 %18, 24
  %20 = shl i32 %18, 8
  %21 = and i32 %20, 16711680
  %22 = or disjoint i32 %21, %19
  %23 = lshr i32 %18, 8
  %24 = and i32 %23, 65280
  %25 = or disjoint i32 %22, %24
  %26 = lshr i32 %18, 24
  %27 = or disjoint i32 %25, %26
  %28 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7
  %29 = add nsw i64 %15, -2
  %30 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7, i64 %29
  store i32 %27, ptr %30, align 4, !tbaa !56
  %31 = shl i32 %7, 3
  %32 = shl i32 %7, 27
  %33 = shl i32 %7, 11
  %34 = and i32 %33, 16711680
  %35 = or disjoint i32 %34, %32
  %36 = lshr i32 %31, 8
  %37 = and i32 %36, 65280
  %38 = or disjoint i32 %35, %37
  %39 = lshr i32 %31, 24
  %40 = or disjoint i32 %38, %39
  %41 = add nsw i64 %15, -1
  %42 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7, i64 %41
  store i32 %40, ptr %42, align 4, !tbaa !56
  %43 = zext i32 %4 to i64
  %44 = getelementptr inbounds i8, ptr %28, i64 %43
  %45 = shl nuw nsw i64 %29, 2
  %46 = sub nsw i64 %45, %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr nonnull align 16 @fillbuf, i64 %46, i1 false)
  %47 = shl nuw nsw i64 %15, 2
  tail call void @sha1_process_block(ptr noundef nonnull %28, i64 noundef %47, ptr noundef %0)
  %48 = load i32, ptr %0, align 4, !tbaa !50
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  store i32 %49, ptr %1, align 4, !tbaa !56
  %50 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !52
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %52, ptr %53, align 4, !tbaa !56
  %54 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !56
  %58 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !54
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %60, ptr %61, align 4, !tbaa !56
  %62 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !55
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %64, ptr %65, align 4, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #7 !prof !34 {
  %4 = alloca [16 x i32], align 16
  %5 = lshr i64 %1, 2
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %7 = load i32, ptr %2, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !54
  %14 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = trunc i64 %1 to i32
  %19 = add i32 %17, %18
  store i32 %19, ptr %16, align 4, !tbaa !56
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 5, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !56
  br label %26

26:                                               ; preds = %22, %3
  %27 = and i64 %1, -4
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %1050

29:                                               ; preds = %26
  %30 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 1
  %31 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 2
  %32 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 3
  %33 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 4
  %34 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 5
  %35 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 6
  %36 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 7
  %37 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 8
  %38 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 9
  %39 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 10
  %40 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 11
  %41 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 12
  %42 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 13
  %43 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 14
  %44 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 15
  %45 = load i32, ptr %2, align 4, !tbaa !50
  %46 = load i32, ptr %8, align 4, !tbaa !52
  %47 = load i32, ptr %10, align 4, !tbaa !53
  %48 = load i32, ptr %12, align 4, !tbaa !54
  %49 = load i32, ptr %14, align 4, !tbaa !55
  br label %50

50:                                               ; preds = %29, %71
  %51 = phi i32 [ %49, %29 ], [ %1048, %71 ]
  %52 = phi i32 [ %48, %29 ], [ %1047, %71 ]
  %53 = phi i32 [ %47, %29 ], [ %1046, %71 ]
  %54 = phi i32 [ %46, %29 ], [ %1045, %71 ]
  %55 = phi i32 [ %45, %29 ], [ %1044, %71 ]
  %56 = phi ptr [ %0, %29 ], [ %68, %71 ]
  %57 = phi i32 [ %15, %29 ], [ %1048, %71 ]
  %58 = phi i32 [ %13, %29 ], [ %1047, %71 ]
  %59 = phi i32 [ %11, %29 ], [ %1046, %71 ]
  %60 = phi i32 [ %9, %29 ], [ %1045, %71 ]
  %61 = phi i32 [ %7, %29 ], [ %1044, %71 ]
  br label %62

62:                                               ; preds = %50, %62
  %63 = phi i64 [ 0, %50 ], [ %69, %62 ]
  %64 = phi ptr [ %56, %50 ], [ %68, %62 ]
  %65 = load i32, ptr %64, align 4, !tbaa !56
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %63
  store i32 %66, ptr %67, align 4, !tbaa !56
  %68 = getelementptr inbounds i32, ptr %64, i64 1
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %71, label %62, !llvm.loop !58

71:                                               ; preds = %62
  %72 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 5)
  %73 = xor i32 %58, %59
  %74 = and i32 %73, %60
  %75 = xor i32 %74, %58
  %76 = load i32, ptr %4, align 16, !tbaa !56
  %77 = add i32 %72, 1518500249
  %78 = add i32 %77, %57
  %79 = add i32 %78, %75
  %80 = add i32 %79, %76
  %81 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 30)
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 5)
  %83 = xor i32 %81, %59
  %84 = and i32 %83, %61
  %85 = xor i32 %84, %59
  %86 = load i32, ptr %30, align 4, !tbaa !56
  %87 = add i32 %58, 1518500249
  %88 = add i32 %87, %85
  %89 = add i32 %88, %86
  %90 = add i32 %89, %82
  %91 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 30)
  %92 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 5)
  %93 = xor i32 %81, %91
  %94 = and i32 %80, %93
  %95 = xor i32 %94, %81
  %96 = load i32, ptr %31, align 8, !tbaa !56
  %97 = add i32 %59, 1518500249
  %98 = add i32 %97, %96
  %99 = add i32 %98, %95
  %100 = add i32 %99, %92
  %101 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 30)
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 5)
  %103 = xor i32 %101, %91
  %104 = and i32 %90, %103
  %105 = xor i32 %104, %91
  %106 = load i32, ptr %32, align 4, !tbaa !56
  %107 = add i32 %81, 1518500249
  %108 = add i32 %107, %106
  %109 = add i32 %108, %105
  %110 = add i32 %109, %102
  %111 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 30)
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 5)
  %113 = xor i32 %111, %101
  %114 = and i32 %100, %113
  %115 = xor i32 %114, %101
  %116 = load i32, ptr %33, align 16, !tbaa !56
  %117 = add i32 %91, 1518500249
  %118 = add i32 %117, %116
  %119 = add i32 %118, %115
  %120 = add i32 %119, %112
  %121 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 30)
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 5)
  %123 = xor i32 %121, %111
  %124 = and i32 %110, %123
  %125 = xor i32 %124, %111
  %126 = load i32, ptr %34, align 4, !tbaa !56
  %127 = add i32 %101, 1518500249
  %128 = add i32 %127, %126
  %129 = add i32 %128, %125
  %130 = add i32 %129, %122
  %131 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 30)
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 5)
  %133 = xor i32 %131, %121
  %134 = and i32 %120, %133
  %135 = xor i32 %134, %121
  %136 = load i32, ptr %35, align 8, !tbaa !56
  %137 = add i32 %136, 1518500249
  %138 = add i32 %137, %111
  %139 = add i32 %138, %135
  %140 = add i32 %139, %132
  %141 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 30)
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 5)
  %143 = xor i32 %141, %131
  %144 = and i32 %130, %143
  %145 = xor i32 %144, %131
  %146 = load i32, ptr %36, align 4, !tbaa !56
  %147 = add i32 %146, 1518500249
  %148 = add i32 %147, %121
  %149 = add i32 %148, %145
  %150 = add i32 %149, %142
  %151 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 30)
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 5)
  %153 = xor i32 %151, %141
  %154 = and i32 %140, %153
  %155 = xor i32 %154, %141
  %156 = load i32, ptr %37, align 16, !tbaa !56
  %157 = add i32 %156, 1518500249
  %158 = add i32 %157, %131
  %159 = add i32 %158, %155
  %160 = add i32 %159, %152
  %161 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 30)
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 5)
  %163 = xor i32 %161, %151
  %164 = and i32 %150, %163
  %165 = xor i32 %164, %151
  %166 = load i32, ptr %38, align 4, !tbaa !56
  %167 = add i32 %166, 1518500249
  %168 = add i32 %167, %141
  %169 = add i32 %168, %165
  %170 = add i32 %169, %162
  %171 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 30)
  %172 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 5)
  %173 = xor i32 %171, %161
  %174 = and i32 %160, %173
  %175 = xor i32 %174, %161
  %176 = load i32, ptr %39, align 8, !tbaa !56
  %177 = add i32 %176, 1518500249
  %178 = add i32 %177, %151
  %179 = add i32 %178, %175
  %180 = add i32 %179, %172
  %181 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 30)
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 5)
  %183 = xor i32 %181, %171
  %184 = and i32 %170, %183
  %185 = xor i32 %184, %171
  %186 = load i32, ptr %40, align 4, !tbaa !56
  %187 = add i32 %186, 1518500249
  %188 = add i32 %187, %161
  %189 = add i32 %188, %185
  %190 = add i32 %189, %182
  %191 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 30)
  %192 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 5)
  %193 = xor i32 %191, %181
  %194 = and i32 %180, %193
  %195 = xor i32 %194, %181
  %196 = load i32, ptr %41, align 16, !tbaa !56
  %197 = add i32 %196, 1518500249
  %198 = add i32 %197, %171
  %199 = add i32 %198, %195
  %200 = add i32 %199, %192
  %201 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 30)
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 5)
  %203 = xor i32 %201, %191
  %204 = and i32 %190, %203
  %205 = xor i32 %204, %191
  %206 = load i32, ptr %42, align 4, !tbaa !56
  %207 = add i32 %206, 1518500249
  %208 = add i32 %207, %181
  %209 = add i32 %208, %205
  %210 = add i32 %209, %202
  %211 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 30)
  %212 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 5)
  %213 = xor i32 %211, %201
  %214 = and i32 %200, %213
  %215 = xor i32 %214, %201
  %216 = load i32, ptr %43, align 8, !tbaa !56
  %217 = add i32 %216, 1518500249
  %218 = add i32 %217, %191
  %219 = add i32 %218, %215
  %220 = add i32 %219, %212
  %221 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 30)
  %222 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 5)
  %223 = xor i32 %221, %211
  %224 = and i32 %210, %223
  %225 = xor i32 %224, %211
  %226 = load i32, ptr %44, align 4, !tbaa !56
  %227 = add i32 %226, 1518500249
  %228 = add i32 %227, %201
  %229 = add i32 %228, %225
  %230 = add i32 %229, %222
  %231 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 30)
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 5)
  %233 = xor i32 %231, %221
  %234 = and i32 %220, %233
  %235 = xor i32 %234, %221
  %236 = xor i32 %96, %76
  %237 = xor i32 %236, %156
  %238 = xor i32 %237, %206
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 1)
  store i32 %239, ptr %4, align 16, !tbaa !56
  %240 = add i32 %239, 1518500249
  %241 = add i32 %240, %211
  %242 = add i32 %241, %235
  %243 = add i32 %242, %232
  %244 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 30)
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 5)
  %246 = xor i32 %244, %231
  %247 = and i32 %230, %246
  %248 = xor i32 %247, %231
  %249 = xor i32 %106, %86
  %250 = xor i32 %249, %166
  %251 = xor i32 %250, %216
  %252 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 1)
  store i32 %252, ptr %30, align 4, !tbaa !56
  %253 = add i32 %252, 1518500249
  %254 = add i32 %253, %221
  %255 = add i32 %254, %248
  %256 = add i32 %255, %245
  %257 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 30)
  %258 = tail call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 5)
  %259 = xor i32 %257, %244
  %260 = and i32 %243, %259
  %261 = xor i32 %260, %244
  %262 = xor i32 %116, %96
  %263 = xor i32 %262, %176
  %264 = xor i32 %263, %226
  %265 = tail call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 1)
  store i32 %265, ptr %31, align 8, !tbaa !56
  %266 = add i32 %265, 1518500249
  %267 = add i32 %266, %231
  %268 = add i32 %267, %261
  %269 = add i32 %268, %258
  %270 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 30)
  %271 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 5)
  %272 = xor i32 %270, %257
  %273 = and i32 %256, %272
  %274 = xor i32 %273, %257
  %275 = xor i32 %126, %106
  %276 = xor i32 %275, %186
  %277 = xor i32 %276, %239
  %278 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 1)
  store i32 %278, ptr %32, align 4, !tbaa !56
  %279 = add i32 %278, 1518500249
  %280 = add i32 %279, %244
  %281 = add i32 %280, %274
  %282 = add i32 %281, %271
  %283 = tail call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 30)
  %284 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 5)
  %285 = xor i32 %283, %270
  %286 = xor i32 %285, %269
  %287 = xor i32 %136, %116
  %288 = xor i32 %287, %196
  %289 = xor i32 %288, %252
  %290 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 1)
  store i32 %290, ptr %33, align 16, !tbaa !56
  %291 = add i32 %290, 1859775393
  %292 = add i32 %291, %257
  %293 = add i32 %292, %286
  %294 = add i32 %293, %284
  %295 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 30)
  %296 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 5)
  %297 = xor i32 %295, %283
  %298 = xor i32 %297, %282
  %299 = xor i32 %146, %126
  %300 = xor i32 %299, %206
  %301 = xor i32 %300, %265
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 1)
  store i32 %302, ptr %34, align 4, !tbaa !56
  %303 = add i32 %302, 1859775393
  %304 = add i32 %303, %270
  %305 = add i32 %304, %298
  %306 = add i32 %305, %296
  %307 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 30)
  %308 = tail call i32 @llvm.fshl.i32(i32 %306, i32 %306, i32 5)
  %309 = xor i32 %307, %295
  %310 = xor i32 %309, %294
  %311 = xor i32 %156, %136
  %312 = xor i32 %311, %216
  %313 = xor i32 %312, %278
  %314 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 1)
  store i32 %314, ptr %35, align 8, !tbaa !56
  %315 = add i32 %314, 1859775393
  %316 = add i32 %315, %283
  %317 = add i32 %316, %310
  %318 = add i32 %317, %308
  %319 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 30)
  %320 = tail call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 5)
  %321 = xor i32 %319, %307
  %322 = xor i32 %321, %306
  %323 = xor i32 %166, %146
  %324 = xor i32 %323, %226
  %325 = xor i32 %324, %290
  %326 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 1)
  store i32 %326, ptr %36, align 4, !tbaa !56
  %327 = add i32 %326, 1859775393
  %328 = add i32 %327, %295
  %329 = add i32 %328, %322
  %330 = add i32 %329, %320
  %331 = tail call i32 @llvm.fshl.i32(i32 %306, i32 %306, i32 30)
  %332 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 5)
  %333 = xor i32 %331, %319
  %334 = xor i32 %333, %318
  %335 = xor i32 %176, %156
  %336 = xor i32 %335, %239
  %337 = xor i32 %336, %302
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 1)
  store i32 %338, ptr %37, align 16, !tbaa !56
  %339 = add i32 %338, 1859775393
  %340 = add i32 %339, %307
  %341 = add i32 %340, %334
  %342 = add i32 %341, %332
  %343 = tail call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 30)
  %344 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 5)
  %345 = xor i32 %343, %331
  %346 = xor i32 %345, %330
  %347 = xor i32 %186, %166
  %348 = xor i32 %347, %252
  %349 = xor i32 %348, %314
  %350 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 1)
  store i32 %350, ptr %38, align 4, !tbaa !56
  %351 = add i32 %350, 1859775393
  %352 = add i32 %351, %319
  %353 = add i32 %352, %346
  %354 = add i32 %353, %344
  %355 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 30)
  %356 = tail call i32 @llvm.fshl.i32(i32 %354, i32 %354, i32 5)
  %357 = xor i32 %355, %343
  %358 = xor i32 %357, %342
  %359 = xor i32 %196, %176
  %360 = xor i32 %359, %265
  %361 = xor i32 %360, %326
  %362 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 1)
  store i32 %362, ptr %39, align 8, !tbaa !56
  %363 = add i32 %362, 1859775393
  %364 = add i32 %363, %331
  %365 = add i32 %364, %358
  %366 = add i32 %365, %356
  %367 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 30)
  %368 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 5)
  %369 = xor i32 %367, %355
  %370 = xor i32 %369, %354
  %371 = xor i32 %206, %186
  %372 = xor i32 %371, %278
  %373 = xor i32 %372, %338
  %374 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 1)
  store i32 %374, ptr %40, align 4, !tbaa !56
  %375 = add i32 %374, 1859775393
  %376 = add i32 %375, %343
  %377 = add i32 %376, %370
  %378 = add i32 %377, %368
  %379 = tail call i32 @llvm.fshl.i32(i32 %354, i32 %354, i32 30)
  %380 = tail call i32 @llvm.fshl.i32(i32 %378, i32 %378, i32 5)
  %381 = xor i32 %379, %367
  %382 = xor i32 %381, %366
  %383 = xor i32 %216, %196
  %384 = xor i32 %383, %290
  %385 = xor i32 %384, %350
  %386 = tail call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 1)
  store i32 %386, ptr %41, align 16, !tbaa !56
  %387 = add i32 %386, 1859775393
  %388 = add i32 %387, %355
  %389 = add i32 %388, %382
  %390 = add i32 %389, %380
  %391 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 30)
  %392 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 5)
  %393 = xor i32 %391, %379
  %394 = xor i32 %393, %378
  %395 = xor i32 %226, %206
  %396 = xor i32 %395, %302
  %397 = xor i32 %396, %362
  %398 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 1)
  store i32 %398, ptr %42, align 4, !tbaa !56
  %399 = add i32 %398, 1859775393
  %400 = add i32 %399, %367
  %401 = add i32 %400, %394
  %402 = add i32 %401, %392
  %403 = tail call i32 @llvm.fshl.i32(i32 %378, i32 %378, i32 30)
  %404 = tail call i32 @llvm.fshl.i32(i32 %402, i32 %402, i32 5)
  %405 = xor i32 %403, %391
  %406 = xor i32 %405, %390
  %407 = xor i32 %239, %216
  %408 = xor i32 %407, %314
  %409 = xor i32 %408, %374
  %410 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 1)
  store i32 %410, ptr %43, align 8, !tbaa !56
  %411 = add i32 %410, 1859775393
  %412 = add i32 %411, %379
  %413 = add i32 %412, %406
  %414 = add i32 %413, %404
  %415 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 30)
  %416 = tail call i32 @llvm.fshl.i32(i32 %414, i32 %414, i32 5)
  %417 = xor i32 %415, %403
  %418 = xor i32 %417, %402
  %419 = xor i32 %252, %226
  %420 = xor i32 %419, %326
  %421 = xor i32 %420, %386
  %422 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 1)
  store i32 %422, ptr %44, align 4, !tbaa !56
  %423 = add i32 %422, 1859775393
  %424 = add i32 %423, %391
  %425 = add i32 %424, %418
  %426 = add i32 %425, %416
  %427 = tail call i32 @llvm.fshl.i32(i32 %402, i32 %402, i32 30)
  %428 = tail call i32 @llvm.fshl.i32(i32 %426, i32 %426, i32 5)
  %429 = xor i32 %427, %415
  %430 = xor i32 %429, %414
  %431 = xor i32 %265, %239
  %432 = xor i32 %431, %338
  %433 = xor i32 %432, %398
  %434 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 1)
  store i32 %434, ptr %4, align 16, !tbaa !56
  %435 = add i32 %434, 1859775393
  %436 = add i32 %435, %403
  %437 = add i32 %436, %430
  %438 = add i32 %437, %428
  %439 = tail call i32 @llvm.fshl.i32(i32 %414, i32 %414, i32 30)
  %440 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 5)
  %441 = xor i32 %439, %427
  %442 = xor i32 %441, %426
  %443 = xor i32 %278, %252
  %444 = xor i32 %443, %350
  %445 = xor i32 %444, %410
  %446 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 1)
  store i32 %446, ptr %30, align 4, !tbaa !56
  %447 = add i32 %446, 1859775393
  %448 = add i32 %447, %415
  %449 = add i32 %448, %442
  %450 = add i32 %449, %440
  %451 = tail call i32 @llvm.fshl.i32(i32 %426, i32 %426, i32 30)
  %452 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 5)
  %453 = xor i32 %451, %439
  %454 = xor i32 %453, %438
  %455 = xor i32 %290, %265
  %456 = xor i32 %455, %362
  %457 = xor i32 %456, %422
  %458 = tail call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 1)
  store i32 %458, ptr %31, align 8, !tbaa !56
  %459 = add i32 %458, 1859775393
  %460 = add i32 %459, %427
  %461 = add i32 %460, %454
  %462 = add i32 %461, %452
  %463 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 30)
  %464 = tail call i32 @llvm.fshl.i32(i32 %462, i32 %462, i32 5)
  %465 = xor i32 %463, %451
  %466 = xor i32 %465, %450
  %467 = xor i32 %302, %278
  %468 = xor i32 %467, %374
  %469 = xor i32 %468, %434
  %470 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 1)
  store i32 %470, ptr %32, align 4, !tbaa !56
  %471 = add i32 %470, 1859775393
  %472 = add i32 %471, %439
  %473 = add i32 %472, %466
  %474 = add i32 %473, %464
  %475 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 30)
  %476 = tail call i32 @llvm.fshl.i32(i32 %474, i32 %474, i32 5)
  %477 = xor i32 %475, %463
  %478 = xor i32 %477, %462
  %479 = xor i32 %314, %290
  %480 = xor i32 %479, %386
  %481 = xor i32 %480, %446
  %482 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 1)
  store i32 %482, ptr %33, align 16, !tbaa !56
  %483 = add i32 %482, 1859775393
  %484 = add i32 %483, %451
  %485 = add i32 %484, %478
  %486 = add i32 %485, %476
  %487 = tail call i32 @llvm.fshl.i32(i32 %462, i32 %462, i32 30)
  %488 = tail call i32 @llvm.fshl.i32(i32 %486, i32 %486, i32 5)
  %489 = xor i32 %487, %475
  %490 = xor i32 %489, %474
  %491 = xor i32 %326, %302
  %492 = xor i32 %491, %398
  %493 = xor i32 %492, %458
  %494 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 1)
  store i32 %494, ptr %34, align 4, !tbaa !56
  %495 = add i32 %494, 1859775393
  %496 = add i32 %495, %463
  %497 = add i32 %496, %490
  %498 = add i32 %497, %488
  %499 = tail call i32 @llvm.fshl.i32(i32 %474, i32 %474, i32 30)
  %500 = tail call i32 @llvm.fshl.i32(i32 %498, i32 %498, i32 5)
  %501 = xor i32 %499, %487
  %502 = xor i32 %501, %486
  %503 = xor i32 %338, %314
  %504 = xor i32 %503, %410
  %505 = xor i32 %504, %470
  %506 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 1)
  store i32 %506, ptr %35, align 8, !tbaa !56
  %507 = add i32 %506, 1859775393
  %508 = add i32 %507, %475
  %509 = add i32 %508, %502
  %510 = add i32 %509, %500
  %511 = tail call i32 @llvm.fshl.i32(i32 %486, i32 %486, i32 30)
  %512 = tail call i32 @llvm.fshl.i32(i32 %510, i32 %510, i32 5)
  %513 = xor i32 %511, %499
  %514 = xor i32 %513, %498
  %515 = xor i32 %350, %326
  %516 = xor i32 %515, %422
  %517 = xor i32 %516, %482
  %518 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 1)
  store i32 %518, ptr %36, align 4, !tbaa !56
  %519 = add i32 %518, 1859775393
  %520 = add i32 %519, %487
  %521 = add i32 %520, %514
  %522 = add i32 %521, %512
  %523 = tail call i32 @llvm.fshl.i32(i32 %498, i32 %498, i32 30)
  %524 = tail call i32 @llvm.fshl.i32(i32 %522, i32 %522, i32 5)
  %525 = and i32 %510, %523
  %526 = or i32 %510, %523
  %527 = and i32 %526, %511
  %528 = or i32 %527, %525
  %529 = xor i32 %362, %338
  %530 = xor i32 %529, %434
  %531 = xor i32 %530, %494
  %532 = tail call i32 @llvm.fshl.i32(i32 %531, i32 %531, i32 1)
  store i32 %532, ptr %37, align 16, !tbaa !56
  %533 = add i32 %532, -1894007588
  %534 = add i32 %533, %499
  %535 = add i32 %534, %528
  %536 = add i32 %535, %524
  %537 = tail call i32 @llvm.fshl.i32(i32 %510, i32 %510, i32 30)
  %538 = tail call i32 @llvm.fshl.i32(i32 %536, i32 %536, i32 5)
  %539 = and i32 %522, %537
  %540 = or i32 %522, %537
  %541 = and i32 %540, %523
  %542 = or i32 %541, %539
  %543 = xor i32 %374, %350
  %544 = xor i32 %543, %446
  %545 = xor i32 %544, %506
  %546 = tail call i32 @llvm.fshl.i32(i32 %545, i32 %545, i32 1)
  store i32 %546, ptr %38, align 4, !tbaa !56
  %547 = add i32 %546, -1894007588
  %548 = add i32 %547, %511
  %549 = add i32 %548, %542
  %550 = add i32 %549, %538
  %551 = tail call i32 @llvm.fshl.i32(i32 %522, i32 %522, i32 30)
  %552 = tail call i32 @llvm.fshl.i32(i32 %550, i32 %550, i32 5)
  %553 = and i32 %536, %551
  %554 = or i32 %536, %551
  %555 = and i32 %554, %537
  %556 = or i32 %555, %553
  %557 = xor i32 %386, %362
  %558 = xor i32 %557, %458
  %559 = xor i32 %558, %518
  %560 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 1)
  store i32 %560, ptr %39, align 8, !tbaa !56
  %561 = add i32 %560, -1894007588
  %562 = add i32 %561, %523
  %563 = add i32 %562, %556
  %564 = add i32 %563, %552
  %565 = tail call i32 @llvm.fshl.i32(i32 %536, i32 %536, i32 30)
  %566 = tail call i32 @llvm.fshl.i32(i32 %564, i32 %564, i32 5)
  %567 = and i32 %550, %565
  %568 = or i32 %550, %565
  %569 = and i32 %568, %551
  %570 = or i32 %569, %567
  %571 = xor i32 %398, %374
  %572 = xor i32 %571, %470
  %573 = xor i32 %572, %532
  %574 = tail call i32 @llvm.fshl.i32(i32 %573, i32 %573, i32 1)
  store i32 %574, ptr %40, align 4, !tbaa !56
  %575 = add i32 %574, -1894007588
  %576 = add i32 %575, %537
  %577 = add i32 %576, %570
  %578 = add i32 %577, %566
  %579 = tail call i32 @llvm.fshl.i32(i32 %550, i32 %550, i32 30)
  %580 = tail call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 5)
  %581 = and i32 %564, %579
  %582 = or i32 %564, %579
  %583 = and i32 %582, %565
  %584 = or i32 %583, %581
  %585 = xor i32 %410, %386
  %586 = xor i32 %585, %482
  %587 = xor i32 %586, %546
  %588 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 1)
  store i32 %588, ptr %41, align 16, !tbaa !56
  %589 = add i32 %588, -1894007588
  %590 = add i32 %589, %551
  %591 = add i32 %590, %584
  %592 = add i32 %591, %580
  %593 = tail call i32 @llvm.fshl.i32(i32 %564, i32 %564, i32 30)
  %594 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 5)
  %595 = and i32 %578, %593
  %596 = or i32 %578, %593
  %597 = and i32 %596, %579
  %598 = or i32 %597, %595
  %599 = xor i32 %422, %398
  %600 = xor i32 %599, %494
  %601 = xor i32 %600, %560
  %602 = tail call i32 @llvm.fshl.i32(i32 %601, i32 %601, i32 1)
  store i32 %602, ptr %42, align 4, !tbaa !56
  %603 = add i32 %602, -1894007588
  %604 = add i32 %603, %565
  %605 = add i32 %604, %598
  %606 = add i32 %605, %594
  %607 = tail call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 30)
  %608 = tail call i32 @llvm.fshl.i32(i32 %606, i32 %606, i32 5)
  %609 = and i32 %592, %607
  %610 = or i32 %592, %607
  %611 = and i32 %610, %593
  %612 = or i32 %611, %609
  %613 = xor i32 %434, %410
  %614 = xor i32 %613, %506
  %615 = xor i32 %614, %574
  %616 = tail call i32 @llvm.fshl.i32(i32 %615, i32 %615, i32 1)
  store i32 %616, ptr %43, align 8, !tbaa !56
  %617 = add i32 %616, -1894007588
  %618 = add i32 %617, %579
  %619 = add i32 %618, %612
  %620 = add i32 %619, %608
  %621 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 30)
  %622 = tail call i32 @llvm.fshl.i32(i32 %620, i32 %620, i32 5)
  %623 = and i32 %606, %621
  %624 = or i32 %606, %621
  %625 = and i32 %624, %607
  %626 = or i32 %625, %623
  %627 = xor i32 %446, %422
  %628 = xor i32 %627, %518
  %629 = xor i32 %628, %588
  %630 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 1)
  store i32 %630, ptr %44, align 4, !tbaa !56
  %631 = add i32 %630, -1894007588
  %632 = add i32 %631, %593
  %633 = add i32 %632, %626
  %634 = add i32 %633, %622
  %635 = tail call i32 @llvm.fshl.i32(i32 %606, i32 %606, i32 30)
  %636 = tail call i32 @llvm.fshl.i32(i32 %634, i32 %634, i32 5)
  %637 = and i32 %620, %635
  %638 = or i32 %620, %635
  %639 = and i32 %638, %621
  %640 = or i32 %639, %637
  %641 = xor i32 %458, %434
  %642 = xor i32 %641, %532
  %643 = xor i32 %642, %602
  %644 = tail call i32 @llvm.fshl.i32(i32 %643, i32 %643, i32 1)
  store i32 %644, ptr %4, align 16, !tbaa !56
  %645 = add i32 %644, -1894007588
  %646 = add i32 %645, %607
  %647 = add i32 %646, %640
  %648 = add i32 %647, %636
  %649 = tail call i32 @llvm.fshl.i32(i32 %620, i32 %620, i32 30)
  %650 = tail call i32 @llvm.fshl.i32(i32 %648, i32 %648, i32 5)
  %651 = and i32 %634, %649
  %652 = or i32 %634, %649
  %653 = and i32 %652, %635
  %654 = or i32 %653, %651
  %655 = xor i32 %470, %446
  %656 = xor i32 %655, %546
  %657 = xor i32 %656, %616
  %658 = tail call i32 @llvm.fshl.i32(i32 %657, i32 %657, i32 1)
  store i32 %658, ptr %30, align 4, !tbaa !56
  %659 = add i32 %658, -1894007588
  %660 = add i32 %659, %621
  %661 = add i32 %660, %654
  %662 = add i32 %661, %650
  %663 = tail call i32 @llvm.fshl.i32(i32 %634, i32 %634, i32 30)
  %664 = tail call i32 @llvm.fshl.i32(i32 %662, i32 %662, i32 5)
  %665 = and i32 %648, %663
  %666 = or i32 %648, %663
  %667 = and i32 %666, %649
  %668 = or i32 %667, %665
  %669 = xor i32 %482, %458
  %670 = xor i32 %669, %560
  %671 = xor i32 %670, %630
  %672 = tail call i32 @llvm.fshl.i32(i32 %671, i32 %671, i32 1)
  store i32 %672, ptr %31, align 8, !tbaa !56
  %673 = add i32 %672, -1894007588
  %674 = add i32 %673, %635
  %675 = add i32 %674, %668
  %676 = add i32 %675, %664
  %677 = tail call i32 @llvm.fshl.i32(i32 %648, i32 %648, i32 30)
  %678 = tail call i32 @llvm.fshl.i32(i32 %676, i32 %676, i32 5)
  %679 = and i32 %662, %677
  %680 = or i32 %662, %677
  %681 = and i32 %680, %663
  %682 = or i32 %681, %679
  %683 = xor i32 %494, %470
  %684 = xor i32 %683, %574
  %685 = xor i32 %684, %644
  %686 = tail call i32 @llvm.fshl.i32(i32 %685, i32 %685, i32 1)
  store i32 %686, ptr %32, align 4, !tbaa !56
  %687 = add i32 %686, -1894007588
  %688 = add i32 %687, %649
  %689 = add i32 %688, %682
  %690 = add i32 %689, %678
  %691 = tail call i32 @llvm.fshl.i32(i32 %662, i32 %662, i32 30)
  %692 = tail call i32 @llvm.fshl.i32(i32 %690, i32 %690, i32 5)
  %693 = and i32 %676, %691
  %694 = or i32 %676, %691
  %695 = and i32 %694, %677
  %696 = or i32 %695, %693
  %697 = xor i32 %506, %482
  %698 = xor i32 %697, %588
  %699 = xor i32 %698, %658
  %700 = tail call i32 @llvm.fshl.i32(i32 %699, i32 %699, i32 1)
  store i32 %700, ptr %33, align 16, !tbaa !56
  %701 = add i32 %700, -1894007588
  %702 = add i32 %701, %663
  %703 = add i32 %702, %696
  %704 = add i32 %703, %692
  %705 = tail call i32 @llvm.fshl.i32(i32 %676, i32 %676, i32 30)
  %706 = tail call i32 @llvm.fshl.i32(i32 %704, i32 %704, i32 5)
  %707 = and i32 %690, %705
  %708 = or i32 %690, %705
  %709 = and i32 %708, %691
  %710 = or i32 %709, %707
  %711 = xor i32 %518, %494
  %712 = xor i32 %711, %602
  %713 = xor i32 %712, %672
  %714 = tail call i32 @llvm.fshl.i32(i32 %713, i32 %713, i32 1)
  store i32 %714, ptr %34, align 4, !tbaa !56
  %715 = add i32 %714, -1894007588
  %716 = add i32 %715, %677
  %717 = add i32 %716, %710
  %718 = add i32 %717, %706
  %719 = tail call i32 @llvm.fshl.i32(i32 %690, i32 %690, i32 30)
  %720 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 5)
  %721 = and i32 %704, %719
  %722 = or i32 %704, %719
  %723 = and i32 %722, %705
  %724 = or i32 %723, %721
  %725 = xor i32 %532, %506
  %726 = xor i32 %725, %616
  %727 = xor i32 %726, %686
  %728 = tail call i32 @llvm.fshl.i32(i32 %727, i32 %727, i32 1)
  store i32 %728, ptr %35, align 8, !tbaa !56
  %729 = add i32 %728, -1894007588
  %730 = add i32 %729, %691
  %731 = add i32 %730, %724
  %732 = add i32 %731, %720
  %733 = tail call i32 @llvm.fshl.i32(i32 %704, i32 %704, i32 30)
  %734 = tail call i32 @llvm.fshl.i32(i32 %732, i32 %732, i32 5)
  %735 = and i32 %718, %733
  %736 = or i32 %718, %733
  %737 = and i32 %736, %719
  %738 = or i32 %737, %735
  %739 = xor i32 %546, %518
  %740 = xor i32 %739, %630
  %741 = xor i32 %740, %700
  %742 = tail call i32 @llvm.fshl.i32(i32 %741, i32 %741, i32 1)
  store i32 %742, ptr %36, align 4, !tbaa !56
  %743 = add i32 %742, -1894007588
  %744 = add i32 %743, %705
  %745 = add i32 %744, %738
  %746 = add i32 %745, %734
  %747 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 30)
  %748 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 5)
  %749 = and i32 %732, %747
  %750 = or i32 %732, %747
  %751 = and i32 %750, %733
  %752 = or i32 %751, %749
  %753 = xor i32 %560, %532
  %754 = xor i32 %753, %644
  %755 = xor i32 %754, %714
  %756 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 1)
  store i32 %756, ptr %37, align 16, !tbaa !56
  %757 = add i32 %756, -1894007588
  %758 = add i32 %757, %719
  %759 = add i32 %758, %752
  %760 = add i32 %759, %748
  %761 = tail call i32 @llvm.fshl.i32(i32 %732, i32 %732, i32 30)
  %762 = tail call i32 @llvm.fshl.i32(i32 %760, i32 %760, i32 5)
  %763 = and i32 %746, %761
  %764 = or i32 %746, %761
  %765 = and i32 %764, %747
  %766 = or i32 %765, %763
  %767 = xor i32 %574, %546
  %768 = xor i32 %767, %658
  %769 = xor i32 %768, %728
  %770 = tail call i32 @llvm.fshl.i32(i32 %769, i32 %769, i32 1)
  store i32 %770, ptr %38, align 4, !tbaa !56
  %771 = add i32 %770, -1894007588
  %772 = add i32 %771, %733
  %773 = add i32 %772, %766
  %774 = add i32 %773, %762
  %775 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 30)
  %776 = tail call i32 @llvm.fshl.i32(i32 %774, i32 %774, i32 5)
  %777 = and i32 %760, %775
  %778 = or i32 %760, %775
  %779 = and i32 %778, %761
  %780 = or i32 %779, %777
  %781 = xor i32 %588, %560
  %782 = xor i32 %781, %672
  %783 = xor i32 %782, %742
  %784 = tail call i32 @llvm.fshl.i32(i32 %783, i32 %783, i32 1)
  store i32 %784, ptr %39, align 8, !tbaa !56
  %785 = add i32 %784, -1894007588
  %786 = add i32 %785, %747
  %787 = add i32 %786, %780
  %788 = add i32 %787, %776
  %789 = tail call i32 @llvm.fshl.i32(i32 %760, i32 %760, i32 30)
  %790 = tail call i32 @llvm.fshl.i32(i32 %788, i32 %788, i32 5)
  %791 = and i32 %774, %789
  %792 = or i32 %774, %789
  %793 = and i32 %792, %775
  %794 = or i32 %793, %791
  %795 = xor i32 %602, %574
  %796 = xor i32 %795, %686
  %797 = xor i32 %796, %756
  %798 = tail call i32 @llvm.fshl.i32(i32 %797, i32 %797, i32 1)
  store i32 %798, ptr %40, align 4, !tbaa !56
  %799 = add i32 %798, -1894007588
  %800 = add i32 %799, %761
  %801 = add i32 %800, %794
  %802 = add i32 %801, %790
  %803 = tail call i32 @llvm.fshl.i32(i32 %774, i32 %774, i32 30)
  %804 = tail call i32 @llvm.fshl.i32(i32 %802, i32 %802, i32 5)
  %805 = xor i32 %803, %789
  %806 = xor i32 %805, %788
  %807 = xor i32 %616, %588
  %808 = xor i32 %807, %700
  %809 = xor i32 %808, %770
  %810 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 1)
  store i32 %810, ptr %41, align 16, !tbaa !56
  %811 = add i32 %810, -899497514
  %812 = add i32 %811, %775
  %813 = add i32 %812, %806
  %814 = add i32 %813, %804
  %815 = tail call i32 @llvm.fshl.i32(i32 %788, i32 %788, i32 30)
  %816 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 5)
  %817 = xor i32 %815, %803
  %818 = xor i32 %817, %802
  %819 = xor i32 %630, %602
  %820 = xor i32 %819, %714
  %821 = xor i32 %820, %784
  %822 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 1)
  store i32 %822, ptr %42, align 4, !tbaa !56
  %823 = add i32 %822, -899497514
  %824 = add i32 %823, %789
  %825 = add i32 %824, %818
  %826 = add i32 %825, %816
  %827 = tail call i32 @llvm.fshl.i32(i32 %802, i32 %802, i32 30)
  %828 = tail call i32 @llvm.fshl.i32(i32 %826, i32 %826, i32 5)
  %829 = xor i32 %827, %815
  %830 = xor i32 %829, %814
  %831 = xor i32 %644, %616
  %832 = xor i32 %831, %728
  %833 = xor i32 %832, %798
  %834 = tail call i32 @llvm.fshl.i32(i32 %833, i32 %833, i32 1)
  store i32 %834, ptr %43, align 8, !tbaa !56
  %835 = add i32 %834, -899497514
  %836 = add i32 %835, %803
  %837 = add i32 %836, %830
  %838 = add i32 %837, %828
  %839 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 30)
  %840 = tail call i32 @llvm.fshl.i32(i32 %838, i32 %838, i32 5)
  %841 = xor i32 %839, %827
  %842 = xor i32 %841, %826
  %843 = xor i32 %658, %630
  %844 = xor i32 %843, %742
  %845 = xor i32 %844, %810
  %846 = tail call i32 @llvm.fshl.i32(i32 %845, i32 %845, i32 1)
  store i32 %846, ptr %44, align 4, !tbaa !56
  %847 = add i32 %846, -899497514
  %848 = add i32 %847, %815
  %849 = add i32 %848, %842
  %850 = add i32 %849, %840
  %851 = tail call i32 @llvm.fshl.i32(i32 %826, i32 %826, i32 30)
  %852 = tail call i32 @llvm.fshl.i32(i32 %850, i32 %850, i32 5)
  %853 = xor i32 %851, %839
  %854 = xor i32 %853, %838
  %855 = xor i32 %672, %644
  %856 = xor i32 %855, %756
  %857 = xor i32 %856, %822
  %858 = tail call i32 @llvm.fshl.i32(i32 %857, i32 %857, i32 1)
  store i32 %858, ptr %4, align 16, !tbaa !56
  %859 = add i32 %858, -899497514
  %860 = add i32 %859, %827
  %861 = add i32 %860, %854
  %862 = add i32 %861, %852
  %863 = tail call i32 @llvm.fshl.i32(i32 %838, i32 %838, i32 30)
  %864 = tail call i32 @llvm.fshl.i32(i32 %862, i32 %862, i32 5)
  %865 = xor i32 %863, %851
  %866 = xor i32 %865, %850
  %867 = xor i32 %686, %658
  %868 = xor i32 %867, %770
  %869 = xor i32 %868, %834
  %870 = tail call i32 @llvm.fshl.i32(i32 %869, i32 %869, i32 1)
  store i32 %870, ptr %30, align 4, !tbaa !56
  %871 = add i32 %870, -899497514
  %872 = add i32 %871, %839
  %873 = add i32 %872, %866
  %874 = add i32 %873, %864
  %875 = tail call i32 @llvm.fshl.i32(i32 %850, i32 %850, i32 30)
  %876 = tail call i32 @llvm.fshl.i32(i32 %874, i32 %874, i32 5)
  %877 = xor i32 %875, %863
  %878 = xor i32 %877, %862
  %879 = xor i32 %700, %672
  %880 = xor i32 %879, %784
  %881 = xor i32 %880, %846
  %882 = tail call i32 @llvm.fshl.i32(i32 %881, i32 %881, i32 1)
  store i32 %882, ptr %31, align 8, !tbaa !56
  %883 = add i32 %882, -899497514
  %884 = add i32 %883, %851
  %885 = add i32 %884, %878
  %886 = add i32 %885, %876
  %887 = tail call i32 @llvm.fshl.i32(i32 %862, i32 %862, i32 30)
  %888 = tail call i32 @llvm.fshl.i32(i32 %886, i32 %886, i32 5)
  %889 = xor i32 %887, %875
  %890 = xor i32 %889, %874
  %891 = xor i32 %714, %686
  %892 = xor i32 %891, %798
  %893 = xor i32 %892, %858
  %894 = tail call i32 @llvm.fshl.i32(i32 %893, i32 %893, i32 1)
  store i32 %894, ptr %32, align 4, !tbaa !56
  %895 = add i32 %894, -899497514
  %896 = add i32 %895, %863
  %897 = add i32 %896, %890
  %898 = add i32 %897, %888
  %899 = tail call i32 @llvm.fshl.i32(i32 %874, i32 %874, i32 30)
  %900 = tail call i32 @llvm.fshl.i32(i32 %898, i32 %898, i32 5)
  %901 = xor i32 %899, %887
  %902 = xor i32 %901, %886
  %903 = xor i32 %728, %700
  %904 = xor i32 %903, %810
  %905 = xor i32 %904, %870
  %906 = tail call i32 @llvm.fshl.i32(i32 %905, i32 %905, i32 1)
  store i32 %906, ptr %33, align 16, !tbaa !56
  %907 = add i32 %906, -899497514
  %908 = add i32 %907, %875
  %909 = add i32 %908, %902
  %910 = add i32 %909, %900
  %911 = tail call i32 @llvm.fshl.i32(i32 %886, i32 %886, i32 30)
  %912 = tail call i32 @llvm.fshl.i32(i32 %910, i32 %910, i32 5)
  %913 = xor i32 %911, %899
  %914 = xor i32 %913, %898
  %915 = xor i32 %742, %714
  %916 = xor i32 %915, %822
  %917 = xor i32 %916, %882
  %918 = tail call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 1)
  store i32 %918, ptr %34, align 4, !tbaa !56
  %919 = add i32 %918, -899497514
  %920 = add i32 %919, %887
  %921 = add i32 %920, %914
  %922 = add i32 %921, %912
  %923 = tail call i32 @llvm.fshl.i32(i32 %898, i32 %898, i32 30)
  %924 = tail call i32 @llvm.fshl.i32(i32 %922, i32 %922, i32 5)
  %925 = xor i32 %923, %911
  %926 = xor i32 %925, %910
  %927 = xor i32 %756, %728
  %928 = xor i32 %927, %834
  %929 = xor i32 %928, %894
  %930 = tail call i32 @llvm.fshl.i32(i32 %929, i32 %929, i32 1)
  store i32 %930, ptr %35, align 8, !tbaa !56
  %931 = add i32 %930, -899497514
  %932 = add i32 %931, %899
  %933 = add i32 %932, %926
  %934 = add i32 %933, %924
  %935 = tail call i32 @llvm.fshl.i32(i32 %910, i32 %910, i32 30)
  %936 = tail call i32 @llvm.fshl.i32(i32 %934, i32 %934, i32 5)
  %937 = xor i32 %935, %923
  %938 = xor i32 %937, %922
  %939 = xor i32 %770, %742
  %940 = xor i32 %939, %846
  %941 = xor i32 %940, %906
  %942 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 1)
  store i32 %942, ptr %36, align 4, !tbaa !56
  %943 = add i32 %942, -899497514
  %944 = add i32 %943, %911
  %945 = add i32 %944, %938
  %946 = add i32 %945, %936
  %947 = tail call i32 @llvm.fshl.i32(i32 %922, i32 %922, i32 30)
  %948 = tail call i32 @llvm.fshl.i32(i32 %946, i32 %946, i32 5)
  %949 = xor i32 %947, %935
  %950 = xor i32 %949, %934
  %951 = xor i32 %784, %756
  %952 = xor i32 %951, %858
  %953 = xor i32 %952, %918
  %954 = tail call i32 @llvm.fshl.i32(i32 %953, i32 %953, i32 1)
  store i32 %954, ptr %37, align 16, !tbaa !56
  %955 = add i32 %954, -899497514
  %956 = add i32 %955, %923
  %957 = add i32 %956, %950
  %958 = add i32 %957, %948
  %959 = tail call i32 @llvm.fshl.i32(i32 %934, i32 %934, i32 30)
  %960 = tail call i32 @llvm.fshl.i32(i32 %958, i32 %958, i32 5)
  %961 = xor i32 %959, %947
  %962 = xor i32 %961, %946
  %963 = xor i32 %798, %770
  %964 = xor i32 %963, %870
  %965 = xor i32 %964, %930
  %966 = tail call i32 @llvm.fshl.i32(i32 %965, i32 %965, i32 1)
  store i32 %966, ptr %38, align 4, !tbaa !56
  %967 = add i32 %966, -899497514
  %968 = add i32 %967, %935
  %969 = add i32 %968, %962
  %970 = add i32 %969, %960
  %971 = tail call i32 @llvm.fshl.i32(i32 %946, i32 %946, i32 30)
  %972 = tail call i32 @llvm.fshl.i32(i32 %970, i32 %970, i32 5)
  %973 = xor i32 %971, %959
  %974 = xor i32 %973, %958
  %975 = xor i32 %810, %784
  %976 = xor i32 %975, %882
  %977 = xor i32 %976, %942
  %978 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 1)
  store i32 %978, ptr %39, align 8, !tbaa !56
  %979 = add i32 %978, -899497514
  %980 = add i32 %979, %947
  %981 = add i32 %980, %974
  %982 = add i32 %981, %972
  %983 = tail call i32 @llvm.fshl.i32(i32 %958, i32 %958, i32 30)
  %984 = tail call i32 @llvm.fshl.i32(i32 %982, i32 %982, i32 5)
  %985 = xor i32 %983, %971
  %986 = xor i32 %985, %970
  %987 = xor i32 %822, %798
  %988 = xor i32 %987, %894
  %989 = xor i32 %988, %954
  %990 = tail call i32 @llvm.fshl.i32(i32 %989, i32 %989, i32 1)
  store i32 %990, ptr %40, align 4, !tbaa !56
  %991 = add i32 %990, -899497514
  %992 = add i32 %991, %959
  %993 = add i32 %992, %986
  %994 = add i32 %993, %984
  %995 = tail call i32 @llvm.fshl.i32(i32 %970, i32 %970, i32 30)
  %996 = tail call i32 @llvm.fshl.i32(i32 %994, i32 %994, i32 5)
  %997 = xor i32 %995, %983
  %998 = xor i32 %997, %982
  %999 = xor i32 %834, %810
  %1000 = xor i32 %999, %906
  %1001 = xor i32 %1000, %966
  %1002 = tail call i32 @llvm.fshl.i32(i32 %1001, i32 %1001, i32 1)
  store i32 %1002, ptr %41, align 16, !tbaa !56
  %1003 = add i32 %1002, -899497514
  %1004 = add i32 %1003, %971
  %1005 = add i32 %1004, %998
  %1006 = add i32 %1005, %996
  %1007 = tail call i32 @llvm.fshl.i32(i32 %982, i32 %982, i32 30)
  %1008 = tail call i32 @llvm.fshl.i32(i32 %1006, i32 %1006, i32 5)
  %1009 = xor i32 %1007, %995
  %1010 = xor i32 %1009, %994
  %1011 = xor i32 %846, %822
  %1012 = xor i32 %1011, %918
  %1013 = xor i32 %1012, %978
  %1014 = tail call i32 @llvm.fshl.i32(i32 %1013, i32 %1013, i32 1)
  store i32 %1014, ptr %42, align 4, !tbaa !56
  %1015 = add i32 %1014, -899497514
  %1016 = add i32 %1015, %983
  %1017 = add i32 %1016, %1010
  %1018 = add i32 %1017, %1008
  %1019 = tail call i32 @llvm.fshl.i32(i32 %994, i32 %994, i32 30)
  %1020 = tail call i32 @llvm.fshl.i32(i32 %1018, i32 %1018, i32 5)
  %1021 = xor i32 %1019, %1007
  %1022 = xor i32 %1021, %1006
  %1023 = xor i32 %858, %834
  %1024 = xor i32 %1023, %930
  %1025 = xor i32 %1024, %990
  %1026 = tail call i32 @llvm.fshl.i32(i32 %1025, i32 %1025, i32 1)
  store i32 %1026, ptr %43, align 8, !tbaa !56
  %1027 = add i32 %1026, -899497514
  %1028 = add i32 %1027, %995
  %1029 = add i32 %1028, %1022
  %1030 = add i32 %1029, %1020
  %1031 = tail call i32 @llvm.fshl.i32(i32 %1006, i32 %1006, i32 30)
  %1032 = tail call i32 @llvm.fshl.i32(i32 %1030, i32 %1030, i32 5)
  %1033 = xor i32 %1031, %1019
  %1034 = xor i32 %1033, %1018
  %1035 = xor i32 %870, %846
  %1036 = xor i32 %1035, %942
  %1037 = xor i32 %1036, %1002
  %1038 = tail call i32 @llvm.fshl.i32(i32 %1037, i32 %1037, i32 1)
  store i32 %1038, ptr %44, align 4, !tbaa !56
  %1039 = tail call i32 @llvm.fshl.i32(i32 %1018, i32 %1018, i32 30)
  %1040 = add i32 %1038, -899497514
  %1041 = add i32 %1040, %55
  %1042 = add i32 %1041, %1007
  %1043 = add i32 %1042, %1034
  %1044 = add i32 %1043, %1032
  store i32 %1044, ptr %2, align 4, !tbaa !50
  %1045 = add i32 %1030, %54
  store i32 %1045, ptr %8, align 4, !tbaa !52
  %1046 = add i32 %1039, %53
  store i32 %1046, ptr %10, align 4, !tbaa !53
  %1047 = add i32 %1031, %52
  store i32 %1047, ptr %12, align 4, !tbaa !54
  %1048 = add i32 %1019, %51
  store i32 %1048, ptr %14, align 4, !tbaa !55
  %1049 = icmp ult ptr %68, %6
  br i1 %1049, label %50, label %1050, !llvm.loop !61

1050:                                             ; preds = %71, %26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @sha1_stream(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = alloca %struct.sha1_ctx, align 4
  %4 = alloca [4168 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %4) #14
  store i32 1732584193, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 1
  store i32 -271733879, ptr %5, align 4, !tbaa !52
  %6 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 2
  store i32 -1732584194, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 3
  store i32 271733878, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 4
  store i32 -1009589776, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 5
  %10 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 5, i64 1
  store i32 0, ptr %10, align 4, !tbaa !56
  store i32 0, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.sha1_ctx, ptr %3, i64 0, i32 6
  store i32 0, ptr %11, align 4, !tbaa !57
  br label %12

12:                                               ; preds = %28, %2
  %13 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 %13
  %15 = sub i64 4096, %13
  %16 = call i64 @fread(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0)
  %17 = add i64 %16, %13
  %18 = icmp eq i64 %17, 4096
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = call i32 @ferror(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 6, i32 1
  br label %31

25:                                               ; preds = %19
  %26 = call i32 @feof(ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %31
  %29 = phi i64 [ %17, %25 ], [ 0, %31 ]
  br label %12, !llvm.loop !62

30:                                               ; preds = %12
  call void @sha1_process_block(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull %3)
  br label %31

31:                                               ; preds = %25, %21, %30
  %32 = phi i32 [ 0, %30 ], [ %24, %21 ], [ 6, %25 ]
  switch i32 %32, label %38 [
    i32 0, label %28
    i32 6, label %33
  ]

33:                                               ; preds = %31
  %34 = icmp eq i64 %17, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @sha1_process_bytes(ptr noundef nonnull %4, i64 noundef %17, ptr noundef nonnull %3)
  br label %36

36:                                               ; preds = %35, %33
  %37 = call ptr @sha1_finish_ctx(ptr noundef nonnull %3, ptr noundef %1)
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi i32 [ 0, %36 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #14
  ret i32 %39
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !34 {
  %4 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 %1)
  %11 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %0, i64 %10, i1 false)
  %13 = load i32, ptr %4, align 4, !tbaa !57
  %14 = trunc i64 %10 to i32
  %15 = add i32 %13, %14
  store i32 %15, ptr %4, align 4, !tbaa !57
  %16 = icmp ugt i32 %15, 64
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = and i32 %15, -64
  %19 = zext i32 %18 to i64
  tail call void @sha1_process_block(ptr noundef nonnull %11, i64 noundef %19, ptr noundef %2)
  %20 = load i32, ptr %4, align 4, !tbaa !57
  %21 = and i32 %20, 63
  store i32 %21, ptr %4, align 4, !tbaa !57
  %22 = add i64 %10, %8
  %23 = and i64 %22, -64
  %24 = getelementptr inbounds i8, ptr %11, i64 %23
  %25 = zext nneg i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull align 1 %24, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %17, %7
  %27 = getelementptr inbounds i8, ptr %0, i64 %10
  %28 = sub i64 %1, %10
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i64 [ %28, %26 ], [ %1, %3 ]
  %31 = phi ptr [ %27, %26 ], [ %0, %3 ]
  %32 = icmp ugt i64 %30, 63
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i64
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = icmp eq i64 %30, 64
  br i1 %38, label %51, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %31, %39 ], [ %44, %41 ]
  %43 = phi i64 [ %30, %39 ], [ %45, %41 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 1 dereferenceable(64) %42, i64 64, i1 false)
  tail call void @sha1_process_block(ptr noundef nonnull %40, i64 noundef 64, ptr noundef %2)
  %44 = getelementptr inbounds i8, ptr %42, i64 64
  %45 = add i64 %43, -64
  %46 = icmp ugt i64 %45, 64
  br i1 %46, label %41, label %51, !llvm.loop !63

47:                                               ; preds = %33
  %48 = and i64 %30, -64
  tail call void @sha1_process_block(ptr noundef %31, i64 noundef %48, ptr noundef %2)
  %49 = getelementptr inbounds i8, ptr %31, i64 %48
  %50 = and i64 %30, 63
  br label %51

51:                                               ; preds = %41, %37, %47, %29
  %52 = phi i64 [ %50, %47 ], [ %30, %29 ], [ %30, %37 ], [ %45, %41 ]
  %53 = phi ptr [ %49, %47 ], [ %31, %29 ], [ %31, %37 ], [ %44, %41 ]
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %4, align 4, !tbaa !57
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  %59 = getelementptr inbounds i8, ptr %58, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %59, ptr align 1 %53, i64 %52, i1 false)
  %60 = add nuw nsw i64 %52, %57
  %61 = icmp ugt i64 %60, 63
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  tail call void @sha1_process_block(ptr noundef nonnull %58, i64 noundef 64, ptr noundef %2)
  %63 = add nsw i64 %60, -64
  %64 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %58, ptr nonnull align 4 %64, i64 %63, i1 false)
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi i64 [ %63, %62 ], [ %60, %55 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, ptr %4, align 4, !tbaa !57
  br label %68

68:                                               ; preds = %65, %51
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sha1_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned %2) local_unnamed_addr #12 !prof !34 {
  %4 = alloca %struct.sha1_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #14
  store i32 1732584193, ptr %4, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 1
  store i32 -271733879, ptr %5, align 4, !tbaa !52
  %6 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 2
  store i32 -1732584194, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 3
  store i32 271733878, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 4
  store i32 -1009589776, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 5
  %10 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 5, i64 1
  store i32 0, ptr %10, align 4, !tbaa !56
  store i32 0, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.sha1_ctx, ptr %4, i64 0, i32 6
  store i32 0, ptr %11, align 4, !tbaa !57
  call void @sha1_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4)
  %12 = call ptr @sha1_finish_ctx(ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #14
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!51, !41, i64 0}
!51 = !{!"sha1_ctx", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !41, i64 28, !37, i64 32}
!52 = !{!51, !41, i64 4}
!53 = !{!51, !41, i64 8}
!54 = !{!51, !41, i64 12}
!55 = !{!51, !41, i64 16}
!56 = !{!41, !41, i64 0}
!57 = !{!51, !41, i64 28}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !59, !60}

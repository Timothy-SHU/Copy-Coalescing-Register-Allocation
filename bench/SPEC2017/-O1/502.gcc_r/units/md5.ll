; ModuleID = 'md5.c'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [128 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !35

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #4 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @md5_init_ctx(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 !prof !34 {
  store i32 1732584193, ptr %0, align 4, !tbaa !53
  %2 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  store i32 -271733879, ptr %2, align 4, !tbaa !55
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  store i32 -1732584194, ptr %3, align 4, !tbaa !56
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  store i32 271733878, ptr %4, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  store i32 0, ptr %6, align 4, !tbaa !58
  store i32 0, ptr %5, align 4, !tbaa !58
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @md5_read_ctx(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !53
  store i32 %3, ptr %1, align 4, !tbaa !58
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !58
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %11, ptr %12, align 4, !tbaa !58
  ret ptr %1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_finish_ctx(ptr noundef %0, ptr noundef returned writeonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !58
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !58
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !58
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !58
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp ult i32 %4, 56
  %15 = select i1 %14, i32 56, i32 120
  %16 = sub i32 %15, %4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 16 @fillbuf, i64 %17, i1 false)
  %21 = load i32, ptr %5, align 4, !tbaa !58
  %22 = shl i32 %21, 3
  %23 = add nuw nsw i64 %17, %19
  %24 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %23
  store i32 %22, ptr %24, align 1, !tbaa !58
  %25 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !58
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %21, i32 3)
  %28 = add nuw nsw i64 %23, 4
  %29 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %28
  store i32 %27, ptr %29, align 1, !tbaa !58
  %30 = add nuw nsw i64 %23, 8
  tail call void @md5_process_block(ptr noundef nonnull %18, i64 noundef %30, ptr noundef %0)
  %31 = load i32, ptr %0, align 4, !tbaa !53
  store i32 %31, ptr %1, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !55
  %34 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %33, ptr %34, align 4, !tbaa !58
  %35 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !56
  %37 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %36, ptr %37, align 4, !tbaa !58
  %38 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !57
  %40 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %39, ptr %40, align 4, !tbaa !58
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = lshr i64 %1, 2
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %2, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !58
  %15 = trunc i64 %1 to i32
  %16 = add i32 %14, %15
  store i32 %16, ptr %13, align 4, !tbaa !58
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !58
  br label %23

23:                                               ; preds = %19, %3
  %24 = and i64 %1, -4
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %565

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %189, %26 ], [ %0, %23 ]
  %28 = phi i32 [ %559, %26 ], [ %6, %23 ]
  %29 = phi i32 [ %561, %26 ], [ %8, %23 ]
  %30 = phi i32 [ %562, %26 ], [ %10, %23 ]
  %31 = phi i32 [ %563, %26 ], [ %12, %23 ]
  %32 = xor i32 %30, %31
  %33 = and i32 %29, %32
  %34 = xor i32 %33, %31
  %35 = load i32, ptr %27, align 4, !tbaa !58
  %36 = add i32 %28, -680876936
  %37 = add i32 %36, %34
  %38 = add i32 %37, %35
  %39 = getelementptr inbounds i32, ptr %27, i64 1
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 7)
  %41 = add i32 %40, %29
  %42 = xor i32 %29, %30
  %43 = and i32 %41, %42
  %44 = xor i32 %43, %30
  %45 = load i32, ptr %39, align 4, !tbaa !58
  %46 = add i32 %31, -389564586
  %47 = add i32 %46, %45
  %48 = add i32 %47, %44
  %49 = getelementptr inbounds i32, ptr %27, i64 2
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 12)
  %51 = add i32 %50, %41
  %52 = xor i32 %41, %29
  %53 = and i32 %51, %52
  %54 = xor i32 %53, %29
  %55 = load i32, ptr %49, align 4, !tbaa !58
  %56 = add i32 %30, 606105819
  %57 = add i32 %56, %55
  %58 = add i32 %57, %54
  %59 = getelementptr inbounds i32, ptr %27, i64 3
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 17)
  %61 = add i32 %60, %51
  %62 = xor i32 %51, %41
  %63 = and i32 %61, %62
  %64 = xor i32 %63, %41
  %65 = load i32, ptr %59, align 4, !tbaa !58
  %66 = add i32 %29, -1044525330
  %67 = add i32 %66, %65
  %68 = add i32 %67, %64
  %69 = getelementptr inbounds i32, ptr %27, i64 4
  %70 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 22)
  %71 = add i32 %70, %61
  %72 = xor i32 %61, %51
  %73 = and i32 %71, %72
  %74 = xor i32 %73, %51
  %75 = load i32, ptr %69, align 4, !tbaa !58
  %76 = add i32 %75, -176418897
  %77 = add i32 %76, %41
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds i32, ptr %27, i64 5
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 7)
  %81 = add i32 %80, %71
  %82 = xor i32 %71, %61
  %83 = and i32 %81, %82
  %84 = xor i32 %83, %61
  %85 = load i32, ptr %79, align 4, !tbaa !58
  %86 = add i32 %85, 1200080426
  %87 = add i32 %86, %51
  %88 = add i32 %87, %84
  %89 = getelementptr inbounds i32, ptr %27, i64 6
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 12)
  %91 = add i32 %90, %81
  %92 = xor i32 %81, %71
  %93 = and i32 %91, %92
  %94 = xor i32 %93, %71
  %95 = load i32, ptr %89, align 4, !tbaa !58
  %96 = add i32 %95, -1473231341
  %97 = add i32 %96, %61
  %98 = add i32 %97, %94
  %99 = getelementptr inbounds i32, ptr %27, i64 7
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = add i32 %100, %91
  %102 = xor i32 %91, %81
  %103 = and i32 %101, %102
  %104 = xor i32 %103, %81
  %105 = load i32, ptr %99, align 4, !tbaa !58
  %106 = add i32 %105, -45705983
  %107 = add i32 %106, %71
  %108 = add i32 %107, %104
  %109 = getelementptr inbounds i32, ptr %27, i64 8
  %110 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 22)
  %111 = add i32 %110, %101
  %112 = xor i32 %101, %91
  %113 = and i32 %111, %112
  %114 = xor i32 %113, %91
  %115 = load i32, ptr %109, align 4, !tbaa !58
  %116 = add i32 %115, 1770035416
  %117 = add i32 %116, %81
  %118 = add i32 %117, %114
  %119 = getelementptr inbounds i32, ptr %27, i64 9
  %120 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 7)
  %121 = add i32 %120, %111
  %122 = xor i32 %111, %101
  %123 = and i32 %121, %122
  %124 = xor i32 %123, %101
  %125 = load i32, ptr %119, align 4, !tbaa !58
  %126 = add i32 %125, -1958414417
  %127 = add i32 %126, %91
  %128 = add i32 %127, %124
  %129 = getelementptr inbounds i32, ptr %27, i64 10
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 12)
  %131 = add i32 %130, %121
  %132 = xor i32 %121, %111
  %133 = and i32 %131, %132
  %134 = xor i32 %133, %111
  %135 = load i32, ptr %129, align 4, !tbaa !58
  %136 = add i32 %135, -42063
  %137 = add i32 %136, %101
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds i32, ptr %27, i64 11
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = add i32 %140, %131
  %142 = xor i32 %131, %121
  %143 = and i32 %141, %142
  %144 = xor i32 %143, %121
  %145 = load i32, ptr %139, align 4, !tbaa !58
  %146 = add i32 %145, -1990404162
  %147 = add i32 %146, %111
  %148 = add i32 %147, %144
  %149 = getelementptr inbounds i32, ptr %27, i64 12
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 22)
  %151 = add i32 %150, %141
  %152 = xor i32 %141, %131
  %153 = and i32 %151, %152
  %154 = xor i32 %153, %131
  %155 = load i32, ptr %149, align 4, !tbaa !58
  %156 = add i32 %155, 1804603682
  %157 = add i32 %156, %121
  %158 = add i32 %157, %154
  %159 = getelementptr inbounds i32, ptr %27, i64 13
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 7)
  %161 = add i32 %160, %151
  %162 = xor i32 %151, %141
  %163 = and i32 %161, %162
  %164 = xor i32 %163, %141
  %165 = load i32, ptr %159, align 4, !tbaa !58
  %166 = add i32 %165, -40341101
  %167 = add i32 %166, %131
  %168 = add i32 %167, %164
  %169 = getelementptr inbounds i32, ptr %27, i64 14
  %170 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 12)
  %171 = add i32 %170, %161
  %172 = xor i32 %161, %151
  %173 = and i32 %171, %172
  %174 = xor i32 %173, %151
  %175 = load i32, ptr %169, align 4, !tbaa !58
  %176 = add i32 %175, -1502002290
  %177 = add i32 %176, %141
  %178 = add i32 %177, %174
  %179 = getelementptr inbounds i32, ptr %27, i64 15
  %180 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 17)
  %181 = add i32 %180, %171
  %182 = xor i32 %171, %161
  %183 = and i32 %181, %182
  %184 = xor i32 %183, %161
  %185 = load i32, ptr %179, align 4, !tbaa !58
  %186 = add i32 %185, 1236535329
  %187 = add i32 %186, %151
  %188 = add i32 %187, %184
  %189 = getelementptr inbounds i32, ptr %27, i64 16
  %190 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 22)
  %191 = add i32 %190, %181
  %192 = xor i32 %191, %181
  %193 = and i32 %192, %171
  %194 = xor i32 %193, %181
  %195 = add i32 %45, -165796510
  %196 = add i32 %195, %161
  %197 = add i32 %196, %194
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 5)
  %199 = add i32 %198, %191
  %200 = xor i32 %199, %191
  %201 = and i32 %200, %181
  %202 = xor i32 %201, %191
  %203 = add i32 %95, -1069501632
  %204 = add i32 %203, %171
  %205 = add i32 %204, %202
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 9)
  %207 = add i32 %206, %199
  %208 = xor i32 %207, %199
  %209 = and i32 %208, %191
  %210 = xor i32 %209, %199
  %211 = add i32 %145, 643717713
  %212 = add i32 %211, %181
  %213 = add i32 %212, %210
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 14)
  %215 = add i32 %214, %207
  %216 = xor i32 %215, %207
  %217 = and i32 %216, %199
  %218 = xor i32 %217, %207
  %219 = add i32 %35, -373897302
  %220 = add i32 %219, %191
  %221 = add i32 %220, %218
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 20)
  %223 = add i32 %222, %215
  %224 = xor i32 %223, %215
  %225 = and i32 %224, %207
  %226 = xor i32 %225, %215
  %227 = add i32 %85, -701558691
  %228 = add i32 %227, %199
  %229 = add i32 %228, %226
  %230 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 5)
  %231 = add i32 %230, %223
  %232 = xor i32 %231, %223
  %233 = and i32 %232, %215
  %234 = xor i32 %233, %223
  %235 = add i32 %135, 38016083
  %236 = add i32 %235, %207
  %237 = add i32 %236, %234
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 9)
  %239 = add i32 %238, %231
  %240 = xor i32 %239, %231
  %241 = and i32 %240, %223
  %242 = xor i32 %241, %231
  %243 = add i32 %185, -660478335
  %244 = add i32 %243, %215
  %245 = add i32 %244, %242
  %246 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 14)
  %247 = add i32 %246, %239
  %248 = xor i32 %247, %239
  %249 = and i32 %248, %231
  %250 = xor i32 %249, %239
  %251 = add i32 %75, -405537848
  %252 = add i32 %251, %223
  %253 = add i32 %252, %250
  %254 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 20)
  %255 = add i32 %254, %247
  %256 = xor i32 %255, %247
  %257 = and i32 %256, %239
  %258 = xor i32 %257, %247
  %259 = add i32 %125, 568446438
  %260 = add i32 %259, %231
  %261 = add i32 %260, %258
  %262 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 5)
  %263 = add i32 %262, %255
  %264 = xor i32 %263, %255
  %265 = and i32 %264, %247
  %266 = xor i32 %265, %255
  %267 = add i32 %175, -1019803690
  %268 = add i32 %267, %239
  %269 = add i32 %268, %266
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 9)
  %271 = add i32 %270, %263
  %272 = xor i32 %271, %263
  %273 = and i32 %272, %255
  %274 = xor i32 %273, %263
  %275 = add i32 %65, -187363961
  %276 = add i32 %275, %247
  %277 = add i32 %276, %274
  %278 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 14)
  %279 = add i32 %278, %271
  %280 = xor i32 %279, %271
  %281 = and i32 %280, %263
  %282 = xor i32 %281, %271
  %283 = add i32 %115, 1163531501
  %284 = add i32 %283, %255
  %285 = add i32 %284, %282
  %286 = tail call i32 @llvm.fshl.i32(i32 %285, i32 %285, i32 20)
  %287 = add i32 %286, %279
  %288 = xor i32 %287, %279
  %289 = and i32 %288, %271
  %290 = xor i32 %289, %279
  %291 = add i32 %165, -1444681467
  %292 = add i32 %291, %263
  %293 = add i32 %292, %290
  %294 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 5)
  %295 = add i32 %294, %287
  %296 = xor i32 %295, %287
  %297 = and i32 %296, %279
  %298 = xor i32 %297, %287
  %299 = add i32 %55, -51403784
  %300 = add i32 %299, %271
  %301 = add i32 %300, %298
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 9)
  %303 = add i32 %302, %295
  %304 = xor i32 %303, %295
  %305 = and i32 %304, %287
  %306 = xor i32 %305, %295
  %307 = add i32 %105, 1735328473
  %308 = add i32 %307, %279
  %309 = add i32 %308, %306
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 14)
  %311 = add i32 %310, %303
  %312 = xor i32 %311, %303
  %313 = and i32 %312, %295
  %314 = xor i32 %313, %303
  %315 = add i32 %155, -1926607734
  %316 = add i32 %315, %287
  %317 = add i32 %316, %314
  %318 = tail call i32 @llvm.fshl.i32(i32 %317, i32 %317, i32 20)
  %319 = add i32 %318, %311
  %320 = xor i32 %311, %303
  %321 = xor i32 %320, %319
  %322 = add i32 %85, -378558
  %323 = add i32 %322, %295
  %324 = add i32 %323, %321
  %325 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 4)
  %326 = add i32 %325, %319
  %327 = xor i32 %319, %311
  %328 = xor i32 %327, %326
  %329 = add i32 %115, -2022574463
  %330 = add i32 %329, %303
  %331 = add i32 %330, %328
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 11)
  %333 = add i32 %332, %326
  %334 = xor i32 %326, %319
  %335 = xor i32 %334, %333
  %336 = add i32 %145, 1839030562
  %337 = add i32 %336, %311
  %338 = add i32 %337, %335
  %339 = tail call i32 @llvm.fshl.i32(i32 %338, i32 %338, i32 16)
  %340 = add i32 %339, %333
  %341 = xor i32 %333, %326
  %342 = xor i32 %341, %340
  %343 = add i32 %175, -35309556
  %344 = add i32 %343, %319
  %345 = add i32 %344, %342
  %346 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 23)
  %347 = add i32 %346, %340
  %348 = xor i32 %340, %333
  %349 = xor i32 %348, %347
  %350 = add i32 %45, -1530992060
  %351 = add i32 %350, %326
  %352 = add i32 %351, %349
  %353 = tail call i32 @llvm.fshl.i32(i32 %352, i32 %352, i32 4)
  %354 = add i32 %353, %347
  %355 = xor i32 %347, %340
  %356 = xor i32 %355, %354
  %357 = add i32 %75, 1272893353
  %358 = add i32 %357, %333
  %359 = add i32 %358, %356
  %360 = tail call i32 @llvm.fshl.i32(i32 %359, i32 %359, i32 11)
  %361 = add i32 %360, %354
  %362 = xor i32 %354, %347
  %363 = xor i32 %362, %361
  %364 = add i32 %105, -155497632
  %365 = add i32 %364, %340
  %366 = add i32 %365, %363
  %367 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 16)
  %368 = add i32 %367, %361
  %369 = xor i32 %361, %354
  %370 = xor i32 %369, %368
  %371 = add i32 %135, -1094730640
  %372 = add i32 %371, %347
  %373 = add i32 %372, %370
  %374 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 23)
  %375 = add i32 %374, %368
  %376 = xor i32 %368, %361
  %377 = xor i32 %376, %375
  %378 = add i32 %165, 681279174
  %379 = add i32 %378, %354
  %380 = add i32 %379, %377
  %381 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 4)
  %382 = add i32 %381, %375
  %383 = xor i32 %375, %368
  %384 = xor i32 %383, %382
  %385 = add i32 %35, -358537222
  %386 = add i32 %385, %361
  %387 = add i32 %386, %384
  %388 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 11)
  %389 = add i32 %388, %382
  %390 = xor i32 %382, %375
  %391 = xor i32 %390, %389
  %392 = add i32 %65, -722521979
  %393 = add i32 %392, %368
  %394 = add i32 %393, %391
  %395 = tail call i32 @llvm.fshl.i32(i32 %394, i32 %394, i32 16)
  %396 = add i32 %395, %389
  %397 = xor i32 %389, %382
  %398 = xor i32 %397, %396
  %399 = add i32 %95, 76029189
  %400 = add i32 %399, %375
  %401 = add i32 %400, %398
  %402 = tail call i32 @llvm.fshl.i32(i32 %401, i32 %401, i32 23)
  %403 = add i32 %402, %396
  %404 = xor i32 %396, %389
  %405 = xor i32 %404, %403
  %406 = add i32 %125, -640364487
  %407 = add i32 %406, %382
  %408 = add i32 %407, %405
  %409 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %408, i32 4)
  %410 = add i32 %409, %403
  %411 = xor i32 %403, %396
  %412 = xor i32 %411, %410
  %413 = add i32 %155, -421815835
  %414 = add i32 %413, %389
  %415 = add i32 %414, %412
  %416 = tail call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 11)
  %417 = add i32 %416, %410
  %418 = xor i32 %410, %403
  %419 = xor i32 %418, %417
  %420 = add i32 %185, 530742520
  %421 = add i32 %420, %396
  %422 = add i32 %421, %419
  %423 = tail call i32 @llvm.fshl.i32(i32 %422, i32 %422, i32 16)
  %424 = add i32 %423, %417
  %425 = xor i32 %417, %410
  %426 = xor i32 %425, %424
  %427 = add i32 %55, -995338651
  %428 = add i32 %427, %403
  %429 = add i32 %428, %426
  %430 = tail call i32 @llvm.fshl.i32(i32 %429, i32 %429, i32 23)
  %431 = add i32 %430, %424
  %432 = xor i32 %417, -1
  %433 = or i32 %431, %432
  %434 = xor i32 %433, %424
  %435 = add i32 %35, -198630844
  %436 = add i32 %435, %410
  %437 = add i32 %436, %434
  %438 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 6)
  %439 = add i32 %438, %431
  %440 = xor i32 %424, -1
  %441 = or i32 %439, %440
  %442 = xor i32 %441, %431
  %443 = add i32 %105, 1126891415
  %444 = add i32 %443, %417
  %445 = add i32 %444, %442
  %446 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 10)
  %447 = add i32 %446, %439
  %448 = xor i32 %431, -1
  %449 = or i32 %447, %448
  %450 = xor i32 %449, %439
  %451 = add i32 %175, -1416354905
  %452 = add i32 %451, %424
  %453 = add i32 %452, %450
  %454 = tail call i32 @llvm.fshl.i32(i32 %453, i32 %453, i32 15)
  %455 = add i32 %454, %447
  %456 = xor i32 %439, -1
  %457 = or i32 %455, %456
  %458 = xor i32 %457, %447
  %459 = add i32 %85, -57434055
  %460 = add i32 %459, %431
  %461 = add i32 %460, %458
  %462 = tail call i32 @llvm.fshl.i32(i32 %461, i32 %461, i32 21)
  %463 = add i32 %462, %455
  %464 = xor i32 %447, -1
  %465 = or i32 %463, %464
  %466 = xor i32 %465, %455
  %467 = add i32 %155, 1700485571
  %468 = add i32 %467, %439
  %469 = add i32 %468, %466
  %470 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 6)
  %471 = add i32 %470, %463
  %472 = xor i32 %455, -1
  %473 = or i32 %471, %472
  %474 = xor i32 %473, %463
  %475 = add i32 %65, -1894986606
  %476 = add i32 %475, %447
  %477 = add i32 %476, %474
  %478 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 10)
  %479 = add i32 %478, %471
  %480 = xor i32 %463, -1
  %481 = or i32 %479, %480
  %482 = xor i32 %481, %471
  %483 = add i32 %135, -1051523
  %484 = add i32 %483, %455
  %485 = add i32 %484, %482
  %486 = tail call i32 @llvm.fshl.i32(i32 %485, i32 %485, i32 15)
  %487 = add i32 %486, %479
  %488 = xor i32 %471, -1
  %489 = or i32 %487, %488
  %490 = xor i32 %489, %479
  %491 = add i32 %45, -2054922799
  %492 = add i32 %491, %463
  %493 = add i32 %492, %490
  %494 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 21)
  %495 = add i32 %494, %487
  %496 = xor i32 %479, -1
  %497 = or i32 %495, %496
  %498 = xor i32 %497, %487
  %499 = add i32 %115, 1873313359
  %500 = add i32 %499, %471
  %501 = add i32 %500, %498
  %502 = tail call i32 @llvm.fshl.i32(i32 %501, i32 %501, i32 6)
  %503 = add i32 %502, %495
  %504 = xor i32 %487, -1
  %505 = or i32 %503, %504
  %506 = xor i32 %505, %495
  %507 = add i32 %185, -30611744
  %508 = add i32 %507, %479
  %509 = add i32 %508, %506
  %510 = tail call i32 @llvm.fshl.i32(i32 %509, i32 %509, i32 10)
  %511 = add i32 %510, %503
  %512 = xor i32 %495, -1
  %513 = or i32 %511, %512
  %514 = xor i32 %513, %503
  %515 = add i32 %95, -1560198380
  %516 = add i32 %515, %487
  %517 = add i32 %516, %514
  %518 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 15)
  %519 = add i32 %518, %511
  %520 = xor i32 %503, -1
  %521 = or i32 %519, %520
  %522 = xor i32 %521, %511
  %523 = add i32 %165, 1309151649
  %524 = add i32 %523, %495
  %525 = add i32 %524, %522
  %526 = tail call i32 @llvm.fshl.i32(i32 %525, i32 %525, i32 21)
  %527 = add i32 %526, %519
  %528 = xor i32 %511, -1
  %529 = or i32 %527, %528
  %530 = xor i32 %529, %519
  %531 = add i32 %75, -145523070
  %532 = add i32 %531, %503
  %533 = add i32 %532, %530
  %534 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 6)
  %535 = add i32 %534, %527
  %536 = xor i32 %519, -1
  %537 = or i32 %535, %536
  %538 = xor i32 %537, %527
  %539 = add i32 %145, -1120210379
  %540 = add i32 %539, %511
  %541 = add i32 %540, %538
  %542 = tail call i32 @llvm.fshl.i32(i32 %541, i32 %541, i32 10)
  %543 = add i32 %542, %535
  %544 = xor i32 %527, -1
  %545 = or i32 %543, %544
  %546 = xor i32 %545, %535
  %547 = add i32 %55, 718787259
  %548 = add i32 %547, %519
  %549 = add i32 %548, %546
  %550 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 15)
  %551 = add i32 %550, %543
  %552 = xor i32 %535, -1
  %553 = or i32 %551, %552
  %554 = xor i32 %553, %543
  %555 = add i32 %125, -343485551
  %556 = add i32 %555, %527
  %557 = add i32 %556, %554
  %558 = tail call i32 @llvm.fshl.i32(i32 %557, i32 %557, i32 21)
  %559 = add i32 %535, %28
  %560 = add i32 %551, %29
  %561 = add i32 %560, %558
  %562 = add i32 %551, %30
  %563 = add i32 %543, %31
  %564 = icmp ult ptr %189, %5
  br i1 %564, label %26, label %565, !llvm.loop !60

565:                                              ; preds = %26, %23
  %566 = phi i32 [ %12, %23 ], [ %563, %26 ]
  %567 = phi i32 [ %10, %23 ], [ %562, %26 ]
  %568 = phi i32 [ %8, %23 ], [ %561, %26 ]
  %569 = phi i32 [ %6, %23 ], [ %559, %26 ]
  store i32 %569, ptr %2, align 4, !tbaa !53
  store i32 %568, ptr %7, align 4, !tbaa !55
  store i32 %567, ptr %9, align 4, !tbaa !56
  store i32 %566, ptr %11, align 4, !tbaa !57
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @md5_stream(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = alloca %struct.md5_ctx, align 4
  %4 = alloca [4168 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %4) #16
  store i32 1732584193, ptr %3, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 1
  store i32 -271733879, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 2
  store i32 -1732584194, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 3
  store i32 271733878, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 4, i64 1
  store i32 0, ptr %9, align 4, !tbaa !58
  store i32 0, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !59
  br label %11

11:                                               ; preds = %20, %2
  %12 = phi i64 [ 0, %2 ], [ %21, %20 ]
  %13 = getelementptr inbounds i8, ptr %4, i64 %12
  %14 = sub i64 4096, %12
  %15 = call i64 @fread(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0)
  %16 = add i64 %15, %12
  %17 = icmp ult i64 %16, 4096
  %18 = icmp ne i64 %15, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %11, %29
  %21 = phi i64 [ %16, %11 ], [ 0, %29 ]
  br label %11, !llvm.loop !61

22:                                               ; preds = %11
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = call i32 @ferror(ptr noundef %0)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 3, i32 1
  br label %29

28:                                               ; preds = %22
  call void @md5_process_block(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull %3)
  br label %29

29:                                               ; preds = %24, %28
  %30 = phi i32 [ 0, %28 ], [ %27, %24 ]
  switch i32 %30, label %36 [
    i32 0, label %20
    i32 3, label %31
  ]

31:                                               ; preds = %29
  %32 = icmp eq i64 %16, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  call void @md5_process_bytes(ptr noundef nonnull %4, i64 noundef %16, ptr noundef nonnull %3)
  br label %34

34:                                               ; preds = %33, %31
  %35 = call ptr @md5_finish_ctx(ptr noundef nonnull %3, ptr noundef %1)
  br label %36

36:                                               ; preds = %29, %34
  %37 = phi i32 [ 0, %34 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %3) #16
  ret i32 %37
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #14 !prof !34 {
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 %1)
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %0, i64 %10, i1 false)
  %12 = load i32, ptr %4, align 4, !tbaa !59
  %13 = trunc i64 %10 to i32
  %14 = add i32 %12, %13
  store i32 %14, ptr %4, align 4, !tbaa !59
  %15 = add i64 %10, %8
  %16 = icmp ugt i64 %15, 64
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  %19 = and i64 %15, -64
  tail call void @md5_process_block(ptr noundef nonnull %18, i64 noundef %19, ptr noundef %2)
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6, i64 %19
  %21 = and i64 %15, 63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %18, ptr nonnull align 1 %20, i64 %21, i1 false)
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %4, align 4, !tbaa !59
  br label %23

23:                                               ; preds = %17, %7
  %24 = getelementptr inbounds i8, ptr %0, i64 %10
  %25 = sub i64 %1, %10
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i64 [ %25, %23 ], [ %1, %3 ]
  %28 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %29 = icmp ugt i64 %27, 64
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i64
  %32 = and i64 %31, 3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %28, %34 ], [ %39, %36 ]
  %38 = phi i64 [ %27, %34 ], [ %40, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 1 dereferenceable(64) %37, i64 64, i1 false)
  tail call void @md5_process_block(ptr noundef nonnull %35, i64 noundef 64, ptr noundef %2)
  %39 = getelementptr inbounds i8, ptr %37, i64 64
  %40 = add i64 %38, -64
  %41 = icmp ugt i64 %40, 64
  br i1 %41, label %36, label %44, !llvm.loop !62

42:                                               ; preds = %30
  %43 = and i64 %27, -64
  tail call void @md5_process_block(ptr noundef %28, i64 noundef %43, ptr noundef %2)
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i64 [ %27, %42 ], [ %40, %36 ]
  %46 = phi ptr [ %28, %42 ], [ %39, %36 ]
  %47 = and i64 %45, -64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = and i64 %45, 63
  br label %50

50:                                               ; preds = %44, %26
  %51 = phi i64 [ %49, %44 ], [ %27, %26 ]
  %52 = phi ptr [ %48, %44 ], [ %28, %26 ]
  %53 = icmp eq i64 %51, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %55, ptr align 1 %52, i64 %51, i1 false)
  %56 = trunc i64 %51 to i32
  store i32 %56, ptr %4, align 4, !tbaa !59
  br label %57

57:                                               ; preds = %54, %50
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned %2) local_unnamed_addr #14 !prof !34 {
  %4 = alloca %struct.md5_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %4) #16
  store i32 1732584193, ptr %4, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 1
  store i32 -271733879, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 2
  store i32 -1732584194, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 3
  store i32 271733878, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 4
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 4, i64 1
  store i32 0, ptr %9, align 4, !tbaa !58
  store i32 0, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !59
  call void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4)
  %11 = call ptr @md5_finish_ctx(ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %4) #16
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!54, !44, i64 0}
!54 = !{!"md5_ctx", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !40, i64 16, !44, i64 24, !40, i64 28}
!55 = !{!54, !44, i64 4}
!56 = !{!54, !44, i64 8}
!57 = !{!54, !44, i64 12}
!58 = !{!44, !44, i64 0}
!59 = !{!54, !44, i64 24}
!60 = distinct !{!60, !36, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !36, !37}

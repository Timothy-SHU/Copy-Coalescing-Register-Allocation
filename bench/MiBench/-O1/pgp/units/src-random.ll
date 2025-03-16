; ModuleID = 'src/random.c'
source_filename = "src/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IdeaRandContext = type { [8 x i8], [52 x i16], i32, [8 x i8] }

@randSeedOpen = internal unnamed_addr global i1 false, align 1
@globalRandseedName = external global [256 x i8], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@randContext = internal global %struct.IdeaRandContext zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@cryptRandSave.savedwashed = internal unnamed_addr global i1 false, align 1
@trueRandBits = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"trueRandBits >= count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"src/random.c\00", align 1
@__PRETTY_FUNCTION__.trueRandConsume = private unnamed_addr constant [35 x i8] c"void trueRandConsume(unsigned int)\00", align 1
@trueRandPending = internal unnamed_addr global i32 0, align 4
@trueRandEvent.event1 = internal unnamed_addr global i32 0, align 4
@trueRandEvent.event2 = internal unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [182 x i8] c"\0AWe need to generate %u random bits.  This is done by measuring the\0Atime intervals between your keystrokes.  Please enter some random text\0Aon your keyboard until you hear the beep:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0D%4d \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0D   0 *\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\07 -Enough, thank you.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\07*\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cryptRandOpen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #8
  %3 = load i1, ptr @randSeedOpen, align 1
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = tail call noalias ptr @fopen(ptr noundef nonnull @globalRandseedName, ptr noundef nonnull @.str)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %5)
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @ideaCfbEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef 24) #8
  br label %11

11:                                               ; preds = %10, %7
  %12 = getelementptr inbounds i8, ptr %2, i64 16
  call void @ideaRandInit(ptr noundef nonnull @randContext, ptr noundef nonnull %2, ptr noundef nonnull %12) #8
  store i1 true, ptr @randSeedOpen, align 1
  %13 = and i64 %8, 4294967295
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 256, ptr noundef nonnull %5)
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %28, label %21

19:                                               ; preds = %11
  %20 = call i32 @fclose(ptr noundef nonnull %5)
  br label %30

21:                                               ; preds = %15, %24
  %22 = phi i32 [ %26, %24 ], [ %17, %15 ]
  br i1 %9, label %24, label %23

23:                                               ; preds = %21
  call void @ideaCfbEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef %22) #8
  br label %24

24:                                               ; preds = %23, %21
  call void @randPoolAddBytes(ptr noundef nonnull %2, i32 noundef %22) #8
  %25 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 256, ptr noundef nonnull %5)
  %26 = trunc i64 %25 to i32
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %21, !llvm.loop !5

28:                                               ; preds = %24, %15
  %29 = call i32 @fclose(ptr noundef nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  br label %30

30:                                               ; preds = %4, %1, %28, %19
  %31 = phi i32 [ -1, %19 ], [ 0, %28 ], [ 0, %1 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #8
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

declare void @ideaCfbEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ideaRandInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare void @randPoolAddBytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @cryptRandInit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  br label %3

3:                                                ; preds = %1, %8
  %4 = phi i64 [ 0, %1 ], [ %11, %8 ]
  %5 = load i32, ptr @trueRandPending, align 4, !tbaa !7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @trueRandAccum(i32 noundef 0)
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @randPoolGetByte() #8
  %10 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 %4
  store i8 %9, ptr %10, align 1, !tbaa !11
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 24
  br i1 %12, label %13, label %3, !llvm.loop !12

13:                                               ; preds = %8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @ideaCfbEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef 24) #8
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds i8, ptr %2, i64 16
  call void @ideaRandInit(ptr noundef nonnull @randContext, ptr noundef nonnull %2, ptr noundef nonnull %17) #8
  store i1 true, ptr @randSeedOpen, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @trueRandByte() local_unnamed_addr #0 {
  %1 = load i32, ptr @trueRandPending, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @trueRandAccum(i32 noundef 0)
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call zeroext i8 @randPoolGetByte() #8
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cryptRandByte() local_unnamed_addr #0 {
  %1 = load i1, ptr @randSeedOpen, align 1
  br i1 %1, label %4, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @cryptRandOpen(ptr noundef null), !range !13
  br label %4

4:                                                ; preds = %2, %0
  %5 = tail call zeroext i8 @ideaRandByte(ptr noundef nonnull @randContext) #8
  ret i8 %5
}

declare zeroext i8 @ideaRandByte(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @cryptRandWriteFile(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %1, null
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i32 [ %2, %9 ], [ %30, %29 ]
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 256)
  %14 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %16
  %17 = phi i64 [ 0, %11 ], [ %20, %16 ]
  %18 = call zeroext i8 @ideaRandByte(ptr noundef nonnull @randContext) #8
  %19 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 %17
  store i8 %18, ptr %19, align 1, !tbaa !11
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, %15
  br i1 %21, label %22, label %16, !llvm.loop !14

22:                                               ; preds = %16
  br i1 %10, label %24, label %23

23:                                               ; preds = %22
  call void @ideaCfbEncrypt(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %13) #8
  br label %24

24:                                               ; preds = %23, %22
  %25 = zext nneg i32 %13 to i64
  %26 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %25, ptr noundef nonnull %5)
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %13, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = sub i32 %12, %13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %11, !llvm.loop !15

32:                                               ; preds = %29, %24, %7
  %33 = phi i32 [ %2, %7 ], [ %30, %29 ], [ 1, %24 ]
  %34 = call i32 @fclose(ptr noundef nonnull %5)
  %35 = or i32 %34, %33
  %36 = icmp ne i32 %35, 0
  %37 = sext i1 %36 to i32
  br label %38

38:                                               ; preds = %3, %32
  %39 = phi i32 [ %37, %32 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  ret i32 %39
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cryptRandSave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @randSeedOpen, align 1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i1 true, ptr @cryptRandSave.savedwashed, align 1
  br label %8

6:                                                ; preds = %3
  %7 = load i1, ptr @cryptRandSave.savedwashed, align 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6, %5
  %9 = tail call i32 @cryptRandWriteFile(ptr noundef nonnull @globalRandseedName, ptr noundef %0, i32 noundef 408), !range !13
  br label %10

10:                                               ; preds = %6, %1, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @trueRandFlush() local_unnamed_addr #0 {
  %1 = tail call i64 @noise() #8
  tail call void @randPoolStir() #8
  tail call void @randPoolStir() #8
  tail call void @randPoolStir() #8
  tail call void @randPoolStir() #8
  ret void
}

declare i64 @noise() local_unnamed_addr #3

declare void @randPoolStir() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @trueRandConsume(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 392, ptr noundef nonnull @__PRETTY_FUNCTION__.trueRandConsume) #9
  unreachable

5:                                                ; preds = %1
  %6 = sub i32 %2, %0
  store i32 %6, ptr @trueRandBits, align 4, !tbaa !7
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @trueRandAccum(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr @trueRandPending, align 4, !tbaa !7
  %4 = add i32 %3, %0
  store i32 0, ptr @trueRandPending, align 4, !tbaa !7
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 3072)
  %6 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !16
  %10 = tail call ptr @LANG(ptr noundef nonnull @.str.4) #8
  %11 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %12 = sub i32 %5, %11
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef %10, i32 noundef %12) #10
  tail call void (...) @ttycbreak() #8
  br label %14

14:                                               ; preds = %40, %8
  %15 = load ptr, ptr @stderr, align 8, !tbaa !16
  %16 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %17 = sub i32 %5, %16
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %17) #10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !16
  %20 = call i32 @fflush(ptr noundef %19)
  %21 = call i32 (...) @getch() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %21, ptr %2, align 4, !tbaa !7
  %22 = call i64 @noise() #8
  call void @randPoolAddBytes(ptr noundef nonnull %2, i32 noundef 4) #8
  %23 = load i32, ptr %2, align 4, !tbaa !7
  %24 = load i32, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %25 = icmp eq i32 %23, %24
  %26 = load i32, ptr @trueRandEvent.event2, align 4
  %27 = icmp eq i32 %23, %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %40, label %29

29:                                               ; preds = %14
  store i32 %24, ptr @trueRandEvent.event2, align 4, !tbaa !7
  store i32 %23, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %30 = icmp eq i64 %22, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %29, %31
  %32 = phi i32 [ %35, %31 ], [ 0, %29 ]
  %33 = phi i64 [ %34, %31 ], [ %22, %29 ]
  %34 = lshr i64 %33, 1
  %35 = add nuw nsw i32 %32, 1
  %36 = icmp ult i64 %33, 2
  br i1 %36, label %37, label %31, !llvm.loop !18

37:                                               ; preds = %31, %29
  %38 = phi i32 [ 0, %29 ], [ %35, %31 ]
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 8)
  br label %40

40:                                               ; preds = %14, %37
  %41 = phi i32 [ %39, %37 ], [ 0, %14 ]
  %42 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %43 = add i32 %42, %41
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 3072)
  store i32 %44, ptr @trueRandBits, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %45 = icmp eq i32 %41, 0
  %46 = select i1 %45, i32 63, i32 46
  %47 = load ptr, ptr @stderr, align 8, !tbaa !16
  %48 = call i32 @fputc(i32 noundef %46, ptr noundef %47)
  %49 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %50 = icmp ult i32 %49, %5
  br i1 %50, label %14, label %51, !llvm.loop !19

51:                                               ; preds = %40
  %52 = load ptr, ptr @stderr, align 8, !tbaa !16
  %53 = call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %52) #10
  %54 = call ptr @LANG(ptr noundef nonnull @.str.7) #8
  %55 = load ptr, ptr @stderr, align 8, !tbaa !16
  %56 = call i32 @fputs(ptr noundef %54, ptr noundef %55) #10
  %57 = call i32 @sleep(i32 noundef 1) #8
  call void (...) @ttynorm() #8
  br label %58

58:                                               ; preds = %1, %51
  ret void
}

declare zeroext i8 @randPoolGetByte() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @trueRandEvent(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !7
  %3 = tail call i64 @noise() #8
  call void @randPoolAddBytes(ptr noundef nonnull %2, i32 noundef 4) #8
  %4 = load i32, ptr %2, align 4, !tbaa !7
  %5 = load i32, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %6 = icmp eq i32 %4, %5
  %7 = load i32, ptr @trueRandEvent.event2, align 4
  %8 = icmp eq i32 %4, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  store i32 %5, ptr @trueRandEvent.event2, align 4, !tbaa !7
  store i32 %4, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %11 = icmp eq i64 %3, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %10 ]
  %14 = phi i64 [ %15, %12 ], [ %3, %10 ]
  %15 = lshr i64 %14, 1
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp ult i64 %14, 2
  br i1 %17, label %18, label %12, !llvm.loop !18

18:                                               ; preds = %12, %10
  %19 = phi i32 [ 0, %10 ], [ %16, %12 ]
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 8)
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
  %23 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %24 = add i32 %23, %22
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 3072)
  store i32 %25, ptr @trueRandBits, align 4
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @trueRandAccumLater(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr @trueRandPending, align 4, !tbaa !7
  %3 = add i32 %2, %0
  store i32 %3, ptr @trueRandPending, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @LANG(ptr noundef) local_unnamed_addr #3

declare void @ttycbreak(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

declare i32 @getch(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

declare i32 @sleep(i32 noundef) local_unnamed_addr #3

declare void @ttynorm(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @getstring(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  tail call void (...) @ttycbreak() #8
  %5 = load ptr, ptr @stdout, align 8, !tbaa !16
  %6 = tail call i32 @fflush(ptr noundef %5)
  %7 = icmp eq i32 %2, 0
  %8 = icmp eq i32 %2, 0
  br label %9

9:                                                ; preds = %52, %3
  %10 = phi i32 [ 0, %3 ], [ %53, %52 ]
  br label %11

11:                                               ; preds = %9, %60
  %12 = load ptr, ptr @stderr, align 8, !tbaa !16
  %13 = call i32 @fflush(ptr noundef %12)
  %14 = call i32 (...) @getch() #8
  %15 = shl i32 %14, 24
  %16 = ashr exact i32 %15, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %16, ptr %4, align 4, !tbaa !7
  %17 = call i64 @noise() #8
  call void @randPoolAddBytes(ptr noundef nonnull %4, i32 noundef 4) #8
  %18 = load i32, ptr %4, align 4, !tbaa !7
  %19 = load i32, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %20 = icmp eq i32 %18, %19
  %21 = load i32, ptr @trueRandEvent.event2, align 4
  %22 = icmp eq i32 %18, %21
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %35, label %24

24:                                               ; preds = %11
  store i32 %19, ptr @trueRandEvent.event2, align 4, !tbaa !7
  store i32 %18, ptr @trueRandEvent.event1, align 4, !tbaa !7
  %25 = icmp eq i64 %17, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %30, %26 ], [ 0, %24 ]
  %28 = phi i64 [ %29, %26 ], [ %17, %24 ]
  %29 = lshr i64 %28, 1
  %30 = add nuw nsw i32 %27, 1
  %31 = icmp ult i64 %28, 2
  br i1 %31, label %32, label %26, !llvm.loop !18

32:                                               ; preds = %26, %24
  %33 = phi i32 [ 0, %24 ], [ %30, %26 ]
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 8)
  br label %35

35:                                               ; preds = %11, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %11 ]
  %37 = load i32, ptr @trueRandBits, align 4, !tbaa !7
  %38 = add i32 %37, %36
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 3072)
  store i32 %39, ptr @trueRandBits, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  switch i32 %15, label %57 [
    i32 2130706432, label %40
    i32 134217728, label %40
  ]

40:                                               ; preds = %35, %35
  %41 = icmp eq i32 %10, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %40
  br i1 %7, label %50, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr @stderr, align 8, !tbaa !16
  %45 = call i32 @putc(i32 noundef 8, ptr noundef %44)
  %46 = load ptr, ptr @stderr, align 8, !tbaa !16
  %47 = call i32 @putc(i32 noundef 32, ptr noundef %46)
  %48 = load ptr, ptr @stderr, align 8, !tbaa !16
  %49 = call i32 @putc(i32 noundef 8, ptr noundef %48)
  br label %50

50:                                               ; preds = %43, %42
  %51 = add i32 %10, -1
  br label %52

52:                                               ; preds = %50, %54, %73
  %53 = phi i32 [ %74, %73 ], [ %51, %50 ], [ 0, %54 ]
  br label %9, !llvm.loop !20

54:                                               ; preds = %40
  %55 = load ptr, ptr @stderr, align 8, !tbaa !16
  %56 = call i32 @putc(i32 noundef 7, ptr noundef %55)
  br label %52

57:                                               ; preds = %35
  %58 = icmp slt i32 %16, 32
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  switch i32 %15, label %60 [
    i32 218103808, label %63
    i32 167772160, label %63
  ]

60:                                               ; preds = %59
  %61 = load ptr, ptr @stderr, align 8, !tbaa !16
  %62 = call i32 @putc(i32 noundef 7, ptr noundef %61)
  br label %11, !llvm.loop !20

63:                                               ; preds = %59, %59, %57
  %64 = trunc i32 %14 to i8
  br i1 %8, label %68, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr @stderr, align 8, !tbaa !16
  %67 = call i32 @putc(i32 noundef %16, ptr noundef %66)
  br label %68

68:                                               ; preds = %65, %63
  switch i32 %15, label %73 [
    i32 218103808, label %69
    i32 167772160, label %81
  ]

69:                                               ; preds = %68
  br i1 %8, label %81, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr @stderr, align 8, !tbaa !16
  %72 = call i32 @putc(i32 noundef 10, ptr noundef %71)
  br label %81

73:                                               ; preds = %68
  %74 = add i32 %10, 1
  %75 = zext i32 %10 to i64
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  store i8 %64, ptr %76, align 1, !tbaa !11
  %77 = icmp ult i32 %74, %1
  br i1 %77, label %52, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr @stderr, align 8, !tbaa !16
  %80 = call i64 @fwrite(ptr nonnull @.str.8, i64 3, i64 1, ptr %79) #10
  br label %81

81:                                               ; preds = %68, %69, %70, %78
  %82 = phi i32 [ %10, %70 ], [ %10, %69 ], [ %74, %78 ], [ %10, %68 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  store i8 0, ptr %84, align 1, !tbaa !11
  call void (...) @ttynorm() #8
  ret i32 %82
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !6}
!13 = !{i32 -1, i32 1}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}

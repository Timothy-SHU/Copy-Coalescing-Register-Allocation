; ModuleID = 'src/term.c'
source_filename = "src/term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@co = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@li = external local_unnamed_addr global i32, align 4
@contextsize = external local_unnamed_addr global i32, align 4
@cbench_print = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 4
@uerasechar = external local_unnamed_addr global i32, align 4
@ukillchar = external local_unnamed_addr global i32, align 4
@oldint = internal unnamed_addr global ptr null, align 8
@oldterm = internal unnamed_addr global ptr null, align 8
@oldttin = internal unnamed_addr global ptr null, align 8
@oldttou = internal unnamed_addr global ptr null, align 8
@oldtstp = internal unnamed_addr global ptr null, align 8
@tempfile = external global [4096 x i8], align 16
@.str.5 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@outfile1 = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [27 x i8] c"Couldn't fork, try later.\0D\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @erase() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @move(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @inverse() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @normal() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @backup() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @terminit() local_unnamed_addr #1 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str) #14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #14
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr @co, align 4, !tbaa !5
  br label %6

6:                                                ; preds = %3, %0
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #14
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr @li, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, ptr @contextsize, align 4, !tbaa !5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr @li, align 4, !tbaa !5
  %17 = sdiv i32 %16, 10
  store i32 %17, ptr @contextsize, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, ptr @contextsize, align 4, !tbaa !5
  %20 = icmp sgt i32 %19, 10
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = icmp slt i32 %19, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21, %18
  %24 = phi i32 [ 10, %18 ], [ 2, %21 ]
  store i32 %24, ptr @contextsize, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, ptr @li, align 4, !tbaa !5
  %27 = load i32, ptr @contextsize, align 4
  %28 = add nsw i32 %27, 8
  %29 = icmp slt i32 %26, %28
  %30 = icmp sgt i32 %27, 2
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = tail call i32 @llvm.smax.i32(i32 %26, i32 10)
  %34 = add nsw i32 %33, -8
  store i32 %34, ptr @contextsize, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = icmp slt i32 %26, 10
  %37 = load i32, ptr @cbench_print, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr @stderr, align 8, !tbaa !9
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef 10) #15
  br label %43

43:                                               ; preds = %40, %35
  %44 = tail call i32 @isatty(i32 noundef 0) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !9
  %51 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 41, i64 1, ptr %50) #15
  br label %52

52:                                               ; preds = %49, %46
  tail call void @exit(i32 noundef 1) #16
  unreachable

53:                                               ; preds = %43
  %54 = tail call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @osbuf) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @sbuf, ptr noundef nonnull align 4 dereferenceable(60) @osbuf, i64 60, i1 false), !tbaa.struct !11
  %55 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !13
  %56 = and i32 %55, -107
  store i32 %56, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !13
  %57 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 1), align 4, !tbaa !15
  %58 = and i32 %57, -2
  store i32 %58, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 1), align 4, !tbaa !15
  %59 = load i32, ptr @sbuf, align 4, !tbaa !16
  %60 = and i32 %59, -449
  store i32 %60, ptr @sbuf, align 4, !tbaa !16
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 6), align 1, !tbaa !12
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 5), align 2, !tbaa !12
  %61 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #14
  %62 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 2), align 1, !tbaa !12
  %63 = zext i8 %62 to i32
  store i32 %63, ptr @uerasechar, align 4, !tbaa !5
  %64 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 3), align 4, !tbaa !12
  %65 = zext i8 %64 to i32
  store i32 %65, ptr @ukillchar, align 4, !tbaa !5
  %66 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  store ptr %66, ptr @oldint, align 8, !tbaa !9
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %53
  %69 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #14
  br label %70

70:                                               ; preds = %68, %53
  %71 = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  store ptr %71, ptr @oldterm, align 8, !tbaa !9
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #14
  br label %75

75:                                               ; preds = %73, %70
  %76 = tail call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  store ptr %76, ptr @oldttin, align 8, !tbaa !9
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #14
  br label %80

80:                                               ; preds = %78, %75
  %81 = tail call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  store ptr %81, ptr @oldttou, align 8, !tbaa !9
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #14
  br label %85

85:                                               ; preds = %83, %80
  %86 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  store ptr %86, ptr @oldtstp, align 8, !tbaa !9
  %87 = icmp eq ptr %86, inttoptr (i64 1 to ptr)
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #14
  br label %90

90:                                               ; preds = %88, %85
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @done(i32 %0) #7 {
  %2 = load i8, ptr @tempfile, align 16, !tbaa !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @unlink(ptr noundef nonnull @tempfile) #14
  br label %6

6:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @onstop(i32 noundef %0) #1 {
  %2 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #14
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #14
  %4 = tail call i32 @kill(i32 noundef 0, i32 noundef %0) #14
  %5 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull @onstop) #14
  %6 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @stop() local_unnamed_addr #1 {
  %1 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #14
  %2 = tail call ptr @signal(i32 noundef 20, ptr noundef null) #14
  %3 = tail call i32 @kill(i32 noundef 0, i32 noundef 20) #14
  %4 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #14
  %5 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @shellescape(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [100 x ptr], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = load i8, ptr %0, align 1, !tbaa !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1, %24
  %7 = phi i64 [ %15, %24 ], [ 0, %1 ]
  %8 = phi ptr [ %25, %24 ], [ %0, %1 ]
  br label %9

9:                                                ; preds = %6, %12
  %10 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %11 = load i8, ptr %10, align 1, !tbaa !12
  switch i8 %11, label %14 [
    i8 32, label %12
    i8 9, label %12
    i8 0, label %28
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  br label %9, !llvm.loop !17

14:                                               ; preds = %9
  %15 = add nuw i64 %7, 1
  %16 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %7
  store ptr %10, ptr %16, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %20, %14
  %18 = phi ptr [ %10, %14 ], [ %21, %20 ]
  %19 = load i8, ptr %18, align 1, !tbaa !12
  switch i8 %19, label %20 [
    i8 0, label %24
    i8 9, label %22
    i8 32, label %22
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  br label %17, !llvm.loop !19

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 0, ptr %18, align 1, !tbaa !12
  br label %24

24:                                               ; preds = %17, %22
  %25 = phi ptr [ %23, %22 ], [ %18, %17 ]
  %26 = load i8, ptr %25, align 1, !tbaa !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !llvm.loop !20

28:                                               ; preds = %24, %9, %1
  %29 = phi i64 [ 0, %1 ], [ %7, %9 ], [ %15, %24 ]
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !9
  %32 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #14
  %33 = load ptr, ptr @oldint, align 8, !tbaa !9
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef %33) #14
  %35 = load ptr, ptr @oldterm, align 8, !tbaa !9
  %36 = tail call ptr @signal(i32 noundef 15, ptr noundef %35) #14
  %37 = load ptr, ptr @oldttin, align 8, !tbaa !9
  %38 = tail call ptr @signal(i32 noundef 21, ptr noundef %37) #14
  %39 = load ptr, ptr @oldttou, align 8, !tbaa !9
  %40 = tail call ptr @signal(i32 noundef 22, ptr noundef %39) #14
  %41 = load ptr, ptr @oldtstp, align 8, !tbaa !9
  %42 = tail call ptr @signal(i32 noundef 20, ptr noundef %41) #14
  %43 = tail call i32 @fork() #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load ptr, ptr %2, align 16, !tbaa !9
  %47 = call i32 @execvp(ptr noundef %46, ptr noundef nonnull %2) #14
  call void @_exit(i32 noundef 123) #16
  unreachable

48:                                               ; preds = %28
  %49 = icmp sgt i32 %43, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %48, %50
  %51 = call i32 (ptr, ...) @wait(ptr noundef nonnull %3) #14
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %53, label %50, !llvm.loop !21

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4, !tbaa !5
  %55 = icmp ne i32 %54, 31488
  %56 = sext i1 %55 to i32
  br label %59

57:                                               ; preds = %48
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi i32 [ -1, %57 ], [ %56, %53 ]
  store i32 %60, ptr %3, align 4, !tbaa !5
  %61 = load ptr, ptr @oldint, align 8, !tbaa !9
  %62 = icmp eq ptr %61, inttoptr (i64 1 to ptr)
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #14
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr @oldterm, align 8, !tbaa !9
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #14
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr @oldttin, align 8, !tbaa !9
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #14
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr @oldttou, align 8, !tbaa !9
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #14
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr @oldtstp, align 8, !tbaa !9
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #14
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #14
  %87 = load i32, ptr %3, align 4, !tbaa !5
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  %91 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %92 = call i32 @fflush(ptr noundef %91)
  br label %93

93:                                               ; preds = %93, %89
  %94 = load ptr, ptr @stdin, align 8, !tbaa !9
  %95 = call i32 @getc(ptr noundef %94)
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %93, !llvm.loop !22

97:                                               ; preds = %93, %85
  %98 = load i32, ptr %3, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %2) #14
  ret i32 %98
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

declare i32 @wait(...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 1, !12, i64 17, i64 32, !12, i64 52, i64 4, !5, i64 56, i64 4, !5}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 12}
!14 = !{!"termios", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 17, !6, i64 52, !6, i64 56}
!15 = !{!14, !6, i64 4}
!16 = !{!14, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}

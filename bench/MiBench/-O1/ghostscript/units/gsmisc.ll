; ModuleID = 'gsmisc.c'
source_filename = "gsmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_sincos_s = type { double, double }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@gs_debug = dso_local local_unnamed_addr global [128 x i8] zeroinitializer, align 16
@gs_stderr = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Returning error %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s(%d): Returning error %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gsmisc.c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"0x%lx:\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@gs_stdout = dso_local local_unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"[~]sqrt(%g) at %s:%d\0A\00", align 1
@isincos = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 0, i32 -1, i32 0], align 16
@gs_stdin = dso_local local_unnamed_addr global ptr null, align 8
@gs_debug_out = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @eprintf_program_name(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @lprintf_file_and_line(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gs_log_error(i32 noundef returned %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 35), align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  br i1 %7, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %0)
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %0)
  br label %13

13:                                               ; preds = %9, %11, %3
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gs_return_check_interrupt(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noundef ptr @gs_realloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noalias ptr @malloc(i64 noundef %2) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %6, %5 ], [ null, %3 ]
  %10 = icmp eq ptr %0, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %9, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.umin.i64(i64 %1, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr nonnull align 1 %0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %13, %11
  tail call void @free(ptr noundef %0) #14
  br label %16

16:                                               ; preds = %8, %15, %5
  %17 = phi ptr [ null, %5 ], [ %9, %15 ], [ %9, %8 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug_dump_bytes(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult ptr %0, %1
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull %2)
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %32, label %12

12:                                               ; preds = %10, %28
  %13 = phi ptr [ %23, %28 ], [ %0, %10 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 16
  %15 = icmp ult ptr %14, %1
  %16 = select i1 %15, ptr %14, ptr %1
  %17 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %18 = ptrtoint ptr %13 to i64
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, i64 noundef %18)
  br label %20

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %13, %12 ], [ %23, %20 ]
  %22 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %21, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %25)
  %27 = icmp eq ptr %23, %16
  br i1 %27, label %28, label %20, !llvm.loop !10

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  %31 = icmp eq ptr %23, %1
  br i1 %31, label %32, label %12, !llvm.loop !12

32:                                               ; preds = %28, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug_dump_bitmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  %8 = icmp ne i32 %1, 0
  %9 = icmp eq i32 %1, 0
  br label %10

10:                                               ; preds = %6, %42
  %11 = phi ptr [ %0, %6 ], [ %13, %42 ]
  %12 = phi i32 [ 0, %6 ], [ %43, %42 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 %7
  %14 = icmp eq i32 %12, 0
  %15 = select i1 %14, ptr %3, ptr null
  %16 = icmp ne ptr %15, null
  %17 = and i1 %8, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef nonnull %15)
  br label %21

21:                                               ; preds = %18, %10
  br i1 %9, label %42, label %22

22:                                               ; preds = %21, %38
  %23 = phi ptr [ %33, %38 ], [ %11, %21 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = icmp ult ptr %24, %13
  %26 = select i1 %25, ptr %24, ptr %13
  %27 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %28 = ptrtoint ptr %23 to i64
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.6, i64 noundef %28)
  br label %30

30:                                               ; preds = %30, %22
  %31 = phi ptr [ %23, %22 ], [ %33, %30 ]
  %32 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i8, ptr %31, align 1, !tbaa !5
  %35 = zext i8 %34 to i32
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %35)
  %37 = icmp eq ptr %33, %26
  br i1 %37, label %38, label %30, !llvm.loop !10

38:                                               ; preds = %30
  %39 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  %41 = icmp eq ptr %33, %13
  br i1 %41, label %42, label %22, !llvm.loop !12

42:                                               ; preds = %38, %21
  %43 = add nuw i32 %12, 1
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %45, label %10, !llvm.loop !13

45:                                               ; preds = %42, %4
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug_print_string(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %9 = getelementptr inbounds i8, ptr %0, i64 %7
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @fputc(i32 %11, ptr %8)
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !14

15:                                               ; preds = %6, %2
  %16 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %17 = tail call i32 @fflush(ptr noundef %16)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @imod(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %0, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = urem i32 %0, %1
  br label %13

8:                                                ; preds = %4
  %9 = srem i32 %0, %1
  %10 = icmp eq i32 %9, 0
  %11 = add nsw i32 %9, %1
  %12 = select i1 %10, i32 0, i32 %11
  br label %13

13:                                               ; preds = %2, %8, %6
  %14 = phi i32 [ %7, %6 ], [ %12, %8 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @igcd(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = icmp ne i32 %0, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %2, %16
  %9 = phi i32 [ %18, %16 ], [ %4, %2 ]
  %10 = phi i32 [ %17, %16 ], [ %3, %2 ]
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = urem i32 %10, %9
  br label %16

14:                                               ; preds = %8
  %15 = urem i32 %9, %10
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %10, %14 ]
  %18 = phi i32 [ %9, %12 ], [ %15, %14 ]
  %19 = icmp ne i32 %17, 0
  %20 = icmp ne i32 %18, 0
  %21 = and i1 %19, %20
  br i1 %21, label %8, label %22, !llvm.loop !15

22:                                               ; preds = %16, %2
  %23 = phi i32 [ %3, %2 ], [ %17, %16 ]
  %24 = phi i32 [ %4, %2 ], [ %18, %16 ]
  %25 = add nuw nsw i32 %24, %23
  ret i32 %25
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @set_fmul2fixed_(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %1, 8
  %5 = and i64 %4, 32767
  %6 = or disjoint i64 %5, 32768
  %7 = lshr i64 %2, 8
  %8 = and i64 %7, 32767
  %9 = or disjoint i64 %8, 32768
  %10 = trunc i64 %1 to i32
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 32640
  %13 = trunc i64 %2 to i32
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 32640
  %16 = add nuw nsw i32 %15, %12
  %17 = lshr exact i32 %16, 7
  %18 = add nsw i32 %17, -272
  %19 = sub nsw i32 272, %17
  %20 = and i64 %2, 255
  %21 = mul nuw nsw i64 %6, %20
  %22 = mul nuw nsw i64 %9, %6
  %23 = and i64 %1, 255
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = mul nuw nsw i64 %9, %23
  %27 = mul nuw nsw i64 %20, %23
  %28 = lshr i64 %27, 8
  %29 = add nuw nsw i64 %28, %21
  %30 = add nuw nsw i64 %29, %26
  br label %31

31:                                               ; preds = %3, %25
  %32 = phi i64 [ %30, %25 ], [ %21, %3 ]
  %33 = lshr i64 %32, 8
  %34 = add nuw nsw i64 %33, %22
  %35 = icmp ult i32 %19, 64
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = zext nneg i32 %19 to i64
  %38 = lshr i64 %34, %37
  br label %58

39:                                               ; preds = %31
  %40 = icmp ult i32 %16, 26752
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store i64 0, ptr %0, align 8, !tbaa !16
  br label %64

42:                                               ; preds = %39
  %43 = icmp ult i32 %16, 43008
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = sub nsw i32 335, %17
  %46 = zext nneg i32 %45 to i64
  %47 = lshr i64 %34, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44, %42
  %50 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 35), align 1, !tbaa !5
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @gs_stderr, align 8, !tbaa !8
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 296, i32 noundef -13)
  br label %64

55:                                               ; preds = %44
  %56 = zext nneg i32 %18 to i64
  %57 = shl nuw nsw i64 %34, %56
  br label %58

58:                                               ; preds = %55, %36
  %59 = phi i64 [ %38, %36 ], [ %57, %55 ]
  %60 = xor i64 %2, %1
  %61 = icmp slt i64 %60, 0
  %62 = sub i64 0, %59
  %63 = select i1 %61, i64 %62, i64 %59
  store i64 %63, ptr %0, align 8, !tbaa !16
  br label %64

64:                                               ; preds = %52, %49, %58, %41
  %65 = phi i32 [ 0, %58 ], [ 0, %41 ], [ -13, %49 ], [ -13, %52 ]
  ret i32 %65
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @set_dfmul2fixed_(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = and i64 %3, 3221225472
  %6 = shl i64 %3, 3
  %7 = and i64 %6, 1073741816
  %8 = lshr i64 %1, 29
  %9 = add nuw nsw i64 %5, %8
  %10 = add nuw nsw i64 %9, %7
  %11 = tail call i32 @set_fmul2fixed_(ptr noundef %0, i64 noundef %10, i64 noundef %2)
  ret i32 %11
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gs_sqrt(double noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 126), align 2, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @gs_stdout, align 8, !tbaa !8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.9, double noundef %0, ptr noundef %1, i32 noundef %2)
  %9 = load ptr, ptr @gs_stdout, align 8, !tbaa !8
  %10 = tail call i32 @fflush(ptr noundef %9)
  br label %11

11:                                               ; preds = %6, %3
  %12 = tail call double @sqrt(double noundef %0) #14
  ret double %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gs_sin_degrees(double noundef %0) local_unnamed_addr #9 {
  %2 = fdiv double %0, 9.000000e+01
  %3 = tail call double @llvm.floor.f64(double %2)
  %4 = fcmp oeq double %3, %2
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call double @fmod(double noundef %2, double noundef 4.000000e+00) #14
  %7 = fptosi double %6 to i32
  %8 = and i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [5 x i32], ptr @isincos, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = sitofp i32 %11 to double
  br label %16

13:                                               ; preds = %1
  %14 = fmul double %0, 0x3F91DF46A2529D39
  %15 = tail call double @sin(double noundef %14) #14
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi double [ %12, %5 ], [ %15, %13 ]
  ret double %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gs_cos_degrees(double noundef %0) local_unnamed_addr #9 {
  %2 = fdiv double %0, 9.000000e+01
  %3 = tail call double @llvm.floor.f64(double %2)
  %4 = fcmp oeq double %3, %2
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = tail call double @fmod(double noundef %2, double noundef 4.000000e+00) #14
  %7 = fptosi double %6 to i32
  %8 = and i32 %7, 3
  %9 = add nuw nsw i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], ptr @isincos, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = sitofp i32 %12 to double
  br label %17

14:                                               ; preds = %1
  %15 = fmul double %0, 0x3F91DF46A2529D39
  %16 = tail call double @cos(double noundef %15) #14
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi double [ %13, %5 ], [ %16, %14 ]
  ret double %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @gs_sincos_degrees(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = fdiv double %0, 9.000000e+01
  %4 = tail call double @llvm.floor.f64(double %3)
  %5 = fcmp oeq double %4, %3
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = tail call double @fmod(double noundef %3, double noundef 4.000000e+00) #14
  %8 = fptosi double %7 to i32
  %9 = and i32 %8, 3
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], ptr @isincos, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = sitofp i32 %12 to double
  store double %13, ptr %1, align 8, !tbaa !20
  %14 = add nuw nsw i32 %9, 1
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], ptr @isincos, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !18
  %18 = sitofp i32 %17 to double
  br label %24

19:                                               ; preds = %2
  %20 = fmul double %0, 0x3F91DF46A2529D39
  %21 = tail call double @sin(double noundef %20) #14
  store double %21, ptr %1, align 8, !tbaa !20
  %22 = fmul double %0, 0x3F91DF46A2529D39
  %23 = tail call double @cos(double noundef %22) #14
  br label %24

24:                                               ; preds = %19, %6
  %25 = phi double [ %23, %19 ], [ %18, %6 ]
  %26 = getelementptr inbounds %struct.gs_sincos_s, ptr %1, i64 0, i32 1
  store double %25, ptr %26, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !6, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"gs_sincos_s", !22, i64 0, !22, i64 8}
!22 = !{!"double", !6, i64 0}
!23 = !{!21, !22, i64 8}

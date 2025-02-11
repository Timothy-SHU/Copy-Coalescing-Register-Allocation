; ModuleID = 'decContext.c'
source_filename = "decContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }

@DECSTICKYTAB = dso_local local_unnamed_addr constant [10 x i8] c"\01\01\02\03\04\06\06\07\08\09", align 1
@DECPOWERS = dso_local local_unnamed_addr constant [10 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000, i32 1000000000], align 16
@.str = private unnamed_addr constant [18 x i8] c"Conversion syntax\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Division by zero\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Division impossible\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Division undefined\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Inexact\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Insufficient storage\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Invalid context\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid operation\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Clamped\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Rounded\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Subnormal\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Underflow\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"No status\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Multiple status\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decContextClearStatus(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decContextDefault(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #1 {
  store <4 x i32> <i32 9, i32 999999999, i32 -999999999, i32 2>, ptr %0, align 4, !tbaa !10
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 4
  store i32 8927, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 6
  store i8 0, ptr %5, align 4, !tbaa !12
  %6 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 27)
  switch i32 %6, label %10 [
    i32 0, label %12
    i32 1, label %7
    i32 2, label %8
    i32 4, label %9
  ]

7:                                                ; preds = %2
  store <4 x i32> <i32 7, i32 96, i32 -95, i32 3>, ptr %0, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !11
  store i8 1, ptr %5, align 4, !tbaa !12
  br label %12

8:                                                ; preds = %2
  store <4 x i32> <i32 16, i32 384, i32 -383, i32 3>, ptr %0, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !11
  store i8 1, ptr %5, align 4, !tbaa !12
  br label %12

9:                                                ; preds = %2
  store <4 x i32> <i32 34, i32 6144, i32 -6143, i32 3>, ptr %0, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !11
  store i8 1, ptr %5, align 4, !tbaa !12
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @decContextSetStatus(ptr noundef nonnull %0, i32 noundef 128) #9
  br label %12

12:                                               ; preds = %10, %9, %8, %7, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decContextSetStatus(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = and i32 %7, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @raise(i32 noundef 8) #10
  br label %12

12:                                               ; preds = %10, %2
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decContextGetRounding(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decContextGetStatus(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decContextRestoreStatus(ptr noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = xor i32 %2, -1
  %5 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = and i32 %6, %4
  %8 = and i32 %2, %1
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %5, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decContextSaveStatus(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = and i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @decContextSetRounding(ptr noundef returned writeonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !13
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @raise(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decContextSetStatusFromString(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 1) #9
  br label %71

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.1) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 2) #9
  br label %71

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.2) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 4) #9
  br label %71

17:                                               ; preds = %12
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.3) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 8) #9
  br label %71

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.4) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 32) #9
  br label %71

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.5) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 16) #9
  br label %71

32:                                               ; preds = %27
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.6) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 64) #9
  br label %71

37:                                               ; preds = %32
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.7) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 128) #9
  br label %71

42:                                               ; preds = %37
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 512) #9
  br label %71

47:                                               ; preds = %42
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.9) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 1024) #9
  br label %71

52:                                               ; preds = %47
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.10) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 2048) #9
  br label %71

57:                                               ; preds = %52
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 4096) #9
  br label %71

62:                                               ; preds = %57
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.12) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call ptr @decContextSetStatus(ptr noundef %0, i32 noundef 8192) #9
  br label %71

67:                                               ; preds = %62
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.13) #11
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr %0, ptr null
  br label %71

71:                                               ; preds = %67, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %10, %5
  %72 = phi ptr [ %0, %5 ], [ %0, %10 ], [ %0, %15 ], [ %0, %20 ], [ %0, %25 ], [ %0, %30 ], [ %0, %35 ], [ %0, %40 ], [ %0, %45 ], [ %0, %50 ], [ %0, %55 ], [ %0, %60 ], [ %0, %65 ], [ %70, %67 ]
  ret ptr %72
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @decContextSetStatusFromStringQuiet(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 1) #9
  br label %71

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.1) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 2) #9
  br label %71

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.2) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 4) #9
  br label %71

17:                                               ; preds = %12
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.3) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 8) #9
  br label %71

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.4) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 32) #9
  br label %71

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.5) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 16) #9
  br label %71

32:                                               ; preds = %27
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.6) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 64) #9
  br label %71

37:                                               ; preds = %32
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.7) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 128) #9
  br label %71

42:                                               ; preds = %37
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 512) #9
  br label %71

47:                                               ; preds = %42
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.9) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 1024) #9
  br label %71

52:                                               ; preds = %47
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.10) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 2048) #9
  br label %71

57:                                               ; preds = %52
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 4096) #9
  br label %71

62:                                               ; preds = %57
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.12) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call ptr @decContextSetStatusQuiet(ptr noundef %0, i32 noundef 8192) #9
  br label %71

67:                                               ; preds = %62
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.13) #11
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr %0, ptr null
  br label %71

71:                                               ; preds = %67, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %10, %5
  %72 = phi ptr [ %0, %5 ], [ %0, %10 ], [ %0, %15 ], [ %0, %20 ], [ %0, %25 ], [ %0, %30 ], [ %0, %35 ], [ %0, %40 ], [ %0, %45 ], [ %0, %50 ], [ %0, %55 ], [ %0, %60 ], [ %0, %65 ], [ %70, %67 ]
  ret ptr %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decContextSetStatusQuiet(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @decContextStatusToString(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !5
  switch i32 %3, label %17 [
    i32 128, label %18
    i32 2, label %4
    i32 512, label %5
    i32 8192, label %6
    i32 32, label %7
    i32 4, label %8
    i32 8, label %9
    i32 2048, label %10
    i32 1024, label %11
    i32 4096, label %12
    i32 1, label %13
    i32 16, label %14
    i32 64, label %15
    i32 0, label %16
  ]

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %19 = phi ptr [ @.str.1, %4 ], [ @.str.8, %5 ], [ @.str.12, %6 ], [ @.str.4, %7 ], [ @.str.2, %8 ], [ @.str.3, %9 ], [ @.str.10, %10 ], [ @.str.9, %11 ], [ @.str.11, %12 ], [ @.str, %13 ], [ @.str.5, %14 ], [ @.str.6, %15 ], [ @.str.13, %16 ], [ @.str.14, %17 ], [ @.str.7, %1 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @decContextTestEndian(i8 noundef zeroext %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @decContextTestSavedStatus(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = and i32 %1, %0
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decContextTestStatus(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = and i32 %4, %1
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @decContextZeroStatus(ptr noundef returned writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.decContext, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 20}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !8, i64 24}
!13 = !{!6, !7, i64 12}

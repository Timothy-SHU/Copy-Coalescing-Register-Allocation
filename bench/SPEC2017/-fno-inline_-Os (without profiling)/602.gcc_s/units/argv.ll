; ModuleID = 'argv.c'
source_filename = "argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0Aout of memory\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dupargv(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %8, %3 ], [ 0, %1 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !10

9:                                                ; preds = %3
  %10 = shl i64 %4, 3
  %11 = add i64 %10, 8
  %12 = and i64 %11, 34359738360
  %13 = tail call ptr @malloc(i64 noundef %12) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %31, %29 ], [ 0, %15 ]
  %20 = phi ptr [ %33, %29 ], [ %16, %15 ]
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #15
  %22 = shl i64 %21, 32
  %23 = add i64 %22, 4294967296
  %24 = ashr exact i64 %23, 32
  %25 = tail call ptr @malloc(i64 noundef %24) #14
  %26 = getelementptr inbounds ptr, ptr %13, i64 %19
  store ptr %25, ptr %26, align 8, !tbaa !6
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  tail call void @freeargv(ptr noundef nonnull %13) #15
  br label %38

29:                                               ; preds = %18
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %20) #15
  %31 = add nuw i64 %19, 1
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %18, !llvm.loop !12

35:                                               ; preds = %29, %15
  %36 = phi i64 [ 0, %15 ], [ %31, %29 ]
  %37 = getelementptr inbounds ptr, ptr %13, i64 %36
  store ptr null, ptr %37, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %28, %9, %1, %35
  %39 = phi ptr [ %13, %35 ], [ null, %1 ], [ null, %9 ], [ null, %28 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeargv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %3 ]
  tail call void @free(ptr noundef nonnull %7) #15
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !13

12:                                               ; preds = %6, %3
  tail call void @free(ptr noundef %0) #15
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @buildargv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  %3 = icmp eq ptr %0, null
  br i1 %3, label %102, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %6 = add i64 %5, 1
  %7 = alloca i8, i64 %6, align 16
  br label %8

8:                                                ; preds = %94, %4
  %9 = phi i64 [ %95, %94 ], [ 0, %4 ]
  %10 = phi i32 [ %88, %94 ], [ 0, %4 ]
  %11 = phi i32 [ %89, %94 ], [ 0, %4 ]
  %12 = phi i32 [ %90, %94 ], [ 0, %4 ]
  %13 = phi i32 [ %36, %94 ], [ 0, %4 ]
  %14 = phi ptr [ %37, %94 ], [ null, %4 ]
  call fastcc void @consume_whitespace(ptr noundef nonnull %2) #15
  %15 = icmp ne i32 %13, 0
  %16 = add nsw i32 %13, -1
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %9, %17
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %35, label %20

20:                                               ; preds = %8
  %21 = icmp eq ptr %14, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = tail call dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %102, label %31

25:                                               ; preds = %20
  %26 = shl nsw i32 %13, 1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr @realloc(ptr noundef nonnull %14, i64 noundef %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %25, %22
  %32 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %33 = phi i32 [ %26, %25 ], [ 8, %22 ]
  %34 = getelementptr inbounds ptr, ptr %32, i64 %9
  store ptr null, ptr %34, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %8, %31
  %36 = phi i32 [ %33, %31 ], [ %13, %8 ]
  %37 = phi ptr [ %32, %31 ], [ %14, %8 ]
  %38 = load ptr, ptr %2, align 8, !tbaa !6
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %35, %77
  %42 = phi i8 [ %84, %77 ], [ %39, %35 ]
  %43 = phi i32 [ %81, %77 ], [ %12, %35 ]
  %44 = phi i32 [ %80, %77 ], [ %11, %35 ]
  %45 = phi i32 [ %79, %77 ], [ %10, %35 ]
  %46 = phi ptr [ %78, %77 ], [ %7, %35 ]
  %47 = zext i8 %42 to i64
  %48 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !15
  %50 = and i16 %49, 64
  %51 = icmp eq i16 %50, 0
  %52 = icmp ne i32 %45, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp ne i32 %44, 0
  %55 = select i1 %53, i1 true, i1 %54
  %56 = icmp ne i32 %43, 0
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %41
  br i1 %56, label %59, label %61

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %42, ptr %46, align 1, !tbaa !14
  br label %77

61:                                               ; preds = %58
  %62 = icmp eq i8 %42, 92
  br i1 %62, label %77, label %63

63:                                               ; preds = %61
  br i1 %52, label %64, label %68

64:                                               ; preds = %63
  %65 = icmp eq i8 %42, 39
  br i1 %65, label %77, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %42, ptr %46, align 1, !tbaa !14
  br label %77

68:                                               ; preds = %63
  br i1 %54, label %69, label %73

69:                                               ; preds = %68
  %70 = icmp eq i8 %42, 34
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %42, ptr %46, align 1, !tbaa !14
  br label %77

73:                                               ; preds = %68
  switch i8 %42, label %75 [
    i8 39, label %77
    i8 34, label %74
  ]

74:                                               ; preds = %73
  br label %77

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %42, ptr %46, align 1, !tbaa !14
  br label %77

77:                                               ; preds = %73, %69, %64, %61, %71, %74, %75, %66, %59
  %78 = phi ptr [ %60, %59 ], [ %67, %66 ], [ %72, %71 ], [ %46, %74 ], [ %76, %75 ], [ %46, %61 ], [ %46, %64 ], [ %46, %69 ], [ %46, %73 ]
  %79 = phi i32 [ %45, %59 ], [ 1, %66 ], [ 0, %71 ], [ 0, %74 ], [ 0, %75 ], [ %45, %61 ], [ 0, %64 ], [ 0, %69 ], [ 1, %73 ]
  %80 = phi i32 [ %44, %59 ], [ %44, %66 ], [ 1, %71 ], [ 1, %74 ], [ 0, %75 ], [ %44, %61 ], [ %44, %64 ], [ 0, %69 ], [ 0, %73 ]
  %81 = phi i32 [ 0, %59 ], [ 0, %66 ], [ 0, %71 ], [ 0, %74 ], [ 0, %75 ], [ 1, %61 ], [ 0, %64 ], [ 0, %69 ], [ 0, %73 ]
  %82 = load ptr, ptr %2, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %83, ptr %2, align 8, !tbaa !6
  %84 = load i8, ptr %83, align 1, !tbaa !14
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %41, !llvm.loop !17

86:                                               ; preds = %77, %41, %35
  %87 = phi ptr [ %7, %35 ], [ %46, %41 ], [ %78, %77 ]
  %88 = phi i32 [ %10, %35 ], [ 0, %41 ], [ %79, %77 ]
  %89 = phi i32 [ %11, %35 ], [ 0, %41 ], [ %80, %77 ]
  %90 = phi i32 [ %12, %35 ], [ 0, %41 ], [ %81, %77 ]
  store i8 0, ptr %87, align 1, !tbaa !14
  %91 = call ptr @strdup(ptr noundef nonnull %7) #15
  %92 = getelementptr inbounds ptr, ptr %37, i64 %9
  store ptr %91, ptr %92, align 8, !tbaa !6
  %93 = icmp eq ptr %91, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %86
  %95 = add nuw i64 %9, 1
  %96 = getelementptr inbounds ptr, ptr %37, i64 %95
  store ptr null, ptr %96, align 8, !tbaa !6
  call fastcc void @consume_whitespace(ptr noundef nonnull %2) #15
  %97 = load ptr, ptr %2, align 8, !tbaa !6
  %98 = load i8, ptr %97, align 1, !tbaa !14
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %8, !llvm.loop !18

100:                                              ; preds = %86, %25
  %101 = phi ptr [ %14, %25 ], [ %37, %86 ]
  tail call void @freeargv(ptr noundef nonnull %101) #15
  br label %102

102:                                              ; preds = %22, %94, %100, %1
  %103 = phi ptr [ null, %1 ], [ null, %100 ], [ null, %22 ], [ %37, %94 ]
  ret ptr %103
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @consume_whitespace(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !15
  %7 = and i16 %6, 64
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %0, align 8, !tbaa !6
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !15
  %16 = and i16 %15, 64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !19

18:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @writeargv(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %11

7:                                                ; preds = %38
  %8 = getelementptr inbounds ptr, ptr %13, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %13 = phi ptr [ %8, %7 ], [ %0, %4 ]
  %14 = load i8, ptr %12, align 1, !tbaa !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %20

16:                                               ; preds = %35
  %17 = getelementptr inbounds i8, ptr %22, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20, !llvm.loop !20

20:                                               ; preds = %11, %16
  %21 = phi i8 [ %18, %16 ], [ %14, %11 ]
  %22 = phi ptr [ %17, %16 ], [ %12, %11 ]
  %23 = sext i8 %21 to i32
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !15
  %28 = freeze i16 %27
  %29 = and i16 %28, 64
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  switch i8 %21, label %35 [
    i8 92, label %32
    i8 39, label %32
    i8 34, label %32
  ]

32:                                               ; preds = %31, %31, %31, %20
  %33 = tail call i32 @fputc(i32 noundef 92, ptr noundef nonnull %1) #15
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %32
  %36 = tail call i32 @fputc(i32 noundef %23, ptr noundef nonnull %1) #15
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %41, label %16

38:                                               ; preds = %16, %11
  %39 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %1) #15
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %7

41:                                               ; preds = %7, %38, %35, %32, %4, %2
  %42 = phi i32 [ 1, %2 ], [ 0, %4 ], [ 1, %32 ], [ 1, %35 ], [ 0, %7 ], [ 1, %38 ]
  ret i32 %42
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expandargv(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !21
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %88

5:                                                ; preds = %2, %83
  %6 = phi i32 [ %85, %83 ], [ 1, %2 ]
  %7 = phi i32 [ %84, %83 ], [ 0, %2 ]
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %13 = icmp eq i8 %12, 64
  br i1 %13, label %14, label %83, !llvm.loop !23

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = tail call ptr @fopen(ptr noundef nonnull %15, ptr noundef nonnull @.str) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %83, label %18, !llvm.loop !23

18:                                               ; preds = %14
  %19 = tail call i32 @fseek(ptr noundef nonnull %16, i64 noundef 0, i32 noundef 2) #15
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %80, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @ftell(ptr noundef nonnull %16) #15
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %80, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @fseek(ptr noundef nonnull %16, i64 noundef 0, i32 noundef 0) #15
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %80, label %27

27:                                               ; preds = %24
  %28 = add nuw i64 %22, 1
  %29 = tail call ptr @xmalloc(i64 noundef %28) #17
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %22, ptr noundef nonnull %16) #15
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @ferror(ptr noundef nonnull %16) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %36, align 1, !tbaa !14
  %37 = tail call fastcc i32 @only_whitespace(ptr noundef %29) #15, !range !24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @xmalloc(i64 noundef 8) #17
  store ptr null, ptr %40, align 8, !tbaa !6
  br label %43

41:                                               ; preds = %35
  %42 = tail call ptr @buildargv(ptr noundef nonnull %29) #15
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = load ptr, ptr %1, align 8, !tbaa !6
  %46 = tail call ptr @dupargv(ptr noundef %45) #15
  store ptr %46, ptr %1, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load ptr, ptr @stderr, align 8, !tbaa !6
  %50 = tail call i32 @fputs(ptr noundef nonnull @.str.1, ptr noundef %49) #18
  tail call void @xexit(i32 noundef 1) #17
  br label %51

51:                                               ; preds = %43, %48
  br label %52

52:                                               ; preds = %51, %52
  %53 = phi i64 [ %57, %52 ], [ 0, %51 ]
  %54 = getelementptr inbounds ptr, ptr %44, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  %57 = add i64 %53, 1
  br i1 %56, label %58, label %52, !llvm.loop !25

58:                                               ; preds = %52
  %59 = load ptr, ptr %1, align 8, !tbaa !6
  %60 = load i32, ptr %0, align 4, !tbaa !21
  %61 = sext i32 %60 to i64
  %62 = add i64 %53, %61
  %63 = shl i64 %62, 3
  %64 = add i64 %63, 8
  %65 = tail call ptr @xrealloc(ptr noundef %59, i64 noundef %64) #17
  store ptr %65, ptr %1, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %9
  %67 = getelementptr inbounds ptr, ptr %66, i64 %53
  %68 = getelementptr inbounds ptr, ptr %66, i64 1
  %69 = load i32, ptr %0, align 4, !tbaa !21
  %70 = sub nsw i32 %69, %6
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %67, ptr nonnull align 8 %68, i64 %72, i1 false)
  %73 = load ptr, ptr %1, align 8, !tbaa !6
  %74 = getelementptr inbounds ptr, ptr %73, i64 %9
  %75 = shl i64 %53, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr nonnull align 8 %44, i64 %75, i1 false)
  %76 = load i32, ptr %0, align 4, !tbaa !21
  %77 = trunc i64 %53 to i32
  %78 = add i32 %77, -1
  %79 = add i32 %78, %76
  store i32 %79, ptr %0, align 4, !tbaa !21
  tail call void @free(ptr noundef nonnull %44) #15
  tail call void @free(ptr noundef %29) #15
  br label %80

80:                                               ; preds = %32, %24, %21, %18, %58
  %81 = phi i32 [ %6, %18 ], [ %6, %21 ], [ %6, %24 ], [ %6, %32 ], [ %7, %58 ]
  %82 = tail call i32 @fclose(ptr noundef nonnull %16) #15
  br label %83

83:                                               ; preds = %14, %5, %80
  %84 = phi i32 [ %81, %80 ], [ %6, %5 ], [ %6, %14 ]
  %85 = add nsw i32 %84, 1
  %86 = load i32, ptr %0, align 4, !tbaa !21
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %5, label %88

88:                                               ; preds = %83, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @only_whitespace(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i8, ptr %0, align 1, !tbaa !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %8

4:                                                ; preds = %8
  %5 = getelementptr inbounds i8, ptr %10, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !llvm.loop !26

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %6, %4 ], [ %2, %1 ]
  %10 = phi ptr [ %5, %4 ], [ %0, %1 ]
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !15
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %4

16:                                               ; preds = %4, %8
  %17 = lshr exact i16 %14, 6
  %18 = zext nneg i16 %17 to i32
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i32 [ 1, %1 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @xexit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { optsize allocsize(0) }
attributes #15 = { optsize }
attributes #16 = { optsize allocsize(1) }
attributes #17 = { nounwind optsize }
attributes #18 = { cold optsize }

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
!13 = distinct !{!13, !11}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !8, i64 0}
!23 = distinct !{!23, !11}
!24 = !{i32 0, i32 2}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}

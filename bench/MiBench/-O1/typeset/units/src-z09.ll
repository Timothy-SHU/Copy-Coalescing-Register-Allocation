; ModuleID = 'src/z09.c'
source_filename = "src/z09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"SearchEnv: env!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SearchEnv: type(y) != CLOSURE!\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SearchEnv: LastDown(y) == y!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"SetEnv: x==nilobj or not CLOSURE!\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"SetEnv: y!=nilobj && type(y) != ENV!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"AttachEnv: type(env) != ENV!\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"AttachEnv: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GetEnv: type(x) != CLOSURE!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GetEnv: LastDown(x) == x!\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"GetEnv: type(env) != ENV!\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"DetachEnv: type(x) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"DetachEnv: LastDown(x) == x!\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"DetachEnv: type(env) != ENV!\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"ClosureExpand given non-CLOSURE!\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ClosureExpand given predefined!\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ExpandCLosure: Down(par)!\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"no value for parameter %s of symbol %s:\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"symbol with import list misused\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"ClosureExpand: *res_env!\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"ParameterCheck given non-CLOSURE!\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"ParameterCheck: Down(par)!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @SearchEnv(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %44, %2
  %4 = phi ptr [ %0, %2 ], [ %47, %44 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.word_type, ptr %4, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i8 %8, 82
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %11, ptr noundef nonnull @.str.1) #2
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.LIST, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %51, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  switch i8 %22, label %23 [
    i8 0, label %17
    i8 2, label %26
  ]

23:                                               ; preds = %17
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.2) #2
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds %struct.closure_type, ptr %20, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 8, !tbaa !5
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %35 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %34, ptr noundef nonnull @.str.3) #2
  br label %36

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr %4, align 8, !tbaa !5
  %38 = load ptr, ptr %14, align 8, !tbaa !5
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %20, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %36, %40
  %43 = phi ptr [ %37, %36 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %47, %44 ], [ %43, %42 ]
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %44, label %3

51:                                               ; preds = %26, %13
  %52 = phi ptr [ null, %13 ], [ %20, %26 ]
  ret ptr %52
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @SetEnv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.4) #2
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !5
  %16 = icmp eq i8 %15, 82
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @.str.5) #2
  br label %20

20:                                               ; preds = %17, %13, %11
  %21 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  store i32 %22, ptr @zz_size, align 4, !tbaa !10
  %23 = zext i8 %21 to i64
  %24 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %29 = tail call ptr @GetMemory(i32 noundef %22, ptr noundef %28) #2
  store ptr %29, ptr @zz_hold, align 8, !tbaa !8
  br label %32

30:                                               ; preds = %20
  store ptr %25, ptr @zz_hold, align 8, !tbaa !8
  %31 = load ptr, ptr %25, align 8, !tbaa !5
  store ptr %31, ptr %24, align 8, !tbaa !8
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %29, %27 ], [ %25, %30 ]
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  store i8 82, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  store ptr %33, ptr %36, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.LIST, ptr %33, i64 0, i32 1
  store ptr %33, ptr %37, align 8, !tbaa !5
  store ptr %33, ptr %33, align 8, !tbaa !5
  %38 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  store i32 %39, ptr @zz_size, align 4, !tbaa !10
  %40 = zext i8 %38 to i64
  %41 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %46 = tail call ptr @GetMemory(i32 noundef %39, ptr noundef %45) #2
  br label %49

47:                                               ; preds = %32
  store ptr %42, ptr @zz_hold, align 8, !tbaa !8
  %48 = load ptr, ptr %42, align 8, !tbaa !5
  store ptr %48, ptr %41, align 8, !tbaa !8
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %46, %44 ], [ %42, %47 ]
  %51 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1
  store i8 0, ptr %51, align 8, !tbaa !5
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !5
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1
  store ptr %50, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.LIST, ptr %50, i64 0, i32 1
  store ptr %50, ptr %54, align 8, !tbaa !5
  store ptr %50, ptr %50, align 8, !tbaa !5
  store ptr %50, ptr @xx_link, align 8, !tbaa !8
  store ptr %50, ptr @zz_res, align 8, !tbaa !8
  store ptr %33, ptr @zz_hold, align 8, !tbaa !8
  %55 = load ptr, ptr %33, align 8, !tbaa !5
  store ptr %55, ptr @zz_tmp, align 8, !tbaa !8
  %56 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %56, ptr %33, align 8, !tbaa !5
  %57 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %58 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %57, ptr %60, align 8, !tbaa !5
  %61 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %61, ptr %58, align 8, !tbaa !5
  %62 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %63 = getelementptr inbounds %struct.LIST, ptr %61, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !5
  %64 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %64, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %65 = icmp eq ptr %64, null
  %66 = select i1 %3, i1 true, i1 %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %49
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  store ptr %69, ptr @zz_tmp, align 8, !tbaa !8
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  store ptr %71, ptr %68, align 8, !tbaa !5
  %72 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1, i32 1
  store ptr %0, ptr %72, align 8, !tbaa !5
  store ptr %69, ptr %70, align 8, !tbaa !5
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1, i32 1
  store ptr %64, ptr %73, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %49, %67
  br i1 %12, label %111, label %75

75:                                               ; preds = %74
  %76 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  store i32 %77, ptr @zz_size, align 4, !tbaa !10
  %78 = zext i8 %76 to i64
  %79 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %84 = tail call ptr @GetMemory(i32 noundef %77, ptr noundef %83) #2
  br label %87

85:                                               ; preds = %75
  store ptr %80, ptr @zz_hold, align 8, !tbaa !8
  %86 = load ptr, ptr %80, align 8, !tbaa !5
  store ptr %86, ptr %79, align 8, !tbaa !8
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi ptr [ %84, %82 ], [ %80, %85 ]
  %89 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  store i8 0, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1, i32 1
  store ptr %88, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  store ptr %88, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.LIST, ptr %88, i64 0, i32 1
  store ptr %88, ptr %92, align 8, !tbaa !5
  store ptr %88, ptr %88, align 8, !tbaa !5
  store ptr %88, ptr @xx_link, align 8, !tbaa !8
  store ptr %88, ptr @zz_res, align 8, !tbaa !8
  store ptr %33, ptr @zz_hold, align 8, !tbaa !8
  %93 = load ptr, ptr %33, align 8, !tbaa !5
  store ptr %93, ptr @zz_tmp, align 8, !tbaa !8
  %94 = load ptr, ptr %88, align 8, !tbaa !5
  store ptr %94, ptr %33, align 8, !tbaa !5
  %95 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %96 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.LIST, ptr %97, i64 0, i32 1
  store ptr %95, ptr %98, align 8, !tbaa !5
  %99 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %99, ptr %96, align 8, !tbaa !5
  %100 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %101 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !5
  %102 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %102, ptr @zz_res, align 8, !tbaa !8
  store ptr %1, ptr @zz_hold, align 8, !tbaa !8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %87
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  store ptr %106, ptr @zz_tmp, align 8, !tbaa !8
  %107 = getelementptr inbounds [2 x %struct.LIST], ptr %102, i64 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  store ptr %108, ptr %105, align 8, !tbaa !5
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %108, i64 0, i64 1, i32 1
  store ptr %1, ptr %109, align 8, !tbaa !5
  store ptr %106, ptr %107, align 8, !tbaa !5
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %102, ptr %110, align 8, !tbaa !5
  br label %111

111:                                              ; preds = %87, %104, %74
  ret ptr %33
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AttachEnv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 82
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.7) #2
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !5
  switch i8 %13, label %14 [
    i8 2, label %17
    i8 81, label %17
  ]

14:                                               ; preds = %11
  %15 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %15, ptr noundef nonnull @.str.8) #2
  br label %17

17:                                               ; preds = %11, %11, %14
  %18 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  store i32 %19, ptr @zz_size, align 4, !tbaa !10
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %26 = tail call ptr @GetMemory(i32 noundef %19, ptr noundef %25) #2
  br label %29

27:                                               ; preds = %17
  store ptr %22, ptr @zz_hold, align 8, !tbaa !8
  %28 = load ptr, ptr %22, align 8, !tbaa !5
  store ptr %28, ptr %21, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %26, %24 ], [ %22, %27 ]
  %31 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  store i8 0, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  store ptr %30, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !5
  store ptr %30, ptr %30, align 8, !tbaa !5
  store ptr %30, ptr @xx_link, align 8, !tbaa !8
  store ptr %30, ptr @zz_res, align 8, !tbaa !8
  store ptr %1, ptr @zz_hold, align 8, !tbaa !8
  %35 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %35, ptr @zz_tmp, align 8, !tbaa !8
  %36 = load ptr, ptr %30, align 8, !tbaa !5
  store ptr %36, ptr %1, align 8, !tbaa !5
  %37 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %38 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.LIST, ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !5
  %41 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %41, ptr %38, align 8, !tbaa !5
  %42 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %43 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !5
  %44 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %44, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %45 = icmp eq ptr %44, null
  %46 = select i1 %3, i1 true, i1 %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %29
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  store ptr %49, ptr @zz_tmp, align 8, !tbaa !8
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %51, ptr %48, align 8, !tbaa !5
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1, i32 1
  store ptr %0, ptr %52, align 8, !tbaa !5
  store ptr %49, ptr %50, align 8, !tbaa !5
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %49, i64 0, i64 1, i32 1
  store ptr %44, ptr %53, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %29, %47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetEnv(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.9) #2
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.10) #2
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %9, %8 ], [ %14, %11 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %20, %17 ], [ %16, %15 ]
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  switch i8 %22, label %23 [
    i8 0, label %17
    i8 82, label %26
  ]

23:                                               ; preds = %17
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.11) #2
  br label %26

26:                                               ; preds = %17, %23
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DetachEnv(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.12) #2
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.13) #2
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %14, %11 ], [ %9, %8 ]
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %16, %15 ], [ %20, %17 ]
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %17, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  store ptr %16, ptr @xx_link, align 8, !tbaa !8
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, %16
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  store ptr %27, ptr @zz_res, align 8, !tbaa !8
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  store ptr %27, ptr %33, align 8, !tbaa !5
  store ptr %16, ptr %26, align 8, !tbaa !5
  store ptr %16, ptr %30, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %24, %29
  store ptr %16, ptr @zz_hold, align 8, !tbaa !8
  %35 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, %16
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  store ptr %36, ptr @zz_res, align 8, !tbaa !8
  %39 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %39, ptr %36, align 8, !tbaa !5
  %40 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %41 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  store ptr %40, ptr %43, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  store ptr %41, ptr %44, align 8, !tbaa !5
  store ptr %41, ptr %41, align 8, !tbaa !5
  %45 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %46

46:                                               ; preds = %34, %38
  %47 = phi ptr [ %16, %34 ], [ %45, %38 ]
  store ptr %47, ptr @zz_hold, align 8, !tbaa !8
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !5
  %50 = add i8 %49, -11
  %51 = icmp ult i8 %50, 2
  %52 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1, i32 0, i32 1
  %53 = zext i8 %49 to i64
  %54 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %53
  %55 = select i1 %51, ptr %52, ptr %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i32
  store i32 %57, ptr @zz_size, align 4, !tbaa !10
  %58 = zext i8 %56 to i64
  %59 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !8
  store ptr %60, ptr %47, align 8, !tbaa !5
  %61 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %62 = load i32, ptr @zz_size, align 4, !tbaa !10
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %63
  store ptr %61, ptr %64, align 8, !tbaa !8
  %65 = load i8, ptr %25, align 8, !tbaa !5
  %66 = icmp eq i8 %65, 82
  br i1 %66, label %70, label %67

67:                                               ; preds = %46
  %68 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %69 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %68, ptr noundef nonnull @.str.14) #2
  br label %70

70:                                               ; preds = %67, %46
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ClosureExpand(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.15) #2
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.symbol_type, ptr %14, i64 0, i32 12
  %16 = load i16, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.16) #2
  %21 = load ptr, ptr %13, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %21, %18 ], [ %14, %12 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 41
  %25 = load i24, ptr %24, align 1
  %26 = and i24 %25, 2
  %27 = icmp eq i24 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @CrossAddTag(ptr noundef nonnull %0) #2
  br label %29

29:                                               ; preds = %28, %22
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %162, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %13, align 8, !tbaa !5
  %33 = getelementptr inbounds i8, ptr %32, i64 41
  %34 = load i24, ptr %33, align 1
  %35 = and i24 %34, 2
  %36 = icmp eq i24 %35, 0
  br i1 %36, label %162, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %39 = tail call ptr @CopyObject(ptr noundef nonnull %0, ptr noundef %38) #2
  tail call void @AttachEnv(ptr noundef %1, ptr noundef %39)
  %40 = load ptr, ptr %13, align 8, !tbaa !5
  %41 = tail call ptr @CrossMake(ptr noundef %40, ptr noundef %39, i32 noundef 131) #2
  %42 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 131), align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  store i32 %43, ptr @zz_size, align 4, !tbaa !10
  %44 = zext i8 %42 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %50 = tail call ptr @GetMemory(i32 noundef %43, ptr noundef %49) #2
  store ptr %50, ptr @zz_hold, align 8, !tbaa !8
  br label %53

51:                                               ; preds = %37
  store ptr %46, ptr @zz_hold, align 8, !tbaa !8
  %52 = load ptr, ptr %46, align 8, !tbaa !5
  store ptr %52, ptr %45, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %50, %48 ], [ %46, %51 ]
  %55 = getelementptr inbounds %struct.word_type, ptr %54, i64 0, i32 1
  store i8 -125, ptr %55, align 8, !tbaa !5
  %56 = getelementptr inbounds [2 x %struct.LIST], ptr %54, i64 0, i64 1
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %54, i64 0, i64 1, i32 1
  store ptr %54, ptr %57, align 8, !tbaa !5
  store ptr %54, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.LIST, ptr %54, i64 0, i32 1
  store ptr %54, ptr %58, align 8, !tbaa !5
  store ptr %54, ptr %54, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.closure_type, ptr %54, i64 0, i32 5
  store ptr %41, ptr %59, align 8, !tbaa !5
  %60 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  store i32 %61, ptr @zz_size, align 4, !tbaa !10
  %62 = zext i8 %60 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %68 = tail call ptr @GetMemory(i32 noundef %61, ptr noundef %67) #2
  br label %71

69:                                               ; preds = %53
  store ptr %64, ptr @zz_hold, align 8, !tbaa !8
  %70 = load ptr, ptr %64, align 8, !tbaa !5
  store ptr %70, ptr %63, align 8, !tbaa !8
  br label %71

71:                                               ; preds = %66, %69
  %72 = phi ptr [ %68, %66 ], [ %64, %69 ]
  %73 = getelementptr inbounds %struct.word_type, ptr %72, i64 0, i32 1
  store i8 0, ptr %73, align 8, !tbaa !5
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !5
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1
  store ptr %72, ptr %75, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  store ptr %72, ptr %76, align 8, !tbaa !5
  store ptr %72, ptr %72, align 8, !tbaa !5
  store ptr %72, ptr @xx_link, align 8, !tbaa !8
  store ptr %72, ptr @zz_res, align 8, !tbaa !8
  store ptr %54, ptr @zz_hold, align 8, !tbaa !8
  %77 = load ptr, ptr %54, align 8, !tbaa !5
  store ptr %77, ptr @zz_tmp, align 8, !tbaa !8
  %78 = load ptr, ptr %72, align 8, !tbaa !5
  store ptr %78, ptr %54, align 8, !tbaa !5
  %79 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %80 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.LIST, ptr %81, i64 0, i32 1
  store ptr %79, ptr %82, align 8, !tbaa !5
  %83 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %83, ptr %80, align 8, !tbaa !5
  %84 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %85 = getelementptr inbounds %struct.LIST, ptr %83, i64 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !5
  %86 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %86, ptr @zz_res, align 8, !tbaa !8
  store ptr %41, ptr @zz_hold, align 8, !tbaa !8
  %87 = icmp eq ptr %41, null
  %88 = icmp eq ptr %86, null
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %71
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  store ptr %92, ptr @zz_tmp, align 8, !tbaa !8
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %94, ptr %91, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1, i32 1
  store ptr %41, ptr %95, align 8, !tbaa !5
  store ptr %92, ptr %93, align 8, !tbaa !5
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1, i32 1
  store ptr %86, ptr %96, align 8, !tbaa !5
  br label %97

97:                                               ; preds = %71, %90
  %98 = load ptr, ptr %3, align 8, !tbaa !8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 148), align 1, !tbaa !5
  %102 = zext i8 %101 to i32
  store i32 %102, ptr @zz_size, align 4, !tbaa !10
  %103 = zext i8 %101 to i64
  %104 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %109 = tail call ptr @GetMemory(i32 noundef %102, ptr noundef %108) #2
  store ptr %109, ptr @zz_hold, align 8, !tbaa !8
  br label %112

110:                                              ; preds = %100
  store ptr %105, ptr @zz_hold, align 8, !tbaa !8
  %111 = load ptr, ptr %105, align 8, !tbaa !5
  store ptr %111, ptr %104, align 8, !tbaa !8
  br label %112

112:                                              ; preds = %107, %110
  %113 = phi ptr [ %109, %107 ], [ %105, %110 ]
  %114 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1
  store i8 -108, ptr %114, align 8, !tbaa !5
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1, i32 1
  store ptr %113, ptr %115, align 8, !tbaa !5
  %116 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1
  store ptr %113, ptr %116, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.LIST, ptr %113, i64 0, i32 1
  store ptr %113, ptr %117, align 8, !tbaa !5
  store ptr %113, ptr %113, align 8, !tbaa !5
  store ptr %113, ptr %3, align 8, !tbaa !8
  br label %118

118:                                              ; preds = %112, %97
  %119 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %120 = zext i8 %119 to i32
  store i32 %120, ptr @zz_size, align 4, !tbaa !10
  %121 = zext i8 %119 to i64
  %122 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %127 = tail call ptr @GetMemory(i32 noundef %120, ptr noundef %126) #2
  store ptr %127, ptr @zz_hold, align 8, !tbaa !8
  br label %130

128:                                              ; preds = %118
  store ptr %123, ptr @zz_hold, align 8, !tbaa !8
  %129 = load ptr, ptr %123, align 8, !tbaa !5
  store ptr %129, ptr %122, align 8, !tbaa !8
  br label %130

130:                                              ; preds = %125, %128
  %131 = phi ptr [ %127, %125 ], [ %123, %128 ]
  %132 = getelementptr inbounds %struct.word_type, ptr %131, i64 0, i32 1
  store i8 0, ptr %132, align 8, !tbaa !5
  %133 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !5
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1
  store ptr %131, ptr %134, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.LIST, ptr %131, i64 0, i32 1
  store ptr %131, ptr %135, align 8, !tbaa !5
  store ptr %131, ptr %131, align 8, !tbaa !5
  store ptr %131, ptr @xx_link, align 8, !tbaa !8
  store ptr %131, ptr @zz_res, align 8, !tbaa !8
  %136 = load ptr, ptr %3, align 8, !tbaa !8
  store ptr %136, ptr @zz_hold, align 8, !tbaa !8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store ptr %131, ptr @zz_res, align 8, !tbaa !8
  store ptr %54, ptr @zz_hold, align 8, !tbaa !8
  br label %154

139:                                              ; preds = %130
  %140 = load ptr, ptr %136, align 8, !tbaa !5
  store ptr %140, ptr @zz_tmp, align 8, !tbaa !8
  %141 = load ptr, ptr %131, align 8, !tbaa !5
  store ptr %141, ptr %136, align 8, !tbaa !5
  %142 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %143 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  store ptr %142, ptr %145, align 8, !tbaa !5
  %146 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %146, ptr %143, align 8, !tbaa !5
  %147 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %148 = getelementptr inbounds %struct.LIST, ptr %146, i64 0, i32 1
  store ptr %147, ptr %148, align 8, !tbaa !5
  %149 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %149, ptr @zz_res, align 8, !tbaa !8
  store ptr %54, ptr @zz_hold, align 8, !tbaa !8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %139
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %151, %138
  %155 = phi ptr [ %131, %138 ], [ %153, %151 ]
  %156 = phi ptr [ %131, %138 ], [ %149, %151 ]
  %157 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %157, ptr @zz_tmp, align 8, !tbaa !8
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1
  store ptr %155, ptr %56, align 8, !tbaa !5
  %159 = load ptr, ptr %158, align 8, !tbaa !5
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1, i32 1
  store ptr %54, ptr %160, align 8, !tbaa !5
  store ptr %157, ptr %158, align 8, !tbaa !5
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1, i32 1
  store ptr %156, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %154, %139, %31, %29
  store ptr null, ptr %4, align 8, !tbaa !8
  %163 = load ptr, ptr %13, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.word_type, ptr %163, i64 0, i32 1
  %165 = load i8, ptr %164, align 8, !tbaa !5
  %166 = add i8 %165, 112
  %167 = icmp ult i8 %166, 3
  br i1 %167, label %168, label %388

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.symbol_type, ptr %163, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  %171 = tail call ptr @SearchEnv(ptr noundef %1, ptr noundef %170)
  %172 = icmp eq ptr %171, null
  br i1 %172, label %373, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.word_type, ptr %171, i64 0, i32 1
  %175 = load i8, ptr %174, align 8, !tbaa !5
  %176 = icmp eq i8 %175, 2
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %179 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %178, ptr noundef nonnull @.str.9) #2
  br label %180

180:                                              ; preds = %177, %173
  %181 = load ptr, ptr %171, align 8, !tbaa !5
  %182 = icmp eq ptr %181, %171
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %185 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %184, ptr noundef nonnull @.str.10) #2
  %186 = load ptr, ptr %171, align 8, !tbaa !5
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi ptr [ %181, %180 ], [ %186, %183 ]
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi ptr [ %192, %189 ], [ %188, %187 ]
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = getelementptr inbounds %struct.word_type, ptr %192, i64 0, i32 1
  %194 = load i8, ptr %193, align 8, !tbaa !5
  switch i8 %194, label %195 [
    i8 0, label %189
    i8 82, label %198
  ]

195:                                              ; preds = %189
  %196 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %197 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %196, ptr noundef nonnull @.str.11) #2
  br label %198

198:                                              ; preds = %189, %195
  %199 = getelementptr inbounds %struct.LIST, ptr %171, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = icmp eq ptr %200, %171
  br i1 %201, label %388, label %202

202:                                              ; preds = %198, %369
  %203 = phi ptr [ %371, %369 ], [ %200, %198 ]
  br label %204

204:                                              ; preds = %202, %204
  %205 = phi ptr [ %207, %204 ], [ %203, %202 ]
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 1
  %209 = load i8, ptr %208, align 8, !tbaa !5
  switch i8 %209, label %369 [
    i8 0, label %204
    i8 10, label %210
  ]

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.closure_type, ptr %207, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = load ptr, ptr %13, align 8, !tbaa !5
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %215, label %369

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.closure_type, ptr %207, i64 0, i32 5
  %217 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = icmp eq ptr %218, %207
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %222 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %221, ptr noundef nonnull @.str.17) #2
  %223 = load ptr, ptr %217, align 8, !tbaa !5
  br label %224

224:                                              ; preds = %220, %215
  %225 = phi ptr [ %223, %220 ], [ %218, %215 ]
  br label %226

226:                                              ; preds = %226, %224
  %227 = phi ptr [ %225, %224 ], [ %229, %226 ]
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %227, i64 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = getelementptr inbounds %struct.word_type, ptr %229, i64 0, i32 1
  %231 = load i8, ptr %230, align 8, !tbaa !5
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %226, label %233

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.word_type, ptr %229, i64 0, i32 1
  %235 = load ptr, ptr %216, align 8, !tbaa !5
  %236 = getelementptr inbounds %struct.symbol_type, ptr %235, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = getelementptr inbounds i8, ptr %237, i64 41
  %239 = load i24, ptr %238, align 1
  %240 = and i24 %239, 32768
  %241 = icmp eq i24 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.symbol_type, ptr %235, i64 0, i32 16
  %244 = load i8, ptr %243, align 2
  %245 = and i8 %244, 16
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242, %233
  %248 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %249 = tail call ptr @CopyObject(ptr noundef nonnull %229, ptr noundef %248) #2
  br label %328

250:                                              ; preds = %242
  store ptr %225, ptr @xx_link, align 8, !tbaa !8
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %225, i64 0, i64 1, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = icmp eq ptr %252, %225
  br i1 %253, label %259, label %254

254:                                              ; preds = %250
  store ptr %252, ptr @zz_res, align 8, !tbaa !8
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %225, i64 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !5
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %252, i64 0, i64 1
  store ptr %256, ptr %257, align 8, !tbaa !5
  %258 = getelementptr inbounds [2 x %struct.LIST], ptr %256, i64 0, i64 1, i32 1
  store ptr %252, ptr %258, align 8, !tbaa !5
  store ptr %225, ptr %251, align 8, !tbaa !5
  store ptr %225, ptr %255, align 8, !tbaa !5
  br label %259

259:                                              ; preds = %250, %254
  store ptr %225, ptr @zz_hold, align 8, !tbaa !8
  %260 = getelementptr inbounds %struct.LIST, ptr %225, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = icmp eq ptr %261, %225
  br i1 %262, label %271, label %263

263:                                              ; preds = %259
  store ptr %261, ptr @zz_res, align 8, !tbaa !8
  %264 = load ptr, ptr %225, align 8, !tbaa !5
  store ptr %264, ptr %261, align 8, !tbaa !5
  %265 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %266 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  %268 = getelementptr inbounds %struct.LIST, ptr %267, i64 0, i32 1
  store ptr %265, ptr %268, align 8, !tbaa !5
  %269 = getelementptr inbounds %struct.LIST, ptr %266, i64 0, i32 1
  store ptr %266, ptr %269, align 8, !tbaa !5
  store ptr %266, ptr %266, align 8, !tbaa !5
  %270 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %271

271:                                              ; preds = %259, %263
  %272 = phi ptr [ %225, %259 ], [ %270, %263 ]
  store ptr %272, ptr @zz_hold, align 8, !tbaa !8
  %273 = getelementptr inbounds %struct.word_type, ptr %272, i64 0, i32 1
  %274 = load i8, ptr %273, align 8, !tbaa !5
  %275 = add i8 %274, -11
  %276 = icmp ult i8 %275, 2
  %277 = getelementptr inbounds %struct.word_type, ptr %272, i64 0, i32 1, i32 0, i32 1
  %278 = zext i8 %274 to i64
  %279 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %278
  %280 = select i1 %276, ptr %277, ptr %279
  %281 = load i8, ptr %280, align 1, !tbaa !5
  %282 = zext i8 %281 to i32
  store i32 %282, ptr @zz_size, align 4, !tbaa !10
  %283 = zext i8 %281 to i64
  %284 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !8
  store ptr %285, ptr %272, align 8, !tbaa !5
  %286 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %287 = load i32, ptr @zz_size, align 4, !tbaa !10
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %288
  store ptr %286, ptr %289, align 8, !tbaa !8
  %290 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.18, ptr noundef nonnull %234) #2
  %291 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %292 = zext i8 %291 to i32
  store i32 %292, ptr @zz_size, align 4, !tbaa !10
  %293 = zext i8 %291 to i64
  %294 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %271
  %298 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %299 = tail call ptr @GetMemory(i32 noundef %292, ptr noundef %298) #2
  br label %302

300:                                              ; preds = %271
  store ptr %295, ptr @zz_hold, align 8, !tbaa !8
  %301 = load ptr, ptr %295, align 8, !tbaa !5
  store ptr %301, ptr %294, align 8, !tbaa !8
  br label %302

302:                                              ; preds = %297, %300
  %303 = phi ptr [ %299, %297 ], [ %295, %300 ]
  %304 = getelementptr inbounds %struct.word_type, ptr %303, i64 0, i32 1
  store i8 0, ptr %304, align 8, !tbaa !5
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %303, i64 0, i64 1, i32 1
  store ptr %303, ptr %305, align 8, !tbaa !5
  %306 = getelementptr inbounds [2 x %struct.LIST], ptr %303, i64 0, i64 1
  store ptr %303, ptr %306, align 8, !tbaa !5
  %307 = getelementptr inbounds %struct.LIST, ptr %303, i64 0, i32 1
  store ptr %303, ptr %307, align 8, !tbaa !5
  store ptr %303, ptr %303, align 8, !tbaa !5
  store ptr %303, ptr @xx_link, align 8, !tbaa !8
  store ptr %303, ptr @zz_res, align 8, !tbaa !8
  store ptr %207, ptr @zz_hold, align 8, !tbaa !8
  %308 = load ptr, ptr %207, align 8, !tbaa !5
  store ptr %308, ptr @zz_tmp, align 8, !tbaa !8
  %309 = load ptr, ptr %303, align 8, !tbaa !5
  store ptr %309, ptr %207, align 8, !tbaa !5
  %310 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %311 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %312 = load ptr, ptr %311, align 8, !tbaa !5
  %313 = getelementptr inbounds %struct.LIST, ptr %312, i64 0, i32 1
  store ptr %310, ptr %313, align 8, !tbaa !5
  %314 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %314, ptr %311, align 8, !tbaa !5
  %315 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %316 = getelementptr inbounds %struct.LIST, ptr %314, i64 0, i32 1
  store ptr %315, ptr %316, align 8, !tbaa !5
  %317 = load ptr, ptr @xx_link, align 8, !tbaa !8
  %318 = icmp eq ptr %290, null
  %319 = icmp eq ptr %317, null
  %320 = select i1 %318, i1 true, i1 %319
  br i1 %320, label %328, label %321

321:                                              ; preds = %302
  %322 = getelementptr inbounds [2 x %struct.LIST], ptr %290, i64 0, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !5
  store ptr %323, ptr @zz_tmp, align 8, !tbaa !8
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  store ptr %325, ptr %322, align 8, !tbaa !5
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  store ptr %290, ptr %326, align 8, !tbaa !5
  store ptr %323, ptr %324, align 8, !tbaa !5
  %327 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1, i32 1
  store ptr %317, ptr %327, align 8, !tbaa !5
  br label %328

328:                                              ; preds = %302, %321, %247
  %329 = phi ptr [ %249, %247 ], [ %229, %321 ], [ %229, %302 ]
  %330 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !5
  %332 = icmp eq ptr %331, %0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %329, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %346

334:                                              ; preds = %328
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1
  store ptr %336, ptr %337, align 8, !tbaa !5
  %338 = getelementptr inbounds [2 x %struct.LIST], ptr %336, i64 0, i64 1, i32 1
  store ptr %331, ptr %338, align 8, !tbaa !5
  store ptr %0, ptr %330, align 8, !tbaa !5
  store ptr %0, ptr %335, align 8, !tbaa !5
  store ptr %331, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %329, ptr @zz_res, align 8, !tbaa !8
  store ptr %331, ptr @zz_hold, align 8, !tbaa !8
  %339 = icmp eq ptr %329, null
  br i1 %339, label %346, label %340

340:                                              ; preds = %334
  %341 = load ptr, ptr %337, align 8, !tbaa !5
  store ptr %341, ptr @zz_tmp, align 8, !tbaa !8
  %342 = getelementptr inbounds [2 x %struct.LIST], ptr %329, i64 0, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  store ptr %343, ptr %337, align 8, !tbaa !5
  %344 = getelementptr inbounds [2 x %struct.LIST], ptr %343, i64 0, i64 1, i32 1
  store ptr %331, ptr %344, align 8, !tbaa !5
  store ptr %341, ptr %342, align 8, !tbaa !5
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %341, i64 0, i64 1, i32 1
  store ptr %329, ptr %345, align 8, !tbaa !5
  br label %346

346:                                              ; preds = %333, %334, %340
  %347 = load ptr, ptr %13, align 8, !tbaa !5
  %348 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1
  %349 = load i8, ptr %348, align 8, !tbaa !5
  switch i8 %349, label %367 [
    i8 -110, label %350
    i8 -111, label %360
  ]

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.symbol_type, ptr %347, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !5
  %353 = getelementptr inbounds i8, ptr %352, i64 41
  %354 = load i24, ptr %353, align 1
  %355 = and i24 %354, 256
  %356 = icmp eq i24 %355, 0
  br i1 %356, label %367, label %357

357:                                              ; preds = %350
  %358 = tail call ptr @SetEnv(ptr noundef nonnull %171, ptr noundef null)
  store ptr %358, ptr %4, align 8, !tbaa !8
  %359 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #2
  br label %386

360:                                              ; preds = %346
  %361 = getelementptr inbounds i8, ptr %347, i64 41
  %362 = load i24, ptr %361, align 1
  %363 = and i24 %362, 4194304
  %364 = icmp eq i24 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %360
  tail call void @AttachEnv(ptr noundef %1, ptr noundef nonnull %0)
  %366 = tail call ptr @SetEnv(ptr noundef nonnull %0, ptr noundef null)
  store ptr %366, ptr %4, align 8, !tbaa !8
  br label %386

367:                                              ; preds = %346, %350, %360
  tail call void @AttachEnv(ptr noundef %1, ptr noundef nonnull %0)
  %368 = tail call ptr @SetEnv(ptr noundef nonnull %0, ptr noundef %192)
  store ptr %368, ptr %4, align 8, !tbaa !8
  br label %386

369:                                              ; preds = %204, %210
  %370 = getelementptr inbounds %struct.LIST, ptr %203, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !5
  %372 = icmp eq ptr %371, %171
  br i1 %372, label %388, label %202

373:                                              ; preds = %168
  %374 = load ptr, ptr %13, align 8, !tbaa !5
  %375 = getelementptr inbounds %struct.symbol_type, ptr %374, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !5
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %388

378:                                              ; preds = %373
  %379 = tail call ptr @SymName(ptr noundef nonnull %374) #2
  %380 = load ptr, ptr %13, align 8, !tbaa !5
  %381 = getelementptr inbounds %struct.symbol_type, ptr %380, i64 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !5
  %383 = tail call ptr @SymName(ptr noundef %382) #2
  %384 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 9, i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %6, ptr noundef %379, ptr noundef %383) #2
  %385 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 9, i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %6) #2
  br label %388

386:                                              ; preds = %357, %367, %365
  %387 = icmp eq ptr %329, null
  br i1 %387, label %388, label %417

388:                                              ; preds = %369, %198, %162, %373, %378, %386
  %389 = load ptr, ptr %13, align 8, !tbaa !5
  %390 = getelementptr inbounds %struct.symbol_type, ptr %389, i64 0, i32 4
  %391 = load ptr, ptr %390, align 8, !tbaa !5
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.18, ptr noundef nonnull %6) #2
  br label %397

395:                                              ; preds = %388
  %396 = tail call ptr @CopyObject(ptr noundef nonnull %391, ptr noundef nonnull %6) #2
  br label %397

397:                                              ; preds = %395, %393
  %398 = phi ptr [ %394, %393 ], [ %396, %395 ]
  %399 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !5
  %401 = icmp eq ptr %400, %0
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %398, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %415

403:                                              ; preds = %397
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %405 = load ptr, ptr %404, align 8, !tbaa !5
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %400, i64 0, i64 1
  store ptr %405, ptr %406, align 8, !tbaa !5
  %407 = getelementptr inbounds [2 x %struct.LIST], ptr %405, i64 0, i64 1, i32 1
  store ptr %400, ptr %407, align 8, !tbaa !5
  store ptr %0, ptr %399, align 8, !tbaa !5
  store ptr %0, ptr %404, align 8, !tbaa !5
  store ptr %400, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %398, ptr @zz_res, align 8, !tbaa !8
  store ptr %400, ptr @zz_hold, align 8, !tbaa !8
  %408 = icmp eq ptr %398, null
  br i1 %408, label %415, label %409

409:                                              ; preds = %403
  %410 = load ptr, ptr %406, align 8, !tbaa !5
  store ptr %410, ptr @zz_tmp, align 8, !tbaa !8
  %411 = getelementptr inbounds [2 x %struct.LIST], ptr %398, i64 0, i64 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  store ptr %412, ptr %406, align 8, !tbaa !5
  %413 = getelementptr inbounds [2 x %struct.LIST], ptr %412, i64 0, i64 1, i32 1
  store ptr %400, ptr %413, align 8, !tbaa !5
  store ptr %410, ptr %411, align 8, !tbaa !5
  %414 = getelementptr inbounds [2 x %struct.LIST], ptr %410, i64 0, i64 1, i32 1
  store ptr %398, ptr %414, align 8, !tbaa !5
  br label %415

415:                                              ; preds = %402, %403, %409
  tail call void @AttachEnv(ptr noundef %1, ptr noundef nonnull %0)
  %416 = tail call ptr @SetEnv(ptr noundef nonnull %0, ptr noundef null)
  store ptr %416, ptr %4, align 8, !tbaa !8
  br label %419

417:                                              ; preds = %386
  %418 = load ptr, ptr %4, align 8, !tbaa !8
  br label %419

419:                                              ; preds = %417, %415
  %420 = phi ptr [ %418, %417 ], [ %416, %415 ]
  %421 = phi ptr [ %329, %417 ], [ %398, %415 ]
  %422 = icmp eq ptr %420, null
  br i1 %422, label %427, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.word_type, ptr %420, i64 0, i32 1
  %425 = load i8, ptr %424, align 8, !tbaa !5
  %426 = icmp eq i8 %425, 82
  br i1 %426, label %430, label %427

427:                                              ; preds = %423, %419
  %428 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %429 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %428, ptr noundef nonnull @.str.21) #2
  br label %430

430:                                              ; preds = %427, %423
  ret ptr %421
}

declare void @CrossAddTag(ptr noundef) local_unnamed_addr #1

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CrossMake(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

declare ptr @SymName(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ParameterCheck(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br label %6

6:                                                ; preds = %96, %2
  %7 = phi i1 [ %5, %2 ], [ true, %96 ]
  %8 = phi ptr [ %0, %2 ], [ %88, %96 ]
  %9 = phi ptr [ %1, %2 ], [ %39, %96 ]
  br i1 %7, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %11, ptr noundef nonnull @.str.22) #2
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.closure_type, ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.symbol_type, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr @SearchEnv(ptr noundef %9, ptr noundef %17)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.word_type, ptr %18, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %26 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %25, ptr noundef nonnull @.str.9) #2
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %18, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %32 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %31, ptr noundef nonnull @.str.10) #2
  %33 = load ptr, ptr %18, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %28, %27 ], [ %33, %30 ]
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %39, %36 ], [ %35, %34 ]
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %37, i64 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !5
  switch i8 %41, label %42 [
    i8 0, label %36
    i8 82, label %45
  ]

42:                                               ; preds = %36
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %43, ptr noundef nonnull @.str.11) #2
  br label %45

45:                                               ; preds = %36, %42
  %46 = getelementptr inbounds %struct.LIST, ptr %18, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, %18
  br i1 %48, label %85, label %49

49:                                               ; preds = %45, %81
  %50 = phi ptr [ %83, %81 ], [ %47, %45 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi ptr [ %54, %51 ], [ %50, %49 ]
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.word_type, ptr %54, i64 0, i32 1
  %56 = load i8, ptr %55, align 8, !tbaa !5
  switch i8 %56, label %81 [
    i8 0, label %51
    i8 10, label %57
  ]

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.closure_type, ptr %54, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = load ptr, ptr %14, align 8, !tbaa !5
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.LIST, ptr %54, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, %54
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %68 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %67, ptr noundef nonnull @.str.23) #2
  %69 = load ptr, ptr %63, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %64, %62 ], [ %69, %66 ]
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi ptr [ %75, %72 ], [ %71, %70 ]
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 1
  %77 = load i8, ptr %76, align 8, !tbaa !5
  switch i8 %77, label %103 [
    i8 0, label %72
    i8 11, label %78
    i8 12, label %78
  ]

78:                                               ; preds = %72, %72
  %79 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %80 = tail call ptr @CopyObject(ptr noundef nonnull %75, ptr noundef %79) #2
  br label %103

81:                                               ; preds = %51, %57
  %82 = getelementptr inbounds %struct.LIST, ptr %50, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, %18
  br i1 %84, label %85, label %49

85:                                               ; preds = %81, %45
  %86 = load ptr, ptr %14, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.symbol_type, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %103, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  %92 = load i8, ptr %91, align 8, !tbaa !5
  switch i8 %92, label %103 [
    i8 11, label %93
    i8 12, label %93
    i8 2, label %96
  ]

93:                                               ; preds = %90, %90
  %94 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  %95 = tail call ptr @CopyObject(ptr noundef nonnull %88, ptr noundef nonnull %94) #2
  br label %103

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.closure_type, ptr %88, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  %101 = add i8 %100, 112
  %102 = icmp ult i8 %101, 3
  br i1 %102, label %6, label %103

103:                                              ; preds = %85, %90, %96, %13, %72, %93, %78
  %104 = phi ptr [ %80, %78 ], [ %95, %93 ], [ null, %72 ], [ null, %13 ], [ null, %96 ], [ null, %90 ], [ null, %85 ]
  ret ptr %104
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}

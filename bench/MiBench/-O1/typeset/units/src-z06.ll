; ModuleID = 'src/z06.c'
source_filename = "src/z06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"OptimizeCase:  type(x) != CASE!\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"SetScope: type(env) != ENV!\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SetScope: LastDown(y)!\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SetScope: type(yenv) != ENV!\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"cross reference database file name %s is too long\00", align 1
@cross_name = internal unnamed_addr global ptr null, align 8
@ttop = internal unnamed_addr global i32 -1, align 4
@StartSym = external local_unnamed_addr global ptr, align 8
@tok_stack = internal unnamed_addr global [100 x ptr] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [32 x i8] c"expression is too deeply nested\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Parse: *token!\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"exiting now\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"langdef\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"%s expected after %s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"@Use\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"%s or %s tag not allowed here\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"invalid parameter of %s\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"symbol %s occurs in two %s clauses\00", align 1
@AllowCrossDb = external local_unnamed_addr global i32, align 4
@NewCrossDb = external local_unnamed_addr global ptr, align 8
@InMemoryDbIndexes = external local_unnamed_addr global i32, align 4
@OldCrossDb = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [30 x i8] c"symbol %s unknown or misspelt\00", align 1
@unknown_count = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [52 x i8] c"too many errors (%s lines missing or out of order?)\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@otop = internal unnamed_addr global i32 -1, align 4
@obj_stack = internal unnamed_addr global [100 x ptr] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"right parameter of %s or %s must be enclosed in braces\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@VerbatimSym = external local_unnamed_addr global ptr, align 8
@RawVerbatimSym = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [24 x i8] c"unexpected end of input\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"%s replaced by %s\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"unknown or misspelt symbol %s after %s deleted\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"symbol expected after %s\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"%s symbol out of place\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"error in cross reference database\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"symbol expected following %s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"%s clause(s) changed from previous run\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s must follow named parameter %s\00", align 1
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [23 x i8] c"Parse: type(y) != PAR!\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"named parameter %s of %s appears twice\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"compulsory option %s missing from %s\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"%s out of place here (%s has no right parameter)\00", align 1
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [24 x i8] c"Parse: cannot undo rpar\00", align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [24 x i8] c"Parse: cannot undo lpar\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"right parameter of %s must be enclosed in braces\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"body parameter of %s must be enclosed in braces\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"invalid left parameter of %s\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Parse:\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"left parameter of %s is not a symbol (or not visible)\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"unmatched %s (inserted %s)\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Reduce: unmatched\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"unmatched %s; inserted %s at%s (after %s)\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"unmatched %s not enclosed in anything\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"%s %s appended at end of file to match %s at%s\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"%s replaced by %s %s to match %s at%s\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"%s %s replaced by %s %s to match %s at%s\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Reduce:\00", align 1
@CommandOptions = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [33 x i8] c"ParseEnvClosure: type(t) != ENV!\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"syntax error in cross reference database\00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [39 x i8] c"ParseEnvClosure: type(res) != CLOSURE!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @OptimizeCase(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i8 %5, 52
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.1) #6
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %11, %10 ], [ %15, %12 ]
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %12, label %19

19:                                               ; preds = %12
  store i32 1, ptr %3, align 4, !tbaa !10
  store ptr null, ptr %2, align 8, !tbaa !8
  switch i8 %17, label %102 [
    i8 55, label %24
    i8 17, label %20
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %44, label %26

24:                                               ; preds = %19
  call fastcc void @check_yield(ptr noundef nonnull %15, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %25 = load i32, ptr %3, align 4, !tbaa !10
  br label %44

26:                                               ; preds = %20, %37
  %27 = phi i32 [ %38, %37 ], [ 1, %20 ]
  %28 = phi ptr [ %40, %37 ], [ %22, %20 ]
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %32, %29 ], [ %28, %26 ]
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !5
  switch i8 %34, label %102 [
    i8 0, label %29
    i8 1, label %37
    i8 55, label %35
  ]

35:                                               ; preds = %29
  call fastcc void @check_yield(ptr noundef nonnull %32, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %36 = load i32, ptr %3, align 4
  br label %37

37:                                               ; preds = %29, %35
  %38 = phi i32 [ %36, %35 ], [ %27, %29 ]
  %39 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp ne ptr %40, %15
  %42 = icmp ne i32 %38, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %26, label %44

44:                                               ; preds = %37, %20, %24
  %45 = phi i32 [ 1, %20 ], [ %25, %24 ], [ %38, %37 ]
  %46 = icmp ne i32 %45, 0
  %47 = load ptr, ptr %2, align 8
  %48 = icmp ne ptr %47, null
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %102

50:                                               ; preds = %44
  %51 = load ptr, ptr %47, align 8, !tbaa !5
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi ptr [ %51, %50 ], [ %55, %52 ]
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %53, i64 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 1
  %57 = load i8, ptr %56, align 8, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %52, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %61, ptr @xx_link, align 8, !tbaa !8
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = icmp eq ptr %63, %61
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  store ptr %63, ptr @zz_res, align 8, !tbaa !8
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1
  store ptr %67, ptr %68, align 8, !tbaa !5
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1, i32 1
  store ptr %63, ptr %69, align 8, !tbaa !5
  store ptr %61, ptr %62, align 8, !tbaa !5
  store ptr %61, ptr %66, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %59, %65
  store ptr %61, ptr @zz_hold, align 8, !tbaa !8
  %71 = getelementptr inbounds %struct.LIST, ptr %61, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = icmp eq ptr %72, %61
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  store ptr %72, ptr @zz_res, align 8, !tbaa !8
  %75 = load ptr, ptr %61, align 8, !tbaa !5
  store ptr %75, ptr %72, align 8, !tbaa !5
  %76 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %77 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.LIST, ptr %78, i64 0, i32 1
  store ptr %76, ptr %79, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  store ptr %77, ptr %80, align 8, !tbaa !5
  store ptr %77, ptr %77, align 8, !tbaa !5
  %81 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %82

82:                                               ; preds = %70, %74
  %83 = phi ptr [ %61, %70 ], [ %81, %74 ]
  store ptr %83, ptr @zz_hold, align 8, !tbaa !8
  %84 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  %85 = load i8, ptr %84, align 8, !tbaa !5
  %86 = add i8 %85, -11
  %87 = icmp ult i8 %86, 2
  %88 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1, i32 0, i32 1
  %89 = zext i8 %85 to i64
  %90 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %89
  %91 = select i1 %87, ptr %88, ptr %90
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = zext i8 %92 to i32
  store i32 %93, ptr @zz_size, align 4, !tbaa !10
  %94 = zext i8 %92 to i64
  %95 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !8
  store ptr %96, ptr %83, align 8, !tbaa !5
  %97 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %98 = load i32, ptr @zz_size, align 4, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %99
  store ptr %97, ptr %100, align 8, !tbaa !8
  %101 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #6
  br label %102

102:                                              ; preds = %29, %19, %44, %82
  %103 = phi ptr [ %55, %82 ], [ %0, %44 ], [ %0, %19 ], [ %0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret ptr %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_yield(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %9, %6 ]
  %8 = getelementptr inbounds [2 x %struct.LIST], ptr %7, i64 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !5
  switch i8 %11, label %57 [
    i8 0, label %6
    i8 11, label %18
    i8 12, label %18
    i8 17, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %60, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 4
  br label %31

18:                                               ; preds = %6, %6
  %19 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 4
  %20 = load ptr, ptr @BackEnd, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.back_end_rec, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(5) @.str.57) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25, %18
  %29 = load ptr, ptr %1, align 8, !tbaa !8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %60

31:                                               ; preds = %16, %53
  %32 = phi ptr [ %14, %16 ], [ %55, %53 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %32, %31 ]
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !5
  switch i8 %38, label %57 [
    i8 0, label %33
    i8 1, label %53
    i8 11, label %39
    i8 12, label %39
  ]

39:                                               ; preds = %33, %33
  %40 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 4
  %41 = load ptr, ptr @BackEnd, align 8, !tbaa !8
  %42 = getelementptr inbounds %struct.back_end_rec, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.57) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %39
  %50 = load ptr, ptr %1, align 8, !tbaa !8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store ptr %0, ptr %1, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %33, %49, %52, %46
  %54 = getelementptr inbounds %struct.LIST, ptr %32, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, %9
  br i1 %56, label %60, label %31

57:                                               ; preds = %6, %33
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %58

58:                                               ; preds = %57, %28
  %59 = phi ptr [ %0, %28 ], [ null, %57 ]
  store ptr %59, ptr %1, align 8, !tbaa !8
  br label %60

60:                                               ; preds = %53, %58, %12, %25, %28
  ret void
}

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetScope(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i8 %7, 82
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.2) #6
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %60, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %16, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !5
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %27, ptr noundef nonnull @.str.3) #6
  %29 = load ptr, ptr %13, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %29, %26 ], [ %14, %23 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !5
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %19, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi ptr [ %32, %30 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi ptr [ %41, %38 ], [ %37, %36 ]
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %39, i64 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  %43 = load i8, ptr %42, align 8, !tbaa !5
  switch i8 %43, label %44 [
    i8 0, label %38
    i8 82, label %47
  ]

44:                                               ; preds = %38
  %45 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %46 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %45, ptr noundef nonnull @.str.4) #6
  br label %47

47:                                               ; preds = %38, %44
  tail call void @SetScope(ptr noundef nonnull %41, ptr noundef %1, i32 noundef 0)
  %48 = icmp eq i32 %2, 0
  %49 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  br i1 %48, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.symbol_type, ptr %50, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = icmp ne ptr %53, null
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %47, %51
  %57 = phi i32 [ %55, %51 ], [ 1, %47 ]
  tail call void @PushScope(ptr noundef %50, i32 noundef 0, i32 noundef %57) #6
  %58 = load i32, ptr %1, align 4, !tbaa !10
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %1, align 4, !tbaa !10
  br label %60

60:                                               ; preds = %56, %12
  ret void
}

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InitParser(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %3 = icmp ugt i64 %2, 2047
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %5, ptr noundef %0) #6
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %9 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %0, ptr noundef %8) #6
  store ptr %9, ptr @cross_name, align 8, !tbaa !8
  %10 = load i32, ptr @ttop, align 4, !tbaa !10
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @ttop, align 4, !tbaa !10
  %12 = icmp slt i32 %10, 99
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %15 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %16 = tail call ptr @NewToken(i8 noundef zeroext 110, ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100, ptr noundef %15) #6
  %17 = load i32, ptr @ttop, align 4, !tbaa !10
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %18
  store ptr %16, ptr %19, align 8, !tbaa !8
  br label %26

20:                                               ; preds = %7
  %21 = zext nneg i32 %10 to i64
  %22 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %24) #6
  br label %26

26:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Parse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.STYLE, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %13 = load i32, ptr @ttop, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %14 = load ptr, ptr %0, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !5
  switch i8 %16, label %17 [
    i8 102, label %21
    i8 104, label %21
  ]

17:                                               ; preds = %4
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @.str.7) #6
  %20 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %17, %4, %4
  %22 = phi i32 [ %20, %17 ], [ %13, %4 ], [ %13, %4 ]
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @ttop, align 4, !tbaa !10
  %24 = icmp slt i32 %22, 99
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !8
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !8
  br label %35

29:                                               ; preds = %21
  %30 = zext nneg i32 %22 to i64
  %31 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %34 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %33) #6
  br label %35

35:                                               ; preds = %29, %25
  %36 = tail call ptr @LexGetToken() #6
  store ptr %36, ptr %5, align 8, !tbaa !8
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %222, label %38

38:                                               ; preds = %35
  call void @ReadDefinitions(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext -113) #6
  %39 = call i32 @ErrorSeen() #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %5, align 8, !tbaa !8
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %44 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %43) #6
  br label %45

45:                                               ; preds = %41, %38
  %46 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %222

48:                                               ; preds = %45
  %49 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !5
  %50 = zext i8 %49 to i32
  store i32 %50, ptr @zz_size, align 4, !tbaa !10
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %57 = call ptr @GetMemory(i32 noundef %50, ptr noundef %56) #6
  store ptr %57, ptr @zz_hold, align 8, !tbaa !8
  br label %62

58:                                               ; preds = %48
  store ptr %53, ptr @zz_hold, align 8, !tbaa !8
  %59 = load ptr, ptr %53, align 8, !tbaa !5
  %60 = zext i8 %49 to i64
  %61 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %60
  store ptr %59, ptr %61, align 8, !tbaa !8
  br label %62

62:                                               ; preds = %55, %58
  %63 = phi ptr [ %57, %55 ], [ %53, %58 ]
  %64 = getelementptr inbounds %struct.word_type, ptr %63, i64 0, i32 1
  store i8 82, ptr %64, align 8, !tbaa !5
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1, i32 1
  store ptr %63, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1
  store ptr %63, ptr %66, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.LIST, ptr %63, i64 0, i32 1
  store ptr %63, ptr %67, align 8, !tbaa !5
  store ptr %63, ptr %63, align 8, !tbaa !5
  store ptr %63, ptr %6, align 8, !tbaa !8
  br label %68

68:                                               ; preds = %163, %62
  %69 = load ptr, ptr %5, align 8, !tbaa !8
  %70 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !5
  switch i8 %71, label %206 [
    i8 11, label %72
    i8 106, label %98
    i8 114, label %164
    i8 115, label %164
    i8 116, label %185
    i8 117, label %185
  ]

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 4
  %74 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(4) @.str.10) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %72
  %77 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(8) @.str.11) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(6) @.str.12) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(7) @.str.13) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(7) @.str.14) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(7) @.str.15) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %206

91:                                               ; preds = %88, %85, %82, %79, %76, %72
  call void @ReadDefinitions(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext -113) #6
  %92 = call i32 @ErrorSeen() #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %163, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %5, align 8, !tbaa !8
  %96 = getelementptr inbounds %struct.word_type, ptr %95, i64 0, i32 1
  %97 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 39, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %96) #6
  br label %163

98:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6
  store ptr %69, ptr @zz_hold, align 8, !tbaa !8
  %99 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 106), align 1, !tbaa !5
  %100 = zext i8 %99 to i32
  store i32 %100, ptr @zz_size, align 4, !tbaa !10
  %101 = zext i8 %99 to i64
  %102 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !8
  store ptr %103, ptr %69, align 8, !tbaa !5
  %104 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %105 = load i32, ptr @zz_size, align 4, !tbaa !10
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %106
  store ptr %104, ptr %107, align 8, !tbaa !8
  %108 = call ptr @LexGetToken() #6
  store ptr %108, ptr %5, align 8, !tbaa !8
  %109 = getelementptr inbounds %struct.word_type, ptr %108, i64 0, i32 1
  %110 = load i8, ptr %109, align 8, !tbaa !5
  %111 = icmp eq i8 %110, 102
  br i1 %111, label %114, label %112

112:                                              ; preds = %98
  %113 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 15, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %109, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #6
  br label %114

114:                                              ; preds = %112, %98
  %115 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %116 = getelementptr inbounds %struct.word_type, ptr %115, i64 0, i32 1
  %117 = load i8, ptr %116, align 8, !tbaa !5
  switch i8 %117, label %156 [
    i8 6, label %118
    i8 7, label %118
    i8 2, label %141
  ]

118:                                              ; preds = %114, %114
  %119 = getelementptr inbounds %struct.LIST, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi ptr [ %120, %118 ], [ %124, %121 ]
  %123 = getelementptr inbounds [2 x %struct.LIST], ptr %122, i64 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.word_type, ptr %124, i64 0, i32 1
  %126 = load i8, ptr %125, align 8, !tbaa !5
  switch i8 %126, label %139 [
    i8 0, label %121
    i8 2, label %127
  ]

127:                                              ; preds = %121
  store ptr null, ptr %10, align 8, !tbaa !8
  %128 = load ptr, ptr %6, align 8, !tbaa !8
  %129 = call ptr @CrossExpand(ptr noundef %115, ptr noundef %128, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  %130 = load ptr, ptr %10, align 8, !tbaa !8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  %134 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %133, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6
  br label %135

135:                                              ; preds = %132, %127
  call fastcc void @HuntCommandOptions(ptr noundef %129)
  %136 = load ptr, ptr %11, align 8, !tbaa !8
  call void @AttachEnv(ptr noundef %136, ptr noundef %129) #6
  %137 = load ptr, ptr %6, align 8, !tbaa !8
  %138 = call ptr @SetEnv(ptr noundef %129, ptr noundef %137) #6
  store ptr %138, ptr %6, align 8, !tbaa !8
  br label %158

139:                                              ; preds = %121
  %140 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 17, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %116, ptr noundef nonnull @.str.18) #6
  br label %158

141:                                              ; preds = %114
  %142 = getelementptr inbounds %struct.closure_type, ptr %115, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.symbol_type, ptr %143, i64 0, i32 11
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = call ptr @SymName(ptr noundef nonnull %143) #6
  %149 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 18, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %116, ptr noundef %148, ptr noundef nonnull @.str.18) #6
  %150 = load ptr, ptr %142, align 8, !tbaa !5
  br label %151

151:                                              ; preds = %147, %141
  %152 = phi ptr [ %150, %147 ], [ %143, %141 ]
  %153 = getelementptr inbounds %struct.symbol_type, ptr %152, i64 0, i32 11
  store ptr %115, ptr %153, align 8, !tbaa !5
  call fastcc void @HuntCommandOptions(ptr noundef nonnull %115)
  %154 = load ptr, ptr %6, align 8, !tbaa !8
  call void @AttachEnv(ptr noundef %154, ptr noundef nonnull %115) #6
  %155 = call ptr @SetEnv(ptr noundef nonnull %115, ptr noundef null) #6
  store ptr %155, ptr %6, align 8, !tbaa !8
  br label %158

156:                                              ; preds = %114
  %157 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %116, ptr noundef nonnull @.str.18) #6
  br label %158

158:                                              ; preds = %135, %139, %151, %156
  %159 = phi ptr [ %115, %151 ], [ %115, %156 ], [ %129, %135 ], [ %115, %139 ]
  %160 = getelementptr inbounds %struct.closure_type, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  call void @PushScope(ptr noundef %161, i32 noundef 0, i32 noundef 1) #6
  %162 = call ptr @LexGetToken() #6
  store ptr %162, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %163

163:                                              ; preds = %158, %185, %164, %91, %94
  br label %68

164:                                              ; preds = %68, %68
  %165 = zext nneg i8 %71 to i32
  call void @ReadPrependDef(i32 noundef %165, ptr noundef %1) #6
  %166 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %166, ptr @zz_hold, align 8, !tbaa !8
  %167 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1
  %168 = load i8, ptr %167, align 8, !tbaa !5
  %169 = add i8 %168, -11
  %170 = icmp ult i8 %169, 2
  %171 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1, i32 0, i32 1
  %172 = zext i8 %168 to i64
  %173 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %172
  %174 = select i1 %170, ptr %171, ptr %173
  %175 = load i8, ptr %174, align 1, !tbaa !5
  %176 = zext i8 %175 to i32
  store i32 %176, ptr @zz_size, align 4, !tbaa !10
  %177 = zext i8 %175 to i64
  %178 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !8
  store ptr %179, ptr %166, align 8, !tbaa !5
  %180 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %181 = load i32, ptr @zz_size, align 4, !tbaa !10
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %182
  store ptr %180, ptr %183, align 8, !tbaa !8
  %184 = call ptr @LexGetToken() #6
  store ptr %184, ptr %5, align 8, !tbaa !8
  br label %163

185:                                              ; preds = %68, %68
  %186 = zext nneg i8 %71 to i32
  call void @ReadDatabaseDef(i32 noundef %186, ptr noundef %1) #6
  %187 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %187, ptr @zz_hold, align 8, !tbaa !8
  %188 = getelementptr inbounds %struct.word_type, ptr %187, i64 0, i32 1
  %189 = load i8, ptr %188, align 8, !tbaa !5
  %190 = add i8 %189, -11
  %191 = icmp ult i8 %190, 2
  %192 = getelementptr inbounds %struct.word_type, ptr %187, i64 0, i32 1, i32 0, i32 1
  %193 = zext i8 %189 to i64
  %194 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %193
  %195 = select i1 %191, ptr %192, ptr %194
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = zext i8 %196 to i32
  store i32 %197, ptr @zz_size, align 4, !tbaa !10
  %198 = zext i8 %196 to i64
  %199 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !8
  store ptr %200, ptr %187, align 8, !tbaa !5
  %201 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %202 = load i32, ptr @zz_size, align 4, !tbaa !10
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %203
  store ptr %201, ptr %204, align 8, !tbaa !8
  %205 = call ptr @LexGetToken() #6
  store ptr %205, ptr %5, align 8, !tbaa !8
  br label %163

206:                                              ; preds = %68, %88
  %207 = load i32, ptr @AllowCrossDb, align 4, !tbaa !10
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr @cross_name, align 8, !tbaa !8
  %211 = getelementptr inbounds %struct.word_type, ptr %210, i64 0, i32 4
  %212 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %213 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %211, ptr noundef %212) #6
  %214 = call ptr @DbCreate(ptr noundef %213) #6
  store ptr %214, ptr @NewCrossDb, align 8, !tbaa !8
  %215 = load ptr, ptr @cross_name, align 8, !tbaa !8
  %216 = load i32, ptr @InMemoryDbIndexes, align 4, !tbaa !10
  %217 = call ptr @DbLoad(ptr noundef %215, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %216) #6
  br label %219

218:                                              ; preds = %206
  store ptr null, ptr @NewCrossDb, align 8, !tbaa !8
  br label %219

219:                                              ; preds = %218, %209
  %220 = phi ptr [ null, %218 ], [ %217, %209 ]
  store ptr %220, ptr @OldCrossDb, align 8, !tbaa !8
  call void @FlattenUses() #6
  %221 = load ptr, ptr %6, align 8, !tbaa !8
  call void @TransferInit(ptr noundef %221) #6
  br label %222

222:                                              ; preds = %45, %219, %35
  %223 = icmp ne ptr %1, null
  %224 = getelementptr inbounds i8, ptr %1, i64 41
  %225 = icmp eq i32 %3, 0
  br label %226

226:                                              ; preds = %2772, %222
  %227 = phi i32 [ 0, %222 ], [ %2773, %2772 ]
  %228 = load ptr, ptr %5, align 8, !tbaa !8
  %229 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 1
  %230 = load i8, ptr %229, align 8, !tbaa !5
  switch i8 %230, label %3943 [
    i8 11, label %232
    i8 12, label %368
    i8 19, label %231
    i8 18, label %231
    i8 17, label %231
    i8 6, label %681
    i8 7, label %681
    i8 5, label %681
    i8 4, label %681
    i8 20, label %681
    i8 21, label %681
    i8 22, label %681
    i8 23, label %681
    i8 24, label %681
    i8 25, label %681
    i8 26, label %681
    i8 27, label %681
    i8 28, label %681
    i8 29, label %681
    i8 30, label %681
    i8 31, label %681
    i8 32, label %681
    i8 33, label %681
    i8 34, label %681
    i8 35, label %681
    i8 36, label %681
    i8 37, label %681
    i8 38, label %681
    i8 39, label %681
    i8 40, label %681
    i8 41, label %681
    i8 44, label %681
    i8 42, label %681
    i8 43, label %681
    i8 45, label %681
    i8 46, label %681
    i8 47, label %681
    i8 48, label %681
    i8 49, label %681
    i8 50, label %681
    i8 51, label %681
    i8 52, label %681
    i8 55, label %681
    i8 56, label %681
    i8 58, label %681
    i8 59, label %681
    i8 60, label %681
    i8 61, label %681
    i8 62, label %681
    i8 63, label %681
    i8 64, label %681
    i8 65, label %681
    i8 66, label %681
    i8 67, label %681
    i8 68, label %681
    i8 69, label %681
    i8 70, label %681
    i8 71, label %681
    i8 72, label %681
    i8 73, label %681
    i8 74, label %681
    i8 75, label %681
    i8 76, label %681
    i8 77, label %681
    i8 78, label %681
    i8 93, label %681
    i8 94, label %681
    i8 95, label %681
    i8 96, label %681
    i8 97, label %681
    i8 98, label %681
    i8 99, label %681
    i8 53, label %841
    i8 54, label %841
    i8 79, label %1143
    i8 80, label %1143
    i8 111, label %1303
    i8 104, label %1305
    i8 102, label %1313
    i8 105, label %1417
    i8 103, label %1573
    i8 106, label %1626
    i8 107, label %1626
    i8 114, label %1626
    i8 115, label %1626
    i8 116, label %1626
    i8 117, label %1626
    i8 82, label %1631
    i8 83, label %1735
    i8 84, label %1870
    i8 85, label %2008
    i8 86, label %2130
    i8 87, label %2313
    i8 90, label %2437
    i8 89, label %2625
    i8 2, label %2652
    i8 92, label %3843
  ]

231:                                              ; preds = %226, %226, %226
  br label %469

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 4
  %234 = load i8, ptr %233, align 8, !tbaa !5
  %235 = icmp eq i8 %234, 64
  br i1 %235, label %236, label %256

236:                                              ; preds = %232
  %237 = icmp eq i32 %227, 1
  br i1 %237, label %238, label %247

238:                                              ; preds = %236
  %239 = getelementptr inbounds i8, ptr %228, i64 42
  %240 = load i8, ptr %239, align 2, !tbaa !5
  %241 = zext i8 %240 to i32
  %242 = getelementptr inbounds i8, ptr %228, i64 41
  %243 = load i8, ptr %242, align 1, !tbaa !5
  %244 = zext i8 %243 to i32
  %245 = sub nsw i32 0, %244
  %246 = icmp eq i32 %241, %245
  br i1 %246, label %266, label %247

247:                                              ; preds = %238, %236
  %248 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 20, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef nonnull %229, ptr noundef nonnull %233) #6
  %249 = load i32, ptr @unknown_count, align 4, !tbaa !10
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr @unknown_count, align 4, !tbaa !10
  %251 = icmp sgt i32 %249, 24
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load ptr, ptr %5, align 8, !tbaa !8
  %254 = getelementptr inbounds %struct.word_type, ptr %253, i64 0, i32 1
  %255 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull %254, ptr noundef nonnull @.str.26) #6
  br label %256

256:                                              ; preds = %247, %252, %232
  %257 = icmp eq i32 %227, 0
  br i1 %257, label %352, label %258

258:                                              ; preds = %256
  %259 = load ptr, ptr %5, align 8, !tbaa !8
  %260 = getelementptr inbounds i8, ptr %259, i64 41
  %261 = load i8, ptr %260, align 1, !tbaa !5
  %262 = getelementptr inbounds i8, ptr %259, i64 42
  %263 = load i8, ptr %262, align 2, !tbaa !5
  %264 = zext i8 %261 to i32
  %265 = zext i8 %263 to i32
  br label %266

266:                                              ; preds = %258, %238
  %267 = phi i32 [ %265, %258 ], [ 0, %238 ]
  %268 = phi i32 [ %264, %258 ], [ %244, %238 ]
  %269 = phi ptr [ %259, %258 ], [ %228, %238 ]
  %270 = sub nsw i32 0, %267
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.word_type, ptr %269, i64 0, i32 1
  %274 = load i8, ptr %273, align 8, !tbaa !5
  %275 = icmp eq i8 %274, 102
  %276 = icmp eq i32 %227, 2
  %277 = select i1 %275, i1 true, i1 %276
  %278 = select i1 %277, i8 7, i8 103
  br label %279

279:                                              ; preds = %266, %272
  %280 = phi i32 [ 100, %266 ], [ 101, %272 ]
  %281 = phi i8 [ 7, %266 ], [ %278, %272 ]
  br label %282

282:                                              ; preds = %279, %290
  %283 = load i32, ptr @ttop, align 4, !tbaa !10
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !8
  %287 = getelementptr inbounds %struct.word_type, ptr %286, i64 0, i32 2
  %288 = load i8, ptr %287, align 8, !tbaa !5
  %289 = icmp ugt i8 %281, %288
  br i1 %289, label %293, label %290

290:                                              ; preds = %282
  %291 = call fastcc i32 @Reduce(), !range !14
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %352, label %282

293:                                              ; preds = %282
  %294 = zext nneg i32 %280 to i64
  %295 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = zext i8 %296 to i32
  store i32 %297, ptr @zz_size, align 4, !tbaa !10
  %298 = zext i8 %296 to i64
  %299 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %293
  %303 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %304 = call ptr @GetMemory(i32 noundef %297, ptr noundef %303) #6
  store ptr %304, ptr @zz_hold, align 8, !tbaa !8
  %305 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %308

306:                                              ; preds = %293
  store ptr %300, ptr @zz_hold, align 8, !tbaa !8
  %307 = load ptr, ptr %300, align 8, !tbaa !5
  store ptr %307, ptr %299, align 8, !tbaa !8
  br label %308

308:                                              ; preds = %302, %306
  %309 = phi i32 [ %305, %302 ], [ %283, %306 ]
  %310 = phi ptr [ %304, %302 ], [ %300, %306 ]
  %311 = trunc i32 %280 to i8
  %312 = getelementptr inbounds %struct.word_type, ptr %310, i64 0, i32 1
  store i8 %311, ptr %312, align 8, !tbaa !5
  %313 = getelementptr inbounds [2 x %struct.LIST], ptr %310, i64 0, i64 1, i32 1
  store ptr %310, ptr %313, align 8, !tbaa !5
  %314 = getelementptr inbounds [2 x %struct.LIST], ptr %310, i64 0, i64 1
  store ptr %310, ptr %314, align 8, !tbaa !5
  %315 = getelementptr inbounds %struct.LIST, ptr %310, i64 0, i32 1
  store ptr %310, ptr %315, align 8, !tbaa !5
  store ptr %310, ptr %310, align 8, !tbaa !5
  %316 = getelementptr inbounds %struct.word_type, ptr %310, i64 0, i32 2
  store i8 %281, ptr %316, align 8, !tbaa !5
  %317 = load ptr, ptr %5, align 8, !tbaa !8
  %318 = getelementptr inbounds i8, ptr %317, i64 42
  %319 = load i8, ptr %318, align 2, !tbaa !5
  %320 = getelementptr inbounds i8, ptr %310, i64 42
  store i8 %319, ptr %320, align 2, !tbaa !5
  %321 = getelementptr inbounds i8, ptr %317, i64 41
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = getelementptr inbounds i8, ptr %310, i64 41
  store i8 %322, ptr %323, align 1, !tbaa !5
  %324 = getelementptr inbounds %struct.gapobj_type, ptr %310, i64 0, i32 3
  %325 = load i16, ptr %324, align 4
  %326 = and i16 %325, -769
  %327 = or disjoint i16 %326, 512
  store i16 %327, ptr %324, align 4
  %328 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 1, i32 0, i32 2
  %329 = load i16, ptr %328, align 2, !tbaa !5
  %330 = getelementptr inbounds %struct.word_type, ptr %310, i64 0, i32 1, i32 0, i32 2
  store i16 %329, ptr %330, align 2, !tbaa !5
  %331 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 1, i32 0, i32 3
  %332 = load i32, ptr %331, align 4
  %333 = and i32 %332, 1048575
  %334 = getelementptr inbounds %struct.word_type, ptr %310, i64 0, i32 1, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  %336 = and i32 %335, -1048576
  %337 = or disjoint i32 %336, %333
  store i32 %337, ptr %334, align 4
  %338 = load i32, ptr %331, align 4
  %339 = and i32 %338, -1048576
  %340 = or disjoint i32 %339, %333
  store i32 %340, ptr %334, align 4
  %341 = add nsw i32 %309, 1
  store i32 %341, ptr @ttop, align 4, !tbaa !10
  %342 = icmp slt i32 %309, 99
  br i1 %342, label %343, label %346

343:                                              ; preds = %308
  %344 = sext i32 %341 to i64
  %345 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %344
  store ptr %310, ptr %345, align 8, !tbaa !8
  br label %352

346:                                              ; preds = %308
  %347 = zext nneg i32 %309 to i64
  %348 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !8
  %350 = getelementptr inbounds %struct.word_type, ptr %349, i64 0, i32 1
  %351 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %350) #6
  br label %352

352:                                              ; preds = %290, %346, %343, %256
  %353 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %353, ptr @zz_hold, align 8, !tbaa !8
  %354 = load i32, ptr @otop, align 4, !tbaa !10
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr @otop, align 4, !tbaa !10
  %356 = icmp slt i32 %354, 99
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = sext i32 %355 to i64
  %359 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %358
  store ptr %353, ptr %359, align 8, !tbaa !8
  br label %366

360:                                              ; preds = %352
  %361 = zext nneg i32 %354 to i64
  %362 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !8
  %364 = getelementptr inbounds %struct.word_type, ptr %363, i64 0, i32 1
  %365 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %364) #6
  br label %366

366:                                              ; preds = %360, %357
  %367 = call ptr @LexGetToken() #6
  store ptr %367, ptr %5, align 8, !tbaa !8
  br label %2772

368:                                              ; preds = %226
  %369 = icmp eq i32 %227, 0
  br i1 %369, label %453, label %370

370:                                              ; preds = %368
  %371 = getelementptr inbounds i8, ptr %228, i64 41
  %372 = load i8, ptr %371, align 1, !tbaa !5
  %373 = zext i8 %372 to i32
  %374 = getelementptr inbounds i8, ptr %228, i64 42
  %375 = load i8, ptr %374, align 2, !tbaa !5
  %376 = zext i8 %375 to i32
  %377 = sub nsw i32 0, %376
  %378 = icmp eq i32 %373, %377
  %379 = icmp eq i32 %227, 2
  %380 = select i1 %378, i32 101, i32 100
  %381 = select i1 %379, i8 7, i8 103
  %382 = select i1 %378, i8 %381, i8 7
  br label %383

383:                                              ; preds = %370, %391
  %384 = load i32, ptr @ttop, align 4, !tbaa !10
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !8
  %388 = getelementptr inbounds %struct.word_type, ptr %387, i64 0, i32 2
  %389 = load i8, ptr %388, align 8, !tbaa !5
  %390 = icmp ugt i8 %382, %389
  br i1 %390, label %394, label %391

391:                                              ; preds = %383
  %392 = call fastcc i32 @Reduce(), !range !14
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %453, label %383

394:                                              ; preds = %383
  %395 = zext nneg i32 %380 to i64
  %396 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !5
  %398 = zext i8 %397 to i32
  store i32 %398, ptr @zz_size, align 4, !tbaa !10
  %399 = zext i8 %397 to i64
  %400 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !8
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %407

403:                                              ; preds = %394
  %404 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %405 = call ptr @GetMemory(i32 noundef %398, ptr noundef %404) #6
  store ptr %405, ptr @zz_hold, align 8, !tbaa !8
  %406 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %409

407:                                              ; preds = %394
  store ptr %401, ptr @zz_hold, align 8, !tbaa !8
  %408 = load ptr, ptr %401, align 8, !tbaa !5
  store ptr %408, ptr %400, align 8, !tbaa !8
  br label %409

409:                                              ; preds = %403, %407
  %410 = phi i32 [ %406, %403 ], [ %384, %407 ]
  %411 = phi ptr [ %405, %403 ], [ %401, %407 ]
  %412 = trunc i32 %380 to i8
  %413 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 1
  store i8 %412, ptr %413, align 8, !tbaa !5
  %414 = getelementptr inbounds [2 x %struct.LIST], ptr %411, i64 0, i64 1, i32 1
  store ptr %411, ptr %414, align 8, !tbaa !5
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %411, i64 0, i64 1
  store ptr %411, ptr %415, align 8, !tbaa !5
  %416 = getelementptr inbounds %struct.LIST, ptr %411, i64 0, i32 1
  store ptr %411, ptr %416, align 8, !tbaa !5
  store ptr %411, ptr %411, align 8, !tbaa !5
  %417 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 2
  store i8 %382, ptr %417, align 8, !tbaa !5
  %418 = load ptr, ptr %5, align 8, !tbaa !8
  %419 = getelementptr inbounds i8, ptr %418, i64 42
  %420 = load i8, ptr %419, align 2, !tbaa !5
  %421 = getelementptr inbounds i8, ptr %411, i64 42
  store i8 %420, ptr %421, align 2, !tbaa !5
  %422 = getelementptr inbounds i8, ptr %418, i64 41
  %423 = load i8, ptr %422, align 1, !tbaa !5
  %424 = getelementptr inbounds i8, ptr %411, i64 41
  store i8 %423, ptr %424, align 1, !tbaa !5
  %425 = getelementptr inbounds %struct.gapobj_type, ptr %411, i64 0, i32 3
  %426 = load i16, ptr %425, align 4
  %427 = and i16 %426, -769
  %428 = or disjoint i16 %427, 512
  store i16 %428, ptr %425, align 4
  %429 = getelementptr inbounds %struct.word_type, ptr %418, i64 0, i32 1, i32 0, i32 2
  %430 = load i16, ptr %429, align 2, !tbaa !5
  %431 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 1, i32 0, i32 2
  store i16 %430, ptr %431, align 2, !tbaa !5
  %432 = getelementptr inbounds %struct.word_type, ptr %418, i64 0, i32 1, i32 0, i32 3
  %433 = load i32, ptr %432, align 4
  %434 = and i32 %433, 1048575
  %435 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 1, i32 0, i32 3
  %436 = load i32, ptr %435, align 4
  %437 = and i32 %436, -1048576
  %438 = or disjoint i32 %437, %434
  store i32 %438, ptr %435, align 4
  %439 = load i32, ptr %432, align 4
  %440 = and i32 %439, -1048576
  %441 = or disjoint i32 %440, %434
  store i32 %441, ptr %435, align 4
  %442 = add nsw i32 %410, 1
  store i32 %442, ptr @ttop, align 4, !tbaa !10
  %443 = icmp slt i32 %410, 99
  br i1 %443, label %444, label %447

444:                                              ; preds = %409
  %445 = sext i32 %442 to i64
  %446 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %445
  store ptr %411, ptr %446, align 8, !tbaa !8
  br label %453

447:                                              ; preds = %409
  %448 = zext nneg i32 %410 to i64
  %449 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !8
  %451 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 1
  %452 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %451) #6
  br label %453

453:                                              ; preds = %391, %447, %444, %368
  %454 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %454, ptr @zz_hold, align 8, !tbaa !8
  %455 = load i32, ptr @otop, align 4, !tbaa !10
  %456 = add nsw i32 %455, 1
  store i32 %456, ptr @otop, align 4, !tbaa !10
  %457 = icmp slt i32 %455, 99
  br i1 %457, label %458, label %461

458:                                              ; preds = %453
  %459 = sext i32 %456 to i64
  %460 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %459
  store ptr %454, ptr %460, align 8, !tbaa !8
  br label %467

461:                                              ; preds = %453
  %462 = zext nneg i32 %455 to i64
  %463 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !8
  %465 = getelementptr inbounds %struct.word_type, ptr %464, i64 0, i32 1
  %466 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %465) #6
  br label %467

467:                                              ; preds = %461, %458
  %468 = call ptr @LexGetToken() #6
  store ptr %468, ptr %5, align 8, !tbaa !8
  br label %2772

469:                                              ; preds = %482, %231
  %470 = phi i32 [ %227, %231 ], [ %483, %482 ]
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %490

472:                                              ; preds = %469
  %473 = load ptr, ptr %5, align 8, !tbaa !8
  %474 = getelementptr inbounds %struct.word_type, ptr %473, i64 0, i32 1
  %475 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %474) #6
  store ptr %475, ptr @zz_hold, align 8, !tbaa !8
  %476 = load i32, ptr @otop, align 4, !tbaa !10
  %477 = add nsw i32 %476, 1
  store i32 %477, ptr @otop, align 4, !tbaa !10
  %478 = icmp slt i32 %476, 99
  br i1 %478, label %479, label %484

479:                                              ; preds = %472
  %480 = sext i32 %477 to i64
  %481 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %480
  store ptr %475, ptr %481, align 8, !tbaa !8
  br label %482

482:                                              ; preds = %479, %484, %501
  %483 = phi i32 [ %502, %501 ], [ 1, %484 ], [ 1, %479 ]
  br label %469

484:                                              ; preds = %472
  %485 = zext nneg i32 %476 to i64
  %486 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !8
  %488 = getelementptr inbounds %struct.word_type, ptr %487, i64 0, i32 1
  %489 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %488) #6
  br label %482

490:                                              ; preds = %469
  %491 = load i32, ptr @ttop, align 4, !tbaa !10
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !8
  %495 = getelementptr inbounds %struct.word_type, ptr %494, i64 0, i32 2
  %496 = load i8, ptr %495, align 8, !tbaa !5
  %497 = load ptr, ptr %5, align 8, !tbaa !8
  %498 = getelementptr inbounds %struct.word_type, ptr %497, i64 0, i32 2
  %499 = load i8, ptr %498, align 8, !tbaa !5
  %500 = icmp ult i8 %496, %499
  br i1 %500, label %507, label %501

501:                                              ; preds = %490
  %502 = call fastcc i32 @Reduce(), !range !14
  %503 = load i32, ptr @ttop, align 4, !tbaa !10
  %504 = icmp eq i32 %503, %13
  br i1 %504, label %505, label %482

505:                                              ; preds = %501
  %506 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

507:                                              ; preds = %490
  %508 = add nsw i32 %491, 1
  store i32 %508, ptr @ttop, align 4, !tbaa !10
  %509 = icmp slt i32 %491, 99
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = sext i32 %508 to i64
  %512 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %511
  store ptr %497, ptr %512, align 8, !tbaa !8
  br label %516

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.word_type, ptr %494, i64 0, i32 1
  %515 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %514) #6
  br label %516

516:                                              ; preds = %513, %510
  br i1 %225, label %587, label %517

517:                                              ; preds = %516
  %518 = load ptr, ptr %5, align 8, !tbaa !8
  %519 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 1
  %520 = load i8, ptr %519, align 8, !tbaa !5
  %521 = icmp eq i8 %520, 19
  br i1 %521, label %522, label %587

522:                                              ; preds = %517
  %523 = getelementptr inbounds %struct.closure_type, ptr %518, i64 0, i32 5
  %524 = load ptr, ptr %523, align 8, !tbaa !5
  %525 = getelementptr inbounds i8, ptr %524, i64 41
  %526 = load i24, ptr %525, align 1
  %527 = and i24 %526, 262144
  %528 = icmp eq i24 %527, 0
  br i1 %528, label %529, label %587

529:                                              ; preds = %522
  %530 = load i32, ptr @ttop, align 4, !tbaa !10
  %531 = add nsw i32 %530, -2
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !8
  %535 = getelementptr inbounds %struct.word_type, ptr %534, i64 0, i32 1
  %536 = load i8, ptr %535, align 8, !tbaa !5
  %537 = icmp eq i8 %536, 110
  br i1 %537, label %538, label %587

538:                                              ; preds = %529
  %539 = load i32, ptr @otop, align 4, !tbaa !10
  %540 = add nsw i32 %539, -1
  store i32 %540, ptr @otop, align 4, !tbaa !10
  %541 = sext i32 %539 to i64
  %542 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !8
  call void @TransferComponent(ptr noundef %543) #6
  %544 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 5), align 1, !tbaa !5
  %545 = zext i8 %544 to i32
  store i32 %545, ptr @zz_size, align 4, !tbaa !10
  %546 = zext i8 %544 to i64
  %547 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !8
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %553

550:                                              ; preds = %538
  %551 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %552 = call ptr @GetMemory(i32 noundef %545, ptr noundef %551) #6
  br label %555

553:                                              ; preds = %538
  store ptr %548, ptr @zz_hold, align 8, !tbaa !8
  %554 = load ptr, ptr %548, align 8, !tbaa !5
  store ptr %554, ptr %547, align 8, !tbaa !8
  br label %555

555:                                              ; preds = %550, %553
  %556 = phi ptr [ %552, %550 ], [ %548, %553 ]
  %557 = getelementptr inbounds %struct.word_type, ptr %556, i64 0, i32 1
  store i8 5, ptr %557, align 8, !tbaa !5
  %558 = getelementptr inbounds [2 x %struct.LIST], ptr %556, i64 0, i64 1, i32 1
  store ptr %556, ptr %558, align 8, !tbaa !5
  %559 = getelementptr inbounds [2 x %struct.LIST], ptr %556, i64 0, i64 1
  store ptr %556, ptr %559, align 8, !tbaa !5
  %560 = getelementptr inbounds %struct.LIST, ptr %556, i64 0, i32 1
  store ptr %556, ptr %560, align 8, !tbaa !5
  store ptr %556, ptr %556, align 8, !tbaa !5
  %561 = load ptr, ptr %5, align 8, !tbaa !8
  %562 = getelementptr inbounds %struct.word_type, ptr %561, i64 0, i32 1, i32 0, i32 2
  %563 = load i16, ptr %562, align 2, !tbaa !5
  %564 = getelementptr inbounds %struct.word_type, ptr %556, i64 0, i32 1, i32 0, i32 2
  store i16 %563, ptr %564, align 2, !tbaa !5
  %565 = getelementptr inbounds %struct.word_type, ptr %561, i64 0, i32 1, i32 0, i32 3
  %566 = load i32, ptr %565, align 4
  %567 = and i32 %566, 1048575
  %568 = getelementptr inbounds %struct.word_type, ptr %556, i64 0, i32 1, i32 0, i32 3
  %569 = load i32, ptr %568, align 4
  %570 = and i32 %569, -1048576
  %571 = or disjoint i32 %570, %567
  store i32 %571, ptr %568, align 4
  %572 = load i32, ptr %565, align 4
  %573 = and i32 %572, -1048576
  %574 = or disjoint i32 %573, %567
  store i32 %574, ptr %568, align 4
  store ptr %556, ptr @zz_hold, align 8, !tbaa !8
  %575 = load i32, ptr @otop, align 4, !tbaa !10
  %576 = add nsw i32 %575, 1
  store i32 %576, ptr @otop, align 4, !tbaa !10
  %577 = icmp slt i32 %575, 99
  br i1 %577, label %578, label %581

578:                                              ; preds = %555
  %579 = sext i32 %576 to i64
  %580 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %579
  store ptr %556, ptr %580, align 8, !tbaa !8
  br label %587

581:                                              ; preds = %555
  %582 = zext nneg i32 %575 to i64
  %583 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %582
  %584 = load ptr, ptr %583, align 8, !tbaa !8
  %585 = getelementptr inbounds %struct.word_type, ptr %584, i64 0, i32 1
  %586 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %585) #6
  br label %587

587:                                              ; preds = %578, %581, %529, %522, %517, %516
  %588 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %589 = zext i8 %588 to i32
  store i32 %589, ptr @zz_size, align 4, !tbaa !10
  %590 = zext i8 %588 to i64
  %591 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %590
  %592 = load ptr, ptr %591, align 8, !tbaa !8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %597

594:                                              ; preds = %587
  %595 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %596 = call ptr @GetMemory(i32 noundef %589, ptr noundef %595) #6
  store ptr %596, ptr @zz_hold, align 8, !tbaa !8
  br label %599

597:                                              ; preds = %587
  store ptr %592, ptr @zz_hold, align 8, !tbaa !8
  %598 = load ptr, ptr %592, align 8, !tbaa !5
  store ptr %598, ptr %591, align 8, !tbaa !8
  br label %599

599:                                              ; preds = %594, %597
  %600 = phi ptr [ %596, %594 ], [ %592, %597 ]
  %601 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1
  store i8 1, ptr %601, align 8, !tbaa !5
  %602 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1, i32 1
  store ptr %600, ptr %602, align 8, !tbaa !5
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1
  store ptr %600, ptr %603, align 8, !tbaa !5
  %604 = getelementptr inbounds %struct.LIST, ptr %600, i64 0, i32 1
  store ptr %600, ptr %604, align 8, !tbaa !5
  store ptr %600, ptr %600, align 8, !tbaa !5
  %605 = load ptr, ptr %5, align 8, !tbaa !8
  %606 = getelementptr inbounds %struct.closure_type, ptr %605, i64 0, i32 5
  %607 = load ptr, ptr %606, align 8, !tbaa !5
  %608 = getelementptr inbounds i8, ptr %607, i64 41
  %609 = load i24, ptr %608, align 1
  %610 = getelementptr inbounds %struct.gapobj_type, ptr %600, i64 0, i32 3
  %611 = load i16, ptr %610, align 4
  %612 = lshr i24 %609, 9
  %613 = trunc i24 %612 to i16
  %614 = and i16 %613, 256
  %615 = and i16 %611, -257
  %616 = or disjoint i16 %614, %615
  store i16 %616, ptr %610, align 4
  %617 = load ptr, ptr %606, align 8, !tbaa !5
  %618 = getelementptr inbounds i8, ptr %617, i64 41
  %619 = load i24, ptr %618, align 1
  %620 = lshr i24 %619, 9
  %621 = trunc i24 %620 to i16
  %622 = and i16 %621, 512
  %623 = and i16 %616, -513
  %624 = or disjoint i16 %622, %623
  store i16 %624, ptr %610, align 4
  %625 = getelementptr inbounds i8, ptr %605, i64 41
  %626 = load i8, ptr %625, align 1, !tbaa !5
  %627 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 2
  %628 = getelementptr inbounds i8, ptr %600, i64 41
  store i8 %626, ptr %628, align 1, !tbaa !5
  %629 = getelementptr inbounds i8, ptr %605, i64 42
  %630 = load i8, ptr %629, align 2, !tbaa !5
  %631 = getelementptr inbounds i8, ptr %600, i64 42
  store i8 %630, ptr %631, align 2, !tbaa !5
  store i8 102, ptr %627, align 8, !tbaa !5
  %632 = getelementptr inbounds %struct.word_type, ptr %605, i64 0, i32 1, i32 0, i32 2
  %633 = load i16, ptr %632, align 2, !tbaa !5
  %634 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1, i32 0, i32 2
  store i16 %633, ptr %634, align 2, !tbaa !5
  %635 = getelementptr inbounds %struct.word_type, ptr %605, i64 0, i32 1, i32 0, i32 3
  %636 = load i32, ptr %635, align 4
  %637 = and i32 %636, 1048575
  %638 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1, i32 0, i32 3
  %639 = load i32, ptr %638, align 4
  %640 = and i32 %639, -1048576
  %641 = or disjoint i32 %640, %637
  store i32 %641, ptr %638, align 4
  %642 = load i32, ptr %635, align 4
  %643 = and i32 %642, -1048576
  %644 = or disjoint i32 %643, %637
  store i32 %644, ptr %638, align 4
  %645 = load i32, ptr @ttop, align 4, !tbaa !10
  %646 = add nsw i32 %645, 1
  store i32 %646, ptr @ttop, align 4, !tbaa !10
  %647 = icmp slt i32 %645, 99
  br i1 %647, label %648, label %651

648:                                              ; preds = %599
  %649 = sext i32 %646 to i64
  %650 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %649
  store ptr %600, ptr %650, align 8, !tbaa !8
  br label %657

651:                                              ; preds = %599
  %652 = zext nneg i32 %645 to i64
  %653 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %652
  %654 = load ptr, ptr %653, align 8, !tbaa !8
  %655 = getelementptr inbounds %struct.word_type, ptr %654, i64 0, i32 1
  %656 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %655) #6
  br label %657

657:                                              ; preds = %651, %648
  %658 = call ptr @LexGetToken() #6
  store ptr %658, ptr %5, align 8, !tbaa !8
  %659 = getelementptr inbounds i8, ptr %658, i64 41
  %660 = load i8, ptr %659, align 1, !tbaa !5
  %661 = zext i8 %660 to i32
  %662 = getelementptr inbounds i8, ptr %658, i64 42
  %663 = load i8, ptr %662, align 2, !tbaa !5
  %664 = zext i8 %663 to i32
  %665 = sub nsw i32 0, %664
  %666 = icmp eq i32 %661, %665
  br i1 %666, label %2772, label %667

667:                                              ; preds = %657
  %668 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %601) #6
  store ptr %668, ptr @zz_hold, align 8, !tbaa !8
  %669 = load i32, ptr @otop, align 4, !tbaa !10
  %670 = add nsw i32 %669, 1
  store i32 %670, ptr @otop, align 4, !tbaa !10
  %671 = icmp slt i32 %669, 99
  br i1 %671, label %672, label %675

672:                                              ; preds = %667
  %673 = sext i32 %670 to i64
  %674 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %673
  store ptr %668, ptr %674, align 8, !tbaa !8
  br label %2772

675:                                              ; preds = %667
  %676 = zext nneg i32 %669 to i64
  %677 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !8
  %679 = getelementptr inbounds %struct.word_type, ptr %678, i64 0, i32 1
  %680 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %679) #6
  br label %2772

681:                                              ; preds = %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226, %226
  %682 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %683 = load ptr, ptr %682, align 8, !tbaa !5
  %684 = getelementptr inbounds i8, ptr %683, i64 41
  %685 = load i24, ptr %684, align 1
  %686 = and i24 %685, 4
  %687 = icmp eq i24 %686, 0
  br i1 %687, label %726, label %688

688:                                              ; preds = %681, %701
  %689 = phi i32 [ %702, %701 ], [ %227, %681 ]
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %709

691:                                              ; preds = %688
  %692 = load ptr, ptr %5, align 8, !tbaa !8
  %693 = getelementptr inbounds %struct.word_type, ptr %692, i64 0, i32 1
  %694 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %693) #6
  store ptr %694, ptr @zz_hold, align 8, !tbaa !8
  %695 = load i32, ptr @otop, align 4, !tbaa !10
  %696 = add nsw i32 %695, 1
  store i32 %696, ptr @otop, align 4, !tbaa !10
  %697 = icmp slt i32 %695, 99
  br i1 %697, label %698, label %703

698:                                              ; preds = %691
  %699 = sext i32 %696 to i64
  %700 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %699
  store ptr %694, ptr %700, align 8, !tbaa !8
  br label %701

701:                                              ; preds = %698, %703, %720
  %702 = phi i32 [ %721, %720 ], [ 1, %703 ], [ 1, %698 ]
  br label %688

703:                                              ; preds = %691
  %704 = zext nneg i32 %695 to i64
  %705 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !8
  %707 = getelementptr inbounds %struct.word_type, ptr %706, i64 0, i32 1
  %708 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %707) #6
  br label %701

709:                                              ; preds = %688
  %710 = load i32, ptr @ttop, align 4, !tbaa !10
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !8
  %714 = getelementptr inbounds %struct.word_type, ptr %713, i64 0, i32 2
  %715 = load i8, ptr %714, align 8, !tbaa !5
  %716 = load ptr, ptr %5, align 8, !tbaa !8
  %717 = getelementptr inbounds %struct.word_type, ptr %716, i64 0, i32 2
  %718 = load i8, ptr %717, align 8, !tbaa !5
  %719 = icmp ult i8 %718, %715
  br i1 %719, label %720, label %811

720:                                              ; preds = %709
  %721 = call fastcc i32 @Reduce(), !range !14
  %722 = load i32, ptr @ttop, align 4, !tbaa !10
  %723 = icmp eq i32 %722, %13
  br i1 %723, label %724, label %701

724:                                              ; preds = %720
  %725 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

726:                                              ; preds = %681
  %727 = icmp eq i32 %227, 0
  br i1 %727, label %811, label %728

728:                                              ; preds = %726
  %729 = getelementptr inbounds i8, ptr %228, i64 41
  %730 = load i8, ptr %729, align 1, !tbaa !5
  %731 = zext i8 %730 to i32
  %732 = getelementptr inbounds i8, ptr %228, i64 42
  %733 = load i8, ptr %732, align 2, !tbaa !5
  %734 = zext i8 %733 to i32
  %735 = sub nsw i32 0, %734
  %736 = icmp eq i32 %731, %735
  %737 = icmp eq i32 %227, 2
  %738 = select i1 %736, i32 101, i32 100
  %739 = select i1 %737, i8 7, i8 103
  %740 = select i1 %736, i8 %739, i8 7
  br label %741

741:                                              ; preds = %728, %749
  %742 = load i32, ptr @ttop, align 4, !tbaa !10
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %743
  %745 = load ptr, ptr %744, align 8, !tbaa !8
  %746 = getelementptr inbounds %struct.word_type, ptr %745, i64 0, i32 2
  %747 = load i8, ptr %746, align 8, !tbaa !5
  %748 = icmp ugt i8 %740, %747
  br i1 %748, label %752, label %749

749:                                              ; preds = %741
  %750 = call fastcc i32 @Reduce(), !range !14
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %811, label %741

752:                                              ; preds = %741
  %753 = zext nneg i32 %738 to i64
  %754 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %753
  %755 = load i8, ptr %754, align 1, !tbaa !5
  %756 = zext i8 %755 to i32
  store i32 %756, ptr @zz_size, align 4, !tbaa !10
  %757 = zext i8 %755 to i64
  %758 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %757
  %759 = load ptr, ptr %758, align 8, !tbaa !8
  %760 = icmp eq ptr %759, null
  br i1 %760, label %761, label %765

761:                                              ; preds = %752
  %762 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %763 = call ptr @GetMemory(i32 noundef %756, ptr noundef %762) #6
  store ptr %763, ptr @zz_hold, align 8, !tbaa !8
  %764 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %767

765:                                              ; preds = %752
  store ptr %759, ptr @zz_hold, align 8, !tbaa !8
  %766 = load ptr, ptr %759, align 8, !tbaa !5
  store ptr %766, ptr %758, align 8, !tbaa !8
  br label %767

767:                                              ; preds = %761, %765
  %768 = phi i32 [ %764, %761 ], [ %742, %765 ]
  %769 = phi ptr [ %763, %761 ], [ %759, %765 ]
  %770 = trunc i32 %738 to i8
  %771 = getelementptr inbounds %struct.word_type, ptr %769, i64 0, i32 1
  store i8 %770, ptr %771, align 8, !tbaa !5
  %772 = getelementptr inbounds [2 x %struct.LIST], ptr %769, i64 0, i64 1, i32 1
  store ptr %769, ptr %772, align 8, !tbaa !5
  %773 = getelementptr inbounds [2 x %struct.LIST], ptr %769, i64 0, i64 1
  store ptr %769, ptr %773, align 8, !tbaa !5
  %774 = getelementptr inbounds %struct.LIST, ptr %769, i64 0, i32 1
  store ptr %769, ptr %774, align 8, !tbaa !5
  store ptr %769, ptr %769, align 8, !tbaa !5
  %775 = getelementptr inbounds %struct.word_type, ptr %769, i64 0, i32 2
  store i8 %740, ptr %775, align 8, !tbaa !5
  %776 = load ptr, ptr %5, align 8, !tbaa !8
  %777 = getelementptr inbounds i8, ptr %776, i64 42
  %778 = load i8, ptr %777, align 2, !tbaa !5
  %779 = getelementptr inbounds i8, ptr %769, i64 42
  store i8 %778, ptr %779, align 2, !tbaa !5
  %780 = getelementptr inbounds i8, ptr %776, i64 41
  %781 = load i8, ptr %780, align 1, !tbaa !5
  %782 = getelementptr inbounds i8, ptr %769, i64 41
  store i8 %781, ptr %782, align 1, !tbaa !5
  %783 = getelementptr inbounds %struct.gapobj_type, ptr %769, i64 0, i32 3
  %784 = load i16, ptr %783, align 4
  %785 = and i16 %784, -769
  %786 = or disjoint i16 %785, 512
  store i16 %786, ptr %783, align 4
  %787 = getelementptr inbounds %struct.word_type, ptr %776, i64 0, i32 1, i32 0, i32 2
  %788 = load i16, ptr %787, align 2, !tbaa !5
  %789 = getelementptr inbounds %struct.word_type, ptr %769, i64 0, i32 1, i32 0, i32 2
  store i16 %788, ptr %789, align 2, !tbaa !5
  %790 = getelementptr inbounds %struct.word_type, ptr %776, i64 0, i32 1, i32 0, i32 3
  %791 = load i32, ptr %790, align 4
  %792 = and i32 %791, 1048575
  %793 = getelementptr inbounds %struct.word_type, ptr %769, i64 0, i32 1, i32 0, i32 3
  %794 = load i32, ptr %793, align 4
  %795 = and i32 %794, -1048576
  %796 = or disjoint i32 %795, %792
  store i32 %796, ptr %793, align 4
  %797 = load i32, ptr %790, align 4
  %798 = and i32 %797, -1048576
  %799 = or disjoint i32 %798, %792
  store i32 %799, ptr %793, align 4
  %800 = add nsw i32 %768, 1
  store i32 %800, ptr @ttop, align 4, !tbaa !10
  %801 = icmp slt i32 %768, 99
  br i1 %801, label %802, label %805

802:                                              ; preds = %767
  %803 = sext i32 %800 to i64
  %804 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %803
  store ptr %769, ptr %804, align 8, !tbaa !8
  br label %811

805:                                              ; preds = %767
  %806 = zext nneg i32 %768 to i64
  %807 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %806
  %808 = load ptr, ptr %807, align 8, !tbaa !8
  %809 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 1
  %810 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %809) #6
  br label %811

811:                                              ; preds = %709, %749, %805, %802, %726
  %812 = load i32, ptr @ttop, align 4, !tbaa !10
  %813 = add nsw i32 %812, 1
  store i32 %813, ptr @ttop, align 4, !tbaa !10
  %814 = icmp slt i32 %812, 99
  br i1 %814, label %815, label %819

815:                                              ; preds = %811
  %816 = load ptr, ptr %5, align 8, !tbaa !8
  %817 = sext i32 %813 to i64
  %818 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %817
  store ptr %816, ptr %818, align 8, !tbaa !8
  br label %826

819:                                              ; preds = %811
  %820 = zext nneg i32 %812 to i64
  %821 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !8
  %823 = getelementptr inbounds %struct.word_type, ptr %822, i64 0, i32 1
  %824 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %823) #6
  %825 = load ptr, ptr %5, align 8, !tbaa !8
  br label %826

826:                                              ; preds = %819, %815
  %827 = phi ptr [ %825, %819 ], [ %816, %815 ]
  %828 = getelementptr inbounds %struct.closure_type, ptr %827, i64 0, i32 5
  %829 = load ptr, ptr %828, align 8, !tbaa !5
  %830 = getelementptr inbounds i8, ptr %829, i64 41
  %831 = load i24, ptr %830, align 1
  %832 = and i24 %831, 8
  %833 = icmp eq i24 %832, 0
  br i1 %833, label %834, label %838

834:                                              ; preds = %826
  %835 = call fastcc i32 @Reduce(), !range !14
  %836 = load i32, ptr @ttop, align 4, !tbaa !10
  %837 = icmp eq i32 %836, %13
  br i1 %837, label %3948, label %838

838:                                              ; preds = %826, %834
  %839 = phi i32 [ %835, %834 ], [ 0, %826 ]
  %840 = call ptr @LexGetToken() #6
  store ptr %840, ptr %5, align 8, !tbaa !8
  br label %2772

841:                                              ; preds = %226, %226
  %842 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %843 = load ptr, ptr %842, align 8, !tbaa !5
  %844 = getelementptr inbounds i8, ptr %843, i64 41
  %845 = load i24, ptr %844, align 1
  %846 = and i24 %845, 4
  %847 = icmp eq i24 %846, 0
  br i1 %847, label %886, label %848

848:                                              ; preds = %841, %861
  %849 = phi i32 [ %862, %861 ], [ %227, %841 ]
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %869

851:                                              ; preds = %848
  %852 = load ptr, ptr %5, align 8, !tbaa !8
  %853 = getelementptr inbounds %struct.word_type, ptr %852, i64 0, i32 1
  %854 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %853) #6
  store ptr %854, ptr @zz_hold, align 8, !tbaa !8
  %855 = load i32, ptr @otop, align 4, !tbaa !10
  %856 = add nsw i32 %855, 1
  store i32 %856, ptr @otop, align 4, !tbaa !10
  %857 = icmp slt i32 %855, 99
  br i1 %857, label %858, label %863

858:                                              ; preds = %851
  %859 = sext i32 %856 to i64
  %860 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %859
  store ptr %854, ptr %860, align 8, !tbaa !8
  br label %861

861:                                              ; preds = %858, %863, %880
  %862 = phi i32 [ %881, %880 ], [ 1, %863 ], [ 1, %858 ]
  br label %848

863:                                              ; preds = %851
  %864 = zext nneg i32 %855 to i64
  %865 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !8
  %867 = getelementptr inbounds %struct.word_type, ptr %866, i64 0, i32 1
  %868 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %867) #6
  br label %861

869:                                              ; preds = %848
  %870 = load i32, ptr @ttop, align 4, !tbaa !10
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %871
  %873 = load ptr, ptr %872, align 8, !tbaa !8
  %874 = getelementptr inbounds %struct.word_type, ptr %873, i64 0, i32 2
  %875 = load i8, ptr %874, align 8, !tbaa !5
  %876 = load ptr, ptr %5, align 8, !tbaa !8
  %877 = getelementptr inbounds %struct.word_type, ptr %876, i64 0, i32 2
  %878 = load i8, ptr %877, align 8, !tbaa !5
  %879 = icmp ult i8 %878, %875
  br i1 %879, label %880, label %971

880:                                              ; preds = %869
  %881 = call fastcc i32 @Reduce(), !range !14
  %882 = load i32, ptr @ttop, align 4, !tbaa !10
  %883 = icmp eq i32 %882, %13
  br i1 %883, label %884, label %861

884:                                              ; preds = %880
  %885 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

886:                                              ; preds = %841
  %887 = icmp eq i32 %227, 0
  br i1 %887, label %971, label %888

888:                                              ; preds = %886
  %889 = getelementptr inbounds i8, ptr %228, i64 41
  %890 = load i8, ptr %889, align 1, !tbaa !5
  %891 = zext i8 %890 to i32
  %892 = getelementptr inbounds i8, ptr %228, i64 42
  %893 = load i8, ptr %892, align 2, !tbaa !5
  %894 = zext i8 %893 to i32
  %895 = sub nsw i32 0, %894
  %896 = icmp eq i32 %891, %895
  %897 = icmp eq i32 %227, 2
  %898 = select i1 %896, i32 101, i32 100
  %899 = select i1 %897, i8 7, i8 103
  %900 = select i1 %896, i8 %899, i8 7
  br label %901

901:                                              ; preds = %888, %909
  %902 = load i32, ptr @ttop, align 4, !tbaa !10
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %903
  %905 = load ptr, ptr %904, align 8, !tbaa !8
  %906 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 2
  %907 = load i8, ptr %906, align 8, !tbaa !5
  %908 = icmp ugt i8 %900, %907
  br i1 %908, label %912, label %909

909:                                              ; preds = %901
  %910 = call fastcc i32 @Reduce(), !range !14
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %971, label %901

912:                                              ; preds = %901
  %913 = zext nneg i32 %898 to i64
  %914 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !5
  %916 = zext i8 %915 to i32
  store i32 %916, ptr @zz_size, align 4, !tbaa !10
  %917 = zext i8 %915 to i64
  %918 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !8
  %920 = icmp eq ptr %919, null
  br i1 %920, label %921, label %925

921:                                              ; preds = %912
  %922 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %923 = call ptr @GetMemory(i32 noundef %916, ptr noundef %922) #6
  store ptr %923, ptr @zz_hold, align 8, !tbaa !8
  %924 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %927

925:                                              ; preds = %912
  store ptr %919, ptr @zz_hold, align 8, !tbaa !8
  %926 = load ptr, ptr %919, align 8, !tbaa !5
  store ptr %926, ptr %918, align 8, !tbaa !8
  br label %927

927:                                              ; preds = %921, %925
  %928 = phi i32 [ %924, %921 ], [ %902, %925 ]
  %929 = phi ptr [ %923, %921 ], [ %919, %925 ]
  %930 = trunc i32 %898 to i8
  %931 = getelementptr inbounds %struct.word_type, ptr %929, i64 0, i32 1
  store i8 %930, ptr %931, align 8, !tbaa !5
  %932 = getelementptr inbounds [2 x %struct.LIST], ptr %929, i64 0, i64 1, i32 1
  store ptr %929, ptr %932, align 8, !tbaa !5
  %933 = getelementptr inbounds [2 x %struct.LIST], ptr %929, i64 0, i64 1
  store ptr %929, ptr %933, align 8, !tbaa !5
  %934 = getelementptr inbounds %struct.LIST, ptr %929, i64 0, i32 1
  store ptr %929, ptr %934, align 8, !tbaa !5
  store ptr %929, ptr %929, align 8, !tbaa !5
  %935 = getelementptr inbounds %struct.word_type, ptr %929, i64 0, i32 2
  store i8 %900, ptr %935, align 8, !tbaa !5
  %936 = load ptr, ptr %5, align 8, !tbaa !8
  %937 = getelementptr inbounds i8, ptr %936, i64 42
  %938 = load i8, ptr %937, align 2, !tbaa !5
  %939 = getelementptr inbounds i8, ptr %929, i64 42
  store i8 %938, ptr %939, align 2, !tbaa !5
  %940 = getelementptr inbounds i8, ptr %936, i64 41
  %941 = load i8, ptr %940, align 1, !tbaa !5
  %942 = getelementptr inbounds i8, ptr %929, i64 41
  store i8 %941, ptr %942, align 1, !tbaa !5
  %943 = getelementptr inbounds %struct.gapobj_type, ptr %929, i64 0, i32 3
  %944 = load i16, ptr %943, align 4
  %945 = and i16 %944, -769
  %946 = or disjoint i16 %945, 512
  store i16 %946, ptr %943, align 4
  %947 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1, i32 0, i32 2
  %948 = load i16, ptr %947, align 2, !tbaa !5
  %949 = getelementptr inbounds %struct.word_type, ptr %929, i64 0, i32 1, i32 0, i32 2
  store i16 %948, ptr %949, align 2, !tbaa !5
  %950 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1, i32 0, i32 3
  %951 = load i32, ptr %950, align 4
  %952 = and i32 %951, 1048575
  %953 = getelementptr inbounds %struct.word_type, ptr %929, i64 0, i32 1, i32 0, i32 3
  %954 = load i32, ptr %953, align 4
  %955 = and i32 %954, -1048576
  %956 = or disjoint i32 %955, %952
  store i32 %956, ptr %953, align 4
  %957 = load i32, ptr %950, align 4
  %958 = and i32 %957, -1048576
  %959 = or disjoint i32 %958, %952
  store i32 %959, ptr %953, align 4
  %960 = add nsw i32 %928, 1
  store i32 %960, ptr @ttop, align 4, !tbaa !10
  %961 = icmp slt i32 %928, 99
  br i1 %961, label %962, label %965

962:                                              ; preds = %927
  %963 = sext i32 %960 to i64
  %964 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %963
  store ptr %929, ptr %964, align 8, !tbaa !8
  br label %971

965:                                              ; preds = %927
  %966 = zext nneg i32 %928 to i64
  %967 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %966
  %968 = load ptr, ptr %967, align 8, !tbaa !8
  %969 = getelementptr inbounds %struct.word_type, ptr %968, i64 0, i32 1
  %970 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %969) #6
  br label %971

971:                                              ; preds = %869, %909, %965, %962, %886
  %972 = load i32, ptr @ttop, align 4, !tbaa !10
  %973 = add nsw i32 %972, 1
  store i32 %973, ptr @ttop, align 4, !tbaa !10
  %974 = icmp slt i32 %972, 99
  br i1 %974, label %975, label %979

975:                                              ; preds = %971
  %976 = load ptr, ptr %5, align 8, !tbaa !8
  %977 = sext i32 %973 to i64
  %978 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %977
  store ptr %976, ptr %978, align 8, !tbaa !8
  br label %986

979:                                              ; preds = %971
  %980 = zext nneg i32 %972 to i64
  %981 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %980
  %982 = load ptr, ptr %981, align 8, !tbaa !8
  %983 = getelementptr inbounds %struct.word_type, ptr %982, i64 0, i32 1
  %984 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %983) #6
  %985 = load ptr, ptr %5, align 8, !tbaa !8
  br label %986

986:                                              ; preds = %979, %975
  %987 = phi ptr [ %985, %979 ], [ %976, %975 ]
  %988 = getelementptr inbounds %struct.closure_type, ptr %987, i64 0, i32 5
  %989 = load ptr, ptr %988, align 8, !tbaa !5
  %990 = getelementptr inbounds i8, ptr %989, i64 41
  %991 = load i24, ptr %990, align 1
  %992 = and i24 %991, 8
  %993 = icmp eq i24 %992, 0
  br i1 %993, label %994, label %998

994:                                              ; preds = %986
  %995 = call fastcc i32 @Reduce(), !range !14
  %996 = load i32, ptr @ttop, align 4, !tbaa !10
  %997 = icmp eq i32 %996, %13
  br i1 %997, label %3948, label %998

998:                                              ; preds = %986, %994
  %999 = phi i32 [ %995, %994 ], [ 0, %986 ]
  %1000 = call ptr @LexGetToken() #6
  store ptr %1000, ptr %5, align 8, !tbaa !8
  %1001 = getelementptr inbounds %struct.word_type, ptr %1000, i64 0, i32 1
  %1002 = load i8, ptr %1001, align 8, !tbaa !5
  switch i8 %1002, label %1003 [
    i8 104, label %1006
    i8 102, label %1006
  ]

1003:                                             ; preds = %998
  %1004 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 40, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull %229, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #6
  %1005 = load ptr, ptr %5, align 8, !tbaa !8
  br label %1006

1006:                                             ; preds = %998, %998, %1003
  %1007 = phi ptr [ %1000, %998 ], [ %1000, %998 ], [ %1005, %1003 ]
  %1008 = load i8, ptr %229, align 8, !tbaa !5
  %1009 = icmp eq i8 %1008, 53
  %1010 = load ptr, ptr @VerbatimSym, align 8
  %1011 = load ptr, ptr @RawVerbatimSym, align 8
  %1012 = select i1 %1009, ptr %1010, ptr %1011
  %1013 = getelementptr inbounds %struct.closure_type, ptr %1007, i64 0, i32 5
  store ptr %1012, ptr %1013, align 8, !tbaa !5
  %1014 = icmp eq i32 %999, 0
  br i1 %1014, label %1104, label %1015

1015:                                             ; preds = %1006
  %1016 = getelementptr inbounds i8, ptr %1007, i64 41
  %1017 = load i8, ptr %1016, align 1, !tbaa !5
  %1018 = zext i8 %1017 to i32
  %1019 = getelementptr inbounds i8, ptr %1007, i64 42
  %1020 = load i8, ptr %1019, align 2, !tbaa !5
  %1021 = zext i8 %1020 to i32
  %1022 = sub nsw i32 0, %1021
  %1023 = icmp eq i32 %1018, %1022
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1015
  %1025 = getelementptr inbounds %struct.word_type, ptr %1007, i64 0, i32 1
  %1026 = load i8, ptr %1025, align 8, !tbaa !5
  %1027 = icmp eq i8 %1026, 102
  %1028 = icmp eq i32 %999, 2
  %1029 = or i1 %1028, %1027
  %1030 = select i1 %1029, i8 7, i8 103
  br label %1031

1031:                                             ; preds = %1024, %1015
  %1032 = phi i32 [ 100, %1015 ], [ 101, %1024 ]
  %1033 = phi i8 [ 7, %1015 ], [ %1030, %1024 ]
  br label %1034

1034:                                             ; preds = %1031, %1042
  %1035 = load i32, ptr @ttop, align 4, !tbaa !10
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1036
  %1038 = load ptr, ptr %1037, align 8, !tbaa !8
  %1039 = getelementptr inbounds %struct.word_type, ptr %1038, i64 0, i32 2
  %1040 = load i8, ptr %1039, align 8, !tbaa !5
  %1041 = icmp ugt i8 %1033, %1040
  br i1 %1041, label %1045, label %1042

1042:                                             ; preds = %1034
  %1043 = call fastcc i32 @Reduce(), !range !14
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1104, label %1034

1045:                                             ; preds = %1034
  %1046 = zext nneg i32 %1032 to i64
  %1047 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1046
  %1048 = load i8, ptr %1047, align 1, !tbaa !5
  %1049 = zext i8 %1048 to i32
  store i32 %1049, ptr @zz_size, align 4, !tbaa !10
  %1050 = zext i8 %1048 to i64
  %1051 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1050
  %1052 = load ptr, ptr %1051, align 8, !tbaa !8
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %1058

1054:                                             ; preds = %1045
  %1055 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1056 = call ptr @GetMemory(i32 noundef %1049, ptr noundef %1055) #6
  store ptr %1056, ptr @zz_hold, align 8, !tbaa !8
  %1057 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1060

1058:                                             ; preds = %1045
  store ptr %1052, ptr @zz_hold, align 8, !tbaa !8
  %1059 = load ptr, ptr %1052, align 8, !tbaa !5
  store ptr %1059, ptr %1051, align 8, !tbaa !8
  br label %1060

1060:                                             ; preds = %1054, %1058
  %1061 = phi i32 [ %1057, %1054 ], [ %1035, %1058 ]
  %1062 = phi ptr [ %1056, %1054 ], [ %1052, %1058 ]
  %1063 = trunc i32 %1032 to i8
  %1064 = getelementptr inbounds %struct.word_type, ptr %1062, i64 0, i32 1
  store i8 %1063, ptr %1064, align 8, !tbaa !5
  %1065 = getelementptr inbounds [2 x %struct.LIST], ptr %1062, i64 0, i64 1, i32 1
  store ptr %1062, ptr %1065, align 8, !tbaa !5
  %1066 = getelementptr inbounds [2 x %struct.LIST], ptr %1062, i64 0, i64 1
  store ptr %1062, ptr %1066, align 8, !tbaa !5
  %1067 = getelementptr inbounds %struct.LIST, ptr %1062, i64 0, i32 1
  store ptr %1062, ptr %1067, align 8, !tbaa !5
  store ptr %1062, ptr %1062, align 8, !tbaa !5
  %1068 = getelementptr inbounds %struct.word_type, ptr %1062, i64 0, i32 2
  store i8 %1033, ptr %1068, align 8, !tbaa !5
  %1069 = load ptr, ptr %5, align 8, !tbaa !8
  %1070 = getelementptr inbounds i8, ptr %1069, i64 42
  %1071 = load i8, ptr %1070, align 2, !tbaa !5
  %1072 = getelementptr inbounds i8, ptr %1062, i64 42
  store i8 %1071, ptr %1072, align 2, !tbaa !5
  %1073 = getelementptr inbounds i8, ptr %1069, i64 41
  %1074 = load i8, ptr %1073, align 1, !tbaa !5
  %1075 = getelementptr inbounds i8, ptr %1062, i64 41
  store i8 %1074, ptr %1075, align 1, !tbaa !5
  %1076 = getelementptr inbounds %struct.gapobj_type, ptr %1062, i64 0, i32 3
  %1077 = load i16, ptr %1076, align 4
  %1078 = and i16 %1077, -769
  %1079 = or disjoint i16 %1078, 512
  store i16 %1079, ptr %1076, align 4
  %1080 = getelementptr inbounds %struct.word_type, ptr %1069, i64 0, i32 1, i32 0, i32 2
  %1081 = load i16, ptr %1080, align 2, !tbaa !5
  %1082 = getelementptr inbounds %struct.word_type, ptr %1062, i64 0, i32 1, i32 0, i32 2
  store i16 %1081, ptr %1082, align 2, !tbaa !5
  %1083 = getelementptr inbounds %struct.word_type, ptr %1069, i64 0, i32 1, i32 0, i32 3
  %1084 = load i32, ptr %1083, align 4
  %1085 = and i32 %1084, 1048575
  %1086 = getelementptr inbounds %struct.word_type, ptr %1062, i64 0, i32 1, i32 0, i32 3
  %1087 = load i32, ptr %1086, align 4
  %1088 = and i32 %1087, -1048576
  %1089 = or disjoint i32 %1088, %1085
  store i32 %1089, ptr %1086, align 4
  %1090 = load i32, ptr %1083, align 4
  %1091 = and i32 %1090, -1048576
  %1092 = or disjoint i32 %1091, %1085
  store i32 %1092, ptr %1086, align 4
  %1093 = add nsw i32 %1061, 1
  store i32 %1093, ptr @ttop, align 4, !tbaa !10
  %1094 = icmp slt i32 %1061, 99
  br i1 %1094, label %1095, label %1098

1095:                                             ; preds = %1060
  %1096 = sext i32 %1093 to i64
  %1097 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1096
  store ptr %1062, ptr %1097, align 8, !tbaa !8
  br label %1104

1098:                                             ; preds = %1060
  %1099 = zext nneg i32 %1061 to i64
  %1100 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1099
  %1101 = load ptr, ptr %1100, align 8, !tbaa !8
  %1102 = getelementptr inbounds %struct.word_type, ptr %1101, i64 0, i32 1
  %1103 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1102) #6
  br label %1104

1104:                                             ; preds = %1042, %1098, %1095, %1006
  %1105 = load i32, ptr @ttop, align 4, !tbaa !10
  %1106 = add nsw i32 %1105, 1
  store i32 %1106, ptr @ttop, align 4, !tbaa !10
  %1107 = icmp slt i32 %1105, 99
  br i1 %1107, label %1108, label %1112

1108:                                             ; preds = %1104
  %1109 = load ptr, ptr %5, align 8, !tbaa !8
  %1110 = sext i32 %1106 to i64
  %1111 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1110
  store ptr %1109, ptr %1111, align 8, !tbaa !8
  br label %1119

1112:                                             ; preds = %1104
  %1113 = zext nneg i32 %1105 to i64
  %1114 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1113
  %1115 = load ptr, ptr %1114, align 8, !tbaa !8
  %1116 = getelementptr inbounds %struct.word_type, ptr %1115, i64 0, i32 1
  %1117 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1116) #6
  %1118 = load ptr, ptr %5, align 8, !tbaa !8
  br label %1119

1119:                                             ; preds = %1112, %1108
  %1120 = phi ptr [ %1118, %1112 ], [ %1109, %1108 ]
  %1121 = getelementptr inbounds %struct.word_type, ptr %1120, i64 0, i32 1
  %1122 = load i8, ptr %1121, align 8, !tbaa !5
  %1123 = icmp eq i8 %1122, 104
  %1124 = zext i1 %1123 to i32
  %1125 = load i8, ptr %229, align 8, !tbaa !5
  %1126 = icmp eq i8 %1125, 54
  %1127 = zext i1 %1126 to i32
  %1128 = call ptr @LexScanVerbatim(ptr noundef null, i32 noundef %1124, ptr noundef nonnull %1121, i32 noundef %1127) #6
  store ptr %1128, ptr @zz_hold, align 8, !tbaa !8
  %1129 = load i32, ptr @otop, align 4, !tbaa !10
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, ptr @otop, align 4, !tbaa !10
  %1131 = icmp slt i32 %1129, 99
  br i1 %1131, label %1132, label %1135

1132:                                             ; preds = %1119
  %1133 = sext i32 %1130 to i64
  %1134 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1133
  store ptr %1128, ptr %1134, align 8, !tbaa !8
  br label %1141

1135:                                             ; preds = %1119
  %1136 = zext nneg i32 %1129 to i64
  %1137 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1136
  %1138 = load ptr, ptr %1137, align 8, !tbaa !8
  %1139 = getelementptr inbounds %struct.word_type, ptr %1138, i64 0, i32 1
  %1140 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1139) #6
  br label %1141

1141:                                             ; preds = %1135, %1132
  %1142 = call ptr @LexGetToken() #6
  store ptr %1142, ptr %5, align 8, !tbaa !8
  br label %2772

1143:                                             ; preds = %226, %226
  %1144 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %1145 = load ptr, ptr %1144, align 8, !tbaa !5
  %1146 = getelementptr inbounds i8, ptr %1145, i64 41
  %1147 = load i24, ptr %1146, align 1
  %1148 = and i24 %1147, 4
  %1149 = icmp eq i24 %1148, 0
  br i1 %1149, label %1188, label %1150

1150:                                             ; preds = %1143, %1163
  %1151 = phi i32 [ %1164, %1163 ], [ %227, %1143 ]
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1153, label %1171

1153:                                             ; preds = %1150
  %1154 = load ptr, ptr %5, align 8, !tbaa !8
  %1155 = getelementptr inbounds %struct.word_type, ptr %1154, i64 0, i32 1
  %1156 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %1155) #6
  store ptr %1156, ptr @zz_hold, align 8, !tbaa !8
  %1157 = load i32, ptr @otop, align 4, !tbaa !10
  %1158 = add nsw i32 %1157, 1
  store i32 %1158, ptr @otop, align 4, !tbaa !10
  %1159 = icmp slt i32 %1157, 99
  br i1 %1159, label %1160, label %1165

1160:                                             ; preds = %1153
  %1161 = sext i32 %1158 to i64
  %1162 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1161
  store ptr %1156, ptr %1162, align 8, !tbaa !8
  br label %1163

1163:                                             ; preds = %1160, %1165, %1182
  %1164 = phi i32 [ %1183, %1182 ], [ 1, %1165 ], [ 1, %1160 ]
  br label %1150

1165:                                             ; preds = %1153
  %1166 = zext nneg i32 %1157 to i64
  %1167 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1166
  %1168 = load ptr, ptr %1167, align 8, !tbaa !8
  %1169 = getelementptr inbounds %struct.word_type, ptr %1168, i64 0, i32 1
  %1170 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1169) #6
  br label %1163

1171:                                             ; preds = %1150
  %1172 = load i32, ptr @ttop, align 4, !tbaa !10
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1173
  %1175 = load ptr, ptr %1174, align 8, !tbaa !8
  %1176 = getelementptr inbounds %struct.word_type, ptr %1175, i64 0, i32 2
  %1177 = load i8, ptr %1176, align 8, !tbaa !5
  %1178 = load ptr, ptr %5, align 8, !tbaa !8
  %1179 = getelementptr inbounds %struct.word_type, ptr %1178, i64 0, i32 2
  %1180 = load i8, ptr %1179, align 8, !tbaa !5
  %1181 = icmp ult i8 %1177, %1180
  br i1 %1181, label %1273, label %1182

1182:                                             ; preds = %1171
  %1183 = call fastcc i32 @Reduce(), !range !14
  %1184 = load i32, ptr @ttop, align 4, !tbaa !10
  %1185 = icmp eq i32 %1184, %13
  br i1 %1185, label %1186, label %1163

1186:                                             ; preds = %1182
  %1187 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

1188:                                             ; preds = %1143
  %1189 = icmp eq i32 %227, 0
  br i1 %1189, label %1273, label %1190

1190:                                             ; preds = %1188
  %1191 = getelementptr inbounds i8, ptr %228, i64 41
  %1192 = load i8, ptr %1191, align 1, !tbaa !5
  %1193 = zext i8 %1192 to i32
  %1194 = getelementptr inbounds i8, ptr %228, i64 42
  %1195 = load i8, ptr %1194, align 2, !tbaa !5
  %1196 = zext i8 %1195 to i32
  %1197 = sub nsw i32 0, %1196
  %1198 = icmp eq i32 %1193, %1197
  %1199 = icmp eq i32 %227, 2
  %1200 = select i1 %1198, i32 101, i32 100
  %1201 = select i1 %1199, i8 7, i8 103
  %1202 = select i1 %1198, i8 %1201, i8 7
  br label %1203

1203:                                             ; preds = %1190, %1211
  %1204 = load i32, ptr @ttop, align 4, !tbaa !10
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !8
  %1208 = getelementptr inbounds %struct.word_type, ptr %1207, i64 0, i32 2
  %1209 = load i8, ptr %1208, align 8, !tbaa !5
  %1210 = icmp ugt i8 %1202, %1209
  br i1 %1210, label %1214, label %1211

1211:                                             ; preds = %1203
  %1212 = call fastcc i32 @Reduce(), !range !14
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1273, label %1203

1214:                                             ; preds = %1203
  %1215 = zext nneg i32 %1200 to i64
  %1216 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1215
  %1217 = load i8, ptr %1216, align 1, !tbaa !5
  %1218 = zext i8 %1217 to i32
  store i32 %1218, ptr @zz_size, align 4, !tbaa !10
  %1219 = zext i8 %1217 to i64
  %1220 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1219
  %1221 = load ptr, ptr %1220, align 8, !tbaa !8
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1223, label %1227

1223:                                             ; preds = %1214
  %1224 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1225 = call ptr @GetMemory(i32 noundef %1218, ptr noundef %1224) #6
  store ptr %1225, ptr @zz_hold, align 8, !tbaa !8
  %1226 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1229

1227:                                             ; preds = %1214
  store ptr %1221, ptr @zz_hold, align 8, !tbaa !8
  %1228 = load ptr, ptr %1221, align 8, !tbaa !5
  store ptr %1228, ptr %1220, align 8, !tbaa !8
  br label %1229

1229:                                             ; preds = %1223, %1227
  %1230 = phi i32 [ %1226, %1223 ], [ %1204, %1227 ]
  %1231 = phi ptr [ %1225, %1223 ], [ %1221, %1227 ]
  %1232 = trunc i32 %1200 to i8
  %1233 = getelementptr inbounds %struct.word_type, ptr %1231, i64 0, i32 1
  store i8 %1232, ptr %1233, align 8, !tbaa !5
  %1234 = getelementptr inbounds [2 x %struct.LIST], ptr %1231, i64 0, i64 1, i32 1
  store ptr %1231, ptr %1234, align 8, !tbaa !5
  %1235 = getelementptr inbounds [2 x %struct.LIST], ptr %1231, i64 0, i64 1
  store ptr %1231, ptr %1235, align 8, !tbaa !5
  %1236 = getelementptr inbounds %struct.LIST, ptr %1231, i64 0, i32 1
  store ptr %1231, ptr %1236, align 8, !tbaa !5
  store ptr %1231, ptr %1231, align 8, !tbaa !5
  %1237 = getelementptr inbounds %struct.word_type, ptr %1231, i64 0, i32 2
  store i8 %1202, ptr %1237, align 8, !tbaa !5
  %1238 = load ptr, ptr %5, align 8, !tbaa !8
  %1239 = getelementptr inbounds i8, ptr %1238, i64 42
  %1240 = load i8, ptr %1239, align 2, !tbaa !5
  %1241 = getelementptr inbounds i8, ptr %1231, i64 42
  store i8 %1240, ptr %1241, align 2, !tbaa !5
  %1242 = getelementptr inbounds i8, ptr %1238, i64 41
  %1243 = load i8, ptr %1242, align 1, !tbaa !5
  %1244 = getelementptr inbounds i8, ptr %1231, i64 41
  store i8 %1243, ptr %1244, align 1, !tbaa !5
  %1245 = getelementptr inbounds %struct.gapobj_type, ptr %1231, i64 0, i32 3
  %1246 = load i16, ptr %1245, align 4
  %1247 = and i16 %1246, -769
  %1248 = or disjoint i16 %1247, 512
  store i16 %1248, ptr %1245, align 4
  %1249 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1, i32 0, i32 2
  %1250 = load i16, ptr %1249, align 2, !tbaa !5
  %1251 = getelementptr inbounds %struct.word_type, ptr %1231, i64 0, i32 1, i32 0, i32 2
  store i16 %1250, ptr %1251, align 2, !tbaa !5
  %1252 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1, i32 0, i32 3
  %1253 = load i32, ptr %1252, align 4
  %1254 = and i32 %1253, 1048575
  %1255 = getelementptr inbounds %struct.word_type, ptr %1231, i64 0, i32 1, i32 0, i32 3
  %1256 = load i32, ptr %1255, align 4
  %1257 = and i32 %1256, -1048576
  %1258 = or disjoint i32 %1257, %1254
  store i32 %1258, ptr %1255, align 4
  %1259 = load i32, ptr %1252, align 4
  %1260 = and i32 %1259, -1048576
  %1261 = or disjoint i32 %1260, %1254
  store i32 %1261, ptr %1255, align 4
  %1262 = add nsw i32 %1230, 1
  store i32 %1262, ptr @ttop, align 4, !tbaa !10
  %1263 = icmp slt i32 %1230, 99
  br i1 %1263, label %1264, label %1267

1264:                                             ; preds = %1229
  %1265 = sext i32 %1262 to i64
  %1266 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1265
  store ptr %1231, ptr %1266, align 8, !tbaa !8
  br label %1273

1267:                                             ; preds = %1229
  %1268 = zext nneg i32 %1230 to i64
  %1269 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1268
  %1270 = load ptr, ptr %1269, align 8, !tbaa !8
  %1271 = getelementptr inbounds %struct.word_type, ptr %1270, i64 0, i32 1
  %1272 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1271) #6
  br label %1273

1273:                                             ; preds = %1171, %1211, %1267, %1264, %1188
  %1274 = load i32, ptr @ttop, align 4, !tbaa !10
  %1275 = add nsw i32 %1274, 1
  store i32 %1275, ptr @ttop, align 4, !tbaa !10
  %1276 = icmp slt i32 %1274, 99
  br i1 %1276, label %1277, label %1281

1277:                                             ; preds = %1273
  %1278 = load ptr, ptr %5, align 8, !tbaa !8
  %1279 = sext i32 %1275 to i64
  %1280 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1279
  store ptr %1278, ptr %1280, align 8, !tbaa !8
  br label %1288

1281:                                             ; preds = %1273
  %1282 = zext nneg i32 %1274 to i64
  %1283 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1282
  %1284 = load ptr, ptr %1283, align 8, !tbaa !8
  %1285 = getelementptr inbounds %struct.word_type, ptr %1284, i64 0, i32 1
  %1286 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1285) #6
  %1287 = load ptr, ptr %5, align 8, !tbaa !8
  br label %1288

1288:                                             ; preds = %1281, %1277
  %1289 = phi ptr [ %1287, %1281 ], [ %1278, %1277 ]
  %1290 = getelementptr inbounds %struct.closure_type, ptr %1289, i64 0, i32 5
  %1291 = load ptr, ptr %1290, align 8, !tbaa !5
  %1292 = getelementptr inbounds i8, ptr %1291, i64 41
  %1293 = load i24, ptr %1292, align 1
  %1294 = and i24 %1293, 8
  %1295 = icmp eq i24 %1294, 0
  br i1 %1295, label %1296, label %1300

1296:                                             ; preds = %1288
  %1297 = call fastcc i32 @Reduce(), !range !14
  %1298 = load i32, ptr @ttop, align 4, !tbaa !10
  %1299 = icmp eq i32 %1298, %13
  br i1 %1299, label %3948, label %1300

1300:                                             ; preds = %1288, %1296
  %1301 = phi i32 [ %1297, %1296 ], [ 0, %1288 ]
  %1302 = call ptr @LexGetToken() #6
  store ptr %1302, ptr %5, align 8, !tbaa !8
  br label %2772

1303:                                             ; preds = %226
  %1304 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 22, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %229) #6
  br label %2772

1305:                                             ; preds = %226
  %1306 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %1307 = load ptr, ptr %1306, align 8, !tbaa !5
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1309, label %1313

1309:                                             ; preds = %1305
  %1310 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 23, ptr noundef nonnull @.str.32, i32 noundef 2, ptr noundef nonnull %229, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.17) #6
  %1311 = load ptr, ptr %5, align 8, !tbaa !8
  %1312 = getelementptr inbounds %struct.word_type, ptr %1311, i64 0, i32 1
  store i8 102, ptr %1312, align 8, !tbaa !5
  br label %1313

1313:                                             ; preds = %1305, %1309, %226
  %1314 = phi i1 [ false, %1305 ], [ true, %1309 ], [ true, %226 ]
  %1315 = phi ptr [ %228, %1305 ], [ %1311, %1309 ], [ %228, %226 ]
  %1316 = icmp eq i32 %227, 0
  br i1 %1316, label %1401, label %1317

1317:                                             ; preds = %1313
  %1318 = getelementptr inbounds i8, ptr %1315, i64 41
  %1319 = load i8, ptr %1318, align 1, !tbaa !5
  %1320 = zext i8 %1319 to i32
  %1321 = getelementptr inbounds i8, ptr %1315, i64 42
  %1322 = load i8, ptr %1321, align 2, !tbaa !5
  %1323 = zext i8 %1322 to i32
  %1324 = sub nsw i32 0, %1323
  %1325 = icmp eq i32 %1320, %1324
  %1326 = icmp eq i32 %227, 2
  %1327 = select i1 %1314, i1 true, i1 %1326
  %1328 = select i1 %1327, i8 7, i8 103
  %1329 = select i1 %1325, i32 101, i32 100
  %1330 = select i1 %1325, i8 %1328, i8 7
  br label %1331

1331:                                             ; preds = %1317, %1339
  %1332 = load i32, ptr @ttop, align 4, !tbaa !10
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1333
  %1335 = load ptr, ptr %1334, align 8, !tbaa !8
  %1336 = getelementptr inbounds %struct.word_type, ptr %1335, i64 0, i32 2
  %1337 = load i8, ptr %1336, align 8, !tbaa !5
  %1338 = icmp ugt i8 %1330, %1337
  br i1 %1338, label %1342, label %1339

1339:                                             ; preds = %1331
  %1340 = call fastcc i32 @Reduce(), !range !14
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1401, label %1331

1342:                                             ; preds = %1331
  %1343 = zext nneg i32 %1329 to i64
  %1344 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1343
  %1345 = load i8, ptr %1344, align 1, !tbaa !5
  %1346 = zext i8 %1345 to i32
  store i32 %1346, ptr @zz_size, align 4, !tbaa !10
  %1347 = zext i8 %1345 to i64
  %1348 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1347
  %1349 = load ptr, ptr %1348, align 8, !tbaa !8
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %1351, label %1355

1351:                                             ; preds = %1342
  %1352 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1353 = call ptr @GetMemory(i32 noundef %1346, ptr noundef %1352) #6
  store ptr %1353, ptr @zz_hold, align 8, !tbaa !8
  %1354 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1357

1355:                                             ; preds = %1342
  store ptr %1349, ptr @zz_hold, align 8, !tbaa !8
  %1356 = load ptr, ptr %1349, align 8, !tbaa !5
  store ptr %1356, ptr %1348, align 8, !tbaa !8
  br label %1357

1357:                                             ; preds = %1351, %1355
  %1358 = phi i32 [ %1354, %1351 ], [ %1332, %1355 ]
  %1359 = phi ptr [ %1353, %1351 ], [ %1349, %1355 ]
  %1360 = trunc i32 %1329 to i8
  %1361 = getelementptr inbounds %struct.word_type, ptr %1359, i64 0, i32 1
  store i8 %1360, ptr %1361, align 8, !tbaa !5
  %1362 = getelementptr inbounds [2 x %struct.LIST], ptr %1359, i64 0, i64 1, i32 1
  store ptr %1359, ptr %1362, align 8, !tbaa !5
  %1363 = getelementptr inbounds [2 x %struct.LIST], ptr %1359, i64 0, i64 1
  store ptr %1359, ptr %1363, align 8, !tbaa !5
  %1364 = getelementptr inbounds %struct.LIST, ptr %1359, i64 0, i32 1
  store ptr %1359, ptr %1364, align 8, !tbaa !5
  store ptr %1359, ptr %1359, align 8, !tbaa !5
  %1365 = getelementptr inbounds %struct.word_type, ptr %1359, i64 0, i32 2
  store i8 %1330, ptr %1365, align 8, !tbaa !5
  %1366 = load ptr, ptr %5, align 8, !tbaa !8
  %1367 = getelementptr inbounds i8, ptr %1366, i64 42
  %1368 = load i8, ptr %1367, align 2, !tbaa !5
  %1369 = getelementptr inbounds i8, ptr %1359, i64 42
  store i8 %1368, ptr %1369, align 2, !tbaa !5
  %1370 = getelementptr inbounds i8, ptr %1366, i64 41
  %1371 = load i8, ptr %1370, align 1, !tbaa !5
  %1372 = getelementptr inbounds i8, ptr %1359, i64 41
  store i8 %1371, ptr %1372, align 1, !tbaa !5
  %1373 = getelementptr inbounds %struct.gapobj_type, ptr %1359, i64 0, i32 3
  %1374 = load i16, ptr %1373, align 4
  %1375 = and i16 %1374, -769
  %1376 = or disjoint i16 %1375, 512
  store i16 %1376, ptr %1373, align 4
  %1377 = getelementptr inbounds %struct.word_type, ptr %1366, i64 0, i32 1, i32 0, i32 2
  %1378 = load i16, ptr %1377, align 2, !tbaa !5
  %1379 = getelementptr inbounds %struct.word_type, ptr %1359, i64 0, i32 1, i32 0, i32 2
  store i16 %1378, ptr %1379, align 2, !tbaa !5
  %1380 = getelementptr inbounds %struct.word_type, ptr %1366, i64 0, i32 1, i32 0, i32 3
  %1381 = load i32, ptr %1380, align 4
  %1382 = and i32 %1381, 1048575
  %1383 = getelementptr inbounds %struct.word_type, ptr %1359, i64 0, i32 1, i32 0, i32 3
  %1384 = load i32, ptr %1383, align 4
  %1385 = and i32 %1384, -1048576
  %1386 = or disjoint i32 %1385, %1382
  store i32 %1386, ptr %1383, align 4
  %1387 = load i32, ptr %1380, align 4
  %1388 = and i32 %1387, -1048576
  %1389 = or disjoint i32 %1388, %1382
  store i32 %1389, ptr %1383, align 4
  %1390 = add nsw i32 %1358, 1
  store i32 %1390, ptr @ttop, align 4, !tbaa !10
  %1391 = icmp slt i32 %1358, 99
  br i1 %1391, label %1392, label %1395

1392:                                             ; preds = %1357
  %1393 = sext i32 %1390 to i64
  %1394 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1393
  store ptr %1359, ptr %1394, align 8, !tbaa !8
  br label %1401

1395:                                             ; preds = %1357
  %1396 = zext nneg i32 %1358 to i64
  %1397 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1396
  %1398 = load ptr, ptr %1397, align 8, !tbaa !8
  %1399 = getelementptr inbounds %struct.word_type, ptr %1398, i64 0, i32 1
  %1400 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1399) #6
  br label %1401

1401:                                             ; preds = %1339, %1395, %1392, %1313
  %1402 = load i32, ptr @ttop, align 4, !tbaa !10
  %1403 = add nsw i32 %1402, 1
  store i32 %1403, ptr @ttop, align 4, !tbaa !10
  %1404 = icmp slt i32 %1402, 99
  br i1 %1404, label %1405, label %1409

1405:                                             ; preds = %1401
  %1406 = load ptr, ptr %5, align 8, !tbaa !8
  %1407 = sext i32 %1403 to i64
  %1408 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1407
  store ptr %1406, ptr %1408, align 8, !tbaa !8
  br label %1415

1409:                                             ; preds = %1401
  %1410 = zext nneg i32 %1402 to i64
  %1411 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1410
  %1412 = load ptr, ptr %1411, align 8, !tbaa !8
  %1413 = getelementptr inbounds %struct.word_type, ptr %1412, i64 0, i32 1
  %1414 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1413) #6
  br label %1415

1415:                                             ; preds = %1409, %1405
  %1416 = call ptr @LexGetToken() #6
  store ptr %1416, ptr %5, align 8, !tbaa !8
  br label %2772

1417:                                             ; preds = %226
  %1418 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %1419 = load ptr, ptr %1418, align 8, !tbaa !5
  %1420 = icmp eq ptr %1419, null
  br i1 %1420, label %1421, label %1514

1421:                                             ; preds = %1417
  %1422 = call ptr @LexGetToken() #6
  %1423 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 1
  %1424 = load i8, ptr %1423, align 8, !tbaa !5
  switch i8 %1424, label %1510 [
    i8 2, label %1425
    i8 53, label %1446
    i8 54, label %1466
    i8 11, label %1486
  ]

1425:                                             ; preds = %1421
  %1426 = getelementptr inbounds %struct.closure_type, ptr %1422, i64 0, i32 5
  %1427 = load ptr, ptr %1426, align 8, !tbaa !5
  %1428 = load ptr, ptr %5, align 8, !tbaa !8
  %1429 = getelementptr inbounds %struct.closure_type, ptr %1428, i64 0, i32 5
  store ptr %1427, ptr %1429, align 8, !tbaa !5
  store ptr %1422, ptr @zz_hold, align 8, !tbaa !8
  %1430 = load i8, ptr %1423, align 8, !tbaa !5
  %1431 = add i8 %1430, -11
  %1432 = icmp ult i8 %1431, 2
  %1433 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 1, i32 0, i32 1
  %1434 = zext i8 %1430 to i64
  %1435 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1434
  %1436 = select i1 %1432, ptr %1433, ptr %1435
  %1437 = load i8, ptr %1436, align 1, !tbaa !5
  %1438 = zext i8 %1437 to i32
  store i32 %1438, ptr @zz_size, align 4, !tbaa !10
  %1439 = zext i8 %1437 to i64
  %1440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1439
  %1441 = load ptr, ptr %1440, align 8, !tbaa !8
  store ptr %1441, ptr %1422, align 8, !tbaa !5
  %1442 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1443 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1444 = sext i32 %1443 to i64
  %1445 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1444
  store ptr %1442, ptr %1445, align 8, !tbaa !8
  br label %1514

1446:                                             ; preds = %1421
  %1447 = load ptr, ptr @VerbatimSym, align 8, !tbaa !8
  %1448 = load ptr, ptr %5, align 8, !tbaa !8
  %1449 = getelementptr inbounds %struct.closure_type, ptr %1448, i64 0, i32 5
  store ptr %1447, ptr %1449, align 8, !tbaa !5
  store ptr %1422, ptr @zz_hold, align 8, !tbaa !8
  %1450 = load i8, ptr %1423, align 8, !tbaa !5
  %1451 = add i8 %1450, -11
  %1452 = icmp ult i8 %1451, 2
  %1453 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 1, i32 0, i32 1
  %1454 = zext i8 %1450 to i64
  %1455 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1454
  %1456 = select i1 %1452, ptr %1453, ptr %1455
  %1457 = load i8, ptr %1456, align 1, !tbaa !5
  %1458 = zext i8 %1457 to i32
  store i32 %1458, ptr @zz_size, align 4, !tbaa !10
  %1459 = zext i8 %1457 to i64
  %1460 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1459
  %1461 = load ptr, ptr %1460, align 8, !tbaa !8
  store ptr %1461, ptr %1422, align 8, !tbaa !5
  %1462 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1463 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1464
  store ptr %1462, ptr %1465, align 8, !tbaa !8
  br label %1514

1466:                                             ; preds = %1421
  %1467 = load ptr, ptr @RawVerbatimSym, align 8, !tbaa !8
  %1468 = load ptr, ptr %5, align 8, !tbaa !8
  %1469 = getelementptr inbounds %struct.closure_type, ptr %1468, i64 0, i32 5
  store ptr %1467, ptr %1469, align 8, !tbaa !5
  store ptr %1422, ptr @zz_hold, align 8, !tbaa !8
  %1470 = load i8, ptr %1423, align 8, !tbaa !5
  %1471 = add i8 %1470, -11
  %1472 = icmp ult i8 %1471, 2
  %1473 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 1, i32 0, i32 1
  %1474 = zext i8 %1470 to i64
  %1475 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1474
  %1476 = select i1 %1472, ptr %1473, ptr %1475
  %1477 = load i8, ptr %1476, align 1, !tbaa !5
  %1478 = zext i8 %1477 to i32
  store i32 %1478, ptr @zz_size, align 4, !tbaa !10
  %1479 = zext i8 %1477 to i64
  %1480 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1479
  %1481 = load ptr, ptr %1480, align 8, !tbaa !8
  store ptr %1481, ptr %1422, align 8, !tbaa !5
  %1482 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1483 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1484
  store ptr %1482, ptr %1485, align 8, !tbaa !8
  br label %1514

1486:                                             ; preds = %1421
  %1487 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 4
  %1488 = load i8, ptr %1487, align 8, !tbaa !5
  %1489 = icmp eq i8 %1488, 64
  br i1 %1489, label %1490, label %1510

1490:                                             ; preds = %1486
  %1491 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 24, ptr noundef nonnull @.str.34, i32 noundef 2, ptr noundef nonnull %1423, ptr noundef nonnull %1487, ptr noundef nonnull @.str.35) #6
  %1492 = load ptr, ptr %5, align 8, !tbaa !8
  %1493 = getelementptr inbounds %struct.closure_type, ptr %1492, i64 0, i32 5
  store ptr null, ptr %1493, align 8, !tbaa !5
  store ptr %1422, ptr @zz_hold, align 8, !tbaa !8
  %1494 = load i8, ptr %1423, align 8, !tbaa !5
  %1495 = add i8 %1494, -11
  %1496 = icmp ult i8 %1495, 2
  %1497 = getelementptr inbounds %struct.word_type, ptr %1422, i64 0, i32 1, i32 0, i32 1
  %1498 = zext i8 %1494 to i64
  %1499 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1498
  %1500 = select i1 %1496, ptr %1497, ptr %1499
  %1501 = load i8, ptr %1500, align 1, !tbaa !5
  %1502 = zext i8 %1501 to i32
  store i32 %1502, ptr @zz_size, align 4, !tbaa !10
  %1503 = zext i8 %1501 to i64
  %1504 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1503
  %1505 = load ptr, ptr %1504, align 8, !tbaa !8
  store ptr %1505, ptr %1422, align 8, !tbaa !5
  %1506 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1507 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1508 = sext i32 %1507 to i64
  %1509 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1508
  store ptr %1506, ptr %1509, align 8, !tbaa !8
  br label %1514

1510:                                             ; preds = %1421, %1486
  %1511 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 25, ptr noundef nonnull @.str.36, i32 noundef 2, ptr noundef nonnull %1423, ptr noundef nonnull @.str.35) #6
  %1512 = load ptr, ptr %5, align 8, !tbaa !8
  %1513 = getelementptr inbounds %struct.closure_type, ptr %1512, i64 0, i32 5
  store ptr null, ptr %1513, align 8, !tbaa !5
  br label %1514

1514:                                             ; preds = %1417, %1425, %1466, %1510, %1490, %1446
  %1515 = phi ptr [ null, %1425 ], [ null, %1446 ], [ null, %1466 ], [ null, %1490 ], [ %1422, %1510 ], [ null, %1417 ]
  br label %1516

1516:                                             ; preds = %1529, %1514
  %1517 = phi i32 [ %227, %1514 ], [ %1530, %1529 ]
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1519, label %1537

1519:                                             ; preds = %1516
  %1520 = load ptr, ptr %5, align 8, !tbaa !8
  %1521 = getelementptr inbounds %struct.word_type, ptr %1520, i64 0, i32 1
  %1522 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %1521) #6
  store ptr %1522, ptr @zz_hold, align 8, !tbaa !8
  %1523 = load i32, ptr @otop, align 4, !tbaa !10
  %1524 = add nsw i32 %1523, 1
  store i32 %1524, ptr @otop, align 4, !tbaa !10
  %1525 = icmp slt i32 %1523, 99
  br i1 %1525, label %1526, label %1531

1526:                                             ; preds = %1519
  %1527 = sext i32 %1524 to i64
  %1528 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1527
  store ptr %1522, ptr %1528, align 8, !tbaa !8
  br label %1529

1529:                                             ; preds = %1526, %1531, %1548
  %1530 = phi i32 [ %1549, %1548 ], [ 1, %1531 ], [ 1, %1526 ]
  br label %1516

1531:                                             ; preds = %1519
  %1532 = zext nneg i32 %1523 to i64
  %1533 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1532
  %1534 = load ptr, ptr %1533, align 8, !tbaa !8
  %1535 = getelementptr inbounds %struct.word_type, ptr %1534, i64 0, i32 1
  %1536 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1535) #6
  br label %1529

1537:                                             ; preds = %1516
  %1538 = load i32, ptr @ttop, align 4, !tbaa !10
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1539
  %1541 = load ptr, ptr %1540, align 8, !tbaa !8
  %1542 = getelementptr inbounds %struct.word_type, ptr %1541, i64 0, i32 2
  %1543 = load i8, ptr %1542, align 8, !tbaa !5
  %1544 = load ptr, ptr %5, align 8, !tbaa !8
  %1545 = getelementptr inbounds %struct.word_type, ptr %1544, i64 0, i32 2
  %1546 = load i8, ptr %1545, align 8, !tbaa !5
  %1547 = icmp ult i8 %1543, %1546
  br i1 %1547, label %1554, label %1548

1548:                                             ; preds = %1537
  %1549 = call fastcc i32 @Reduce(), !range !14
  %1550 = load i32, ptr @ttop, align 4, !tbaa !10
  %1551 = icmp eq i32 %1550, %13
  br i1 %1551, label %1552, label %1529

1552:                                             ; preds = %1548
  %1553 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

1554:                                             ; preds = %1537
  %1555 = add nsw i32 %1538, 1
  store i32 %1555, ptr @ttop, align 4, !tbaa !10
  %1556 = icmp slt i32 %1538, 99
  br i1 %1556, label %1557, label %1560

1557:                                             ; preds = %1554
  %1558 = sext i32 %1555 to i64
  %1559 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1558
  store ptr %1544, ptr %1559, align 8, !tbaa !8
  br label %1563

1560:                                             ; preds = %1554
  %1561 = getelementptr inbounds %struct.word_type, ptr %1541, i64 0, i32 1
  %1562 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1561) #6
  br label %1563

1563:                                             ; preds = %1560, %1557
  %1564 = call fastcc i32 @Reduce(), !range !14
  %1565 = load i32, ptr @ttop, align 4, !tbaa !10
  %1566 = icmp eq i32 %1565, %13
  br i1 %1566, label %3948, label %1567

1567:                                             ; preds = %1563
  %1568 = icmp eq ptr %1515, null
  br i1 %1568, label %1569, label %1571

1569:                                             ; preds = %1567
  %1570 = call ptr @LexGetToken() #6
  br label %1571

1571:                                             ; preds = %1567, %1569
  %1572 = phi ptr [ %1570, %1569 ], [ %1515, %1567 ]
  store ptr %1572, ptr %5, align 8, !tbaa !8
  br label %2772

1573:                                             ; preds = %226, %1586
  %1574 = phi i32 [ %1587, %1586 ], [ %227, %226 ]
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1576, label %1594

1576:                                             ; preds = %1573
  %1577 = load ptr, ptr %5, align 8, !tbaa !8
  %1578 = getelementptr inbounds %struct.word_type, ptr %1577, i64 0, i32 1
  %1579 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %1578) #6
  store ptr %1579, ptr @zz_hold, align 8, !tbaa !8
  %1580 = load i32, ptr @otop, align 4, !tbaa !10
  %1581 = add nsw i32 %1580, 1
  store i32 %1581, ptr @otop, align 4, !tbaa !10
  %1582 = icmp slt i32 %1580, 99
  br i1 %1582, label %1583, label %1588

1583:                                             ; preds = %1576
  %1584 = sext i32 %1581 to i64
  %1585 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1584
  store ptr %1579, ptr %1585, align 8, !tbaa !8
  br label %1586

1586:                                             ; preds = %1583, %1588, %1605
  %1587 = phi i32 [ %1606, %1605 ], [ 1, %1588 ], [ 1, %1583 ]
  br label %1573

1588:                                             ; preds = %1576
  %1589 = zext nneg i32 %1580 to i64
  %1590 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1589
  %1591 = load ptr, ptr %1590, align 8, !tbaa !8
  %1592 = getelementptr inbounds %struct.word_type, ptr %1591, i64 0, i32 1
  %1593 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1592) #6
  br label %1586

1594:                                             ; preds = %1573
  %1595 = load i32, ptr @ttop, align 4, !tbaa !10
  %1596 = sext i32 %1595 to i64
  %1597 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1596
  %1598 = load ptr, ptr %1597, align 8, !tbaa !8
  %1599 = getelementptr inbounds %struct.word_type, ptr %1598, i64 0, i32 2
  %1600 = load i8, ptr %1599, align 8, !tbaa !5
  %1601 = load ptr, ptr %5, align 8, !tbaa !8
  %1602 = getelementptr inbounds %struct.word_type, ptr %1601, i64 0, i32 2
  %1603 = load i8, ptr %1602, align 8, !tbaa !5
  %1604 = icmp ult i8 %1600, %1603
  br i1 %1604, label %1611, label %1605

1605:                                             ; preds = %1594
  %1606 = call fastcc i32 @Reduce(), !range !14
  %1607 = load i32, ptr @ttop, align 4, !tbaa !10
  %1608 = icmp eq i32 %1607, %13
  br i1 %1608, label %1609, label %1586

1609:                                             ; preds = %1605
  %1610 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

1611:                                             ; preds = %1594
  %1612 = add nsw i32 %1595, 1
  store i32 %1612, ptr @ttop, align 4, !tbaa !10
  %1613 = icmp slt i32 %1595, 99
  br i1 %1613, label %1614, label %1617

1614:                                             ; preds = %1611
  %1615 = sext i32 %1612 to i64
  %1616 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1615
  store ptr %1601, ptr %1616, align 8, !tbaa !8
  br label %1620

1617:                                             ; preds = %1611
  %1618 = getelementptr inbounds %struct.word_type, ptr %1598, i64 0, i32 1
  %1619 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1618) #6
  br label %1620

1620:                                             ; preds = %1617, %1614
  %1621 = call fastcc i32 @Reduce(), !range !14
  %1622 = load i32, ptr @ttop, align 4, !tbaa !10
  %1623 = icmp eq i32 %1622, %13
  br i1 %1623, label %3948, label %1624

1624:                                             ; preds = %1620
  %1625 = call ptr @LexGetToken() #6
  store ptr %1625, ptr %5, align 8, !tbaa !8
  br label %2772

1626:                                             ; preds = %226, %226, %226, %226, %226, %226
  %1627 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %1628 = load ptr, ptr %1627, align 8, !tbaa !5
  %1629 = call ptr @SymName(ptr noundef %1628) #6
  %1630 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 26, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %229, ptr noundef %1629) #6
  br label %2772

1631:                                             ; preds = %226
  %1632 = call fastcc ptr @ParseEnvClosure(ptr noundef nonnull %228, ptr noundef %1)
  %1633 = icmp eq i32 %227, 0
  br i1 %1633, label %1720, label %1634

1634:                                             ; preds = %1631
  %1635 = getelementptr inbounds i8, ptr %1632, i64 41
  %1636 = load i8, ptr %1635, align 1, !tbaa !5
  %1637 = zext i8 %1636 to i32
  %1638 = getelementptr inbounds i8, ptr %1632, i64 42
  %1639 = load i8, ptr %1638, align 2, !tbaa !5
  %1640 = zext i8 %1639 to i32
  %1641 = sub nsw i32 0, %1640
  %1642 = icmp eq i32 %1637, %1641
  br i1 %1642, label %1643, label %1650

1643:                                             ; preds = %1634
  %1644 = getelementptr inbounds %struct.word_type, ptr %1632, i64 0, i32 1
  %1645 = load i8, ptr %1644, align 8, !tbaa !5
  %1646 = icmp eq i8 %1645, 102
  %1647 = icmp eq i32 %227, 2
  %1648 = select i1 %1646, i1 true, i1 %1647
  %1649 = select i1 %1648, i8 7, i8 103
  br label %1650

1650:                                             ; preds = %1634, %1643
  %1651 = phi i32 [ 100, %1634 ], [ 101, %1643 ]
  %1652 = phi i8 [ 7, %1634 ], [ %1649, %1643 ]
  br label %1653

1653:                                             ; preds = %1650, %1661
  %1654 = load i32, ptr @ttop, align 4, !tbaa !10
  %1655 = sext i32 %1654 to i64
  %1656 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1655
  %1657 = load ptr, ptr %1656, align 8, !tbaa !8
  %1658 = getelementptr inbounds %struct.word_type, ptr %1657, i64 0, i32 2
  %1659 = load i8, ptr %1658, align 8, !tbaa !5
  %1660 = icmp ugt i8 %1652, %1659
  br i1 %1660, label %1664, label %1661

1661:                                             ; preds = %1653
  %1662 = call fastcc i32 @Reduce(), !range !14
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1720, label %1653

1664:                                             ; preds = %1653
  %1665 = zext nneg i32 %1651 to i64
  %1666 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1665
  %1667 = load i8, ptr %1666, align 1, !tbaa !5
  %1668 = zext i8 %1667 to i32
  store i32 %1668, ptr @zz_size, align 4, !tbaa !10
  %1669 = zext i8 %1667 to i64
  %1670 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1669
  %1671 = load ptr, ptr %1670, align 8, !tbaa !8
  %1672 = icmp eq ptr %1671, null
  br i1 %1672, label %1673, label %1677

1673:                                             ; preds = %1664
  %1674 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1675 = call ptr @GetMemory(i32 noundef %1668, ptr noundef %1674) #6
  store ptr %1675, ptr @zz_hold, align 8, !tbaa !8
  %1676 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1679

1677:                                             ; preds = %1664
  store ptr %1671, ptr @zz_hold, align 8, !tbaa !8
  %1678 = load ptr, ptr %1671, align 8, !tbaa !5
  store ptr %1678, ptr %1670, align 8, !tbaa !8
  br label %1679

1679:                                             ; preds = %1673, %1677
  %1680 = phi i32 [ %1676, %1673 ], [ %1654, %1677 ]
  %1681 = phi ptr [ %1675, %1673 ], [ %1671, %1677 ]
  %1682 = trunc i32 %1651 to i8
  %1683 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 1
  store i8 %1682, ptr %1683, align 8, !tbaa !5
  %1684 = getelementptr inbounds [2 x %struct.LIST], ptr %1681, i64 0, i64 1, i32 1
  store ptr %1681, ptr %1684, align 8, !tbaa !5
  %1685 = getelementptr inbounds [2 x %struct.LIST], ptr %1681, i64 0, i64 1
  store ptr %1681, ptr %1685, align 8, !tbaa !5
  %1686 = getelementptr inbounds %struct.LIST, ptr %1681, i64 0, i32 1
  store ptr %1681, ptr %1686, align 8, !tbaa !5
  store ptr %1681, ptr %1681, align 8, !tbaa !5
  %1687 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 2
  store i8 %1652, ptr %1687, align 8, !tbaa !5
  %1688 = load i8, ptr %1638, align 2, !tbaa !5
  %1689 = getelementptr inbounds i8, ptr %1681, i64 42
  store i8 %1688, ptr %1689, align 2, !tbaa !5
  %1690 = load i8, ptr %1635, align 1, !tbaa !5
  %1691 = getelementptr inbounds i8, ptr %1681, i64 41
  store i8 %1690, ptr %1691, align 1, !tbaa !5
  %1692 = getelementptr inbounds %struct.gapobj_type, ptr %1681, i64 0, i32 3
  %1693 = load i16, ptr %1692, align 4
  %1694 = and i16 %1693, -769
  %1695 = or disjoint i16 %1694, 512
  store i16 %1695, ptr %1692, align 4
  %1696 = getelementptr inbounds %struct.word_type, ptr %1632, i64 0, i32 1, i32 0, i32 2
  %1697 = load i16, ptr %1696, align 2, !tbaa !5
  %1698 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 1, i32 0, i32 2
  store i16 %1697, ptr %1698, align 2, !tbaa !5
  %1699 = getelementptr inbounds %struct.word_type, ptr %1632, i64 0, i32 1, i32 0, i32 3
  %1700 = load i32, ptr %1699, align 4
  %1701 = and i32 %1700, 1048575
  %1702 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 1, i32 0, i32 3
  %1703 = load i32, ptr %1702, align 4
  %1704 = and i32 %1703, -1048576
  %1705 = or disjoint i32 %1704, %1701
  store i32 %1705, ptr %1702, align 4
  %1706 = load i32, ptr %1699, align 4
  %1707 = and i32 %1706, -1048576
  %1708 = or disjoint i32 %1707, %1701
  store i32 %1708, ptr %1702, align 4
  %1709 = add nsw i32 %1680, 1
  store i32 %1709, ptr @ttop, align 4, !tbaa !10
  %1710 = icmp slt i32 %1680, 99
  br i1 %1710, label %1711, label %1714

1711:                                             ; preds = %1679
  %1712 = sext i32 %1709 to i64
  %1713 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1712
  store ptr %1681, ptr %1713, align 8, !tbaa !8
  br label %1720

1714:                                             ; preds = %1679
  %1715 = zext nneg i32 %1680 to i64
  %1716 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1715
  %1717 = load ptr, ptr %1716, align 8, !tbaa !8
  %1718 = getelementptr inbounds %struct.word_type, ptr %1717, i64 0, i32 1
  %1719 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1718) #6
  br label %1720

1720:                                             ; preds = %1661, %1714, %1711, %1631
  store ptr %1632, ptr @zz_hold, align 8, !tbaa !8
  %1721 = load i32, ptr @otop, align 4, !tbaa !10
  %1722 = add nsw i32 %1721, 1
  store i32 %1722, ptr @otop, align 4, !tbaa !10
  %1723 = icmp slt i32 %1721, 99
  br i1 %1723, label %1724, label %1727

1724:                                             ; preds = %1720
  %1725 = sext i32 %1722 to i64
  %1726 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1725
  store ptr %1632, ptr %1726, align 8, !tbaa !8
  br label %1733

1727:                                             ; preds = %1720
  %1728 = zext nneg i32 %1721 to i64
  %1729 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1728
  %1730 = load ptr, ptr %1729, align 8, !tbaa !8
  %1731 = getelementptr inbounds %struct.word_type, ptr %1730, i64 0, i32 1
  %1732 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1731) #6
  br label %1733

1733:                                             ; preds = %1727, %1724
  %1734 = call ptr @LexGetToken() #6
  store ptr %1734, ptr %5, align 8, !tbaa !8
  br label %2772

1735:                                             ; preds = %226
  %1736 = call i64 @LexNextTokenPos() #6
  %1737 = trunc i64 %1736 to i32
  %1738 = add i32 %1737, -5
  store i32 %1738, ptr %7, align 4, !tbaa !10
  %1739 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %1739, ptr @zz_hold, align 8, !tbaa !8
  %1740 = getelementptr inbounds %struct.word_type, ptr %1739, i64 0, i32 1
  %1741 = load i8, ptr %1740, align 8, !tbaa !5
  %1742 = add i8 %1741, -11
  %1743 = icmp ult i8 %1742, 2
  %1744 = getelementptr inbounds %struct.word_type, ptr %1739, i64 0, i32 1, i32 0, i32 1
  %1745 = zext i8 %1741 to i64
  %1746 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1745
  %1747 = select i1 %1743, ptr %1744, ptr %1746
  %1748 = load i8, ptr %1747, align 1, !tbaa !5
  %1749 = zext i8 %1748 to i32
  store i32 %1749, ptr @zz_size, align 4, !tbaa !10
  %1750 = zext i8 %1748 to i64
  %1751 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1750
  %1752 = load ptr, ptr %1751, align 8, !tbaa !8
  store ptr %1752, ptr %1739, align 8, !tbaa !5
  %1753 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1754 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1755
  store ptr %1753, ptr %1756, align 8, !tbaa !8
  %1757 = call ptr @LexGetToken() #6
  store ptr %1757, ptr %5, align 8, !tbaa !8
  %1758 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %1759 = call ptr @SetEnv(ptr noundef %1758, ptr noundef null) #6
  store ptr %1759, ptr %6, align 8, !tbaa !8
  %1760 = icmp eq i32 %227, 0
  br i1 %1760, label %1850, label %1761

1761:                                             ; preds = %1735
  %1762 = getelementptr inbounds i8, ptr %1759, i64 41
  %1763 = load i8, ptr %1762, align 1, !tbaa !5
  %1764 = zext i8 %1763 to i32
  %1765 = getelementptr inbounds i8, ptr %1759, i64 42
  %1766 = load i8, ptr %1765, align 2, !tbaa !5
  %1767 = zext i8 %1766 to i32
  %1768 = sub nsw i32 0, %1767
  %1769 = icmp eq i32 %1764, %1768
  br i1 %1769, label %1770, label %1777

1770:                                             ; preds = %1761
  %1771 = getelementptr inbounds %struct.word_type, ptr %1759, i64 0, i32 1
  %1772 = load i8, ptr %1771, align 8, !tbaa !5
  %1773 = icmp eq i8 %1772, 102
  %1774 = icmp eq i32 %227, 2
  %1775 = select i1 %1773, i1 true, i1 %1774
  %1776 = select i1 %1775, i8 7, i8 103
  br label %1777

1777:                                             ; preds = %1761, %1770
  %1778 = phi i32 [ 100, %1761 ], [ 101, %1770 ]
  %1779 = phi i8 [ 7, %1761 ], [ %1776, %1770 ]
  br label %1780

1780:                                             ; preds = %1777, %1788
  %1781 = load i32, ptr @ttop, align 4, !tbaa !10
  %1782 = sext i32 %1781 to i64
  %1783 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1782
  %1784 = load ptr, ptr %1783, align 8, !tbaa !8
  %1785 = getelementptr inbounds %struct.word_type, ptr %1784, i64 0, i32 2
  %1786 = load i8, ptr %1785, align 8, !tbaa !5
  %1787 = icmp ugt i8 %1779, %1786
  br i1 %1787, label %1791, label %1788

1788:                                             ; preds = %1780
  %1789 = call fastcc i32 @Reduce(), !range !14
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1850, label %1780

1791:                                             ; preds = %1780
  %1792 = zext nneg i32 %1778 to i64
  %1793 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1792
  %1794 = load i8, ptr %1793, align 1, !tbaa !5
  %1795 = zext i8 %1794 to i32
  store i32 %1795, ptr @zz_size, align 4, !tbaa !10
  %1796 = zext i8 %1794 to i64
  %1797 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1796
  %1798 = load ptr, ptr %1797, align 8, !tbaa !8
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1800, label %1804

1800:                                             ; preds = %1791
  %1801 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1802 = call ptr @GetMemory(i32 noundef %1795, ptr noundef %1801) #6
  store ptr %1802, ptr @zz_hold, align 8, !tbaa !8
  %1803 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1806

1804:                                             ; preds = %1791
  store ptr %1798, ptr @zz_hold, align 8, !tbaa !8
  %1805 = load ptr, ptr %1798, align 8, !tbaa !5
  store ptr %1805, ptr %1797, align 8, !tbaa !8
  br label %1806

1806:                                             ; preds = %1800, %1804
  %1807 = phi i32 [ %1803, %1800 ], [ %1781, %1804 ]
  %1808 = phi ptr [ %1802, %1800 ], [ %1798, %1804 ]
  %1809 = trunc i32 %1778 to i8
  %1810 = getelementptr inbounds %struct.word_type, ptr %1808, i64 0, i32 1
  store i8 %1809, ptr %1810, align 8, !tbaa !5
  %1811 = getelementptr inbounds [2 x %struct.LIST], ptr %1808, i64 0, i64 1, i32 1
  store ptr %1808, ptr %1811, align 8, !tbaa !5
  %1812 = getelementptr inbounds [2 x %struct.LIST], ptr %1808, i64 0, i64 1
  store ptr %1808, ptr %1812, align 8, !tbaa !5
  %1813 = getelementptr inbounds %struct.LIST, ptr %1808, i64 0, i32 1
  store ptr %1808, ptr %1813, align 8, !tbaa !5
  store ptr %1808, ptr %1808, align 8, !tbaa !5
  %1814 = getelementptr inbounds %struct.word_type, ptr %1808, i64 0, i32 2
  store i8 %1779, ptr %1814, align 8, !tbaa !5
  %1815 = load ptr, ptr %6, align 8, !tbaa !8
  %1816 = getelementptr inbounds i8, ptr %1815, i64 42
  %1817 = load i8, ptr %1816, align 2, !tbaa !5
  %1818 = getelementptr inbounds i8, ptr %1808, i64 42
  store i8 %1817, ptr %1818, align 2, !tbaa !5
  %1819 = getelementptr inbounds i8, ptr %1815, i64 41
  %1820 = load i8, ptr %1819, align 1, !tbaa !5
  %1821 = getelementptr inbounds i8, ptr %1808, i64 41
  store i8 %1820, ptr %1821, align 1, !tbaa !5
  %1822 = getelementptr inbounds %struct.gapobj_type, ptr %1808, i64 0, i32 3
  %1823 = load i16, ptr %1822, align 4
  %1824 = and i16 %1823, -769
  %1825 = or disjoint i16 %1824, 512
  store i16 %1825, ptr %1822, align 4
  %1826 = getelementptr inbounds %struct.word_type, ptr %1815, i64 0, i32 1, i32 0, i32 2
  %1827 = load i16, ptr %1826, align 2, !tbaa !5
  %1828 = getelementptr inbounds %struct.word_type, ptr %1808, i64 0, i32 1, i32 0, i32 2
  store i16 %1827, ptr %1828, align 2, !tbaa !5
  %1829 = getelementptr inbounds %struct.word_type, ptr %1815, i64 0, i32 1, i32 0, i32 3
  %1830 = load i32, ptr %1829, align 4
  %1831 = and i32 %1830, 1048575
  %1832 = getelementptr inbounds %struct.word_type, ptr %1808, i64 0, i32 1, i32 0, i32 3
  %1833 = load i32, ptr %1832, align 4
  %1834 = and i32 %1833, -1048576
  %1835 = or disjoint i32 %1834, %1831
  store i32 %1835, ptr %1832, align 4
  %1836 = load i32, ptr %1829, align 4
  %1837 = and i32 %1836, -1048576
  %1838 = or disjoint i32 %1837, %1831
  store i32 %1838, ptr %1832, align 4
  %1839 = add nsw i32 %1807, 1
  store i32 %1839, ptr @ttop, align 4, !tbaa !10
  %1840 = icmp slt i32 %1807, 99
  br i1 %1840, label %1841, label %1844

1841:                                             ; preds = %1806
  %1842 = sext i32 %1839 to i64
  %1843 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1842
  store ptr %1808, ptr %1843, align 8, !tbaa !8
  br label %1850

1844:                                             ; preds = %1806
  %1845 = zext nneg i32 %1807 to i64
  %1846 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1845
  %1847 = load ptr, ptr %1846, align 8, !tbaa !8
  %1848 = getelementptr inbounds %struct.word_type, ptr %1847, i64 0, i32 1
  %1849 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1848) #6
  br label %1850

1850:                                             ; preds = %1788, %1844, %1841, %1735
  %1851 = load ptr, ptr %6, align 8, !tbaa !8
  store ptr %1851, ptr @zz_hold, align 8, !tbaa !8
  %1852 = load i32, ptr @otop, align 4, !tbaa !10
  %1853 = add nsw i32 %1852, 1
  store i32 %1853, ptr @otop, align 4, !tbaa !10
  %1854 = icmp slt i32 %1852, 99
  br i1 %1854, label %1855, label %1858

1855:                                             ; preds = %1850
  %1856 = sext i32 %1853 to i64
  %1857 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1856
  store ptr %1851, ptr %1857, align 8, !tbaa !8
  br label %1864

1858:                                             ; preds = %1850
  %1859 = zext nneg i32 %1852 to i64
  %1860 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1859
  %1861 = load ptr, ptr %1860, align 8, !tbaa !8
  %1862 = getelementptr inbounds %struct.word_type, ptr %1861, i64 0, i32 1
  %1863 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1862) #6
  br label %1864

1864:                                             ; preds = %1858, %1855
  %1865 = call ptr @LexGetToken() #6
  store ptr %1865, ptr %5, align 8, !tbaa !8
  %1866 = getelementptr inbounds %struct.word_type, ptr %1865, i64 0, i32 1, i32 0, i32 2
  %1867 = load i16, ptr %1866, align 2, !tbaa !5
  %1868 = load i32, ptr %7, align 4, !tbaa !10
  %1869 = load ptr, ptr %6, align 8, !tbaa !8
  call void @EnvReadInsert(i16 noundef zeroext %1867, i32 noundef %1868, ptr noundef %1869) #6
  br label %2772

1870:                                             ; preds = %226
  %1871 = call i64 @LexNextTokenPos() #6
  %1872 = trunc i64 %1871 to i32
  %1873 = add i32 %1872, -5
  store i32 %1873, ptr %7, align 4, !tbaa !10
  %1874 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %1874, ptr @zz_hold, align 8, !tbaa !8
  %1875 = getelementptr inbounds %struct.word_type, ptr %1874, i64 0, i32 1
  %1876 = load i8, ptr %1875, align 8, !tbaa !5
  %1877 = add i8 %1876, -11
  %1878 = icmp ult i8 %1877, 2
  %1879 = getelementptr inbounds %struct.word_type, ptr %1874, i64 0, i32 1, i32 0, i32 1
  %1880 = zext i8 %1876 to i64
  %1881 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1880
  %1882 = select i1 %1878, ptr %1879, ptr %1881
  %1883 = load i8, ptr %1882, align 1, !tbaa !5
  %1884 = zext i8 %1883 to i32
  store i32 %1884, ptr @zz_size, align 4, !tbaa !10
  %1885 = zext i8 %1883 to i64
  %1886 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1885
  %1887 = load ptr, ptr %1886, align 8, !tbaa !8
  store ptr %1887, ptr %1874, align 8, !tbaa !5
  %1888 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1889 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1890 = sext i32 %1889 to i64
  %1891 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1890
  store ptr %1888, ptr %1891, align 8, !tbaa !8
  %1892 = call ptr @LexGetToken() #6
  store ptr %1892, ptr %5, align 8, !tbaa !8
  %1893 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  store ptr %1893, ptr %6, align 8, !tbaa !8
  %1894 = call ptr @LexGetToken() #6
  store ptr %1894, ptr %5, align 8, !tbaa !8
  %1895 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %1896 = load ptr, ptr %6, align 8, !tbaa !8
  %1897 = call ptr @SetEnv(ptr noundef %1895, ptr noundef %1896) #6
  store ptr %1897, ptr %6, align 8, !tbaa !8
  %1898 = icmp eq i32 %227, 0
  br i1 %1898, label %1988, label %1899

1899:                                             ; preds = %1870
  %1900 = getelementptr inbounds i8, ptr %1897, i64 41
  %1901 = load i8, ptr %1900, align 1, !tbaa !5
  %1902 = zext i8 %1901 to i32
  %1903 = getelementptr inbounds i8, ptr %1897, i64 42
  %1904 = load i8, ptr %1903, align 2, !tbaa !5
  %1905 = zext i8 %1904 to i32
  %1906 = sub nsw i32 0, %1905
  %1907 = icmp eq i32 %1902, %1906
  br i1 %1907, label %1908, label %1915

1908:                                             ; preds = %1899
  %1909 = getelementptr inbounds %struct.word_type, ptr %1897, i64 0, i32 1
  %1910 = load i8, ptr %1909, align 8, !tbaa !5
  %1911 = icmp eq i8 %1910, 102
  %1912 = icmp eq i32 %227, 2
  %1913 = select i1 %1911, i1 true, i1 %1912
  %1914 = select i1 %1913, i8 7, i8 103
  br label %1915

1915:                                             ; preds = %1899, %1908
  %1916 = phi i32 [ 100, %1899 ], [ 101, %1908 ]
  %1917 = phi i8 [ 7, %1899 ], [ %1914, %1908 ]
  br label %1918

1918:                                             ; preds = %1915, %1926
  %1919 = load i32, ptr @ttop, align 4, !tbaa !10
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1920
  %1922 = load ptr, ptr %1921, align 8, !tbaa !8
  %1923 = getelementptr inbounds %struct.word_type, ptr %1922, i64 0, i32 2
  %1924 = load i8, ptr %1923, align 8, !tbaa !5
  %1925 = icmp ugt i8 %1917, %1924
  br i1 %1925, label %1929, label %1926

1926:                                             ; preds = %1918
  %1927 = call fastcc i32 @Reduce(), !range !14
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1988, label %1918

1929:                                             ; preds = %1918
  %1930 = zext nneg i32 %1916 to i64
  %1931 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1930
  %1932 = load i8, ptr %1931, align 1, !tbaa !5
  %1933 = zext i8 %1932 to i32
  store i32 %1933, ptr @zz_size, align 4, !tbaa !10
  %1934 = zext i8 %1932 to i64
  %1935 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1934
  %1936 = load ptr, ptr %1935, align 8, !tbaa !8
  %1937 = icmp eq ptr %1936, null
  br i1 %1937, label %1938, label %1942

1938:                                             ; preds = %1929
  %1939 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1940 = call ptr @GetMemory(i32 noundef %1933, ptr noundef %1939) #6
  store ptr %1940, ptr @zz_hold, align 8, !tbaa !8
  %1941 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %1944

1942:                                             ; preds = %1929
  store ptr %1936, ptr @zz_hold, align 8, !tbaa !8
  %1943 = load ptr, ptr %1936, align 8, !tbaa !5
  store ptr %1943, ptr %1935, align 8, !tbaa !8
  br label %1944

1944:                                             ; preds = %1938, %1942
  %1945 = phi i32 [ %1941, %1938 ], [ %1919, %1942 ]
  %1946 = phi ptr [ %1940, %1938 ], [ %1936, %1942 ]
  %1947 = trunc i32 %1916 to i8
  %1948 = getelementptr inbounds %struct.word_type, ptr %1946, i64 0, i32 1
  store i8 %1947, ptr %1948, align 8, !tbaa !5
  %1949 = getelementptr inbounds [2 x %struct.LIST], ptr %1946, i64 0, i64 1, i32 1
  store ptr %1946, ptr %1949, align 8, !tbaa !5
  %1950 = getelementptr inbounds [2 x %struct.LIST], ptr %1946, i64 0, i64 1
  store ptr %1946, ptr %1950, align 8, !tbaa !5
  %1951 = getelementptr inbounds %struct.LIST, ptr %1946, i64 0, i32 1
  store ptr %1946, ptr %1951, align 8, !tbaa !5
  store ptr %1946, ptr %1946, align 8, !tbaa !5
  %1952 = getelementptr inbounds %struct.word_type, ptr %1946, i64 0, i32 2
  store i8 %1917, ptr %1952, align 8, !tbaa !5
  %1953 = load ptr, ptr %6, align 8, !tbaa !8
  %1954 = getelementptr inbounds i8, ptr %1953, i64 42
  %1955 = load i8, ptr %1954, align 2, !tbaa !5
  %1956 = getelementptr inbounds i8, ptr %1946, i64 42
  store i8 %1955, ptr %1956, align 2, !tbaa !5
  %1957 = getelementptr inbounds i8, ptr %1953, i64 41
  %1958 = load i8, ptr %1957, align 1, !tbaa !5
  %1959 = getelementptr inbounds i8, ptr %1946, i64 41
  store i8 %1958, ptr %1959, align 1, !tbaa !5
  %1960 = getelementptr inbounds %struct.gapobj_type, ptr %1946, i64 0, i32 3
  %1961 = load i16, ptr %1960, align 4
  %1962 = and i16 %1961, -769
  %1963 = or disjoint i16 %1962, 512
  store i16 %1963, ptr %1960, align 4
  %1964 = getelementptr inbounds %struct.word_type, ptr %1953, i64 0, i32 1, i32 0, i32 2
  %1965 = load i16, ptr %1964, align 2, !tbaa !5
  %1966 = getelementptr inbounds %struct.word_type, ptr %1946, i64 0, i32 1, i32 0, i32 2
  store i16 %1965, ptr %1966, align 2, !tbaa !5
  %1967 = getelementptr inbounds %struct.word_type, ptr %1953, i64 0, i32 1, i32 0, i32 3
  %1968 = load i32, ptr %1967, align 4
  %1969 = and i32 %1968, 1048575
  %1970 = getelementptr inbounds %struct.word_type, ptr %1946, i64 0, i32 1, i32 0, i32 3
  %1971 = load i32, ptr %1970, align 4
  %1972 = and i32 %1971, -1048576
  %1973 = or disjoint i32 %1972, %1969
  store i32 %1973, ptr %1970, align 4
  %1974 = load i32, ptr %1967, align 4
  %1975 = and i32 %1974, -1048576
  %1976 = or disjoint i32 %1975, %1969
  store i32 %1976, ptr %1970, align 4
  %1977 = add nsw i32 %1945, 1
  store i32 %1977, ptr @ttop, align 4, !tbaa !10
  %1978 = icmp slt i32 %1945, 99
  br i1 %1978, label %1979, label %1982

1979:                                             ; preds = %1944
  %1980 = sext i32 %1977 to i64
  %1981 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1980
  store ptr %1946, ptr %1981, align 8, !tbaa !8
  br label %1988

1982:                                             ; preds = %1944
  %1983 = zext nneg i32 %1945 to i64
  %1984 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %1983
  %1985 = load ptr, ptr %1984, align 8, !tbaa !8
  %1986 = getelementptr inbounds %struct.word_type, ptr %1985, i64 0, i32 1
  %1987 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1986) #6
  br label %1988

1988:                                             ; preds = %1926, %1982, %1979, %1870
  %1989 = load ptr, ptr %6, align 8, !tbaa !8
  store ptr %1989, ptr @zz_hold, align 8, !tbaa !8
  %1990 = load i32, ptr @otop, align 4, !tbaa !10
  %1991 = add nsw i32 %1990, 1
  store i32 %1991, ptr @otop, align 4, !tbaa !10
  %1992 = icmp slt i32 %1990, 99
  br i1 %1992, label %1993, label %1996

1993:                                             ; preds = %1988
  %1994 = sext i32 %1991 to i64
  %1995 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1994
  store ptr %1989, ptr %1995, align 8, !tbaa !8
  br label %2002

1996:                                             ; preds = %1988
  %1997 = zext nneg i32 %1990 to i64
  %1998 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1997
  %1999 = load ptr, ptr %1998, align 8, !tbaa !8
  %2000 = getelementptr inbounds %struct.word_type, ptr %1999, i64 0, i32 1
  %2001 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2000) #6
  br label %2002

2002:                                             ; preds = %1996, %1993
  %2003 = call ptr @LexGetToken() #6
  store ptr %2003, ptr %5, align 8, !tbaa !8
  %2004 = getelementptr inbounds %struct.word_type, ptr %2003, i64 0, i32 1, i32 0, i32 2
  %2005 = load i16, ptr %2004, align 2, !tbaa !5
  %2006 = load i32, ptr %7, align 4, !tbaa !10
  %2007 = load ptr, ptr %6, align 8, !tbaa !8
  call void @EnvReadInsert(i16 noundef zeroext %2005, i32 noundef %2006, ptr noundef %2007) #6
  br label %2772

2008:                                             ; preds = %226
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %2009 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 85), align 1, !tbaa !5
  %2010 = zext i8 %2009 to i32
  store i32 %2010, ptr @zz_size, align 4, !tbaa !10
  %2011 = zext i8 %2009 to i64
  %2012 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2011
  %2013 = load ptr, ptr %2012, align 8, !tbaa !8
  store ptr %2013, ptr %228, align 8, !tbaa !5
  %2014 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2015 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2016 = sext i32 %2015 to i64
  %2017 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2016
  store ptr %2014, ptr %2017, align 8, !tbaa !8
  %2018 = call ptr @LexGetToken() #6
  store ptr %2018, ptr %5, align 8, !tbaa !8
  %2019 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !5
  %2020 = zext i8 %2019 to i32
  store i32 %2020, ptr @zz_size, align 4, !tbaa !10
  %2021 = zext i8 %2019 to i64
  %2022 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2021
  %2023 = load ptr, ptr %2022, align 8, !tbaa !8
  %2024 = icmp eq ptr %2023, null
  br i1 %2024, label %2025, label %2028

2025:                                             ; preds = %2008
  %2026 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2027 = call ptr @GetMemory(i32 noundef %2020, ptr noundef %2026) #6
  store ptr %2027, ptr @zz_hold, align 8, !tbaa !8
  br label %2030

2028:                                             ; preds = %2008
  store ptr %2023, ptr @zz_hold, align 8, !tbaa !8
  %2029 = load ptr, ptr %2023, align 8, !tbaa !5
  store ptr %2029, ptr %2022, align 8, !tbaa !8
  br label %2030

2030:                                             ; preds = %2025, %2028
  %2031 = phi ptr [ %2027, %2025 ], [ %2023, %2028 ]
  %2032 = getelementptr inbounds %struct.word_type, ptr %2031, i64 0, i32 1
  store i8 82, ptr %2032, align 8, !tbaa !5
  %2033 = getelementptr inbounds [2 x %struct.LIST], ptr %2031, i64 0, i64 1, i32 1
  store ptr %2031, ptr %2033, align 8, !tbaa !5
  %2034 = getelementptr inbounds [2 x %struct.LIST], ptr %2031, i64 0, i64 1
  store ptr %2031, ptr %2034, align 8, !tbaa !5
  %2035 = getelementptr inbounds %struct.LIST, ptr %2031, i64 0, i32 1
  store ptr %2031, ptr %2035, align 8, !tbaa !5
  store ptr %2031, ptr %2031, align 8, !tbaa !5
  %2036 = icmp eq i32 %227, 0
  br i1 %2036, label %2117, label %2037

2037:                                             ; preds = %2030
  %2038 = getelementptr inbounds i8, ptr %2031, i64 41
  %2039 = load i8, ptr %2038, align 1, !tbaa !5
  %2040 = zext i8 %2039 to i32
  %2041 = getelementptr inbounds i8, ptr %2031, i64 42
  %2042 = load i8, ptr %2041, align 2, !tbaa !5
  %2043 = zext i8 %2042 to i32
  %2044 = sub nsw i32 0, %2043
  %2045 = icmp eq i32 %2040, %2044
  %2046 = icmp eq i32 %227, 2
  %2047 = select i1 %2045, i32 101, i32 100
  %2048 = select i1 %2046, i8 7, i8 103
  %2049 = select i1 %2045, i8 %2048, i8 7
  br label %2050

2050:                                             ; preds = %2037, %2058
  %2051 = load i32, ptr @ttop, align 4, !tbaa !10
  %2052 = sext i32 %2051 to i64
  %2053 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2052
  %2054 = load ptr, ptr %2053, align 8, !tbaa !8
  %2055 = getelementptr inbounds %struct.word_type, ptr %2054, i64 0, i32 2
  %2056 = load i8, ptr %2055, align 8, !tbaa !5
  %2057 = icmp ugt i8 %2049, %2056
  br i1 %2057, label %2061, label %2058

2058:                                             ; preds = %2050
  %2059 = call fastcc i32 @Reduce(), !range !14
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2117, label %2050

2061:                                             ; preds = %2050
  %2062 = zext nneg i32 %2047 to i64
  %2063 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2062
  %2064 = load i8, ptr %2063, align 1, !tbaa !5
  %2065 = zext i8 %2064 to i32
  store i32 %2065, ptr @zz_size, align 4, !tbaa !10
  %2066 = zext i8 %2064 to i64
  %2067 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2066
  %2068 = load ptr, ptr %2067, align 8, !tbaa !8
  %2069 = icmp eq ptr %2068, null
  br i1 %2069, label %2070, label %2074

2070:                                             ; preds = %2061
  %2071 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2072 = call ptr @GetMemory(i32 noundef %2065, ptr noundef %2071) #6
  store ptr %2072, ptr @zz_hold, align 8, !tbaa !8
  %2073 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2076

2074:                                             ; preds = %2061
  store ptr %2068, ptr @zz_hold, align 8, !tbaa !8
  %2075 = load ptr, ptr %2068, align 8, !tbaa !5
  store ptr %2075, ptr %2067, align 8, !tbaa !8
  br label %2076

2076:                                             ; preds = %2070, %2074
  %2077 = phi i32 [ %2073, %2070 ], [ %2051, %2074 ]
  %2078 = phi ptr [ %2072, %2070 ], [ %2068, %2074 ]
  %2079 = trunc i32 %2047 to i8
  %2080 = getelementptr inbounds %struct.word_type, ptr %2078, i64 0, i32 1
  store i8 %2079, ptr %2080, align 8, !tbaa !5
  %2081 = getelementptr inbounds [2 x %struct.LIST], ptr %2078, i64 0, i64 1, i32 1
  store ptr %2078, ptr %2081, align 8, !tbaa !5
  %2082 = getelementptr inbounds [2 x %struct.LIST], ptr %2078, i64 0, i64 1
  store ptr %2078, ptr %2082, align 8, !tbaa !5
  %2083 = getelementptr inbounds %struct.LIST, ptr %2078, i64 0, i32 1
  store ptr %2078, ptr %2083, align 8, !tbaa !5
  store ptr %2078, ptr %2078, align 8, !tbaa !5
  %2084 = getelementptr inbounds %struct.word_type, ptr %2078, i64 0, i32 2
  store i8 %2049, ptr %2084, align 8, !tbaa !5
  %2085 = load i8, ptr %2041, align 2, !tbaa !5
  %2086 = getelementptr inbounds i8, ptr %2078, i64 42
  store i8 %2085, ptr %2086, align 2, !tbaa !5
  %2087 = load i8, ptr %2038, align 1, !tbaa !5
  %2088 = getelementptr inbounds i8, ptr %2078, i64 41
  store i8 %2087, ptr %2088, align 1, !tbaa !5
  %2089 = getelementptr inbounds %struct.gapobj_type, ptr %2078, i64 0, i32 3
  %2090 = load i16, ptr %2089, align 4
  %2091 = and i16 %2090, -769
  %2092 = or disjoint i16 %2091, 512
  store i16 %2092, ptr %2089, align 4
  %2093 = getelementptr inbounds %struct.word_type, ptr %2031, i64 0, i32 1, i32 0, i32 2
  %2094 = load i16, ptr %2093, align 2, !tbaa !5
  %2095 = getelementptr inbounds %struct.word_type, ptr %2078, i64 0, i32 1, i32 0, i32 2
  store i16 %2094, ptr %2095, align 2, !tbaa !5
  %2096 = getelementptr inbounds %struct.word_type, ptr %2031, i64 0, i32 1, i32 0, i32 3
  %2097 = load i32, ptr %2096, align 4
  %2098 = and i32 %2097, 1048575
  %2099 = getelementptr inbounds %struct.word_type, ptr %2078, i64 0, i32 1, i32 0, i32 3
  %2100 = load i32, ptr %2099, align 4
  %2101 = and i32 %2100, -1048576
  %2102 = or disjoint i32 %2101, %2098
  store i32 %2102, ptr %2099, align 4
  %2103 = load i32, ptr %2096, align 4
  %2104 = and i32 %2103, -1048576
  %2105 = or disjoint i32 %2104, %2098
  store i32 %2105, ptr %2099, align 4
  %2106 = add nsw i32 %2077, 1
  store i32 %2106, ptr @ttop, align 4, !tbaa !10
  %2107 = icmp slt i32 %2077, 99
  br i1 %2107, label %2108, label %2111

2108:                                             ; preds = %2076
  %2109 = sext i32 %2106 to i64
  %2110 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2109
  store ptr %2078, ptr %2110, align 8, !tbaa !8
  br label %2117

2111:                                             ; preds = %2076
  %2112 = zext nneg i32 %2077 to i64
  %2113 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2112
  %2114 = load ptr, ptr %2113, align 8, !tbaa !8
  %2115 = getelementptr inbounds %struct.word_type, ptr %2114, i64 0, i32 1
  %2116 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2115) #6
  br label %2117

2117:                                             ; preds = %2058, %2111, %2108, %2030
  store ptr %2031, ptr @zz_hold, align 8, !tbaa !8
  %2118 = load i32, ptr @otop, align 4, !tbaa !10
  %2119 = add nsw i32 %2118, 1
  store i32 %2119, ptr @otop, align 4, !tbaa !10
  %2120 = icmp slt i32 %2118, 99
  br i1 %2120, label %2121, label %2124

2121:                                             ; preds = %2117
  %2122 = sext i32 %2119 to i64
  %2123 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2122
  store ptr %2031, ptr %2123, align 8, !tbaa !8
  br label %2772

2124:                                             ; preds = %2117
  %2125 = zext nneg i32 %2118 to i64
  %2126 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2125
  %2127 = load ptr, ptr %2126, align 8, !tbaa !8
  %2128 = getelementptr inbounds %struct.word_type, ptr %2127, i64 0, i32 1
  %2129 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2128) #6
  br label %2772

2130:                                             ; preds = %226
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %2131 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 86), align 1, !tbaa !5
  %2132 = zext i8 %2131 to i32
  store i32 %2132, ptr @zz_size, align 4, !tbaa !10
  %2133 = zext i8 %2131 to i64
  %2134 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2133
  %2135 = load ptr, ptr %2134, align 8, !tbaa !8
  store ptr %2135, ptr %228, align 8, !tbaa !5
  %2136 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2137 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2138 = sext i32 %2137 to i64
  %2139 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2138
  store ptr %2136, ptr %2139, align 8, !tbaa !8
  %2140 = call ptr @LexGetToken() #6
  store ptr %2140, ptr %5, align 8, !tbaa !8
  %2141 = getelementptr inbounds %struct.word_type, ptr %2140, i64 0, i32 1
  %2142 = load i8, ptr %2141, align 8, !tbaa !5
  %2143 = icmp eq i8 %2142, 12
  br i1 %2143, label %2144, label %2150

2144:                                             ; preds = %2130
  %2145 = getelementptr inbounds %struct.word_type, ptr %2140, i64 0, i32 4
  %2146 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2145, ptr noundef nonnull @.str.38, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %2147 = icmp eq i32 %2146, 2
  br i1 %2147, label %2154, label %2148

2148:                                             ; preds = %2144
  %2149 = load ptr, ptr %5, align 8, !tbaa !8
  br label %2150

2150:                                             ; preds = %2148, %2130
  %2151 = phi ptr [ %2149, %2148 ], [ %2140, %2130 ]
  %2152 = getelementptr inbounds %struct.word_type, ptr %2151, i64 0, i32 1
  %2153 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 37, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %2152) #6
  br label %2154

2154:                                             ; preds = %2150, %2144
  %2155 = load ptr, ptr %5, align 8, !tbaa !8
  %2156 = getelementptr inbounds %struct.word_type, ptr %2155, i64 0, i32 1, i32 0, i32 2
  %2157 = load i16, ptr %2156, align 2, !tbaa !5
  %2158 = load i32, ptr %7, align 4, !tbaa !10
  %2159 = call i32 @EnvReadRetrieve(i16 noundef zeroext %2157, i32 noundef %2158, ptr noundef nonnull %6) #6
  %2160 = icmp eq i32 %2159, 0
  %2161 = load ptr, ptr %5, align 8, !tbaa !8
  br i1 %2160, label %2162, label %2187

2162:                                             ; preds = %2154
  %2163 = getelementptr inbounds %struct.word_type, ptr %2161, i64 0, i32 1, i32 0, i32 2
  %2164 = load i16, ptr %2163, align 2, !tbaa !5
  %2165 = load i32, ptr %7, align 4, !tbaa !10
  %2166 = load i32, ptr %8, align 4, !tbaa !10
  call void @LexPush(i16 noundef zeroext %2164, i32 noundef %2165, i32 noundef 3, i32 noundef %2166, i32 noundef 1) #6
  %2167 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %2167, ptr @zz_hold, align 8, !tbaa !8
  %2168 = getelementptr inbounds %struct.word_type, ptr %2167, i64 0, i32 1
  %2169 = load i8, ptr %2168, align 8, !tbaa !5
  %2170 = add i8 %2169, -11
  %2171 = icmp ult i8 %2170, 2
  %2172 = getelementptr inbounds %struct.word_type, ptr %2167, i64 0, i32 1, i32 0, i32 1
  %2173 = zext i8 %2169 to i64
  %2174 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2173
  %2175 = select i1 %2171, ptr %2172, ptr %2174
  %2176 = load i8, ptr %2175, align 1, !tbaa !5
  %2177 = zext i8 %2176 to i32
  store i32 %2177, ptr @zz_size, align 4, !tbaa !10
  %2178 = zext i8 %2176 to i64
  %2179 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2178
  %2180 = load ptr, ptr %2179, align 8, !tbaa !8
  store ptr %2180, ptr %2167, align 8, !tbaa !5
  %2181 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2182 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2183 = sext i32 %2182 to i64
  %2184 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2183
  store ptr %2181, ptr %2184, align 8, !tbaa !8
  %2185 = call ptr @LexGetToken() #6
  store ptr %2185, ptr %5, align 8, !tbaa !8
  %2186 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  store ptr %2186, ptr %6, align 8, !tbaa !8
  call void @LexPop() #6
  br label %2205

2187:                                             ; preds = %2154
  store ptr %2161, ptr @zz_hold, align 8, !tbaa !8
  %2188 = getelementptr inbounds %struct.word_type, ptr %2161, i64 0, i32 1
  %2189 = load i8, ptr %2188, align 8, !tbaa !5
  %2190 = add i8 %2189, -11
  %2191 = icmp ult i8 %2190, 2
  %2192 = getelementptr inbounds %struct.word_type, ptr %2161, i64 0, i32 1, i32 0, i32 1
  %2193 = zext i8 %2189 to i64
  %2194 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2193
  %2195 = select i1 %2191, ptr %2192, ptr %2194
  %2196 = load i8, ptr %2195, align 1, !tbaa !5
  %2197 = zext i8 %2196 to i32
  store i32 %2197, ptr @zz_size, align 4, !tbaa !10
  %2198 = zext i8 %2196 to i64
  %2199 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2198
  %2200 = load ptr, ptr %2199, align 8, !tbaa !8
  store ptr %2200, ptr %2161, align 8, !tbaa !5
  %2201 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2202 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2203 = sext i32 %2202 to i64
  %2204 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2203
  store ptr %2201, ptr %2204, align 8, !tbaa !8
  br label %2205

2205:                                             ; preds = %2187, %2162
  %2206 = icmp eq i32 %227, 0
  br i1 %2206, label %2297, label %2207

2207:                                             ; preds = %2205
  %2208 = load ptr, ptr %6, align 8, !tbaa !8
  %2209 = getelementptr inbounds i8, ptr %2208, i64 41
  %2210 = load i8, ptr %2209, align 1, !tbaa !5
  %2211 = zext i8 %2210 to i32
  %2212 = getelementptr inbounds i8, ptr %2208, i64 42
  %2213 = load i8, ptr %2212, align 2, !tbaa !5
  %2214 = zext i8 %2213 to i32
  %2215 = sub nsw i32 0, %2214
  %2216 = icmp eq i32 %2211, %2215
  br i1 %2216, label %2217, label %2224

2217:                                             ; preds = %2207
  %2218 = getelementptr inbounds %struct.word_type, ptr %2208, i64 0, i32 1
  %2219 = load i8, ptr %2218, align 8, !tbaa !5
  %2220 = icmp eq i8 %2219, 102
  %2221 = icmp eq i32 %227, 2
  %2222 = select i1 %2220, i1 true, i1 %2221
  %2223 = select i1 %2222, i8 7, i8 103
  br label %2224

2224:                                             ; preds = %2207, %2217
  %2225 = phi i32 [ 100, %2207 ], [ 101, %2217 ]
  %2226 = phi i8 [ 7, %2207 ], [ %2223, %2217 ]
  br label %2227

2227:                                             ; preds = %2224, %2235
  %2228 = load i32, ptr @ttop, align 4, !tbaa !10
  %2229 = sext i32 %2228 to i64
  %2230 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2229
  %2231 = load ptr, ptr %2230, align 8, !tbaa !8
  %2232 = getelementptr inbounds %struct.word_type, ptr %2231, i64 0, i32 2
  %2233 = load i8, ptr %2232, align 8, !tbaa !5
  %2234 = icmp ugt i8 %2226, %2233
  br i1 %2234, label %2238, label %2235

2235:                                             ; preds = %2227
  %2236 = call fastcc i32 @Reduce(), !range !14
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2297, label %2227

2238:                                             ; preds = %2227
  %2239 = zext nneg i32 %2225 to i64
  %2240 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2239
  %2241 = load i8, ptr %2240, align 1, !tbaa !5
  %2242 = zext i8 %2241 to i32
  store i32 %2242, ptr @zz_size, align 4, !tbaa !10
  %2243 = zext i8 %2241 to i64
  %2244 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2243
  %2245 = load ptr, ptr %2244, align 8, !tbaa !8
  %2246 = icmp eq ptr %2245, null
  br i1 %2246, label %2247, label %2251

2247:                                             ; preds = %2238
  %2248 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2249 = call ptr @GetMemory(i32 noundef %2242, ptr noundef %2248) #6
  store ptr %2249, ptr @zz_hold, align 8, !tbaa !8
  %2250 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2253

2251:                                             ; preds = %2238
  store ptr %2245, ptr @zz_hold, align 8, !tbaa !8
  %2252 = load ptr, ptr %2245, align 8, !tbaa !5
  store ptr %2252, ptr %2244, align 8, !tbaa !8
  br label %2253

2253:                                             ; preds = %2247, %2251
  %2254 = phi i32 [ %2250, %2247 ], [ %2228, %2251 ]
  %2255 = phi ptr [ %2249, %2247 ], [ %2245, %2251 ]
  %2256 = trunc i32 %2225 to i8
  %2257 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 1
  store i8 %2256, ptr %2257, align 8, !tbaa !5
  %2258 = getelementptr inbounds [2 x %struct.LIST], ptr %2255, i64 0, i64 1, i32 1
  store ptr %2255, ptr %2258, align 8, !tbaa !5
  %2259 = getelementptr inbounds [2 x %struct.LIST], ptr %2255, i64 0, i64 1
  store ptr %2255, ptr %2259, align 8, !tbaa !5
  %2260 = getelementptr inbounds %struct.LIST, ptr %2255, i64 0, i32 1
  store ptr %2255, ptr %2260, align 8, !tbaa !5
  store ptr %2255, ptr %2255, align 8, !tbaa !5
  %2261 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 2
  store i8 %2226, ptr %2261, align 8, !tbaa !5
  %2262 = load ptr, ptr %6, align 8, !tbaa !8
  %2263 = getelementptr inbounds i8, ptr %2262, i64 42
  %2264 = load i8, ptr %2263, align 2, !tbaa !5
  %2265 = getelementptr inbounds i8, ptr %2255, i64 42
  store i8 %2264, ptr %2265, align 2, !tbaa !5
  %2266 = getelementptr inbounds i8, ptr %2262, i64 41
  %2267 = load i8, ptr %2266, align 1, !tbaa !5
  %2268 = getelementptr inbounds i8, ptr %2255, i64 41
  store i8 %2267, ptr %2268, align 1, !tbaa !5
  %2269 = getelementptr inbounds %struct.gapobj_type, ptr %2255, i64 0, i32 3
  %2270 = load i16, ptr %2269, align 4
  %2271 = and i16 %2270, -769
  %2272 = or disjoint i16 %2271, 512
  store i16 %2272, ptr %2269, align 4
  %2273 = getelementptr inbounds %struct.word_type, ptr %2262, i64 0, i32 1, i32 0, i32 2
  %2274 = load i16, ptr %2273, align 2, !tbaa !5
  %2275 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 1, i32 0, i32 2
  store i16 %2274, ptr %2275, align 2, !tbaa !5
  %2276 = getelementptr inbounds %struct.word_type, ptr %2262, i64 0, i32 1, i32 0, i32 3
  %2277 = load i32, ptr %2276, align 4
  %2278 = and i32 %2277, 1048575
  %2279 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 1, i32 0, i32 3
  %2280 = load i32, ptr %2279, align 4
  %2281 = and i32 %2280, -1048576
  %2282 = or disjoint i32 %2281, %2278
  store i32 %2282, ptr %2279, align 4
  %2283 = load i32, ptr %2276, align 4
  %2284 = and i32 %2283, -1048576
  %2285 = or disjoint i32 %2284, %2278
  store i32 %2285, ptr %2279, align 4
  %2286 = add nsw i32 %2254, 1
  store i32 %2286, ptr @ttop, align 4, !tbaa !10
  %2287 = icmp slt i32 %2254, 99
  br i1 %2287, label %2288, label %2291

2288:                                             ; preds = %2253
  %2289 = sext i32 %2286 to i64
  %2290 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2289
  store ptr %2255, ptr %2290, align 8, !tbaa !8
  br label %2297

2291:                                             ; preds = %2253
  %2292 = zext nneg i32 %2254 to i64
  %2293 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2292
  %2294 = load ptr, ptr %2293, align 8, !tbaa !8
  %2295 = getelementptr inbounds %struct.word_type, ptr %2294, i64 0, i32 1
  %2296 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2295) #6
  br label %2297

2297:                                             ; preds = %2235, %2291, %2288, %2205
  %2298 = load ptr, ptr %6, align 8, !tbaa !8
  store ptr %2298, ptr @zz_hold, align 8, !tbaa !8
  %2299 = load i32, ptr @otop, align 4, !tbaa !10
  %2300 = add nsw i32 %2299, 1
  store i32 %2300, ptr @otop, align 4, !tbaa !10
  %2301 = icmp slt i32 %2299, 99
  br i1 %2301, label %2302, label %2305

2302:                                             ; preds = %2297
  %2303 = sext i32 %2300 to i64
  %2304 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2303
  store ptr %2298, ptr %2304, align 8, !tbaa !8
  br label %2311

2305:                                             ; preds = %2297
  %2306 = zext nneg i32 %2299 to i64
  %2307 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2306
  %2308 = load ptr, ptr %2307, align 8, !tbaa !8
  %2309 = getelementptr inbounds %struct.word_type, ptr %2308, i64 0, i32 1
  %2310 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2309) #6
  br label %2311

2311:                                             ; preds = %2305, %2302
  %2312 = call ptr @LexGetToken() #6
  store ptr %2312, ptr %5, align 8, !tbaa !8
  br label %2772

2313:                                             ; preds = %226
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %2314 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 87), align 1, !tbaa !5
  %2315 = zext i8 %2314 to i32
  store i32 %2315, ptr @zz_size, align 4, !tbaa !10
  %2316 = zext i8 %2314 to i64
  %2317 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2316
  %2318 = load ptr, ptr %2317, align 8, !tbaa !8
  store ptr %2318, ptr %228, align 8, !tbaa !5
  %2319 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2320 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2321 = sext i32 %2320 to i64
  %2322 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2321
  store ptr %2319, ptr %2322, align 8, !tbaa !8
  %2323 = call ptr @LexGetToken() #6
  store ptr %2323, ptr %5, align 8, !tbaa !8
  %2324 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  store ptr %2324, ptr %6, align 8, !tbaa !8
  store i32 0, ptr %9, align 4, !tbaa !10
  call void @SetScope(ptr noundef %2324, ptr noundef nonnull %9, i32 noundef 0)
  %2325 = call ptr @LexGetToken() #6
  store ptr %2325, ptr %5, align 8, !tbaa !8
  %2326 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %2327 = load i32, ptr %9, align 4, !tbaa !10
  %2328 = icmp sgt i32 %2327, 0
  br i1 %2328, label %2329, label %2333

2329:                                             ; preds = %2313, %2329
  %2330 = phi i32 [ %2331, %2329 ], [ 0, %2313 ]
  call void @PopScope() #6
  %2331 = add nuw nsw i32 %2330, 1
  %2332 = icmp eq i32 %2331, %2327
  br i1 %2332, label %2333, label %2329

2333:                                             ; preds = %2329, %2313
  %2334 = load ptr, ptr %6, align 8, !tbaa !8
  call void @AttachEnv(ptr noundef %2334, ptr noundef %2326) #6
  %2335 = icmp eq i32 %227, 0
  br i1 %2335, label %2422, label %2336

2336:                                             ; preds = %2333
  %2337 = getelementptr inbounds i8, ptr %2326, i64 41
  %2338 = load i8, ptr %2337, align 1, !tbaa !5
  %2339 = zext i8 %2338 to i32
  %2340 = getelementptr inbounds i8, ptr %2326, i64 42
  %2341 = load i8, ptr %2340, align 2, !tbaa !5
  %2342 = zext i8 %2341 to i32
  %2343 = sub nsw i32 0, %2342
  %2344 = icmp eq i32 %2339, %2343
  br i1 %2344, label %2345, label %2352

2345:                                             ; preds = %2336
  %2346 = getelementptr inbounds %struct.word_type, ptr %2326, i64 0, i32 1
  %2347 = load i8, ptr %2346, align 8, !tbaa !5
  %2348 = icmp eq i8 %2347, 102
  %2349 = icmp eq i32 %227, 2
  %2350 = select i1 %2348, i1 true, i1 %2349
  %2351 = select i1 %2350, i8 7, i8 103
  br label %2352

2352:                                             ; preds = %2336, %2345
  %2353 = phi i32 [ 100, %2336 ], [ 101, %2345 ]
  %2354 = phi i8 [ 7, %2336 ], [ %2351, %2345 ]
  br label %2355

2355:                                             ; preds = %2352, %2363
  %2356 = load i32, ptr @ttop, align 4, !tbaa !10
  %2357 = sext i32 %2356 to i64
  %2358 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2357
  %2359 = load ptr, ptr %2358, align 8, !tbaa !8
  %2360 = getelementptr inbounds %struct.word_type, ptr %2359, i64 0, i32 2
  %2361 = load i8, ptr %2360, align 8, !tbaa !5
  %2362 = icmp ugt i8 %2354, %2361
  br i1 %2362, label %2366, label %2363

2363:                                             ; preds = %2355
  %2364 = call fastcc i32 @Reduce(), !range !14
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2422, label %2355

2366:                                             ; preds = %2355
  %2367 = zext nneg i32 %2353 to i64
  %2368 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2367
  %2369 = load i8, ptr %2368, align 1, !tbaa !5
  %2370 = zext i8 %2369 to i32
  store i32 %2370, ptr @zz_size, align 4, !tbaa !10
  %2371 = zext i8 %2369 to i64
  %2372 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2371
  %2373 = load ptr, ptr %2372, align 8, !tbaa !8
  %2374 = icmp eq ptr %2373, null
  br i1 %2374, label %2375, label %2379

2375:                                             ; preds = %2366
  %2376 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2377 = call ptr @GetMemory(i32 noundef %2370, ptr noundef %2376) #6
  store ptr %2377, ptr @zz_hold, align 8, !tbaa !8
  %2378 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2381

2379:                                             ; preds = %2366
  store ptr %2373, ptr @zz_hold, align 8, !tbaa !8
  %2380 = load ptr, ptr %2373, align 8, !tbaa !5
  store ptr %2380, ptr %2372, align 8, !tbaa !8
  br label %2381

2381:                                             ; preds = %2375, %2379
  %2382 = phi i32 [ %2378, %2375 ], [ %2356, %2379 ]
  %2383 = phi ptr [ %2377, %2375 ], [ %2373, %2379 ]
  %2384 = trunc i32 %2353 to i8
  %2385 = getelementptr inbounds %struct.word_type, ptr %2383, i64 0, i32 1
  store i8 %2384, ptr %2385, align 8, !tbaa !5
  %2386 = getelementptr inbounds [2 x %struct.LIST], ptr %2383, i64 0, i64 1, i32 1
  store ptr %2383, ptr %2386, align 8, !tbaa !5
  %2387 = getelementptr inbounds [2 x %struct.LIST], ptr %2383, i64 0, i64 1
  store ptr %2383, ptr %2387, align 8, !tbaa !5
  %2388 = getelementptr inbounds %struct.LIST, ptr %2383, i64 0, i32 1
  store ptr %2383, ptr %2388, align 8, !tbaa !5
  store ptr %2383, ptr %2383, align 8, !tbaa !5
  %2389 = getelementptr inbounds %struct.word_type, ptr %2383, i64 0, i32 2
  store i8 %2354, ptr %2389, align 8, !tbaa !5
  %2390 = load i8, ptr %2340, align 2, !tbaa !5
  %2391 = getelementptr inbounds i8, ptr %2383, i64 42
  store i8 %2390, ptr %2391, align 2, !tbaa !5
  %2392 = load i8, ptr %2337, align 1, !tbaa !5
  %2393 = getelementptr inbounds i8, ptr %2383, i64 41
  store i8 %2392, ptr %2393, align 1, !tbaa !5
  %2394 = getelementptr inbounds %struct.gapobj_type, ptr %2383, i64 0, i32 3
  %2395 = load i16, ptr %2394, align 4
  %2396 = and i16 %2395, -769
  %2397 = or disjoint i16 %2396, 512
  store i16 %2397, ptr %2394, align 4
  %2398 = getelementptr inbounds %struct.word_type, ptr %2326, i64 0, i32 1, i32 0, i32 2
  %2399 = load i16, ptr %2398, align 2, !tbaa !5
  %2400 = getelementptr inbounds %struct.word_type, ptr %2383, i64 0, i32 1, i32 0, i32 2
  store i16 %2399, ptr %2400, align 2, !tbaa !5
  %2401 = getelementptr inbounds %struct.word_type, ptr %2326, i64 0, i32 1, i32 0, i32 3
  %2402 = load i32, ptr %2401, align 4
  %2403 = and i32 %2402, 1048575
  %2404 = getelementptr inbounds %struct.word_type, ptr %2383, i64 0, i32 1, i32 0, i32 3
  %2405 = load i32, ptr %2404, align 4
  %2406 = and i32 %2405, -1048576
  %2407 = or disjoint i32 %2406, %2403
  store i32 %2407, ptr %2404, align 4
  %2408 = load i32, ptr %2401, align 4
  %2409 = and i32 %2408, -1048576
  %2410 = or disjoint i32 %2409, %2403
  store i32 %2410, ptr %2404, align 4
  %2411 = add nsw i32 %2382, 1
  store i32 %2411, ptr @ttop, align 4, !tbaa !10
  %2412 = icmp slt i32 %2382, 99
  br i1 %2412, label %2413, label %2416

2413:                                             ; preds = %2381
  %2414 = sext i32 %2411 to i64
  %2415 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2414
  store ptr %2383, ptr %2415, align 8, !tbaa !8
  br label %2422

2416:                                             ; preds = %2381
  %2417 = zext nneg i32 %2382 to i64
  %2418 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2417
  %2419 = load ptr, ptr %2418, align 8, !tbaa !8
  %2420 = getelementptr inbounds %struct.word_type, ptr %2419, i64 0, i32 1
  %2421 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2420) #6
  br label %2422

2422:                                             ; preds = %2363, %2416, %2413, %2333
  store ptr %2326, ptr @zz_hold, align 8, !tbaa !8
  %2423 = load i32, ptr @otop, align 4, !tbaa !10
  %2424 = add nsw i32 %2423, 1
  store i32 %2424, ptr @otop, align 4, !tbaa !10
  %2425 = icmp slt i32 %2423, 99
  br i1 %2425, label %2426, label %2429

2426:                                             ; preds = %2422
  %2427 = sext i32 %2424 to i64
  %2428 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2427
  store ptr %2326, ptr %2428, align 8, !tbaa !8
  br label %2435

2429:                                             ; preds = %2422
  %2430 = zext nneg i32 %2423 to i64
  %2431 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2430
  %2432 = load ptr, ptr %2431, align 8, !tbaa !8
  %2433 = getelementptr inbounds %struct.word_type, ptr %2432, i64 0, i32 1
  %2434 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2433) #6
  br label %2435

2435:                                             ; preds = %2429, %2426
  %2436 = call ptr @LexGetToken() #6
  store ptr %2436, ptr %5, align 8, !tbaa !8
  br label %2772

2437:                                             ; preds = %226
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %2438 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 90), align 1, !tbaa !5
  %2439 = zext i8 %2438 to i32
  store i32 %2439, ptr @zz_size, align 4, !tbaa !10
  %2440 = zext i8 %2438 to i64
  %2441 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2440
  %2442 = load ptr, ptr %2441, align 8, !tbaa !8
  store ptr %2442, ptr %228, align 8, !tbaa !5
  %2443 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2444 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2445 = sext i32 %2444 to i64
  %2446 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2445
  store ptr %2443, ptr %2446, align 8, !tbaa !8
  %2447 = call ptr @LexGetToken() #6
  store ptr %2447, ptr %5, align 8, !tbaa !8
  %2448 = getelementptr inbounds %struct.word_type, ptr %2447, i64 0, i32 1
  %2449 = load i8, ptr %2448, align 8, !tbaa !5
  %2450 = icmp eq i8 %2449, 2
  br i1 %2450, label %2454, label %2451

2451:                                             ; preds = %2437
  %2452 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 27, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %2448, ptr noundef nonnull @.str.41) #6
  %2453 = load ptr, ptr %5, align 8, !tbaa !8
  br label %2454

2454:                                             ; preds = %2451, %2437
  %2455 = phi ptr [ %2453, %2451 ], [ %2447, %2437 ]
  %2456 = getelementptr inbounds %struct.closure_type, ptr %2455, i64 0, i32 5
  %2457 = load ptr, ptr %2456, align 8, !tbaa !5
  %2458 = getelementptr inbounds %struct.symbol_type, ptr %2457, i64 0, i32 11
  %2459 = load ptr, ptr %2458, align 8, !tbaa !5
  %2460 = icmp eq ptr %2459, null
  br i1 %2460, label %2461, label %2465

2461:                                             ; preds = %2454
  %2462 = getelementptr inbounds %struct.word_type, ptr %2455, i64 0, i32 1
  %2463 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 28, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %2462, ptr noundef nonnull @.str.18) #6
  %2464 = load ptr, ptr %2458, align 8, !tbaa !5
  br label %2465

2465:                                             ; preds = %2461, %2454
  %2466 = phi ptr [ %2464, %2461 ], [ %2459, %2454 ]
  %2467 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2468 = call ptr @CopyObject(ptr noundef %2466, ptr noundef %2467) #6
  %2469 = load ptr, ptr %2468, align 8, !tbaa !5
  %2470 = icmp eq ptr %2469, %2468
  br i1 %2470, label %2522, label %2474

2471:                                             ; preds = %2476
  %2472 = load ptr, ptr %2475, align 8, !tbaa !5
  %2473 = icmp eq ptr %2472, %2468
  br i1 %2473, label %2522, label %2474

2474:                                             ; preds = %2465, %2471
  %2475 = phi ptr [ %2472, %2471 ], [ %2469, %2465 ]
  br label %2476

2476:                                             ; preds = %2474, %2476
  %2477 = phi ptr [ %2479, %2476 ], [ %2475, %2474 ]
  %2478 = getelementptr inbounds [2 x %struct.LIST], ptr %2477, i64 0, i64 1
  %2479 = load ptr, ptr %2478, align 8, !tbaa !5
  %2480 = getelementptr inbounds %struct.word_type, ptr %2479, i64 0, i32 1
  %2481 = load i8, ptr %2480, align 8, !tbaa !5
  switch i8 %2481, label %2471 [
    i8 0, label %2476
    i8 82, label %2482
  ]

2482:                                             ; preds = %2476
  store ptr %2475, ptr @xx_link, align 8, !tbaa !8
  %2483 = getelementptr inbounds [2 x %struct.LIST], ptr %2475, i64 0, i64 1, i32 1
  %2484 = load ptr, ptr %2483, align 8, !tbaa !5
  %2485 = icmp eq ptr %2484, %2475
  br i1 %2485, label %2491, label %2486

2486:                                             ; preds = %2482
  store ptr %2484, ptr @zz_res, align 8, !tbaa !8
  %2487 = getelementptr inbounds [2 x %struct.LIST], ptr %2475, i64 0, i64 1
  %2488 = load ptr, ptr %2487, align 8, !tbaa !5
  %2489 = getelementptr inbounds [2 x %struct.LIST], ptr %2484, i64 0, i64 1
  store ptr %2488, ptr %2489, align 8, !tbaa !5
  %2490 = getelementptr inbounds [2 x %struct.LIST], ptr %2488, i64 0, i64 1, i32 1
  store ptr %2484, ptr %2490, align 8, !tbaa !5
  store ptr %2475, ptr %2483, align 8, !tbaa !5
  store ptr %2475, ptr %2487, align 8, !tbaa !5
  br label %2491

2491:                                             ; preds = %2482, %2486
  store ptr %2475, ptr @zz_hold, align 8, !tbaa !8
  %2492 = getelementptr inbounds %struct.LIST, ptr %2475, i64 0, i32 1
  %2493 = load ptr, ptr %2492, align 8, !tbaa !5
  %2494 = icmp eq ptr %2493, %2475
  br i1 %2494, label %2503, label %2495

2495:                                             ; preds = %2491
  store ptr %2493, ptr @zz_res, align 8, !tbaa !8
  %2496 = load ptr, ptr %2475, align 8, !tbaa !5
  store ptr %2496, ptr %2493, align 8, !tbaa !5
  %2497 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2498 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2499 = load ptr, ptr %2498, align 8, !tbaa !5
  %2500 = getelementptr inbounds %struct.LIST, ptr %2499, i64 0, i32 1
  store ptr %2497, ptr %2500, align 8, !tbaa !5
  %2501 = getelementptr inbounds %struct.LIST, ptr %2498, i64 0, i32 1
  store ptr %2498, ptr %2501, align 8, !tbaa !5
  store ptr %2498, ptr %2498, align 8, !tbaa !5
  %2502 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2503

2503:                                             ; preds = %2491, %2495
  %2504 = phi ptr [ %2475, %2491 ], [ %2502, %2495 ]
  store ptr %2504, ptr @zz_hold, align 8, !tbaa !8
  %2505 = getelementptr inbounds %struct.word_type, ptr %2504, i64 0, i32 1
  %2506 = load i8, ptr %2505, align 8, !tbaa !5
  %2507 = add i8 %2506, -11
  %2508 = icmp ult i8 %2507, 2
  %2509 = getelementptr inbounds %struct.word_type, ptr %2504, i64 0, i32 1, i32 0, i32 1
  %2510 = zext i8 %2506 to i64
  %2511 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2510
  %2512 = select i1 %2508, ptr %2509, ptr %2511
  %2513 = load i8, ptr %2512, align 1, !tbaa !5
  %2514 = zext i8 %2513 to i32
  store i32 %2514, ptr @zz_size, align 4, !tbaa !10
  %2515 = zext i8 %2513 to i64
  %2516 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2515
  %2517 = load ptr, ptr %2516, align 8, !tbaa !8
  store ptr %2517, ptr %2504, align 8, !tbaa !5
  %2518 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2519 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2520 = sext i32 %2519 to i64
  %2521 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2520
  store ptr %2518, ptr %2521, align 8, !tbaa !8
  br label %2522

2522:                                             ; preds = %2471, %2465, %2503
  %2523 = icmp eq i32 %227, 0
  br i1 %2523, label %2610, label %2524

2524:                                             ; preds = %2522
  %2525 = getelementptr inbounds i8, ptr %2468, i64 41
  %2526 = load i8, ptr %2525, align 1, !tbaa !5
  %2527 = zext i8 %2526 to i32
  %2528 = getelementptr inbounds i8, ptr %2468, i64 42
  %2529 = load i8, ptr %2528, align 2, !tbaa !5
  %2530 = zext i8 %2529 to i32
  %2531 = sub nsw i32 0, %2530
  %2532 = icmp eq i32 %2527, %2531
  br i1 %2532, label %2533, label %2540

2533:                                             ; preds = %2524
  %2534 = getelementptr inbounds %struct.word_type, ptr %2468, i64 0, i32 1
  %2535 = load i8, ptr %2534, align 8, !tbaa !5
  %2536 = icmp eq i8 %2535, 102
  %2537 = icmp eq i32 %227, 2
  %2538 = select i1 %2536, i1 true, i1 %2537
  %2539 = select i1 %2538, i8 7, i8 103
  br label %2540

2540:                                             ; preds = %2524, %2533
  %2541 = phi i32 [ 100, %2524 ], [ 101, %2533 ]
  %2542 = phi i8 [ 7, %2524 ], [ %2539, %2533 ]
  br label %2543

2543:                                             ; preds = %2540, %2551
  %2544 = load i32, ptr @ttop, align 4, !tbaa !10
  %2545 = sext i32 %2544 to i64
  %2546 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2545
  %2547 = load ptr, ptr %2546, align 8, !tbaa !8
  %2548 = getelementptr inbounds %struct.word_type, ptr %2547, i64 0, i32 2
  %2549 = load i8, ptr %2548, align 8, !tbaa !5
  %2550 = icmp ugt i8 %2542, %2549
  br i1 %2550, label %2554, label %2551

2551:                                             ; preds = %2543
  %2552 = call fastcc i32 @Reduce(), !range !14
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2610, label %2543

2554:                                             ; preds = %2543
  %2555 = zext nneg i32 %2541 to i64
  %2556 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2555
  %2557 = load i8, ptr %2556, align 1, !tbaa !5
  %2558 = zext i8 %2557 to i32
  store i32 %2558, ptr @zz_size, align 4, !tbaa !10
  %2559 = zext i8 %2557 to i64
  %2560 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2559
  %2561 = load ptr, ptr %2560, align 8, !tbaa !8
  %2562 = icmp eq ptr %2561, null
  br i1 %2562, label %2563, label %2567

2563:                                             ; preds = %2554
  %2564 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2565 = call ptr @GetMemory(i32 noundef %2558, ptr noundef %2564) #6
  store ptr %2565, ptr @zz_hold, align 8, !tbaa !8
  %2566 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2569

2567:                                             ; preds = %2554
  store ptr %2561, ptr @zz_hold, align 8, !tbaa !8
  %2568 = load ptr, ptr %2561, align 8, !tbaa !5
  store ptr %2568, ptr %2560, align 8, !tbaa !8
  br label %2569

2569:                                             ; preds = %2563, %2567
  %2570 = phi i32 [ %2566, %2563 ], [ %2544, %2567 ]
  %2571 = phi ptr [ %2565, %2563 ], [ %2561, %2567 ]
  %2572 = trunc i32 %2541 to i8
  %2573 = getelementptr inbounds %struct.word_type, ptr %2571, i64 0, i32 1
  store i8 %2572, ptr %2573, align 8, !tbaa !5
  %2574 = getelementptr inbounds [2 x %struct.LIST], ptr %2571, i64 0, i64 1, i32 1
  store ptr %2571, ptr %2574, align 8, !tbaa !5
  %2575 = getelementptr inbounds [2 x %struct.LIST], ptr %2571, i64 0, i64 1
  store ptr %2571, ptr %2575, align 8, !tbaa !5
  %2576 = getelementptr inbounds %struct.LIST, ptr %2571, i64 0, i32 1
  store ptr %2571, ptr %2576, align 8, !tbaa !5
  store ptr %2571, ptr %2571, align 8, !tbaa !5
  %2577 = getelementptr inbounds %struct.word_type, ptr %2571, i64 0, i32 2
  store i8 %2542, ptr %2577, align 8, !tbaa !5
  %2578 = load i8, ptr %2528, align 2, !tbaa !5
  %2579 = getelementptr inbounds i8, ptr %2571, i64 42
  store i8 %2578, ptr %2579, align 2, !tbaa !5
  %2580 = load i8, ptr %2525, align 1, !tbaa !5
  %2581 = getelementptr inbounds i8, ptr %2571, i64 41
  store i8 %2580, ptr %2581, align 1, !tbaa !5
  %2582 = getelementptr inbounds %struct.gapobj_type, ptr %2571, i64 0, i32 3
  %2583 = load i16, ptr %2582, align 4
  %2584 = and i16 %2583, -769
  %2585 = or disjoint i16 %2584, 512
  store i16 %2585, ptr %2582, align 4
  %2586 = getelementptr inbounds %struct.word_type, ptr %2468, i64 0, i32 1, i32 0, i32 2
  %2587 = load i16, ptr %2586, align 2, !tbaa !5
  %2588 = getelementptr inbounds %struct.word_type, ptr %2571, i64 0, i32 1, i32 0, i32 2
  store i16 %2587, ptr %2588, align 2, !tbaa !5
  %2589 = getelementptr inbounds %struct.word_type, ptr %2468, i64 0, i32 1, i32 0, i32 3
  %2590 = load i32, ptr %2589, align 4
  %2591 = and i32 %2590, 1048575
  %2592 = getelementptr inbounds %struct.word_type, ptr %2571, i64 0, i32 1, i32 0, i32 3
  %2593 = load i32, ptr %2592, align 4
  %2594 = and i32 %2593, -1048576
  %2595 = or disjoint i32 %2594, %2591
  store i32 %2595, ptr %2592, align 4
  %2596 = load i32, ptr %2589, align 4
  %2597 = and i32 %2596, -1048576
  %2598 = or disjoint i32 %2597, %2591
  store i32 %2598, ptr %2592, align 4
  %2599 = add nsw i32 %2570, 1
  store i32 %2599, ptr @ttop, align 4, !tbaa !10
  %2600 = icmp slt i32 %2570, 99
  br i1 %2600, label %2601, label %2604

2601:                                             ; preds = %2569
  %2602 = sext i32 %2599 to i64
  %2603 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2602
  store ptr %2571, ptr %2603, align 8, !tbaa !8
  br label %2610

2604:                                             ; preds = %2569
  %2605 = zext nneg i32 %2570 to i64
  %2606 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2605
  %2607 = load ptr, ptr %2606, align 8, !tbaa !8
  %2608 = getelementptr inbounds %struct.word_type, ptr %2607, i64 0, i32 1
  %2609 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2608) #6
  br label %2610

2610:                                             ; preds = %2551, %2604, %2601, %2522
  store ptr %2468, ptr @zz_hold, align 8, !tbaa !8
  %2611 = load i32, ptr @otop, align 4, !tbaa !10
  %2612 = add nsw i32 %2611, 1
  store i32 %2612, ptr @otop, align 4, !tbaa !10
  %2613 = icmp slt i32 %2611, 99
  br i1 %2613, label %2614, label %2617

2614:                                             ; preds = %2610
  %2615 = sext i32 %2612 to i64
  %2616 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2615
  store ptr %2468, ptr %2616, align 8, !tbaa !8
  br label %2623

2617:                                             ; preds = %2610
  %2618 = zext nneg i32 %2611 to i64
  %2619 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2618
  %2620 = load ptr, ptr %2619, align 8, !tbaa !8
  %2621 = getelementptr inbounds %struct.word_type, ptr %2620, i64 0, i32 1
  %2622 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2621) #6
  br label %2623

2623:                                             ; preds = %2617, %2614
  %2624 = call ptr @LexGetToken() #6
  store ptr %2624, ptr %5, align 8, !tbaa !8
  br label %2772

2625:                                             ; preds = %226
  call void @SuppressVisible() #6
  %2626 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %2626, ptr @zz_hold, align 8, !tbaa !8
  %2627 = getelementptr inbounds %struct.word_type, ptr %2626, i64 0, i32 1
  %2628 = load i8, ptr %2627, align 8, !tbaa !5
  %2629 = add i8 %2628, -11
  %2630 = icmp ult i8 %2629, 2
  %2631 = getelementptr inbounds %struct.word_type, ptr %2626, i64 0, i32 1, i32 0, i32 1
  %2632 = zext i8 %2628 to i64
  %2633 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2632
  %2634 = select i1 %2630, ptr %2631, ptr %2633
  %2635 = load i8, ptr %2634, align 1, !tbaa !5
  %2636 = zext i8 %2635 to i32
  store i32 %2636, ptr @zz_size, align 4, !tbaa !10
  %2637 = zext i8 %2635 to i64
  %2638 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2637
  %2639 = load ptr, ptr %2638, align 8, !tbaa !8
  store ptr %2639, ptr %2626, align 8, !tbaa !5
  %2640 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2641 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2642 = sext i32 %2641 to i64
  %2643 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2642
  store ptr %2640, ptr %2643, align 8, !tbaa !8
  %2644 = call ptr @LexGetToken() #6
  store ptr %2644, ptr %5, align 8, !tbaa !8
  call void @UnSuppressVisible() #6
  %2645 = load ptr, ptr %5, align 8, !tbaa !8
  %2646 = getelementptr inbounds %struct.word_type, ptr %2645, i64 0, i32 1
  %2647 = load i8, ptr %2646, align 8, !tbaa !5
  %2648 = icmp eq i8 %2647, 2
  br i1 %2648, label %2652, label %2649

2649:                                             ; preds = %2625
  %2650 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 29, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %2646, ptr noundef nonnull @.str.43) #6
  %2651 = load ptr, ptr %5, align 8, !tbaa !8
  br label %2652

2652:                                             ; preds = %2625, %2649, %226
  %2653 = phi ptr [ %2645, %2625 ], [ %2651, %2649 ], [ %228, %226 ]
  %2654 = getelementptr inbounds %struct.closure_type, ptr %2653, i64 0, i32 5
  %2655 = load ptr, ptr %2654, align 8, !tbaa !5
  call void @PushScope(ptr noundef %2655, i32 noundef 1, i32 noundef 0) #6
  %2656 = call ptr @LexGetToken() #6
  store ptr %2656, ptr %5, align 8, !tbaa !8
  %2657 = getelementptr inbounds %struct.word_type, ptr %2656, i64 0, i32 1
  %2658 = load i8, ptr %2657, align 8, !tbaa !5
  %2659 = icmp eq i8 %2658, 107
  br i1 %2659, label %2660, label %2671

2660:                                             ; preds = %2652
  store ptr %2656, ptr @zz_hold, align 8, !tbaa !8
  %2661 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 107), align 1, !tbaa !5
  %2662 = zext i8 %2661 to i32
  store i32 %2662, ptr @zz_size, align 4, !tbaa !10
  %2663 = zext i8 %2661 to i64
  %2664 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2663
  %2665 = load ptr, ptr %2664, align 8, !tbaa !8
  store ptr %2665, ptr %2656, align 8, !tbaa !5
  %2666 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2667 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2668 = sext i32 %2667 to i64
  %2669 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2668
  store ptr %2666, ptr %2669, align 8, !tbaa !8
  %2670 = call ptr @LexGetToken() #6
  store ptr %2670, ptr %5, align 8, !tbaa !8
  br label %2671

2671:                                             ; preds = %2652, %2660
  call void @PopScope() #6
  %2672 = load ptr, ptr %5, align 8, !tbaa !8
  %2673 = getelementptr inbounds %struct.word_type, ptr %2672, i64 0, i32 1
  %2674 = load i8, ptr %2673, align 8, !tbaa !5
  %2675 = and i8 %2674, -2
  %2676 = icmp eq i8 %2675, 6
  br i1 %2676, label %2677, label %2780

2677:                                             ; preds = %2671
  %2678 = icmp eq i32 %227, 0
  br i1 %2678, label %2765, label %2679

2679:                                             ; preds = %2677
  %2680 = getelementptr inbounds i8, ptr %2653, i64 41
  %2681 = load i8, ptr %2680, align 1, !tbaa !5
  %2682 = zext i8 %2681 to i32
  %2683 = getelementptr inbounds i8, ptr %2653, i64 42
  %2684 = load i8, ptr %2683, align 2, !tbaa !5
  %2685 = zext i8 %2684 to i32
  %2686 = sub nsw i32 0, %2685
  %2687 = icmp eq i32 %2682, %2686
  br i1 %2687, label %2688, label %2695

2688:                                             ; preds = %2679
  %2689 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1
  %2690 = load i8, ptr %2689, align 8, !tbaa !5
  %2691 = icmp eq i8 %2690, 102
  %2692 = icmp eq i32 %227, 2
  %2693 = select i1 %2691, i1 true, i1 %2692
  %2694 = select i1 %2693, i8 7, i8 103
  br label %2695

2695:                                             ; preds = %2679, %2688
  %2696 = phi i32 [ 100, %2679 ], [ 101, %2688 ]
  %2697 = phi i8 [ 7, %2679 ], [ %2694, %2688 ]
  br label %2698

2698:                                             ; preds = %2695, %2706
  %2699 = load i32, ptr @ttop, align 4, !tbaa !10
  %2700 = sext i32 %2699 to i64
  %2701 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2700
  %2702 = load ptr, ptr %2701, align 8, !tbaa !8
  %2703 = getelementptr inbounds %struct.word_type, ptr %2702, i64 0, i32 2
  %2704 = load i8, ptr %2703, align 8, !tbaa !5
  %2705 = icmp ugt i8 %2697, %2704
  br i1 %2705, label %2709, label %2706

2706:                                             ; preds = %2698
  %2707 = call fastcc i32 @Reduce(), !range !14
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2765, label %2698

2709:                                             ; preds = %2698
  %2710 = zext nneg i32 %2696 to i64
  %2711 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2710
  %2712 = load i8, ptr %2711, align 1, !tbaa !5
  %2713 = zext i8 %2712 to i32
  store i32 %2713, ptr @zz_size, align 4, !tbaa !10
  %2714 = zext i8 %2712 to i64
  %2715 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2714
  %2716 = load ptr, ptr %2715, align 8, !tbaa !8
  %2717 = icmp eq ptr %2716, null
  br i1 %2717, label %2718, label %2722

2718:                                             ; preds = %2709
  %2719 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2720 = call ptr @GetMemory(i32 noundef %2713, ptr noundef %2719) #6
  store ptr %2720, ptr @zz_hold, align 8, !tbaa !8
  %2721 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2724

2722:                                             ; preds = %2709
  store ptr %2716, ptr @zz_hold, align 8, !tbaa !8
  %2723 = load ptr, ptr %2716, align 8, !tbaa !5
  store ptr %2723, ptr %2715, align 8, !tbaa !8
  br label %2724

2724:                                             ; preds = %2718, %2722
  %2725 = phi i32 [ %2721, %2718 ], [ %2699, %2722 ]
  %2726 = phi ptr [ %2720, %2718 ], [ %2716, %2722 ]
  %2727 = trunc i32 %2696 to i8
  %2728 = getelementptr inbounds %struct.word_type, ptr %2726, i64 0, i32 1
  store i8 %2727, ptr %2728, align 8, !tbaa !5
  %2729 = getelementptr inbounds [2 x %struct.LIST], ptr %2726, i64 0, i64 1, i32 1
  store ptr %2726, ptr %2729, align 8, !tbaa !5
  %2730 = getelementptr inbounds [2 x %struct.LIST], ptr %2726, i64 0, i64 1
  store ptr %2726, ptr %2730, align 8, !tbaa !5
  %2731 = getelementptr inbounds %struct.LIST, ptr %2726, i64 0, i32 1
  store ptr %2726, ptr %2731, align 8, !tbaa !5
  store ptr %2726, ptr %2726, align 8, !tbaa !5
  %2732 = getelementptr inbounds %struct.word_type, ptr %2726, i64 0, i32 2
  store i8 %2697, ptr %2732, align 8, !tbaa !5
  %2733 = load i8, ptr %2683, align 2, !tbaa !5
  %2734 = getelementptr inbounds i8, ptr %2726, i64 42
  store i8 %2733, ptr %2734, align 2, !tbaa !5
  %2735 = load i8, ptr %2680, align 1, !tbaa !5
  %2736 = getelementptr inbounds i8, ptr %2726, i64 41
  store i8 %2735, ptr %2736, align 1, !tbaa !5
  %2737 = getelementptr inbounds %struct.gapobj_type, ptr %2726, i64 0, i32 3
  %2738 = load i16, ptr %2737, align 4
  %2739 = and i16 %2738, -769
  %2740 = or disjoint i16 %2739, 512
  store i16 %2740, ptr %2737, align 4
  %2741 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1, i32 0, i32 2
  %2742 = load i16, ptr %2741, align 2, !tbaa !5
  %2743 = getelementptr inbounds %struct.word_type, ptr %2726, i64 0, i32 1, i32 0, i32 2
  store i16 %2742, ptr %2743, align 2, !tbaa !5
  %2744 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1, i32 0, i32 3
  %2745 = load i32, ptr %2744, align 4
  %2746 = and i32 %2745, 1048575
  %2747 = getelementptr inbounds %struct.word_type, ptr %2726, i64 0, i32 1, i32 0, i32 3
  %2748 = load i32, ptr %2747, align 4
  %2749 = and i32 %2748, -1048576
  %2750 = or disjoint i32 %2749, %2746
  store i32 %2750, ptr %2747, align 4
  %2751 = load i32, ptr %2744, align 4
  %2752 = and i32 %2751, -1048576
  %2753 = or disjoint i32 %2752, %2746
  store i32 %2753, ptr %2747, align 4
  %2754 = add nsw i32 %2725, 1
  store i32 %2754, ptr @ttop, align 4, !tbaa !10
  %2755 = icmp slt i32 %2725, 99
  br i1 %2755, label %2756, label %2759

2756:                                             ; preds = %2724
  %2757 = sext i32 %2754 to i64
  %2758 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2757
  store ptr %2726, ptr %2758, align 8, !tbaa !8
  br label %2765

2759:                                             ; preds = %2724
  %2760 = zext nneg i32 %2725 to i64
  %2761 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2760
  %2762 = load ptr, ptr %2761, align 8, !tbaa !8
  %2763 = getelementptr inbounds %struct.word_type, ptr %2762, i64 0, i32 1
  %2764 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2763) #6
  br label %2765

2765:                                             ; preds = %2706, %2759, %2756, %2677
  store ptr %2653, ptr @zz_hold, align 8, !tbaa !8
  %2766 = load i32, ptr @otop, align 4, !tbaa !10
  %2767 = add nsw i32 %2766, 1
  store i32 %2767, ptr @otop, align 4, !tbaa !10
  %2768 = icmp slt i32 %2766, 99
  br i1 %2768, label %2769, label %2774

2769:                                             ; preds = %2765
  %2770 = sext i32 %2767 to i64
  %2771 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2770
  store ptr %2653, ptr %2771, align 8, !tbaa !8
  br label %2772

2772:                                             ; preds = %2769, %2774, %2121, %2124, %672, %675, %3915, %3941, %3920, %3807, %3805, %3840, %3838, %3834, %3811, %657, %3943, %2623, %2435, %2311, %2002, %1864, %1733, %1626, %1624, %1571, %1415, %1303, %1300, %1141, %838, %467, %366
  %2773 = phi i32 [ %227, %3943 ], [ 0, %3915 ], [ 0, %3920 ], [ %3942, %3941 ], [ 1, %3805 ], [ %3674, %3807 ], [ %3835, %3838 ], [ %3835, %3834 ], [ %3674, %3840 ], [ %3674, %3811 ], [ 1, %2623 ], [ 1, %2435 ], [ 1, %2311 ], [ 1, %2002 ], [ 1, %1864 ], [ 1, %1733 ], [ %227, %1626 ], [ %1621, %1624 ], [ %1564, %1571 ], [ 0, %1415 ], [ %227, %1303 ], [ %1301, %1300 ], [ 1, %1141 ], [ %839, %838 ], [ 0, %657 ], [ 1, %467 ], [ 1, %366 ], [ 1, %675 ], [ 1, %672 ], [ 1, %2124 ], [ 1, %2121 ], [ 1, %2774 ], [ 1, %2769 ]
  br label %226

2774:                                             ; preds = %2765
  %2775 = zext nneg i32 %2766 to i64
  %2776 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2775
  %2777 = load ptr, ptr %2776, align 8, !tbaa !8
  %2778 = getelementptr inbounds %struct.word_type, ptr %2777, i64 0, i32 1
  %2779 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2778) #6
  br label %2772

2780:                                             ; preds = %2671
  %2781 = getelementptr inbounds i8, ptr %2655, i64 41
  %2782 = load i24, ptr %2781, align 1
  %2783 = and i24 %2782, 4
  %2784 = icmp eq i24 %2783, 0
  br i1 %2784, label %2827, label %2785

2785:                                             ; preds = %2780
  %2786 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 2
  %2787 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1
  br label %2788

2788:                                             ; preds = %2799, %2785
  %2789 = phi i32 [ %227, %2785 ], [ %2800, %2799 ]
  %2790 = icmp eq i32 %2789, 0
  br i1 %2790, label %2791, label %2807

2791:                                             ; preds = %2788
  %2792 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %2787) #6
  store ptr %2792, ptr @zz_hold, align 8, !tbaa !8
  %2793 = load i32, ptr @otop, align 4, !tbaa !10
  %2794 = add nsw i32 %2793, 1
  store i32 %2794, ptr @otop, align 4, !tbaa !10
  %2795 = icmp slt i32 %2793, 99
  br i1 %2795, label %2796, label %2801

2796:                                             ; preds = %2791
  %2797 = sext i32 %2794 to i64
  %2798 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2797
  store ptr %2792, ptr %2798, align 8, !tbaa !8
  br label %2799

2799:                                             ; preds = %2796, %2801, %2823
  %2800 = phi i32 [ %2824, %2823 ], [ 1, %2801 ], [ 1, %2796 ]
  br label %2788

2801:                                             ; preds = %2791
  %2802 = zext nneg i32 %2793 to i64
  %2803 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %2802
  %2804 = load ptr, ptr %2803, align 8, !tbaa !8
  %2805 = getelementptr inbounds %struct.word_type, ptr %2804, i64 0, i32 1
  %2806 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2805) #6
  br label %2799

2807:                                             ; preds = %2788
  %2808 = load i32, ptr @ttop, align 4, !tbaa !10
  %2809 = sext i32 %2808 to i64
  %2810 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2809
  %2811 = load ptr, ptr %2810, align 8, !tbaa !8
  %2812 = getelementptr inbounds %struct.word_type, ptr %2811, i64 0, i32 2
  %2813 = load i8, ptr %2812, align 8, !tbaa !5
  %2814 = zext i8 %2813 to i32
  %2815 = load i8, ptr %2786, align 8, !tbaa !5
  %2816 = zext i8 %2815 to i32
  %2817 = load i24, ptr %2781, align 1
  %2818 = lshr i24 %2817, 4
  %2819 = and i24 %2818, 1
  %2820 = zext nneg i24 %2819 to i32
  %2821 = add nuw nsw i32 %2820, %2816
  %2822 = icmp ugt i32 %2821, %2814
  br i1 %2822, label %2915, label %2823

2823:                                             ; preds = %2807
  %2824 = call fastcc i32 @Reduce(), !range !14
  %2825 = load i32, ptr @ttop, align 4, !tbaa !10
  %2826 = icmp eq i32 %2825, %13
  br i1 %2826, label %3948, label %2799

2827:                                             ; preds = %2780
  %2828 = icmp eq i32 %227, 0
  br i1 %2828, label %2915, label %2829

2829:                                             ; preds = %2827
  %2830 = getelementptr inbounds i8, ptr %2653, i64 41
  %2831 = load i8, ptr %2830, align 1, !tbaa !5
  %2832 = zext i8 %2831 to i32
  %2833 = getelementptr inbounds i8, ptr %2653, i64 42
  %2834 = load i8, ptr %2833, align 2, !tbaa !5
  %2835 = zext i8 %2834 to i32
  %2836 = sub nsw i32 0, %2835
  %2837 = icmp eq i32 %2832, %2836
  br i1 %2837, label %2838, label %2845

2838:                                             ; preds = %2829
  %2839 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1
  %2840 = load i8, ptr %2839, align 8, !tbaa !5
  %2841 = icmp eq i8 %2840, 102
  %2842 = icmp eq i32 %227, 2
  %2843 = select i1 %2841, i1 true, i1 %2842
  %2844 = select i1 %2843, i8 7, i8 103
  br label %2845

2845:                                             ; preds = %2829, %2838
  %2846 = phi i32 [ 100, %2829 ], [ 101, %2838 ]
  %2847 = phi i8 [ 7, %2829 ], [ %2844, %2838 ]
  br label %2848

2848:                                             ; preds = %2845, %2856
  %2849 = load i32, ptr @ttop, align 4, !tbaa !10
  %2850 = sext i32 %2849 to i64
  %2851 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2850
  %2852 = load ptr, ptr %2851, align 8, !tbaa !8
  %2853 = getelementptr inbounds %struct.word_type, ptr %2852, i64 0, i32 2
  %2854 = load i8, ptr %2853, align 8, !tbaa !5
  %2855 = icmp ugt i8 %2847, %2854
  br i1 %2855, label %2859, label %2856

2856:                                             ; preds = %2848
  %2857 = call fastcc i32 @Reduce(), !range !14
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2915, label %2848

2859:                                             ; preds = %2848
  %2860 = zext nneg i32 %2846 to i64
  %2861 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2860
  %2862 = load i8, ptr %2861, align 1, !tbaa !5
  %2863 = zext i8 %2862 to i32
  store i32 %2863, ptr @zz_size, align 4, !tbaa !10
  %2864 = zext i8 %2862 to i64
  %2865 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2864
  %2866 = load ptr, ptr %2865, align 8, !tbaa !8
  %2867 = icmp eq ptr %2866, null
  br i1 %2867, label %2868, label %2872

2868:                                             ; preds = %2859
  %2869 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2870 = call ptr @GetMemory(i32 noundef %2863, ptr noundef %2869) #6
  store ptr %2870, ptr @zz_hold, align 8, !tbaa !8
  %2871 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %2874

2872:                                             ; preds = %2859
  store ptr %2866, ptr @zz_hold, align 8, !tbaa !8
  %2873 = load ptr, ptr %2866, align 8, !tbaa !5
  store ptr %2873, ptr %2865, align 8, !tbaa !8
  br label %2874

2874:                                             ; preds = %2868, %2872
  %2875 = phi i32 [ %2871, %2868 ], [ %2849, %2872 ]
  %2876 = phi ptr [ %2870, %2868 ], [ %2866, %2872 ]
  %2877 = trunc i32 %2846 to i8
  %2878 = getelementptr inbounds %struct.word_type, ptr %2876, i64 0, i32 1
  store i8 %2877, ptr %2878, align 8, !tbaa !5
  %2879 = getelementptr inbounds [2 x %struct.LIST], ptr %2876, i64 0, i64 1, i32 1
  store ptr %2876, ptr %2879, align 8, !tbaa !5
  %2880 = getelementptr inbounds [2 x %struct.LIST], ptr %2876, i64 0, i64 1
  store ptr %2876, ptr %2880, align 8, !tbaa !5
  %2881 = getelementptr inbounds %struct.LIST, ptr %2876, i64 0, i32 1
  store ptr %2876, ptr %2881, align 8, !tbaa !5
  store ptr %2876, ptr %2876, align 8, !tbaa !5
  %2882 = getelementptr inbounds %struct.word_type, ptr %2876, i64 0, i32 2
  store i8 %2847, ptr %2882, align 8, !tbaa !5
  %2883 = load i8, ptr %2833, align 2, !tbaa !5
  %2884 = getelementptr inbounds i8, ptr %2876, i64 42
  store i8 %2883, ptr %2884, align 2, !tbaa !5
  %2885 = load i8, ptr %2830, align 1, !tbaa !5
  %2886 = getelementptr inbounds i8, ptr %2876, i64 41
  store i8 %2885, ptr %2886, align 1, !tbaa !5
  %2887 = getelementptr inbounds %struct.gapobj_type, ptr %2876, i64 0, i32 3
  %2888 = load i16, ptr %2887, align 4
  %2889 = and i16 %2888, -769
  %2890 = or disjoint i16 %2889, 512
  store i16 %2890, ptr %2887, align 4
  %2891 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1, i32 0, i32 2
  %2892 = load i16, ptr %2891, align 2, !tbaa !5
  %2893 = getelementptr inbounds %struct.word_type, ptr %2876, i64 0, i32 1, i32 0, i32 2
  store i16 %2892, ptr %2893, align 2, !tbaa !5
  %2894 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1, i32 0, i32 3
  %2895 = load i32, ptr %2894, align 4
  %2896 = and i32 %2895, 1048575
  %2897 = getelementptr inbounds %struct.word_type, ptr %2876, i64 0, i32 1, i32 0, i32 3
  %2898 = load i32, ptr %2897, align 4
  %2899 = and i32 %2898, -1048576
  %2900 = or disjoint i32 %2899, %2896
  store i32 %2900, ptr %2897, align 4
  %2901 = load i32, ptr %2894, align 4
  %2902 = and i32 %2901, -1048576
  %2903 = or disjoint i32 %2902, %2896
  store i32 %2903, ptr %2897, align 4
  %2904 = add nsw i32 %2875, 1
  store i32 %2904, ptr @ttop, align 4, !tbaa !10
  %2905 = icmp slt i32 %2875, 99
  br i1 %2905, label %2906, label %2909

2906:                                             ; preds = %2874
  %2907 = sext i32 %2904 to i64
  %2908 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2907
  store ptr %2876, ptr %2908, align 8, !tbaa !8
  br label %2915

2909:                                             ; preds = %2874
  %2910 = zext nneg i32 %2875 to i64
  %2911 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2910
  %2912 = load ptr, ptr %2911, align 8, !tbaa !8
  %2913 = getelementptr inbounds %struct.word_type, ptr %2912, i64 0, i32 1
  %2914 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2913) #6
  br label %2915

2915:                                             ; preds = %2807, %2856, %2909, %2906, %2827
  %2916 = load i32, ptr @ttop, align 4, !tbaa !10
  %2917 = add nsw i32 %2916, 1
  store i32 %2917, ptr @ttop, align 4, !tbaa !10
  %2918 = icmp slt i32 %2916, 99
  br i1 %2918, label %2919, label %2922

2919:                                             ; preds = %2915
  %2920 = sext i32 %2917 to i64
  %2921 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2920
  store ptr %2653, ptr %2921, align 8, !tbaa !8
  br label %2928

2922:                                             ; preds = %2915
  %2923 = zext nneg i32 %2916 to i64
  %2924 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %2923
  %2925 = load ptr, ptr %2924, align 8, !tbaa !8
  %2926 = getelementptr inbounds %struct.word_type, ptr %2925, i64 0, i32 1
  %2927 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2926) #6
  br label %2928

2928:                                             ; preds = %2922, %2919
  %2929 = load i24, ptr %2781, align 1
  %2930 = and i24 %2929, 8
  %2931 = icmp eq i24 %2930, 0
  br i1 %2931, label %2932, label %2936

2932:                                             ; preds = %2928
  %2933 = call fastcc i32 @Reduce(), !range !14
  %2934 = load i32, ptr @ttop, align 4, !tbaa !10
  %2935 = icmp eq i32 %2934, %13
  br i1 %2935, label %3948, label %2936

2936:                                             ; preds = %2928, %2932
  %2937 = phi i32 [ %2933, %2932 ], [ 0, %2928 ]
  %2938 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %2939 = icmp ne ptr %2938, %1
  %2940 = and i1 %223, %2939
  br i1 %2940, label %2941, label %2962

2941:                                             ; preds = %2936
  %2942 = load i24, ptr %2781, align 1
  %2943 = and i24 %2942, 64
  %2944 = icmp eq i24 %2943, 0
  br i1 %2944, label %2960, label %2945

2945:                                             ; preds = %2941
  %2946 = load i24, ptr %224, align 1
  %2947 = or i24 %2946, 1048576
  store i24 %2947, ptr %224, align 1
  %2948 = and i24 %2946, 32768
  %2949 = icmp eq i24 %2948, 0
  br i1 %2949, label %2950, label %2955

2950:                                             ; preds = %2945
  %2951 = load i24, ptr %2781, align 1
  %2952 = freeze i24 %2951
  %2953 = and i24 %2952, 32768
  %2954 = icmp eq i24 %2953, 0
  br i1 %2954, label %2956, label %2955

2955:                                             ; preds = %2945, %2950
  br label %2956

2956:                                             ; preds = %2950, %2955
  %2957 = phi i24 [ 32768, %2955 ], [ 0, %2950 ]
  %2958 = and i24 %2947, -32769
  %2959 = or disjoint i24 %2957, %2958
  store i24 %2959, ptr %224, align 1
  br label %2962

2960:                                             ; preds = %2941
  br i1 %2659, label %2962, label %2961

2961:                                             ; preds = %2960
  call void @InsertUses(ptr noundef nonnull %1, ptr noundef nonnull %2655) #6
  br label %2962

2962:                                             ; preds = %2956, %2961, %2960, %2936
  %2963 = icmp eq ptr %2653, null
  br label %2964

2964:                                             ; preds = %3181, %2962
  %2965 = phi i32 [ 0, %2962 ], [ %3176, %3181 ]
  %2966 = load ptr, ptr %5, align 8, !tbaa !8
  %2967 = getelementptr inbounds %struct.word_type, ptr %2966, i64 0, i32 1
  %2968 = load i8, ptr %2967, align 8, !tbaa !5
  switch i8 %2968, label %3182 [
    i8 2, label %2969
    i8 102, label %2979
  ]

2969:                                             ; preds = %2964
  %2970 = getelementptr inbounds %struct.closure_type, ptr %2966, i64 0, i32 5
  %2971 = load ptr, ptr %2970, align 8, !tbaa !5
  %2972 = getelementptr inbounds %struct.symbol_type, ptr %2971, i64 0, i32 3
  %2973 = load ptr, ptr %2972, align 8, !tbaa !5
  %2974 = icmp eq ptr %2973, %2655
  br i1 %2974, label %2975, label %3182

2975:                                             ; preds = %2969
  %2976 = getelementptr inbounds %struct.word_type, ptr %2971, i64 0, i32 1
  %2977 = load i8, ptr %2976, align 8, !tbaa !5
  %2978 = icmp eq i8 %2977, -111
  br i1 %2978, label %2983, label %3182

2979:                                             ; preds = %2964
  %2980 = getelementptr inbounds %struct.word_type, ptr %2966, i64 0, i32 2
  %2981 = load i8, ptr %2980, align 8, !tbaa !5
  %2982 = icmp eq i8 %2981, 3
  br i1 %2982, label %3182, label %3009

2983:                                             ; preds = %2975
  %2984 = call ptr @LexGetToken() #6
  store ptr %2984, ptr %5, align 8, !tbaa !8
  %2985 = getelementptr inbounds %struct.word_type, ptr %2984, i64 0, i32 1
  %2986 = load i8, ptr %2985, align 8, !tbaa !5
  %2987 = icmp eq i8 %2986, 102
  br i1 %2987, label %3018, label %2988

2988:                                             ; preds = %2983
  %2989 = getelementptr inbounds %struct.closure_type, ptr %2966, i64 0, i32 5
  %2990 = load ptr, ptr %2989, align 8, !tbaa !5
  %2991 = call ptr @SymName(ptr noundef %2990) #6
  %2992 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.44, i32 noundef 2, ptr noundef nonnull %2967, ptr noundef nonnull @.str.17, ptr noundef %2991) #6
  store ptr %2966, ptr @zz_hold, align 8, !tbaa !8
  %2993 = load i8, ptr %2967, align 8, !tbaa !5
  %2994 = add i8 %2993, -11
  %2995 = icmp ult i8 %2994, 2
  %2996 = getelementptr inbounds %struct.word_type, ptr %2966, i64 0, i32 1, i32 0, i32 1
  %2997 = zext i8 %2993 to i64
  %2998 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2997
  %2999 = select i1 %2995, ptr %2996, ptr %2998
  %3000 = load i8, ptr %2999, align 1, !tbaa !5
  %3001 = zext i8 %3000 to i32
  store i32 %3001, ptr @zz_size, align 4, !tbaa !10
  %3002 = zext i8 %3000 to i64
  %3003 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3002
  %3004 = load ptr, ptr %3003, align 8, !tbaa !8
  store ptr %3004, ptr %2966, align 8, !tbaa !5
  %3005 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3006 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3007 = sext i32 %3006 to i64
  %3008 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3007
  store ptr %3005, ptr %3008, align 8, !tbaa !8
  br label %3182

3009:                                             ; preds = %2979
  %3010 = getelementptr inbounds i8, ptr %2966, i64 42
  %3011 = load i8, ptr %3010, align 2, !tbaa !5
  %3012 = getelementptr inbounds i8, ptr %2966, i64 41
  %3013 = load i8, ptr %3012, align 1, !tbaa !5
  %3014 = call ptr @ChildSymWithCode(ptr noundef %2653, i8 noundef zeroext %2981) #6
  %3015 = call ptr @NewToken(i8 noundef zeroext 2, ptr noundef nonnull %2967, i8 noundef zeroext %3011, i8 noundef zeroext %3013, i8 noundef zeroext 0, ptr noundef %3014) #6
  %3016 = load ptr, ptr %5, align 8, !tbaa !8
  %3017 = getelementptr inbounds %struct.word_type, ptr %3016, i64 0, i32 2
  store i8 3, ptr %3017, align 8, !tbaa !5
  br label %3018

3018:                                             ; preds = %2983, %3009
  %3019 = phi ptr [ %2966, %2983 ], [ %3015, %3009 ]
  store i32 0, ptr %9, align 4, !tbaa !10
  %3020 = getelementptr inbounds %struct.closure_type, ptr %3019, i64 0, i32 5
  %3021 = load ptr, ptr %3020, align 8, !tbaa !5
  %3022 = getelementptr inbounds %struct.symbol_type, ptr %3021, i64 0, i32 9
  %3023 = load ptr, ptr %3022, align 8, !tbaa !5
  %3024 = icmp eq ptr %3023, null
  br i1 %3024, label %3051, label %3025

3025:                                             ; preds = %3018
  %3026 = getelementptr inbounds %struct.LIST, ptr %3023, i64 0, i32 1
  %3027 = load ptr, ptr %3026, align 8, !tbaa !5
  %3028 = icmp eq ptr %3027, %3023
  br i1 %3028, label %3048, label %3029

3029:                                             ; preds = %3025, %3039
  %3030 = phi ptr [ %3044, %3039 ], [ %3027, %3025 ]
  %3031 = phi i32 [ %3042, %3039 ], [ 0, %3025 ]
  br label %3032

3032:                                             ; preds = %3029, %3032
  %3033 = phi ptr [ %3035, %3032 ], [ %3030, %3029 ]
  %3034 = getelementptr inbounds [2 x %struct.LIST], ptr %3033, i64 0, i64 1
  %3035 = load ptr, ptr %3034, align 8, !tbaa !5
  %3036 = getelementptr inbounds %struct.word_type, ptr %3035, i64 0, i32 1
  %3037 = load i8, ptr %3036, align 8, !tbaa !5
  %3038 = icmp eq i8 %3037, 0
  br i1 %3038, label %3032, label %3039

3039:                                             ; preds = %3032
  %3040 = getelementptr inbounds %struct.closure_type, ptr %3035, i64 0, i32 5
  %3041 = load ptr, ptr %3040, align 8, !tbaa !5
  call void @PushScope(ptr noundef %3041, i32 noundef 0, i32 noundef 1) #6
  %3042 = add nuw nsw i32 %3031, 1
  %3043 = getelementptr inbounds %struct.LIST, ptr %3030, i64 0, i32 1
  %3044 = load ptr, ptr %3043, align 8, !tbaa !5
  %3045 = icmp eq ptr %3044, %3023
  br i1 %3045, label %3046, label %3029

3046:                                             ; preds = %3039
  %3047 = load ptr, ptr %3020, align 8, !tbaa !5
  br label %3048

3048:                                             ; preds = %3046, %3025
  %3049 = phi ptr [ %3021, %3025 ], [ %3047, %3046 ]
  %3050 = phi i32 [ 0, %3025 ], [ %3042, %3046 ]
  store i32 %3050, ptr %9, align 4, !tbaa !10
  br label %3051

3051:                                             ; preds = %3048, %3018
  %3052 = phi i32 [ %3050, %3048 ], [ 0, %3018 ]
  %3053 = phi ptr [ %3049, %3048 ], [ %3021, %3018 ]
  call void @PushScope(ptr noundef %3053, i32 noundef 0, i32 noundef 0) #6
  %3054 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  call void @PopScope() #6
  %3055 = getelementptr inbounds %struct.word_type, ptr %3019, i64 0, i32 1
  store i8 10, ptr %3055, align 8, !tbaa !5
  %3056 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3057 = zext i8 %3056 to i32
  store i32 %3057, ptr @zz_size, align 4, !tbaa !10
  %3058 = zext i8 %3056 to i64
  %3059 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3058
  %3060 = load ptr, ptr %3059, align 8, !tbaa !8
  %3061 = icmp eq ptr %3060, null
  br i1 %3061, label %3062, label %3065

3062:                                             ; preds = %3051
  %3063 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3064 = call ptr @GetMemory(i32 noundef %3057, ptr noundef %3063) #6
  br label %3067

3065:                                             ; preds = %3051
  store ptr %3060, ptr @zz_hold, align 8, !tbaa !8
  %3066 = load ptr, ptr %3060, align 8, !tbaa !5
  store ptr %3066, ptr %3059, align 8, !tbaa !8
  br label %3067

3067:                                             ; preds = %3062, %3065
  %3068 = phi ptr [ %3064, %3062 ], [ %3060, %3065 ]
  %3069 = getelementptr inbounds %struct.word_type, ptr %3068, i64 0, i32 1
  store i8 0, ptr %3069, align 8, !tbaa !5
  %3070 = getelementptr inbounds [2 x %struct.LIST], ptr %3068, i64 0, i64 1, i32 1
  store ptr %3068, ptr %3070, align 8, !tbaa !5
  %3071 = getelementptr inbounds [2 x %struct.LIST], ptr %3068, i64 0, i64 1
  store ptr %3068, ptr %3071, align 8, !tbaa !5
  %3072 = getelementptr inbounds %struct.LIST, ptr %3068, i64 0, i32 1
  store ptr %3068, ptr %3072, align 8, !tbaa !5
  store ptr %3068, ptr %3068, align 8, !tbaa !5
  store ptr %3068, ptr @xx_link, align 8, !tbaa !8
  store ptr %3068, ptr @zz_res, align 8, !tbaa !8
  store ptr %3019, ptr @zz_hold, align 8, !tbaa !8
  %3073 = load ptr, ptr %3019, align 8, !tbaa !5
  store ptr %3073, ptr @zz_tmp, align 8, !tbaa !8
  %3074 = load ptr, ptr %3068, align 8, !tbaa !5
  store ptr %3074, ptr %3019, align 8, !tbaa !5
  %3075 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3076 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3077 = load ptr, ptr %3076, align 8, !tbaa !5
  %3078 = getelementptr inbounds %struct.LIST, ptr %3077, i64 0, i32 1
  store ptr %3075, ptr %3078, align 8, !tbaa !5
  %3079 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3079, ptr %3076, align 8, !tbaa !5
  %3080 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3081 = getelementptr inbounds %struct.LIST, ptr %3079, i64 0, i32 1
  store ptr %3080, ptr %3081, align 8, !tbaa !5
  %3082 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3082, ptr @zz_res, align 8, !tbaa !8
  store ptr %3054, ptr @zz_hold, align 8, !tbaa !8
  %3083 = icmp eq ptr %3054, null
  %3084 = icmp eq ptr %3082, null
  %3085 = select i1 %3083, i1 true, i1 %3084
  br i1 %3085, label %3093, label %3086

3086:                                             ; preds = %3067
  %3087 = getelementptr inbounds [2 x %struct.LIST], ptr %3054, i64 0, i64 1
  %3088 = load ptr, ptr %3087, align 8, !tbaa !5
  store ptr %3088, ptr @zz_tmp, align 8, !tbaa !8
  %3089 = getelementptr inbounds [2 x %struct.LIST], ptr %3082, i64 0, i64 1
  %3090 = load ptr, ptr %3089, align 8, !tbaa !5
  store ptr %3090, ptr %3087, align 8, !tbaa !5
  %3091 = getelementptr inbounds [2 x %struct.LIST], ptr %3090, i64 0, i64 1, i32 1
  store ptr %3054, ptr %3091, align 8, !tbaa !5
  store ptr %3088, ptr %3089, align 8, !tbaa !5
  %3092 = getelementptr inbounds [2 x %struct.LIST], ptr %3088, i64 0, i64 1, i32 1
  store ptr %3082, ptr %3092, align 8, !tbaa !5
  br label %3093

3093:                                             ; preds = %3067, %3086
  %3094 = icmp sgt i32 %3052, 0
  br i1 %3094, label %3095, label %3099

3095:                                             ; preds = %3093, %3095
  %3096 = phi i32 [ %3097, %3095 ], [ 0, %3093 ]
  call void @PopScope() #6
  %3097 = add nuw nsw i32 %3096, 1
  %3098 = icmp eq i32 %3097, %3052
  br i1 %3098, label %3099, label %3095

3099:                                             ; preds = %3095, %3093
  br label %3100

3100:                                             ; preds = %3099, %3114
  %3101 = phi ptr [ %3103, %3114 ], [ %2653, %3099 ]
  %3102 = getelementptr inbounds %struct.LIST, ptr %3101, i64 0, i32 1
  %3103 = load ptr, ptr %3102, align 8, !tbaa !5
  %3104 = icmp eq ptr %3103, %2653
  br i1 %3104, label %3125, label %3105

3105:                                             ; preds = %3100, %3105
  %3106 = phi ptr [ %3108, %3105 ], [ %3103, %3100 ]
  %3107 = getelementptr inbounds [2 x %struct.LIST], ptr %3106, i64 0, i64 1
  %3108 = load ptr, ptr %3107, align 8, !tbaa !5
  %3109 = getelementptr inbounds %struct.word_type, ptr %3108, i64 0, i32 1
  %3110 = load i8, ptr %3109, align 8, !tbaa !5
  switch i8 %3110, label %3111 [
    i8 0, label %3105
    i8 10, label %3114
  ]

3111:                                             ; preds = %3105
  %3112 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3113 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3112, ptr noundef nonnull @.str.45) #6
  br label %3114

3114:                                             ; preds = %3105, %3111
  %3115 = load ptr, ptr %3020, align 8, !tbaa !5
  %3116 = getelementptr inbounds %struct.closure_type, ptr %3108, i64 0, i32 5
  %3117 = load ptr, ptr %3116, align 8, !tbaa !5
  %3118 = icmp eq ptr %3115, %3117
  br i1 %3118, label %3119, label %3100

3119:                                             ; preds = %3114
  %3120 = call ptr @SymName(ptr noundef %3115) #6
  %3121 = load ptr, ptr %2654, align 8, !tbaa !5
  %3122 = call ptr @SymName(ptr noundef %3121) #6
  %3123 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.46, i32 noundef 2, ptr noundef nonnull %3055, ptr noundef %3120, ptr noundef %3122) #6
  %3124 = call i32 @DisposeObject(ptr noundef nonnull %3019) #6
  br label %3175

3125:                                             ; preds = %3100
  %3126 = load ptr, ptr %3020, align 8, !tbaa !5
  %3127 = getelementptr inbounds %struct.symbol_type, ptr %3126, i64 0, i32 16
  %3128 = load i8, ptr %3127, align 2
  %3129 = lshr i8 %3128, 6
  %3130 = and i8 %3129, 1
  %3131 = zext nneg i8 %3130 to i32
  %3132 = add i32 %2965, %3131
  %3133 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3134 = zext i8 %3133 to i32
  store i32 %3134, ptr @zz_size, align 4, !tbaa !10
  %3135 = zext i8 %3133 to i64
  %3136 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3135
  %3137 = load ptr, ptr %3136, align 8, !tbaa !8
  %3138 = icmp eq ptr %3137, null
  br i1 %3138, label %3139, label %3142

3139:                                             ; preds = %3125
  %3140 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3141 = call ptr @GetMemory(i32 noundef %3134, ptr noundef %3140) #6
  br label %3144

3142:                                             ; preds = %3125
  store ptr %3137, ptr @zz_hold, align 8, !tbaa !8
  %3143 = load ptr, ptr %3137, align 8, !tbaa !5
  store ptr %3143, ptr %3136, align 8, !tbaa !8
  br label %3144

3144:                                             ; preds = %3139, %3142
  %3145 = phi ptr [ %3141, %3139 ], [ %3137, %3142 ]
  %3146 = getelementptr inbounds %struct.word_type, ptr %3145, i64 0, i32 1
  store i8 0, ptr %3146, align 8, !tbaa !5
  %3147 = getelementptr inbounds [2 x %struct.LIST], ptr %3145, i64 0, i64 1, i32 1
  store ptr %3145, ptr %3147, align 8, !tbaa !5
  %3148 = getelementptr inbounds [2 x %struct.LIST], ptr %3145, i64 0, i64 1
  store ptr %3145, ptr %3148, align 8, !tbaa !5
  %3149 = getelementptr inbounds %struct.LIST, ptr %3145, i64 0, i32 1
  store ptr %3145, ptr %3149, align 8, !tbaa !5
  store ptr %3145, ptr %3145, align 8, !tbaa !5
  store ptr %3145, ptr @xx_link, align 8, !tbaa !8
  store ptr %3145, ptr @zz_res, align 8, !tbaa !8
  store ptr %2653, ptr @zz_hold, align 8, !tbaa !8
  br i1 %2963, label %3150, label %3151

3150:                                             ; preds = %3144
  store ptr %3019, ptr @zz_hold, align 8, !tbaa !8
  br label %3166

3151:                                             ; preds = %3144
  %3152 = load ptr, ptr %2653, align 8, !tbaa !5
  store ptr %3152, ptr @zz_tmp, align 8, !tbaa !8
  %3153 = load ptr, ptr %3145, align 8, !tbaa !5
  store ptr %3153, ptr %2653, align 8, !tbaa !5
  %3154 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3155 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3156 = load ptr, ptr %3155, align 8, !tbaa !5
  %3157 = getelementptr inbounds %struct.LIST, ptr %3156, i64 0, i32 1
  store ptr %3154, ptr %3157, align 8, !tbaa !5
  %3158 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3158, ptr %3155, align 8, !tbaa !5
  %3159 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3160 = getelementptr inbounds %struct.LIST, ptr %3158, i64 0, i32 1
  store ptr %3159, ptr %3160, align 8, !tbaa !5
  %3161 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3161, ptr @zz_res, align 8, !tbaa !8
  store ptr %3019, ptr @zz_hold, align 8, !tbaa !8
  %3162 = icmp eq ptr %3161, null
  br i1 %3162, label %3175, label %3163

3163:                                             ; preds = %3151
  %3164 = getelementptr inbounds [2 x %struct.LIST], ptr %3161, i64 0, i64 1
  %3165 = load ptr, ptr %3164, align 8, !tbaa !5
  br label %3166

3166:                                             ; preds = %3163, %3150
  %3167 = phi ptr [ %3145, %3150 ], [ %3165, %3163 ]
  %3168 = phi ptr [ %3145, %3150 ], [ %3161, %3163 ]
  %3169 = getelementptr inbounds [2 x %struct.LIST], ptr %3019, i64 0, i64 1
  %3170 = load ptr, ptr %3169, align 8, !tbaa !5
  store ptr %3170, ptr @zz_tmp, align 8, !tbaa !8
  %3171 = getelementptr inbounds [2 x %struct.LIST], ptr %3168, i64 0, i64 1
  store ptr %3167, ptr %3169, align 8, !tbaa !5
  %3172 = load ptr, ptr %3171, align 8, !tbaa !5
  %3173 = getelementptr inbounds [2 x %struct.LIST], ptr %3172, i64 0, i64 1, i32 1
  store ptr %3019, ptr %3173, align 8, !tbaa !5
  store ptr %3170, ptr %3171, align 8, !tbaa !5
  %3174 = getelementptr inbounds [2 x %struct.LIST], ptr %3170, i64 0, i64 1, i32 1
  store ptr %3168, ptr %3174, align 8, !tbaa !5
  br label %3175

3175:                                             ; preds = %3119, %3151, %3166
  %3176 = phi i32 [ %3132, %3166 ], [ %3132, %3151 ], [ %2965, %3119 ]
  call void @PushScope(ptr noundef %2655, i32 noundef 1, i32 noundef 0) #6
  %3177 = load ptr, ptr %5, align 8, !tbaa !8
  %3178 = icmp eq ptr %3177, null
  br i1 %3178, label %3179, label %3181

3179:                                             ; preds = %3175
  %3180 = call ptr @LexGetToken() #6
  store ptr %3180, ptr %5, align 8, !tbaa !8
  br label %3181

3181:                                             ; preds = %3175, %3179
  call void @PopScope() #6
  br label %2964

3182:                                             ; preds = %2964, %2969, %2975, %2979, %2988
  %3183 = getelementptr inbounds %struct.symbol_type, ptr %2655, i64 0, i32 13
  %3184 = load i16, ptr %3183, align 2, !tbaa !5
  %3185 = zext i16 %3184 to i32
  %3186 = icmp slt i32 %2965, %3185
  br i1 %3186, label %3187, label %3234

3187:                                             ; preds = %3182
  %3188 = getelementptr inbounds %struct.LIST, ptr %2655, i64 0, i32 1
  %3189 = load ptr, ptr %3188, align 8, !tbaa !5
  %3190 = icmp eq ptr %3189, %2655
  br i1 %3190, label %3234, label %3191

3191:                                             ; preds = %3187
  %3192 = getelementptr inbounds %struct.LIST, ptr %2653, i64 0, i32 1
  %3193 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1
  br label %3194

3194:                                             ; preds = %3191, %3230
  %3195 = phi ptr [ %3189, %3191 ], [ %3232, %3230 ]
  br label %3196

3196:                                             ; preds = %3194, %3196
  %3197 = phi ptr [ %3199, %3196 ], [ %3195, %3194 ]
  %3198 = getelementptr inbounds [2 x %struct.LIST], ptr %3197, i64 0, i64 1
  %3199 = load ptr, ptr %3198, align 8, !tbaa !5
  %3200 = getelementptr inbounds %struct.word_type, ptr %3199, i64 0, i32 1
  %3201 = load i8, ptr %3200, align 8, !tbaa !5
  switch i8 %3201, label %3230 [
    i8 0, label %3196
    i8 -111, label %3202
  ]

3202:                                             ; preds = %3196
  %3203 = getelementptr inbounds %struct.symbol_type, ptr %3199, i64 0, i32 16
  %3204 = load i8, ptr %3203, align 2
  %3205 = and i8 %3204, 64
  %3206 = icmp eq i8 %3205, 0
  br i1 %3206, label %3230, label %3207

3207:                                             ; preds = %3202
  %3208 = load ptr, ptr %3192, align 8, !tbaa !5
  %3209 = icmp eq ptr %3208, %2653
  br i1 %3209, label %3226, label %3210

3210:                                             ; preds = %3207, %3222
  %3211 = phi ptr [ %3224, %3222 ], [ %3208, %3207 ]
  br label %3212

3212:                                             ; preds = %3210, %3212
  %3213 = phi ptr [ %3215, %3212 ], [ %3211, %3210 ]
  %3214 = getelementptr inbounds [2 x %struct.LIST], ptr %3213, i64 0, i64 1
  %3215 = load ptr, ptr %3214, align 8, !tbaa !5
  %3216 = getelementptr inbounds %struct.word_type, ptr %3215, i64 0, i32 1
  %3217 = load i8, ptr %3216, align 8, !tbaa !5
  switch i8 %3217, label %3222 [
    i8 0, label %3212
    i8 10, label %3218
  ]

3218:                                             ; preds = %3212
  %3219 = getelementptr inbounds %struct.closure_type, ptr %3215, i64 0, i32 5
  %3220 = load ptr, ptr %3219, align 8, !tbaa !5
  %3221 = icmp eq ptr %3220, %3199
  br i1 %3221, label %3230, label %3222

3222:                                             ; preds = %3212, %3218
  %3223 = getelementptr inbounds %struct.LIST, ptr %3211, i64 0, i32 1
  %3224 = load ptr, ptr %3223, align 8, !tbaa !5
  %3225 = icmp eq ptr %3224, %2653
  br i1 %3225, label %3226, label %3210

3226:                                             ; preds = %3222, %3207
  %3227 = call ptr @SymName(ptr noundef %3199) #6
  %3228 = call ptr @SymName(ptr noundef %2655) #6
  %3229 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.47, i32 noundef 2, ptr noundef nonnull %3193, ptr noundef %3227, ptr noundef %3228) #6
  br label %3230

3230:                                             ; preds = %3196, %3218, %3202, %3226
  %3231 = getelementptr inbounds %struct.LIST, ptr %3195, i64 0, i32 1
  %3232 = load ptr, ptr %3231, align 8, !tbaa !5
  %3233 = icmp eq ptr %3232, %2655
  br i1 %3233, label %3234, label %3194

3234:                                             ; preds = %3230, %3187, %3182
  %3235 = load ptr, ptr %5, align 8, !tbaa !8
  %3236 = getelementptr inbounds %struct.word_type, ptr %3235, i64 0, i32 1
  %3237 = load i8, ptr %3236, align 8, !tbaa !5
  %3238 = icmp eq i8 %3237, 104
  br i1 %3238, label %3239, label %3249

3239:                                             ; preds = %3234
  %3240 = load i24, ptr %2781, align 1
  %3241 = and i24 %3240, 8
  %3242 = icmp eq i24 %3241, 0
  br i1 %3242, label %3243, label %3247

3243:                                             ; preds = %3239
  %3244 = getelementptr inbounds %struct.word_type, ptr %2653, i64 0, i32 1
  %3245 = call ptr @SymName(ptr noundef nonnull %2655) #6
  %3246 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %3244, ptr noundef nonnull @.str.33, ptr noundef %3245) #6
  br label %3249

3247:                                             ; preds = %3239
  %3248 = getelementptr inbounds %struct.closure_type, ptr %3235, i64 0, i32 5
  store ptr %2655, ptr %3248, align 8, !tbaa !5
  br label %3249

3249:                                             ; preds = %3243, %3247, %3234
  br i1 %225, label %3672, label %3250

3250:                                             ; preds = %3249
  %3251 = load i24, ptr %2781, align 1
  %3252 = and i24 %3251, 16448
  %3253 = icmp eq i24 %3252, 64
  br i1 %3253, label %3254, label %3672

3254:                                             ; preds = %3250
  %3255 = getelementptr inbounds %struct.symbol_type, ptr %2655, i64 0, i32 10
  %3256 = load ptr, ptr %3255, align 8, !tbaa !5
  %3257 = icmp eq ptr %3256, null
  br i1 %3257, label %3258, label %3672

3258:                                             ; preds = %3254
  %3259 = and i24 %3251, 8
  %3260 = icmp eq i24 %3259, 0
  br i1 %3260, label %3268, label %3261

3261:                                             ; preds = %3258
  %3262 = call ptr @ChildSym(ptr noundef nonnull %2655, i32 noundef 146) #6
  %3263 = getelementptr inbounds %struct.symbol_type, ptr %3262, i64 0, i32 14
  %3264 = load i8, ptr %3263, align 4, !tbaa !5
  %3265 = icmp ult i8 %3264, 2
  br i1 %3265, label %3266, label %3672

3266:                                             ; preds = %3261
  %3267 = load i24, ptr %2781, align 1
  br label %3268

3268:                                             ; preds = %3266, %3258
  %3269 = phi i24 [ %3267, %3266 ], [ %3251, %3258 ]
  %3270 = load i32, ptr @ttop, align 4
  %3271 = shl i24 %3269, 20
  %3272 = ashr i24 %3271, 23
  %3273 = sext i24 %3272 to i32
  %3274 = add i32 %3270, %3273
  %3275 = sext i32 %3274 to i64
  br label %3276

3276:                                             ; preds = %3276, %3268
  %3277 = phi i64 [ %3283, %3276 ], [ %3275, %3268 ]
  %3278 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3277
  %3279 = load ptr, ptr %3278, align 8, !tbaa !8
  %3280 = getelementptr inbounds %struct.word_type, ptr %3279, i64 0, i32 1
  %3281 = load i8, ptr %3280, align 8, !tbaa !5
  %3282 = icmp ult i8 %3281, 102
  %3283 = add i64 %3277, -1
  br i1 %3282, label %3276, label %3284

3284:                                             ; preds = %3276
  switch i8 %3281, label %3672 [
    i8 102, label %3285
    i8 104, label %3285
  ]

3285:                                             ; preds = %3284, %3284
  %3286 = shl i64 %3277, 32
  %3287 = add i64 %3286, -4294967296
  %3288 = ashr exact i64 %3287, 32
  %3289 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3288
  %3290 = load ptr, ptr %3289, align 8, !tbaa !8
  %3291 = getelementptr inbounds %struct.word_type, ptr %3290, i64 0, i32 1
  %3292 = load i8, ptr %3291, align 8, !tbaa !5
  %3293 = icmp eq i8 %3292, 110
  br i1 %3293, label %3294, label %3672

3294:                                             ; preds = %3285
  %3295 = and i24 %3269, 8
  %3296 = icmp eq i24 %3295, 0
  br i1 %3296, label %3411, label %3297

3297:                                             ; preds = %3294
  %3298 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %3299 = zext i8 %3298 to i32
  store i32 %3299, ptr @zz_size, align 4, !tbaa !10
  %3300 = zext i8 %3298 to i64
  %3301 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3300
  %3302 = load ptr, ptr %3301, align 8, !tbaa !8
  %3303 = icmp eq ptr %3302, null
  br i1 %3303, label %3304, label %3307

3304:                                             ; preds = %3297
  %3305 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3306 = call ptr @GetMemory(i32 noundef %3299, ptr noundef %3305) #6
  store ptr %3306, ptr @zz_hold, align 8, !tbaa !8
  br label %3309

3307:                                             ; preds = %3297
  store ptr %3302, ptr @zz_hold, align 8, !tbaa !8
  %3308 = load ptr, ptr %3302, align 8, !tbaa !5
  store ptr %3308, ptr %3301, align 8, !tbaa !8
  br label %3309

3309:                                             ; preds = %3304, %3307
  %3310 = phi ptr [ %3306, %3304 ], [ %3302, %3307 ]
  %3311 = getelementptr inbounds %struct.word_type, ptr %3310, i64 0, i32 1
  store i8 2, ptr %3311, align 8, !tbaa !5
  %3312 = getelementptr inbounds [2 x %struct.LIST], ptr %3310, i64 0, i64 1, i32 1
  store ptr %3310, ptr %3312, align 8, !tbaa !5
  %3313 = getelementptr inbounds [2 x %struct.LIST], ptr %3310, i64 0, i64 1
  store ptr %3310, ptr %3313, align 8, !tbaa !5
  %3314 = getelementptr inbounds %struct.LIST, ptr %3310, i64 0, i32 1
  store ptr %3310, ptr %3314, align 8, !tbaa !5
  store ptr %3310, ptr %3310, align 8, !tbaa !5
  %3315 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %3316 = getelementptr inbounds %struct.closure_type, ptr %3310, i64 0, i32 5
  store ptr %3315, ptr %3316, align 8, !tbaa !5
  %3317 = load ptr, ptr %5, align 8, !tbaa !8
  %3318 = getelementptr inbounds %struct.word_type, ptr %3317, i64 0, i32 1, i32 0, i32 2
  %3319 = load i16, ptr %3318, align 2, !tbaa !5
  %3320 = getelementptr inbounds %struct.word_type, ptr %3310, i64 0, i32 1, i32 0, i32 2
  store i16 %3319, ptr %3320, align 2, !tbaa !5
  %3321 = getelementptr inbounds %struct.word_type, ptr %3317, i64 0, i32 1, i32 0, i32 3
  %3322 = load i32, ptr %3321, align 4
  %3323 = and i32 %3322, 1048575
  %3324 = getelementptr inbounds %struct.word_type, ptr %3310, i64 0, i32 1, i32 0, i32 3
  %3325 = load i32, ptr %3324, align 4
  %3326 = and i32 %3325, -1048576
  %3327 = or disjoint i32 %3326, %3323
  store i32 %3327, ptr %3324, align 4
  %3328 = load i32, ptr %3321, align 4
  %3329 = and i32 %3328, -1048576
  %3330 = or disjoint i32 %3329, %3323
  store i32 %3330, ptr %3324, align 4
  %3331 = icmp eq i32 %2937, 0
  br i1 %3331, label %3395, label %3332

3332:                                             ; preds = %3309
  %3333 = getelementptr inbounds i8, ptr %3310, i64 41
  %3334 = load i8, ptr %3333, align 1, !tbaa !5
  %3335 = zext i8 %3334 to i32
  %3336 = getelementptr inbounds i8, ptr %3310, i64 42
  %3337 = load i8, ptr %3336, align 2, !tbaa !5
  %3338 = zext i8 %3337 to i32
  %3339 = sub nsw i32 0, %3338
  %3340 = icmp eq i32 %3335, %3339
  %3341 = icmp eq i32 %2937, 2
  %3342 = select i1 %3340, i32 101, i32 100
  %3343 = select i1 %3341, i8 7, i8 103
  %3344 = select i1 %3340, i8 %3343, i8 7
  br label %3345

3345:                                             ; preds = %3332, %3353
  %3346 = load i32, ptr @ttop, align 4, !tbaa !10
  %3347 = sext i32 %3346 to i64
  %3348 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3347
  %3349 = load ptr, ptr %3348, align 8, !tbaa !8
  %3350 = getelementptr inbounds %struct.word_type, ptr %3349, i64 0, i32 2
  %3351 = load i8, ptr %3350, align 8, !tbaa !5
  %3352 = icmp ugt i8 %3344, %3351
  br i1 %3352, label %3356, label %3353

3353:                                             ; preds = %3345
  %3354 = call fastcc i32 @Reduce(), !range !14
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3395, label %3345

3356:                                             ; preds = %3345
  %3357 = zext nneg i32 %3342 to i64
  %3358 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3357
  %3359 = load i8, ptr %3358, align 1, !tbaa !5
  %3360 = zext i8 %3359 to i32
  store i32 %3360, ptr @zz_size, align 4, !tbaa !10
  %3361 = zext i8 %3359 to i64
  %3362 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3361
  %3363 = load ptr, ptr %3362, align 8, !tbaa !8
  %3364 = icmp eq ptr %3363, null
  br i1 %3364, label %3365, label %3369

3365:                                             ; preds = %3356
  %3366 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3367 = call ptr @GetMemory(i32 noundef %3360, ptr noundef %3366) #6
  store ptr %3367, ptr @zz_hold, align 8, !tbaa !8
  %3368 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %3371

3369:                                             ; preds = %3356
  store ptr %3363, ptr @zz_hold, align 8, !tbaa !8
  %3370 = load ptr, ptr %3363, align 8, !tbaa !5
  store ptr %3370, ptr %3362, align 8, !tbaa !8
  br label %3371

3371:                                             ; preds = %3365, %3369
  %3372 = phi i32 [ %3368, %3365 ], [ %3346, %3369 ]
  %3373 = phi ptr [ %3367, %3365 ], [ %3363, %3369 ]
  %3374 = trunc i32 %3342 to i8
  %3375 = getelementptr inbounds %struct.word_type, ptr %3373, i64 0, i32 1
  store i8 %3374, ptr %3375, align 8, !tbaa !5
  %3376 = getelementptr inbounds [2 x %struct.LIST], ptr %3373, i64 0, i64 1, i32 1
  store ptr %3373, ptr %3376, align 8, !tbaa !5
  %3377 = getelementptr inbounds [2 x %struct.LIST], ptr %3373, i64 0, i64 1
  store ptr %3373, ptr %3377, align 8, !tbaa !5
  %3378 = getelementptr inbounds %struct.LIST, ptr %3373, i64 0, i32 1
  store ptr %3373, ptr %3378, align 8, !tbaa !5
  store ptr %3373, ptr %3373, align 8, !tbaa !5
  %3379 = getelementptr inbounds %struct.word_type, ptr %3373, i64 0, i32 2
  store i8 %3344, ptr %3379, align 8, !tbaa !5
  %3380 = getelementptr inbounds %struct.gapobj_type, ptr %3373, i64 0, i32 3
  %3381 = load i16, ptr %3380, align 4
  %3382 = and i16 %3381, -769
  %3383 = or disjoint i16 %3382, 512
  store i16 %3383, ptr %3380, align 4
  %3384 = add nsw i32 %3372, 1
  store i32 %3384, ptr @ttop, align 4, !tbaa !10
  %3385 = icmp slt i32 %3372, 99
  br i1 %3385, label %3386, label %3389

3386:                                             ; preds = %3371
  %3387 = sext i32 %3384 to i64
  %3388 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3387
  store ptr %3373, ptr %3388, align 8, !tbaa !8
  br label %3395

3389:                                             ; preds = %3371
  %3390 = zext nneg i32 %3372 to i64
  %3391 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3390
  %3392 = load ptr, ptr %3391, align 8, !tbaa !8
  %3393 = getelementptr inbounds %struct.word_type, ptr %3392, i64 0, i32 1
  %3394 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3393) #6
  br label %3395

3395:                                             ; preds = %3353, %3389, %3386, %3309
  %3396 = phi ptr [ %3310, %3309 ], [ %3373, %3386 ], [ %3373, %3389 ], [ %3310, %3353 ]
  store ptr %3396, ptr @zz_hold, align 8, !tbaa !8
  %3397 = load i32, ptr @otop, align 4, !tbaa !10
  %3398 = add nsw i32 %3397, 1
  store i32 %3398, ptr @otop, align 4, !tbaa !10
  %3399 = icmp slt i32 %3397, 99
  br i1 %3399, label %3400, label %3403

3400:                                             ; preds = %3395
  %3401 = sext i32 %3398 to i64
  %3402 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3401
  store ptr %3396, ptr %3402, align 8, !tbaa !8
  br label %3409

3403:                                             ; preds = %3395
  %3404 = zext nneg i32 %3397 to i64
  %3405 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3404
  %3406 = load ptr, ptr %3405, align 8, !tbaa !8
  %3407 = getelementptr inbounds %struct.word_type, ptr %3406, i64 0, i32 1
  %3408 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3407) #6
  br label %3409

3409:                                             ; preds = %3403, %3400
  %3410 = call fastcc i32 @Reduce(), !range !14
  br label %3411

3411:                                             ; preds = %3409, %3294
  %3412 = load i32, ptr @otop, align 4, !tbaa !10
  %3413 = add nsw i32 %3412, -1
  store i32 %3413, ptr @otop, align 4, !tbaa !10
  %3414 = sext i32 %3412 to i64
  %3415 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3414
  %3416 = load ptr, ptr %3415, align 8, !tbaa !8
  %3417 = call ptr @TransferBegin(ptr noundef %3416) #6
  %3418 = getelementptr inbounds %struct.word_type, ptr %3417, i64 0, i32 1
  %3419 = load i8, ptr %3418, align 8, !tbaa !5
  %3420 = icmp eq i8 %3419, 2
  br i1 %3420, label %3421, label %3651

3421:                                             ; preds = %3411
  %3422 = load i24, ptr %2781, align 1
  %3423 = and i24 %3422, 8
  %3424 = icmp eq i24 %3423, 0
  br i1 %3424, label %3638, label %3425

3425:                                             ; preds = %3421
  %3426 = load ptr, ptr %3417, align 8, !tbaa !5
  br label %3427

3427:                                             ; preds = %3427, %3425
  %3428 = phi ptr [ %3426, %3425 ], [ %3430, %3427 ]
  %3429 = getelementptr inbounds [2 x %struct.LIST], ptr %3428, i64 0, i64 1
  %3430 = load ptr, ptr %3429, align 8, !tbaa !5
  %3431 = getelementptr inbounds %struct.word_type, ptr %3430, i64 0, i32 1
  %3432 = load i8, ptr %3431, align 8, !tbaa !5
  switch i8 %3432, label %3439 [
    i8 0, label %3427
    i8 10, label %3433
  ]

3433:                                             ; preds = %3427
  %3434 = getelementptr inbounds %struct.closure_type, ptr %3430, i64 0, i32 5
  %3435 = load ptr, ptr %3434, align 8, !tbaa !5
  %3436 = getelementptr inbounds %struct.word_type, ptr %3435, i64 0, i32 1
  %3437 = load i8, ptr %3436, align 8, !tbaa !5
  %3438 = icmp eq i8 %3437, -110
  br i1 %3438, label %3443, label %3439

3439:                                             ; preds = %3427, %3433
  %3440 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3441 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3440, ptr noundef nonnull @.str.49) #6
  %3442 = load ptr, ptr %3417, align 8, !tbaa !5
  br label %3443

3443:                                             ; preds = %3439, %3433
  %3444 = phi ptr [ %3442, %3439 ], [ %3426, %3433 ]
  store ptr %3444, ptr @xx_link, align 8, !tbaa !8
  %3445 = getelementptr inbounds [2 x %struct.LIST], ptr %3444, i64 0, i64 1, i32 1
  %3446 = load ptr, ptr %3445, align 8, !tbaa !5
  %3447 = icmp eq ptr %3446, %3444
  br i1 %3447, label %3453, label %3448

3448:                                             ; preds = %3443
  store ptr %3446, ptr @zz_res, align 8, !tbaa !8
  %3449 = getelementptr inbounds [2 x %struct.LIST], ptr %3444, i64 0, i64 1
  %3450 = load ptr, ptr %3449, align 8, !tbaa !5
  %3451 = getelementptr inbounds [2 x %struct.LIST], ptr %3446, i64 0, i64 1
  store ptr %3450, ptr %3451, align 8, !tbaa !5
  %3452 = getelementptr inbounds [2 x %struct.LIST], ptr %3450, i64 0, i64 1, i32 1
  store ptr %3446, ptr %3452, align 8, !tbaa !5
  store ptr %3444, ptr %3445, align 8, !tbaa !5
  store ptr %3444, ptr %3449, align 8, !tbaa !5
  br label %3453

3453:                                             ; preds = %3443, %3448
  %3454 = phi ptr [ %3446, %3448 ], [ null, %3443 ]
  store ptr %3454, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3444, ptr @zz_hold, align 8, !tbaa !8
  %3455 = getelementptr inbounds %struct.LIST, ptr %3444, i64 0, i32 1
  %3456 = load ptr, ptr %3455, align 8, !tbaa !5
  %3457 = icmp eq ptr %3456, %3444
  br i1 %3457, label %3466, label %3458

3458:                                             ; preds = %3453
  store ptr %3456, ptr @zz_res, align 8, !tbaa !8
  %3459 = load ptr, ptr %3444, align 8, !tbaa !5
  store ptr %3459, ptr %3456, align 8, !tbaa !5
  %3460 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3461 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3462 = load ptr, ptr %3461, align 8, !tbaa !5
  %3463 = getelementptr inbounds %struct.LIST, ptr %3462, i64 0, i32 1
  store ptr %3460, ptr %3463, align 8, !tbaa !5
  %3464 = getelementptr inbounds %struct.LIST, ptr %3461, i64 0, i32 1
  store ptr %3461, ptr %3464, align 8, !tbaa !5
  store ptr %3461, ptr %3461, align 8, !tbaa !5
  %3465 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3466

3466:                                             ; preds = %3453, %3458
  %3467 = phi ptr [ %3444, %3453 ], [ %3465, %3458 ]
  store ptr %3467, ptr @zz_hold, align 8, !tbaa !8
  %3468 = getelementptr inbounds %struct.word_type, ptr %3467, i64 0, i32 1
  %3469 = load i8, ptr %3468, align 8, !tbaa !5
  %3470 = add i8 %3469, -11
  %3471 = icmp ult i8 %3470, 2
  %3472 = getelementptr inbounds %struct.word_type, ptr %3467, i64 0, i32 1, i32 0, i32 1
  %3473 = zext i8 %3469 to i64
  %3474 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3473
  %3475 = select i1 %3471, ptr %3472, ptr %3474
  %3476 = load i8, ptr %3475, align 1, !tbaa !5
  %3477 = zext i8 %3476 to i32
  store i32 %3477, ptr @zz_size, align 4, !tbaa !10
  %3478 = zext i8 %3476 to i64
  %3479 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3478
  %3480 = load ptr, ptr %3479, align 8, !tbaa !8
  store ptr %3480, ptr %3467, align 8, !tbaa !5
  %3481 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3482 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3483 = sext i32 %3482 to i64
  %3484 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3483
  store ptr %3481, ptr %3484, align 8, !tbaa !8
  %3485 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3486 = getelementptr inbounds [2 x %struct.LIST], ptr %3485, i64 0, i64 1, i32 1
  %3487 = load ptr, ptr %3486, align 8, !tbaa !5
  %3488 = icmp eq ptr %3487, %3485
  br i1 %3488, label %3489, label %3491

3489:                                             ; preds = %3466
  %3490 = call i32 @DisposeObject(ptr noundef nonnull %3485) #6
  br label %3491

3491:                                             ; preds = %3489, %3466
  %3492 = load i24, ptr %2781, align 1
  %3493 = and i24 %3492, 4
  %3494 = icmp eq i24 %3493, 0
  br i1 %3494, label %3625, label %3495

3495:                                             ; preds = %3491
  %3496 = getelementptr inbounds %struct.LIST, ptr %3417, i64 0, i32 1
  %3497 = load ptr, ptr %3496, align 8, !tbaa !5
  br label %3498

3498:                                             ; preds = %3498, %3495
  %3499 = phi ptr [ %3497, %3495 ], [ %3501, %3498 ]
  %3500 = getelementptr inbounds [2 x %struct.LIST], ptr %3499, i64 0, i64 1
  %3501 = load ptr, ptr %3500, align 8, !tbaa !5
  %3502 = getelementptr inbounds %struct.word_type, ptr %3501, i64 0, i32 1
  %3503 = load i8, ptr %3502, align 8, !tbaa !5
  switch i8 %3503, label %3510 [
    i8 0, label %3498
    i8 10, label %3504
  ]

3504:                                             ; preds = %3498
  %3505 = getelementptr inbounds %struct.closure_type, ptr %3501, i64 0, i32 5
  %3506 = load ptr, ptr %3505, align 8, !tbaa !5
  %3507 = getelementptr inbounds %struct.word_type, ptr %3506, i64 0, i32 1
  %3508 = load i8, ptr %3507, align 8, !tbaa !5
  %3509 = icmp eq i8 %3508, -112
  br i1 %3509, label %3513, label %3510

3510:                                             ; preds = %3498, %3504
  %3511 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3512 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3511, ptr noundef nonnull @.str.50) #6
  br label %3513

3513:                                             ; preds = %3510, %3504
  %3514 = getelementptr inbounds %struct.LIST, ptr %3501, i64 0, i32 1
  %3515 = load ptr, ptr %3514, align 8, !tbaa !5
  br label %3516

3516:                                             ; preds = %3516, %3513
  %3517 = phi ptr [ %3515, %3513 ], [ %3519, %3516 ]
  %3518 = getelementptr inbounds [2 x %struct.LIST], ptr %3517, i64 0, i64 1
  %3519 = load ptr, ptr %3518, align 8, !tbaa !5
  %3520 = getelementptr inbounds %struct.word_type, ptr %3519, i64 0, i32 1
  %3521 = load i8, ptr %3520, align 8, !tbaa !5
  %3522 = icmp eq i8 %3521, 0
  br i1 %3522, label %3516, label %3523

3523:                                             ; preds = %3516
  store ptr %3519, ptr @zz_hold, align 8, !tbaa !8
  %3524 = load i32, ptr @otop, align 4, !tbaa !10
  %3525 = add nsw i32 %3524, 1
  store i32 %3525, ptr @otop, align 4, !tbaa !10
  %3526 = icmp slt i32 %3524, 99
  br i1 %3526, label %3527, label %3530

3527:                                             ; preds = %3523
  %3528 = sext i32 %3525 to i64
  %3529 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3528
  store ptr %3519, ptr %3529, align 8, !tbaa !8
  br label %3536

3530:                                             ; preds = %3523
  %3531 = zext nneg i32 %3524 to i64
  %3532 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3531
  %3533 = load ptr, ptr %3532, align 8, !tbaa !8
  %3534 = getelementptr inbounds %struct.word_type, ptr %3533, i64 0, i32 1
  %3535 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3534) #6
  br label %3536

3536:                                             ; preds = %3530, %3527
  %3537 = getelementptr inbounds [2 x %struct.LIST], ptr %3519, i64 0, i64 1, i32 1
  %3538 = load ptr, ptr %3537, align 8, !tbaa !5
  store ptr %3538, ptr @xx_link, align 8, !tbaa !8
  %3539 = getelementptr inbounds [2 x %struct.LIST], ptr %3538, i64 0, i64 1, i32 1
  %3540 = load ptr, ptr %3539, align 8, !tbaa !5
  %3541 = icmp eq ptr %3540, %3538
  br i1 %3541, label %3547, label %3542

3542:                                             ; preds = %3536
  store ptr %3540, ptr @zz_res, align 8, !tbaa !8
  %3543 = getelementptr inbounds [2 x %struct.LIST], ptr %3538, i64 0, i64 1
  %3544 = load ptr, ptr %3543, align 8, !tbaa !5
  %3545 = getelementptr inbounds [2 x %struct.LIST], ptr %3540, i64 0, i64 1
  store ptr %3544, ptr %3545, align 8, !tbaa !5
  %3546 = getelementptr inbounds [2 x %struct.LIST], ptr %3544, i64 0, i64 1, i32 1
  store ptr %3540, ptr %3546, align 8, !tbaa !5
  store ptr %3538, ptr %3539, align 8, !tbaa !5
  store ptr %3538, ptr %3543, align 8, !tbaa !5
  br label %3547

3547:                                             ; preds = %3536, %3542
  store ptr %3538, ptr @zz_hold, align 8, !tbaa !8
  %3548 = getelementptr inbounds %struct.LIST, ptr %3538, i64 0, i32 1
  %3549 = load ptr, ptr %3548, align 8, !tbaa !5
  %3550 = icmp eq ptr %3549, %3538
  br i1 %3550, label %3559, label %3551

3551:                                             ; preds = %3547
  store ptr %3549, ptr @zz_res, align 8, !tbaa !8
  %3552 = load ptr, ptr %3538, align 8, !tbaa !5
  store ptr %3552, ptr %3549, align 8, !tbaa !5
  %3553 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3554 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3555 = load ptr, ptr %3554, align 8, !tbaa !5
  %3556 = getelementptr inbounds %struct.LIST, ptr %3555, i64 0, i32 1
  store ptr %3553, ptr %3556, align 8, !tbaa !5
  %3557 = getelementptr inbounds %struct.LIST, ptr %3554, i64 0, i32 1
  store ptr %3554, ptr %3557, align 8, !tbaa !5
  store ptr %3554, ptr %3554, align 8, !tbaa !5
  %3558 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3559

3559:                                             ; preds = %3547, %3551
  %3560 = phi ptr [ %3538, %3547 ], [ %3558, %3551 ]
  store ptr %3560, ptr @zz_hold, align 8, !tbaa !8
  %3561 = getelementptr inbounds %struct.word_type, ptr %3560, i64 0, i32 1
  %3562 = load i8, ptr %3561, align 8, !tbaa !5
  %3563 = add i8 %3562, -11
  %3564 = icmp ult i8 %3563, 2
  %3565 = getelementptr inbounds %struct.word_type, ptr %3560, i64 0, i32 1, i32 0, i32 1
  %3566 = zext i8 %3562 to i64
  %3567 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3566
  %3568 = select i1 %3564, ptr %3565, ptr %3567
  %3569 = load i8, ptr %3568, align 1, !tbaa !5
  %3570 = zext i8 %3569 to i32
  store i32 %3570, ptr @zz_size, align 4, !tbaa !10
  %3571 = zext i8 %3569 to i64
  %3572 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3571
  %3573 = load ptr, ptr %3572, align 8, !tbaa !8
  store ptr %3573, ptr %3560, align 8, !tbaa !5
  %3574 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3575 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3576 = sext i32 %3575 to i64
  %3577 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3576
  store ptr %3574, ptr %3577, align 8, !tbaa !8
  %3578 = load ptr, ptr %3496, align 8, !tbaa !5
  store ptr %3578, ptr @xx_link, align 8, !tbaa !8
  %3579 = getelementptr inbounds [2 x %struct.LIST], ptr %3578, i64 0, i64 1, i32 1
  %3580 = load ptr, ptr %3579, align 8, !tbaa !5
  %3581 = icmp eq ptr %3580, %3578
  br i1 %3581, label %3587, label %3582

3582:                                             ; preds = %3559
  store ptr %3580, ptr @zz_res, align 8, !tbaa !8
  %3583 = getelementptr inbounds [2 x %struct.LIST], ptr %3578, i64 0, i64 1
  %3584 = load ptr, ptr %3583, align 8, !tbaa !5
  %3585 = getelementptr inbounds [2 x %struct.LIST], ptr %3580, i64 0, i64 1
  store ptr %3584, ptr %3585, align 8, !tbaa !5
  %3586 = getelementptr inbounds [2 x %struct.LIST], ptr %3584, i64 0, i64 1, i32 1
  store ptr %3580, ptr %3586, align 8, !tbaa !5
  store ptr %3578, ptr %3579, align 8, !tbaa !5
  store ptr %3578, ptr %3583, align 8, !tbaa !5
  br label %3587

3587:                                             ; preds = %3559, %3582
  %3588 = phi ptr [ %3580, %3582 ], [ null, %3559 ]
  store ptr %3588, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3578, ptr @zz_hold, align 8, !tbaa !8
  %3589 = getelementptr inbounds %struct.LIST, ptr %3578, i64 0, i32 1
  %3590 = load ptr, ptr %3589, align 8, !tbaa !5
  %3591 = icmp eq ptr %3590, %3578
  br i1 %3591, label %3600, label %3592

3592:                                             ; preds = %3587
  store ptr %3590, ptr @zz_res, align 8, !tbaa !8
  %3593 = load ptr, ptr %3578, align 8, !tbaa !5
  store ptr %3593, ptr %3590, align 8, !tbaa !5
  %3594 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3595 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3596 = load ptr, ptr %3595, align 8, !tbaa !5
  %3597 = getelementptr inbounds %struct.LIST, ptr %3596, i64 0, i32 1
  store ptr %3594, ptr %3597, align 8, !tbaa !5
  %3598 = getelementptr inbounds %struct.LIST, ptr %3595, i64 0, i32 1
  store ptr %3595, ptr %3598, align 8, !tbaa !5
  store ptr %3595, ptr %3595, align 8, !tbaa !5
  %3599 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3600

3600:                                             ; preds = %3587, %3592
  %3601 = phi ptr [ %3578, %3587 ], [ %3599, %3592 ]
  store ptr %3601, ptr @zz_hold, align 8, !tbaa !8
  %3602 = getelementptr inbounds %struct.word_type, ptr %3601, i64 0, i32 1
  %3603 = load i8, ptr %3602, align 8, !tbaa !5
  %3604 = add i8 %3603, -11
  %3605 = icmp ult i8 %3604, 2
  %3606 = getelementptr inbounds %struct.word_type, ptr %3601, i64 0, i32 1, i32 0, i32 1
  %3607 = zext i8 %3603 to i64
  %3608 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3607
  %3609 = select i1 %3605, ptr %3606, ptr %3608
  %3610 = load i8, ptr %3609, align 1, !tbaa !5
  %3611 = zext i8 %3610 to i32
  store i32 %3611, ptr @zz_size, align 4, !tbaa !10
  %3612 = zext i8 %3610 to i64
  %3613 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3612
  %3614 = load ptr, ptr %3613, align 8, !tbaa !8
  store ptr %3614, ptr %3601, align 8, !tbaa !5
  %3615 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3616 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3617 = sext i32 %3616 to i64
  %3618 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3617
  store ptr %3615, ptr %3618, align 8, !tbaa !8
  %3619 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3620 = getelementptr inbounds [2 x %struct.LIST], ptr %3619, i64 0, i64 1, i32 1
  %3621 = load ptr, ptr %3620, align 8, !tbaa !5
  %3622 = icmp eq ptr %3621, %3619
  br i1 %3622, label %3623, label %3625

3623:                                             ; preds = %3600
  %3624 = call i32 @DisposeObject(ptr noundef nonnull %3619) #6
  br label %3625

3625:                                             ; preds = %3600, %3623, %3491
  %3626 = load i32, ptr @ttop, align 4, !tbaa !10
  %3627 = add nsw i32 %3626, 1
  store i32 %3627, ptr @ttop, align 4, !tbaa !10
  %3628 = icmp slt i32 %3626, 99
  br i1 %3628, label %3629, label %3632

3629:                                             ; preds = %3625
  %3630 = sext i32 %3627 to i64
  %3631 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3630
  store ptr %3417, ptr %3631, align 8, !tbaa !8
  br label %3672

3632:                                             ; preds = %3625
  %3633 = zext nneg i32 %3626 to i64
  %3634 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3633
  %3635 = load ptr, ptr %3634, align 8, !tbaa !8
  %3636 = getelementptr inbounds %struct.word_type, ptr %3635, i64 0, i32 1
  %3637 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3636) #6
  br label %3672

3638:                                             ; preds = %3421
  store ptr %3417, ptr @zz_hold, align 8, !tbaa !8
  %3639 = load i32, ptr @otop, align 4, !tbaa !10
  %3640 = add nsw i32 %3639, 1
  store i32 %3640, ptr @otop, align 4, !tbaa !10
  %3641 = icmp slt i32 %3639, 99
  br i1 %3641, label %3642, label %3645

3642:                                             ; preds = %3638
  %3643 = sext i32 %3640 to i64
  %3644 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3643
  store ptr %3417, ptr %3644, align 8, !tbaa !8
  br label %3672

3645:                                             ; preds = %3638
  %3646 = zext nneg i32 %3639 to i64
  %3647 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3646
  %3648 = load ptr, ptr %3647, align 8, !tbaa !8
  %3649 = getelementptr inbounds %struct.word_type, ptr %3648, i64 0, i32 1
  %3650 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3649) #6
  br label %3672

3651:                                             ; preds = %3411
  %3652 = load i32, ptr @ttop, align 4, !tbaa !10
  %3653 = add nsw i32 %3652, 1
  store i32 %3653, ptr @ttop, align 4, !tbaa !10
  %3654 = icmp slt i32 %3652, 99
  br i1 %3654, label %3655, label %3658

3655:                                             ; preds = %3651
  %3656 = sext i32 %3653 to i64
  %3657 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3656
  store ptr %3417, ptr %3657, align 8, !tbaa !8
  br label %3664

3658:                                             ; preds = %3651
  %3659 = zext nneg i32 %3652 to i64
  %3660 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3659
  %3661 = load ptr, ptr %3660, align 8, !tbaa !8
  %3662 = getelementptr inbounds %struct.word_type, ptr %3661, i64 0, i32 1
  %3663 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3662) #6
  br label %3664

3664:                                             ; preds = %3658, %3655
  %3665 = load i24, ptr %2781, align 1
  %3666 = and i24 %3665, 8
  %3667 = icmp eq i24 %3666, 0
  br i1 %3667, label %3668, label %3672

3668:                                             ; preds = %3664
  %3669 = call fastcc i32 @Reduce(), !range !14
  %3670 = load i32, ptr @ttop, align 4, !tbaa !10
  %3671 = icmp eq i32 %3670, %13
  br i1 %3671, label %3948, label %3672

3672:                                             ; preds = %3664, %3642, %3645, %3629, %3632, %3284, %3261, %3668, %3285, %3254, %3250, %3249
  %3673 = phi ptr [ %3417, %3668 ], [ %2653, %3285 ], [ %2653, %3261 ], [ %2653, %3254 ], [ %2653, %3250 ], [ %2653, %3249 ], [ %2653, %3284 ], [ %3417, %3632 ], [ %3417, %3629 ], [ %3417, %3645 ], [ %3417, %3642 ], [ %3417, %3664 ]
  %3674 = phi i32 [ %3669, %3668 ], [ %2937, %3285 ], [ %2937, %3261 ], [ %2937, %3254 ], [ %2937, %3250 ], [ %2937, %3249 ], [ %2937, %3284 ], [ 0, %3632 ], [ 0, %3629 ], [ 1, %3645 ], [ 1, %3642 ], [ 0, %3664 ]
  %3675 = getelementptr inbounds %struct.symbol_type, ptr %2655, i64 0, i32 10
  %3676 = load ptr, ptr %3675, align 8, !tbaa !5
  %3677 = icmp eq ptr %3676, null
  br i1 %3677, label %3811, label %3678

3678:                                             ; preds = %3672
  %3679 = load ptr, ptr %5, align 8, !tbaa !8
  %3680 = getelementptr inbounds %struct.word_type, ptr %3679, i64 0, i32 1
  %3681 = load i8, ptr %3680, align 8, !tbaa !5
  switch i8 %3681, label %3807 [
    i8 104, label %3682
    i8 102, label %3682
  ]

3682:                                             ; preds = %3678, %3678
  %3683 = icmp eq i8 %3681, 104
  %3684 = zext i1 %3683 to i32
  %3685 = call ptr @FilterCreate(i32 noundef %3684, ptr noundef nonnull %2655, ptr noundef nonnull %3680) #6
  %3686 = icmp eq i32 %3674, 0
  br i1 %3686, label %3777, label %3687

3687:                                             ; preds = %3682
  %3688 = load ptr, ptr %5, align 8, !tbaa !8
  %3689 = getelementptr inbounds i8, ptr %3688, i64 41
  %3690 = load i8, ptr %3689, align 1, !tbaa !5
  %3691 = zext i8 %3690 to i32
  %3692 = getelementptr inbounds i8, ptr %3688, i64 42
  %3693 = load i8, ptr %3692, align 2, !tbaa !5
  %3694 = zext i8 %3693 to i32
  %3695 = sub nsw i32 0, %3694
  %3696 = icmp eq i32 %3691, %3695
  br i1 %3696, label %3697, label %3704

3697:                                             ; preds = %3687
  %3698 = getelementptr inbounds %struct.word_type, ptr %3688, i64 0, i32 1
  %3699 = load i8, ptr %3698, align 8, !tbaa !5
  %3700 = icmp eq i8 %3699, 102
  %3701 = icmp eq i32 %3674, 2
  %3702 = or i1 %3701, %3700
  %3703 = select i1 %3702, i8 7, i8 103
  br label %3704

3704:                                             ; preds = %3697, %3687
  %3705 = phi i32 [ 100, %3687 ], [ 101, %3697 ]
  %3706 = phi i8 [ 7, %3687 ], [ %3703, %3697 ]
  br label %3707

3707:                                             ; preds = %3704, %3715
  %3708 = load i32, ptr @ttop, align 4, !tbaa !10
  %3709 = sext i32 %3708 to i64
  %3710 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3709
  %3711 = load ptr, ptr %3710, align 8, !tbaa !8
  %3712 = getelementptr inbounds %struct.word_type, ptr %3711, i64 0, i32 2
  %3713 = load i8, ptr %3712, align 8, !tbaa !5
  %3714 = icmp ugt i8 %3706, %3713
  br i1 %3714, label %3718, label %3715

3715:                                             ; preds = %3707
  %3716 = call fastcc i32 @Reduce(), !range !14
  %3717 = icmp eq i32 %3716, 0
  br i1 %3717, label %3777, label %3707

3718:                                             ; preds = %3707
  %3719 = zext nneg i32 %3705 to i64
  %3720 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3719
  %3721 = load i8, ptr %3720, align 1, !tbaa !5
  %3722 = zext i8 %3721 to i32
  store i32 %3722, ptr @zz_size, align 4, !tbaa !10
  %3723 = zext i8 %3721 to i64
  %3724 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3723
  %3725 = load ptr, ptr %3724, align 8, !tbaa !8
  %3726 = icmp eq ptr %3725, null
  br i1 %3726, label %3727, label %3731

3727:                                             ; preds = %3718
  %3728 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3729 = call ptr @GetMemory(i32 noundef %3722, ptr noundef %3728) #6
  store ptr %3729, ptr @zz_hold, align 8, !tbaa !8
  %3730 = load i32, ptr @ttop, align 4, !tbaa !10
  br label %3733

3731:                                             ; preds = %3718
  store ptr %3725, ptr @zz_hold, align 8, !tbaa !8
  %3732 = load ptr, ptr %3725, align 8, !tbaa !5
  store ptr %3732, ptr %3724, align 8, !tbaa !8
  br label %3733

3733:                                             ; preds = %3727, %3731
  %3734 = phi i32 [ %3730, %3727 ], [ %3708, %3731 ]
  %3735 = phi ptr [ %3729, %3727 ], [ %3725, %3731 ]
  %3736 = trunc i32 %3705 to i8
  %3737 = getelementptr inbounds %struct.word_type, ptr %3735, i64 0, i32 1
  store i8 %3736, ptr %3737, align 8, !tbaa !5
  %3738 = getelementptr inbounds [2 x %struct.LIST], ptr %3735, i64 0, i64 1, i32 1
  store ptr %3735, ptr %3738, align 8, !tbaa !5
  %3739 = getelementptr inbounds [2 x %struct.LIST], ptr %3735, i64 0, i64 1
  store ptr %3735, ptr %3739, align 8, !tbaa !5
  %3740 = getelementptr inbounds %struct.LIST, ptr %3735, i64 0, i32 1
  store ptr %3735, ptr %3740, align 8, !tbaa !5
  store ptr %3735, ptr %3735, align 8, !tbaa !5
  %3741 = getelementptr inbounds %struct.word_type, ptr %3735, i64 0, i32 2
  store i8 %3706, ptr %3741, align 8, !tbaa !5
  %3742 = load ptr, ptr %5, align 8, !tbaa !8
  %3743 = getelementptr inbounds i8, ptr %3742, i64 42
  %3744 = load i8, ptr %3743, align 2, !tbaa !5
  %3745 = getelementptr inbounds i8, ptr %3735, i64 42
  store i8 %3744, ptr %3745, align 2, !tbaa !5
  %3746 = getelementptr inbounds i8, ptr %3742, i64 41
  %3747 = load i8, ptr %3746, align 1, !tbaa !5
  %3748 = getelementptr inbounds i8, ptr %3735, i64 41
  store i8 %3747, ptr %3748, align 1, !tbaa !5
  %3749 = getelementptr inbounds %struct.gapobj_type, ptr %3735, i64 0, i32 3
  %3750 = load i16, ptr %3749, align 4
  %3751 = and i16 %3750, -769
  %3752 = or disjoint i16 %3751, 512
  store i16 %3752, ptr %3749, align 4
  %3753 = getelementptr inbounds %struct.word_type, ptr %3742, i64 0, i32 1, i32 0, i32 2
  %3754 = load i16, ptr %3753, align 2, !tbaa !5
  %3755 = getelementptr inbounds %struct.word_type, ptr %3735, i64 0, i32 1, i32 0, i32 2
  store i16 %3754, ptr %3755, align 2, !tbaa !5
  %3756 = getelementptr inbounds %struct.word_type, ptr %3742, i64 0, i32 1, i32 0, i32 3
  %3757 = load i32, ptr %3756, align 4
  %3758 = and i32 %3757, 1048575
  %3759 = getelementptr inbounds %struct.word_type, ptr %3735, i64 0, i32 1, i32 0, i32 3
  %3760 = load i32, ptr %3759, align 4
  %3761 = and i32 %3760, -1048576
  %3762 = or disjoint i32 %3761, %3758
  store i32 %3762, ptr %3759, align 4
  %3763 = load i32, ptr %3756, align 4
  %3764 = and i32 %3763, -1048576
  %3765 = or disjoint i32 %3764, %3758
  store i32 %3765, ptr %3759, align 4
  %3766 = add nsw i32 %3734, 1
  store i32 %3766, ptr @ttop, align 4, !tbaa !10
  %3767 = icmp slt i32 %3734, 99
  br i1 %3767, label %3768, label %3771

3768:                                             ; preds = %3733
  %3769 = sext i32 %3766 to i64
  %3770 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3769
  store ptr %3735, ptr %3770, align 8, !tbaa !8
  br label %3777

3771:                                             ; preds = %3733
  %3772 = zext nneg i32 %3734 to i64
  %3773 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3772
  %3774 = load ptr, ptr %3773, align 8, !tbaa !8
  %3775 = getelementptr inbounds %struct.word_type, ptr %3774, i64 0, i32 1
  %3776 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3775) #6
  br label %3777

3777:                                             ; preds = %3715, %3771, %3768, %3682
  %3778 = phi ptr [ %3685, %3682 ], [ %3735, %3768 ], [ %3735, %3771 ], [ %3685, %3715 ]
  %3779 = load i32, ptr @ttop, align 4, !tbaa !10
  %3780 = add nsw i32 %3779, 1
  store i32 %3780, ptr @ttop, align 4, !tbaa !10
  %3781 = icmp slt i32 %3779, 99
  br i1 %3781, label %3782, label %3786

3782:                                             ; preds = %3777
  %3783 = load ptr, ptr %5, align 8, !tbaa !8
  %3784 = sext i32 %3780 to i64
  %3785 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3784
  store ptr %3783, ptr %3785, align 8, !tbaa !8
  br label %3792

3786:                                             ; preds = %3777
  %3787 = zext nneg i32 %3779 to i64
  %3788 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3787
  %3789 = load ptr, ptr %3788, align 8, !tbaa !8
  %3790 = getelementptr inbounds %struct.word_type, ptr %3789, i64 0, i32 1
  %3791 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3790) #6
  br label %3792

3792:                                             ; preds = %3782, %3786
  store ptr %3778, ptr @zz_hold, align 8, !tbaa !8
  %3793 = load i32, ptr @otop, align 4, !tbaa !10
  %3794 = add nsw i32 %3793, 1
  store i32 %3794, ptr @otop, align 4, !tbaa !10
  %3795 = icmp slt i32 %3793, 99
  br i1 %3795, label %3796, label %3799

3796:                                             ; preds = %3792
  %3797 = sext i32 %3794 to i64
  %3798 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3797
  store ptr %3778, ptr %3798, align 8, !tbaa !8
  br label %3805

3799:                                             ; preds = %3792
  %3800 = zext nneg i32 %3793 to i64
  %3801 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3800
  %3802 = load ptr, ptr %3801, align 8, !tbaa !8
  %3803 = getelementptr inbounds %struct.word_type, ptr %3802, i64 0, i32 1
  %3804 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3803) #6
  br label %3805

3805:                                             ; preds = %3799, %3796
  %3806 = call ptr @LexGetToken() #6
  store ptr %3806, ptr %5, align 8, !tbaa !8
  br label %2772

3807:                                             ; preds = %3678
  %3808 = getelementptr inbounds %struct.word_type, ptr %3673, i64 0, i32 1
  %3809 = call ptr @SymName(ptr noundef nonnull %2655) #6
  %3810 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 33, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %3808, ptr noundef %3809) #6
  br label %2772

3811:                                             ; preds = %3672
  %3812 = load i24, ptr %2781, align 1
  %3813 = and i24 %3812, 256
  %3814 = icmp eq i24 %3813, 0
  br i1 %3814, label %2772, label %3815

3815:                                             ; preds = %3811
  %3816 = load ptr, ptr %5, align 8, !tbaa !8
  %3817 = getelementptr inbounds %struct.word_type, ptr %3816, i64 0, i32 1
  %3818 = load i8, ptr %3817, align 8, !tbaa !5
  switch i8 %3818, label %3840 [
    i8 104, label %3819
    i8 102, label %3819
  ]

3819:                                             ; preds = %3815, %3815
  call void @PushScope(ptr noundef nonnull %2655, i32 noundef 0, i32 noundef 1) #6
  %3820 = call ptr @ChildSym(ptr noundef nonnull %2655, i32 noundef 146) #6
  call void @PushScope(ptr noundef %3820, i32 noundef 0, i32 noundef 0) #6
  %3821 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  store ptr %3821, ptr @zz_hold, align 8, !tbaa !8
  %3822 = load i32, ptr @otop, align 4, !tbaa !10
  %3823 = add nsw i32 %3822, 1
  store i32 %3823, ptr @otop, align 4, !tbaa !10
  %3824 = icmp slt i32 %3822, 99
  br i1 %3824, label %3825, label %3828

3825:                                             ; preds = %3819
  %3826 = sext i32 %3823 to i64
  %3827 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3826
  store ptr %3821, ptr %3827, align 8, !tbaa !8
  br label %3834

3828:                                             ; preds = %3819
  %3829 = zext nneg i32 %3822 to i64
  %3830 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3829
  %3831 = load ptr, ptr %3830, align 8, !tbaa !8
  %3832 = getelementptr inbounds %struct.word_type, ptr %3831, i64 0, i32 1
  %3833 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3832) #6
  br label %3834

3834:                                             ; preds = %3828, %3825
  %3835 = call fastcc i32 @Reduce(), !range !14
  call void @PopScope() #6
  call void @PopScope() #6
  %3836 = load ptr, ptr %5, align 8, !tbaa !8
  %3837 = icmp eq ptr %3836, null
  br i1 %3837, label %3838, label %2772

3838:                                             ; preds = %3834
  %3839 = call ptr @LexGetToken() #6
  store ptr %3839, ptr %5, align 8, !tbaa !8
  br label %2772

3840:                                             ; preds = %3815
  %3841 = call ptr @SymName(ptr noundef nonnull %2655) #6
  %3842 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 34, ptr noundef nonnull @.str.52, i32 noundef 2, ptr noundef nonnull %3817, ptr noundef %3841) #6
  br label %2772

3843:                                             ; preds = %226, %3856
  %3844 = phi i32 [ %3857, %3856 ], [ %227, %226 ]
  %3845 = icmp eq i32 %3844, 0
  br i1 %3845, label %3846, label %3864

3846:                                             ; preds = %3843
  %3847 = load ptr, ptr %5, align 8, !tbaa !8
  %3848 = getelementptr inbounds %struct.word_type, ptr %3847, i64 0, i32 1
  %3849 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %3848) #6
  store ptr %3849, ptr @zz_hold, align 8, !tbaa !8
  %3850 = load i32, ptr @otop, align 4, !tbaa !10
  %3851 = add nsw i32 %3850, 1
  store i32 %3851, ptr @otop, align 4, !tbaa !10
  %3852 = icmp slt i32 %3850, 99
  br i1 %3852, label %3853, label %3858

3853:                                             ; preds = %3846
  %3854 = sext i32 %3851 to i64
  %3855 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3854
  store ptr %3849, ptr %3855, align 8, !tbaa !8
  br label %3856

3856:                                             ; preds = %3853, %3858, %3875
  %3857 = phi i32 [ %3876, %3875 ], [ 1, %3858 ], [ 1, %3853 ]
  br label %3843

3858:                                             ; preds = %3846
  %3859 = zext nneg i32 %3850 to i64
  %3860 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3859
  %3861 = load ptr, ptr %3860, align 8, !tbaa !8
  %3862 = getelementptr inbounds %struct.word_type, ptr %3861, i64 0, i32 1
  %3863 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3862) #6
  br label %3856

3864:                                             ; preds = %3843
  %3865 = load i32, ptr @ttop, align 4, !tbaa !10
  %3866 = sext i32 %3865 to i64
  %3867 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3866
  %3868 = load ptr, ptr %3867, align 8, !tbaa !8
  %3869 = getelementptr inbounds %struct.word_type, ptr %3868, i64 0, i32 2
  %3870 = load i8, ptr %3869, align 8, !tbaa !5
  %3871 = load ptr, ptr %5, align 8, !tbaa !8
  %3872 = getelementptr inbounds %struct.word_type, ptr %3871, i64 0, i32 2
  %3873 = load i8, ptr %3872, align 8, !tbaa !5
  %3874 = icmp ult i8 %3873, %3870
  br i1 %3874, label %3875, label %3881

3875:                                             ; preds = %3864
  %3876 = call fastcc i32 @Reduce(), !range !14
  %3877 = load i32, ptr @ttop, align 4, !tbaa !10
  %3878 = icmp eq i32 %3877, %13
  br i1 %3878, label %3879, label %3856

3879:                                             ; preds = %3875
  %3880 = load ptr, ptr %5, align 8, !tbaa !8
  br label %3948

3881:                                             ; preds = %3864
  %3882 = add nsw i32 %3865, 1
  store i32 %3882, ptr @ttop, align 4, !tbaa !10
  %3883 = icmp slt i32 %3865, 99
  br i1 %3883, label %3884, label %3887

3884:                                             ; preds = %3881
  %3885 = sext i32 %3882 to i64
  %3886 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3885
  store ptr %3871, ptr %3886, align 8, !tbaa !8
  br label %3890

3887:                                             ; preds = %3881
  %3888 = getelementptr inbounds %struct.word_type, ptr %3868, i64 0, i32 1
  %3889 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3888) #6
  br label %3890

3890:                                             ; preds = %3887, %3884
  %3891 = load i32, ptr @otop, align 4, !tbaa !10
  %3892 = sext i32 %3891 to i64
  %3893 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3892
  %3894 = load ptr, ptr %3893, align 8, !tbaa !8
  %3895 = getelementptr inbounds %struct.word_type, ptr %3894, i64 0, i32 1
  %3896 = load i8, ptr %3895, align 8, !tbaa !5
  switch i8 %3896, label %3907 [
    i8 2, label %3909
    i8 6, label %3897
    i8 7, label %3897
  ]

3897:                                             ; preds = %3890, %3890
  %3898 = getelementptr inbounds %struct.LIST, ptr %3894, i64 0, i32 1
  %3899 = load ptr, ptr %3898, align 8, !tbaa !5
  %3900 = icmp eq ptr %3899, %3894
  br i1 %3900, label %3907, label %3901

3901:                                             ; preds = %3897, %3901
  %3902 = phi ptr [ %3904, %3901 ], [ %3899, %3897 ]
  %3903 = getelementptr inbounds [2 x %struct.LIST], ptr %3902, i64 0, i64 1
  %3904 = load ptr, ptr %3903, align 8, !tbaa !5
  %3905 = getelementptr inbounds %struct.word_type, ptr %3904, i64 0, i32 1
  %3906 = load i8, ptr %3905, align 8, !tbaa !5
  switch i8 %3906, label %3907 [
    i8 0, label %3901
    i8 2, label %3909
  ]

3907:                                             ; preds = %3901, %3897, %3890
  %3908 = call ptr @LexGetToken() #6
  store ptr %3908, ptr %5, align 8, !tbaa !8
  br label %3915

3909:                                             ; preds = %3901, %3890
  %3910 = phi ptr [ %3894, %3890 ], [ %3904, %3901 ]
  %3911 = getelementptr inbounds %struct.closure_type, ptr %3910, i64 0, i32 5
  %3912 = load ptr, ptr %3911, align 8, !tbaa !5
  %3913 = call ptr @LexGetToken() #6
  store ptr %3913, ptr %5, align 8, !tbaa !8
  %3914 = icmp eq ptr %3912, null
  br i1 %3914, label %3915, label %3917

3915:                                             ; preds = %3907, %3909
  %3916 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 35, ptr noundef nonnull @.str.53, i32 noundef 2, ptr noundef nonnull %229, ptr noundef nonnull @.str.54) #6
  br label %2772

3917:                                             ; preds = %3909
  %3918 = getelementptr inbounds %struct.word_type, ptr %3913, i64 0, i32 1
  %3919 = load i8, ptr %3918, align 8, !tbaa !5
  switch i8 %3919, label %3920 [
    i8 104, label %3922
    i8 102, label %3922
  ]

3920:                                             ; preds = %3917
  %3921 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 36, ptr noundef nonnull @.str.51, i32 noundef 2, ptr noundef nonnull %3918, ptr noundef nonnull @.str.54) #6
  br label %2772

3922:                                             ; preds = %3917, %3917
  call void @PushScope(ptr noundef nonnull %3912, i32 noundef 0, i32 noundef 1) #6
  %3923 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  store ptr %3923, ptr @zz_hold, align 8, !tbaa !8
  %3924 = load i32, ptr @otop, align 4, !tbaa !10
  %3925 = add nsw i32 %3924, 1
  store i32 %3925, ptr @otop, align 4, !tbaa !10
  %3926 = icmp slt i32 %3924, 99
  br i1 %3926, label %3927, label %3930

3927:                                             ; preds = %3922
  %3928 = sext i32 %3925 to i64
  %3929 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3928
  store ptr %3923, ptr %3929, align 8, !tbaa !8
  br label %3936

3930:                                             ; preds = %3922
  %3931 = zext nneg i32 %3924 to i64
  %3932 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3931
  %3933 = load ptr, ptr %3932, align 8, !tbaa !8
  %3934 = getelementptr inbounds %struct.word_type, ptr %3933, i64 0, i32 1
  %3935 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3934) #6
  br label %3936

3936:                                             ; preds = %3930, %3927
  call void @PopScope() #6
  %3937 = load ptr, ptr %5, align 8, !tbaa !8
  %3938 = icmp eq ptr %3937, null
  br i1 %3938, label %3939, label %3941

3939:                                             ; preds = %3936
  %3940 = call ptr @LexGetToken() #6
  store ptr %3940, ptr %5, align 8, !tbaa !8
  br label %3941

3941:                                             ; preds = %3939, %3936
  %3942 = call fastcc i32 @Reduce(), !range !14
  br label %2772

3943:                                             ; preds = %226
  %3944 = zext i8 %230 to i32
  %3945 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3946 = call ptr @Image(i32 noundef %3944) #6
  %3947 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %3945, ptr noundef nonnull @.str.56, ptr noundef %3946) #6
  br label %2772

3948:                                             ; preds = %3668, %2932, %1620, %1563, %1296, %994, %834, %2823, %3879, %1609, %1552, %1186, %884, %724, %505
  %3949 = phi ptr [ %3880, %3879 ], [ %1610, %1609 ], [ %1553, %1552 ], [ %1187, %1186 ], [ %885, %884 ], [ %725, %724 ], [ %506, %505 ], [ %2653, %2823 ], [ null, %834 ], [ null, %994 ], [ null, %1296 ], [ null, %1563 ], [ null, %1620 ], [ null, %2932 ], [ null, %3668 ]
  store ptr %3949, ptr %0, align 8, !tbaa !8
  %3950 = load i32, ptr @otop, align 4, !tbaa !10
  %3951 = add nsw i32 %3950, -1
  store i32 %3951, ptr @otop, align 4, !tbaa !10
  %3952 = sext i32 %3950 to i64
  %3953 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %3952
  %3954 = load ptr, ptr %3953, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret ptr %3954
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @Reduce() unnamed_addr #0 {
  %1 = load i32, ptr @ttop, align 4, !tbaa !10
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @ttop, align 4, !tbaa !10
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  switch i8 %7, label %1264 [
    i8 109, label %8
    i8 110, label %8
    i8 108, label %60
    i8 5, label %107
    i8 4, label %107
    i8 20, label %107
    i8 21, label %107
    i8 22, label %107
    i8 23, label %107
    i8 24, label %107
    i8 25, label %107
    i8 26, label %107
    i8 27, label %107
    i8 28, label %107
    i8 29, label %107
    i8 30, label %107
    i8 31, label %107
    i8 32, label %107
    i8 33, label %107
    i8 34, label %107
    i8 35, label %107
    i8 36, label %107
    i8 37, label %107
    i8 38, label %107
    i8 39, label %107
    i8 40, label %107
    i8 41, label %107
    i8 44, label %107
    i8 42, label %107
    i8 43, label %107
    i8 45, label %107
    i8 46, label %107
    i8 47, label %107
    i8 48, label %107
    i8 49, label %107
    i8 50, label %107
    i8 51, label %107
    i8 55, label %107
    i8 56, label %107
    i8 58, label %107
    i8 59, label %107
    i8 60, label %107
    i8 61, label %107
    i8 62, label %107
    i8 63, label %107
    i8 64, label %107
    i8 65, label %107
    i8 66, label %107
    i8 67, label %107
    i8 68, label %107
    i8 69, label %107
    i8 70, label %107
    i8 71, label %107
    i8 72, label %107
    i8 73, label %107
    i8 74, label %107
    i8 75, label %107
    i8 76, label %107
    i8 77, label %107
    i8 78, label %107
    i8 79, label %107
    i8 80, label %107
    i8 93, label %107
    i8 94, label %107
    i8 95, label %107
    i8 96, label %107
    i8 97, label %107
    i8 98, label %107
    i8 99, label %107
    i8 92, label %107
    i8 54, label %107
    i8 53, label %107
    i8 52, label %225
    i8 6, label %350
    i8 7, label %350
    i8 2, label %464
    i8 102, label %718
    i8 104, label %736
    i8 103, label %739
    i8 105, label %785
    i8 1, label %885
    i8 19, label %941
    i8 18, label %941
    i8 17, label %941
    i8 100, label %1096
    i8 101, label %1096
  ]

8:                                                ; preds = %0, %0
  %9 = load i32, ptr @otop, align 4, !tbaa !10
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr @otop, align 4, !tbaa !10
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  tail call void @TransferEnd(ptr noundef %13) #6
  %14 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 5), align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  store i32 %15, ptr @zz_size, align 4, !tbaa !10
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %22 = tail call ptr @GetMemory(i32 noundef %15, ptr noundef %21) #6
  br label %25

23:                                               ; preds = %8
  store ptr %18, ptr @zz_hold, align 8, !tbaa !8
  %24 = load ptr, ptr %18, align 8, !tbaa !5
  store ptr %24, ptr %17, align 8, !tbaa !8
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %22, %20 ], [ %18, %23 ]
  %27 = getelementptr inbounds %struct.word_type, ptr %26, i64 0, i32 1
  store i8 5, ptr %27, align 8, !tbaa !5
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !5
  %29 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1
  store ptr %26, ptr %29, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.LIST, ptr %26, i64 0, i32 1
  store ptr %26, ptr %30, align 8, !tbaa !5
  store ptr %26, ptr %26, align 8, !tbaa !5
  store ptr %26, ptr @zz_hold, align 8, !tbaa !8
  %31 = load i32, ptr @otop, align 4, !tbaa !10
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @otop, align 4, !tbaa !10
  %33 = icmp slt i32 %31, 99
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %35
  store ptr %26, ptr %36, align 8, !tbaa !8
  br label %43

37:                                               ; preds = %25
  %38 = zext nneg i32 %31 to i64
  %39 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !8
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %41) #6
  br label %43

43:                                               ; preds = %37, %34
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %44 = load i8, ptr %6, align 8, !tbaa !5
  %45 = add i8 %44, -11
  %46 = icmp ult i8 %45, 2
  %47 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1, i32 0, i32 1
  %48 = zext i8 %44 to i64
  %49 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %48
  %50 = select i1 %46, ptr %47, ptr %49
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = zext i8 %51 to i32
  store i32 %52, ptr @zz_size, align 4, !tbaa !10
  %53 = zext i8 %51 to i64
  %54 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !8
  store ptr %55, ptr %5, align 8, !tbaa !5
  %56 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %57 = load i32, ptr @zz_size, align 4, !tbaa !10
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %58
  store ptr %56, ptr %59, align 8, !tbaa !8
  br label %1269

60:                                               ; preds = %0
  %61 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 5), align 1, !tbaa !5
  %62 = zext i8 %61 to i32
  store i32 %62, ptr @zz_size, align 4, !tbaa !10
  %63 = zext i8 %61 to i64
  %64 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %69 = tail call ptr @GetMemory(i32 noundef %62, ptr noundef %68) #6
  br label %72

70:                                               ; preds = %60
  store ptr %65, ptr @zz_hold, align 8, !tbaa !8
  %71 = load ptr, ptr %65, align 8, !tbaa !5
  store ptr %71, ptr %64, align 8, !tbaa !8
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi ptr [ %69, %67 ], [ %65, %70 ]
  %74 = getelementptr inbounds %struct.word_type, ptr %73, i64 0, i32 1
  store i8 5, ptr %74, align 8, !tbaa !5
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1, i32 1
  store ptr %73, ptr %75, align 8, !tbaa !5
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1
  store ptr %73, ptr %76, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.LIST, ptr %73, i64 0, i32 1
  store ptr %73, ptr %77, align 8, !tbaa !5
  store ptr %73, ptr %73, align 8, !tbaa !5
  store ptr %73, ptr @zz_hold, align 8, !tbaa !8
  %78 = load i32, ptr @otop, align 4, !tbaa !10
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr @otop, align 4, !tbaa !10
  %80 = icmp slt i32 %78, 99
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %82
  store ptr %73, ptr %83, align 8, !tbaa !8
  br label %90

84:                                               ; preds = %72
  %85 = zext nneg i32 %78 to i64
  %86 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !8
  %88 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 1
  %89 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %88) #6
  br label %90

90:                                               ; preds = %84, %81
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %91 = load i8, ptr %6, align 8, !tbaa !5
  %92 = add i8 %91, -11
  %93 = icmp ult i8 %92, 2
  %94 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1, i32 0, i32 1
  %95 = zext i8 %91 to i64
  %96 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %95
  %97 = select i1 %93, ptr %94, ptr %96
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = zext i8 %98 to i32
  store i32 %99, ptr @zz_size, align 4, !tbaa !10
  %100 = zext i8 %98 to i64
  %101 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !8
  store ptr %102, ptr %5, align 8, !tbaa !5
  %103 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %104 = load i32, ptr @zz_size, align 4, !tbaa !10
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %105
  store ptr %103, ptr %106, align 8, !tbaa !8
  br label %1269

107:                                              ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %108 = getelementptr inbounds %struct.closure_type, ptr %5, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds i8, ptr %109, i64 41
  %111 = load i24, ptr %110, align 1
  %112 = and i24 %111, 8
  %113 = icmp eq i24 %112, 0
  br i1 %113, label %157, label %114

114:                                              ; preds = %107
  %115 = load i32, ptr @otop, align 4, !tbaa !10
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr @otop, align 4, !tbaa !10
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !8
  %120 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %121 = zext i8 %120 to i32
  store i32 %121, ptr @zz_size, align 4, !tbaa !10
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %114
  %127 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %128 = tail call ptr @GetMemory(i32 noundef %121, ptr noundef %127) #6
  br label %131

129:                                              ; preds = %114
  store ptr %124, ptr @zz_hold, align 8, !tbaa !8
  %130 = load ptr, ptr %124, align 8, !tbaa !5
  store ptr %130, ptr %123, align 8, !tbaa !8
  br label %131

131:                                              ; preds = %126, %129
  %132 = phi ptr [ %128, %126 ], [ %124, %129 ]
  %133 = getelementptr inbounds %struct.word_type, ptr %132, i64 0, i32 1
  store i8 0, ptr %133, align 8, !tbaa !5
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1, i32 1
  store ptr %132, ptr %134, align 8, !tbaa !5
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  store ptr %132, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  store ptr %132, ptr %136, align 8, !tbaa !5
  store ptr %132, ptr %132, align 8, !tbaa !5
  store ptr %132, ptr @xx_link, align 8, !tbaa !8
  store ptr %132, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %137 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %137, ptr @zz_tmp, align 8, !tbaa !8
  %138 = load ptr, ptr %132, align 8, !tbaa !5
  store ptr %138, ptr %5, align 8, !tbaa !5
  %139 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %140 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.LIST, ptr %141, i64 0, i32 1
  store ptr %139, ptr %142, align 8, !tbaa !5
  %143 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %143, ptr %140, align 8, !tbaa !5
  %144 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %145 = getelementptr inbounds %struct.LIST, ptr %143, i64 0, i32 1
  store ptr %144, ptr %145, align 8, !tbaa !5
  %146 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %146, ptr @zz_res, align 8, !tbaa !8
  store ptr %119, ptr @zz_hold, align 8, !tbaa !8
  %147 = icmp eq ptr %119, null
  %148 = icmp eq ptr %146, null
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %131
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  store ptr %152, ptr @zz_tmp, align 8, !tbaa !8
  %153 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !5
  store ptr %154, ptr %151, align 8, !tbaa !5
  %155 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1, i32 1
  store ptr %119, ptr %155, align 8, !tbaa !5
  store ptr %152, ptr %153, align 8, !tbaa !5
  %156 = getelementptr inbounds [2 x %struct.LIST], ptr %152, i64 0, i64 1, i32 1
  store ptr %146, ptr %156, align 8, !tbaa !5
  br label %157

157:                                              ; preds = %131, %150, %107
  %158 = load ptr, ptr %108, align 8, !tbaa !5
  %159 = getelementptr inbounds i8, ptr %158, i64 41
  %160 = load i24, ptr %159, align 1
  %161 = and i24 %160, 4
  %162 = icmp eq i24 %161, 0
  br i1 %162, label %212, label %163

163:                                              ; preds = %157
  %164 = load i32, ptr @otop, align 4, !tbaa !10
  %165 = add nsw i32 %164, -1
  store i32 %165, ptr @otop, align 4, !tbaa !10
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !8
  %169 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %170 = zext i8 %169 to i32
  store i32 %170, ptr @zz_size, align 4, !tbaa !10
  %171 = zext i8 %169 to i64
  %172 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !8
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %177 = tail call ptr @GetMemory(i32 noundef %170, ptr noundef %176) #6
  br label %180

178:                                              ; preds = %163
  store ptr %173, ptr @zz_hold, align 8, !tbaa !8
  %179 = load ptr, ptr %173, align 8, !tbaa !5
  store ptr %179, ptr %172, align 8, !tbaa !8
  br label %180

180:                                              ; preds = %175, %178
  %181 = phi ptr [ %177, %175 ], [ %173, %178 ]
  %182 = getelementptr inbounds %struct.word_type, ptr %181, i64 0, i32 1
  store i8 0, ptr %182, align 8, !tbaa !5
  %183 = getelementptr inbounds [2 x %struct.LIST], ptr %181, i64 0, i64 1, i32 1
  store ptr %181, ptr %183, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %181, i64 0, i64 1
  store ptr %181, ptr %184, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.LIST, ptr %181, i64 0, i32 1
  store ptr %181, ptr %185, align 8, !tbaa !5
  store ptr %181, ptr %181, align 8, !tbaa !5
  store ptr %181, ptr @xx_link, align 8, !tbaa !8
  store ptr %181, ptr @zz_res, align 8, !tbaa !8
  %186 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  store ptr %187, ptr @zz_hold, align 8, !tbaa !8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %200, label %189

189:                                              ; preds = %180
  %190 = load ptr, ptr %187, align 8, !tbaa !5
  store ptr %190, ptr @zz_tmp, align 8, !tbaa !8
  %191 = load ptr, ptr %181, align 8, !tbaa !5
  store ptr %191, ptr %187, align 8, !tbaa !5
  %192 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %193 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %194 = load ptr, ptr %193, align 8, !tbaa !5
  %195 = getelementptr inbounds %struct.LIST, ptr %194, i64 0, i32 1
  store ptr %192, ptr %195, align 8, !tbaa !5
  %196 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %196, ptr %193, align 8, !tbaa !5
  %197 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %198 = getelementptr inbounds %struct.LIST, ptr %196, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !5
  %199 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %200

200:                                              ; preds = %180, %189
  %201 = phi ptr [ %181, %180 ], [ %199, %189 ]
  store ptr %201, ptr @zz_res, align 8, !tbaa !8
  %202 = icmp eq ptr %168, null
  %203 = icmp eq ptr %201, null
  %204 = select i1 %202, i1 true, i1 %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  store ptr %207, ptr @zz_tmp, align 8, !tbaa !8
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !5
  store ptr %209, ptr %206, align 8, !tbaa !5
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1, i32 1
  store ptr %168, ptr %210, align 8, !tbaa !5
  store ptr %207, ptr %208, align 8, !tbaa !5
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %201, ptr %211, align 8, !tbaa !5
  br label %212

212:                                              ; preds = %200, %205, %157
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %213 = load i32, ptr @otop, align 4, !tbaa !10
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr @otop, align 4, !tbaa !10
  %215 = icmp slt i32 %213, 99
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = sext i32 %214 to i64
  %218 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %217
  store ptr %5, ptr %218, align 8, !tbaa !8
  br label %1269

219:                                              ; preds = %212
  %220 = zext nneg i32 %213 to i64
  %221 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !8
  %223 = getelementptr inbounds %struct.word_type, ptr %222, i64 0, i32 1
  %224 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %223) #6
  br label %1269

225:                                              ; preds = %0
  %226 = getelementptr inbounds %struct.closure_type, ptr %5, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds i8, ptr %227, i64 41
  %229 = load i24, ptr %228, align 1
  %230 = and i24 %229, 8
  %231 = icmp eq i24 %230, 0
  br i1 %231, label %275, label %232

232:                                              ; preds = %225
  %233 = load i32, ptr @otop, align 4, !tbaa !10
  %234 = add nsw i32 %233, -1
  store i32 %234, ptr @otop, align 4, !tbaa !10
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !8
  %238 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %239 = zext i8 %238 to i32
  store i32 %239, ptr @zz_size, align 4, !tbaa !10
  %240 = zext i8 %238 to i64
  %241 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !8
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %232
  %245 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %246 = tail call ptr @GetMemory(i32 noundef %239, ptr noundef %245) #6
  br label %249

247:                                              ; preds = %232
  store ptr %242, ptr @zz_hold, align 8, !tbaa !8
  %248 = load ptr, ptr %242, align 8, !tbaa !5
  store ptr %248, ptr %241, align 8, !tbaa !8
  br label %249

249:                                              ; preds = %244, %247
  %250 = phi ptr [ %246, %244 ], [ %242, %247 ]
  %251 = getelementptr inbounds %struct.word_type, ptr %250, i64 0, i32 1
  store i8 0, ptr %251, align 8, !tbaa !5
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1, i32 1
  store ptr %250, ptr %252, align 8, !tbaa !5
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1
  store ptr %250, ptr %253, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.LIST, ptr %250, i64 0, i32 1
  store ptr %250, ptr %254, align 8, !tbaa !5
  store ptr %250, ptr %250, align 8, !tbaa !5
  store ptr %250, ptr @xx_link, align 8, !tbaa !8
  store ptr %250, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %255 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %255, ptr @zz_tmp, align 8, !tbaa !8
  %256 = load ptr, ptr %250, align 8, !tbaa !5
  store ptr %256, ptr %5, align 8, !tbaa !5
  %257 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %258 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %257, ptr %260, align 8, !tbaa !5
  %261 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %261, ptr %258, align 8, !tbaa !5
  %262 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %263 = getelementptr inbounds %struct.LIST, ptr %261, i64 0, i32 1
  store ptr %262, ptr %263, align 8, !tbaa !5
  %264 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %264, ptr @zz_res, align 8, !tbaa !8
  store ptr %237, ptr @zz_hold, align 8, !tbaa !8
  %265 = icmp eq ptr %237, null
  %266 = icmp eq ptr %264, null
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %275, label %268

268:                                              ; preds = %249
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !5
  store ptr %270, ptr @zz_tmp, align 8, !tbaa !8
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !5
  store ptr %272, ptr %269, align 8, !tbaa !5
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %272, i64 0, i64 1, i32 1
  store ptr %237, ptr %273, align 8, !tbaa !5
  store ptr %270, ptr %271, align 8, !tbaa !5
  %274 = getelementptr inbounds [2 x %struct.LIST], ptr %270, i64 0, i64 1, i32 1
  store ptr %264, ptr %274, align 8, !tbaa !5
  br label %275

275:                                              ; preds = %249, %268, %225
  %276 = load ptr, ptr %226, align 8, !tbaa !5
  %277 = getelementptr inbounds i8, ptr %276, i64 41
  %278 = load i24, ptr %277, align 1
  %279 = and i24 %278, 4
  %280 = icmp eq i24 %279, 0
  br i1 %280, label %336, label %281

281:                                              ; preds = %275
  %282 = load i32, ptr @otop, align 4, !tbaa !10
  %283 = add nsw i32 %282, -1
  store i32 %283, ptr @otop, align 4, !tbaa !10
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !8
  %287 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %288 = zext i8 %287 to i32
  store i32 %288, ptr @zz_size, align 4, !tbaa !10
  %289 = zext i8 %287 to i64
  %290 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %281
  %294 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %295 = tail call ptr @GetMemory(i32 noundef %288, ptr noundef %294) #6
  br label %298

296:                                              ; preds = %281
  store ptr %291, ptr @zz_hold, align 8, !tbaa !8
  %297 = load ptr, ptr %291, align 8, !tbaa !5
  store ptr %297, ptr %290, align 8, !tbaa !8
  br label %298

298:                                              ; preds = %293, %296
  %299 = phi ptr [ %295, %293 ], [ %291, %296 ]
  %300 = getelementptr inbounds %struct.word_type, ptr %299, i64 0, i32 1
  store i8 0, ptr %300, align 8, !tbaa !5
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1, i32 1
  store ptr %299, ptr %301, align 8, !tbaa !5
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1
  store ptr %299, ptr %302, align 8, !tbaa !5
  %303 = getelementptr inbounds %struct.LIST, ptr %299, i64 0, i32 1
  store ptr %299, ptr %303, align 8, !tbaa !5
  store ptr %299, ptr %299, align 8, !tbaa !5
  store ptr %299, ptr @xx_link, align 8, !tbaa !8
  store ptr %299, ptr @zz_res, align 8, !tbaa !8
  %304 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  store ptr %305, ptr @zz_hold, align 8, !tbaa !8
  %306 = icmp eq ptr %305, null
  br i1 %306, label %318, label %307

307:                                              ; preds = %298
  %308 = load ptr, ptr %305, align 8, !tbaa !5
  store ptr %308, ptr @zz_tmp, align 8, !tbaa !8
  %309 = load ptr, ptr %299, align 8, !tbaa !5
  store ptr %309, ptr %305, align 8, !tbaa !5
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
  br label %318

318:                                              ; preds = %298, %307
  %319 = phi ptr [ %299, %298 ], [ %317, %307 ]
  store ptr %319, ptr @zz_res, align 8, !tbaa !8
  store ptr %286, ptr @zz_hold, align 8, !tbaa !8
  %320 = icmp eq ptr %286, null
  %321 = icmp eq ptr %319, null
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %330, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %286, i64 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  store ptr %325, ptr @zz_tmp, align 8, !tbaa !8
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %319, i64 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  store ptr %327, ptr %324, align 8, !tbaa !5
  %328 = getelementptr inbounds [2 x %struct.LIST], ptr %327, i64 0, i64 1, i32 1
  store ptr %286, ptr %328, align 8, !tbaa !5
  store ptr %325, ptr %326, align 8, !tbaa !5
  %329 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  store ptr %319, ptr %329, align 8, !tbaa !5
  br label %330

330:                                              ; preds = %318, %323
  %331 = getelementptr inbounds %struct.word_type, ptr %286, i64 0, i32 1
  %332 = load i8, ptr %331, align 8, !tbaa !5
  %333 = icmp eq i8 %332, 56
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = tail call ptr @OptimizeCase(ptr noundef nonnull %5)
  br label %336

336:                                              ; preds = %330, %334, %275
  %337 = phi ptr [ %335, %334 ], [ %5, %330 ], [ %5, %275 ]
  store ptr %337, ptr @zz_hold, align 8, !tbaa !8
  %338 = load i32, ptr @otop, align 4, !tbaa !10
  %339 = add nsw i32 %338, 1
  store i32 %339, ptr @otop, align 4, !tbaa !10
  %340 = icmp slt i32 %338, 99
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = sext i32 %339 to i64
  %343 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %342
  store ptr %337, ptr %343, align 8, !tbaa !8
  br label %1269

344:                                              ; preds = %336
  %345 = zext nneg i32 %338 to i64
  %346 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !8
  %348 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1
  %349 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %348) #6
  br label %1269

350:                                              ; preds = %0, %0
  %351 = load i32, ptr @otop, align 4, !tbaa !10
  %352 = add nsw i32 %351, -1
  store i32 %352, ptr @otop, align 4, !tbaa !10
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !8
  %356 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %357 = zext i8 %356 to i32
  store i32 %357, ptr @zz_size, align 4, !tbaa !10
  %358 = zext i8 %356 to i64
  %359 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %350
  %363 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %364 = tail call ptr @GetMemory(i32 noundef %357, ptr noundef %363) #6
  br label %367

365:                                              ; preds = %350
  store ptr %360, ptr @zz_hold, align 8, !tbaa !8
  %366 = load ptr, ptr %360, align 8, !tbaa !5
  store ptr %366, ptr %359, align 8, !tbaa !8
  br label %367

367:                                              ; preds = %362, %365
  %368 = phi ptr [ %364, %362 ], [ %360, %365 ]
  %369 = getelementptr inbounds %struct.word_type, ptr %368, i64 0, i32 1
  store i8 0, ptr %369, align 8, !tbaa !5
  %370 = getelementptr inbounds [2 x %struct.LIST], ptr %368, i64 0, i64 1, i32 1
  store ptr %368, ptr %370, align 8, !tbaa !5
  %371 = getelementptr inbounds [2 x %struct.LIST], ptr %368, i64 0, i64 1
  store ptr %368, ptr %371, align 8, !tbaa !5
  %372 = getelementptr inbounds %struct.LIST, ptr %368, i64 0, i32 1
  store ptr %368, ptr %372, align 8, !tbaa !5
  store ptr %368, ptr %368, align 8, !tbaa !5
  store ptr %368, ptr @xx_link, align 8, !tbaa !8
  store ptr %368, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %373 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %373, ptr @zz_tmp, align 8, !tbaa !8
  %374 = load ptr, ptr %368, align 8, !tbaa !5
  store ptr %374, ptr %5, align 8, !tbaa !5
  %375 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %376 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %377 = load ptr, ptr %376, align 8, !tbaa !5
  %378 = getelementptr inbounds %struct.LIST, ptr %377, i64 0, i32 1
  store ptr %375, ptr %378, align 8, !tbaa !5
  %379 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %379, ptr %376, align 8, !tbaa !5
  %380 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %381 = getelementptr inbounds %struct.LIST, ptr %379, i64 0, i32 1
  store ptr %380, ptr %381, align 8, !tbaa !5
  %382 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %382, ptr @zz_res, align 8, !tbaa !8
  store ptr %355, ptr @zz_hold, align 8, !tbaa !8
  %383 = icmp eq ptr %355, null
  %384 = icmp eq ptr %382, null
  %385 = select i1 %383, i1 true, i1 %384
  br i1 %385, label %393, label %386

386:                                              ; preds = %367
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %355, i64 0, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !5
  store ptr %388, ptr @zz_tmp, align 8, !tbaa !8
  %389 = getelementptr inbounds [2 x %struct.LIST], ptr %382, i64 0, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !5
  store ptr %390, ptr %387, align 8, !tbaa !5
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %390, i64 0, i64 1, i32 1
  store ptr %355, ptr %391, align 8, !tbaa !5
  store ptr %388, ptr %389, align 8, !tbaa !5
  %392 = getelementptr inbounds [2 x %struct.LIST], ptr %388, i64 0, i64 1, i32 1
  store ptr %382, ptr %392, align 8, !tbaa !5
  br label %393

393:                                              ; preds = %367, %386
  %394 = load i32, ptr @otop, align 4, !tbaa !10
  %395 = add nsw i32 %394, -1
  store i32 %395, ptr @otop, align 4, !tbaa !10
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !8
  %399 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %400 = zext i8 %399 to i32
  store i32 %400, ptr @zz_size, align 4, !tbaa !10
  %401 = zext i8 %399 to i64
  %402 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !8
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %408

405:                                              ; preds = %393
  %406 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %407 = tail call ptr @GetMemory(i32 noundef %400, ptr noundef %406) #6
  br label %410

408:                                              ; preds = %393
  store ptr %403, ptr @zz_hold, align 8, !tbaa !8
  %409 = load ptr, ptr %403, align 8, !tbaa !5
  store ptr %409, ptr %402, align 8, !tbaa !8
  br label %410

410:                                              ; preds = %405, %408
  %411 = phi ptr [ %407, %405 ], [ %403, %408 ]
  %412 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 1
  store i8 0, ptr %412, align 8, !tbaa !5
  %413 = getelementptr inbounds [2 x %struct.LIST], ptr %411, i64 0, i64 1, i32 1
  store ptr %411, ptr %413, align 8, !tbaa !5
  %414 = getelementptr inbounds [2 x %struct.LIST], ptr %411, i64 0, i64 1
  store ptr %411, ptr %414, align 8, !tbaa !5
  %415 = getelementptr inbounds %struct.LIST, ptr %411, i64 0, i32 1
  store ptr %411, ptr %415, align 8, !tbaa !5
  store ptr %411, ptr %411, align 8, !tbaa !5
  store ptr %411, ptr @xx_link, align 8, !tbaa !8
  store ptr %411, ptr @zz_res, align 8, !tbaa !8
  %416 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !5
  store ptr %417, ptr @zz_hold, align 8, !tbaa !8
  %418 = icmp eq ptr %417, null
  br i1 %418, label %430, label %419

419:                                              ; preds = %410
  %420 = load ptr, ptr %417, align 8, !tbaa !5
  store ptr %420, ptr @zz_tmp, align 8, !tbaa !8
  %421 = load ptr, ptr %411, align 8, !tbaa !5
  store ptr %421, ptr %417, align 8, !tbaa !5
  %422 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %423 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %424 = load ptr, ptr %423, align 8, !tbaa !5
  %425 = getelementptr inbounds %struct.LIST, ptr %424, i64 0, i32 1
  store ptr %422, ptr %425, align 8, !tbaa !5
  %426 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %426, ptr %423, align 8, !tbaa !5
  %427 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %428 = getelementptr inbounds %struct.LIST, ptr %426, i64 0, i32 1
  store ptr %427, ptr %428, align 8, !tbaa !5
  %429 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %430

430:                                              ; preds = %410, %419
  %431 = phi ptr [ %411, %410 ], [ %429, %419 ]
  store ptr %431, ptr @zz_res, align 8, !tbaa !8
  store ptr %398, ptr @zz_hold, align 8, !tbaa !8
  %432 = icmp eq ptr %398, null
  %433 = icmp eq ptr %431, null
  %434 = select i1 %432, i1 true, i1 %433
  br i1 %434, label %442, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds [2 x %struct.LIST], ptr %398, i64 0, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !5
  store ptr %437, ptr @zz_tmp, align 8, !tbaa !8
  %438 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1
  %439 = load ptr, ptr %438, align 8, !tbaa !5
  store ptr %439, ptr %436, align 8, !tbaa !5
  %440 = getelementptr inbounds [2 x %struct.LIST], ptr %439, i64 0, i64 1, i32 1
  store ptr %398, ptr %440, align 8, !tbaa !5
  store ptr %437, ptr %438, align 8, !tbaa !5
  %441 = getelementptr inbounds [2 x %struct.LIST], ptr %437, i64 0, i64 1, i32 1
  store ptr %431, ptr %441, align 8, !tbaa !5
  br label %442

442:                                              ; preds = %430, %435
  %443 = getelementptr inbounds %struct.word_type, ptr %398, i64 0, i32 1
  %444 = load i8, ptr %443, align 8, !tbaa !5
  %445 = icmp eq i8 %444, 2
  br i1 %445, label %451, label %446

446:                                              ; preds = %442
  %447 = load i8, ptr %6, align 8, !tbaa !5
  %448 = zext i8 %447 to i32
  %449 = tail call ptr @Image(i32 noundef %448) #6
  %450 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef nonnull %443, ptr noundef %449) #6
  br label %451

451:                                              ; preds = %446, %442
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %452 = load i32, ptr @otop, align 4, !tbaa !10
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr @otop, align 4, !tbaa !10
  %454 = icmp slt i32 %452, 99
  br i1 %454, label %455, label %458

455:                                              ; preds = %451
  %456 = sext i32 %453 to i64
  %457 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %456
  store ptr %5, ptr %457, align 8, !tbaa !8
  br label %1269

458:                                              ; preds = %451
  %459 = zext nneg i32 %452 to i64
  %460 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !8
  %462 = getelementptr inbounds %struct.word_type, ptr %461, i64 0, i32 1
  %463 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %462) #6
  br label %1269

464:                                              ; preds = %0
  %465 = getelementptr inbounds %struct.closure_type, ptr %5, i64 0, i32 5
  %466 = load ptr, ptr %465, align 8, !tbaa !5
  %467 = getelementptr inbounds i8, ptr %466, i64 41
  %468 = load i24, ptr %467, align 1
  %469 = and i24 %468, 8
  %470 = icmp eq i24 %469, 0
  br i1 %470, label %582, label %471

471:                                              ; preds = %464
  %472 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %473 = zext i8 %472 to i32
  store i32 %473, ptr @zz_size, align 4, !tbaa !10
  %474 = zext i8 %472 to i64
  %475 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !8
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %471
  %479 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %480 = tail call ptr @GetMemory(i32 noundef %473, ptr noundef %479) #6
  store ptr %480, ptr @zz_hold, align 8, !tbaa !8
  br label %483

481:                                              ; preds = %471
  store ptr %476, ptr @zz_hold, align 8, !tbaa !8
  %482 = load ptr, ptr %476, align 8, !tbaa !5
  store ptr %482, ptr %475, align 8, !tbaa !8
  br label %483

483:                                              ; preds = %478, %481
  %484 = phi ptr [ %480, %478 ], [ %476, %481 ]
  %485 = getelementptr inbounds %struct.word_type, ptr %484, i64 0, i32 1
  store i8 10, ptr %485, align 8, !tbaa !5
  %486 = getelementptr inbounds [2 x %struct.LIST], ptr %484, i64 0, i64 1
  %487 = getelementptr inbounds [2 x %struct.LIST], ptr %484, i64 0, i64 1, i32 1
  store ptr %484, ptr %487, align 8, !tbaa !5
  store ptr %484, ptr %486, align 8, !tbaa !5
  %488 = getelementptr inbounds %struct.LIST, ptr %484, i64 0, i32 1
  store ptr %484, ptr %488, align 8, !tbaa !5
  store ptr %484, ptr %484, align 8, !tbaa !5
  %489 = load i32, ptr @otop, align 4, !tbaa !10
  %490 = add nsw i32 %489, -1
  store i32 %490, ptr @otop, align 4, !tbaa !10
  %491 = sext i32 %489 to i64
  %492 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !8
  %494 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %495 = zext i8 %494 to i32
  store i32 %495, ptr @zz_size, align 4, !tbaa !10
  %496 = zext i8 %494 to i64
  %497 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !8
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %483
  %501 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %502 = tail call ptr @GetMemory(i32 noundef %495, ptr noundef %501) #6
  br label %505

503:                                              ; preds = %483
  store ptr %498, ptr @zz_hold, align 8, !tbaa !8
  %504 = load ptr, ptr %498, align 8, !tbaa !5
  store ptr %504, ptr %497, align 8, !tbaa !8
  br label %505

505:                                              ; preds = %500, %503
  %506 = phi ptr [ %502, %500 ], [ %498, %503 ]
  %507 = getelementptr inbounds %struct.word_type, ptr %506, i64 0, i32 1
  store i8 0, ptr %507, align 8, !tbaa !5
  %508 = getelementptr inbounds [2 x %struct.LIST], ptr %506, i64 0, i64 1, i32 1
  store ptr %506, ptr %508, align 8, !tbaa !5
  %509 = getelementptr inbounds [2 x %struct.LIST], ptr %506, i64 0, i64 1
  store ptr %506, ptr %509, align 8, !tbaa !5
  %510 = getelementptr inbounds %struct.LIST, ptr %506, i64 0, i32 1
  store ptr %506, ptr %510, align 8, !tbaa !5
  store ptr %506, ptr %506, align 8, !tbaa !5
  store ptr %506, ptr @xx_link, align 8, !tbaa !8
  store ptr %506, ptr @zz_res, align 8, !tbaa !8
  store ptr %484, ptr @zz_hold, align 8, !tbaa !8
  %511 = load ptr, ptr %484, align 8, !tbaa !5
  store ptr %511, ptr @zz_tmp, align 8, !tbaa !8
  %512 = load ptr, ptr %506, align 8, !tbaa !5
  store ptr %512, ptr %484, align 8, !tbaa !5
  %513 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %514 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %515 = load ptr, ptr %514, align 8, !tbaa !5
  %516 = getelementptr inbounds %struct.LIST, ptr %515, i64 0, i32 1
  store ptr %513, ptr %516, align 8, !tbaa !5
  %517 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %517, ptr %514, align 8, !tbaa !5
  %518 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %519 = getelementptr inbounds %struct.LIST, ptr %517, i64 0, i32 1
  store ptr %518, ptr %519, align 8, !tbaa !5
  %520 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %520, ptr @zz_res, align 8, !tbaa !8
  store ptr %493, ptr @zz_hold, align 8, !tbaa !8
  %521 = icmp eq ptr %493, null
  %522 = icmp eq ptr %520, null
  %523 = select i1 %521, i1 true, i1 %522
  br i1 %523, label %531, label %524

524:                                              ; preds = %505
  %525 = getelementptr inbounds [2 x %struct.LIST], ptr %493, i64 0, i64 1
  %526 = load ptr, ptr %525, align 8, !tbaa !5
  store ptr %526, ptr @zz_tmp, align 8, !tbaa !8
  %527 = getelementptr inbounds [2 x %struct.LIST], ptr %520, i64 0, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !5
  store ptr %528, ptr %525, align 8, !tbaa !5
  %529 = getelementptr inbounds [2 x %struct.LIST], ptr %528, i64 0, i64 1, i32 1
  store ptr %493, ptr %529, align 8, !tbaa !5
  store ptr %526, ptr %527, align 8, !tbaa !5
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %526, i64 0, i64 1, i32 1
  store ptr %520, ptr %530, align 8, !tbaa !5
  br label %531

531:                                              ; preds = %505, %524
  %532 = getelementptr inbounds %struct.word_type, ptr %493, i64 0, i32 1, i32 0, i32 2
  %533 = load i16, ptr %532, align 2, !tbaa !5
  %534 = getelementptr inbounds %struct.word_type, ptr %484, i64 0, i32 1, i32 0, i32 2
  store i16 %533, ptr %534, align 2, !tbaa !5
  %535 = getelementptr inbounds %struct.word_type, ptr %493, i64 0, i32 1, i32 0, i32 3
  %536 = load i32, ptr %535, align 4
  %537 = and i32 %536, 1048575
  %538 = getelementptr inbounds %struct.word_type, ptr %484, i64 0, i32 1, i32 0, i32 3
  %539 = load i32, ptr %538, align 4
  %540 = and i32 %539, -1048576
  %541 = or disjoint i32 %540, %537
  store i32 %541, ptr %538, align 4
  %542 = load i32, ptr %535, align 4
  %543 = and i32 %542, -1048576
  %544 = or disjoint i32 %543, %537
  store i32 %544, ptr %538, align 4
  %545 = load ptr, ptr %465, align 8, !tbaa !5
  %546 = tail call ptr @ChildSym(ptr noundef %545, i32 noundef 146) #6
  %547 = getelementptr inbounds %struct.closure_type, ptr %484, i64 0, i32 5
  store ptr %546, ptr %547, align 8, !tbaa !5
  %548 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %549 = zext i8 %548 to i32
  store i32 %549, ptr @zz_size, align 4, !tbaa !10
  %550 = zext i8 %548 to i64
  %551 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !8
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %557

554:                                              ; preds = %531
  %555 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %556 = tail call ptr @GetMemory(i32 noundef %549, ptr noundef %555) #6
  br label %559

557:                                              ; preds = %531
  store ptr %552, ptr @zz_hold, align 8, !tbaa !8
  %558 = load ptr, ptr %552, align 8, !tbaa !5
  store ptr %558, ptr %551, align 8, !tbaa !8
  br label %559

559:                                              ; preds = %554, %557
  %560 = phi ptr [ %556, %554 ], [ %552, %557 ]
  %561 = getelementptr inbounds %struct.word_type, ptr %560, i64 0, i32 1
  store i8 0, ptr %561, align 8, !tbaa !5
  %562 = getelementptr inbounds [2 x %struct.LIST], ptr %560, i64 0, i64 1, i32 1
  store ptr %560, ptr %562, align 8, !tbaa !5
  %563 = getelementptr inbounds [2 x %struct.LIST], ptr %560, i64 0, i64 1
  store ptr %560, ptr %563, align 8, !tbaa !5
  %564 = getelementptr inbounds %struct.LIST, ptr %560, i64 0, i32 1
  store ptr %560, ptr %564, align 8, !tbaa !5
  store ptr %560, ptr %560, align 8, !tbaa !5
  store ptr %560, ptr @xx_link, align 8, !tbaa !8
  store ptr %560, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %565 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %565, ptr @zz_tmp, align 8, !tbaa !8
  %566 = load ptr, ptr %560, align 8, !tbaa !5
  store ptr %566, ptr %5, align 8, !tbaa !5
  %567 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %568 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %569 = load ptr, ptr %568, align 8, !tbaa !5
  %570 = getelementptr inbounds %struct.LIST, ptr %569, i64 0, i32 1
  store ptr %567, ptr %570, align 8, !tbaa !5
  %571 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %571, ptr %568, align 8, !tbaa !5
  %572 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %573 = getelementptr inbounds %struct.LIST, ptr %571, i64 0, i32 1
  store ptr %572, ptr %573, align 8, !tbaa !5
  %574 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %574, ptr @zz_res, align 8, !tbaa !8
  store ptr %484, ptr @zz_hold, align 8, !tbaa !8
  %575 = icmp eq ptr %574, null
  br i1 %575, label %582, label %576

576:                                              ; preds = %559
  %577 = load ptr, ptr %486, align 8, !tbaa !5
  store ptr %577, ptr @zz_tmp, align 8, !tbaa !8
  %578 = getelementptr inbounds [2 x %struct.LIST], ptr %574, i64 0, i64 1
  %579 = load ptr, ptr %578, align 8, !tbaa !5
  store ptr %579, ptr %486, align 8, !tbaa !5
  %580 = getelementptr inbounds [2 x %struct.LIST], ptr %579, i64 0, i64 1, i32 1
  store ptr %484, ptr %580, align 8, !tbaa !5
  store ptr %577, ptr %578, align 8, !tbaa !5
  %581 = getelementptr inbounds [2 x %struct.LIST], ptr %577, i64 0, i64 1, i32 1
  store ptr %574, ptr %581, align 8, !tbaa !5
  br label %582

582:                                              ; preds = %559, %576, %464
  %583 = load ptr, ptr %465, align 8, !tbaa !5
  %584 = getelementptr inbounds i8, ptr %583, i64 41
  %585 = load i24, ptr %584, align 1
  %586 = and i24 %585, 4
  %587 = icmp eq i24 %586, 0
  br i1 %587, label %705, label %588

588:                                              ; preds = %582
  %589 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %590 = zext i8 %589 to i32
  store i32 %590, ptr @zz_size, align 4, !tbaa !10
  %591 = zext i8 %589 to i64
  %592 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %591
  %593 = load ptr, ptr %592, align 8, !tbaa !8
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %598

595:                                              ; preds = %588
  %596 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %597 = tail call ptr @GetMemory(i32 noundef %590, ptr noundef %596) #6
  store ptr %597, ptr @zz_hold, align 8, !tbaa !8
  br label %600

598:                                              ; preds = %588
  store ptr %593, ptr @zz_hold, align 8, !tbaa !8
  %599 = load ptr, ptr %593, align 8, !tbaa !5
  store ptr %599, ptr %592, align 8, !tbaa !8
  br label %600

600:                                              ; preds = %595, %598
  %601 = phi ptr [ %597, %595 ], [ %593, %598 ]
  %602 = getelementptr inbounds %struct.word_type, ptr %601, i64 0, i32 1
  store i8 10, ptr %602, align 8, !tbaa !5
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %601, i64 0, i64 1
  %604 = getelementptr inbounds [2 x %struct.LIST], ptr %601, i64 0, i64 1, i32 1
  store ptr %601, ptr %604, align 8, !tbaa !5
  store ptr %601, ptr %603, align 8, !tbaa !5
  %605 = getelementptr inbounds %struct.LIST, ptr %601, i64 0, i32 1
  store ptr %601, ptr %605, align 8, !tbaa !5
  store ptr %601, ptr %601, align 8, !tbaa !5
  %606 = load i32, ptr @otop, align 4, !tbaa !10
  %607 = add nsw i32 %606, -1
  store i32 %607, ptr @otop, align 4, !tbaa !10
  %608 = sext i32 %606 to i64
  %609 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !8
  %611 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %612 = zext i8 %611 to i32
  store i32 %612, ptr @zz_size, align 4, !tbaa !10
  %613 = zext i8 %611 to i64
  %614 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %613
  %615 = load ptr, ptr %614, align 8, !tbaa !8
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %620

617:                                              ; preds = %600
  %618 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %619 = tail call ptr @GetMemory(i32 noundef %612, ptr noundef %618) #6
  br label %622

620:                                              ; preds = %600
  store ptr %615, ptr @zz_hold, align 8, !tbaa !8
  %621 = load ptr, ptr %615, align 8, !tbaa !5
  store ptr %621, ptr %614, align 8, !tbaa !8
  br label %622

622:                                              ; preds = %617, %620
  %623 = phi ptr [ %619, %617 ], [ %615, %620 ]
  %624 = getelementptr inbounds %struct.word_type, ptr %623, i64 0, i32 1
  store i8 0, ptr %624, align 8, !tbaa !5
  %625 = getelementptr inbounds [2 x %struct.LIST], ptr %623, i64 0, i64 1, i32 1
  store ptr %623, ptr %625, align 8, !tbaa !5
  %626 = getelementptr inbounds [2 x %struct.LIST], ptr %623, i64 0, i64 1
  store ptr %623, ptr %626, align 8, !tbaa !5
  %627 = getelementptr inbounds %struct.LIST, ptr %623, i64 0, i32 1
  store ptr %623, ptr %627, align 8, !tbaa !5
  store ptr %623, ptr %623, align 8, !tbaa !5
  store ptr %623, ptr @xx_link, align 8, !tbaa !8
  store ptr %623, ptr @zz_res, align 8, !tbaa !8
  store ptr %601, ptr @zz_hold, align 8, !tbaa !8
  %628 = load ptr, ptr %601, align 8, !tbaa !5
  store ptr %628, ptr @zz_tmp, align 8, !tbaa !8
  %629 = load ptr, ptr %623, align 8, !tbaa !5
  store ptr %629, ptr %601, align 8, !tbaa !5
  %630 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %631 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %632 = load ptr, ptr %631, align 8, !tbaa !5
  %633 = getelementptr inbounds %struct.LIST, ptr %632, i64 0, i32 1
  store ptr %630, ptr %633, align 8, !tbaa !5
  %634 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %634, ptr %631, align 8, !tbaa !5
  %635 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %636 = getelementptr inbounds %struct.LIST, ptr %634, i64 0, i32 1
  store ptr %635, ptr %636, align 8, !tbaa !5
  %637 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %637, ptr @zz_res, align 8, !tbaa !8
  store ptr %610, ptr @zz_hold, align 8, !tbaa !8
  %638 = icmp eq ptr %610, null
  %639 = icmp eq ptr %637, null
  %640 = select i1 %638, i1 true, i1 %639
  br i1 %640, label %648, label %641

641:                                              ; preds = %622
  %642 = getelementptr inbounds [2 x %struct.LIST], ptr %610, i64 0, i64 1
  %643 = load ptr, ptr %642, align 8, !tbaa !5
  store ptr %643, ptr @zz_tmp, align 8, !tbaa !8
  %644 = getelementptr inbounds [2 x %struct.LIST], ptr %637, i64 0, i64 1
  %645 = load ptr, ptr %644, align 8, !tbaa !5
  store ptr %645, ptr %642, align 8, !tbaa !5
  %646 = getelementptr inbounds [2 x %struct.LIST], ptr %645, i64 0, i64 1, i32 1
  store ptr %610, ptr %646, align 8, !tbaa !5
  store ptr %643, ptr %644, align 8, !tbaa !5
  %647 = getelementptr inbounds [2 x %struct.LIST], ptr %643, i64 0, i64 1, i32 1
  store ptr %637, ptr %647, align 8, !tbaa !5
  br label %648

648:                                              ; preds = %622, %641
  %649 = getelementptr inbounds %struct.word_type, ptr %610, i64 0, i32 1, i32 0, i32 2
  %650 = load i16, ptr %649, align 2, !tbaa !5
  %651 = getelementptr inbounds %struct.word_type, ptr %601, i64 0, i32 1, i32 0, i32 2
  store i16 %650, ptr %651, align 2, !tbaa !5
  %652 = getelementptr inbounds %struct.word_type, ptr %610, i64 0, i32 1, i32 0, i32 3
  %653 = load i32, ptr %652, align 4
  %654 = and i32 %653, 1048575
  %655 = getelementptr inbounds %struct.word_type, ptr %601, i64 0, i32 1, i32 0, i32 3
  %656 = load i32, ptr %655, align 4
  %657 = and i32 %656, -1048576
  %658 = or disjoint i32 %657, %654
  store i32 %658, ptr %655, align 4
  %659 = load i32, ptr %652, align 4
  %660 = and i32 %659, -1048576
  %661 = or disjoint i32 %660, %654
  store i32 %661, ptr %655, align 4
  %662 = load ptr, ptr %465, align 8, !tbaa !5
  %663 = tail call ptr @ChildSym(ptr noundef %662, i32 noundef 144) #6
  %664 = getelementptr inbounds %struct.closure_type, ptr %601, i64 0, i32 5
  store ptr %663, ptr %664, align 8, !tbaa !5
  %665 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %666 = zext i8 %665 to i32
  store i32 %666, ptr @zz_size, align 4, !tbaa !10
  %667 = zext i8 %665 to i64
  %668 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %667
  %669 = load ptr, ptr %668, align 8, !tbaa !8
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %674

671:                                              ; preds = %648
  %672 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %673 = tail call ptr @GetMemory(i32 noundef %666, ptr noundef %672) #6
  br label %676

674:                                              ; preds = %648
  store ptr %669, ptr @zz_hold, align 8, !tbaa !8
  %675 = load ptr, ptr %669, align 8, !tbaa !5
  store ptr %675, ptr %668, align 8, !tbaa !8
  br label %676

676:                                              ; preds = %671, %674
  %677 = phi ptr [ %673, %671 ], [ %669, %674 ]
  %678 = getelementptr inbounds %struct.word_type, ptr %677, i64 0, i32 1
  store i8 0, ptr %678, align 8, !tbaa !5
  %679 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1, i32 1
  store ptr %677, ptr %679, align 8, !tbaa !5
  %680 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1
  store ptr %677, ptr %680, align 8, !tbaa !5
  %681 = getelementptr inbounds %struct.LIST, ptr %677, i64 0, i32 1
  store ptr %677, ptr %681, align 8, !tbaa !5
  store ptr %677, ptr %677, align 8, !tbaa !5
  store ptr %677, ptr @xx_link, align 8, !tbaa !8
  store ptr %677, ptr @zz_res, align 8, !tbaa !8
  %682 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !5
  store ptr %683, ptr @zz_hold, align 8, !tbaa !8
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %686

685:                                              ; preds = %676
  store ptr %601, ptr @zz_hold, align 8, !tbaa !8
  br label %698

686:                                              ; preds = %676
  %687 = load ptr, ptr %683, align 8, !tbaa !5
  store ptr %687, ptr @zz_tmp, align 8, !tbaa !8
  %688 = load ptr, ptr %677, align 8, !tbaa !5
  store ptr %688, ptr %683, align 8, !tbaa !5
  %689 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %690 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %691 = load ptr, ptr %690, align 8, !tbaa !5
  %692 = getelementptr inbounds %struct.LIST, ptr %691, i64 0, i32 1
  store ptr %689, ptr %692, align 8, !tbaa !5
  %693 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %693, ptr %690, align 8, !tbaa !5
  %694 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %695 = getelementptr inbounds %struct.LIST, ptr %693, i64 0, i32 1
  store ptr %694, ptr %695, align 8, !tbaa !5
  %696 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %696, ptr @zz_res, align 8, !tbaa !8
  %697 = icmp eq ptr %696, null
  br i1 %697, label %705, label %698

698:                                              ; preds = %685, %686
  %699 = phi ptr [ %677, %685 ], [ %696, %686 ]
  %700 = load ptr, ptr %603, align 8, !tbaa !5
  store ptr %700, ptr @zz_tmp, align 8, !tbaa !8
  %701 = getelementptr inbounds [2 x %struct.LIST], ptr %699, i64 0, i64 1
  %702 = load ptr, ptr %701, align 8, !tbaa !5
  store ptr %702, ptr %603, align 8, !tbaa !5
  %703 = getelementptr inbounds [2 x %struct.LIST], ptr %702, i64 0, i64 1, i32 1
  store ptr %601, ptr %703, align 8, !tbaa !5
  store ptr %700, ptr %701, align 8, !tbaa !5
  %704 = getelementptr inbounds [2 x %struct.LIST], ptr %700, i64 0, i64 1, i32 1
  store ptr %699, ptr %704, align 8, !tbaa !5
  br label %705

705:                                              ; preds = %686, %698, %582
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %706 = load i32, ptr @otop, align 4, !tbaa !10
  %707 = add nsw i32 %706, 1
  store i32 %707, ptr @otop, align 4, !tbaa !10
  %708 = icmp slt i32 %706, 99
  br i1 %708, label %709, label %712

709:                                              ; preds = %705
  %710 = sext i32 %707 to i64
  %711 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %710
  store ptr %5, ptr %711, align 8, !tbaa !8
  br label %1269

712:                                              ; preds = %705
  %713 = zext nneg i32 %706 to i64
  %714 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !8
  %716 = getelementptr inbounds %struct.word_type, ptr %715, i64 0, i32 1
  %717 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %716) #6
  br label %1269

718:                                              ; preds = %0
  %719 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.60) #6
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %720 = load i8, ptr %6, align 8, !tbaa !5
  %721 = add i8 %720, -11
  %722 = icmp ult i8 %721, 2
  %723 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1, i32 0, i32 1
  %724 = zext i8 %720 to i64
  %725 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %724
  %726 = select i1 %722, ptr %723, ptr %725
  %727 = load i8, ptr %726, align 1, !tbaa !5
  %728 = zext i8 %727 to i32
  store i32 %728, ptr @zz_size, align 4, !tbaa !10
  %729 = zext i8 %727 to i64
  %730 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !8
  store ptr %731, ptr %5, align 8, !tbaa !5
  %732 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %733 = load i32, ptr @zz_size, align 4, !tbaa !10
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %734
  store ptr %732, ptr %735, align 8, !tbaa !8
  br label %1269

736:                                              ; preds = %0
  %737 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %738 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %737, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.33) #6
  br label %1269

739:                                              ; preds = %0
  %740 = sext i32 %2 to i64
  %741 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %740
  %742 = load ptr, ptr %741, align 8, !tbaa !8
  %743 = getelementptr inbounds %struct.word_type, ptr %742, i64 0, i32 1
  %744 = load i8, ptr %743, align 8, !tbaa !5
  switch i8 %744, label %765 [
    i8 102, label %745
    i8 104, label %756
  ]

745:                                              ; preds = %739
  %746 = add nsw i32 %1, -2
  store i32 %746, ptr @ttop, align 4, !tbaa !10
  store ptr %742, ptr @zz_hold, align 8, !tbaa !8
  %747 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 102), align 1, !tbaa !5
  %748 = zext i8 %747 to i32
  store i32 %748, ptr @zz_size, align 4, !tbaa !10
  %749 = zext i8 %747 to i64
  %750 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %749
  %751 = load ptr, ptr %750, align 8, !tbaa !8
  store ptr %751, ptr %742, align 8, !tbaa !5
  %752 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %753 = load i32, ptr @zz_size, align 4, !tbaa !10
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %754
  store ptr %752, ptr %755, align 8, !tbaa !8
  br label %768

756:                                              ; preds = %739
  %757 = getelementptr inbounds %struct.word_type, ptr %742, i64 0, i32 1, i32 0, i32 2
  %758 = load i16, ptr %757, align 2, !tbaa !5
  %759 = icmp eq i16 %758, 0
  br i1 %759, label %763, label %760

760:                                              ; preds = %756
  %761 = tail call ptr @EchoFilePos(ptr noundef nonnull %743) #6
  %762 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.17, ptr noundef %761, ptr noundef nonnull @.str.33) #6
  br label %768

763:                                              ; preds = %756
  %764 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 6, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull @.str.60) #6
  br label %768

765:                                              ; preds = %739
  %766 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %767 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %766, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #6
  br label %768

768:                                              ; preds = %765, %763, %760, %745
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %769 = load i8, ptr %6, align 8, !tbaa !5
  %770 = add i8 %769, -11
  %771 = icmp ult i8 %770, 2
  %772 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1, i32 0, i32 1
  %773 = zext i8 %769 to i64
  %774 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %773
  %775 = select i1 %771, ptr %772, ptr %774
  %776 = load i8, ptr %775, align 1, !tbaa !5
  %777 = zext i8 %776 to i32
  store i32 %777, ptr @zz_size, align 4, !tbaa !10
  %778 = zext i8 %776 to i64
  %779 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %778
  %780 = load ptr, ptr %779, align 8, !tbaa !8
  store ptr %780, ptr %5, align 8, !tbaa !5
  %781 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %782 = load i32, ptr @zz_size, align 4, !tbaa !10
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %783
  store ptr %781, ptr %784, align 8, !tbaa !8
  br label %1269

785:                                              ; preds = %0
  %786 = sext i32 %2 to i64
  %787 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !8
  %789 = getelementptr inbounds %struct.word_type, ptr %788, i64 0, i32 1
  %790 = load i8, ptr %789, align 8, !tbaa !5
  %791 = icmp eq i8 %790, 104
  br i1 %791, label %795, label %792

792:                                              ; preds = %785
  %793 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %794 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %793, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.35) #6
  br label %868

795:                                              ; preds = %785
  %796 = getelementptr inbounds %struct.closure_type, ptr %5, i64 0, i32 5
  %797 = load ptr, ptr %796, align 8, !tbaa !5
  %798 = getelementptr inbounds %struct.closure_type, ptr %788, i64 0, i32 5
  %799 = load ptr, ptr %798, align 8, !tbaa !5
  %800 = icmp eq ptr %797, %799
  br i1 %800, label %845, label %801

801:                                              ; preds = %795
  %802 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %803 = icmp eq ptr %797, %802
  br i1 %803, label %804, label %813

804:                                              ; preds = %801
  %805 = tail call ptr @SymName(ptr noundef %799) #6
  %806 = load i32, ptr @ttop, align 4, !tbaa !10
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !8
  %810 = getelementptr inbounds %struct.word_type, ptr %809, i64 0, i32 1
  %811 = tail call ptr @EchoFilePos(ptr noundef nonnull %810) #6
  %812 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.64, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull @.str.35, ptr noundef %805, ptr noundef nonnull @.str.33, ptr noundef %811) #6
  br label %845

813:                                              ; preds = %801
  %814 = icmp eq ptr %797, null
  br i1 %814, label %815, label %829

815:                                              ; preds = %813
  %816 = icmp eq ptr %799, null
  br i1 %816, label %823, label %817

817:                                              ; preds = %815
  %818 = tail call ptr @SymName(ptr noundef nonnull %799) #6
  %819 = load i32, ptr @ttop, align 4, !tbaa !10
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !8
  br label %823

823:                                              ; preds = %815, %817
  %824 = phi ptr [ %822, %817 ], [ %788, %815 ]
  %825 = phi ptr [ %818, %817 ], [ @.str.66, %815 ]
  %826 = getelementptr inbounds %struct.word_type, ptr %824, i64 0, i32 1
  %827 = tail call ptr @EchoFilePos(ptr noundef nonnull %826) #6
  %828 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.65, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef %825, ptr noundef nonnull @.str.33, ptr noundef %827) #6
  br label %845

829:                                              ; preds = %813
  %830 = tail call ptr @SymName(ptr noundef nonnull %797) #6
  %831 = load i32, ptr @ttop, align 4, !tbaa !10
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !8
  %835 = getelementptr inbounds %struct.closure_type, ptr %834, i64 0, i32 5
  %836 = load ptr, ptr %835, align 8, !tbaa !5
  %837 = tail call ptr @SymName(ptr noundef %836) #6
  %838 = load i32, ptr @ttop, align 4, !tbaa !10
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %839
  %841 = load ptr, ptr %840, align 8, !tbaa !8
  %842 = getelementptr inbounds %struct.word_type, ptr %841, i64 0, i32 1
  %843 = tail call ptr @EchoFilePos(ptr noundef nonnull %842) #6
  %844 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 9, ptr noundef nonnull @.str.67, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull @.str.35, ptr noundef %830, ptr noundef nonnull @.str.35, ptr noundef %837, ptr noundef nonnull @.str.33, ptr noundef %843) #6
  br label %845

845:                                              ; preds = %804, %829, %823, %795
  %846 = load i32, ptr @ttop, align 4, !tbaa !10
  %847 = add nsw i32 %846, -1
  store i32 %847, ptr @ttop, align 4, !tbaa !10
  %848 = sext i32 %846 to i64
  %849 = getelementptr inbounds [100 x ptr], ptr @tok_stack, i64 0, i64 %848
  %850 = load ptr, ptr %849, align 8, !tbaa !8
  store ptr %850, ptr @zz_hold, align 8, !tbaa !8
  %851 = getelementptr inbounds %struct.word_type, ptr %850, i64 0, i32 1
  %852 = load i8, ptr %851, align 8, !tbaa !5
  %853 = add i8 %852, -11
  %854 = icmp ult i8 %853, 2
  %855 = getelementptr inbounds %struct.word_type, ptr %850, i64 0, i32 1, i32 0, i32 1
  %856 = zext i8 %852 to i64
  %857 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %856
  %858 = select i1 %854, ptr %855, ptr %857
  %859 = load i8, ptr %858, align 1, !tbaa !5
  %860 = zext i8 %859 to i32
  store i32 %860, ptr @zz_size, align 4, !tbaa !10
  %861 = zext i8 %859 to i64
  %862 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %861
  %863 = load ptr, ptr %862, align 8, !tbaa !8
  store ptr %863, ptr %850, align 8, !tbaa !5
  %864 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %865 = load i32, ptr @zz_size, align 4, !tbaa !10
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %866
  store ptr %864, ptr %867, align 8, !tbaa !8
  br label %868

868:                                              ; preds = %845, %792
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %869 = load i8, ptr %6, align 8, !tbaa !5
  %870 = add i8 %869, -11
  %871 = icmp ult i8 %870, 2
  %872 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1, i32 0, i32 1
  %873 = zext i8 %869 to i64
  %874 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %873
  %875 = select i1 %871, ptr %872, ptr %874
  %876 = load i8, ptr %875, align 1, !tbaa !5
  %877 = zext i8 %876 to i32
  store i32 %877, ptr @zz_size, align 4, !tbaa !10
  %878 = zext i8 %876 to i64
  %879 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %878
  %880 = load ptr, ptr %879, align 8, !tbaa !8
  store ptr %880, ptr %5, align 8, !tbaa !5
  %881 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %882 = load i32, ptr @zz_size, align 4, !tbaa !10
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %883
  store ptr %881, ptr %884, align 8, !tbaa !8
  br label %1269

885:                                              ; preds = %0
  %886 = load i32, ptr @otop, align 4, !tbaa !10
  %887 = add nsw i32 %886, -1
  store i32 %887, ptr @otop, align 4, !tbaa !10
  %888 = sext i32 %886 to i64
  %889 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %888
  %890 = load ptr, ptr %889, align 8, !tbaa !8
  %891 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %892 = zext i8 %891 to i32
  store i32 %892, ptr @zz_size, align 4, !tbaa !10
  %893 = zext i8 %891 to i64
  %894 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !8
  %896 = icmp eq ptr %895, null
  br i1 %896, label %897, label %900

897:                                              ; preds = %885
  %898 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %899 = tail call ptr @GetMemory(i32 noundef %892, ptr noundef %898) #6
  br label %902

900:                                              ; preds = %885
  store ptr %895, ptr @zz_hold, align 8, !tbaa !8
  %901 = load ptr, ptr %895, align 8, !tbaa !5
  store ptr %901, ptr %894, align 8, !tbaa !8
  br label %902

902:                                              ; preds = %897, %900
  %903 = phi ptr [ %899, %897 ], [ %895, %900 ]
  %904 = getelementptr inbounds %struct.word_type, ptr %903, i64 0, i32 1
  store i8 0, ptr %904, align 8, !tbaa !5
  %905 = getelementptr inbounds [2 x %struct.LIST], ptr %903, i64 0, i64 1, i32 1
  store ptr %903, ptr %905, align 8, !tbaa !5
  %906 = getelementptr inbounds [2 x %struct.LIST], ptr %903, i64 0, i64 1
  store ptr %903, ptr %906, align 8, !tbaa !5
  %907 = getelementptr inbounds %struct.LIST, ptr %903, i64 0, i32 1
  store ptr %903, ptr %907, align 8, !tbaa !5
  store ptr %903, ptr %903, align 8, !tbaa !5
  store ptr %903, ptr @xx_link, align 8, !tbaa !8
  store ptr %903, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %908 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %908, ptr @zz_tmp, align 8, !tbaa !8
  %909 = load ptr, ptr %903, align 8, !tbaa !5
  store ptr %909, ptr %5, align 8, !tbaa !5
  %910 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %911 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %912 = load ptr, ptr %911, align 8, !tbaa !5
  %913 = getelementptr inbounds %struct.LIST, ptr %912, i64 0, i32 1
  store ptr %910, ptr %913, align 8, !tbaa !5
  %914 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %914, ptr %911, align 8, !tbaa !5
  %915 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %916 = getelementptr inbounds %struct.LIST, ptr %914, i64 0, i32 1
  store ptr %915, ptr %916, align 8, !tbaa !5
  %917 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %917, ptr @zz_res, align 8, !tbaa !8
  %918 = icmp eq ptr %890, null
  %919 = icmp eq ptr %917, null
  %920 = select i1 %918, i1 true, i1 %919
  br i1 %920, label %928, label %921

921:                                              ; preds = %902
  %922 = getelementptr inbounds [2 x %struct.LIST], ptr %890, i64 0, i64 1
  %923 = load ptr, ptr %922, align 8, !tbaa !5
  store ptr %923, ptr @zz_tmp, align 8, !tbaa !8
  %924 = getelementptr inbounds [2 x %struct.LIST], ptr %917, i64 0, i64 1
  %925 = load ptr, ptr %924, align 8, !tbaa !5
  store ptr %925, ptr %922, align 8, !tbaa !5
  %926 = getelementptr inbounds [2 x %struct.LIST], ptr %925, i64 0, i64 1, i32 1
  store ptr %890, ptr %926, align 8, !tbaa !5
  store ptr %923, ptr %924, align 8, !tbaa !5
  %927 = getelementptr inbounds [2 x %struct.LIST], ptr %923, i64 0, i64 1, i32 1
  store ptr %917, ptr %927, align 8, !tbaa !5
  br label %928

928:                                              ; preds = %902, %921
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %929 = load i32, ptr @otop, align 4, !tbaa !10
  %930 = add nsw i32 %929, 1
  store i32 %930, ptr @otop, align 4, !tbaa !10
  %931 = icmp slt i32 %929, 99
  br i1 %931, label %932, label %935

932:                                              ; preds = %928
  %933 = sext i32 %930 to i64
  %934 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %933
  store ptr %5, ptr %934, align 8, !tbaa !8
  br label %1269

935:                                              ; preds = %928
  %936 = zext nneg i32 %929 to i64
  %937 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %936
  %938 = load ptr, ptr %937, align 8, !tbaa !8
  %939 = getelementptr inbounds %struct.word_type, ptr %938, i64 0, i32 1
  %940 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %939) #6
  br label %1269

941:                                              ; preds = %0, %0, %0
  %942 = load i32, ptr @otop, align 4, !tbaa !10
  %943 = add nsw i32 %942, -1
  %944 = sext i32 %942 to i64
  %945 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %944
  %946 = load ptr, ptr %945, align 8, !tbaa !8
  %947 = add nsw i32 %942, -2
  %948 = sext i32 %943 to i64
  %949 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %948
  %950 = load ptr, ptr %949, align 8, !tbaa !8
  %951 = add nsw i32 %942, -3
  store i32 %951, ptr @otop, align 4, !tbaa !10
  %952 = sext i32 %947 to i64
  %953 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %952
  %954 = load ptr, ptr %953, align 8, !tbaa !8
  %955 = getelementptr inbounds %struct.word_type, ptr %954, i64 0, i32 1
  %956 = load i8, ptr %955, align 8, !tbaa !5
  %957 = icmp eq i8 %956, %7
  br i1 %957, label %958, label %970

958:                                              ; preds = %941
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %959 = zext nneg i8 %7 to i64
  %960 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !5
  %962 = zext i8 %961 to i32
  store i32 %962, ptr @zz_size, align 4, !tbaa !10
  %963 = zext i8 %961 to i64
  %964 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %963
  %965 = load ptr, ptr %964, align 8, !tbaa !8
  store ptr %965, ptr %5, align 8, !tbaa !5
  %966 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %967 = load i32, ptr @zz_size, align 4, !tbaa !10
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %968
  store ptr %966, ptr %969, align 8, !tbaa !8
  br label %1006

970:                                              ; preds = %941
  %971 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %972 = zext i8 %971 to i32
  store i32 %972, ptr @zz_size, align 4, !tbaa !10
  %973 = zext i8 %971 to i64
  %974 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %973
  %975 = load ptr, ptr %974, align 8, !tbaa !8
  %976 = icmp eq ptr %975, null
  br i1 %976, label %977, label %980

977:                                              ; preds = %970
  %978 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %979 = tail call ptr @GetMemory(i32 noundef %972, ptr noundef %978) #6
  br label %982

980:                                              ; preds = %970
  store ptr %975, ptr @zz_hold, align 8, !tbaa !8
  %981 = load ptr, ptr %975, align 8, !tbaa !5
  store ptr %981, ptr %974, align 8, !tbaa !8
  br label %982

982:                                              ; preds = %977, %980
  %983 = phi ptr [ %979, %977 ], [ %975, %980 ]
  %984 = getelementptr inbounds %struct.word_type, ptr %983, i64 0, i32 1
  store i8 0, ptr %984, align 8, !tbaa !5
  %985 = getelementptr inbounds [2 x %struct.LIST], ptr %983, i64 0, i64 1, i32 1
  store ptr %983, ptr %985, align 8, !tbaa !5
  %986 = getelementptr inbounds [2 x %struct.LIST], ptr %983, i64 0, i64 1
  store ptr %983, ptr %986, align 8, !tbaa !5
  %987 = getelementptr inbounds %struct.LIST, ptr %983, i64 0, i32 1
  store ptr %983, ptr %987, align 8, !tbaa !5
  store ptr %983, ptr %983, align 8, !tbaa !5
  store ptr %983, ptr @xx_link, align 8, !tbaa !8
  store ptr %983, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %988 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %988, ptr @zz_tmp, align 8, !tbaa !8
  %989 = load ptr, ptr %983, align 8, !tbaa !5
  store ptr %989, ptr %5, align 8, !tbaa !5
  %990 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %991 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %992 = load ptr, ptr %991, align 8, !tbaa !5
  %993 = getelementptr inbounds %struct.LIST, ptr %992, i64 0, i32 1
  store ptr %990, ptr %993, align 8, !tbaa !5
  %994 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %994, ptr %991, align 8, !tbaa !5
  %995 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %996 = getelementptr inbounds %struct.LIST, ptr %994, i64 0, i32 1
  store ptr %995, ptr %996, align 8, !tbaa !5
  %997 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %997, ptr @zz_res, align 8, !tbaa !8
  store ptr %954, ptr @zz_hold, align 8, !tbaa !8
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1006, label %999

999:                                              ; preds = %982
  %1000 = getelementptr inbounds [2 x %struct.LIST], ptr %954, i64 0, i64 1
  %1001 = load ptr, ptr %1000, align 8, !tbaa !5
  store ptr %1001, ptr @zz_tmp, align 8, !tbaa !8
  %1002 = getelementptr inbounds [2 x %struct.LIST], ptr %997, i64 0, i64 1
  %1003 = load ptr, ptr %1002, align 8, !tbaa !5
  store ptr %1003, ptr %1000, align 8, !tbaa !5
  %1004 = getelementptr inbounds [2 x %struct.LIST], ptr %1003, i64 0, i64 1, i32 1
  store ptr %954, ptr %1004, align 8, !tbaa !5
  store ptr %1001, ptr %1002, align 8, !tbaa !5
  %1005 = getelementptr inbounds [2 x %struct.LIST], ptr %1001, i64 0, i64 1, i32 1
  store ptr %997, ptr %1005, align 8, !tbaa !5
  br label %1006

1006:                                             ; preds = %999, %982, %958
  %1007 = phi ptr [ %954, %958 ], [ %5, %982 ], [ %5, %999 ]
  %1008 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1009 = zext i8 %1008 to i32
  store i32 %1009, ptr @zz_size, align 4, !tbaa !10
  %1010 = zext i8 %1008 to i64
  %1011 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1010
  %1012 = load ptr, ptr %1011, align 8, !tbaa !8
  %1013 = icmp eq ptr %1012, null
  br i1 %1013, label %1014, label %1017

1014:                                             ; preds = %1006
  %1015 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1016 = tail call ptr @GetMemory(i32 noundef %1009, ptr noundef %1015) #6
  br label %1019

1017:                                             ; preds = %1006
  store ptr %1012, ptr @zz_hold, align 8, !tbaa !8
  %1018 = load ptr, ptr %1012, align 8, !tbaa !5
  store ptr %1018, ptr %1011, align 8, !tbaa !8
  br label %1019

1019:                                             ; preds = %1014, %1017
  %1020 = phi ptr [ %1016, %1014 ], [ %1012, %1017 ]
  %1021 = getelementptr inbounds %struct.word_type, ptr %1020, i64 0, i32 1
  store i8 0, ptr %1021, align 8, !tbaa !5
  %1022 = getelementptr inbounds [2 x %struct.LIST], ptr %1020, i64 0, i64 1, i32 1
  store ptr %1020, ptr %1022, align 8, !tbaa !5
  %1023 = getelementptr inbounds [2 x %struct.LIST], ptr %1020, i64 0, i64 1
  store ptr %1020, ptr %1023, align 8, !tbaa !5
  %1024 = getelementptr inbounds %struct.LIST, ptr %1020, i64 0, i32 1
  store ptr %1020, ptr %1024, align 8, !tbaa !5
  store ptr %1020, ptr %1020, align 8, !tbaa !5
  store ptr %1020, ptr @xx_link, align 8, !tbaa !8
  store ptr %1020, ptr @zz_res, align 8, !tbaa !8
  store ptr %1007, ptr @zz_hold, align 8, !tbaa !8
  %1025 = load ptr, ptr %1007, align 8, !tbaa !5
  store ptr %1025, ptr @zz_tmp, align 8, !tbaa !8
  %1026 = load ptr, ptr %1020, align 8, !tbaa !5
  store ptr %1026, ptr %1007, align 8, !tbaa !5
  %1027 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1028 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1029 = load ptr, ptr %1028, align 8, !tbaa !5
  %1030 = getelementptr inbounds %struct.LIST, ptr %1029, i64 0, i32 1
  store ptr %1027, ptr %1030, align 8, !tbaa !5
  %1031 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1031, ptr %1028, align 8, !tbaa !5
  %1032 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1033 = getelementptr inbounds %struct.LIST, ptr %1031, i64 0, i32 1
  store ptr %1032, ptr %1033, align 8, !tbaa !5
  %1034 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1034, ptr @zz_res, align 8, !tbaa !8
  store ptr %950, ptr @zz_hold, align 8, !tbaa !8
  %1035 = icmp eq ptr %950, null
  %1036 = icmp eq ptr %1034, null
  %1037 = select i1 %1035, i1 true, i1 %1036
  br i1 %1037, label %1045, label %1038

1038:                                             ; preds = %1019
  %1039 = getelementptr inbounds [2 x %struct.LIST], ptr %950, i64 0, i64 1
  %1040 = load ptr, ptr %1039, align 8, !tbaa !5
  store ptr %1040, ptr @zz_tmp, align 8, !tbaa !8
  %1041 = getelementptr inbounds [2 x %struct.LIST], ptr %1034, i64 0, i64 1
  %1042 = load ptr, ptr %1041, align 8, !tbaa !5
  store ptr %1042, ptr %1039, align 8, !tbaa !5
  %1043 = getelementptr inbounds [2 x %struct.LIST], ptr %1042, i64 0, i64 1, i32 1
  store ptr %950, ptr %1043, align 8, !tbaa !5
  store ptr %1040, ptr %1041, align 8, !tbaa !5
  %1044 = getelementptr inbounds [2 x %struct.LIST], ptr %1040, i64 0, i64 1, i32 1
  store ptr %1034, ptr %1044, align 8, !tbaa !5
  br label %1045

1045:                                             ; preds = %1019, %1038
  %1046 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1047 = zext i8 %1046 to i32
  store i32 %1047, ptr @zz_size, align 4, !tbaa !10
  %1048 = zext i8 %1046 to i64
  %1049 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1048
  %1050 = load ptr, ptr %1049, align 8, !tbaa !8
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1052, label %1055

1052:                                             ; preds = %1045
  %1053 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1054 = tail call ptr @GetMemory(i32 noundef %1047, ptr noundef %1053) #6
  br label %1057

1055:                                             ; preds = %1045
  store ptr %1050, ptr @zz_hold, align 8, !tbaa !8
  %1056 = load ptr, ptr %1050, align 8, !tbaa !5
  store ptr %1056, ptr %1049, align 8, !tbaa !8
  br label %1057

1057:                                             ; preds = %1052, %1055
  %1058 = phi ptr [ %1054, %1052 ], [ %1050, %1055 ]
  %1059 = getelementptr inbounds %struct.word_type, ptr %1058, i64 0, i32 1
  store i8 0, ptr %1059, align 8, !tbaa !5
  %1060 = getelementptr inbounds [2 x %struct.LIST], ptr %1058, i64 0, i64 1, i32 1
  store ptr %1058, ptr %1060, align 8, !tbaa !5
  %1061 = getelementptr inbounds [2 x %struct.LIST], ptr %1058, i64 0, i64 1
  store ptr %1058, ptr %1061, align 8, !tbaa !5
  %1062 = getelementptr inbounds %struct.LIST, ptr %1058, i64 0, i32 1
  store ptr %1058, ptr %1062, align 8, !tbaa !5
  store ptr %1058, ptr %1058, align 8, !tbaa !5
  store ptr %1058, ptr @xx_link, align 8, !tbaa !8
  store ptr %1058, ptr @zz_res, align 8, !tbaa !8
  store ptr %1007, ptr @zz_hold, align 8, !tbaa !8
  %1063 = load ptr, ptr %1007, align 8, !tbaa !5
  store ptr %1063, ptr @zz_tmp, align 8, !tbaa !8
  %1064 = load ptr, ptr %1058, align 8, !tbaa !5
  store ptr %1064, ptr %1007, align 8, !tbaa !5
  %1065 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1066 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1067 = load ptr, ptr %1066, align 8, !tbaa !5
  %1068 = getelementptr inbounds %struct.LIST, ptr %1067, i64 0, i32 1
  store ptr %1065, ptr %1068, align 8, !tbaa !5
  %1069 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1069, ptr %1066, align 8, !tbaa !5
  %1070 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1071 = getelementptr inbounds %struct.LIST, ptr %1069, i64 0, i32 1
  store ptr %1070, ptr %1071, align 8, !tbaa !5
  %1072 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1072, ptr @zz_res, align 8, !tbaa !8
  %1073 = icmp eq ptr %946, null
  %1074 = icmp eq ptr %1072, null
  %1075 = select i1 %1073, i1 true, i1 %1074
  br i1 %1075, label %1083, label %1076

1076:                                             ; preds = %1057
  %1077 = getelementptr inbounds [2 x %struct.LIST], ptr %946, i64 0, i64 1
  %1078 = load ptr, ptr %1077, align 8, !tbaa !5
  store ptr %1078, ptr @zz_tmp, align 8, !tbaa !8
  %1079 = getelementptr inbounds [2 x %struct.LIST], ptr %1072, i64 0, i64 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !5
  store ptr %1080, ptr %1077, align 8, !tbaa !5
  %1081 = getelementptr inbounds [2 x %struct.LIST], ptr %1080, i64 0, i64 1, i32 1
  store ptr %946, ptr %1081, align 8, !tbaa !5
  store ptr %1078, ptr %1079, align 8, !tbaa !5
  %1082 = getelementptr inbounds [2 x %struct.LIST], ptr %1078, i64 0, i64 1, i32 1
  store ptr %1072, ptr %1082, align 8, !tbaa !5
  br label %1083

1083:                                             ; preds = %1057, %1076
  store ptr %1007, ptr @zz_hold, align 8, !tbaa !8
  %1084 = load i32, ptr @otop, align 4, !tbaa !10
  %1085 = add nsw i32 %1084, 1
  store i32 %1085, ptr @otop, align 4, !tbaa !10
  %1086 = icmp slt i32 %1084, 99
  br i1 %1086, label %1087, label %1090

1087:                                             ; preds = %1083
  %1088 = sext i32 %1085 to i64
  %1089 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1088
  store ptr %1007, ptr %1089, align 8, !tbaa !8
  br label %1269

1090:                                             ; preds = %1083
  %1091 = zext nneg i32 %1084 to i64
  %1092 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1091
  %1093 = load ptr, ptr %1092, align 8, !tbaa !8
  %1094 = getelementptr inbounds %struct.word_type, ptr %1093, i64 0, i32 1
  %1095 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1094) #6
  br label %1269

1096:                                             ; preds = %0, %0
  %1097 = load i32, ptr @otop, align 4, !tbaa !10
  %1098 = add nsw i32 %1097, -1
  %1099 = sext i32 %1097 to i64
  %1100 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1099
  %1101 = load ptr, ptr %1100, align 8, !tbaa !8
  %1102 = add nsw i32 %1097, -2
  store i32 %1102, ptr @otop, align 4, !tbaa !10
  %1103 = sext i32 %1098 to i64
  %1104 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1103
  %1105 = load ptr, ptr %1104, align 8, !tbaa !8
  %1106 = getelementptr inbounds %struct.word_type, ptr %1105, i64 0, i32 1
  %1107 = load i8, ptr %1106, align 8, !tbaa !5
  %1108 = icmp eq i8 %1107, 17
  br i1 %1108, label %1176, label %1109

1109:                                             ; preds = %1096
  %1110 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1111 = zext i8 %1110 to i32
  store i32 %1111, ptr @zz_size, align 4, !tbaa !10
  %1112 = zext i8 %1110 to i64
  %1113 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1112
  %1114 = load ptr, ptr %1113, align 8, !tbaa !8
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %1119

1116:                                             ; preds = %1109
  %1117 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1118 = tail call ptr @GetMemory(i32 noundef %1111, ptr noundef %1117) #6
  store ptr %1118, ptr @zz_hold, align 8, !tbaa !8
  br label %1121

1119:                                             ; preds = %1109
  store ptr %1114, ptr @zz_hold, align 8, !tbaa !8
  %1120 = load ptr, ptr %1114, align 8, !tbaa !5
  store ptr %1120, ptr %1113, align 8, !tbaa !8
  br label %1121

1121:                                             ; preds = %1116, %1119
  %1122 = phi ptr [ %1118, %1116 ], [ %1114, %1119 ]
  %1123 = getelementptr inbounds %struct.word_type, ptr %1122, i64 0, i32 1
  store i8 17, ptr %1123, align 8, !tbaa !5
  %1124 = getelementptr inbounds [2 x %struct.LIST], ptr %1122, i64 0, i64 1, i32 1
  store ptr %1122, ptr %1124, align 8, !tbaa !5
  %1125 = getelementptr inbounds [2 x %struct.LIST], ptr %1122, i64 0, i64 1
  store ptr %1122, ptr %1125, align 8, !tbaa !5
  %1126 = getelementptr inbounds %struct.LIST, ptr %1122, i64 0, i32 1
  store ptr %1122, ptr %1126, align 8, !tbaa !5
  store ptr %1122, ptr %1122, align 8, !tbaa !5
  %1127 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1128 = zext i8 %1127 to i32
  store i32 %1128, ptr @zz_size, align 4, !tbaa !10
  %1129 = zext i8 %1127 to i64
  %1130 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1129
  %1131 = load ptr, ptr %1130, align 8, !tbaa !8
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1133, label %1136

1133:                                             ; preds = %1121
  %1134 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1135 = tail call ptr @GetMemory(i32 noundef %1128, ptr noundef %1134) #6
  br label %1138

1136:                                             ; preds = %1121
  store ptr %1131, ptr @zz_hold, align 8, !tbaa !8
  %1137 = load ptr, ptr %1131, align 8, !tbaa !5
  store ptr %1137, ptr %1130, align 8, !tbaa !8
  br label %1138

1138:                                             ; preds = %1133, %1136
  %1139 = phi ptr [ %1135, %1133 ], [ %1131, %1136 ]
  %1140 = getelementptr inbounds %struct.word_type, ptr %1139, i64 0, i32 1
  store i8 0, ptr %1140, align 8, !tbaa !5
  %1141 = getelementptr inbounds [2 x %struct.LIST], ptr %1139, i64 0, i64 1, i32 1
  store ptr %1139, ptr %1141, align 8, !tbaa !5
  %1142 = getelementptr inbounds [2 x %struct.LIST], ptr %1139, i64 0, i64 1
  store ptr %1139, ptr %1142, align 8, !tbaa !5
  %1143 = getelementptr inbounds %struct.LIST, ptr %1139, i64 0, i32 1
  store ptr %1139, ptr %1143, align 8, !tbaa !5
  store ptr %1139, ptr %1139, align 8, !tbaa !5
  store ptr %1139, ptr @xx_link, align 8, !tbaa !8
  store ptr %1139, ptr @zz_res, align 8, !tbaa !8
  store ptr %1122, ptr @zz_hold, align 8, !tbaa !8
  %1144 = load ptr, ptr %1122, align 8, !tbaa !5
  store ptr %1144, ptr @zz_tmp, align 8, !tbaa !8
  %1145 = load ptr, ptr %1139, align 8, !tbaa !5
  store ptr %1145, ptr %1122, align 8, !tbaa !5
  %1146 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1147 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1148 = load ptr, ptr %1147, align 8, !tbaa !5
  %1149 = getelementptr inbounds %struct.LIST, ptr %1148, i64 0, i32 1
  store ptr %1146, ptr %1149, align 8, !tbaa !5
  %1150 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1150, ptr %1147, align 8, !tbaa !5
  %1151 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1152 = getelementptr inbounds %struct.LIST, ptr %1150, i64 0, i32 1
  store ptr %1151, ptr %1152, align 8, !tbaa !5
  %1153 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1153, ptr @zz_res, align 8, !tbaa !8
  store ptr %1105, ptr @zz_hold, align 8, !tbaa !8
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1162, label %1155

1155:                                             ; preds = %1138
  %1156 = getelementptr inbounds [2 x %struct.LIST], ptr %1105, i64 0, i64 1
  %1157 = load ptr, ptr %1156, align 8, !tbaa !5
  store ptr %1157, ptr @zz_tmp, align 8, !tbaa !8
  %1158 = getelementptr inbounds [2 x %struct.LIST], ptr %1153, i64 0, i64 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !5
  store ptr %1159, ptr %1156, align 8, !tbaa !5
  %1160 = getelementptr inbounds [2 x %struct.LIST], ptr %1159, i64 0, i64 1, i32 1
  store ptr %1105, ptr %1160, align 8, !tbaa !5
  store ptr %1157, ptr %1158, align 8, !tbaa !5
  %1161 = getelementptr inbounds [2 x %struct.LIST], ptr %1157, i64 0, i64 1, i32 1
  store ptr %1153, ptr %1161, align 8, !tbaa !5
  br label %1162

1162:                                             ; preds = %1138, %1155
  %1163 = getelementptr inbounds %struct.word_type, ptr %1105, i64 0, i32 1, i32 0, i32 2
  %1164 = load i16, ptr %1163, align 2, !tbaa !5
  %1165 = getelementptr inbounds %struct.word_type, ptr %1122, i64 0, i32 1, i32 0, i32 2
  store i16 %1164, ptr %1165, align 2, !tbaa !5
  %1166 = getelementptr inbounds %struct.word_type, ptr %1105, i64 0, i32 1, i32 0, i32 3
  %1167 = load i32, ptr %1166, align 4
  %1168 = and i32 %1167, 1048575
  %1169 = getelementptr inbounds %struct.word_type, ptr %1122, i64 0, i32 1, i32 0, i32 3
  %1170 = load i32, ptr %1169, align 4
  %1171 = and i32 %1170, -1048576
  %1172 = or disjoint i32 %1171, %1168
  store i32 %1172, ptr %1169, align 4
  %1173 = load i32, ptr %1166, align 4
  %1174 = and i32 %1173, -1048576
  %1175 = or disjoint i32 %1174, %1168
  store i32 %1175, ptr %1169, align 4
  br label %1176

1176:                                             ; preds = %1162, %1096
  %1177 = phi ptr [ %1122, %1162 ], [ %1105, %1096 ]
  store i8 1, ptr %6, align 8, !tbaa !5
  %1178 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1179 = zext i8 %1178 to i32
  store i32 %1179, ptr @zz_size, align 4, !tbaa !10
  %1180 = zext i8 %1178 to i64
  %1181 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1180
  %1182 = load ptr, ptr %1181, align 8, !tbaa !8
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1184, label %1187

1184:                                             ; preds = %1176
  %1185 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1186 = tail call ptr @GetMemory(i32 noundef %1179, ptr noundef %1185) #6
  br label %1189

1187:                                             ; preds = %1176
  store ptr %1182, ptr @zz_hold, align 8, !tbaa !8
  %1188 = load ptr, ptr %1182, align 8, !tbaa !5
  store ptr %1188, ptr %1181, align 8, !tbaa !8
  br label %1189

1189:                                             ; preds = %1184, %1187
  %1190 = phi ptr [ %1186, %1184 ], [ %1182, %1187 ]
  %1191 = getelementptr inbounds %struct.word_type, ptr %1190, i64 0, i32 1
  store i8 0, ptr %1191, align 8, !tbaa !5
  %1192 = getelementptr inbounds [2 x %struct.LIST], ptr %1190, i64 0, i64 1, i32 1
  store ptr %1190, ptr %1192, align 8, !tbaa !5
  %1193 = getelementptr inbounds [2 x %struct.LIST], ptr %1190, i64 0, i64 1
  store ptr %1190, ptr %1193, align 8, !tbaa !5
  %1194 = getelementptr inbounds %struct.LIST, ptr %1190, i64 0, i32 1
  store ptr %1190, ptr %1194, align 8, !tbaa !5
  store ptr %1190, ptr %1190, align 8, !tbaa !5
  store ptr %1190, ptr @xx_link, align 8, !tbaa !8
  store ptr %1190, ptr @zz_res, align 8, !tbaa !8
  store ptr %1177, ptr @zz_hold, align 8, !tbaa !8
  %1195 = load ptr, ptr %1177, align 8, !tbaa !5
  store ptr %1195, ptr @zz_tmp, align 8, !tbaa !8
  %1196 = load ptr, ptr %1190, align 8, !tbaa !5
  store ptr %1196, ptr %1177, align 8, !tbaa !5
  %1197 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1198 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1199 = load ptr, ptr %1198, align 8, !tbaa !5
  %1200 = getelementptr inbounds %struct.LIST, ptr %1199, i64 0, i32 1
  store ptr %1197, ptr %1200, align 8, !tbaa !5
  %1201 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1201, ptr %1198, align 8, !tbaa !5
  %1202 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1203 = getelementptr inbounds %struct.LIST, ptr %1201, i64 0, i32 1
  store ptr %1202, ptr %1203, align 8, !tbaa !5
  %1204 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1204, ptr @zz_res, align 8, !tbaa !8
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1213, label %1206

1206:                                             ; preds = %1189
  %1207 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1
  %1208 = load ptr, ptr %1207, align 8, !tbaa !5
  store ptr %1208, ptr @zz_tmp, align 8, !tbaa !8
  %1209 = getelementptr inbounds [2 x %struct.LIST], ptr %1204, i64 0, i64 1
  %1210 = load ptr, ptr %1209, align 8, !tbaa !5
  store ptr %1210, ptr %1207, align 8, !tbaa !5
  %1211 = getelementptr inbounds [2 x %struct.LIST], ptr %1210, i64 0, i64 1, i32 1
  store ptr %5, ptr %1211, align 8, !tbaa !5
  store ptr %1208, ptr %1209, align 8, !tbaa !5
  %1212 = getelementptr inbounds [2 x %struct.LIST], ptr %1208, i64 0, i64 1, i32 1
  store ptr %1204, ptr %1212, align 8, !tbaa !5
  br label %1213

1213:                                             ; preds = %1189, %1206
  %1214 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1215 = zext i8 %1214 to i32
  store i32 %1215, ptr @zz_size, align 4, !tbaa !10
  %1216 = zext i8 %1214 to i64
  %1217 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1216
  %1218 = load ptr, ptr %1217, align 8, !tbaa !8
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1220, label %1223

1220:                                             ; preds = %1213
  %1221 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1222 = tail call ptr @GetMemory(i32 noundef %1215, ptr noundef %1221) #6
  br label %1225

1223:                                             ; preds = %1213
  store ptr %1218, ptr @zz_hold, align 8, !tbaa !8
  %1224 = load ptr, ptr %1218, align 8, !tbaa !5
  store ptr %1224, ptr %1217, align 8, !tbaa !8
  br label %1225

1225:                                             ; preds = %1220, %1223
  %1226 = phi ptr [ %1222, %1220 ], [ %1218, %1223 ]
  %1227 = getelementptr inbounds %struct.word_type, ptr %1226, i64 0, i32 1
  store i8 0, ptr %1227, align 8, !tbaa !5
  %1228 = getelementptr inbounds [2 x %struct.LIST], ptr %1226, i64 0, i64 1, i32 1
  store ptr %1226, ptr %1228, align 8, !tbaa !5
  %1229 = getelementptr inbounds [2 x %struct.LIST], ptr %1226, i64 0, i64 1
  store ptr %1226, ptr %1229, align 8, !tbaa !5
  %1230 = getelementptr inbounds %struct.LIST, ptr %1226, i64 0, i32 1
  store ptr %1226, ptr %1230, align 8, !tbaa !5
  store ptr %1226, ptr %1226, align 8, !tbaa !5
  store ptr %1226, ptr @xx_link, align 8, !tbaa !8
  store ptr %1226, ptr @zz_res, align 8, !tbaa !8
  store ptr %1177, ptr @zz_hold, align 8, !tbaa !8
  %1231 = load ptr, ptr %1177, align 8, !tbaa !5
  store ptr %1231, ptr @zz_tmp, align 8, !tbaa !8
  %1232 = load ptr, ptr %1226, align 8, !tbaa !5
  store ptr %1232, ptr %1177, align 8, !tbaa !5
  %1233 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1234 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1235 = load ptr, ptr %1234, align 8, !tbaa !5
  %1236 = getelementptr inbounds %struct.LIST, ptr %1235, i64 0, i32 1
  store ptr %1233, ptr %1236, align 8, !tbaa !5
  %1237 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1237, ptr %1234, align 8, !tbaa !5
  %1238 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1239 = getelementptr inbounds %struct.LIST, ptr %1237, i64 0, i32 1
  store ptr %1238, ptr %1239, align 8, !tbaa !5
  %1240 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1240, ptr @zz_res, align 8, !tbaa !8
  %1241 = icmp eq ptr %1101, null
  %1242 = icmp eq ptr %1240, null
  %1243 = select i1 %1241, i1 true, i1 %1242
  br i1 %1243, label %1251, label %1244

1244:                                             ; preds = %1225
  %1245 = getelementptr inbounds [2 x %struct.LIST], ptr %1101, i64 0, i64 1
  %1246 = load ptr, ptr %1245, align 8, !tbaa !5
  store ptr %1246, ptr @zz_tmp, align 8, !tbaa !8
  %1247 = getelementptr inbounds [2 x %struct.LIST], ptr %1240, i64 0, i64 1
  %1248 = load ptr, ptr %1247, align 8, !tbaa !5
  store ptr %1248, ptr %1245, align 8, !tbaa !5
  %1249 = getelementptr inbounds [2 x %struct.LIST], ptr %1248, i64 0, i64 1, i32 1
  store ptr %1101, ptr %1249, align 8, !tbaa !5
  store ptr %1246, ptr %1247, align 8, !tbaa !5
  %1250 = getelementptr inbounds [2 x %struct.LIST], ptr %1246, i64 0, i64 1, i32 1
  store ptr %1240, ptr %1250, align 8, !tbaa !5
  br label %1251

1251:                                             ; preds = %1225, %1244
  store ptr %1177, ptr @zz_hold, align 8, !tbaa !8
  %1252 = load i32, ptr @otop, align 4, !tbaa !10
  %1253 = add nsw i32 %1252, 1
  store i32 %1253, ptr @otop, align 4, !tbaa !10
  %1254 = icmp slt i32 %1252, 99
  br i1 %1254, label %1255, label %1258

1255:                                             ; preds = %1251
  %1256 = sext i32 %1253 to i64
  %1257 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1256
  store ptr %1177, ptr %1257, align 8, !tbaa !8
  br label %1269

1258:                                             ; preds = %1251
  %1259 = zext nneg i32 %1252 to i64
  %1260 = getelementptr inbounds [100 x ptr], ptr @obj_stack, i64 0, i64 %1259
  %1261 = load ptr, ptr %1260, align 8, !tbaa !8
  %1262 = getelementptr inbounds %struct.word_type, ptr %1261, i64 0, i32 1
  %1263 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %1262) #6
  br label %1269

1264:                                             ; preds = %0
  %1265 = zext i8 %7 to i32
  %1266 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1267 = tail call ptr @Image(i32 noundef %1265) #6
  %1268 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %1266, ptr noundef nonnull @.str.68, ptr noundef %1267) #6
  br label %1269

1269:                                             ; preds = %932, %935, %1255, %1258, %1087, %1090, %709, %712, %455, %458, %341, %344, %216, %219, %1264, %868, %768, %736, %718, %90, %43
  %1270 = phi i32 [ 1, %1264 ], [ 1, %1255 ], [ 1, %1258 ], [ 1, %1087 ], [ 1, %1090 ], [ 2, %868 ], [ 2, %768 ], [ 1, %736 ], [ 2, %718 ], [ 1, %709 ], [ 1, %712 ], [ 1, %455 ], [ 1, %458 ], [ 1, %341 ], [ 1, %344 ], [ 1, %216 ], [ 1, %219 ], [ 1, %90 ], [ 1, %43 ], [ 0, %935 ], [ 0, %932 ]
  ret i32 %1270
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @LexGetToken() local_unnamed_addr #2

declare void @ReadDefinitions(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @ErrorSeen() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @CrossExpand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @HuntCommandOptions(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr @CommandOptions, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.LIST, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %258, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.LIST, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %8, %252
  %12 = phi ptr [ %6, %8 ], [ %255, %252 ]
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %16, %13 ], [ %12, %11 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.LIST, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %22, %20 ], [ %26, %23 ]
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.word_type, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 8, !tbaa !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %23, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %9, align 8, !tbaa !5
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %252, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 4
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi ptr [ %31, %33 ], [ %49, %47 ]
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %40, %37 ], [ %36, %35 ]
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  switch i8 %42, label %47 [
    i8 0, label %37
    i8 -111, label %43
  ]

43:                                               ; preds = %37
  %44 = tail call ptr @SymName(ptr noundef nonnull %40) #6
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %34) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37, %43
  %48 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, %3
  br i1 %50, label %252, label %35

51:                                               ; preds = %43
  %52 = load ptr, ptr %10, align 8, !tbaa !5
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %156, label %54

54:                                               ; preds = %51, %66
  %55 = phi ptr [ %68, %66 ], [ %52, %51 ]
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %59, %56 ], [ %55, %54 ]
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.word_type, ptr %59, i64 0, i32 1
  %61 = load i8, ptr %60, align 8, !tbaa !5
  switch i8 %61, label %66 [
    i8 0, label %56
    i8 10, label %62
  ]

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.closure_type, ptr %59, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, %40
  br i1 %65, label %70, label %66

66:                                               ; preds = %56, %62
  %67 = getelementptr inbounds %struct.LIST, ptr %55, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, %0
  br i1 %69, label %156, label %54

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  store ptr %72, ptr @xx_link, align 8, !tbaa !8
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = icmp eq ptr %74, %72
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  store ptr %74, ptr @zz_res, align 8, !tbaa !8
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %74, i64 0, i64 1
  store ptr %78, ptr %79, align 8, !tbaa !5
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1, i32 1
  store ptr %74, ptr %80, align 8, !tbaa !5
  store ptr %72, ptr %73, align 8, !tbaa !5
  store ptr %72, ptr %77, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %70, %76
  %82 = phi ptr [ %74, %76 ], [ null, %70 ]
  store ptr %82, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %72, ptr @zz_hold, align 8, !tbaa !8
  %83 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, %72
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  store ptr %84, ptr @zz_res, align 8, !tbaa !8
  %87 = load ptr, ptr %72, align 8, !tbaa !5
  store ptr %87, ptr %84, align 8, !tbaa !5
  %88 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %89 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.LIST, ptr %90, i64 0, i32 1
  store ptr %88, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  store ptr %89, ptr %92, align 8, !tbaa !5
  store ptr %89, ptr %89, align 8, !tbaa !5
  %93 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %94

94:                                               ; preds = %81, %86
  %95 = phi ptr [ %72, %81 ], [ %93, %86 ]
  store ptr %95, ptr @zz_hold, align 8, !tbaa !8
  %96 = getelementptr inbounds %struct.word_type, ptr %95, i64 0, i32 1
  %97 = load i8, ptr %96, align 8, !tbaa !5
  %98 = add i8 %97, -11
  %99 = icmp ult i8 %98, 2
  %100 = getelementptr inbounds %struct.word_type, ptr %95, i64 0, i32 1, i32 0, i32 1
  %101 = zext i8 %97 to i64
  %102 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %101
  %103 = select i1 %99, ptr %100, ptr %102
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  store i32 %105, ptr @zz_size, align 4, !tbaa !10
  %106 = zext i8 %104 to i64
  %107 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !8
  store ptr %108, ptr %95, align 8, !tbaa !5
  %109 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %110 = load i32, ptr @zz_size, align 4, !tbaa !10
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %111
  store ptr %109, ptr %112, align 8, !tbaa !8
  %113 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = icmp eq ptr %115, %113
  br i1 %116, label %117, label %119

117:                                              ; preds = %94
  %118 = tail call i32 @DisposeObject(ptr noundef nonnull %113) #6
  br label %119

119:                                              ; preds = %117, %94
  %120 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %121 = zext i8 %120 to i32
  store i32 %121, ptr @zz_size, align 4, !tbaa !10
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %128 = tail call ptr @GetMemory(i32 noundef %121, ptr noundef %127) #6
  br label %131

129:                                              ; preds = %119
  store ptr %124, ptr @zz_hold, align 8, !tbaa !8
  %130 = load ptr, ptr %124, align 8, !tbaa !5
  store ptr %130, ptr %123, align 8, !tbaa !8
  br label %131

131:                                              ; preds = %126, %129
  %132 = phi ptr [ %128, %126 ], [ %124, %129 ]
  %133 = getelementptr inbounds %struct.word_type, ptr %132, i64 0, i32 1
  store i8 0, ptr %133, align 8, !tbaa !5
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1, i32 1
  store ptr %132, ptr %134, align 8, !tbaa !5
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  store ptr %132, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  store ptr %132, ptr %136, align 8, !tbaa !5
  store ptr %132, ptr %132, align 8, !tbaa !5
  store ptr %132, ptr @xx_link, align 8, !tbaa !8
  store ptr %132, ptr @zz_res, align 8, !tbaa !8
  store ptr %59, ptr @zz_hold, align 8, !tbaa !8
  %137 = load ptr, ptr %59, align 8, !tbaa !5
  store ptr %137, ptr @zz_tmp, align 8, !tbaa !8
  %138 = load ptr, ptr %132, align 8, !tbaa !5
  store ptr %138, ptr %59, align 8, !tbaa !5
  %139 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %140 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.LIST, ptr %141, i64 0, i32 1
  store ptr %139, ptr %142, align 8, !tbaa !5
  %143 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %143, ptr %140, align 8, !tbaa !5
  %144 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %145 = getelementptr inbounds %struct.LIST, ptr %143, i64 0, i32 1
  store ptr %144, ptr %145, align 8, !tbaa !5
  %146 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %146, ptr @zz_res, align 8, !tbaa !8
  store ptr %26, ptr @zz_hold, align 8, !tbaa !8
  %147 = icmp eq ptr %26, null
  %148 = icmp eq ptr %146, null
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %252, label %150

150:                                              ; preds = %131
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  store ptr %152, ptr @zz_tmp, align 8, !tbaa !8
  %153 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !5
  store ptr %154, ptr %151, align 8, !tbaa !5
  %155 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1, i32 1
  store ptr %26, ptr %155, align 8, !tbaa !5
  store ptr %152, ptr %153, align 8, !tbaa !5
  br label %248

156:                                              ; preds = %66, %51
  %157 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %158 = zext i8 %157 to i32
  store i32 %158, ptr @zz_size, align 4, !tbaa !10
  %159 = zext i8 %157 to i64
  %160 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %165 = tail call ptr @GetMemory(i32 noundef %158, ptr noundef %164) #6
  store ptr %165, ptr @zz_hold, align 8, !tbaa !8
  br label %168

166:                                              ; preds = %156
  store ptr %161, ptr @zz_hold, align 8, !tbaa !8
  %167 = load ptr, ptr %161, align 8, !tbaa !5
  store ptr %167, ptr %160, align 8, !tbaa !8
  br label %168

168:                                              ; preds = %163, %166
  %169 = phi ptr [ %165, %163 ], [ %161, %166 ]
  %170 = getelementptr inbounds %struct.word_type, ptr %169, i64 0, i32 1
  store i8 10, ptr %170, align 8, !tbaa !5
  %171 = getelementptr inbounds [2 x %struct.LIST], ptr %169, i64 0, i64 1
  %172 = getelementptr inbounds [2 x %struct.LIST], ptr %169, i64 0, i64 1, i32 1
  store ptr %169, ptr %172, align 8, !tbaa !5
  store ptr %169, ptr %171, align 8, !tbaa !5
  %173 = getelementptr inbounds %struct.LIST, ptr %169, i64 0, i32 1
  store ptr %169, ptr %173, align 8, !tbaa !5
  store ptr %169, ptr %169, align 8, !tbaa !5
  %174 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %175 = zext i8 %174 to i32
  store i32 %175, ptr @zz_size, align 4, !tbaa !10
  %176 = zext i8 %174 to i64
  %177 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %182 = tail call ptr @GetMemory(i32 noundef %175, ptr noundef %181) #6
  br label %185

183:                                              ; preds = %168
  store ptr %178, ptr @zz_hold, align 8, !tbaa !8
  %184 = load ptr, ptr %178, align 8, !tbaa !5
  store ptr %184, ptr %177, align 8, !tbaa !8
  br label %185

185:                                              ; preds = %180, %183
  %186 = phi ptr [ %182, %180 ], [ %178, %183 ]
  %187 = getelementptr inbounds %struct.word_type, ptr %186, i64 0, i32 1
  store i8 0, ptr %187, align 8, !tbaa !5
  %188 = getelementptr inbounds [2 x %struct.LIST], ptr %186, i64 0, i64 1, i32 1
  store ptr %186, ptr %188, align 8, !tbaa !5
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %186, i64 0, i64 1
  store ptr %186, ptr %189, align 8, !tbaa !5
  %190 = getelementptr inbounds %struct.LIST, ptr %186, i64 0, i32 1
  store ptr %186, ptr %190, align 8, !tbaa !5
  store ptr %186, ptr %186, align 8, !tbaa !5
  store ptr %186, ptr @xx_link, align 8, !tbaa !8
  store ptr %186, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %191 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %191, ptr @zz_tmp, align 8, !tbaa !8
  %192 = load ptr, ptr %186, align 8, !tbaa !5
  store ptr %192, ptr %0, align 8, !tbaa !5
  %193 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %194 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %193, ptr %196, align 8, !tbaa !5
  %197 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %197, ptr %194, align 8, !tbaa !5
  %198 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %199 = getelementptr inbounds %struct.LIST, ptr %197, i64 0, i32 1
  store ptr %198, ptr %199, align 8, !tbaa !5
  %200 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %200, ptr @zz_res, align 8, !tbaa !8
  store ptr %169, ptr @zz_hold, align 8, !tbaa !8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %185
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = load ptr, ptr %171, align 8, !tbaa !5
  store ptr %205, ptr @zz_tmp, align 8, !tbaa !8
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  store ptr %204, ptr %171, align 8, !tbaa !5
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %169, ptr %208, align 8, !tbaa !5
  store ptr %205, ptr %206, align 8, !tbaa !5
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1, i32 1
  store ptr %200, ptr %209, align 8, !tbaa !5
  br label %210

210:                                              ; preds = %185, %202
  %211 = getelementptr inbounds %struct.closure_type, ptr %169, i64 0, i32 5
  store ptr %40, ptr %211, align 8, !tbaa !5
  %212 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %213 = zext i8 %212 to i32
  store i32 %213, ptr @zz_size, align 4, !tbaa !10
  %214 = zext i8 %212 to i64
  %215 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %220 = tail call ptr @GetMemory(i32 noundef %213, ptr noundef %219) #6
  br label %223

221:                                              ; preds = %210
  store ptr %216, ptr @zz_hold, align 8, !tbaa !8
  %222 = load ptr, ptr %216, align 8, !tbaa !5
  store ptr %222, ptr %215, align 8, !tbaa !8
  br label %223

223:                                              ; preds = %218, %221
  %224 = phi ptr [ %220, %218 ], [ %216, %221 ]
  %225 = getelementptr inbounds %struct.word_type, ptr %224, i64 0, i32 1
  store i8 0, ptr %225, align 8, !tbaa !5
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1, i32 1
  store ptr %224, ptr %226, align 8, !tbaa !5
  %227 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1
  store ptr %224, ptr %227, align 8, !tbaa !5
  %228 = getelementptr inbounds %struct.LIST, ptr %224, i64 0, i32 1
  store ptr %224, ptr %228, align 8, !tbaa !5
  store ptr %224, ptr %224, align 8, !tbaa !5
  store ptr %224, ptr @xx_link, align 8, !tbaa !8
  store ptr %224, ptr @zz_res, align 8, !tbaa !8
  store ptr %169, ptr @zz_hold, align 8, !tbaa !8
  %229 = load ptr, ptr %169, align 8, !tbaa !5
  store ptr %229, ptr @zz_tmp, align 8, !tbaa !8
  %230 = load ptr, ptr %224, align 8, !tbaa !5
  store ptr %230, ptr %169, align 8, !tbaa !5
  %231 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %232 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %233 = load ptr, ptr %232, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.LIST, ptr %233, i64 0, i32 1
  store ptr %231, ptr %234, align 8, !tbaa !5
  %235 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %235, ptr %232, align 8, !tbaa !5
  %236 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %237 = getelementptr inbounds %struct.LIST, ptr %235, i64 0, i32 1
  store ptr %236, ptr %237, align 8, !tbaa !5
  %238 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %238, ptr @zz_res, align 8, !tbaa !8
  store ptr %26, ptr @zz_hold, align 8, !tbaa !8
  %239 = icmp eq ptr %26, null
  %240 = icmp eq ptr %238, null
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %252, label %242

242:                                              ; preds = %223
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  store ptr %244, ptr @zz_tmp, align 8, !tbaa !8
  %245 = getelementptr inbounds [2 x %struct.LIST], ptr %238, i64 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  store ptr %246, ptr %243, align 8, !tbaa !5
  %247 = getelementptr inbounds [2 x %struct.LIST], ptr %246, i64 0, i64 1, i32 1
  store ptr %26, ptr %247, align 8, !tbaa !5
  store ptr %244, ptr %245, align 8, !tbaa !5
  br label %248

248:                                              ; preds = %150, %242
  %249 = phi ptr [ %244, %242 ], [ %152, %150 ]
  %250 = phi ptr [ %238, %242 ], [ %146, %150 ]
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %249, i64 0, i64 1, i32 1
  store ptr %250, ptr %251, align 8, !tbaa !5
  br label %252

252:                                              ; preds = %47, %248, %30, %223, %131
  %253 = load ptr, ptr %21, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.LIST, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !5
  %256 = load ptr, ptr @CommandOptions, align 8, !tbaa !8
  %257 = icmp eq ptr %255, %256
  br i1 %257, label %258, label %11

258:                                              ; preds = %252, %1
  ret void
}

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare void @ReadPrependDef(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ReadDatabaseDef(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DbCreate(ptr noundef) local_unnamed_addr #2

declare ptr @DbLoad(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FlattenUses() local_unnamed_addr #2

declare void @TransferInit(ptr noundef) local_unnamed_addr #2

declare void @TransferComponent(ptr noundef) local_unnamed_addr #2

declare ptr @LexScanVerbatim(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ParseEnvClosure(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 82
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.69) #6
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call ptr @LexGetToken() #6
  br label %13

13:                                               ; preds = %40, %11
  %14 = phi ptr [ %12, %11 ], [ %41, %40 ]
  %15 = phi ptr [ %0, %11 ], [ %42, %40 ]
  store ptr %14, ptr %3, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  br label %17

17:                                               ; preds = %13, %43
  %18 = load i8, ptr %16, align 8, !tbaa !5
  switch i8 %18, label %43 [
    i8 88, label %45
    i8 102, label %19
    i8 82, label %36
  ]

19:                                               ; preds = %17
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @SetScope(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 0)
  %20 = call ptr @Parse(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 11, ptr noundef nonnull @.str.70, i32 noundef 1, ptr noundef nonnull %21) #6
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, ptr %4, align 4, !tbaa !10
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %31, %29 ], [ 1, %26 ]
  tail call void @PopScope() #6
  %31 = add nuw i32 %30, 1
  %32 = icmp eq i32 %30, %27
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %26
  tail call void @AttachEnv(ptr noundef %15, ptr noundef %20) #6
  %34 = tail call ptr @SetEnv(ptr noundef %20, ptr noundef null) #6
  %35 = tail call ptr @LexGetToken() #6
  br label %40

36:                                               ; preds = %17
  %37 = tail call fastcc ptr @ParseEnvClosure(ptr noundef nonnull %14, ptr noundef %1)
  %38 = tail call ptr @SetEnv(ptr noundef %37, ptr noundef %15) #6
  %39 = tail call ptr @LexGetToken() #6
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ %39, %36 ], [ %35, %33 ]
  %42 = phi ptr [ %38, %36 ], [ %34, %33 ]
  br label %13

43:                                               ; preds = %17
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 12, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %16) #6
  br label %17

45:                                               ; preds = %17
  store ptr %14, ptr @zz_hold, align 8, !tbaa !8
  %46 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 88), align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  store i32 %47, ptr @zz_size, align 4, !tbaa !10
  %48 = zext i8 %46 to i64
  %49 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !8
  store ptr %50, ptr %14, align 8, !tbaa !5
  %51 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %52 = load i32, ptr @zz_size, align 4, !tbaa !10
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %53
  store ptr %51, ptr %54, align 8, !tbaa !8
  %55 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, %15
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load ptr, ptr %15, align 8, !tbaa !5
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %58, %45
  %62 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  %63 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 13, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %62) #6
  %64 = load ptr, ptr %55, align 8, !tbaa !5
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi ptr [ %64, %61 ], [ %56, %58 ]
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %66, %65 ], [ %70, %67 ]
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %67, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  store ptr %15, ptr @xx_hold, align 8, !tbaa !8
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, %15
  br i1 %78, label %82, label %86

79:                                               ; preds = %108
  %80 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi ptr [ %81, %79 ], [ %66, %74 ]
  %84 = phi ptr [ %127, %79 ], [ %15, %74 ]
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %176, label %131

86:                                               ; preds = %74, %108
  %87 = phi ptr [ %129, %108 ], [ %77, %74 ]
  store ptr %87, ptr @xx_link, align 8, !tbaa !8
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, %87
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  store ptr %89, ptr @zz_res, align 8, !tbaa !8
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1
  store ptr %93, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1, i32 1
  store ptr %89, ptr %95, align 8, !tbaa !5
  store ptr %87, ptr %88, align 8, !tbaa !5
  store ptr %87, ptr %92, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %86, %91
  store ptr %87, ptr @zz_hold, align 8, !tbaa !8
  %97 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, %87
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  store ptr %98, ptr @zz_res, align 8, !tbaa !8
  %101 = load ptr, ptr %87, align 8, !tbaa !5
  store ptr %101, ptr %98, align 8, !tbaa !5
  %102 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %103 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.LIST, ptr %104, i64 0, i32 1
  store ptr %102, ptr %105, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  store ptr %103, ptr %106, align 8, !tbaa !5
  store ptr %103, ptr %103, align 8, !tbaa !5
  %107 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %108

108:                                              ; preds = %96, %100
  %109 = phi ptr [ %87, %96 ], [ %107, %100 ]
  store ptr %109, ptr @zz_hold, align 8, !tbaa !8
  %110 = getelementptr inbounds %struct.word_type, ptr %109, i64 0, i32 1
  %111 = load i8, ptr %110, align 8, !tbaa !5
  %112 = add i8 %111, -11
  %113 = icmp ult i8 %112, 2
  %114 = getelementptr inbounds %struct.word_type, ptr %109, i64 0, i32 1, i32 0, i32 1
  %115 = zext i8 %111 to i64
  %116 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %115
  %117 = select i1 %113, ptr %114, ptr %116
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = zext i8 %118 to i32
  store i32 %119, ptr @zz_size, align 4, !tbaa !10
  %120 = zext i8 %118 to i64
  %121 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !8
  store ptr %122, ptr %109, align 8, !tbaa !5
  %123 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %124 = load i32, ptr @zz_size, align 4, !tbaa !10
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %125
  store ptr %123, ptr %126, align 8, !tbaa !8
  %127 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %128 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = icmp eq ptr %129, %127
  br i1 %130, label %79, label %86

131:                                              ; preds = %82, %153
  %132 = phi ptr [ %174, %153 ], [ %83, %82 ]
  store ptr %132, ptr @xx_link, align 8, !tbaa !8
  %133 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = icmp eq ptr %134, %132
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  store ptr %134, ptr @zz_res, align 8, !tbaa !8
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1
  store ptr %138, ptr %139, align 8, !tbaa !5
  %140 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1, i32 1
  store ptr %134, ptr %140, align 8, !tbaa !5
  store ptr %132, ptr %133, align 8, !tbaa !5
  store ptr %132, ptr %137, align 8, !tbaa !5
  br label %141

141:                                              ; preds = %131, %136
  store ptr %132, ptr @zz_hold, align 8, !tbaa !8
  %142 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = icmp eq ptr %143, %132
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  store ptr %143, ptr @zz_res, align 8, !tbaa !8
  %146 = load ptr, ptr %132, align 8, !tbaa !5
  store ptr %146, ptr %143, align 8, !tbaa !5
  %147 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %148 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %147, ptr %150, align 8, !tbaa !5
  %151 = getelementptr inbounds %struct.LIST, ptr %148, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !5
  store ptr %148, ptr %148, align 8, !tbaa !5
  %152 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %153

153:                                              ; preds = %141, %145
  %154 = phi ptr [ %132, %141 ], [ %152, %145 ]
  store ptr %154, ptr @zz_hold, align 8, !tbaa !8
  %155 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1
  %156 = load i8, ptr %155, align 8, !tbaa !5
  %157 = add i8 %156, -11
  %158 = icmp ult i8 %157, 2
  %159 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1, i32 0, i32 1
  %160 = zext i8 %156 to i64
  %161 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %160
  %162 = select i1 %158, ptr %159, ptr %161
  %163 = load i8, ptr %162, align 1, !tbaa !5
  %164 = zext i8 %163 to i32
  store i32 %164, ptr @zz_size, align 4, !tbaa !10
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !8
  store ptr %167, ptr %154, align 8, !tbaa !5
  %168 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %169 = load i32, ptr @zz_size, align 4, !tbaa !10
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %170
  store ptr %168, ptr %171, align 8, !tbaa !8
  %172 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %173 = getelementptr inbounds %struct.LIST, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = icmp eq ptr %174, %172
  br i1 %175, label %176, label %131

176:                                              ; preds = %153, %82
  %177 = phi ptr [ %83, %82 ], [ %172, %153 ]
  store ptr %177, ptr @zz_hold, align 8, !tbaa !8
  %178 = getelementptr inbounds %struct.word_type, ptr %177, i64 0, i32 1
  %179 = load i8, ptr %178, align 8, !tbaa !5
  %180 = add i8 %179, -11
  %181 = icmp ult i8 %180, 2
  %182 = getelementptr inbounds %struct.word_type, ptr %177, i64 0, i32 1, i32 0, i32 1
  %183 = zext i8 %179 to i64
  %184 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %183
  %185 = select i1 %181, ptr %182, ptr %184
  %186 = load i8, ptr %185, align 1, !tbaa !5
  %187 = zext i8 %186 to i32
  store i32 %187, ptr @zz_size, align 4, !tbaa !10
  %188 = zext i8 %186 to i64
  %189 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !8
  store ptr %190, ptr %177, align 8, !tbaa !5
  %191 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %192 = load i32, ptr @zz_size, align 4, !tbaa !10
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %193
  store ptr %191, ptr %194, align 8, !tbaa !8
  %195 = load i8, ptr %75, align 8, !tbaa !5
  %196 = icmp eq i8 %195, 2
  br i1 %196, label %200, label %197

197:                                              ; preds = %176
  %198 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %199 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %198, ptr noundef nonnull @.str.71) #6
  br label %200

200:                                              ; preds = %197, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret ptr %70
}

declare i64 @LexNextTokenPos() local_unnamed_addr #2

declare void @EnvReadInsert(i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i32 @EnvReadRetrieve(i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @LexPush(i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @LexPop() local_unnamed_addr #2

declare void @PopScope() local_unnamed_addr #2

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SuppressVisible() local_unnamed_addr #2

declare void @UnSuppressVisible() local_unnamed_addr #2

declare void @InsertUses(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ChildSymWithCode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @ChildSym(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @TransferBegin(ptr noundef) local_unnamed_addr #2

declare ptr @FilterCreate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare void @TransferEnd(ptr noundef) local_unnamed_addr #2

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !9, i64 8}
!13 = !{!"back_end_rec", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224}
!14 = !{i32 0, i32 3}

; ModuleID = 'src/z05.c'
source_filename = "src/z05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }

@.str = private unnamed_addr constant [43 x i8] c"left brace expected here in %s declaration\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"name of %s file expected here\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"unknown or misspelt symbol %s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"symbol name or %s expected here (%s declaration)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"symbol names missing in %s declaration\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s suffix should be omitted in %s clause\00", align 1
@InMemoryDbIndexes = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"langdef\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"import name expected here\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"import %s not in scope\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%s has %s clause, so cannot be extended\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s symbol name expected here\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"extend symbol %s not in scope\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"keyword %s or %s expected here\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"keyword %s expected here\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"ignoring export list of macro\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"symbol name expected here\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"horizontally\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"precedence\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"associativity\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"%s expected here\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"precedence is too low (%d substituted)\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"precedence is too high (%d substituted)\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"associativity altered to %s\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"cannot find %s parameter name\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [44 x i8] c"opening left brace or @Begin of %s expected\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"exported symbol %s is not defined in %s\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"body parameter %s may not be exported\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"symbol %s exported twice\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"expected opening %s of langdef here\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"%s ignored (name is missing)\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"%s ignored (opening %s is missing)\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"symbol %s unknown or misspelt\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"symbol %s not allowed in macro\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"unexpected end of input\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"%s not expected here\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"unmatched %s in macro\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"symbol name expected after %s\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s %s does not match %s %s\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"%s must follow named parameter %s\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"right parameter of %s must begin with %s\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ReadTokenList: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ReadPrependDef(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %4 = tail call ptr @LexGetToken() #4
  store ptr %4, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.word_type, ptr %4, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 102
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #4
  store ptr %4, ptr @zz_hold, align 8, !tbaa !5
  %10 = load i8, ptr %5, align 8, !tbaa !9
  %11 = add i8 %10, -11
  %12 = icmp ult i8 %11, 2
  %13 = getelementptr inbounds %struct.word_type, ptr %4, i64 0, i32 1, i32 0, i32 1
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %14
  %16 = select i1 %12, ptr %13, ptr %15
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  store i32 %18, ptr @zz_size, align 4, !tbaa !10
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  store ptr %21, ptr %4, align 8, !tbaa !9
  %22 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %23 = load i32, ptr @zz_size, align 4, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %24
  store ptr %22, ptr %25, align 8, !tbaa !5
  br label %41

26:                                               ; preds = %2
  %27 = call ptr @Parse(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i32 noundef 0) #4
  %28 = call ptr @ReplaceWithTidy(ptr noundef %27, i32 noundef 0) #4
  %29 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !9
  %31 = add i8 %30, -11
  %32 = icmp ult i8 %31, 2
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 6, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %29, ptr noundef nonnull @.str.1) #4
  %35 = call i32 @DisposeObject(ptr noundef nonnull %28) #4
  br label %41

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 4
  %38 = icmp eq i32 %0, 114
  %39 = select i1 %38, i32 1, i32 2
  %40 = call zeroext i16 @DefineFile(ptr noundef nonnull %37, ptr noundef nonnull @.str.3, ptr noundef nonnull %29, i32 noundef 6, i32 noundef %39) #4
  br label %41

41:                                               ; preds = %36, %33, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @LexGetToken() local_unnamed_addr #2

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ReadDatabaseDef(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %4 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %5 = zext i8 %4 to i32
  store i32 %5, ptr @zz_size, align 4, !tbaa !10
  %6 = zext i8 %4 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %12 = tail call ptr @GetMemory(i32 noundef %5, ptr noundef %11) #4
  store ptr %12, ptr @zz_hold, align 8, !tbaa !5
  br label %15

13:                                               ; preds = %2
  store ptr %8, ptr @zz_hold, align 8, !tbaa !5
  %14 = load ptr, ptr %8, align 8, !tbaa !9
  store ptr %14, ptr %7, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %12, %10 ], [ %8, %13 ]
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  store i8 17, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1
  store ptr %16, ptr %19, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  store ptr %16, ptr %20, align 8, !tbaa !9
  store ptr %16, ptr %16, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %58, %15
  %22 = tail call ptr @LexGetToken() #4
  store ptr %22, ptr %3, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !9
  switch i8 %24, label %84 [
    i8 2, label %29
    i8 11, label %25
    i8 102, label %102
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !9
  %28 = icmp eq i8 %27, 64
  br i1 %28, label %66, label %84

29:                                               ; preds = %21
  %30 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  store i32 %31, ptr @zz_size, align 4, !tbaa !10
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %38 = tail call ptr @GetMemory(i32 noundef %31, ptr noundef %37) #4
  br label %41

39:                                               ; preds = %29
  store ptr %34, ptr @zz_hold, align 8, !tbaa !5
  %40 = load ptr, ptr %34, align 8, !tbaa !9
  store ptr %40, ptr %33, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi ptr [ %38, %36 ], [ %34, %39 ]
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  store i8 0, ptr %43, align 8, !tbaa !9
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !9
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1
  store ptr %42, ptr %45, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  store ptr %42, ptr %46, align 8, !tbaa !9
  store ptr %42, ptr %42, align 8, !tbaa !9
  store ptr %42, ptr @xx_link, align 8, !tbaa !5
  store ptr %42, ptr @zz_res, align 8, !tbaa !5
  store ptr %16, ptr @zz_hold, align 8, !tbaa !5
  %47 = load ptr, ptr %16, align 8, !tbaa !9
  store ptr %47, ptr @zz_tmp, align 8, !tbaa !5
  %48 = load ptr, ptr %42, align 8, !tbaa !9
  store ptr %48, ptr %16, align 8, !tbaa !9
  %49 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %50 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.LIST, ptr %51, i64 0, i32 1
  store ptr %49, ptr %52, align 8, !tbaa !9
  %53 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %53, ptr %50, align 8, !tbaa !9
  %54 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.LIST, ptr %53, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !9
  %56 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %56, ptr @zz_res, align 8, !tbaa !5
  store ptr %22, ptr @zz_hold, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %41, %59, %66
  br label %21

59:                                               ; preds = %41
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  store ptr %61, ptr @zz_tmp, align 8, !tbaa !5
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  store ptr %63, ptr %60, align 8, !tbaa !9
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1, i32 1
  store ptr %22, ptr %64, align 8, !tbaa !9
  store ptr %61, ptr %62, align 8, !tbaa !9
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1, i32 1
  store ptr %56, ptr %65, align 8, !tbaa !9
  br label %58

66:                                               ; preds = %25
  %67 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 7, ptr noundef nonnull @.str.5, i32 noundef 2, ptr noundef nonnull %23, ptr noundef nonnull %26) #4
  store ptr %22, ptr @zz_hold, align 8, !tbaa !5
  %68 = load i8, ptr %23, align 8, !tbaa !9
  %69 = add i8 %68, -11
  %70 = icmp ult i8 %69, 2
  %71 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 1
  %72 = zext i8 %68 to i64
  %73 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %72
  %74 = select i1 %70, ptr %71, ptr %73
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  store i32 %76, ptr @zz_size, align 4, !tbaa !10
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  store ptr %79, ptr %22, align 8, !tbaa !9
  %80 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %81 = load i32, ptr @zz_size, align 4, !tbaa !10
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !5
  br label %58

84:                                               ; preds = %21, %25
  %85 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %23, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #4
  store ptr %22, ptr @zz_hold, align 8, !tbaa !5
  %86 = load i8, ptr %23, align 8, !tbaa !9
  %87 = add i8 %86, -11
  %88 = icmp ult i8 %87, 2
  %89 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 1
  %90 = zext i8 %86 to i64
  %91 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %90
  %92 = select i1 %88, ptr %89, ptr %91
  %93 = load i8, ptr %92, align 1, !tbaa !9
  %94 = zext i8 %93 to i32
  store i32 %94, ptr @zz_size, align 4, !tbaa !10
  %95 = zext i8 %93 to i64
  %96 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  store ptr %97, ptr %22, align 8, !tbaa !9
  %98 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %99 = load i32, ptr @zz_size, align 4, !tbaa !10
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %100
  store ptr %98, ptr %101, align 8, !tbaa !5
  br label %132

102:                                              ; preds = %21
  %103 = load ptr, ptr %20, align 8, !tbaa !9
  %104 = icmp eq ptr %103, %16
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef nonnull %23, ptr noundef nonnull @.str.8) #4
  br label %107

107:                                              ; preds = %105, %102
  %108 = call ptr @Parse(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i32 noundef 0) #4
  %109 = call ptr @ReplaceWithTidy(ptr noundef %108, i32 noundef 0) #4
  %110 = getelementptr inbounds %struct.word_type, ptr %109, i64 0, i32 1
  %111 = load i8, ptr %110, align 8, !tbaa !9
  %112 = add i8 %111, -11
  %113 = icmp ult i8 %112, 2
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %110, ptr noundef nonnull @.str.8) #4
  %116 = call i32 @DisposeObject(ptr noundef nonnull %109) #4
  br label %132

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.word_type, ptr %109, i64 0, i32 4
  %119 = call i32 @StringEndsWith(ptr noundef nonnull %118, ptr noundef nonnull @.str.10) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 47, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %110, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #4
  %123 = call i32 @DisposeObject(ptr noundef nonnull %109) #4
  br label %132

124:                                              ; preds = %117
  %125 = load ptr, ptr %20, align 8, !tbaa !9
  %126 = icmp eq ptr %125, %16
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = icmp eq i32 %0, 116
  %129 = select i1 %128, i32 3, i32 4
  %130 = load i32, ptr @InMemoryDbIndexes, align 4, !tbaa !10
  %131 = call ptr @DbLoad(ptr noundef nonnull %109, i32 noundef %129, i32 noundef 1, ptr noundef nonnull %16, i32 noundef %130) #4
  br label %132

132:                                              ; preds = %124, %127, %121, %114, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret void
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @StringEndsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DbLoad(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ReadDefinitions(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %6, ptr %5, align 8, !tbaa !5
  %7 = icmp ne i8 %2, -113
  %8 = icmp eq i8 %2, -111
  %9 = getelementptr inbounds %struct.symbol_type, ptr %1, i64 0, i32 13
  br label %10

10:                                               ; preds = %1361, %3
  %11 = phi ptr [ %6, %3 ], [ %1362, %1361 ]
  %12 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !9
  br i1 %7, label %14, label %23

14:                                               ; preds = %10
  %15 = icmp eq i8 %13, 11
  br i1 %15, label %16, label %1365

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 4
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(6) @.str.12) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(7) @.str.13) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %1365

23:                                               ; preds = %10
  switch i8 %13, label %1365 [
    i8 11, label %24
    i8 114, label %111
    i8 115, label %111
    i8 116, label %132
    i8 117, label %132
  ]

24:                                               ; preds = %20, %16, %23
  %25 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 4
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(8) @.str.14) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %153

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %29 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %30 = zext i8 %29 to i32
  store i32 %30, ptr @zz_size, align 4, !tbaa !10
  %31 = zext i8 %29 to i64
  %32 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %37 = call ptr @GetMemory(i32 noundef %30, ptr noundef %36) #4
  store ptr %37, ptr @zz_hold, align 8, !tbaa !5
  br label %40

38:                                               ; preds = %28
  store ptr %33, ptr @zz_hold, align 8, !tbaa !5
  %39 = load ptr, ptr %33, align 8, !tbaa !9
  store ptr %39, ptr %32, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %37, %35 ], [ %33, %38 ]
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  store i8 17, ptr %42, align 8, !tbaa !9
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1, i32 1
  store ptr %41, ptr %43, align 8, !tbaa !9
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1
  store ptr %41, ptr %44, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  store ptr %41, ptr %45, align 8, !tbaa !9
  store ptr %41, ptr %41, align 8, !tbaa !9
  br label %46

46:                                               ; preds = %86, %40
  %47 = call ptr @LexGetToken() #4
  store ptr %47, ptr %4, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !9
  switch i8 %49, label %87 [
    i8 11, label %50
    i8 12, label %50
    i8 102, label %106
  ]

50:                                               ; preds = %46, %46
  %51 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  store i32 %52, ptr @zz_size, align 4, !tbaa !10
  %53 = zext i8 %51 to i64
  %54 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %59 = call ptr @GetMemory(i32 noundef %52, ptr noundef %58) #4
  br label %62

60:                                               ; preds = %50
  store ptr %55, ptr @zz_hold, align 8, !tbaa !5
  %61 = load ptr, ptr %55, align 8, !tbaa !9
  store ptr %61, ptr %54, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi ptr [ %59, %57 ], [ %55, %60 ]
  %64 = getelementptr inbounds %struct.word_type, ptr %63, i64 0, i32 1
  store i8 0, ptr %64, align 8, !tbaa !9
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1, i32 1
  store ptr %63, ptr %65, align 8, !tbaa !9
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1
  store ptr %63, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.LIST, ptr %63, i64 0, i32 1
  store ptr %63, ptr %67, align 8, !tbaa !9
  store ptr %63, ptr %63, align 8, !tbaa !9
  store ptr %63, ptr @xx_link, align 8, !tbaa !5
  store ptr %63, ptr @zz_res, align 8, !tbaa !5
  store ptr %41, ptr @zz_hold, align 8, !tbaa !5
  %68 = load ptr, ptr %41, align 8, !tbaa !9
  store ptr %68, ptr @zz_tmp, align 8, !tbaa !5
  %69 = load ptr, ptr %63, align 8, !tbaa !9
  store ptr %69, ptr %41, align 8, !tbaa !9
  %70 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %71 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  store ptr %70, ptr %73, align 8, !tbaa !9
  %74 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %74, ptr %71, align 8, !tbaa !9
  %75 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.LIST, ptr %74, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !9
  %77 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %77, ptr @zz_res, align 8, !tbaa !5
  store ptr %47, ptr @zz_hold, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %62
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  store ptr %81, ptr @zz_tmp, align 8, !tbaa !5
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  store ptr %83, ptr %80, align 8, !tbaa !9
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1, i32 1
  store ptr %47, ptr %84, align 8, !tbaa !9
  store ptr %81, ptr %82, align 8, !tbaa !9
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  store ptr %77, ptr %85, align 8, !tbaa !9
  br label %86

86:                                               ; preds = %79, %62
  br label %46

87:                                               ; preds = %46
  %88 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %89 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %88, ptr noundef nonnull @.str.7) #4
  store ptr %47, ptr @zz_hold, align 8, !tbaa !5
  %90 = load i8, ptr %88, align 8, !tbaa !9
  %91 = add i8 %90, -11
  %92 = icmp ult i8 %91, 2
  %93 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1, i32 0, i32 1
  %94 = zext i8 %90 to i64
  %95 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %94
  %96 = select i1 %92, ptr %93, ptr %95
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i32
  store i32 %98, ptr @zz_size, align 4, !tbaa !10
  %99 = zext i8 %97 to i64
  %100 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  store ptr %101, ptr %47, align 8, !tbaa !9
  %102 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %103 = load i32, ptr @zz_size, align 4, !tbaa !10
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %104
  store ptr %102, ptr %105, align 8, !tbaa !5
  br label %109

106:                                              ; preds = %46
  %107 = call ptr @Parse(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 0, i32 noundef 0) #4
  %108 = call ptr @ReplaceWithTidy(ptr noundef %107, i32 noundef 0) #4
  call void @LanguageDefine(ptr noundef nonnull %41, ptr noundef %108) #4
  br label %109

109:                                              ; preds = %87, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  %110 = call ptr @LexGetToken() #4
  store ptr %110, ptr %5, align 8, !tbaa !5
  br label %1361

111:                                              ; preds = %23, %23
  %112 = zext nneg i8 %13 to i32
  call void @ReadPrependDef(i32 noundef %112, ptr noundef %1)
  %113 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %113, ptr @zz_hold, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1
  %115 = load i8, ptr %114, align 8, !tbaa !9
  %116 = add i8 %115, -11
  %117 = icmp ult i8 %116, 2
  %118 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1, i32 0, i32 1
  %119 = zext i8 %115 to i64
  %120 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %119
  %121 = select i1 %117, ptr %118, ptr %120
  %122 = load i8, ptr %121, align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  store i32 %123, ptr @zz_size, align 4, !tbaa !10
  %124 = zext i8 %122 to i64
  %125 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  store ptr %126, ptr %113, align 8, !tbaa !9
  %127 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %128 = load i32, ptr @zz_size, align 4, !tbaa !10
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %129
  store ptr %127, ptr %130, align 8, !tbaa !5
  %131 = call ptr @LexGetToken() #4
  store ptr %131, ptr %5, align 8, !tbaa !5
  br label %1361

132:                                              ; preds = %23, %23
  %133 = zext nneg i8 %13 to i32
  call void @ReadDatabaseDef(i32 noundef %133, ptr noundef %1)
  %134 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %134, ptr @zz_hold, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1
  %136 = load i8, ptr %135, align 8, !tbaa !9
  %137 = add i8 %136, -11
  %138 = icmp ult i8 %137, 2
  %139 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1, i32 0, i32 1
  %140 = zext i8 %136 to i64
  %141 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %140
  %142 = select i1 %138, ptr %139, ptr %141
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = zext i8 %143 to i32
  store i32 %144, ptr @zz_size, align 4, !tbaa !10
  %145 = zext i8 %143 to i64
  %146 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  store ptr %147, ptr %134, align 8, !tbaa !9
  %148 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %149 = load i32, ptr @zz_size, align 4, !tbaa !10
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %150
  store ptr %148, ptr %151, align 8, !tbaa !5
  %152 = call ptr @LexGetToken() #4
  store ptr %152, ptr %5, align 8, !tbaa !5
  br label %1361

153:                                              ; preds = %24
  %154 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.15) #5
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %153
  %157 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %156
  %160 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(6) @.str.12) #5
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %159
  %163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(7) @.str.13) #5
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(7) @.str.17) #5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(7) @.str.18) #5
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %1365

171:                                              ; preds = %168, %165, %162, %159, %156, %153
  call void @BodyParNotAllowed() #4
  %172 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %173 = zext i8 %172 to i32
  store i32 %173, ptr @zz_size, align 4, !tbaa !10
  %174 = zext i8 %172 to i64
  %175 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %180 = call ptr @GetMemory(i32 noundef %173, ptr noundef %179) #4
  store ptr %180, ptr @zz_hold, align 8, !tbaa !5
  br label %183

181:                                              ; preds = %171
  store ptr %176, ptr @zz_hold, align 8, !tbaa !5
  %182 = load ptr, ptr %176, align 8, !tbaa !9
  store ptr %182, ptr %175, align 8, !tbaa !5
  br label %183

183:                                              ; preds = %178, %181
  %184 = phi ptr [ %180, %178 ], [ %176, %181 ]
  %185 = getelementptr inbounds %struct.word_type, ptr %184, i64 0, i32 1
  store i8 17, ptr %185, align 8, !tbaa !9
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1, i32 1
  store ptr %184, ptr %186, align 8, !tbaa !9
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  store ptr %184, ptr %187, align 8, !tbaa !9
  %188 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %184, ptr %188, align 8, !tbaa !9
  store ptr %184, ptr %184, align 8, !tbaa !9
  %189 = load ptr, ptr %5, align 8, !tbaa !5
  %190 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1
  %191 = load i8, ptr %190, align 8, !tbaa !9
  %192 = icmp eq i8 %191, 11
  br i1 %192, label %193, label %446

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 4
  %195 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(7) @.str.13) #5
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %319

197:                                              ; preds = %193
  store ptr %189, ptr @zz_hold, align 8, !tbaa !5
  %198 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1, i32 0, i32 1
  %199 = load i8, ptr %198, align 1, !tbaa !9
  %200 = zext i8 %199 to i32
  store i32 %200, ptr @zz_size, align 4, !tbaa !10
  %201 = zext i8 %199 to i64
  %202 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  store ptr %203, ptr %189, align 8, !tbaa !9
  %204 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %205 = load i32, ptr @zz_size, align 4, !tbaa !10
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %206
  store ptr %204, ptr %207, align 8, !tbaa !5
  br label %208

208:                                              ; preds = %277, %197
  %209 = phi i32 [ 0, %197 ], [ %238, %277 ]
  br label %210

210:                                              ; preds = %298, %208
  %211 = call ptr @LexGetToken() #4
  store ptr %211, ptr %5, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !9
  switch i8 %213, label %446 [
    i8 2, label %227
    i8 11, label %214
  ]

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 4
  %216 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(7) @.str.18) #5
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %446, label %218

218:                                              ; preds = %214
  %219 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(4) @.str.15) #5
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %446, label %221

221:                                              ; preds = %218
  %222 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %446, label %224

224:                                              ; preds = %221
  %225 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(6) @.str.12) #5
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %446, label %299

227:                                              ; preds = %210
  %228 = getelementptr inbounds %struct.closure_type, ptr %211, i64 0, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !9
  %230 = getelementptr inbounds %struct.word_type, ptr %229, i64 0, i32 1
  %231 = load i8, ptr %230, align 8, !tbaa !9
  %232 = icmp eq i8 %231, -113
  br i1 %232, label %233, label %278

233:                                              ; preds = %227
  call void @PushScope(ptr noundef nonnull %229, i32 noundef 0, i32 noundef 1) #4
  %234 = load ptr, ptr %5, align 8, !tbaa !5
  %235 = getelementptr inbounds %struct.closure_type, ptr %234, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !9
  %237 = icmp eq ptr %236, %1
  %238 = select i1 %237, i32 1, i32 %209
  %239 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %240 = zext i8 %239 to i32
  store i32 %240, ptr @zz_size, align 4, !tbaa !10
  %241 = zext i8 %239 to i64
  %242 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %233
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %247 = call ptr @GetMemory(i32 noundef %240, ptr noundef %246) #4
  br label %250

248:                                              ; preds = %233
  store ptr %243, ptr @zz_hold, align 8, !tbaa !5
  %249 = load ptr, ptr %243, align 8, !tbaa !9
  store ptr %249, ptr %242, align 8, !tbaa !5
  br label %250

250:                                              ; preds = %245, %248
  %251 = phi ptr [ %247, %245 ], [ %243, %248 ]
  %252 = getelementptr inbounds %struct.word_type, ptr %251, i64 0, i32 1
  store i8 0, ptr %252, align 8, !tbaa !9
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  store ptr %251, ptr %253, align 8, !tbaa !9
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1
  store ptr %251, ptr %254, align 8, !tbaa !9
  %255 = getelementptr inbounds %struct.LIST, ptr %251, i64 0, i32 1
  store ptr %251, ptr %255, align 8, !tbaa !9
  store ptr %251, ptr %251, align 8, !tbaa !9
  store ptr %251, ptr @xx_link, align 8, !tbaa !5
  store ptr %251, ptr @zz_res, align 8, !tbaa !5
  store ptr %184, ptr @zz_hold, align 8, !tbaa !5
  %256 = load ptr, ptr %184, align 8, !tbaa !9
  store ptr %256, ptr @zz_tmp, align 8, !tbaa !5
  %257 = load ptr, ptr %251, align 8, !tbaa !9
  store ptr %257, ptr %184, align 8, !tbaa !9
  %258 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %259 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %260 = load ptr, ptr %259, align 8, !tbaa !9
  %261 = getelementptr inbounds %struct.LIST, ptr %260, i64 0, i32 1
  store ptr %258, ptr %261, align 8, !tbaa !9
  %262 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %262, ptr %259, align 8, !tbaa !9
  %263 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %264 = getelementptr inbounds %struct.LIST, ptr %262, i64 0, i32 1
  store ptr %263, ptr %264, align 8, !tbaa !9
  %265 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %265, ptr @zz_res, align 8, !tbaa !5
  %266 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %266, ptr @zz_hold, align 8, !tbaa !5
  %267 = icmp eq ptr %266, null
  %268 = icmp eq ptr %265, null
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %277, label %270

270:                                              ; preds = %250
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %266, i64 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !9
  store ptr %272, ptr @zz_tmp, align 8, !tbaa !5
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %265, i64 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !9
  store ptr %274, ptr %271, align 8, !tbaa !9
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %274, i64 0, i64 1, i32 1
  store ptr %266, ptr %275, align 8, !tbaa !9
  store ptr %272, ptr %273, align 8, !tbaa !9
  %276 = getelementptr inbounds [2 x %struct.LIST], ptr %272, i64 0, i64 1, i32 1
  store ptr %265, ptr %276, align 8, !tbaa !9
  br label %277

277:                                              ; preds = %270, %250
  br label %208

278:                                              ; preds = %227
  %279 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 26, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %212) #4
  %280 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %280, ptr @zz_hold, align 8, !tbaa !5
  %281 = getelementptr inbounds %struct.word_type, ptr %280, i64 0, i32 1
  %282 = load i8, ptr %281, align 8, !tbaa !9
  %283 = add i8 %282, -11
  %284 = icmp ult i8 %283, 2
  %285 = getelementptr inbounds %struct.word_type, ptr %280, i64 0, i32 1, i32 0, i32 1
  %286 = zext i8 %282 to i64
  %287 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %286
  %288 = select i1 %284, ptr %285, ptr %287
  %289 = load i8, ptr %288, align 1, !tbaa !9
  %290 = zext i8 %289 to i32
  store i32 %290, ptr @zz_size, align 4, !tbaa !10
  %291 = zext i8 %289 to i64
  %292 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  store ptr %293, ptr %280, align 8, !tbaa !9
  %294 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %295 = load i32, ptr @zz_size, align 4, !tbaa !10
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %296
  store ptr %294, ptr %297, align 8, !tbaa !5
  br label %298

298:                                              ; preds = %278, %299
  br label %210

299:                                              ; preds = %224
  %300 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 27, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %212, ptr noundef nonnull %215) #4
  %301 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %301, ptr @zz_hold, align 8, !tbaa !5
  %302 = getelementptr inbounds %struct.word_type, ptr %301, i64 0, i32 1
  %303 = load i8, ptr %302, align 8, !tbaa !9
  %304 = add i8 %303, -11
  %305 = icmp ult i8 %304, 2
  %306 = getelementptr inbounds %struct.word_type, ptr %301, i64 0, i32 1, i32 0, i32 1
  %307 = zext i8 %303 to i64
  %308 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %307
  %309 = select i1 %305, ptr %306, ptr %308
  %310 = load i8, ptr %309, align 1, !tbaa !9
  %311 = zext i8 %310 to i32
  store i32 %311, ptr @zz_size, align 4, !tbaa !10
  %312 = zext i8 %310 to i64
  %313 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !5
  store ptr %314, ptr %301, align 8, !tbaa !9
  %315 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %316 = load i32, ptr @zz_size, align 4, !tbaa !10
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %317
  store ptr %315, ptr %318, align 8, !tbaa !5
  br label %298

319:                                              ; preds = %193
  %320 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(7) @.str.17) #5
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %446

322:                                              ; preds = %319
  store ptr %189, ptr @zz_hold, align 8, !tbaa !5
  %323 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1, i32 0, i32 1
  %324 = load i8, ptr %323, align 1, !tbaa !9
  %325 = zext i8 %324 to i32
  store i32 %325, ptr @zz_size, align 4, !tbaa !10
  %326 = zext i8 %324 to i64
  %327 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !5
  store ptr %328, ptr %189, align 8, !tbaa !9
  %329 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %330 = load i32, ptr @zz_size, align 4, !tbaa !10
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %331
  store ptr %329, ptr %332, align 8, !tbaa !5
  br label %333

333:                                              ; preds = %405, %322
  %334 = phi ptr [ %1, %322 ], [ %366, %405 ]
  br label %335

335:                                              ; preds = %358, %333
  %336 = call ptr @LexGetToken() #4
  store ptr %336, ptr %5, align 8, !tbaa !5
  %337 = getelementptr inbounds %struct.word_type, ptr %336, i64 0, i32 1
  %338 = load i8, ptr %337, align 8, !tbaa !9
  switch i8 %338, label %446 [
    i8 2, label %349
    i8 11, label %339
  ]

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.word_type, ptr %336, i64 0, i32 4
  %341 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %340, ptr noundef nonnull dereferenceable(7) @.str.18) #5
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %446, label %343

343:                                              ; preds = %339
  %344 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %340, ptr noundef nonnull dereferenceable(4) @.str.15) #5
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %446, label %346

346:                                              ; preds = %343
  %347 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %340, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %446, label %426

349:                                              ; preds = %335
  %350 = getelementptr inbounds %struct.closure_type, ptr %336, i64 0, i32 5
  %351 = load ptr, ptr %350, align 8, !tbaa !9
  %352 = getelementptr inbounds %struct.symbol_type, ptr %351, i64 0, i32 9
  %353 = load ptr, ptr %352, align 8, !tbaa !9
  %354 = icmp eq ptr %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %349
  %356 = call ptr @SymName(ptr noundef nonnull %351) #4
  %357 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 48, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %337, ptr noundef %356, ptr noundef nonnull @.str.13) #4
  br label %358

358:                                              ; preds = %355, %406, %426
  br label %335

359:                                              ; preds = %349
  %360 = getelementptr inbounds %struct.word_type, ptr %351, i64 0, i32 1
  %361 = load i8, ptr %360, align 8, !tbaa !9
  %362 = icmp eq i8 %361, -113
  br i1 %362, label %363, label %406

363:                                              ; preds = %359
  call void @PushScope(ptr noundef nonnull %351, i32 noundef 0, i32 noundef 0) #4
  %364 = load ptr, ptr %5, align 8, !tbaa !5
  %365 = getelementptr inbounds %struct.closure_type, ptr %364, i64 0, i32 5
  %366 = load ptr, ptr %365, align 8, !tbaa !9
  %367 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %368 = zext i8 %367 to i32
  store i32 %368, ptr @zz_size, align 4, !tbaa !10
  %369 = zext i8 %367 to i64
  %370 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !5
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %363
  %374 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %375 = call ptr @GetMemory(i32 noundef %368, ptr noundef %374) #4
  br label %378

376:                                              ; preds = %363
  store ptr %371, ptr @zz_hold, align 8, !tbaa !5
  %377 = load ptr, ptr %371, align 8, !tbaa !9
  store ptr %377, ptr %370, align 8, !tbaa !5
  br label %378

378:                                              ; preds = %373, %376
  %379 = phi ptr [ %375, %373 ], [ %371, %376 ]
  %380 = getelementptr inbounds %struct.word_type, ptr %379, i64 0, i32 1
  store i8 0, ptr %380, align 8, !tbaa !9
  %381 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1, i32 1
  store ptr %379, ptr %381, align 8, !tbaa !9
  %382 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1
  store ptr %379, ptr %382, align 8, !tbaa !9
  %383 = getelementptr inbounds %struct.LIST, ptr %379, i64 0, i32 1
  store ptr %379, ptr %383, align 8, !tbaa !9
  store ptr %379, ptr %379, align 8, !tbaa !9
  store ptr %379, ptr @xx_link, align 8, !tbaa !5
  store ptr %379, ptr @zz_res, align 8, !tbaa !5
  store ptr %184, ptr @zz_hold, align 8, !tbaa !5
  %384 = load ptr, ptr %184, align 8, !tbaa !9
  store ptr %384, ptr @zz_tmp, align 8, !tbaa !5
  %385 = load ptr, ptr %379, align 8, !tbaa !9
  store ptr %385, ptr %184, align 8, !tbaa !9
  %386 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %387 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %388 = load ptr, ptr %387, align 8, !tbaa !9
  %389 = getelementptr inbounds %struct.LIST, ptr %388, i64 0, i32 1
  store ptr %386, ptr %389, align 8, !tbaa !9
  %390 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %390, ptr %387, align 8, !tbaa !9
  %391 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %392 = getelementptr inbounds %struct.LIST, ptr %390, i64 0, i32 1
  store ptr %391, ptr %392, align 8, !tbaa !9
  %393 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %393, ptr @zz_res, align 8, !tbaa !5
  %394 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %394, ptr @zz_hold, align 8, !tbaa !5
  %395 = icmp eq ptr %394, null
  %396 = icmp eq ptr %393, null
  %397 = select i1 %395, i1 true, i1 %396
  br i1 %397, label %405, label %398

398:                                              ; preds = %378
  %399 = getelementptr inbounds [2 x %struct.LIST], ptr %394, i64 0, i64 1
  %400 = load ptr, ptr %399, align 8, !tbaa !9
  store ptr %400, ptr @zz_tmp, align 8, !tbaa !5
  %401 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !9
  store ptr %402, ptr %399, align 8, !tbaa !9
  %403 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1, i32 1
  store ptr %394, ptr %403, align 8, !tbaa !9
  store ptr %400, ptr %401, align 8, !tbaa !9
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %400, i64 0, i64 1, i32 1
  store ptr %393, ptr %404, align 8, !tbaa !9
  br label %405

405:                                              ; preds = %398, %378
  br label %333

406:                                              ; preds = %359
  %407 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 28, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef nonnull %337, ptr noundef nonnull @.str.17) #4
  %408 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %408, ptr @zz_hold, align 8, !tbaa !5
  %409 = getelementptr inbounds %struct.word_type, ptr %408, i64 0, i32 1
  %410 = load i8, ptr %409, align 8, !tbaa !9
  %411 = add i8 %410, -11
  %412 = icmp ult i8 %411, 2
  %413 = getelementptr inbounds %struct.word_type, ptr %408, i64 0, i32 1, i32 0, i32 1
  %414 = zext i8 %410 to i64
  %415 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %414
  %416 = select i1 %412, ptr %413, ptr %415
  %417 = load i8, ptr %416, align 1, !tbaa !9
  %418 = zext i8 %417 to i32
  store i32 %418, ptr @zz_size, align 4, !tbaa !10
  %419 = zext i8 %417 to i64
  %420 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !5
  store ptr %421, ptr %408, align 8, !tbaa !9
  %422 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %423 = load i32, ptr @zz_size, align 4, !tbaa !10
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %424
  store ptr %422, ptr %425, align 8, !tbaa !5
  br label %358

426:                                              ; preds = %346
  %427 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 29, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef nonnull %337, ptr noundef nonnull %340) #4
  %428 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %428, ptr @zz_hold, align 8, !tbaa !5
  %429 = getelementptr inbounds %struct.word_type, ptr %428, i64 0, i32 1
  %430 = load i8, ptr %429, align 8, !tbaa !9
  %431 = add i8 %430, -11
  %432 = icmp ult i8 %431, 2
  %433 = getelementptr inbounds %struct.word_type, ptr %428, i64 0, i32 1, i32 0, i32 1
  %434 = zext i8 %430 to i64
  %435 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %434
  %436 = select i1 %432, ptr %433, ptr %435
  %437 = load i8, ptr %436, align 1, !tbaa !9
  %438 = zext i8 %437 to i32
  store i32 %438, ptr @zz_size, align 4, !tbaa !10
  %439 = zext i8 %437 to i64
  %440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !5
  store ptr %441, ptr %428, align 8, !tbaa !9
  %442 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %443 = load i32, ptr @zz_size, align 4, !tbaa !10
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %444
  store ptr %442, ptr %445, align 8, !tbaa !5
  br label %358

446:                                              ; preds = %335, %343, %339, %346, %210, %224, %214, %218, %221, %183, %319
  %447 = phi ptr [ %1, %319 ], [ %1, %183 ], [ %1, %221 ], [ %1, %218 ], [ %1, %214 ], [ %1, %224 ], [ %1, %210 ], [ %334, %346 ], [ %334, %339 ], [ %334, %343 ], [ %334, %335 ]
  %448 = phi i32 [ 0, %319 ], [ 0, %183 ], [ %209, %221 ], [ %209, %218 ], [ %209, %214 ], [ %209, %224 ], [ %209, %210 ], [ 0, %346 ], [ 0, %339 ], [ 0, %343 ], [ 0, %335 ]
  %449 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %450 = zext i8 %449 to i32
  store i32 %450, ptr @zz_size, align 4, !tbaa !10
  %451 = zext i8 %449 to i64
  %452 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !5
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %458

455:                                              ; preds = %446
  %456 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %457 = call ptr @GetMemory(i32 noundef %450, ptr noundef %456) #4
  store ptr %457, ptr @zz_hold, align 8, !tbaa !5
  br label %460

458:                                              ; preds = %446
  store ptr %453, ptr @zz_hold, align 8, !tbaa !5
  %459 = load ptr, ptr %453, align 8, !tbaa !9
  store ptr %459, ptr %452, align 8, !tbaa !5
  br label %460

460:                                              ; preds = %455, %458
  %461 = phi ptr [ %457, %455 ], [ %453, %458 ]
  %462 = getelementptr inbounds %struct.word_type, ptr %461, i64 0, i32 1
  store i8 17, ptr %462, align 8, !tbaa !9
  %463 = getelementptr inbounds [2 x %struct.LIST], ptr %461, i64 0, i64 1, i32 1
  store ptr %461, ptr %463, align 8, !tbaa !9
  %464 = getelementptr inbounds [2 x %struct.LIST], ptr %461, i64 0, i64 1
  store ptr %461, ptr %464, align 8, !tbaa !9
  %465 = getelementptr inbounds %struct.LIST, ptr %461, i64 0, i32 1
  store ptr %461, ptr %465, align 8, !tbaa !9
  store ptr %461, ptr %461, align 8, !tbaa !9
  %466 = load ptr, ptr %5, align 8, !tbaa !5
  %467 = getelementptr inbounds %struct.word_type, ptr %466, i64 0, i32 1
  %468 = load i8, ptr %467, align 8, !tbaa !9
  %469 = icmp eq i8 %468, 11
  br i1 %469, label %470, label %553

470:                                              ; preds = %460
  %471 = getelementptr inbounds %struct.word_type, ptr %466, i64 0, i32 4
  %472 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %471, ptr noundef nonnull dereferenceable(7) @.str.18) #5
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %553

474:                                              ; preds = %470
  store ptr %466, ptr @zz_hold, align 8, !tbaa !5
  %475 = getelementptr inbounds %struct.word_type, ptr %466, i64 0, i32 1, i32 0, i32 1
  %476 = load i8, ptr %475, align 1, !tbaa !9
  %477 = zext i8 %476 to i32
  store i32 %477, ptr @zz_size, align 4, !tbaa !10
  %478 = zext i8 %476 to i64
  %479 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  store ptr %480, ptr %466, align 8, !tbaa !9
  %481 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %482 = load i32, ptr @zz_size, align 4, !tbaa !10
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %483
  store ptr %481, ptr %484, align 8, !tbaa !5
  call void @SuppressScope() #4
  %485 = call ptr @LexGetToken() #4
  store ptr %485, ptr %5, align 8, !tbaa !5
  %486 = getelementptr inbounds %struct.word_type, ptr %485, i64 0, i32 1
  %487 = load i8, ptr %486, align 8, !tbaa !9
  %488 = add i8 %487, -11
  %489 = icmp ult i8 %488, 2
  br i1 %489, label %490, label %552

490:                                              ; preds = %474, %546
  %491 = phi i8 [ %549, %546 ], [ %487, %474 ]
  %492 = phi ptr [ %547, %546 ], [ %485, %474 ]
  %493 = icmp eq i8 %491, 11
  br i1 %493, label %494, label %507

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.word_type, ptr %492, i64 0, i32 4
  %496 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %495, ptr noundef nonnull dereferenceable(4) @.str.15) #5
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %552, label %498

498:                                              ; preds = %494
  %499 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %495, ptr noundef nonnull dereferenceable(7) @.str.13) #5
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %552, label %501

501:                                              ; preds = %498
  %502 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %495, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %552, label %504

504:                                              ; preds = %501
  %505 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %495, ptr noundef nonnull dereferenceable(7) @.str.17) #5
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %552, label %507

507:                                              ; preds = %490, %504
  %508 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %509 = zext i8 %508 to i32
  store i32 %509, ptr @zz_size, align 4, !tbaa !10
  %510 = zext i8 %508 to i64
  %511 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %510
  %512 = load ptr, ptr %511, align 8, !tbaa !5
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %517

514:                                              ; preds = %507
  %515 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %516 = call ptr @GetMemory(i32 noundef %509, ptr noundef %515) #4
  br label %519

517:                                              ; preds = %507
  store ptr %512, ptr @zz_hold, align 8, !tbaa !5
  %518 = load ptr, ptr %512, align 8, !tbaa !9
  store ptr %518, ptr %511, align 8, !tbaa !5
  br label %519

519:                                              ; preds = %514, %517
  %520 = phi ptr [ %516, %514 ], [ %512, %517 ]
  %521 = getelementptr inbounds %struct.word_type, ptr %520, i64 0, i32 1
  store i8 0, ptr %521, align 8, !tbaa !9
  %522 = getelementptr inbounds [2 x %struct.LIST], ptr %520, i64 0, i64 1, i32 1
  store ptr %520, ptr %522, align 8, !tbaa !9
  %523 = getelementptr inbounds [2 x %struct.LIST], ptr %520, i64 0, i64 1
  store ptr %520, ptr %523, align 8, !tbaa !9
  %524 = getelementptr inbounds %struct.LIST, ptr %520, i64 0, i32 1
  store ptr %520, ptr %524, align 8, !tbaa !9
  store ptr %520, ptr %520, align 8, !tbaa !9
  store ptr %520, ptr @xx_link, align 8, !tbaa !5
  store ptr %520, ptr @zz_res, align 8, !tbaa !5
  store ptr %461, ptr @zz_hold, align 8, !tbaa !5
  %525 = load ptr, ptr %461, align 8, !tbaa !9
  store ptr %525, ptr @zz_tmp, align 8, !tbaa !5
  %526 = load ptr, ptr %520, align 8, !tbaa !9
  store ptr %526, ptr %461, align 8, !tbaa !9
  %527 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %528 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %529 = load ptr, ptr %528, align 8, !tbaa !9
  %530 = getelementptr inbounds %struct.LIST, ptr %529, i64 0, i32 1
  store ptr %527, ptr %530, align 8, !tbaa !9
  %531 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %531, ptr %528, align 8, !tbaa !9
  %532 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %533 = getelementptr inbounds %struct.LIST, ptr %531, i64 0, i32 1
  store ptr %532, ptr %533, align 8, !tbaa !9
  %534 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %534, ptr @zz_res, align 8, !tbaa !5
  %535 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %535, ptr @zz_hold, align 8, !tbaa !5
  %536 = icmp eq ptr %535, null
  %537 = icmp eq ptr %534, null
  %538 = select i1 %536, i1 true, i1 %537
  br i1 %538, label %546, label %539

539:                                              ; preds = %519
  %540 = getelementptr inbounds [2 x %struct.LIST], ptr %535, i64 0, i64 1
  %541 = load ptr, ptr %540, align 8, !tbaa !9
  store ptr %541, ptr @zz_tmp, align 8, !tbaa !5
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %534, i64 0, i64 1
  %543 = load ptr, ptr %542, align 8, !tbaa !9
  store ptr %543, ptr %540, align 8, !tbaa !9
  %544 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1, i32 1
  store ptr %535, ptr %544, align 8, !tbaa !9
  store ptr %541, ptr %542, align 8, !tbaa !9
  %545 = getelementptr inbounds [2 x %struct.LIST], ptr %541, i64 0, i64 1, i32 1
  store ptr %534, ptr %545, align 8, !tbaa !9
  br label %546

546:                                              ; preds = %519, %539
  %547 = call ptr @LexGetToken() #4
  store ptr %547, ptr %5, align 8, !tbaa !5
  %548 = getelementptr inbounds %struct.word_type, ptr %547, i64 0, i32 1
  %549 = load i8, ptr %548, align 8, !tbaa !9
  %550 = add i8 %549, -11
  %551 = icmp ult i8 %550, 2
  br i1 %551, label %490, label %552

552:                                              ; preds = %504, %494, %498, %501, %546, %474
  call void @UnSuppressScope() #4
  br label %553

553:                                              ; preds = %552, %470, %460
  %554 = load ptr, ptr %5, align 8, !tbaa !5
  %555 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 1
  %556 = load i8, ptr %555, align 8, !tbaa !9
  %557 = icmp eq i8 %556, 11
  br i1 %7, label %569, label %558

558:                                              ; preds = %553
  br i1 %557, label %559, label %566

559:                                              ; preds = %558
  %560 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 4
  %561 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %560, ptr noundef nonnull dereferenceable(4) @.str.15) #5
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %579, label %563

563:                                              ; preds = %559
  %564 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %560, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %579, label %566

566:                                              ; preds = %558, %563
  %567 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 1
  %568 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 30, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef nonnull %567, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #4
  br label %1365

569:                                              ; preds = %553
  br i1 %8, label %570, label %578

570:                                              ; preds = %569
  br i1 %557, label %571, label %575

571:                                              ; preds = %570
  %572 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 4
  %573 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %572, ptr noundef nonnull dereferenceable(6) @.str.12) #5
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %579, label %575

575:                                              ; preds = %571, %570
  %576 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 1
  %577 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 31, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %576, ptr noundef nonnull @.str.12) #4
  br label %1365

578:                                              ; preds = %569
  br i1 %557, label %579, label %705

579:                                              ; preds = %559, %563, %571, %578
  %580 = phi i1 [ false, %578 ], [ %7, %571 ], [ %7, %563 ], [ %7, %559 ]
  %581 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 1
  %582 = getelementptr inbounds %struct.word_type, ptr %554, i64 0, i32 4
  %583 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %582, ptr noundef nonnull dereferenceable(6) @.str.16) #5
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %705

585:                                              ; preds = %579
  %586 = load ptr, ptr %465, align 8, !tbaa !9
  %587 = icmp eq ptr %586, %461
  br i1 %587, label %590, label %588

588:                                              ; preds = %585
  %589 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %581) #4
  br label %590

590:                                              ; preds = %588, %585
  call void @SuppressScope() #4
  %591 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %591, ptr @zz_hold, align 8, !tbaa !5
  %592 = getelementptr inbounds %struct.word_type, ptr %591, i64 0, i32 1
  %593 = load i8, ptr %592, align 8, !tbaa !9
  %594 = add i8 %593, -11
  %595 = icmp ult i8 %594, 2
  %596 = getelementptr inbounds %struct.word_type, ptr %591, i64 0, i32 1, i32 0, i32 1
  %597 = zext i8 %593 to i64
  %598 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %597
  %599 = select i1 %595, ptr %596, ptr %598
  %600 = load i8, ptr %599, align 1, !tbaa !9
  %601 = zext i8 %600 to i32
  store i32 %601, ptr @zz_size, align 4, !tbaa !10
  %602 = zext i8 %600 to i64
  %603 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !5
  store ptr %604, ptr %591, align 8, !tbaa !9
  %605 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %606 = load i32, ptr @zz_size, align 4, !tbaa !10
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %607
  store ptr %605, ptr %608, align 8, !tbaa !5
  %609 = call ptr @LexGetToken() #4
  %610 = getelementptr inbounds %struct.word_type, ptr %609, i64 0, i32 1
  %611 = load i8, ptr %610, align 8, !tbaa !9
  %612 = add i8 %611, -11
  %613 = icmp ult i8 %612, 2
  br i1 %613, label %616, label %614

614:                                              ; preds = %590
  %615 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 24, ptr noundef nonnull @.str.49, i32 noundef 2, ptr noundef nonnull %610, ptr noundef nonnull @.str.16) #4
  call void @UnSuppressScope() #4
  br label %702

616:                                              ; preds = %590
  %617 = getelementptr inbounds %struct.word_type, ptr %609, i64 0, i32 4
  %618 = call ptr @InsertSym(ptr noundef nonnull %617, i8 noundef zeroext -114, ptr noundef nonnull %610, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %447, ptr noundef null) #4
  %619 = icmp eq ptr %447, %1
  br i1 %619, label %624, label %620

620:                                              ; preds = %616
  %621 = getelementptr inbounds i8, ptr %618, i64 41
  %622 = load i24, ptr %621, align 1
  %623 = or i24 %622, 65536
  store i24 %623, ptr %621, align 1
  br label %624

624:                                              ; preds = %620, %616
  call void @UnSuppressScope() #4
  br label %625

625:                                              ; preds = %647, %624
  %626 = phi ptr [ %644, %647 ], [ %609, %624 ]
  %627 = phi ptr [ %645, %647 ], [ %610, %624 ]
  store ptr %626, ptr @zz_hold, align 8, !tbaa !5
  %628 = load i8, ptr %627, align 8, !tbaa !9
  %629 = add i8 %628, -11
  %630 = icmp ult i8 %629, 2
  %631 = getelementptr inbounds %struct.word_type, ptr %626, i64 0, i32 1, i32 0, i32 1
  %632 = zext i8 %628 to i64
  %633 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %632
  %634 = select i1 %630, ptr %631, ptr %633
  %635 = load i8, ptr %634, align 1, !tbaa !9
  %636 = zext i8 %635 to i32
  store i32 %636, ptr @zz_size, align 4, !tbaa !10
  %637 = zext i8 %635 to i64
  %638 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %637
  %639 = load ptr, ptr %638, align 8, !tbaa !5
  store ptr %639, ptr %626, align 8, !tbaa !9
  %640 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %641 = load i32, ptr @zz_size, align 4, !tbaa !10
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %642
  store ptr %640, ptr %643, align 8, !tbaa !5
  %644 = call ptr @LexGetToken() #4
  %645 = getelementptr inbounds %struct.word_type, ptr %644, i64 0, i32 1
  %646 = load i8, ptr %645, align 8, !tbaa !9
  switch i8 %646, label %649 [
    i8 11, label %647
    i8 12, label %647
    i8 102, label %651
  ]

647:                                              ; preds = %625, %625
  %648 = getelementptr inbounds %struct.word_type, ptr %644, i64 0, i32 4
  call void @InsertAlternativeName(ptr noundef nonnull %648, ptr noundef %618, ptr noundef nonnull %645) #4
  br label %625

649:                                              ; preds = %625
  %650 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 25, ptr noundef nonnull @.str.50, i32 noundef 2, ptr noundef nonnull %645, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #4
  br label %702

651:                                              ; preds = %625
  call fastcc void @ReadTokenList(ptr noundef nonnull %644, ptr noundef %618)
  store ptr %644, ptr @zz_hold, align 8, !tbaa !5
  %652 = load i8, ptr %645, align 8, !tbaa !9
  %653 = add i8 %652, -11
  %654 = icmp ult i8 %653, 2
  %655 = getelementptr inbounds %struct.word_type, ptr %644, i64 0, i32 1, i32 0, i32 1
  %656 = zext i8 %652 to i64
  %657 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %656
  %658 = select i1 %654, ptr %655, ptr %657
  %659 = load i8, ptr %658, align 1, !tbaa !9
  %660 = zext i8 %659 to i32
  store i32 %660, ptr @zz_size, align 4, !tbaa !10
  %661 = zext i8 %659 to i64
  %662 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %661
  %663 = load ptr, ptr %662, align 8, !tbaa !5
  store ptr %663, ptr %644, align 8, !tbaa !9
  %664 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %665 = load i32, ptr @zz_size, align 4, !tbaa !10
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %666
  store ptr %664, ptr %667, align 8, !tbaa !5
  %668 = getelementptr inbounds %struct.symbol_type, ptr %618, i64 0, i32 4
  %669 = load ptr, ptr %668, align 8, !tbaa !9
  %670 = getelementptr inbounds [2 x %struct.LIST], ptr %669, i64 0, i64 1
  %671 = load ptr, ptr %670, align 8, !tbaa !9
  %672 = getelementptr inbounds [2 x %struct.LIST], ptr %671, i64 0, i64 1, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !9
  %674 = icmp eq ptr %673, %671
  br i1 %674, label %680, label %675

675:                                              ; preds = %651
  store ptr %673, ptr @zz_res, align 8, !tbaa !5
  %676 = getelementptr inbounds [2 x %struct.LIST], ptr %671, i64 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !9
  %678 = getelementptr inbounds [2 x %struct.LIST], ptr %673, i64 0, i64 1
  store ptr %677, ptr %678, align 8, !tbaa !9
  %679 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1, i32 1
  store ptr %673, ptr %679, align 8, !tbaa !9
  store ptr %671, ptr %672, align 8, !tbaa !9
  store ptr %671, ptr %676, align 8, !tbaa !9
  br label %680

680:                                              ; preds = %675, %651
  %681 = phi ptr [ %673, %675 ], [ null, %651 ]
  store ptr %681, ptr %668, align 8, !tbaa !9
  store ptr %671, ptr @zz_hold, align 8, !tbaa !5
  %682 = getelementptr inbounds %struct.word_type, ptr %671, i64 0, i32 1
  %683 = load i8, ptr %682, align 8, !tbaa !9
  %684 = add i8 %683, -11
  %685 = icmp ult i8 %684, 2
  %686 = getelementptr inbounds %struct.word_type, ptr %671, i64 0, i32 1, i32 0, i32 1
  %687 = zext i8 %683 to i64
  %688 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %687
  %689 = select i1 %685, ptr %686, ptr %688
  %690 = load i8, ptr %689, align 1, !tbaa !9
  %691 = zext i8 %690 to i32
  store i32 %691, ptr @zz_size, align 4, !tbaa !10
  %692 = zext i8 %690 to i64
  %693 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %692
  %694 = load ptr, ptr %693, align 8, !tbaa !5
  store ptr %694, ptr %671, align 8, !tbaa !9
  %695 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %696 = load i32, ptr @zz_size, align 4, !tbaa !10
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %697
  store ptr %695, ptr %698, align 8, !tbaa !5
  %699 = getelementptr inbounds i8, ptr %618, i64 41
  %700 = load i24, ptr %699, align 1
  %701 = and i24 %700, -1025
  store i24 %701, ptr %699, align 1
  br label %702

702:                                              ; preds = %614, %649, %680
  %703 = phi ptr [ null, %680 ], [ %644, %649 ], [ %609, %614 ]
  %704 = phi ptr [ %618, %680 ], [ null, %649 ], [ null, %614 ]
  store ptr %703, ptr %5, align 8, !tbaa !5
  br label %1340

705:                                              ; preds = %579, %578
  %706 = phi i1 [ %580, %579 ], [ false, %578 ]
  call void @SuppressScope() #4
  %707 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %707, ptr @zz_hold, align 8, !tbaa !5
  %708 = getelementptr inbounds %struct.word_type, ptr %707, i64 0, i32 1
  %709 = load i8, ptr %708, align 8, !tbaa !9
  %710 = add i8 %709, -11
  %711 = icmp ult i8 %710, 2
  %712 = getelementptr inbounds %struct.word_type, ptr %707, i64 0, i32 1, i32 0, i32 1
  %713 = zext i8 %709 to i64
  %714 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %713
  %715 = select i1 %711, ptr %712, ptr %714
  %716 = load i8, ptr %715, align 1, !tbaa !9
  %717 = zext i8 %716 to i32
  store i32 %717, ptr @zz_size, align 4, !tbaa !10
  %718 = zext i8 %716 to i64
  %719 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %718
  %720 = load ptr, ptr %719, align 8, !tbaa !5
  store ptr %720, ptr %707, align 8, !tbaa !9
  %721 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %722 = load i32, ptr @zz_size, align 4, !tbaa !10
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %723
  store ptr %721, ptr %724, align 8, !tbaa !5
  %725 = call ptr @LexGetToken() #4
  store ptr %725, ptr %5, align 8, !tbaa !5
  br i1 %706, label %726, label %746

726:                                              ; preds = %705
  %727 = getelementptr inbounds %struct.word_type, ptr %725, i64 0, i32 1
  %728 = load i8, ptr %727, align 8, !tbaa !9
  %729 = icmp eq i8 %728, 11
  br i1 %729, label %730, label %746

730:                                              ; preds = %726
  %731 = getelementptr inbounds %struct.word_type, ptr %725, i64 0, i32 4
  %732 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %731, ptr noundef nonnull dereferenceable(11) @.str.27) #5
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %746

734:                                              ; preds = %730
  store ptr %725, ptr @zz_hold, align 8, !tbaa !5
  %735 = getelementptr inbounds %struct.word_type, ptr %725, i64 0, i32 1, i32 0, i32 1
  %736 = load i8, ptr %735, align 1, !tbaa !9
  %737 = zext i8 %736 to i32
  store i32 %737, ptr @zz_size, align 4, !tbaa !10
  %738 = zext i8 %736 to i64
  %739 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !5
  store ptr %740, ptr %725, align 8, !tbaa !9
  %741 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %742 = load i32, ptr @zz_size, align 4, !tbaa !10
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %743
  store ptr %741, ptr %744, align 8, !tbaa !5
  %745 = call ptr @LexGetToken() #4
  store ptr %745, ptr %5, align 8, !tbaa !5
  br label %746

746:                                              ; preds = %705, %726, %730, %734
  %747 = phi ptr [ %745, %734 ], [ %725, %730 ], [ %725, %726 ], [ %725, %705 ]
  %748 = phi i1 [ false, %734 ], [ true, %730 ], [ true, %726 ], [ true, %705 ]
  %749 = getelementptr inbounds %struct.word_type, ptr %747, i64 0, i32 1
  %750 = load i8, ptr %749, align 8, !tbaa !9
  %751 = add i8 %750, -11
  %752 = icmp ult i8 %751, 2
  br i1 %752, label %755, label %753

753:                                              ; preds = %746
  %754 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 33, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull %749) #4
  call void @UnSuppressScope() #4
  br label %1365

755:                                              ; preds = %746
  %756 = getelementptr inbounds %struct.word_type, ptr %747, i64 0, i32 4
  %757 = call ptr @InsertSym(ptr noundef nonnull %756, i8 noundef zeroext %2, ptr noundef nonnull %749, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %447, ptr noundef null) #4
  %758 = icmp eq ptr %447, %1
  br i1 %758, label %763, label %759

759:                                              ; preds = %755
  %760 = getelementptr inbounds i8, ptr %757, i64 41
  %761 = load i24, ptr %760, align 1
  %762 = or i24 %761, 65536
  store i24 %762, ptr %760, align 1
  br label %763

763:                                              ; preds = %759, %755
  %764 = icmp eq i32 %448, 0
  br i1 %764, label %769, label %765

765:                                              ; preds = %763
  %766 = getelementptr inbounds i8, ptr %757, i64 41
  %767 = load i24, ptr %766, align 1
  %768 = or i24 %767, 4194304
  store i24 %768, ptr %766, align 1
  br label %769

769:                                              ; preds = %765, %763
  br i1 %748, label %776, label %770

770:                                              ; preds = %769
  %771 = load i16, ptr %9, align 2, !tbaa !9
  %772 = add i16 %771, 1
  store i16 %772, ptr %9, align 2, !tbaa !9
  %773 = getelementptr inbounds %struct.symbol_type, ptr %757, i64 0, i32 16
  %774 = load i8, ptr %773, align 2
  %775 = or i8 %774, 64
  store i8 %775, ptr %773, align 2
  br label %776

776:                                              ; preds = %770, %769
  %777 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %777, ptr @zz_hold, align 8, !tbaa !5
  %778 = getelementptr inbounds %struct.word_type, ptr %777, i64 0, i32 1
  %779 = load i8, ptr %778, align 8, !tbaa !9
  %780 = add i8 %779, -11
  %781 = icmp ult i8 %780, 2
  %782 = getelementptr inbounds %struct.word_type, ptr %777, i64 0, i32 1, i32 0, i32 1
  %783 = zext i8 %779 to i64
  %784 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %783
  %785 = select i1 %781, ptr %782, ptr %784
  %786 = load i8, ptr %785, align 1, !tbaa !9
  %787 = zext i8 %786 to i32
  store i32 %787, ptr @zz_size, align 4, !tbaa !10
  %788 = zext i8 %786 to i64
  %789 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %788
  %790 = load ptr, ptr %789, align 8, !tbaa !5
  store ptr %790, ptr %777, align 8, !tbaa !9
  %791 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %792 = load i32, ptr @zz_size, align 4, !tbaa !10
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %793
  store ptr %791, ptr %794, align 8, !tbaa !5
  %795 = call ptr @LexGetToken() #4
  store ptr %795, ptr %5, align 8, !tbaa !5
  %796 = getelementptr inbounds %struct.word_type, ptr %795, i64 0, i32 1
  %797 = load i8, ptr %796, align 8, !tbaa !9
  %798 = add i8 %797, -11
  %799 = icmp ult i8 %798, 2
  br i1 %799, label %800, label %904

800:                                              ; preds = %776, %842
  %801 = phi i8 [ %864, %842 ], [ %797, %776 ]
  %802 = phi ptr [ %863, %842 ], [ %796, %776 ]
  %803 = phi ptr [ %862, %842 ], [ %795, %776 ]
  %804 = icmp eq i8 %801, 11
  br i1 %804, label %805, label %842

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.word_type, ptr %803, i64 0, i32 4
  %807 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(6) @.str.12) #5
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %867, label %809

809:                                              ; preds = %805
  %810 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(7) @.str.13) #5
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %867, label %812

812:                                              ; preds = %809
  %813 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(6) @.str.29) #5
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %867, label %815

815:                                              ; preds = %812
  %816 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(5) @.str.30) #5
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %867, label %818

818:                                              ; preds = %815
  %819 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(13) @.str.31) #5
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %867, label %821

821:                                              ; preds = %818
  %822 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(11) @.str.32) #5
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %867, label %824

824:                                              ; preds = %821
  %825 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(14) @.str.33) #5
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %867, label %827

827:                                              ; preds = %824
  %828 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(5) @.str.34) #5
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %867, label %830

830:                                              ; preds = %827
  %831 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(6) @.str.35) #5
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %867, label %833

833:                                              ; preds = %830
  %834 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(5) @.str.36) #5
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %867, label %836

836:                                              ; preds = %833
  %837 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(2) @.str.7) #5
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %867, label %839

839:                                              ; preds = %836
  %840 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(7) @.str.37) #5
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %867, label %842

842:                                              ; preds = %800, %839
  %843 = getelementptr inbounds %struct.word_type, ptr %803, i64 0, i32 4
  call void @InsertAlternativeName(ptr noundef nonnull %843, ptr noundef %757, ptr noundef nonnull %802) #4
  %844 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %844, ptr @zz_hold, align 8, !tbaa !5
  %845 = getelementptr inbounds %struct.word_type, ptr %844, i64 0, i32 1
  %846 = load i8, ptr %845, align 8, !tbaa !9
  %847 = add i8 %846, -11
  %848 = icmp ult i8 %847, 2
  %849 = getelementptr inbounds %struct.word_type, ptr %844, i64 0, i32 1, i32 0, i32 1
  %850 = zext i8 %846 to i64
  %851 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %850
  %852 = select i1 %848, ptr %849, ptr %851
  %853 = load i8, ptr %852, align 1, !tbaa !9
  %854 = zext i8 %853 to i32
  store i32 %854, ptr @zz_size, align 4, !tbaa !10
  %855 = zext i8 %853 to i64
  %856 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %855
  %857 = load ptr, ptr %856, align 8, !tbaa !5
  store ptr %857, ptr %844, align 8, !tbaa !9
  %858 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %859 = load i32, ptr @zz_size, align 4, !tbaa !10
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %860
  store ptr %858, ptr %861, align 8, !tbaa !5
  %862 = call ptr @LexGetToken() #4
  store ptr %862, ptr %5, align 8, !tbaa !5
  %863 = getelementptr inbounds %struct.word_type, ptr %862, i64 0, i32 1
  %864 = load i8, ptr %863, align 8, !tbaa !9
  %865 = add i8 %864, -11
  %866 = icmp ult i8 %865, 2
  br i1 %866, label %800, label %904

867:                                              ; preds = %836, %833, %830, %827, %824, %821, %818, %815, %812, %809, %805, %839
  %868 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(6) @.str.29) #5
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %904

870:                                              ; preds = %867
  %871 = getelementptr inbounds i8, ptr %757, i64 41
  %872 = load i24, ptr %871, align 1
  %873 = or i24 %872, 128
  store i24 %873, ptr %871, align 1
  store ptr %803, ptr @zz_hold, align 8, !tbaa !5
  %874 = load i8, ptr %802, align 8, !tbaa !9
  %875 = add i8 %874, -11
  %876 = icmp ult i8 %875, 2
  %877 = getelementptr inbounds %struct.word_type, ptr %803, i64 0, i32 1, i32 0, i32 1
  %878 = zext i8 %874 to i64
  %879 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %878
  %880 = select i1 %876, ptr %877, ptr %879
  %881 = load i8, ptr %880, align 1, !tbaa !9
  %882 = zext i8 %881 to i32
  store i32 %882, ptr @zz_size, align 4, !tbaa !10
  %883 = zext i8 %881 to i64
  %884 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !5
  store ptr %885, ptr %803, align 8, !tbaa !9
  %886 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %887 = load i32, ptr @zz_size, align 4, !tbaa !10
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %888
  store ptr %886, ptr %889, align 8, !tbaa !5
  %890 = call ptr @LexGetToken() #4
  store ptr %890, ptr %5, align 8, !tbaa !5
  %891 = getelementptr inbounds %struct.word_type, ptr %890, i64 0, i32 1
  %892 = load i8, ptr %891, align 8, !tbaa !9
  %893 = icmp eq i8 %892, 11
  br i1 %893, label %894, label %901

894:                                              ; preds = %870
  %895 = getelementptr inbounds %struct.word_type, ptr %890, i64 0, i32 4
  %896 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %895, ptr noundef nonnull dereferenceable(5) @.str.30) #5
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %904, label %898

898:                                              ; preds = %894
  %899 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %895, ptr noundef nonnull dereferenceable(13) @.str.31) #5
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %904, label %901

901:                                              ; preds = %870, %898
  %902 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 34, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull %891, ptr noundef nonnull @.str.30) #4
  %903 = load ptr, ptr %5, align 8, !tbaa !5
  br label %904

904:                                              ; preds = %842, %776, %894, %898, %901, %867
  %905 = phi ptr [ %795, %776 ], [ %890, %894 ], [ %890, %898 ], [ %903, %901 ], [ %803, %867 ], [ %862, %842 ]
  %906 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 1
  %907 = load i8, ptr %906, align 8, !tbaa !9
  %908 = icmp eq i8 %907, 11
  br i1 %908, label %909, label %974

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 4
  %911 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %910, ptr noundef nonnull dereferenceable(13) @.str.31) #5
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %937

913:                                              ; preds = %909
  %914 = getelementptr inbounds i8, ptr %757, i64 41
  %915 = load i24, ptr %914, align 1
  %916 = and i24 %915, -2097153
  store i24 %916, ptr %914, align 1
  store ptr %905, ptr @zz_hold, align 8, !tbaa !5
  %917 = load i8, ptr %906, align 8, !tbaa !9
  %918 = add i8 %917, -11
  %919 = icmp ult i8 %918, 2
  %920 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 1, i32 0, i32 1
  %921 = zext i8 %917 to i64
  %922 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %921
  %923 = select i1 %919, ptr %920, ptr %922
  %924 = load i8, ptr %923, align 1, !tbaa !9
  %925 = zext i8 %924 to i32
  store i32 %925, ptr @zz_size, align 4, !tbaa !10
  %926 = zext i8 %924 to i64
  %927 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %926
  %928 = load ptr, ptr %927, align 8, !tbaa !5
  store ptr %928, ptr %905, align 8, !tbaa !9
  %929 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %930 = load i32, ptr @zz_size, align 4, !tbaa !10
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %931
  store ptr %929, ptr %932, align 8, !tbaa !5
  %933 = call ptr @LexGetToken() #4
  store ptr %933, ptr %5, align 8, !tbaa !5
  %934 = getelementptr inbounds %struct.word_type, ptr %933, i64 0, i32 1
  %935 = load i8, ptr %934, align 8, !tbaa !9
  %936 = icmp eq i8 %935, 11
  br i1 %936, label %937, label %974

937:                                              ; preds = %909, %913
  %938 = phi ptr [ %933, %913 ], [ %905, %909 ]
  %939 = getelementptr inbounds %struct.word_type, ptr %938, i64 0, i32 4
  %940 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %939, ptr noundef nonnull dereferenceable(5) @.str.30) #5
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %974

942:                                              ; preds = %937
  call void @UnSuppressScope() #4
  %943 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %943, ptr @zz_hold, align 8, !tbaa !5
  %944 = getelementptr inbounds %struct.word_type, ptr %943, i64 0, i32 1
  %945 = load i8, ptr %944, align 8, !tbaa !9
  %946 = add i8 %945, -11
  %947 = icmp ult i8 %946, 2
  %948 = getelementptr inbounds %struct.word_type, ptr %943, i64 0, i32 1, i32 0, i32 1
  %949 = zext i8 %945 to i64
  %950 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %949
  %951 = select i1 %947, ptr %948, ptr %950
  %952 = load i8, ptr %951, align 1, !tbaa !9
  %953 = zext i8 %952 to i32
  store i32 %953, ptr @zz_size, align 4, !tbaa !10
  %954 = zext i8 %952 to i64
  %955 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %954
  %956 = load ptr, ptr %955, align 8, !tbaa !5
  store ptr %956, ptr %943, align 8, !tbaa !9
  %957 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %958 = load i32, ptr @zz_size, align 4, !tbaa !10
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %959
  store ptr %957, ptr %960, align 8, !tbaa !5
  %961 = call ptr @LexGetToken() #4
  store ptr %961, ptr %5, align 8, !tbaa !5
  %962 = getelementptr inbounds %struct.word_type, ptr %961, i64 0, i32 1
  %963 = load i8, ptr %962, align 8, !tbaa !9
  %964 = icmp eq i8 %963, 102
  br i1 %964, label %968, label %965

965:                                              ; preds = %942
  %966 = getelementptr inbounds %struct.word_type, ptr %961, i64 0, i32 1
  %967 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 36, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull %966, ptr noundef nonnull @.str.7) #4
  call void @UnSuppressScope() #4
  br label %1365

968:                                              ; preds = %942
  %969 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %447, i32 noundef 0, i32 noundef 0) #4
  call void @SuppressScope() #4
  %970 = load ptr, ptr %5, align 8, !tbaa !5
  %971 = icmp eq ptr %970, null
  br i1 %971, label %972, label %974

972:                                              ; preds = %968
  %973 = call ptr @LexGetToken() #4
  store ptr %973, ptr %5, align 8, !tbaa !5
  br label %974

974:                                              ; preds = %904, %968, %972, %937, %913
  %975 = phi ptr [ %973, %972 ], [ %970, %968 ], [ %938, %937 ], [ %933, %913 ], [ %905, %904 ]
  %976 = phi ptr [ %969, %972 ], [ %969, %968 ], [ null, %937 ], [ null, %913 ], [ null, %904 ]
  %977 = getelementptr inbounds %struct.word_type, ptr %975, i64 0, i32 1
  %978 = load i8, ptr %977, align 8, !tbaa !9
  %979 = icmp eq i8 %978, 11
  br i1 %979, label %980, label %1148

980:                                              ; preds = %974
  %981 = getelementptr inbounds %struct.word_type, ptr %975, i64 0, i32 4
  %982 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %981, ptr noundef nonnull dereferenceable(11) @.str.32) #5
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %1047

984:                                              ; preds = %980
  store ptr %975, ptr @zz_hold, align 8, !tbaa !5
  %985 = getelementptr inbounds %struct.word_type, ptr %975, i64 0, i32 1, i32 0, i32 1
  %986 = load i8, ptr %985, align 1, !tbaa !9
  %987 = zext i8 %986 to i32
  store i32 %987, ptr @zz_size, align 4, !tbaa !10
  %988 = zext i8 %986 to i64
  %989 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %988
  %990 = load ptr, ptr %989, align 8, !tbaa !5
  store ptr %990, ptr %975, align 8, !tbaa !9
  %991 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %992 = load i32, ptr @zz_size, align 4, !tbaa !10
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %993
  store ptr %991, ptr %994, align 8, !tbaa !5
  %995 = call ptr @LexGetToken() #4
  store ptr %995, ptr %5, align 8, !tbaa !5
  %996 = getelementptr inbounds %struct.word_type, ptr %995, i64 0, i32 1
  %997 = load i8, ptr %996, align 8, !tbaa !9
  %998 = icmp eq i8 %997, 11
  br i1 %998, label %1001, label %999

999:                                              ; preds = %984
  %1000 = getelementptr inbounds %struct.word_type, ptr %995, i64 0, i32 1
  br label %1032

1001:                                             ; preds = %984, %1008
  %1002 = phi i32 [ %1012, %1008 ], [ 0, %984 ]
  %1003 = phi ptr [ %1023, %1008 ], [ %995, %984 ]
  %1004 = getelementptr inbounds %struct.word_type, ptr %1003, i64 0, i32 4
  %1005 = load i8, ptr %1004, align 8, !tbaa !9
  %1006 = add i8 %1005, -48
  %1007 = icmp ult i8 %1006, 10
  br i1 %1007, label %1008, label %1027

1008:                                             ; preds = %1001
  %1009 = zext nneg i8 %1005 to i32
  %1010 = mul nsw i32 %1002, 10
  %1011 = add i32 %1010, -48
  %1012 = add i32 %1011, %1009
  store ptr %1003, ptr @zz_hold, align 8, !tbaa !5
  %1013 = getelementptr inbounds %struct.word_type, ptr %1003, i64 0, i32 1, i32 0, i32 1
  %1014 = load i8, ptr %1013, align 1, !tbaa !9
  %1015 = zext i8 %1014 to i32
  store i32 %1015, ptr @zz_size, align 4, !tbaa !10
  %1016 = zext i8 %1014 to i64
  %1017 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1016
  %1018 = load ptr, ptr %1017, align 8, !tbaa !5
  store ptr %1018, ptr %1003, align 8, !tbaa !9
  %1019 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1020 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1021
  store ptr %1019, ptr %1022, align 8, !tbaa !5
  %1023 = call ptr @LexGetToken() #4
  store ptr %1023, ptr %5, align 8, !tbaa !5
  %1024 = getelementptr inbounds %struct.word_type, ptr %1023, i64 0, i32 1
  %1025 = load i8, ptr %1024, align 8, !tbaa !9
  %1026 = icmp eq i8 %1025, 11
  br i1 %1026, label %1001, label %1027

1027:                                             ; preds = %1001, %1008
  %1028 = phi ptr [ %1003, %1001 ], [ %1023, %1008 ]
  %1029 = phi i32 [ %1002, %1001 ], [ %1012, %1008 ]
  %1030 = getelementptr inbounds %struct.word_type, ptr %1028, i64 0, i32 1
  %1031 = icmp slt i32 %1029, 10
  br i1 %1031, label %1032, label %1035

1032:                                             ; preds = %999, %1027
  %1033 = phi ptr [ %1000, %999 ], [ %1030, %1027 ]
  %1034 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 37, ptr noundef nonnull @.str.39, i32 noundef 2, ptr noundef nonnull %1033, i32 noundef 10) #4
  br label %1039

1035:                                             ; preds = %1027
  %1036 = icmp ugt i32 %1029, 100
  br i1 %1036, label %1037, label %1039

1037:                                             ; preds = %1035
  %1038 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 38, ptr noundef nonnull @.str.40, i32 noundef 2, ptr noundef nonnull %1030, i32 noundef 100) #4
  br label %1039

1039:                                             ; preds = %1032, %1037, %1035
  %1040 = phi i32 [ 10, %1032 ], [ 100, %1037 ], [ %1029, %1035 ]
  %1041 = trunc i32 %1040 to i8
  %1042 = getelementptr inbounds %struct.word_type, ptr %757, i64 0, i32 2
  store i8 %1041, ptr %1042, align 8, !tbaa !9
  %1043 = load ptr, ptr %5, align 8, !tbaa !5
  %1044 = getelementptr inbounds %struct.word_type, ptr %1043, i64 0, i32 1
  %1045 = load i8, ptr %1044, align 8, !tbaa !9
  %1046 = icmp eq i8 %1045, 11
  br i1 %1046, label %1047, label %1148

1047:                                             ; preds = %980, %1039
  %1048 = phi ptr [ %1043, %1039 ], [ %975, %980 ]
  %1049 = getelementptr inbounds %struct.word_type, ptr %1048, i64 0, i32 4
  %1050 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1049, ptr noundef nonnull dereferenceable(14) @.str.33) #5
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1104

1052:                                             ; preds = %1047
  store ptr %1048, ptr @zz_hold, align 8, !tbaa !5
  %1053 = getelementptr inbounds %struct.word_type, ptr %1048, i64 0, i32 1, i32 0, i32 1
  %1054 = load i8, ptr %1053, align 1, !tbaa !9
  %1055 = zext i8 %1054 to i32
  store i32 %1055, ptr @zz_size, align 4, !tbaa !10
  %1056 = zext i8 %1054 to i64
  %1057 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1056
  %1058 = load ptr, ptr %1057, align 8, !tbaa !5
  store ptr %1058, ptr %1048, align 8, !tbaa !9
  %1059 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1060 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1061
  store ptr %1059, ptr %1062, align 8, !tbaa !5
  %1063 = call ptr @LexGetToken() #4
  store ptr %1063, ptr %5, align 8, !tbaa !5
  %1064 = getelementptr inbounds %struct.word_type, ptr %1063, i64 0, i32 1
  %1065 = load i8, ptr %1064, align 8, !tbaa !9
  %1066 = icmp eq i8 %1065, 11
  br i1 %1066, label %1067, label %1078

1067:                                             ; preds = %1052
  %1068 = getelementptr inbounds %struct.word_type, ptr %1063, i64 0, i32 4
  %1069 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1068, ptr noundef nonnull dereferenceable(5) @.str.34) #5
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1071, label %1075

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds i8, ptr %757, i64 41
  %1073 = load i24, ptr %1072, align 1
  %1074 = and i24 %1073, -17
  store i24 %1074, ptr %1072, align 1
  br label %1081

1075:                                             ; preds = %1067
  %1076 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1068, ptr noundef nonnull dereferenceable(6) @.str.35) #5
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1081, label %1078

1078:                                             ; preds = %1052, %1075
  %1079 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 39, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef nonnull %1064, ptr noundef nonnull @.str.35) #4
  %1080 = load ptr, ptr %5, align 8, !tbaa !5
  br label %1081

1081:                                             ; preds = %1071, %1078, %1075
  %1082 = phi ptr [ %1063, %1075 ], [ %1080, %1078 ], [ %1063, %1071 ]
  store ptr %1082, ptr @zz_hold, align 8, !tbaa !5
  %1083 = getelementptr inbounds %struct.word_type, ptr %1082, i64 0, i32 1
  %1084 = load i8, ptr %1083, align 8, !tbaa !9
  %1085 = add i8 %1084, -11
  %1086 = icmp ult i8 %1085, 2
  %1087 = getelementptr inbounds %struct.word_type, ptr %1082, i64 0, i32 1, i32 0, i32 1
  %1088 = zext i8 %1084 to i64
  %1089 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1088
  %1090 = select i1 %1086, ptr %1087, ptr %1089
  %1091 = load i8, ptr %1090, align 1, !tbaa !9
  %1092 = zext i8 %1091 to i32
  store i32 %1092, ptr @zz_size, align 4, !tbaa !10
  %1093 = zext i8 %1091 to i64
  %1094 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1093
  %1095 = load ptr, ptr %1094, align 8, !tbaa !5
  store ptr %1095, ptr %1082, align 8, !tbaa !9
  %1096 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1097 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1098
  store ptr %1096, ptr %1099, align 8, !tbaa !5
  %1100 = call ptr @LexGetToken() #4
  store ptr %1100, ptr %5, align 8, !tbaa !5
  %1101 = getelementptr inbounds %struct.word_type, ptr %1100, i64 0, i32 1
  %1102 = load i8, ptr %1101, align 8, !tbaa !9
  %1103 = icmp eq i8 %1102, 11
  br i1 %1103, label %1104, label %1148

1104:                                             ; preds = %1047, %1081
  %1105 = phi ptr [ %1100, %1081 ], [ %1048, %1047 ]
  %1106 = getelementptr inbounds %struct.word_type, ptr %1105, i64 0, i32 4
  %1107 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1106, ptr noundef nonnull dereferenceable(5) @.str.34) #5
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1148

1109:                                             ; preds = %1104
  store ptr %1105, ptr @zz_hold, align 8, !tbaa !5
  %1110 = getelementptr inbounds %struct.word_type, ptr %1105, i64 0, i32 1, i32 0, i32 1
  %1111 = load i8, ptr %1110, align 1, !tbaa !9
  %1112 = zext i8 %1111 to i32
  store i32 %1112, ptr @zz_size, align 4, !tbaa !10
  %1113 = zext i8 %1111 to i64
  %1114 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1113
  %1115 = load ptr, ptr %1114, align 8, !tbaa !5
  store ptr %1115, ptr %1105, align 8, !tbaa !9
  %1116 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1117 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1118
  store ptr %1116, ptr %1119, align 8, !tbaa !5
  %1120 = call ptr @LexGetToken() #4
  store ptr %1120, ptr %5, align 8, !tbaa !5
  %1121 = getelementptr inbounds %struct.word_type, ptr %1120, i64 0, i32 1
  %1122 = load i8, ptr %1121, align 8, !tbaa !9
  %1123 = icmp eq i8 %1122, 11
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1109
  %1125 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 40, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull %1121, ptr noundef nonnull @.str.34) #4
  call void @UnSuppressScope() #4
  br label %1365

1126:                                             ; preds = %1109
  %1127 = getelementptr inbounds %struct.word_type, ptr %1120, i64 0, i32 4
  %1128 = call ptr @InsertSym(ptr noundef nonnull %1127, i8 noundef zeroext -112, ptr noundef nonnull %1121, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %757, ptr noundef null) #4
  %1129 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1129, ptr @zz_hold, align 8, !tbaa !5
  %1130 = getelementptr inbounds %struct.word_type, ptr %1129, i64 0, i32 1
  %1131 = load i8, ptr %1130, align 8, !tbaa !9
  %1132 = add i8 %1131, -11
  %1133 = icmp ult i8 %1132, 2
  %1134 = getelementptr inbounds %struct.word_type, ptr %1129, i64 0, i32 1, i32 0, i32 1
  %1135 = zext i8 %1131 to i64
  %1136 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1135
  %1137 = select i1 %1133, ptr %1134, ptr %1136
  %1138 = load i8, ptr %1137, align 1, !tbaa !9
  %1139 = zext i8 %1138 to i32
  store i32 %1139, ptr @zz_size, align 4, !tbaa !10
  %1140 = zext i8 %1138 to i64
  %1141 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1140
  %1142 = load ptr, ptr %1141, align 8, !tbaa !5
  store ptr %1142, ptr %1129, align 8, !tbaa !9
  %1143 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1144 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1145
  store ptr %1143, ptr %1146, align 8, !tbaa !5
  %1147 = call ptr @LexGetToken() #4
  store ptr %1147, ptr %5, align 8, !tbaa !5
  br label %1148

1148:                                             ; preds = %974, %1039, %1126, %1104, %1081
  call void @UnSuppressScope() #4
  call void @ReadDefinitions(ptr noundef nonnull %5, ptr noundef %757, i8 noundef zeroext -111)
  %1149 = load ptr, ptr %5, align 8, !tbaa !5
  %1150 = getelementptr inbounds %struct.word_type, ptr %1149, i64 0, i32 1
  %1151 = load i8, ptr %1150, align 8, !tbaa !9
  %1152 = icmp eq i8 %1151, 11
  br i1 %1152, label %1153, label %1214

1153:                                             ; preds = %1148
  %1154 = getelementptr inbounds %struct.word_type, ptr %1149, i64 0, i32 4
  %1155 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1154, ptr noundef nonnull dereferenceable(6) @.str.35) #5
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1160, label %1157

1157:                                             ; preds = %1153
  %1158 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1154, ptr noundef nonnull dereferenceable(5) @.str.36) #5
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1160, label %1214

1160:                                             ; preds = %1157, %1153
  %1161 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1154, ptr noundef nonnull dereferenceable(5) @.str.36) #5
  %1162 = icmp eq i32 %1161, 0
  %1163 = getelementptr inbounds i8, ptr %757, i64 41
  %1164 = load i24, ptr %1163, align 1
  %1165 = select i1 %1162, i24 256, i24 0
  %1166 = and i24 %1164, -257
  %1167 = or disjoint i24 %1166, %1165
  store i24 %1167, ptr %1163, align 1
  call void @SuppressScope() #4
  %1168 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1168, ptr @zz_hold, align 8, !tbaa !5
  %1169 = getelementptr inbounds %struct.word_type, ptr %1168, i64 0, i32 1
  %1170 = load i8, ptr %1169, align 8, !tbaa !9
  %1171 = add i8 %1170, -11
  %1172 = icmp ult i8 %1171, 2
  %1173 = getelementptr inbounds %struct.word_type, ptr %1168, i64 0, i32 1, i32 0, i32 1
  %1174 = zext i8 %1170 to i64
  %1175 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1174
  %1176 = select i1 %1172, ptr %1173, ptr %1175
  %1177 = load i8, ptr %1176, align 1, !tbaa !9
  %1178 = zext i8 %1177 to i32
  store i32 %1178, ptr @zz_size, align 4, !tbaa !10
  %1179 = zext i8 %1177 to i64
  %1180 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1179
  %1181 = load ptr, ptr %1180, align 8, !tbaa !5
  store ptr %1181, ptr %1168, align 8, !tbaa !9
  %1182 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1183 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1184
  store ptr %1182, ptr %1185, align 8, !tbaa !5
  %1186 = call ptr @LexGetToken() #4
  store ptr %1186, ptr %5, align 8, !tbaa !5
  %1187 = getelementptr inbounds %struct.word_type, ptr %1186, i64 0, i32 1
  %1188 = load i8, ptr %1187, align 8, !tbaa !9
  %1189 = icmp eq i8 %1188, 11
  br i1 %1189, label %1192, label %1190

1190:                                             ; preds = %1160
  %1191 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 41, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull %1187, ptr noundef nonnull @.str.35) #4
  call void @UnSuppressScope() #4
  br label %1365

1192:                                             ; preds = %1160
  %1193 = getelementptr inbounds %struct.word_type, ptr %1186, i64 0, i32 4
  %1194 = call ptr @InsertSym(ptr noundef nonnull %1193, i8 noundef zeroext -110, ptr noundef nonnull %1187, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %757, ptr noundef null) #4
  call void @UnSuppressScope() #4
  %1195 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1195, ptr @zz_hold, align 8, !tbaa !5
  %1196 = getelementptr inbounds %struct.word_type, ptr %1195, i64 0, i32 1
  %1197 = load i8, ptr %1196, align 8, !tbaa !9
  %1198 = add i8 %1197, -11
  %1199 = icmp ult i8 %1198, 2
  %1200 = getelementptr inbounds %struct.word_type, ptr %1195, i64 0, i32 1, i32 0, i32 1
  %1201 = zext i8 %1197 to i64
  %1202 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1201
  %1203 = select i1 %1199, ptr %1200, ptr %1202
  %1204 = load i8, ptr %1203, align 1, !tbaa !9
  %1205 = zext i8 %1204 to i32
  store i32 %1205, ptr @zz_size, align 4, !tbaa !10
  %1206 = zext i8 %1204 to i64
  %1207 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1206
  %1208 = load ptr, ptr %1207, align 8, !tbaa !5
  store ptr %1208, ptr %1195, align 8, !tbaa !9
  %1209 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1210 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1211
  store ptr %1209, ptr %1212, align 8, !tbaa !5
  %1213 = call ptr @LexGetToken() #4
  store ptr %1213, ptr %5, align 8, !tbaa !5
  br label %1214

1214:                                             ; preds = %1148, %1192, %1157
  %1215 = phi ptr [ %1149, %1148 ], [ %1213, %1192 ], [ %1149, %1157 ]
  %1216 = icmp eq ptr %976, null
  br i1 %1216, label %1221, label %1217

1217:                                             ; preds = %1214
  %1218 = getelementptr inbounds %struct.word_type, ptr %976, i64 0, i32 1
  %1219 = call ptr @InsertSym(ptr noundef nonnull @.str.43, i8 noundef zeroext -113, ptr noundef nonnull %1218, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %757, ptr noundef nonnull %976) #4
  %1220 = load ptr, ptr %5, align 8, !tbaa !5
  br label %1221

1221:                                             ; preds = %1217, %1214
  %1222 = phi ptr [ %1220, %1217 ], [ %1215, %1214 ]
  %1223 = getelementptr inbounds %struct.word_type, ptr %1222, i64 0, i32 1
  %1224 = load i8, ptr %1223, align 8, !tbaa !9
  switch i8 %1224, label %1274 [
    i8 11, label %1225
    i8 102, label %1278
    i8 104, label %1278
  ]

1225:                                             ; preds = %1221
  %1226 = getelementptr inbounds %struct.word_type, ptr %1222, i64 0, i32 4
  %1227 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1226, ptr noundef nonnull dereferenceable(2) @.str.7) #5
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1250

1229:                                             ; preds = %1225
  %1230 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1231 = call ptr @NewToken(i8 noundef zeroext 102, ptr noundef nonnull %1223, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %1230) #4
  %1232 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1232, ptr @zz_hold, align 8, !tbaa !5
  %1233 = getelementptr inbounds %struct.word_type, ptr %1232, i64 0, i32 1
  %1234 = load i8, ptr %1233, align 8, !tbaa !9
  %1235 = add i8 %1234, -11
  %1236 = icmp ult i8 %1235, 2
  %1237 = getelementptr inbounds %struct.word_type, ptr %1232, i64 0, i32 1, i32 0, i32 1
  %1238 = zext i8 %1234 to i64
  %1239 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1238
  %1240 = select i1 %1236, ptr %1237, ptr %1239
  %1241 = load i8, ptr %1240, align 1, !tbaa !9
  %1242 = zext i8 %1241 to i32
  store i32 %1242, ptr @zz_size, align 4, !tbaa !10
  %1243 = zext i8 %1241 to i64
  %1244 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1243
  %1245 = load ptr, ptr %1244, align 8, !tbaa !5
  store ptr %1245, ptr %1232, align 8, !tbaa !9
  %1246 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1247 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1248
  store ptr %1246, ptr %1249, align 8, !tbaa !5
  store ptr %1231, ptr %5, align 8, !tbaa !5
  br label %1278

1250:                                             ; preds = %1225
  %1251 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1226, ptr noundef nonnull dereferenceable(7) @.str.37) #5
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1274

1253:                                             ; preds = %1250
  %1254 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1255 = call ptr @NewToken(i8 noundef zeroext 104, ptr noundef nonnull %1223, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %1254) #4
  %1256 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1256, ptr @zz_hold, align 8, !tbaa !5
  %1257 = getelementptr inbounds %struct.word_type, ptr %1256, i64 0, i32 1
  %1258 = load i8, ptr %1257, align 8, !tbaa !9
  %1259 = add i8 %1258, -11
  %1260 = icmp ult i8 %1259, 2
  %1261 = getelementptr inbounds %struct.word_type, ptr %1256, i64 0, i32 1, i32 0, i32 1
  %1262 = zext i8 %1258 to i64
  %1263 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1262
  %1264 = select i1 %1260, ptr %1261, ptr %1263
  %1265 = load i8, ptr %1264, align 1, !tbaa !9
  %1266 = zext i8 %1265 to i32
  store i32 %1266, ptr @zz_size, align 4, !tbaa !10
  %1267 = zext i8 %1265 to i64
  %1268 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1267
  %1269 = load ptr, ptr %1268, align 8, !tbaa !5
  store ptr %1269, ptr %1256, align 8, !tbaa !9
  %1270 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1271 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1272
  store ptr %1270, ptr %1273, align 8, !tbaa !5
  store ptr %1255, ptr %5, align 8, !tbaa !5
  br label %1278

1274:                                             ; preds = %1221, %1250
  %1275 = call ptr @SymName(ptr noundef %757) #4
  %1276 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 42, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef nonnull %1223, ptr noundef %1275) #4
  %1277 = load ptr, ptr %5, align 8, !tbaa !5
  br label %1278

1278:                                             ; preds = %1221, %1221, %1253, %1274, %1229
  %1279 = phi ptr [ %1222, %1221 ], [ %1222, %1221 ], [ %1255, %1253 ], [ %1277, %1274 ], [ %1231, %1229 ]
  %1280 = getelementptr inbounds %struct.word_type, ptr %1279, i64 0, i32 1
  %1281 = load i8, ptr %1280, align 8, !tbaa !9
  %1282 = icmp eq i8 %1281, 104
  br i1 %1282, label %1283, label %1285

1283:                                             ; preds = %1278
  %1284 = getelementptr inbounds %struct.closure_type, ptr %1279, i64 0, i32 5
  store ptr %757, ptr %1284, align 8, !tbaa !9
  br label %1285

1285:                                             ; preds = %1283, %1278
  call void @PushScope(ptr noundef %757, i32 noundef 0, i32 noundef 0) #4
  call void @BodyParAllowed() #4
  %1286 = call ptr @Parse(ptr noundef nonnull %5, ptr noundef %757, i32 noundef 1, i32 noundef 0) #4
  %1287 = getelementptr inbounds %struct.symbol_type, ptr %757, i64 0, i32 4
  store ptr %1286, ptr %1287, align 8, !tbaa !9
  %1288 = load ptr, ptr %465, align 8, !tbaa !9
  %1289 = icmp eq ptr %1288, %461
  br i1 %1289, label %1338, label %1290

1290:                                             ; preds = %1285
  %1291 = getelementptr inbounds i8, ptr %757, i64 41
  br label %1292

1292:                                             ; preds = %1290, %1334
  %1293 = phi ptr [ %1288, %1290 ], [ %1336, %1334 ]
  br label %1294

1294:                                             ; preds = %1292, %1294
  %1295 = phi ptr [ %1297, %1294 ], [ %1293, %1292 ]
  %1296 = getelementptr inbounds [2 x %struct.LIST], ptr %1295, i64 0, i64 1
  %1297 = load ptr, ptr %1296, align 8, !tbaa !9
  %1298 = getelementptr inbounds %struct.word_type, ptr %1297, i64 0, i32 1
  %1299 = load i8, ptr %1298, align 8, !tbaa !9
  %1300 = icmp eq i8 %1299, 0
  br i1 %1300, label %1294, label %1301

1301:                                             ; preds = %1294
  %1302 = getelementptr inbounds %struct.word_type, ptr %1297, i64 0, i32 1
  %1303 = getelementptr inbounds %struct.word_type, ptr %1297, i64 0, i32 4
  %1304 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1303) #5
  %1305 = trunc i64 %1304 to i32
  %1306 = call ptr @SearchSym(ptr noundef nonnull %1303, i32 noundef %1305) #4
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1312, label %1308

1308:                                             ; preds = %1301
  %1309 = getelementptr inbounds %struct.symbol_type, ptr %1306, i64 0, i32 3
  %1310 = load ptr, ptr %1309, align 8, !tbaa !9
  %1311 = icmp eq ptr %1310, %757
  br i1 %1311, label %1315, label %1312

1312:                                             ; preds = %1308, %1301
  %1313 = call ptr @SymName(ptr noundef %757) #4
  %1314 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 43, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %1302, ptr noundef nonnull %1303, ptr noundef %1313) #4
  br label %1334

1315:                                             ; preds = %1308
  %1316 = load i24, ptr %1291, align 1
  %1317 = and i24 %1316, 256
  %1318 = icmp eq i24 %1317, 0
  br i1 %1318, label %1325, label %1319

1319:                                             ; preds = %1315
  %1320 = getelementptr inbounds %struct.word_type, ptr %1306, i64 0, i32 1
  %1321 = load i8, ptr %1320, align 8, !tbaa !9
  %1322 = icmp eq i8 %1321, -110
  br i1 %1322, label %1323, label %1325

1323:                                             ; preds = %1319
  %1324 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 44, ptr noundef nonnull @.str.46, i32 noundef 2, ptr noundef nonnull %1302, ptr noundef nonnull %1303) #4
  br label %1334

1325:                                             ; preds = %1319, %1315
  %1326 = getelementptr inbounds i8, ptr %1306, i64 41
  %1327 = load i24, ptr %1326, align 1
  %1328 = and i24 %1327, 65536
  %1329 = icmp eq i24 %1328, 0
  br i1 %1329, label %1332, label %1330

1330:                                             ; preds = %1325
  %1331 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 45, ptr noundef nonnull @.str.47, i32 noundef 2, ptr noundef nonnull %1302, ptr noundef nonnull %1303) #4
  br label %1334

1332:                                             ; preds = %1325
  %1333 = or disjoint i24 %1327, 65536
  store i24 %1333, ptr %1326, align 1
  br label %1334

1334:                                             ; preds = %1312, %1330, %1332, %1323
  %1335 = getelementptr inbounds %struct.LIST, ptr %1293, i64 0, i32 1
  %1336 = load ptr, ptr %1335, align 8, !tbaa !9
  %1337 = icmp eq ptr %1336, %461
  br i1 %1337, label %1338, label %1292

1338:                                             ; preds = %1334, %1285
  %1339 = call i32 @DisposeObject(ptr noundef nonnull %461) #4
  call void @PopScope() #4
  br label %1340

1340:                                             ; preds = %1338, %702
  %1341 = phi ptr [ %704, %702 ], [ %757, %1338 ]
  %1342 = load ptr, ptr %188, align 8, !tbaa !9
  %1343 = icmp eq ptr %1342, %184
  br i1 %1343, label %1354, label %1344

1344:                                             ; preds = %1340, %1344
  %1345 = phi ptr [ %1347, %1344 ], [ %1342, %1340 ]
  call void @PopScope() #4
  %1346 = getelementptr inbounds %struct.LIST, ptr %1345, i64 0, i32 1
  %1347 = load ptr, ptr %1346, align 8, !tbaa !9
  %1348 = icmp eq ptr %1347, %184
  br i1 %1348, label %1349, label %1344

1349:                                             ; preds = %1344
  %1350 = load ptr, ptr %188, align 8, !tbaa !9
  %1351 = icmp ne ptr %1350, %184
  %1352 = icmp eq ptr %447, %1
  %1353 = select i1 %1351, i1 %1352, i1 false
  br i1 %1353, label %1356, label %1354

1354:                                             ; preds = %1340, %1349
  %1355 = call i32 @DisposeObject(ptr noundef nonnull %184) #4
  br label %1358

1356:                                             ; preds = %1349
  %1357 = getelementptr inbounds %struct.symbol_type, ptr %1341, i64 0, i32 9
  store ptr %184, ptr %1357, align 8, !tbaa !9
  br label %1358

1358:                                             ; preds = %1356, %1354
  call void @BodyParAllowed() #4
  %1359 = load ptr, ptr %5, align 8, !tbaa !5
  %1360 = icmp eq ptr %1359, null
  br i1 %1360, label %1363, label %1361

1361:                                             ; preds = %1358, %1363, %109, %111, %132
  %1362 = phi ptr [ %1359, %1358 ], [ %1364, %1363 ], [ %110, %109 ], [ %131, %111 ], [ %152, %132 ]
  br label %10

1363:                                             ; preds = %1358
  %1364 = call ptr @LexGetToken() #4
  store ptr %1364, ptr %5, align 8, !tbaa !5
  br label %1361

1365:                                             ; preds = %20, %168, %14, %23, %566, %575, %1190, %1124, %965, %753
  %1366 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %1366, ptr %0, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @BodyParNotAllowed() local_unnamed_addr #2

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare void @SuppressScope() local_unnamed_addr #2

declare void @UnSuppressScope() local_unnamed_addr #2

declare ptr @InsertSym(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @InsertAlternativeName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @BodyParAllowed() local_unnamed_addr #2

declare ptr @SearchSym(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare void @PopScope() local_unnamed_addr #2

declare void @LanguageDefine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ReadTokenList(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @LexGetToken() #4
  %4 = getelementptr inbounds %struct.symbol_type, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %5, ptr @zz_res, align 8, !tbaa !5
  store ptr %3, ptr @zz_hold, align 8, !tbaa !5
  %6 = icmp eq ptr %3, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds [2 x %struct.LIST], ptr %3, i64 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  store ptr %11, ptr @zz_tmp, align 8, !tbaa !5
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  store ptr %13, ptr %10, align 8, !tbaa !9
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !9
  store ptr %11, ptr %12, align 8, !tbaa !9
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1, i32 1
  store ptr %5, ptr %15, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %2, %7, %9
  %17 = phi ptr [ %5, %9 ], [ %3, %7 ], [ %5, %2 ]
  store ptr %17, ptr %4, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %317, %16
  %19 = phi ptr [ %3, %16 ], [ %318, %317 ]
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !9
  switch i8 %21, label %343 [
    i8 11, label %22
    i8 12, label %43
    i8 19, label %58
    i8 18, label %58
    i8 17, label %58
    i8 6, label %58
    i8 7, label %58
    i8 5, label %58
    i8 4, label %58
    i8 20, label %58
    i8 21, label %58
    i8 22, label %58
    i8 23, label %58
    i8 24, label %58
    i8 25, label %58
    i8 26, label %58
    i8 27, label %58
    i8 28, label %58
    i8 29, label %58
    i8 30, label %58
    i8 31, label %58
    i8 32, label %58
    i8 33, label %58
    i8 34, label %58
    i8 35, label %58
    i8 36, label %58
    i8 37, label %58
    i8 38, label %58
    i8 39, label %58
    i8 40, label %58
    i8 41, label %58
    i8 44, label %58
    i8 42, label %58
    i8 43, label %58
    i8 45, label %58
    i8 46, label %58
    i8 47, label %58
    i8 48, label %58
    i8 49, label %58
    i8 50, label %58
    i8 51, label %58
    i8 54, label %58
    i8 53, label %58
    i8 52, label %58
    i8 55, label %58
    i8 56, label %58
    i8 58, label %58
    i8 59, label %58
    i8 60, label %58
    i8 61, label %58
    i8 62, label %58
    i8 63, label %58
    i8 64, label %58
    i8 65, label %58
    i8 66, label %58
    i8 67, label %58
    i8 68, label %58
    i8 69, label %58
    i8 70, label %58
    i8 71, label %58
    i8 72, label %58
    i8 73, label %58
    i8 74, label %58
    i8 75, label %58
    i8 76, label %58
    i8 77, label %58
    i8 78, label %58
    i8 79, label %58
    i8 80, label %58
    i8 93, label %58
    i8 94, label %58
    i8 95, label %58
    i8 96, label %58
    i8 97, label %58
    i8 98, label %58
    i8 99, label %58
    i8 107, label %58
    i8 90, label %73
    i8 89, label %73
    i8 82, label %73
    i8 106, label %73
    i8 116, label %73
    i8 117, label %73
    i8 114, label %73
    i8 115, label %73
    i8 92, label %73
    i8 102, label %92
    i8 111, label %107
    i8 104, label %109
    i8 103, label %128
    i8 105, label %134
    i8 2, label %176
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 4
  %24 = load i8, ptr %23, align 8, !tbaa !9
  %25 = icmp eq i8 %24, 64
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 11, ptr noundef nonnull @.str.51, i32 noundef 2, ptr noundef nonnull %20, ptr noundef nonnull %23) #4
  br label %28

28:                                               ; preds = %26, %22
  %29 = tail call ptr @LexGetToken() #4
  %30 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %30, ptr @zz_res, align 8, !tbaa !5
  store ptr %29, ptr @zz_hold, align 8, !tbaa !5
  %31 = icmp eq ptr %29, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %30, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  store ptr %36, ptr @zz_tmp, align 8, !tbaa !5
  %37 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  store ptr %38, ptr %35, align 8, !tbaa !9
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  store ptr %29, ptr %39, align 8, !tbaa !9
  store ptr %36, ptr %37, align 8, !tbaa !9
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  store ptr %30, ptr %40, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %28, %32, %34
  %42 = phi ptr [ %30, %34 ], [ %29, %32 ], [ %30, %28 ]
  store ptr %42, ptr %4, align 8, !tbaa !9
  br label %317

43:                                               ; preds = %18
  %44 = tail call ptr @LexGetToken() #4
  %45 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %45, ptr @zz_res, align 8, !tbaa !5
  store ptr %44, ptr @zz_hold, align 8, !tbaa !5
  %46 = icmp eq ptr %44, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = icmp eq ptr %45, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %51, ptr @zz_tmp, align 8, !tbaa !5
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  store ptr %53, ptr %50, align 8, !tbaa !9
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %53, i64 0, i64 1, i32 1
  store ptr %44, ptr %54, align 8, !tbaa !9
  store ptr %51, ptr %52, align 8, !tbaa !9
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1, i32 1
  store ptr %45, ptr %55, align 8, !tbaa !9
  br label %56

56:                                               ; preds = %43, %47, %49
  %57 = phi ptr [ %45, %49 ], [ %44, %47 ], [ %45, %43 ]
  store ptr %57, ptr %4, align 8, !tbaa !9
  br label %317

58:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %59 = tail call ptr @LexGetToken() #4
  %60 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %60, ptr @zz_res, align 8, !tbaa !5
  store ptr %59, ptr @zz_hold, align 8, !tbaa !5
  %61 = icmp eq ptr %59, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = icmp eq ptr %60, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  store ptr %66, ptr @zz_tmp, align 8, !tbaa !5
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  store ptr %68, ptr %65, align 8, !tbaa !9
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  store ptr %59, ptr %69, align 8, !tbaa !9
  store ptr %66, ptr %67, align 8, !tbaa !9
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %66, i64 0, i64 1, i32 1
  store ptr %60, ptr %70, align 8, !tbaa !9
  br label %71

71:                                               ; preds = %58, %62, %64
  %72 = phi ptr [ %60, %64 ], [ %59, %62 ], [ %60, %58 ]
  store ptr %72, ptr %4, align 8, !tbaa !9
  br label %317

73:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  %74 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = tail call ptr @SymName(ptr noundef %75) #4
  %77 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef 2, ptr noundef nonnull %20, ptr noundef %76) #4
  %78 = tail call ptr @LexGetToken() #4
  %79 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %79, ptr @zz_res, align 8, !tbaa !5
  store ptr %78, ptr @zz_hold, align 8, !tbaa !5
  %80 = icmp eq ptr %78, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %73
  %82 = icmp eq ptr %79, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  store ptr %85, ptr @zz_tmp, align 8, !tbaa !5
  %86 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  store ptr %87, ptr %84, align 8, !tbaa !9
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  store ptr %78, ptr %88, align 8, !tbaa !9
  store ptr %85, ptr %86, align 8, !tbaa !9
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  store ptr %79, ptr %89, align 8, !tbaa !9
  br label %90

90:                                               ; preds = %73, %81, %83
  %91 = phi ptr [ %79, %83 ], [ %78, %81 ], [ %79, %73 ]
  store ptr %91, ptr %4, align 8, !tbaa !9
  br label %317

92:                                               ; preds = %18
  tail call fastcc void @ReadTokenList(ptr noundef nonnull %19, ptr noundef %1)
  %93 = tail call ptr @LexGetToken() #4
  %94 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %94, ptr @zz_res, align 8, !tbaa !5
  store ptr %93, ptr @zz_hold, align 8, !tbaa !5
  %95 = icmp eq ptr %93, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = icmp eq ptr %94, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  store ptr %100, ptr @zz_tmp, align 8, !tbaa !5
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !9
  store ptr %102, ptr %99, align 8, !tbaa !9
  %103 = getelementptr inbounds [2 x %struct.LIST], ptr %102, i64 0, i64 1, i32 1
  store ptr %93, ptr %103, align 8, !tbaa !9
  store ptr %100, ptr %101, align 8, !tbaa !9
  %104 = getelementptr inbounds [2 x %struct.LIST], ptr %100, i64 0, i64 1, i32 1
  store ptr %94, ptr %104, align 8, !tbaa !9
  br label %105

105:                                              ; preds = %92, %96, %98
  %106 = phi ptr [ %94, %98 ], [ %93, %96 ], [ %94, %92 ]
  store ptr %106, ptr %4, align 8, !tbaa !9
  br label %317

107:                                              ; preds = %18
  %108 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 13, ptr noundef nonnull @.str.53, i32 noundef 1, ptr noundef nonnull %20) #4
  br label %317

109:                                              ; preds = %18
  %110 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = tail call ptr @SymName(ptr noundef %111) #4
  %113 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 14, ptr noundef nonnull @.str.54, i32 noundef 2, ptr noundef nonnull %20, ptr noundef %112) #4
  %114 = tail call ptr @LexGetToken() #4
  %115 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %115, ptr @zz_res, align 8, !tbaa !5
  store ptr %114, ptr @zz_hold, align 8, !tbaa !5
  %116 = icmp eq ptr %114, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %109
  %118 = icmp eq ptr %115, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %114, i64 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !9
  store ptr %121, ptr @zz_tmp, align 8, !tbaa !5
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !9
  store ptr %123, ptr %120, align 8, !tbaa !9
  %124 = getelementptr inbounds [2 x %struct.LIST], ptr %123, i64 0, i64 1, i32 1
  store ptr %114, ptr %124, align 8, !tbaa !9
  store ptr %121, ptr %122, align 8, !tbaa !9
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1, i32 1
  store ptr %115, ptr %125, align 8, !tbaa !9
  br label %126

126:                                              ; preds = %109, %117, %119
  %127 = phi ptr [ %115, %119 ], [ %114, %117 ], [ %115, %109 ]
  store ptr %127, ptr %4, align 8, !tbaa !9
  br label %317

128:                                              ; preds = %18
  %129 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %130 = load i8, ptr %129, align 8, !tbaa !9
  %131 = icmp eq i8 %130, 102
  br i1 %131, label %347, label %132

132:                                              ; preds = %128
  %133 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 15, ptr noundef nonnull @.str.55, i32 noundef 2, ptr noundef nonnull %20, ptr noundef nonnull @.str.56) #4
  br label %347

134:                                              ; preds = %18
  %135 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %136 = load i8, ptr %135, align 8, !tbaa !9
  %137 = icmp eq i8 %136, 104
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 16, ptr noundef nonnull @.str.55, i32 noundef 2, ptr noundef nonnull %20, ptr noundef nonnull @.str.57) #4
  br label %347

140:                                              ; preds = %134
  %141 = tail call ptr @LexGetToken() #4
  %142 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %142, ptr @zz_res, align 8, !tbaa !5
  store ptr %141, ptr @zz_hold, align 8, !tbaa !5
  %143 = icmp eq ptr %141, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = icmp eq ptr %142, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !9
  store ptr %148, ptr @zz_tmp, align 8, !tbaa !5
  %149 = getelementptr inbounds [2 x %struct.LIST], ptr %142, i64 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !9
  store ptr %150, ptr %147, align 8, !tbaa !9
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1, i32 1
  store ptr %141, ptr %151, align 8, !tbaa !9
  store ptr %148, ptr %149, align 8, !tbaa !9
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %148, i64 0, i64 1, i32 1
  store ptr %142, ptr %152, align 8, !tbaa !9
  br label %153

153:                                              ; preds = %140, %144, %146
  %154 = phi ptr [ %142, %146 ], [ %141, %144 ], [ %142, %140 ]
  store ptr %154, ptr %4, align 8, !tbaa !9
  %155 = getelementptr inbounds %struct.word_type, ptr %141, i64 0, i32 1
  %156 = load i8, ptr %155, align 8, !tbaa !9
  switch i8 %156, label %163 [
    i8 2, label %165
    i8 11, label %157
  ]

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.word_type, ptr %141, i64 0, i32 4
  %159 = load i8, ptr %158, align 8, !tbaa !9
  %160 = icmp eq i8 %159, 64
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 17, ptr noundef nonnull @.str.51, i32 noundef 2, ptr noundef nonnull %155, ptr noundef nonnull %158) #4
  br label %347

163:                                              ; preds = %153, %157
  %164 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 18, ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef nonnull %155, ptr noundef nonnull @.str.57) #4
  br label %347

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  %168 = getelementptr inbounds %struct.closure_type, ptr %141, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !9
  %170 = icmp eq ptr %167, %169
  br i1 %170, label %347, label %171

171:                                              ; preds = %165
  %172 = tail call ptr @SymName(ptr noundef %167) #4
  %173 = load ptr, ptr %168, align 8, !tbaa !9
  %174 = tail call ptr @SymName(ptr noundef %173) #4
  %175 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 19, ptr noundef nonnull @.str.59, i32 noundef 2, ptr noundef nonnull %155, ptr noundef %172, ptr noundef nonnull @.str.37, ptr noundef %174, ptr noundef nonnull @.str.57) #4
  br label %347

176:                                              ; preds = %18
  %177 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  tail call void @PushScope(ptr noundef %178, i32 noundef 1, i32 noundef 0) #4
  %179 = tail call ptr @LexGetToken() #4
  %180 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %180, ptr @zz_res, align 8, !tbaa !5
  store ptr %179, ptr @zz_hold, align 8, !tbaa !5
  %181 = icmp eq ptr %179, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %176
  %183 = icmp eq ptr %180, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %179, i64 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !9
  store ptr %186, ptr @zz_tmp, align 8, !tbaa !5
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %180, i64 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !9
  store ptr %188, ptr %185, align 8, !tbaa !9
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %188, i64 0, i64 1, i32 1
  store ptr %179, ptr %189, align 8, !tbaa !9
  store ptr %186, ptr %187, align 8, !tbaa !9
  %190 = getelementptr inbounds [2 x %struct.LIST], ptr %186, i64 0, i64 1, i32 1
  store ptr %180, ptr %190, align 8, !tbaa !9
  br label %191

191:                                              ; preds = %176, %182, %184
  %192 = phi ptr [ %180, %184 ], [ %179, %182 ], [ %180, %176 ]
  store ptr %192, ptr %4, align 8, !tbaa !9
  tail call void @PopScope() #4
  %193 = getelementptr inbounds %struct.word_type, ptr %179, i64 0, i32 1
  %194 = load i8, ptr %193, align 8, !tbaa !9
  %195 = and i8 %194, -2
  %196 = icmp eq i8 %195, 6
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  %198 = icmp eq i8 %194, 2
  br i1 %198, label %214, label %308

199:                                              ; preds = %191
  %200 = tail call ptr @LexGetToken() #4
  %201 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %201, ptr @zz_res, align 8, !tbaa !5
  store ptr %200, ptr @zz_hold, align 8, !tbaa !5
  %202 = icmp eq ptr %200, null
  br i1 %202, label %212, label %203

203:                                              ; preds = %199
  %204 = icmp eq ptr %201, null
  br i1 %204, label %212, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !9
  store ptr %207, ptr @zz_tmp, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !9
  store ptr %209, ptr %206, align 8, !tbaa !9
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1, i32 1
  store ptr %200, ptr %210, align 8, !tbaa !9
  store ptr %207, ptr %208, align 8, !tbaa !9
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %201, ptr %211, align 8, !tbaa !9
  br label %212

212:                                              ; preds = %199, %203, %205
  %213 = phi ptr [ %201, %205 ], [ %200, %203 ], [ %201, %199 ]
  store ptr %213, ptr %4, align 8, !tbaa !9
  br label %317

214:                                              ; preds = %197, %303
  %215 = phi ptr [ %291, %303 ], [ %179, %197 ]
  %216 = getelementptr inbounds %struct.closure_type, ptr %215, i64 0, i32 5
  %217 = load ptr, ptr %216, align 8, !tbaa !9
  %218 = getelementptr inbounds %struct.symbol_type, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !9
  %220 = icmp eq ptr %219, %178
  br i1 %220, label %221, label %308

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 1
  %223 = load i8, ptr %222, align 8, !tbaa !9
  %224 = icmp eq i8 %223, -111
  br i1 %224, label %225, label %308

225:                                              ; preds = %221
  %226 = tail call ptr @LexGetToken() #4
  %227 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %227, ptr @zz_res, align 8, !tbaa !5
  store ptr %226, ptr @zz_hold, align 8, !tbaa !5
  %228 = icmp eq ptr %226, null
  br i1 %228, label %238, label %229

229:                                              ; preds = %225
  %230 = icmp eq ptr %227, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !9
  store ptr %233, ptr @zz_tmp, align 8, !tbaa !5
  %234 = getelementptr inbounds [2 x %struct.LIST], ptr %227, i64 0, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !9
  store ptr %235, ptr %232, align 8, !tbaa !9
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %235, i64 0, i64 1, i32 1
  store ptr %226, ptr %236, align 8, !tbaa !9
  store ptr %233, ptr %234, align 8, !tbaa !9
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1, i32 1
  store ptr %227, ptr %237, align 8, !tbaa !9
  br label %238

238:                                              ; preds = %225, %229, %231
  %239 = phi ptr [ %227, %231 ], [ %226, %229 ], [ %227, %225 ]
  store ptr %239, ptr %4, align 8, !tbaa !9
  %240 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1
  %241 = load i8, ptr %240, align 8, !tbaa !9
  switch i8 %241, label %249 [
    i8 102, label %254
    i8 103, label %242
  ]

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %244 = load i8, ptr %243, align 8, !tbaa !9
  %245 = icmp eq i8 %244, 102
  br i1 %245, label %347, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1
  %248 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 20, ptr noundef nonnull @.str.55, i32 noundef 2, ptr noundef nonnull %247, ptr noundef nonnull @.str.56) #4
  br label %347

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.word_type, ptr %215, i64 0, i32 1
  %251 = load ptr, ptr %216, align 8, !tbaa !9
  %252 = tail call ptr @SymName(ptr noundef %251) #4
  %253 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 21, ptr noundef nonnull @.str.60, i32 noundef 2, ptr noundef nonnull %250, ptr noundef nonnull @.str.7, ptr noundef %252) #4
  br label %308

254:                                              ; preds = %238
  %255 = load ptr, ptr %216, align 8, !tbaa !9
  %256 = getelementptr inbounds %struct.symbol_type, ptr %255, i64 0, i32 9
  %257 = load ptr, ptr %256, align 8, !tbaa !9
  %258 = icmp eq ptr %257, null
  br i1 %258, label %282, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.LIST, ptr %257, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !9
  %262 = icmp eq ptr %261, %257
  br i1 %262, label %282, label %263

263:                                              ; preds = %259, %273
  %264 = phi ptr [ %278, %273 ], [ %261, %259 ]
  %265 = phi i32 [ %276, %273 ], [ 0, %259 ]
  br label %266

266:                                              ; preds = %263, %266
  %267 = phi ptr [ %269, %266 ], [ %264, %263 ]
  %268 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !9
  %270 = getelementptr inbounds %struct.word_type, ptr %269, i64 0, i32 1
  %271 = load i8, ptr %270, align 8, !tbaa !9
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %266, label %273

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.closure_type, ptr %269, i64 0, i32 5
  %275 = load ptr, ptr %274, align 8, !tbaa !9
  tail call void @PushScope(ptr noundef %275, i32 noundef 0, i32 noundef 1) #4
  %276 = add nuw nsw i32 %265, 1
  %277 = getelementptr inbounds %struct.LIST, ptr %264, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !9
  %279 = icmp eq ptr %278, %257
  br i1 %279, label %280, label %263

280:                                              ; preds = %273
  %281 = load ptr, ptr %216, align 8, !tbaa !9
  br label %282

282:                                              ; preds = %280, %259, %254
  %283 = phi ptr [ %255, %254 ], [ %255, %259 ], [ %281, %280 ]
  %284 = phi i32 [ 0, %254 ], [ 0, %259 ], [ %276, %280 ]
  tail call void @PushScope(ptr noundef %283, i32 noundef 0, i32 noundef 0) #4
  tail call fastcc void @ReadTokenList(ptr noundef %226, ptr noundef %1)
  tail call void @PopScope() #4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282, %286
  %287 = phi i32 [ %288, %286 ], [ 0, %282 ]
  tail call void @PopScope() #4
  %288 = add nuw i32 %287, 1
  %289 = icmp eq i32 %288, %284
  br i1 %289, label %290, label %286

290:                                              ; preds = %286, %282
  tail call void @PushScope(ptr noundef %178, i32 noundef 1, i32 noundef 0) #4
  %291 = tail call ptr @LexGetToken() #4
  %292 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %292, ptr @zz_res, align 8, !tbaa !5
  store ptr %291, ptr @zz_hold, align 8, !tbaa !5
  %293 = icmp eq ptr %291, null
  br i1 %293, label %303, label %294

294:                                              ; preds = %290
  %295 = icmp eq ptr %292, null
  br i1 %295, label %303, label %296

296:                                              ; preds = %294
  %297 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !9
  store ptr %298, ptr @zz_tmp, align 8, !tbaa !5
  %299 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !9
  store ptr %300, ptr %297, align 8, !tbaa !9
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %300, i64 0, i64 1, i32 1
  store ptr %291, ptr %301, align 8, !tbaa !9
  store ptr %298, ptr %299, align 8, !tbaa !9
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %298, i64 0, i64 1, i32 1
  store ptr %292, ptr %302, align 8, !tbaa !9
  br label %303

303:                                              ; preds = %290, %294, %296
  %304 = phi ptr [ %292, %296 ], [ %291, %294 ], [ %292, %290 ]
  store ptr %304, ptr %4, align 8, !tbaa !9
  tail call void @PopScope() #4
  %305 = getelementptr inbounds %struct.word_type, ptr %291, i64 0, i32 1
  %306 = load i8, ptr %305, align 8, !tbaa !9
  %307 = icmp eq i8 %306, 2
  br i1 %307, label %214, label %308

308:                                              ; preds = %221, %303, %214, %197, %249
  %309 = phi ptr [ %226, %249 ], [ %179, %197 ], [ %215, %221 ], [ %291, %303 ], [ %215, %214 ]
  %310 = getelementptr inbounds i8, ptr %178, i64 41
  %311 = load i24, ptr %310, align 1
  %312 = and i24 %311, 256
  %313 = icmp eq i24 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 1
  %316 = load i8, ptr %315, align 8, !tbaa !9
  switch i8 %316, label %340 [
    i8 102, label %319
    i8 104, label %319
    i8 103, label %317
    i8 105, label %317
  ]

317:                                              ; preds = %314, %314, %308, %340, %338, %343, %212, %126, %107, %105, %90, %71, %56, %41
  %318 = phi ptr [ %19, %343 ], [ %200, %212 ], [ %326, %338 ], [ %309, %340 ], [ %309, %308 ], [ %114, %126 ], [ %19, %107 ], [ %93, %105 ], [ %78, %90 ], [ %59, %71 ], [ %44, %56 ], [ %29, %41 ], [ %309, %314 ], [ %309, %314 ]
  br label %18

319:                                              ; preds = %314, %314
  tail call void @PushScope(ptr noundef nonnull %178, i32 noundef 0, i32 noundef 1) #4
  %320 = tail call ptr @ChildSym(ptr noundef nonnull %178, i32 noundef 146) #4
  tail call void @PushScope(ptr noundef %320, i32 noundef 0, i32 noundef 0) #4
  %321 = load i8, ptr %315, align 8, !tbaa !9
  %322 = icmp eq i8 %321, 104
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.closure_type, ptr %309, i64 0, i32 5
  store ptr %178, ptr %324, align 8, !tbaa !9
  br label %325

325:                                              ; preds = %323, %319
  tail call fastcc void @ReadTokenList(ptr noundef nonnull %309, ptr noundef nonnull %1)
  tail call void @PopScope() #4
  tail call void @PopScope() #4
  %326 = tail call ptr @LexGetToken() #4
  %327 = load ptr, ptr %4, align 8, !tbaa !9
  store ptr %327, ptr @zz_res, align 8, !tbaa !5
  store ptr %326, ptr @zz_hold, align 8, !tbaa !5
  %328 = icmp eq ptr %326, null
  br i1 %328, label %338, label %329

329:                                              ; preds = %325
  %330 = icmp eq ptr %327, null
  br i1 %330, label %338, label %331

331:                                              ; preds = %329
  %332 = getelementptr inbounds [2 x %struct.LIST], ptr %326, i64 0, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !9
  store ptr %333, ptr @zz_tmp, align 8, !tbaa !5
  %334 = getelementptr inbounds [2 x %struct.LIST], ptr %327, i64 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !9
  store ptr %335, ptr %332, align 8, !tbaa !9
  %336 = getelementptr inbounds [2 x %struct.LIST], ptr %335, i64 0, i64 1, i32 1
  store ptr %326, ptr %336, align 8, !tbaa !9
  store ptr %333, ptr %334, align 8, !tbaa !9
  %337 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1, i32 1
  store ptr %327, ptr %337, align 8, !tbaa !9
  br label %338

338:                                              ; preds = %325, %329, %331
  %339 = phi ptr [ %327, %331 ], [ %326, %329 ], [ %327, %325 ]
  store ptr %339, ptr %4, align 8, !tbaa !9
  br label %317

340:                                              ; preds = %314
  %341 = tail call ptr @SymName(ptr noundef nonnull %178) #4
  %342 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 22, ptr noundef nonnull @.str.61, i32 noundef 2, ptr noundef nonnull %315, ptr noundef %341, ptr noundef nonnull @.str.7) #4
  br label %317

343:                                              ; preds = %18
  %344 = zext i8 %21 to i32
  %345 = tail call ptr @Image(i32 noundef %344) #4
  %346 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 5, i32 noundef 23, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef nonnull %20, ptr noundef %345) #4
  br label %317

347:                                              ; preds = %242, %246, %138, %165, %171, %161, %163, %128, %132
  ret void
}

declare ptr @ChildSym(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}

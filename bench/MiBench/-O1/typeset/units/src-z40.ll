; ModuleID = 'src/z40.c'
source_filename = "src/z40.c"
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

@filter_count = internal unnamed_addr global i32 0, align 4
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@filter_active = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"louti\00", align 1
@FilterInSym = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@FilterOutSym = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"lout.err\00", align 1
@FilterErrSym = external local_unnamed_addr global ptr, align 8
@filter_in_filename = internal unnamed_addr global ptr null, align 8
@filter_out_filename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot open temporary filter file %s\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"FilterSetFileNames: x has no children!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(y)!\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"FilterSetFileNames: type(y) (2)!\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"FilterExecute: type(x)!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"FilterExecute: type(env)!\00", align 1
@SafeExecution = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"failure (non-zero status) of filter: %s\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"FilterWrite: type(x)!\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"cannot read filter temporary file %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @FilterInit() local_unnamed_addr #0 {
  store i32 0, ptr @filter_count, align 4, !tbaa !5
  %1 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %2 = zext i8 %1 to i32
  store i32 %2, ptr @zz_size, align 4, !tbaa !5
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr @GetMemory(i32 noundef %2, ptr noundef %8) #7
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  br label %12

10:                                               ; preds = %0
  store ptr %5, ptr @zz_hold, align 8, !tbaa !10
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  store ptr %11, ptr %4, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %9, %7 ], [ %5, %10 ]
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  store i8 17, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  store ptr %13, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !9
  store ptr %13, ptr %13, align 8, !tbaa !9
  store ptr %13, ptr @filter_active, align 8, !tbaa !10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %19 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %18) #7
  %20 = load ptr, ptr @FilterInSym, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.symbol_type, ptr %20, i64 0, i32 4
  store ptr %19, ptr %21, align 8, !tbaa !9
  %22 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %23 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.2, ptr noundef %22) #7
  %24 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.symbol_type, ptr %24, i64 0, i32 4
  store ptr %23, ptr %25, align 8, !tbaa !9
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %27 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.3, ptr noundef %26) #7
  %28 = load ptr, ptr @FilterErrSym, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.symbol_type, ptr %28, i64 0, i32 4
  store ptr %27, ptr %29, align 8, !tbaa !9
  %30 = load ptr, ptr @FilterInSym, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.symbol_type, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  store ptr %32, ptr @filter_in_filename, align 8, !tbaa !10
  %33 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %34 = getelementptr inbounds %struct.symbol_type, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  store ptr %35, ptr @filter_out_filename, align 8, !tbaa !10
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @FilterCreate(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #7
  %5 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 57), align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  store i32 %6, ptr @zz_size, align 4, !tbaa !5
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %13 = tail call ptr @GetMemory(i32 noundef %6, ptr noundef %12) #7
  store ptr %13, ptr @zz_hold, align 8, !tbaa !10
  br label %16

14:                                               ; preds = %3
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  %15 = load ptr, ptr %9, align 8, !tbaa !9
  store ptr %15, ptr %8, align 8, !tbaa !10
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %13, %11 ], [ %9, %14 ]
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  store i8 57, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !9
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1
  store ptr %17, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.LIST, ptr %17, i64 0, i32 1
  store ptr %17, ptr %21, align 8, !tbaa !9
  store ptr %17, ptr %17, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !12
  %24 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1, i32 0, i32 2
  store i16 %23, ptr %24, align 2, !tbaa !9
  %25 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1048575
  %28 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -1048576
  %31 = or disjoint i32 %30, %27
  store i32 %31, ptr %28, align 4
  %32 = load i32, ptr %25, align 4
  %33 = and i32 %32, -1048576
  %34 = or disjoint i32 %33, %27
  store i32 %34, ptr %28, align 4
  %35 = load i32, ptr @filter_count, align 4, !tbaa !5
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @filter_count, align 4, !tbaa !5
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.1, i32 noundef %36) #7
  %38 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.5)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 40, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4) #7
  br label %42

42:                                               ; preds = %40, %16
  %43 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %44 = getelementptr inbounds %struct.word_type, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 %0, 12
  %47 = and i32 %46, 4190208
  %48 = and i32 %45, -4190209
  %49 = or disjoint i32 %48, %47
  store i32 %49, ptr %44, align 8
  %50 = getelementptr inbounds %struct.word_type, ptr %43, i64 0, i32 3
  store ptr %1, ptr %50, align 8, !tbaa !9
  %51 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  store i32 %52, ptr @zz_size, align 4, !tbaa !5
  %53 = zext i8 %51 to i64
  %54 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %59 = call ptr @GetMemory(i32 noundef %52, ptr noundef %58) #7
  br label %62

60:                                               ; preds = %42
  store ptr %55, ptr @zz_hold, align 8, !tbaa !10
  %61 = load ptr, ptr %55, align 8, !tbaa !9
  store ptr %61, ptr %54, align 8, !tbaa !10
  br label %62

62:                                               ; preds = %57, %60
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
  store ptr %63, ptr @xx_link, align 8, !tbaa !10
  store ptr %63, ptr @zz_res, align 8, !tbaa !10
  store ptr %17, ptr @zz_hold, align 8, !tbaa !10
  %68 = load ptr, ptr %17, align 8, !tbaa !9
  store ptr %68, ptr @zz_tmp, align 8, !tbaa !10
  %69 = load ptr, ptr %63, align 8, !tbaa !9
  store ptr %69, ptr %17, align 8, !tbaa !9
  %70 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %71 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  store ptr %70, ptr %73, align 8, !tbaa !9
  %74 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %74, ptr %71, align 8, !tbaa !9
  %75 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %76 = getelementptr inbounds %struct.LIST, ptr %74, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !9
  %77 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %77, ptr @zz_res, align 8, !tbaa !10
  store ptr %43, ptr @zz_hold, align 8, !tbaa !10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %62
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  store ptr %81, ptr @zz_tmp, align 8, !tbaa !10
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  store ptr %83, ptr %80, align 8, !tbaa !9
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1, i32 1
  store ptr %43, ptr %84, align 8, !tbaa !9
  store ptr %81, ptr %82, align 8, !tbaa !9
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  store ptr %77, ptr %85, align 8, !tbaa !9
  br label %86

86:                                               ; preds = %62, %79
  %87 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  store i32 %88, ptr @zz_size, align 4, !tbaa !5
  %89 = zext i8 %87 to i64
  %90 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %95 = call ptr @GetMemory(i32 noundef %88, ptr noundef %94) #7
  br label %98

96:                                               ; preds = %86
  store ptr %91, ptr @zz_hold, align 8, !tbaa !10
  %97 = load ptr, ptr %91, align 8, !tbaa !9
  store ptr %97, ptr %90, align 8, !tbaa !10
  br label %98

98:                                               ; preds = %93, %96
  %99 = phi ptr [ %95, %93 ], [ %91, %96 ]
  %100 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  store i8 0, ptr %100, align 8, !tbaa !9
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %99, i64 0, i64 1, i32 1
  store ptr %99, ptr %101, align 8, !tbaa !9
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %99, i64 0, i64 1
  store ptr %99, ptr %102, align 8, !tbaa !9
  %103 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  store ptr %99, ptr %103, align 8, !tbaa !9
  store ptr %99, ptr %99, align 8, !tbaa !9
  store ptr %99, ptr @xx_link, align 8, !tbaa !10
  store ptr %99, ptr @zz_res, align 8, !tbaa !10
  %104 = load ptr, ptr @filter_active, align 8, !tbaa !10
  store ptr %104, ptr @zz_hold, align 8, !tbaa !10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store ptr %43, ptr @zz_hold, align 8, !tbaa !10
  br label %119

107:                                              ; preds = %98
  %108 = load ptr, ptr %104, align 8, !tbaa !9
  store ptr %108, ptr @zz_tmp, align 8, !tbaa !10
  %109 = load ptr, ptr %99, align 8, !tbaa !9
  store ptr %109, ptr %104, align 8, !tbaa !9
  %110 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %111 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %112 = load ptr, ptr %111, align 8, !tbaa !9
  %113 = getelementptr inbounds %struct.LIST, ptr %112, i64 0, i32 1
  store ptr %110, ptr %113, align 8, !tbaa !9
  %114 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %114, ptr %111, align 8, !tbaa !9
  %115 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %116 = getelementptr inbounds %struct.LIST, ptr %114, i64 0, i32 1
  store ptr %115, ptr %116, align 8, !tbaa !9
  %117 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %117, ptr @zz_res, align 8, !tbaa !10
  store ptr %43, ptr @zz_hold, align 8, !tbaa !10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %106, %107
  %120 = phi ptr [ %99, %106 ], [ %117, %107 ]
  %121 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !9
  store ptr %122, ptr @zz_tmp, align 8, !tbaa !10
  %123 = getelementptr inbounds [2 x %struct.LIST], ptr %120, i64 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !9
  store ptr %124, ptr %121, align 8, !tbaa !9
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1, i32 1
  store ptr %43, ptr %125, align 8, !tbaa !9
  store ptr %122, ptr %123, align 8, !tbaa !9
  %126 = getelementptr inbounds [2 x %struct.LIST], ptr %122, i64 0, i64 1, i32 1
  store ptr %120, ptr %126, align 8, !tbaa !9
  br label %127

127:                                              ; preds = %107, %119
  %128 = call ptr @LexScanVerbatim(ptr noundef %38, i32 noundef %0, ptr noundef nonnull %2, i32 noundef 0) #7
  %129 = call i32 @fclose(ptr noundef %38)
  %130 = load i32, ptr @filter_count, align 4, !tbaa !5
  %131 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.2, i32 noundef %130) #7
  %132 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %133 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %134 = zext i8 %133 to i32
  store i32 %134, ptr @zz_size, align 4, !tbaa !5
  %135 = zext i8 %133 to i64
  %136 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %141 = call ptr @GetMemory(i32 noundef %134, ptr noundef %140) #7
  br label %144

142:                                              ; preds = %127
  store ptr %137, ptr @zz_hold, align 8, !tbaa !10
  %143 = load ptr, ptr %137, align 8, !tbaa !9
  store ptr %143, ptr %136, align 8, !tbaa !10
  br label %144

144:                                              ; preds = %139, %142
  %145 = phi ptr [ %141, %139 ], [ %137, %142 ]
  %146 = getelementptr inbounds %struct.word_type, ptr %145, i64 0, i32 1
  store i8 0, ptr %146, align 8, !tbaa !9
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1, i32 1
  store ptr %145, ptr %147, align 8, !tbaa !9
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1
  store ptr %145, ptr %148, align 8, !tbaa !9
  %149 = getelementptr inbounds %struct.LIST, ptr %145, i64 0, i32 1
  store ptr %145, ptr %149, align 8, !tbaa !9
  store ptr %145, ptr %145, align 8, !tbaa !9
  store ptr %145, ptr @xx_link, align 8, !tbaa !10
  store ptr %145, ptr @zz_res, align 8, !tbaa !10
  store ptr %17, ptr @zz_hold, align 8, !tbaa !10
  %150 = load ptr, ptr %17, align 8, !tbaa !9
  store ptr %150, ptr @zz_tmp, align 8, !tbaa !10
  %151 = load ptr, ptr %145, align 8, !tbaa !9
  store ptr %151, ptr %17, align 8, !tbaa !9
  %152 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %153 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %154 = load ptr, ptr %153, align 8, !tbaa !9
  %155 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  store ptr %152, ptr %155, align 8, !tbaa !9
  %156 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %156, ptr %153, align 8, !tbaa !9
  %157 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %158 = getelementptr inbounds %struct.LIST, ptr %156, i64 0, i32 1
  store ptr %157, ptr %158, align 8, !tbaa !9
  %159 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %159, ptr @zz_res, align 8, !tbaa !10
  store ptr %132, ptr @zz_hold, align 8, !tbaa !10
  %160 = icmp eq ptr %132, null
  %161 = icmp eq ptr %159, null
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %144
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !9
  store ptr %165, ptr @zz_tmp, align 8, !tbaa !10
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  store ptr %167, ptr %164, align 8, !tbaa !9
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1, i32 1
  store ptr %132, ptr %168, align 8, !tbaa !9
  store ptr %165, ptr %166, align 8, !tbaa !9
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1, i32 1
  store ptr %159, ptr %169, align 8, !tbaa !9
  br label %170

170:                                              ; preds = %144, %163
  %171 = getelementptr inbounds i8, ptr %1, i64 41
  %172 = load i24, ptr %171, align 1
  %173 = and i24 %172, 256
  %174 = icmp eq i24 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  call void @PushScope(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #7
  br label %176

176:                                              ; preds = %175, %170
  %177 = call ptr @GetScopeSnapshot() #7
  %178 = load i24, ptr %171, align 1
  %179 = and i24 %178, 256
  %180 = icmp eq i24 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  call void @PopScope() #7
  br label %182

182:                                              ; preds = %181, %176
  %183 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %184 = zext i8 %183 to i32
  store i32 %184, ptr @zz_size, align 4, !tbaa !5
  %185 = zext i8 %183 to i64
  %186 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !10
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %191 = call ptr @GetMemory(i32 noundef %184, ptr noundef %190) #7
  br label %194

192:                                              ; preds = %182
  store ptr %187, ptr @zz_hold, align 8, !tbaa !10
  %193 = load ptr, ptr %187, align 8, !tbaa !9
  store ptr %193, ptr %186, align 8, !tbaa !10
  br label %194

194:                                              ; preds = %189, %192
  %195 = phi ptr [ %191, %189 ], [ %187, %192 ]
  %196 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1
  store i8 0, ptr %196, align 8, !tbaa !9
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1, i32 1
  store ptr %195, ptr %197, align 8, !tbaa !9
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1
  store ptr %195, ptr %198, align 8, !tbaa !9
  %199 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %195, ptr %199, align 8, !tbaa !9
  store ptr %195, ptr %195, align 8, !tbaa !9
  store ptr %195, ptr @xx_link, align 8, !tbaa !10
  store ptr %195, ptr @zz_res, align 8, !tbaa !10
  store ptr %17, ptr @zz_hold, align 8, !tbaa !10
  %200 = load ptr, ptr %17, align 8, !tbaa !9
  store ptr %200, ptr @zz_tmp, align 8, !tbaa !10
  %201 = load ptr, ptr %195, align 8, !tbaa !9
  store ptr %201, ptr %17, align 8, !tbaa !9
  %202 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %203 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = getelementptr inbounds %struct.LIST, ptr %204, i64 0, i32 1
  store ptr %202, ptr %205, align 8, !tbaa !9
  %206 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %206, ptr %203, align 8, !tbaa !9
  %207 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %208 = getelementptr inbounds %struct.LIST, ptr %206, i64 0, i32 1
  store ptr %207, ptr %208, align 8, !tbaa !9
  %209 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %209, ptr @zz_res, align 8, !tbaa !10
  store ptr %177, ptr @zz_hold, align 8, !tbaa !10
  %210 = icmp eq ptr %177, null
  %211 = icmp eq ptr %209, null
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %220, label %213

213:                                              ; preds = %194
  %214 = getelementptr inbounds [2 x %struct.LIST], ptr %177, i64 0, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !9
  store ptr %215, ptr @zz_tmp, align 8, !tbaa !10
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !9
  store ptr %217, ptr %214, align 8, !tbaa !9
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %177, ptr %218, align 8, !tbaa !9
  store ptr %215, ptr %216, align 8, !tbaa !9
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %209, ptr %219, align 8, !tbaa !9
  br label %220

220:                                              ; preds = %194, %213
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #7
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare ptr @LexScanVerbatim(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GetScopeSnapshot() local_unnamed_addr #1

declare void @PopScope() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @FilterSetFileNames(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !9
  %4 = icmp eq i8 %3, 57
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.8) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %14 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %13, ptr noundef nonnull @.str.9) #7
  %15 = load ptr, ptr %9, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %10, %8 ], [ %15, %12 ]
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %21, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.word_type, ptr %21, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !9
  switch i8 %23, label %24 [
    i8 0, label %18
    i8 11, label %27
  ]

24:                                               ; preds = %18
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %26 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %25, ptr noundef nonnull @.str.10) #7
  br label %27

27:                                               ; preds = %18, %24
  %28 = load ptr, ptr @FilterInSym, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.symbol_type, ptr %28, i64 0, i32 4
  store ptr %21, ptr %29, align 8, !tbaa !9
  %30 = load ptr, ptr %9, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi ptr [ %32, %27 ], [ %36, %33 ]
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !9
  switch i8 %38, label %39 [
    i8 0, label %33
    i8 11, label %42
  ]

39:                                               ; preds = %33
  %40 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %41 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %40, ptr noundef nonnull @.str.11) #7
  br label %42

42:                                               ; preds = %33, %39
  %43 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.symbol_type, ptr %43, i64 0, i32 4
  store ptr %36, ptr %44, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FilterExecute(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !9
  %8 = icmp eq i8 %7, 57
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.12) #7
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !9
  %15 = icmp eq i8 %14, 82
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.13) #7
  br label %19

19:                                               ; preds = %16, %12
  %20 = load ptr, ptr @filter_in_filename, align 8, !tbaa !10
  %21 = load ptr, ptr @FilterInSym, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.symbol_type, ptr %21, i64 0, i32 4
  store ptr %20, ptr %22, align 8, !tbaa !9
  %23 = load i32, ptr @SafeExecution, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 40, i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef 2, ptr noundef nonnull %6, ptr noundef %1) #7
  %27 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #7
  br label %79

28:                                               ; preds = %19
  %29 = tail call i32 @system(ptr noundef %1) #7
  %30 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 2048, ptr noundef nonnull %30)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %32, %42
  %36 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #8
  %37 = add i64 %36, -1
  %38 = getelementptr inbounds [2048 x i8], ptr %5, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8 0, ptr %38, align 1, !tbaa !9
  br label %42

42:                                               ; preds = %41, %35
  %43 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 40, i32 noundef 3, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  %44 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 2048, ptr noundef nonnull %30)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %35

46:                                               ; preds = %42, %32
  %47 = call i32 @fclose(ptr noundef nonnull %30)
  %48 = call i32 @remove(ptr noundef nonnull @.str.3) #7
  br label %49

49:                                               ; preds = %46, %28
  %50 = icmp eq i32 %29, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 40, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull %6, ptr noundef %1) #7
  br label %53

53:                                               ; preds = %51, %49
  %54 = load ptr, ptr %0, align 8, !tbaa !9
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %54, %53 ], [ %58, %55 ]
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.word_type, ptr %58, i64 0, i32 1
  %60 = load i8, ptr %59, align 8, !tbaa !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %55, label %62

62:                                               ; preds = %55
  call void @LoadScopeSnapshot(ptr noundef nonnull %58) #7
  %63 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.symbol_type, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 4
  %67 = call zeroext i16 @DefineFile(ptr noundef nonnull %66, ptr noundef nonnull @.str.15, ptr noundef nonnull %6, i32 noundef 10, i32 noundef 0) #7
  call void @LexPush(i16 noundef zeroext %67, i32 noundef 0, i32 noundef 10, i32 noundef 1, i32 noundef 0) #7
  %68 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %69 = call ptr @NewToken(i8 noundef zeroext 104, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %68) #7
  store ptr %69, ptr %4, align 8, !tbaa !10
  %70 = call ptr @Parse(ptr noundef nonnull %4, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @LexPop() #7
  call void @ClearScopeSnapshot(ptr noundef nonnull %58) #7
  %71 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %72 = getelementptr inbounds %struct.symbol_type, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct.word_type, ptr %73, i64 0, i32 4
  %75 = call i32 @remove(ptr noundef nonnull %74) #7
  %76 = load ptr, ptr @filter_out_filename, align 8, !tbaa !10
  %77 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.symbol_type, ptr %77, i64 0, i32 4
  store ptr %76, ptr %78, align 8, !tbaa !9
  br label %79

79:                                               ; preds = %62, %25
  %80 = phi ptr [ %27, %25 ], [ %70, %62 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %80
}

; Function Attrs: nofree
declare noundef i32 @system(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #3

declare void @LoadScopeSnapshot(ptr noundef) local_unnamed_addr #1

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @LexPush(i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @LexPop() local_unnamed_addr #1

declare void @ClearScopeSnapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FilterWrite(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i8 %5, 57
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.19) #7
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %12, %10 ], [ %16, %13 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 4
  %22 = tail call noalias ptr @fopen(ptr noundef nonnull %21, ptr noundef nonnull @.str.16)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 40, i32 noundef 5, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %21) #7
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 4190208
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %1)
  %33 = tail call i32 @fputc(i32 10, ptr %1)
  %34 = load i32, ptr %2, align 4, !tbaa !5
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %2, align 4, !tbaa !5
  %36 = tail call i32 @getc(ptr noundef %22)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %48, label %38

38:                                               ; preds = %31, %45
  %39 = phi i32 [ %46, %45 ], [ %36, %31 ]
  %40 = tail call i32 @putc(i32 noundef %39, ptr noundef %1)
  %41 = icmp eq i32 %39, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, ptr %2, align 4, !tbaa !5
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %2, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %42, %38
  %46 = tail call i32 @getc(ptr noundef %22)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %38

48:                                               ; preds = %45, %31
  %49 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr %1)
  %50 = tail call i32 @fputc(i32 32, ptr %1)
  %51 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = tail call ptr @SymName(ptr noundef %52) #7
  %54 = tail call i32 @fputs(ptr noundef %53, ptr noundef %1)
  br label %74

55:                                               ; preds = %26
  %56 = tail call i32 @fputc(i32 123, ptr %1)
  %57 = tail call i32 @fputc(i32 10, ptr %1)
  %58 = load i32, ptr %2, align 4, !tbaa !5
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %2, align 4, !tbaa !5
  %60 = tail call i32 @getc(ptr noundef %22)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %72, label %62

62:                                               ; preds = %55, %69
  %63 = phi i32 [ %70, %69 ], [ %60, %55 ]
  %64 = tail call i32 @putc(i32 noundef %63, ptr noundef %1)
  %65 = icmp eq i32 %63, 10
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4, !tbaa !5
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %2, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %66, %62
  %70 = tail call i32 @getc(ptr noundef %22)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %62

72:                                               ; preds = %69, %55
  %73 = tail call i32 @fputc(i32 125, ptr %1)
  br label %74

74:                                               ; preds = %72, %48
  %75 = tail call i32 @fputc(i32 10, ptr %1)
  %76 = load i32, ptr %2, align 4, !tbaa !5
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %2, align 4, !tbaa !5
  %78 = tail call i32 @fclose(ptr noundef %22)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @SymName(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FilterScavenge(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @filter_active, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.LIST, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %77, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %0, 0
  br label %8

8:                                                ; preds = %6, %74
  %9 = phi ptr [ %4, %6 ], [ %19, %74 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %13, %10 ], [ %9, %8 ]
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %10, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  br i1 %7, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  %22 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load ptr, ptr %21, align 8, !tbaa !9
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %20, %17
  %27 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 4
  %28 = tail call i32 @remove(ptr noundef nonnull %27) #7
  store ptr %9, ptr @xx_link, align 8, !tbaa !10
  %29 = getelementptr inbounds [2 x %struct.LIST], ptr %9, i64 0, i64 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, %9
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  store ptr %30, ptr @zz_res, align 8, !tbaa !10
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %9, i64 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1, i32 1
  store ptr %30, ptr %36, align 8, !tbaa !9
  store ptr %9, ptr %29, align 8, !tbaa !9
  store ptr %9, ptr %33, align 8, !tbaa !9
  br label %37

37:                                               ; preds = %26, %32
  %38 = phi ptr [ %30, %32 ], [ null, %26 ]
  store ptr %38, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  %39 = load ptr, ptr %18, align 8, !tbaa !9
  %40 = icmp eq ptr %39, %9
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  store ptr %39, ptr @zz_res, align 8, !tbaa !10
  %42 = load ptr, ptr %9, align 8, !tbaa !9
  store ptr %42, ptr %39, align 8, !tbaa !9
  %43 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %44 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  store ptr %44, ptr %47, align 8, !tbaa !9
  store ptr %44, ptr %44, align 8, !tbaa !9
  %48 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %49

49:                                               ; preds = %37, %41
  %50 = phi ptr [ %9, %37 ], [ %48, %41 ]
  store ptr %50, ptr @zz_hold, align 8, !tbaa !10
  %51 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 8, !tbaa !9
  %53 = add i8 %52, -11
  %54 = icmp ult i8 %53, 2
  %55 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1, i32 0, i32 1
  %56 = zext i8 %52 to i64
  %57 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %56
  %58 = select i1 %54, ptr %55, ptr %57
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i32
  store i32 %60, ptr @zz_size, align 4, !tbaa !5
  %61 = zext i8 %59 to i64
  %62 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !10
  store ptr %63, ptr %50, align 8, !tbaa !9
  %64 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %65 = load i32, ptr @zz_size, align 4, !tbaa !5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %66
  store ptr %64, ptr %67, align 8, !tbaa !10
  %68 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !9
  %71 = icmp eq ptr %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %49
  %73 = tail call i32 @DisposeObject(ptr noundef nonnull %68) #7
  br label %74

74:                                               ; preds = %20, %72, %49
  %75 = load ptr, ptr @filter_active, align 8, !tbaa !10
  %76 = icmp eq ptr %19, %75
  br i1 %76, label %77, label %8

77:                                               ; preds = %74, %1
  ret void
}

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 2}
!13 = !{!"", !7, i64 0, !7, i64 1, !14, i64 2, !6, i64 4, !6, i64 6}
!14 = !{!"short", !7, i64 0}

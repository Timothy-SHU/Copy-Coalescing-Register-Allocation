; ModuleID = 'src/z10.c'
source_filename = "src/z10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, ptr, i32, i32, i32, i32, ptr, ptr, i16 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.anon.14 = type { i32, i32, [1 x ptr] }
%struct.crossref_rec = type { ptr, ptr, i16, i32 }

@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@RootCross = internal unnamed_addr global ptr null, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s&%d is too long\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CrossExpand: x!\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CrossExpand: #args!\00", align 1
@nbt = internal global [2 x ptr] zeroinitializer, align 16
@nft = internal global [2 x ptr] zeroinitializer, align 16
@ntarget = internal global ptr null, align 8
@nenclose = internal global ptr null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"ClosureExpand: type(y) != CLOSURE!\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foll_or_prec\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"value of right parameter of %s is not a simple word\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"value of right parameter of %s is an empty word\00", align 1
@MomentSym = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"symbol %s used in cross reference has no %s parameter\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CrossExpand: db!\00", align 1
@OldCrossDb = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"CrossExpand/CROSS_FOLL: cs == nilobj!\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"CrossExpand/CROSS_FOLL: type(cs)!\00", align 1
@crossref_tab = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s_%d is too long\00", align 1
@AllowCrossDb = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"unresolved cross reference %s%s%s\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"CrossExpand: type(res) != CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"CrossExpand: actual(res) != sym!\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"CrossSequence: type(x)!\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"CrossSequence: type(tmp)!\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"CrossSequence: cs!\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"CrossSequence/GALL_FOLL: type(val)!\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"%s parameter is not a word\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"badkey\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"%s parameter is an empty word\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"no %s galley target precedes this %s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CrossSequence: gall_tag!\00", align 1
@NewCrossDb = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [28 x i8] c"CrossSequence: GALL_TARG y!\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"CrossSequence: cs_type!\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"no %s precedes this %s%s%s\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"tag of %s is not a simple word\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"CrossSeq: Up(tag)!\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"CrossSequence: target_val!\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"CrossSequence: Down(PAR)!\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"CrossSeq: non-WORD or empty tag!\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"CrossSequence:\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"CrossClose: type(cs)!\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"CrossClose: GALL_TARG y!\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"no %s follows this %s%s%s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"and more undefined %s%s%s\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"no %s follows or precedes this %s%s%s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"no %s precedes or follows this %s%s%s\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"CrossClose: unknown cs_type!\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"automatically generated tag is too long (contains %s)\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"%d.%d.%s.%d\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging crossref table\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CrossInit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 140), align 1, !tbaa !5
  %3 = zext i8 %2 to i32
  store i32 %3, ptr @zz_size, align 4, !tbaa !8
  %4 = zext i8 %2 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr @GetMemory(i32 noundef %3, ptr noundef %9) #9
  store ptr %10, ptr @zz_hold, align 8, !tbaa !10
  br label %13

11:                                               ; preds = %1
  store ptr %6, ptr @zz_hold, align 8, !tbaa !10
  %12 = load ptr, ptr %6, align 8, !tbaa !5
  store ptr %12, ptr %5, align 8, !tbaa !10
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %10, %8 ], [ %6, %11 ]
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  store i8 -116, ptr %15, align 8, !tbaa !5
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %17 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1, i32 1
  store ptr %14, ptr %17, align 8, !tbaa !5
  store ptr %14, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  store ptr %14, ptr %18, align 8, !tbaa !5
  store ptr %14, ptr %14, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 2
  store i8 0, ptr %19, align 1, !tbaa !5
  %20 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 8
  store i32 0, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 10
  store ptr null, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 11
  store i16 0, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.cr_type, ptr %14, i64 0, i32 9
  store ptr %0, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.symbol_type, ptr %0, i64 0, i32 8
  store ptr %14, ptr %25, align 8, !tbaa !5
  %26 = load ptr, ptr @RootCross, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %13
  %29 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 141), align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  store i32 %30, ptr @zz_size, align 4, !tbaa !8
  %31 = zext i8 %29 to i64
  %32 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %37 = tail call ptr @GetMemory(i32 noundef %30, ptr noundef %36) #9
  store ptr %37, ptr @zz_hold, align 8, !tbaa !10
  br label %40

38:                                               ; preds = %28
  store ptr %33, ptr @zz_hold, align 8, !tbaa !10
  %39 = load ptr, ptr %33, align 8, !tbaa !5
  store ptr %39, ptr %32, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi ptr [ %37, %35 ], [ %33, %38 ]
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  store i8 -115, ptr %42, align 8, !tbaa !5
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1, i32 1
  store ptr %41, ptr %43, align 8, !tbaa !5
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1
  store ptr %41, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  store ptr %41, ptr %45, align 8, !tbaa !5
  store ptr %41, ptr %41, align 8, !tbaa !5
  store ptr %41, ptr @RootCross, align 8, !tbaa !10
  br label %46

46:                                               ; preds = %40, %13
  %47 = phi ptr [ %41, %40 ], [ %26, %13 ]
  %48 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %49 = zext i8 %48 to i32
  store i32 %49, ptr @zz_size, align 4, !tbaa !8
  %50 = zext i8 %48 to i64
  %51 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %56 = tail call ptr @GetMemory(i32 noundef %49, ptr noundef %55) #9
  %57 = load ptr, ptr @RootCross, align 8, !tbaa !10
  br label %60

58:                                               ; preds = %46
  store ptr %52, ptr @zz_hold, align 8, !tbaa !10
  %59 = load ptr, ptr %52, align 8, !tbaa !5
  store ptr %59, ptr %51, align 8, !tbaa !10
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %57, %54 ], [ %47, %58 ]
  %62 = phi ptr [ %56, %54 ], [ %52, %58 ]
  %63 = getelementptr inbounds %struct.word_type, ptr %62, i64 0, i32 1
  store i8 0, ptr %63, align 8, !tbaa !5
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1, i32 1
  store ptr %62, ptr %64, align 8, !tbaa !5
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1
  store ptr %62, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.LIST, ptr %62, i64 0, i32 1
  store ptr %62, ptr %66, align 8, !tbaa !5
  store ptr %62, ptr %62, align 8, !tbaa !5
  store ptr %62, ptr @xx_link, align 8, !tbaa !10
  store ptr %62, ptr @zz_res, align 8, !tbaa !10
  store ptr %61, ptr @zz_hold, align 8, !tbaa !10
  %67 = icmp eq ptr %61, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store ptr %14, ptr @zz_hold, align 8, !tbaa !10
  br label %84

69:                                               ; preds = %60
  %70 = load ptr, ptr %61, align 8, !tbaa !5
  store ptr %70, ptr @zz_tmp, align 8, !tbaa !10
  %71 = load ptr, ptr %62, align 8, !tbaa !5
  store ptr %71, ptr %61, align 8, !tbaa !5
  %72 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %73 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.LIST, ptr %74, i64 0, i32 1
  store ptr %72, ptr %75, align 8, !tbaa !5
  %76 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %76, ptr %73, align 8, !tbaa !5
  %77 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.LIST, ptr %76, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !5
  %79 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %79, ptr @zz_res, align 8, !tbaa !10
  store ptr %14, ptr @zz_hold, align 8, !tbaa !10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  br label %84

84:                                               ; preds = %81, %68
  %85 = phi ptr [ %62, %68 ], [ %83, %81 ]
  %86 = phi ptr [ %62, %68 ], [ %79, %81 ]
  %87 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %87, ptr @zz_tmp, align 8, !tbaa !10
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1
  store ptr %85, ptr %16, align 8, !tbaa !5
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1, i32 1
  store ptr %14, ptr %90, align 8, !tbaa !5
  store ptr %87, ptr %88, align 8, !tbaa !5
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  store ptr %86, ptr %91, align 8, !tbaa !5
  br label %92

92:                                               ; preds = %69, %84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CrossMake(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 6), align 1, !tbaa !5
  %5 = zext i8 %4 to i32
  store i32 %5, ptr @zz_size, align 4, !tbaa !8
  %6 = zext i8 %4 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %12 = tail call ptr @GetMemory(i32 noundef %5, ptr noundef %11) #9
  store ptr %12, ptr @zz_hold, align 8, !tbaa !10
  br label %15

13:                                               ; preds = %3
  store ptr %8, ptr @zz_hold, align 8, !tbaa !10
  %14 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %14, ptr %7, align 8, !tbaa !10
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %12, %10 ], [ %8, %13 ]
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  store i8 6, ptr %17, align 8, !tbaa !5
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1
  store ptr %16, ptr %19, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  store ptr %16, ptr %20, align 8, !tbaa !5
  store ptr %16, ptr %16, align 8, !tbaa !5
  %21 = trunc i32 %2 to i8
  %22 = getelementptr inbounds i8, ptr %16, i64 41
  store i8 %21, ptr %22, align 1, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %16, i64 42
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, -5
  store i16 %25, ptr %23, align 2
  %26 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  store i32 %27, ptr @zz_size, align 4, !tbaa !8
  %28 = zext i8 %26 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %34 = tail call ptr @GetMemory(i32 noundef %27, ptr noundef %33) #9
  store ptr %34, ptr @zz_hold, align 8, !tbaa !10
  br label %37

35:                                               ; preds = %15
  store ptr %30, ptr @zz_hold, align 8, !tbaa !10
  %36 = load ptr, ptr %30, align 8, !tbaa !5
  store ptr %36, ptr %29, align 8, !tbaa !10
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %34, %32 ], [ %30, %35 ]
  %39 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 1
  store i8 2, ptr %39, align 8, !tbaa !5
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  store ptr %38, ptr %41, align 8, !tbaa !5
  store ptr %38, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  store ptr %38, ptr %42, align 8, !tbaa !5
  store ptr %38, ptr %38, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.closure_type, ptr %38, i64 0, i32 5
  store ptr %0, ptr %43, align 8, !tbaa !5
  %44 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %45 = zext i8 %44 to i32
  store i32 %45, ptr @zz_size, align 4, !tbaa !8
  %46 = zext i8 %44 to i64
  %47 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %52 = tail call ptr @GetMemory(i32 noundef %45, ptr noundef %51) #9
  br label %55

53:                                               ; preds = %37
  store ptr %48, ptr @zz_hold, align 8, !tbaa !10
  %54 = load ptr, ptr %48, align 8, !tbaa !5
  store ptr %54, ptr %47, align 8, !tbaa !10
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi ptr [ %52, %50 ], [ %48, %53 ]
  %57 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1
  store i8 0, ptr %57, align 8, !tbaa !5
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1, i32 1
  store ptr %56, ptr %58, align 8, !tbaa !5
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  store ptr %56, ptr %59, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.LIST, ptr %56, i64 0, i32 1
  store ptr %56, ptr %60, align 8, !tbaa !5
  store ptr %56, ptr %56, align 8, !tbaa !5
  store ptr %56, ptr @xx_link, align 8, !tbaa !10
  store ptr %56, ptr @zz_res, align 8, !tbaa !10
  store ptr %16, ptr @zz_hold, align 8, !tbaa !10
  %61 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %61, ptr @zz_tmp, align 8, !tbaa !10
  %62 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %62, ptr %16, align 8, !tbaa !5
  %63 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %64 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !5
  %67 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %67, ptr %64, align 8, !tbaa !5
  %68 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %69 = getelementptr inbounds %struct.LIST, ptr %67, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !5
  %70 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %70, ptr @zz_res, align 8, !tbaa !10
  store ptr %38, ptr @zz_hold, align 8, !tbaa !10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %55
  %73 = load ptr, ptr %40, align 8, !tbaa !5
  store ptr %73, ptr @zz_tmp, align 8, !tbaa !10
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %70, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  store ptr %75, ptr %40, align 8, !tbaa !5
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %38, ptr %76, align 8, !tbaa !5
  store ptr %73, ptr %74, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1, i32 1
  store ptr %70, ptr %77, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %55, %72
  %79 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %80 = zext i8 %79 to i32
  store i32 %80, ptr @zz_size, align 4, !tbaa !8
  %81 = zext i8 %79 to i64
  %82 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %87 = tail call ptr @GetMemory(i32 noundef %80, ptr noundef %86) #9
  br label %90

88:                                               ; preds = %78
  store ptr %83, ptr @zz_hold, align 8, !tbaa !10
  %89 = load ptr, ptr %83, align 8, !tbaa !5
  store ptr %89, ptr %82, align 8, !tbaa !10
  br label %90

90:                                               ; preds = %85, %88
  %91 = phi ptr [ %87, %85 ], [ %83, %88 ]
  %92 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1
  store i8 0, ptr %92, align 8, !tbaa !5
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %91, i64 0, i64 1, i32 1
  store ptr %91, ptr %93, align 8, !tbaa !5
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %91, i64 0, i64 1
  store ptr %91, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.LIST, ptr %91, i64 0, i32 1
  store ptr %91, ptr %95, align 8, !tbaa !5
  store ptr %91, ptr %91, align 8, !tbaa !5
  store ptr %91, ptr @xx_link, align 8, !tbaa !10
  store ptr %91, ptr @zz_res, align 8, !tbaa !10
  store ptr %16, ptr @zz_hold, align 8, !tbaa !10
  %96 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %96, ptr @zz_tmp, align 8, !tbaa !10
  %97 = load ptr, ptr %91, align 8, !tbaa !5
  store ptr %97, ptr %16, align 8, !tbaa !5
  %98 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %99 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.LIST, ptr %100, i64 0, i32 1
  store ptr %98, ptr %101, align 8, !tbaa !5
  %102 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %102, ptr %99, align 8, !tbaa !5
  %103 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %104 = getelementptr inbounds %struct.LIST, ptr %102, i64 0, i32 1
  store ptr %103, ptr %104, align 8, !tbaa !5
  %105 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %105, ptr @zz_res, align 8, !tbaa !10
  store ptr %1, ptr @zz_hold, align 8, !tbaa !10
  %106 = icmp eq ptr %1, null
  %107 = icmp eq ptr %105, null
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %90
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  store ptr %111, ptr @zz_tmp, align 8, !tbaa !10
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  store ptr %113, ptr %110, align 8, !tbaa !5
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1, i32 1
  store ptr %1, ptr %114, align 8, !tbaa !5
  store ptr %111, ptr %112, align 8, !tbaa !5
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  store ptr %105, ptr %115, align 8, !tbaa !5
  br label %116

116:                                              ; preds = %90, %109
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GallTargEval(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.symbol_type, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @CrossInit(ptr noundef nonnull %0)
  %8 = load ptr, ptr %4, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = getelementptr inbounds %struct.FILE_POS, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !12
  %13 = getelementptr inbounds %struct.cr_type, ptr %10, i64 0, i32 11
  %14 = load i16, ptr %13, align 8, !tbaa !5
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  store i16 %12, ptr %13, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.cr_type, ptr %10, i64 0, i32 8
  store i32 0, ptr %17, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %16, %9
  %19 = tail call ptr @FileName(i16 noundef zeroext %12) #9
  %20 = getelementptr inbounds %struct.cr_type, ptr %10, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !5
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #10
  %24 = add i64 %23, -506
  %25 = icmp ult i64 %24, -512
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %1, ptr noundef %19, i32 noundef %22) #9
  %28 = load i32, ptr %20, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i32 [ %28, %26 ], [ %22, %18 ]
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %19) #9
  %32 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %33 = getelementptr inbounds i8, ptr %3, i64 %32
  store i16 38, ptr %33, align 1
  %34 = call ptr @StringInt(i32 noundef %30) #9
  %35 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %34) #9
  %36 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %3, ptr noundef nonnull %1) #9
  %37 = call ptr @CrossMake(ptr noundef nonnull %0, ptr noundef %36, i32 noundef 132)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  ret ptr %37
}

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @StringInt(i32 noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CrossAddTag(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [512 x i8], align 16
  %3 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %87, label %6

6:                                                ; preds = %1, %81
  %7 = phi ptr [ %83, %81 ], [ %4, %1 ]
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %11, %8 ], [ %7, %6 ]
  %10 = getelementptr inbounds [2 x %struct.LIST], ptr %9, i64 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !5
  switch i8 %13, label %81 [
    i8 0, label %8
    i8 10, label %14
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.closure_type, ptr %11, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds i8, ptr %16, i64 41
  %18 = load i24, ptr %17, align 1
  %19 = and i24 %18, 1
  %20 = icmp eq i24 %19, 0
  br i1 %20, label %81, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.LIST, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %23, %21 ], [ %27, %24 ]
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !5
  switch i8 %29, label %85 [
    i8 0, label %24
    i8 11, label %30
    i8 12, label %30
  ]

30:                                               ; preds = %24, %24
  %31 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  store ptr %7, ptr @xx_link, align 8, !tbaa !10
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %7, i64 0, i64 1, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  store ptr %36, ptr @zz_res, align 8, !tbaa !10
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %7, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1
  store ptr %40, ptr %41, align 8, !tbaa !5
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1, i32 1
  store ptr %36, ptr %42, align 8, !tbaa !5
  store ptr %7, ptr %35, align 8, !tbaa !5
  store ptr %7, ptr %39, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %36, %38 ], [ null, %34 ]
  store ptr %44, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %7, ptr @zz_hold, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.LIST, ptr %7, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  store ptr %46, ptr @zz_res, align 8, !tbaa !10
  %49 = load ptr, ptr %7, align 8, !tbaa !5
  store ptr %49, ptr %46, align 8, !tbaa !5
  %50 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %51 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  store ptr %50, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.LIST, ptr %51, i64 0, i32 1
  store ptr %51, ptr %54, align 8, !tbaa !5
  store ptr %51, ptr %51, align 8, !tbaa !5
  %55 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %56

56:                                               ; preds = %43, %48
  %57 = phi ptr [ %7, %43 ], [ %55, %48 ]
  store ptr %57, ptr @zz_hold, align 8, !tbaa !10
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !5
  %60 = add i8 %59, -11
  %61 = icmp ult i8 %60, 2
  %62 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1, i32 0, i32 1
  %63 = zext i8 %59 to i64
  %64 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %63
  %65 = select i1 %61, ptr %62, ptr %64
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = zext i8 %66 to i32
  store i32 %67, ptr @zz_size, align 4, !tbaa !8
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  store ptr %70, ptr %57, align 8, !tbaa !5
  %71 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %72 = load i32, ptr @zz_size, align 4, !tbaa !8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %73
  store ptr %71, ptr %74, align 8, !tbaa !10
  %75 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, %75
  br i1 %78, label %79, label %87

79:                                               ; preds = %56
  %80 = tail call i32 @DisposeObject(ptr noundef nonnull %75) #9
  br label %87

81:                                               ; preds = %8, %14
  %82 = getelementptr inbounds %struct.LIST, ptr %7, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %87, label %6

85:                                               ; preds = %24, %30
  %86 = icmp eq ptr %7, %0
  br i1 %86, label %87, label %277

87:                                               ; preds = %81, %1, %56, %79, %85
  %88 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = icmp eq ptr %91, %89
  br i1 %92, label %277, label %93

93:                                               ; preds = %87, %110
  %94 = phi ptr [ %112, %110 ], [ %91, %87 ]
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi ptr [ %98, %95 ], [ %94, %93 ]
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %95, label %102

102:                                              ; preds = %95
  %103 = add i8 %100, 112
  %104 = icmp ult i8 %103, 3
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, ptr %98, i64 41
  %107 = load i24, ptr %106, align 1
  %108 = and i24 %107, 1
  %109 = icmp eq i24 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102, %105
  %111 = getelementptr inbounds %struct.LIST, ptr %94, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = icmp eq ptr %112, %89
  br i1 %113, label %277, label %93

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %116 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %117 = zext i8 %116 to i32
  store i32 %117, ptr @zz_size, align 4, !tbaa !8
  %118 = zext i8 %116 to i64
  %119 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !10
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %124 = tail call ptr @GetMemory(i32 noundef %117, ptr noundef %123) #9
  store ptr %124, ptr @zz_hold, align 8, !tbaa !10
  br label %127

125:                                              ; preds = %114
  store ptr %120, ptr @zz_hold, align 8, !tbaa !10
  %126 = load ptr, ptr %120, align 8, !tbaa !5
  store ptr %126, ptr %119, align 8, !tbaa !10
  br label %127

127:                                              ; preds = %122, %125
  %128 = phi ptr [ %124, %122 ], [ %120, %125 ]
  %129 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1
  store i8 10, ptr %129, align 8, !tbaa !5
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %128, i64 0, i64 1
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %128, i64 0, i64 1, i32 1
  store ptr %128, ptr %131, align 8, !tbaa !5
  store ptr %128, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds %struct.LIST, ptr %128, i64 0, i32 1
  store ptr %128, ptr %132, align 8, !tbaa !5
  store ptr %128, ptr %128, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.closure_type, ptr %128, i64 0, i32 5
  store ptr %98, ptr %133, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #9
  %134 = load ptr, ptr %88, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.symbol_type, ptr %134, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  tail call void @CrossInit(ptr noundef nonnull %134)
  br label %139

139:                                              ; preds = %138, %127
  %140 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %141 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %142 = load i16, ptr %141, align 2, !tbaa !5
  %143 = tail call ptr @FileName(i16 noundef zeroext %142) #9
  %144 = tail call fastcc i32 @crtab_getnext(ptr noundef nonnull %134, i16 noundef zeroext %142)
  %145 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143) #10
  %146 = add i64 %145, -492
  %147 = icmp ult i64 %146, -512
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 3, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull %140, ptr noundef %143) #9
  br label %150

150:                                              ; preds = %139, %148
  %151 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1, i32 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !5
  %153 = zext i16 %152 to i32
  %154 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 1048575
  %157 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %153, i32 noundef %156, ptr noundef %143, i32 noundef %144) #9
  %158 = call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull %2, ptr noundef nonnull %140) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #9
  %159 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %160 = zext i8 %159 to i32
  store i32 %160, ptr @zz_size, align 4, !tbaa !8
  %161 = zext i8 %159 to i64
  %162 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !10
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  %166 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %167 = call ptr @GetMemory(i32 noundef %160, ptr noundef %166) #9
  br label %170

168:                                              ; preds = %150
  store ptr %163, ptr @zz_hold, align 8, !tbaa !10
  %169 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %169, ptr %162, align 8, !tbaa !10
  br label %170

170:                                              ; preds = %165, %168
  %171 = phi ptr [ %167, %165 ], [ %163, %168 ]
  %172 = getelementptr inbounds %struct.word_type, ptr %171, i64 0, i32 1
  store i8 0, ptr %172, align 8, !tbaa !5
  %173 = getelementptr inbounds [2 x %struct.LIST], ptr %171, i64 0, i64 1, i32 1
  store ptr %171, ptr %173, align 8, !tbaa !5
  %174 = getelementptr inbounds [2 x %struct.LIST], ptr %171, i64 0, i64 1
  store ptr %171, ptr %174, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.LIST, ptr %171, i64 0, i32 1
  store ptr %171, ptr %175, align 8, !tbaa !5
  store ptr %171, ptr %171, align 8, !tbaa !5
  store ptr %171, ptr @xx_link, align 8, !tbaa !10
  store ptr %171, ptr @zz_res, align 8, !tbaa !10
  store ptr %128, ptr @zz_hold, align 8, !tbaa !10
  %176 = load ptr, ptr %128, align 8, !tbaa !5
  store ptr %176, ptr @zz_tmp, align 8, !tbaa !10
  %177 = load ptr, ptr %171, align 8, !tbaa !5
  store ptr %177, ptr %128, align 8, !tbaa !5
  %178 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %179 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds %struct.LIST, ptr %180, i64 0, i32 1
  store ptr %178, ptr %181, align 8, !tbaa !5
  %182 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %182, ptr %179, align 8, !tbaa !5
  %183 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %184 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %183, ptr %184, align 8, !tbaa !5
  %185 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %185, ptr @zz_res, align 8, !tbaa !10
  store ptr %158, ptr @zz_hold, align 8, !tbaa !10
  %186 = icmp eq ptr %158, null
  %187 = icmp eq ptr %185, null
  %188 = select i1 %186, i1 true, i1 %187
  br i1 %188, label %196, label %189

189:                                              ; preds = %170
  %190 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  store ptr %191, ptr @zz_tmp, align 8, !tbaa !10
  %192 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  store ptr %193, ptr %190, align 8, !tbaa !5
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %193, i64 0, i64 1, i32 1
  store ptr %158, ptr %194, align 8, !tbaa !5
  store ptr %191, ptr %192, align 8, !tbaa !5
  %195 = getelementptr inbounds [2 x %struct.LIST], ptr %191, i64 0, i64 1, i32 1
  store ptr %185, ptr %195, align 8, !tbaa !5
  br label %196

196:                                              ; preds = %170, %189
  %197 = load i8, ptr %115, align 8, !tbaa !5
  switch i8 %197, label %233 [
    i8 -112, label %230
    i8 -111, label %201
    i8 -110, label %198
  ]

198:                                              ; preds = %196
  %199 = load ptr, ptr %3, align 8, !tbaa !5
  %200 = icmp eq ptr %199, %0
  br i1 %200, label %233, label %218

201:                                              ; preds = %196
  %202 = load ptr, ptr %3, align 8, !tbaa !5
  %203 = icmp eq ptr %202, %0
  br i1 %203, label %233, label %204

204:                                              ; preds = %201, %204
  %205 = phi ptr [ %207, %204 ], [ %202, %201 ]
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 1
  %209 = load i8, ptr %208, align 8, !tbaa !5
  switch i8 %209, label %233 [
    i8 0, label %204
    i8 10, label %210
  ]

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.closure_type, ptr %207, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = getelementptr inbounds %struct.word_type, ptr %212, i64 0, i32 1
  %214 = load i8, ptr %213, align 8, !tbaa !5
  %215 = icmp eq i8 %214, -112
  br i1 %215, label %216, label %233

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  br label %230

218:                                              ; preds = %198, %226
  %219 = phi ptr [ %228, %226 ], [ %199, %198 ]
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi ptr [ %223, %220 ], [ %219, %218 ]
  %222 = getelementptr inbounds [2 x %struct.LIST], ptr %221, i64 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  %225 = load i8, ptr %224, align 8, !tbaa !5
  switch i8 %225, label %233 [
    i8 0, label %220
    i8 10, label %226
  ]

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.LIST, ptr %219, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !5
  %229 = icmp eq ptr %228, %0
  br i1 %229, label %233, label %218

230:                                              ; preds = %196, %216
  %231 = phi ptr [ %217, %216 ], [ %3, %196 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  br label %233

233:                                              ; preds = %226, %220, %204, %230, %198, %201, %210, %196
  %234 = phi ptr [ %94, %196 ], [ %202, %210 ], [ %0, %201 ], [ %0, %198 ], [ %232, %230 ], [ %202, %204 ], [ %219, %220 ], [ %0, %226 ]
  %235 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %236 = zext i8 %235 to i32
  store i32 %236, ptr @zz_size, align 4, !tbaa !8
  %237 = zext i8 %235 to i64
  %238 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !10
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %243 = call ptr @GetMemory(i32 noundef %236, ptr noundef %242) #9
  br label %246

244:                                              ; preds = %233
  store ptr %239, ptr @zz_hold, align 8, !tbaa !10
  %245 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %245, ptr %238, align 8, !tbaa !10
  br label %246

246:                                              ; preds = %241, %244
  %247 = phi ptr [ %243, %241 ], [ %239, %244 ]
  %248 = getelementptr inbounds %struct.word_type, ptr %247, i64 0, i32 1
  store i8 0, ptr %248, align 8, !tbaa !5
  %249 = getelementptr inbounds [2 x %struct.LIST], ptr %247, i64 0, i64 1, i32 1
  store ptr %247, ptr %249, align 8, !tbaa !5
  %250 = getelementptr inbounds [2 x %struct.LIST], ptr %247, i64 0, i64 1
  store ptr %247, ptr %250, align 8, !tbaa !5
  %251 = getelementptr inbounds %struct.LIST, ptr %247, i64 0, i32 1
  store ptr %247, ptr %251, align 8, !tbaa !5
  store ptr %247, ptr %247, align 8, !tbaa !5
  store ptr %247, ptr @xx_link, align 8, !tbaa !10
  store ptr %247, ptr @zz_res, align 8, !tbaa !10
  store ptr %234, ptr @zz_hold, align 8, !tbaa !10
  %252 = icmp eq ptr %234, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %246
  store ptr %128, ptr @zz_hold, align 8, !tbaa !10
  br label %269

254:                                              ; preds = %246
  %255 = load ptr, ptr %234, align 8, !tbaa !5
  store ptr %255, ptr @zz_tmp, align 8, !tbaa !10
  %256 = load ptr, ptr %247, align 8, !tbaa !5
  store ptr %256, ptr %234, align 8, !tbaa !5
  %257 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %258 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %257, ptr %260, align 8, !tbaa !5
  %261 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %261, ptr %258, align 8, !tbaa !5
  %262 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %263 = getelementptr inbounds %struct.LIST, ptr %261, i64 0, i32 1
  store ptr %262, ptr %263, align 8, !tbaa !5
  %264 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %264, ptr @zz_res, align 8, !tbaa !10
  store ptr %128, ptr @zz_hold, align 8, !tbaa !10
  %265 = icmp eq ptr %264, null
  br i1 %265, label %277, label %266

266:                                              ; preds = %254
  %267 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  br label %269

269:                                              ; preds = %266, %253
  %270 = phi ptr [ %247, %253 ], [ %268, %266 ]
  %271 = phi ptr [ %247, %253 ], [ %264, %266 ]
  %272 = load ptr, ptr %130, align 8, !tbaa !5
  store ptr %272, ptr @zz_tmp, align 8, !tbaa !10
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1
  store ptr %270, ptr %130, align 8, !tbaa !5
  %274 = load ptr, ptr %273, align 8, !tbaa !5
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %274, i64 0, i64 1, i32 1
  store ptr %128, ptr %275, align 8, !tbaa !5
  store ptr %272, ptr %273, align 8, !tbaa !5
  %276 = getelementptr inbounds [2 x %struct.LIST], ptr %272, i64 0, i64 1, i32 1
  store ptr %271, ptr %276, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %110, %87, %254, %269, %85
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CrossExpand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  %13 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !5
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 6
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @.str.5) #9
  br label %20

20:                                               ; preds = %5, %17
  %21 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load ptr, ptr %0, align 8, !tbaa !5
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %29 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %28, ptr noundef nonnull @.str.6) #9
  %30 = load ptr, ptr %0, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi ptr [ %24, %20 ], [ %30, %27 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %32, %31 ]
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %33, label %40

40:                                               ; preds = %33
  %41 = tail call ptr @Manifest(ptr noundef nonnull %36, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef 0) #9
  %42 = tail call ptr @ReplaceWithTidy(ptr noundef %41, i32 noundef 1) #9
  %43 = load ptr, ptr %21, align 8, !tbaa !5
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %43, %40 ], [ %47, %44 ]
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !5
  switch i8 %49, label %50 [
    i8 0, label %44
    i8 2, label %53
  ]

50:                                               ; preds = %44
  %51 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %52 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %51, ptr noundef nonnull @.str.7) #9
  br label %53

53:                                               ; preds = %44, %50
  %54 = getelementptr inbounds %struct.closure_type, ptr %47, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %57 = load i8, ptr %56, align 8, !tbaa !5
  %58 = add i8 %57, -13
  %59 = icmp ult i8 %58, -2
  br i1 %59, label %76, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(10) @.str.8) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(13) @.str.9) #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %67
  %71 = phi i32 [ 128, %67 ], [ 134, %64 ]
  %72 = trunc i32 %71 to i8
  br label %143

73:                                               ; preds = %67
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(10) @.str.10) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %143, label %80

76:                                               ; preds = %53
  %77 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %56, ptr noundef nonnull @.str.12) #9
  br label %335

78:                                               ; preds = %60
  %79 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull %56, ptr noundef nonnull @.str.12) #9
  br label %327

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.symbol_type, ptr %55, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  tail call void @CrossInit(ptr noundef nonnull %55)
  %85 = load ptr, ptr %81, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi ptr [ %85, %84 ], [ %82, %80 ]
  %88 = load ptr, ptr @MomentSym, align 8, !tbaa !10
  %89 = icmp eq ptr %55, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(4) @.str.14) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = tail call ptr @StartMoment() #9
  br label %323

95:                                               ; preds = %90, %86
  %96 = getelementptr inbounds i8, ptr %55, i64 41
  %97 = load i24, ptr %96, align 1
  %98 = and i24 %97, 2
  %99 = icmp eq i24 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = tail call ptr @SymName(ptr noundef nonnull %55) #9
  %102 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 6, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %13, ptr noundef %101, ptr noundef nonnull @.str.16) #9
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i32 [ 0, %95 ], [ 1, %100 ]
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  br label %107

107:                                              ; preds = %120, %103
  %108 = phi ptr [ %106, %103 ], [ %110, %120 ]
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %108, i64 0, i64 1, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, %87
  br i1 %111, label %327, label %112

112:                                              ; preds = %107, %112
  %113 = phi ptr [ %114, %112 ], [ %110, %107 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.word_type, ptr %114, i64 0, i32 1
  %116 = load i8, ptr %115, align 8, !tbaa !5
  switch i8 %116, label %117 [
    i8 0, label %112
    i8 11, label %120
    i8 12, label %120
  ]

117:                                              ; preds = %112
  %118 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %119 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %118, ptr noundef nonnull @.str.17) #9
  br label %120

120:                                              ; preds = %112, %112, %117
  %121 = call i32 @DbRetrieve(ptr noundef nonnull %114, i32 noundef 0, ptr noundef %55, ptr noundef nonnull %61, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #9
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %107, label %123

123:                                              ; preds = %120
  call void @SwitchScope(ptr noundef null) #9
  store i32 0, ptr %6, align 4, !tbaa !8
  %124 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  %125 = icmp eq ptr %114, %124
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void @SetScope(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0) #9
  br label %127

127:                                              ; preds = %123, %126
  %128 = load i16, ptr %9, align 2, !tbaa !15
  %129 = load i64, ptr %11, align 8, !tbaa !16
  %130 = load i32, ptr %12, align 4, !tbaa !8
  %131 = call ptr @ReadFromFile(i16 noundef zeroext %128, i64 noundef %129, i32 noundef %130) #9
  %132 = load i32, ptr %6, align 4, !tbaa !8
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %139, label %134

134:                                              ; preds = %127, %134
  %135 = phi i32 [ %136, %134 ], [ 1, %127 ]
  call void @PopScope() #9
  %136 = add nuw nsw i32 %135, 1
  %137 = load i32, ptr %6, align 4, !tbaa !8
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %134, label %139

139:                                              ; preds = %134, %127
  call void @UnSwitchScope(ptr noundef null) #9
  %140 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  %141 = icmp eq ptr %114, %140
  br i1 %141, label %323, label %142

142:                                              ; preds = %139
  call void @AttachEnv(ptr noundef %1, ptr noundef %131) #9
  br label %323

143:                                              ; preds = %73, %70
  %144 = phi i8 [ %72, %70 ], [ 127, %73 ]
  %145 = phi i32 [ %71, %70 ], [ 127, %73 ]
  %146 = getelementptr inbounds i8, ptr %55, i64 41
  %147 = load i24, ptr %146, align 1
  %148 = and i24 %147, 2
  %149 = icmp eq i24 %148, 0
  br i1 %149, label %320, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.symbol_type, ptr %55, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  tail call void @CrossInit(ptr noundef nonnull %55)
  %155 = load ptr, ptr %151, align 8, !tbaa !5
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %159 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %158, ptr noundef nonnull @.str.18) #9
  unreachable

160:                                              ; preds = %150, %154
  %161 = phi ptr [ %155, %154 ], [ %152, %150 ]
  %162 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1
  %163 = load i8, ptr %162, align 8, !tbaa !5
  %164 = icmp eq i8 %163, -116
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %167 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %166, ptr noundef nonnull @.str.19) #9
  br label %168

168:                                              ; preds = %165, %160
  %169 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1, i32 0, i32 2
  %170 = load i16, ptr %169, align 2, !tbaa !5
  %171 = tail call fastcc i32 @crtab_getnext(ptr noundef nonnull %55, i16 noundef zeroext %170)
  %172 = tail call ptr @FileName(i16 noundef zeroext %170) #9
  %173 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %172) #10
  %174 = add i64 %173, -507
  %175 = icmp ult i64 %174, -512
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 7, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %13, ptr noundef %172, i32 noundef %171) #9
  br label %178

178:                                              ; preds = %176, %168
  %179 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %172) #9
  %180 = call i64 @strlen(ptr nonnull dereferenceable(1) %7)
  %181 = getelementptr inbounds i8, ptr %7, i64 %180
  store i16 95, ptr %181, align 1
  %182 = call ptr @StringInt(i32 noundef %171) #9
  %183 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %182) #9
  %184 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %7, ptr noundef nonnull %56) #9
  %185 = call ptr @CrossMake(ptr noundef nonnull %55, ptr noundef %184, i32 noundef %145)
  %186 = zext nneg i32 %145 to i64
  %187 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = zext i8 %188 to i32
  store i32 %189, ptr @zz_size, align 4, !tbaa !8
  %190 = zext i8 %188 to i64
  %191 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !10
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %178
  %195 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %196 = call ptr @GetMemory(i32 noundef %189, ptr noundef %195) #9
  store ptr %196, ptr @zz_hold, align 8, !tbaa !10
  br label %199

197:                                              ; preds = %178
  store ptr %192, ptr @zz_hold, align 8, !tbaa !10
  %198 = load ptr, ptr %192, align 8, !tbaa !5
  store ptr %198, ptr %191, align 8, !tbaa !10
  br label %199

199:                                              ; preds = %194, %197
  %200 = phi ptr [ %196, %194 ], [ %192, %197 ]
  %201 = getelementptr inbounds %struct.word_type, ptr %200, i64 0, i32 1
  store i8 %144, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1, i32 1
  store ptr %200, ptr %203, align 8, !tbaa !5
  store ptr %200, ptr %202, align 8, !tbaa !5
  %204 = getelementptr inbounds %struct.LIST, ptr %200, i64 0, i32 1
  store ptr %200, ptr %204, align 8, !tbaa !5
  store ptr %200, ptr %200, align 8, !tbaa !5
  %205 = getelementptr inbounds %struct.closure_type, ptr %200, i64 0, i32 5
  store ptr %185, ptr %205, align 8, !tbaa !5
  %206 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %207 = zext i8 %206 to i32
  store i32 %207, ptr @zz_size, align 4, !tbaa !8
  %208 = zext i8 %206 to i64
  %209 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !10
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %199
  %213 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %214 = call ptr @GetMemory(i32 noundef %207, ptr noundef %213) #9
  br label %217

215:                                              ; preds = %199
  store ptr %210, ptr @zz_hold, align 8, !tbaa !10
  %216 = load ptr, ptr %210, align 8, !tbaa !5
  store ptr %216, ptr %209, align 8, !tbaa !10
  br label %217

217:                                              ; preds = %212, %215
  %218 = phi ptr [ %214, %212 ], [ %210, %215 ]
  %219 = getelementptr inbounds %struct.word_type, ptr %218, i64 0, i32 1
  store i8 0, ptr %219, align 8, !tbaa !5
  %220 = getelementptr inbounds [2 x %struct.LIST], ptr %218, i64 0, i64 1, i32 1
  store ptr %218, ptr %220, align 8, !tbaa !5
  %221 = getelementptr inbounds [2 x %struct.LIST], ptr %218, i64 0, i64 1
  store ptr %218, ptr %221, align 8, !tbaa !5
  %222 = getelementptr inbounds %struct.LIST, ptr %218, i64 0, i32 1
  store ptr %218, ptr %222, align 8, !tbaa !5
  store ptr %218, ptr %218, align 8, !tbaa !5
  store ptr %218, ptr @xx_link, align 8, !tbaa !10
  store ptr %218, ptr @zz_res, align 8, !tbaa !10
  store ptr %200, ptr @zz_hold, align 8, !tbaa !10
  %223 = load ptr, ptr %200, align 8, !tbaa !5
  store ptr %223, ptr @zz_tmp, align 8, !tbaa !10
  %224 = load ptr, ptr %218, align 8, !tbaa !5
  store ptr %224, ptr %200, align 8, !tbaa !5
  %225 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %226 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds %struct.LIST, ptr %227, i64 0, i32 1
  store ptr %225, ptr %228, align 8, !tbaa !5
  %229 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %229, ptr %226, align 8, !tbaa !5
  %230 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %231 = getelementptr inbounds %struct.LIST, ptr %229, i64 0, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !5
  %232 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %232, ptr @zz_res, align 8, !tbaa !10
  store ptr %185, ptr @zz_hold, align 8, !tbaa !10
  %233 = icmp eq ptr %185, null
  %234 = icmp eq ptr %232, null
  %235 = select i1 %233, i1 true, i1 %234
  br i1 %235, label %243, label %236

236:                                              ; preds = %217
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !5
  store ptr %238, ptr @zz_tmp, align 8, !tbaa !10
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %232, i64 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %240, ptr %237, align 8, !tbaa !5
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1, i32 1
  store ptr %185, ptr %241, align 8, !tbaa !5
  store ptr %238, ptr %239, align 8, !tbaa !5
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %238, i64 0, i64 1, i32 1
  store ptr %232, ptr %242, align 8, !tbaa !5
  br label %243

243:                                              ; preds = %217, %236
  %244 = load ptr, ptr %3, align 8, !tbaa !10
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %264

246:                                              ; preds = %243
  %247 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 148), align 1, !tbaa !5
  %248 = zext i8 %247 to i32
  store i32 %248, ptr @zz_size, align 4, !tbaa !8
  %249 = zext i8 %247 to i64
  %250 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !10
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %255 = call ptr @GetMemory(i32 noundef %248, ptr noundef %254) #9
  store ptr %255, ptr @zz_hold, align 8, !tbaa !10
  br label %258

256:                                              ; preds = %246
  store ptr %251, ptr @zz_hold, align 8, !tbaa !10
  %257 = load ptr, ptr %251, align 8, !tbaa !5
  store ptr %257, ptr %250, align 8, !tbaa !10
  br label %258

258:                                              ; preds = %253, %256
  %259 = phi ptr [ %255, %253 ], [ %251, %256 ]
  %260 = getelementptr inbounds %struct.word_type, ptr %259, i64 0, i32 1
  store i8 -108, ptr %260, align 8, !tbaa !5
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1, i32 1
  store ptr %259, ptr %261, align 8, !tbaa !5
  %262 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1
  store ptr %259, ptr %262, align 8, !tbaa !5
  %263 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %259, ptr %263, align 8, !tbaa !5
  store ptr %259, ptr %259, align 8, !tbaa !5
  store ptr %259, ptr %3, align 8, !tbaa !10
  br label %264

264:                                              ; preds = %258, %243
  %265 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %266 = zext i8 %265 to i32
  store i32 %266, ptr @zz_size, align 4, !tbaa !8
  %267 = zext i8 %265 to i64
  %268 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !10
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %273 = call ptr @GetMemory(i32 noundef %266, ptr noundef %272) #9
  store ptr %273, ptr @zz_hold, align 8, !tbaa !10
  br label %276

274:                                              ; preds = %264
  store ptr %269, ptr @zz_hold, align 8, !tbaa !10
  %275 = load ptr, ptr %269, align 8, !tbaa !5
  store ptr %275, ptr %268, align 8, !tbaa !10
  br label %276

276:                                              ; preds = %271, %274
  %277 = phi ptr [ %273, %271 ], [ %269, %274 ]
  %278 = getelementptr inbounds %struct.word_type, ptr %277, i64 0, i32 1
  store i8 0, ptr %278, align 8, !tbaa !5
  %279 = getelementptr inbounds [2 x %struct.LIST], ptr %277, i64 0, i64 1, i32 1
  store ptr %277, ptr %279, align 8, !tbaa !5
  %280 = getelementptr inbounds [2 x %struct.LIST], ptr %277, i64 0, i64 1
  store ptr %277, ptr %280, align 8, !tbaa !5
  %281 = getelementptr inbounds %struct.LIST, ptr %277, i64 0, i32 1
  store ptr %277, ptr %281, align 8, !tbaa !5
  store ptr %277, ptr %277, align 8, !tbaa !5
  store ptr %277, ptr @xx_link, align 8, !tbaa !10
  store ptr %277, ptr @zz_res, align 8, !tbaa !10
  %282 = load ptr, ptr %3, align 8, !tbaa !10
  store ptr %282, ptr @zz_hold, align 8, !tbaa !10
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store ptr %277, ptr @zz_res, align 8, !tbaa !10
  store ptr %200, ptr @zz_hold, align 8, !tbaa !10
  br label %300

285:                                              ; preds = %276
  %286 = load ptr, ptr %282, align 8, !tbaa !5
  store ptr %286, ptr @zz_tmp, align 8, !tbaa !10
  %287 = load ptr, ptr %277, align 8, !tbaa !5
  store ptr %287, ptr %282, align 8, !tbaa !5
  %288 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %289 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %290 = load ptr, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds %struct.LIST, ptr %290, i64 0, i32 1
  store ptr %288, ptr %291, align 8, !tbaa !5
  %292 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %292, ptr %289, align 8, !tbaa !5
  %293 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %294 = getelementptr inbounds %struct.LIST, ptr %292, i64 0, i32 1
  store ptr %293, ptr %294, align 8, !tbaa !5
  %295 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %295, ptr @zz_res, align 8, !tbaa !10
  store ptr %200, ptr @zz_hold, align 8, !tbaa !10
  %296 = icmp eq ptr %295, null
  br i1 %296, label %308, label %297

297:                                              ; preds = %285
  %298 = getelementptr inbounds [2 x %struct.LIST], ptr %295, i64 0, i64 1
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  br label %300

300:                                              ; preds = %297, %284
  %301 = phi ptr [ %277, %284 ], [ %299, %297 ]
  %302 = phi ptr [ %277, %284 ], [ %295, %297 ]
  %303 = load ptr, ptr %202, align 8, !tbaa !5
  store ptr %303, ptr @zz_tmp, align 8, !tbaa !10
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1
  store ptr %301, ptr %202, align 8, !tbaa !5
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = getelementptr inbounds [2 x %struct.LIST], ptr %305, i64 0, i64 1, i32 1
  store ptr %200, ptr %306, align 8, !tbaa !5
  store ptr %303, ptr %304, align 8, !tbaa !5
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %303, i64 0, i64 1, i32 1
  store ptr %302, ptr %307, align 8, !tbaa !5
  br label %308

308:                                              ; preds = %285, %300
  %309 = load i32, ptr @AllowCrossDb, align 4, !tbaa !8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %327, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  %313 = call i32 @DbRetrieve(ptr noundef %312, i32 noundef 0, ptr noundef nonnull %55, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #9
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %327, label %315

315:                                              ; preds = %311
  call void @SwitchScope(ptr noundef null) #9
  %316 = load i16, ptr %9, align 2, !tbaa !15
  %317 = load i64, ptr %11, align 8, !tbaa !16
  %318 = load i32, ptr %12, align 4, !tbaa !8
  %319 = call ptr @ReadFromFile(i16 noundef zeroext %316, i64 noundef %317, i32 noundef %318) #9
  call void @UnSwitchScope(ptr noundef null) #9
  br label %323

320:                                              ; preds = %143
  %321 = tail call ptr @SymName(ptr noundef nonnull %55) #9
  %322 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 8, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %13, ptr noundef %321, ptr noundef nonnull @.str.16) #9
  br label %335

323:                                              ; preds = %315, %93, %139, %142
  %324 = phi i32 [ 0, %93 ], [ %104, %142 ], [ %104, %139 ], [ 0, %315 ]
  %325 = phi ptr [ %94, %93 ], [ %131, %142 ], [ %131, %139 ], [ %319, %315 ]
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %441

327:                                              ; preds = %107, %308, %311, %78, %323
  %328 = phi i32 [ %324, %323 ], [ 0, %308 ], [ 0, %311 ], [ 0, %78 ], [ %104, %107 ]
  %329 = icmp ne i32 %328, 0
  %330 = or i1 %59, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = call ptr @SymName(ptr noundef %55) #9
  %333 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 4
  %334 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef nonnull %13, ptr noundef %332, ptr noundef nonnull @.str.12, ptr noundef nonnull %333) #9
  br label %335

335:                                              ; preds = %76, %320, %331, %327
  %336 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %337 = zext i8 %336 to i32
  store i32 %337, ptr @zz_size, align 4, !tbaa !8
  %338 = zext i8 %336 to i64
  %339 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !10
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %344 = call ptr @GetMemory(i32 noundef %337, ptr noundef %343) #9
  store ptr %344, ptr @zz_hold, align 8, !tbaa !10
  br label %347

345:                                              ; preds = %335
  store ptr %340, ptr @zz_hold, align 8, !tbaa !10
  %346 = load ptr, ptr %340, align 8, !tbaa !5
  store ptr %346, ptr %339, align 8, !tbaa !10
  br label %347

347:                                              ; preds = %342, %345
  %348 = phi ptr [ %344, %342 ], [ %340, %345 ]
  %349 = getelementptr inbounds %struct.word_type, ptr %348, i64 0, i32 1
  store i8 2, ptr %349, align 8, !tbaa !5
  %350 = getelementptr inbounds [2 x %struct.LIST], ptr %348, i64 0, i64 1, i32 1
  store ptr %348, ptr %350, align 8, !tbaa !5
  %351 = getelementptr inbounds [2 x %struct.LIST], ptr %348, i64 0, i64 1
  store ptr %348, ptr %351, align 8, !tbaa !5
  %352 = getelementptr inbounds %struct.LIST, ptr %348, i64 0, i32 1
  store ptr %348, ptr %352, align 8, !tbaa !5
  store ptr %348, ptr %348, align 8, !tbaa !5
  %353 = getelementptr inbounds %struct.closure_type, ptr %348, i64 0, i32 5
  store ptr %55, ptr %353, align 8, !tbaa !5
  %354 = getelementptr inbounds %struct.symbol_type, ptr %55, i64 0, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !5
  %356 = load ptr, ptr @StartSym, align 8, !tbaa !10
  %357 = icmp eq ptr %355, %356
  br i1 %357, label %388, label %358

358:                                              ; preds = %347, %372
  %359 = phi ptr [ %381, %372 ], [ %353, %347 ]
  %360 = phi ptr [ %373, %372 ], [ %348, %347 ]
  %361 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %362 = zext i8 %361 to i32
  store i32 %362, ptr @zz_size, align 4, !tbaa !8
  %363 = zext i8 %361 to i64
  %364 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !10
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %370

367:                                              ; preds = %358
  %368 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %369 = call ptr @GetMemory(i32 noundef %362, ptr noundef %368) #9
  store ptr %369, ptr @zz_hold, align 8, !tbaa !10
  br label %372

370:                                              ; preds = %358
  store ptr %365, ptr @zz_hold, align 8, !tbaa !10
  %371 = load ptr, ptr %365, align 8, !tbaa !5
  store ptr %371, ptr %364, align 8, !tbaa !10
  br label %372

372:                                              ; preds = %367, %370
  %373 = phi ptr [ %369, %367 ], [ %365, %370 ]
  %374 = getelementptr inbounds %struct.word_type, ptr %373, i64 0, i32 1
  store i8 2, ptr %374, align 8, !tbaa !5
  %375 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1, i32 1
  store ptr %373, ptr %375, align 8, !tbaa !5
  %376 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1
  store ptr %373, ptr %376, align 8, !tbaa !5
  %377 = getelementptr inbounds %struct.LIST, ptr %373, i64 0, i32 1
  store ptr %373, ptr %377, align 8, !tbaa !5
  store ptr %373, ptr %373, align 8, !tbaa !5
  %378 = load ptr, ptr %359, align 8, !tbaa !5
  %379 = getelementptr inbounds %struct.symbol_type, ptr %378, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !5
  %381 = getelementptr inbounds %struct.closure_type, ptr %373, i64 0, i32 5
  store ptr %380, ptr %381, align 8, !tbaa !5
  %382 = call ptr @SetEnv(ptr noundef nonnull %373, ptr noundef null) #9
  call void @AttachEnv(ptr noundef %382, ptr noundef nonnull %360) #9
  %383 = load ptr, ptr %381, align 8, !tbaa !5
  %384 = getelementptr inbounds %struct.symbol_type, ptr %383, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !5
  %386 = load ptr, ptr @StartSym, align 8, !tbaa !10
  %387 = icmp eq ptr %385, %386
  br i1 %387, label %388, label %358

388:                                              ; preds = %372, %347
  %389 = phi ptr [ %348, %347 ], [ %373, %372 ]
  %390 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !5
  %391 = zext i8 %390 to i32
  store i32 %391, ptr @zz_size, align 4, !tbaa !8
  %392 = zext i8 %390 to i64
  %393 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !10
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %388
  %397 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %398 = call ptr @GetMemory(i32 noundef %391, ptr noundef %397) #9
  store ptr %398, ptr @zz_hold, align 8, !tbaa !10
  br label %401

399:                                              ; preds = %388
  store ptr %394, ptr @zz_hold, align 8, !tbaa !10
  %400 = load ptr, ptr %394, align 8, !tbaa !5
  store ptr %400, ptr %393, align 8, !tbaa !10
  br label %401

401:                                              ; preds = %396, %399
  %402 = phi ptr [ %398, %396 ], [ %394, %399 ]
  %403 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 1
  store i8 82, ptr %403, align 8, !tbaa !5
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1, i32 1
  store ptr %402, ptr %405, align 8, !tbaa !5
  store ptr %402, ptr %404, align 8, !tbaa !5
  %406 = getelementptr inbounds %struct.LIST, ptr %402, i64 0, i32 1
  store ptr %402, ptr %406, align 8, !tbaa !5
  store ptr %402, ptr %402, align 8, !tbaa !5
  %407 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %408 = zext i8 %407 to i32
  store i32 %408, ptr @zz_size, align 4, !tbaa !8
  %409 = zext i8 %407 to i64
  %410 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !10
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %416

413:                                              ; preds = %401
  %414 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %415 = call ptr @GetMemory(i32 noundef %408, ptr noundef %414) #9
  br label %418

416:                                              ; preds = %401
  store ptr %411, ptr @zz_hold, align 8, !tbaa !10
  %417 = load ptr, ptr %411, align 8, !tbaa !5
  store ptr %417, ptr %410, align 8, !tbaa !10
  br label %418

418:                                              ; preds = %413, %416
  %419 = phi ptr [ %415, %413 ], [ %411, %416 ]
  %420 = getelementptr inbounds %struct.word_type, ptr %419, i64 0, i32 1
  store i8 0, ptr %420, align 8, !tbaa !5
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %419, i64 0, i64 1, i32 1
  store ptr %419, ptr %421, align 8, !tbaa !5
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %419, i64 0, i64 1
  store ptr %419, ptr %422, align 8, !tbaa !5
  %423 = getelementptr inbounds %struct.LIST, ptr %419, i64 0, i32 1
  store ptr %419, ptr %423, align 8, !tbaa !5
  store ptr %419, ptr %419, align 8, !tbaa !5
  store ptr %419, ptr @xx_link, align 8, !tbaa !10
  store ptr %419, ptr @zz_res, align 8, !tbaa !10
  store ptr %389, ptr @zz_hold, align 8, !tbaa !10
  %424 = load ptr, ptr %389, align 8, !tbaa !5
  store ptr %424, ptr @zz_tmp, align 8, !tbaa !10
  %425 = load ptr, ptr %419, align 8, !tbaa !5
  store ptr %425, ptr %389, align 8, !tbaa !5
  %426 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %427 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  %429 = getelementptr inbounds %struct.LIST, ptr %428, i64 0, i32 1
  store ptr %426, ptr %429, align 8, !tbaa !5
  %430 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %430, ptr %427, align 8, !tbaa !5
  %431 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %432 = getelementptr inbounds %struct.LIST, ptr %430, i64 0, i32 1
  store ptr %431, ptr %432, align 8, !tbaa !5
  %433 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %433, ptr @zz_res, align 8, !tbaa !10
  store ptr %402, ptr @zz_hold, align 8, !tbaa !10
  %434 = icmp eq ptr %433, null
  br i1 %434, label %441, label %435

435:                                              ; preds = %418
  %436 = load ptr, ptr %404, align 8, !tbaa !5
  store ptr %436, ptr @zz_tmp, align 8, !tbaa !10
  %437 = getelementptr inbounds [2 x %struct.LIST], ptr %433, i64 0, i64 1
  %438 = load ptr, ptr %437, align 8, !tbaa !5
  store ptr %438, ptr %404, align 8, !tbaa !5
  %439 = getelementptr inbounds [2 x %struct.LIST], ptr %438, i64 0, i64 1, i32 1
  store ptr %402, ptr %439, align 8, !tbaa !5
  store ptr %436, ptr %437, align 8, !tbaa !5
  %440 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1, i32 1
  store ptr %433, ptr %440, align 8, !tbaa !5
  br label %441

441:                                              ; preds = %435, %418, %323
  %442 = phi ptr [ %325, %323 ], [ %348, %418 ], [ %348, %435 ]
  %443 = call ptr @DetachEnv(ptr noundef nonnull %442) #9
  store ptr %443, ptr %4, align 8, !tbaa !10
  %444 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !5
  %446 = icmp eq ptr %445, %0
  br i1 %446, label %447, label %448

447:                                              ; preds = %441
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %442, ptr @zz_res, align 8, !tbaa !10
  store ptr null, ptr @zz_hold, align 8, !tbaa !10
  br label %458

448:                                              ; preds = %441
  %449 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !5
  %451 = getelementptr inbounds [2 x %struct.LIST], ptr %445, i64 0, i64 1
  store ptr %450, ptr %451, align 8, !tbaa !5
  %452 = getelementptr inbounds [2 x %struct.LIST], ptr %450, i64 0, i64 1, i32 1
  store ptr %445, ptr %452, align 8, !tbaa !5
  store ptr %0, ptr %444, align 8, !tbaa !5
  store ptr %0, ptr %449, align 8, !tbaa !5
  store ptr %445, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %442, ptr @zz_res, align 8, !tbaa !10
  store ptr %445, ptr @zz_hold, align 8, !tbaa !10
  %453 = load ptr, ptr %451, align 8, !tbaa !5
  store ptr %453, ptr @zz_tmp, align 8, !tbaa !10
  %454 = getelementptr inbounds [2 x %struct.LIST], ptr %442, i64 0, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !5
  store ptr %455, ptr %451, align 8, !tbaa !5
  %456 = getelementptr inbounds [2 x %struct.LIST], ptr %455, i64 0, i64 1, i32 1
  store ptr %445, ptr %456, align 8, !tbaa !5
  store ptr %453, ptr %454, align 8, !tbaa !5
  %457 = getelementptr inbounds [2 x %struct.LIST], ptr %453, i64 0, i64 1, i32 1
  store ptr %442, ptr %457, align 8, !tbaa !5
  br label %458

458:                                              ; preds = %447, %448
  %459 = call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %460 = getelementptr inbounds %struct.word_type, ptr %442, i64 0, i32 1
  %461 = load i8, ptr %460, align 8, !tbaa !5
  %462 = icmp eq i8 %461, 2
  br i1 %462, label %466, label %463

463:                                              ; preds = %458
  %464 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %465 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %464, ptr noundef nonnull @.str.24) #9
  br label %466

466:                                              ; preds = %463, %458
  %467 = getelementptr inbounds %struct.closure_type, ptr %442, i64 0, i32 5
  %468 = load ptr, ptr %467, align 8, !tbaa !5
  %469 = icmp eq ptr %468, %55
  br i1 %469, label %473, label %470

470:                                              ; preds = %466
  %471 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %472 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %471, ptr noundef nonnull @.str.25) #9
  br label %473

473:                                              ; preds = %470, %466
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret ptr %442
}

declare ptr @Manifest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @StartMoment() local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare i32 @DbRetrieve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SwitchScope(ptr noundef) local_unnamed_addr #2

declare void @SetScope(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReadFromFile(i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @PopScope() local_unnamed_addr #2

declare void @UnSwitchScope(ptr noundef) local_unnamed_addr #2

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @crtab_getnext(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr @crossref_tab, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !18
  br label %15

7:                                                ; preds = %2
  %8 = tail call noalias dereferenceable_or_null(808) ptr @malloc(i64 noundef 808) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %7, %10
  store i32 100, ptr %8, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.anon.14, ptr %8, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(804) %14, i8 0, i64 804, i1 false)
  store ptr %8, ptr @crossref_tab, align 8, !tbaa !10
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi i32 [ 100, %13 ], [ %6, %5 ]
  %17 = phi ptr [ %8, %13 ], [ %3, %5 ]
  %18 = ptrtoint ptr %0 to i64
  %19 = zext i16 %1 to i64
  %20 = add i64 %19, %18
  %21 = sext i32 %16 to i64
  %22 = urem i64 %20, %21
  %23 = getelementptr inbounds %struct.anon.14, ptr %17, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %15, %39
  %27 = phi ptr [ %40, %39 ], [ %24, %15 ]
  %28 = getelementptr inbounds %struct.crossref_rec, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.crossref_rec, ptr %27, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !22
  %34 = icmp eq i16 %33, %1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.crossref_rec, ptr %27, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !23
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !23
  br label %121

39:                                               ; preds = %26, %31
  %40 = load ptr, ptr %27, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %26

42:                                               ; preds = %39, %15
  %43 = getelementptr inbounds %struct.anon.14, ptr %17, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = icmp eq i32 %44, %16
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = shl nsw i32 %16, 1
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  %50 = or disjoint i64 %49, 8
  %51 = tail call noalias ptr @malloc(i64 noundef %50) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %55 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef %54) #9
  br label %56

56:                                               ; preds = %53, %46
  store i32 %47, ptr %51, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.anon.14, ptr %51, i64 0, i32 1
  store i32 0, ptr %57, align 4, !tbaa !24
  %58 = icmp sgt i32 %16, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %51, i64 8
  %61 = zext nneg i32 %47 to i64
  %62 = shl nuw nsw i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %60, i8 0, i64 %62, i1 false), !tbaa !10
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, ptr %17, align 8, !tbaa !18
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = zext nneg i32 %64 to i64
  br label %68

68:                                               ; preds = %91, %66
  %69 = phi i32 [ 0, %66 ], [ %92, %91 ]
  %70 = phi i64 [ 0, %66 ], [ %93, %91 ]
  %71 = getelementptr inbounds %struct.anon.14, ptr %17, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %68, %74
  %75 = phi i32 [ %88, %74 ], [ %69, %68 ]
  %76 = phi ptr [ %77, %74 ], [ %72, %68 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = getelementptr inbounds %struct.crossref_rec, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = ptrtoint ptr %79 to i64
  %81 = getelementptr inbounds %struct.crossref_rec, ptr %76, i64 0, i32 2
  %82 = load i16, ptr %81, align 8, !tbaa !22
  %83 = zext i16 %82 to i64
  %84 = add i64 %83, %80
  %85 = urem i64 %84, %48
  %86 = getelementptr inbounds %struct.anon.14, ptr %51, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !10
  store ptr %87, ptr %76, align 8, !tbaa !25
  store ptr %76, ptr %86, align 8, !tbaa !10
  %88 = add nsw i32 %75, 1
  %89 = icmp eq ptr %77, null
  br i1 %89, label %90, label %74

90:                                               ; preds = %74
  store i32 %88, ptr %57, align 4, !tbaa !24
  br label %91

91:                                               ; preds = %90, %68
  %92 = phi i32 [ %88, %90 ], [ %69, %68 ]
  %93 = add nuw nsw i64 %70, 1
  %94 = icmp eq i64 %93, %67
  br i1 %94, label %95, label %68

95:                                               ; preds = %91, %63
  tail call void @free(ptr noundef nonnull %17) #9
  store ptr %51, ptr @crossref_tab, align 8, !tbaa !10
  %96 = urem i64 %20, %48
  br label %97

97:                                               ; preds = %95, %42
  %98 = phi ptr [ %51, %95 ], [ %17, %42 ]
  %99 = phi i64 [ %96, %95 ], [ %22, %42 ]
  store i32 24, ptr @zz_size, align 4, !tbaa !8
  %100 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @zz_free, i64 0, i64 24), align 8, !tbaa !10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %104 = tail call ptr @GetMemory(i32 noundef 24, ptr noundef %103) #9
  %105 = load ptr, ptr @crossref_tab, align 8, !tbaa !10
  br label %108

106:                                              ; preds = %97
  store ptr %100, ptr @zz_hold, align 8, !tbaa !10
  %107 = load ptr, ptr %100, align 8, !tbaa !5
  store ptr %107, ptr getelementptr inbounds ([0 x ptr], ptr @zz_free, i64 0, i64 24), align 8, !tbaa !10
  br label %108

108:                                              ; preds = %102, %106
  %109 = phi ptr [ %105, %102 ], [ %98, %106 ]
  %110 = phi ptr [ %104, %102 ], [ %100, %106 ]
  %111 = getelementptr inbounds %struct.crossref_rec, ptr %110, i64 0, i32 1
  store ptr %0, ptr %111, align 8, !tbaa !20
  %112 = getelementptr inbounds %struct.crossref_rec, ptr %110, i64 0, i32 2
  store i16 %1, ptr %112, align 8, !tbaa !22
  %113 = getelementptr inbounds %struct.anon.14, ptr %109, i64 0, i32 2, i64 %99
  %114 = load ptr, ptr %113, align 8, !tbaa !10
  store ptr %114, ptr %110, align 8, !tbaa !25
  %115 = load ptr, ptr @crossref_tab, align 8, !tbaa !10
  %116 = getelementptr inbounds %struct.anon.14, ptr %115, i64 0, i32 2, i64 %99
  store ptr %110, ptr %116, align 8, !tbaa !10
  %117 = getelementptr inbounds %struct.anon.14, ptr %115, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %117, align 4, !tbaa !24
  %120 = getelementptr inbounds %struct.crossref_rec, ptr %110, i64 0, i32 3
  store i32 1, ptr %120, align 4, !tbaa !23
  br label %121

121:                                              ; preds = %108, %35
  %122 = phi i32 [ %38, %35 ], [ 1, %108 ]
  ret i32 %122
}

declare ptr @SetEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DetachEnv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CrossSequence(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %10 = load i32, ptr @AllowCrossDb, align 4, !tbaa !8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %973

16:                                               ; preds = %12
  %17 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  br label %973

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !5
  %21 = and i8 %20, -2
  %22 = icmp eq i8 %21, 6
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.26) #9
  br label %26

26:                                               ; preds = %18, %23
  %27 = getelementptr inbounds i8, ptr %0, i64 41
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %32, %26
  %33 = phi ptr [ %31, %26 ], [ %35, %32 ]
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  switch i8 %37, label %38 [
    i8 0, label %32
    i8 2, label %41
  ]

38:                                               ; preds = %32
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %40 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %39, ptr noundef nonnull @.str.27) #9
  br label %41

41:                                               ; preds = %32, %38
  %42 = getelementptr inbounds %struct.closure_type, ptr %35, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.symbol_type, ptr %43, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  tail call void @CrossInit(ptr noundef nonnull %43)
  %48 = load ptr, ptr %44, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %48, %47 ], [ %45, %41 ]
  %51 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 8, !tbaa !5
  %53 = icmp eq i8 %52, -116
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %56 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %55, ptr noundef nonnull @.str.28) #9
  br label %57

57:                                               ; preds = %54, %49
  %58 = load ptr, ptr %30, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.LIST, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi ptr [ %60, %57 ], [ %64, %61 ]
  %63 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1
  %66 = load i8, ptr %65, align 8, !tbaa !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %61, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1
  store ptr %60, ptr @xx_link, align 8, !tbaa !10
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, %60
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  store ptr %71, ptr @zz_res, align 8, !tbaa !10
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %71, ptr %77, align 8, !tbaa !5
  store ptr %60, ptr %70, align 8, !tbaa !5
  store ptr %60, ptr %74, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %68, %73
  store ptr %60, ptr @zz_hold, align 8, !tbaa !10
  %79 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, %60
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  store ptr %80, ptr @zz_res, align 8, !tbaa !10
  %83 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %83, ptr %80, align 8, !tbaa !5
  %84 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %85 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.LIST, ptr %86, i64 0, i32 1
  store ptr %84, ptr %87, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.LIST, ptr %85, i64 0, i32 1
  store ptr %85, ptr %88, align 8, !tbaa !5
  store ptr %85, ptr %85, align 8, !tbaa !5
  %89 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %90

90:                                               ; preds = %78, %82
  %91 = phi ptr [ %60, %78 ], [ %89, %82 ]
  store ptr %91, ptr @zz_hold, align 8, !tbaa !10
  %92 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1
  %93 = load i8, ptr %92, align 8, !tbaa !5
  %94 = add i8 %93, -11
  %95 = icmp ult i8 %94, 2
  %96 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1, i32 0, i32 1
  %97 = zext i8 %93 to i64
  %98 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %97
  %99 = select i1 %95, ptr %96, ptr %98
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  store i32 %101, ptr @zz_size, align 4, !tbaa !8
  %102 = zext i8 %100 to i64
  %103 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !10
  store ptr %104, ptr %91, align 8, !tbaa !5
  %105 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %106 = load i32, ptr @zz_size, align 4, !tbaa !8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %107
  store ptr %105, ptr %108, align 8, !tbaa !10
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  br label %114

114:                                              ; preds = %112, %90
  switch i8 %28, label %969 [
    i8 -127, label %115
    i8 -126, label %115
    i8 -123, label %115
    i8 -124, label %490
    i8 -122, label %612
    i8 127, label %653
    i8 -128, label %653
    i8 -125, label %711
  ]

115:                                              ; preds = %114, %114, %114
  %116 = load i8, ptr %69, align 8, !tbaa !5
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %120 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %119, ptr noundef nonnull @.str.29) #9
  br label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.closure_type, ptr %64, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds i8, ptr %123, i64 41
  %125 = load i24, ptr %124, align 1
  %126 = and i24 %125, 16384
  %127 = icmp eq i24 %126, 0
  br i1 %127, label %380, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.LIST, ptr %123, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = icmp eq ptr %130, %123
  br i1 %131, label %380, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  %134 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  %136 = getelementptr inbounds %struct.closure_type, ptr %64, i64 0, i32 4
  br label %137

137:                                              ; preds = %132, %373
  %138 = phi ptr [ %123, %132 ], [ %374, %373 ]
  %139 = phi ptr [ %130, %132 ], [ %378, %373 ]
  %140 = phi ptr [ null, %132 ], [ %376, %373 ]
  %141 = phi ptr [ null, %132 ], [ %375, %373 ]
  br label %142

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %145, %142 ], [ %139, %137 ]
  %144 = getelementptr inbounds [2 x %struct.LIST], ptr %143, i64 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.word_type, ptr %145, i64 0, i32 1
  %147 = load i8, ptr %146, align 8, !tbaa !5
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %142, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds i8, ptr %145, i64 41
  %151 = load i24, ptr %150, align 1
  %152 = and i24 %151, 8192
  %153 = icmp eq i24 %152, 0
  br i1 %153, label %373, label %154

154:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store ptr null, ptr %133, align 8, !tbaa !10
  store ptr null, ptr %134, align 8, !tbaa !10
  store ptr null, ptr %6, align 16, !tbaa !10
  store ptr null, ptr %5, align 16, !tbaa !10
  store ptr null, ptr %9, align 8, !tbaa !10
  store ptr null, ptr %8, align 8, !tbaa !10
  store ptr null, ptr %7, align 8, !tbaa !10
  %155 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %156 = zext i8 %155 to i32
  store i32 %156, ptr @zz_size, align 4, !tbaa !8
  %157 = zext i8 %155 to i64
  %158 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %163 = call ptr @GetMemory(i32 noundef %156, ptr noundef %162) #9
  store ptr %163, ptr @zz_hold, align 8, !tbaa !10
  br label %166

164:                                              ; preds = %154
  store ptr %159, ptr @zz_hold, align 8, !tbaa !10
  %165 = load ptr, ptr %159, align 8, !tbaa !5
  store ptr %165, ptr %158, align 8, !tbaa !10
  br label %166

166:                                              ; preds = %161, %164
  %167 = phi ptr [ %163, %161 ], [ %159, %164 ]
  %168 = getelementptr inbounds %struct.word_type, ptr %167, i64 0, i32 1
  store i8 2, ptr %168, align 8, !tbaa !5
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1
  %170 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1, i32 1
  store ptr %167, ptr %170, align 8, !tbaa !5
  store ptr %167, ptr %169, align 8, !tbaa !5
  %171 = getelementptr inbounds %struct.LIST, ptr %167, i64 0, i32 1
  store ptr %167, ptr %171, align 8, !tbaa !5
  store ptr %167, ptr %167, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.closure_type, ptr %167, i64 0, i32 5
  store ptr %145, ptr %172, align 8, !tbaa !5
  %173 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %174 = zext i8 %173 to i32
  store i32 %174, ptr @zz_size, align 4, !tbaa !8
  %175 = zext i8 %173 to i64
  %176 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !10
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %166
  %180 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %181 = call ptr @GetMemory(i32 noundef %174, ptr noundef %180) #9
  store ptr %181, ptr @zz_hold, align 8, !tbaa !10
  br label %184

182:                                              ; preds = %166
  store ptr %177, ptr @zz_hold, align 8, !tbaa !10
  %183 = load ptr, ptr %177, align 8, !tbaa !5
  store ptr %183, ptr %176, align 8, !tbaa !10
  br label %184

184:                                              ; preds = %179, %182
  %185 = phi ptr [ %181, %179 ], [ %177, %182 ]
  %186 = getelementptr inbounds %struct.word_type, ptr %185, i64 0, i32 1
  store i8 17, ptr %186, align 8, !tbaa !5
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1, i32 1
  store ptr %185, ptr %187, align 8, !tbaa !5
  %188 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1
  store ptr %185, ptr %188, align 8, !tbaa !5
  %189 = getelementptr inbounds %struct.LIST, ptr %185, i64 0, i32 1
  store ptr %185, ptr %189, align 8, !tbaa !5
  store ptr %185, ptr %185, align 8, !tbaa !5
  %190 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %191 = zext i8 %190 to i32
  store i32 %191, ptr @zz_size, align 4, !tbaa !8
  %192 = zext i8 %190 to i64
  %193 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !10
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %184
  %197 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %198 = call ptr @GetMemory(i32 noundef %191, ptr noundef %197) #9
  br label %201

199:                                              ; preds = %184
  store ptr %194, ptr @zz_hold, align 8, !tbaa !10
  %200 = load ptr, ptr %194, align 8, !tbaa !5
  store ptr %200, ptr %193, align 8, !tbaa !10
  br label %201

201:                                              ; preds = %196, %199
  %202 = phi ptr [ %198, %196 ], [ %194, %199 ]
  %203 = getelementptr inbounds %struct.word_type, ptr %202, i64 0, i32 1
  store i8 0, ptr %203, align 8, !tbaa !5
  %204 = getelementptr inbounds [2 x %struct.LIST], ptr %202, i64 0, i64 1, i32 1
  store ptr %202, ptr %204, align 8, !tbaa !5
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %202, i64 0, i64 1
  store ptr %202, ptr %205, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  store ptr %202, ptr %206, align 8, !tbaa !5
  store ptr %202, ptr %202, align 8, !tbaa !5
  store ptr %202, ptr @xx_link, align 8, !tbaa !10
  store ptr %202, ptr @zz_res, align 8, !tbaa !10
  store ptr %185, ptr @zz_hold, align 8, !tbaa !10
  %207 = load ptr, ptr %185, align 8, !tbaa !5
  store ptr %207, ptr @zz_tmp, align 8, !tbaa !10
  %208 = load ptr, ptr %202, align 8, !tbaa !5
  store ptr %208, ptr %185, align 8, !tbaa !5
  %209 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %210 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.LIST, ptr %211, i64 0, i32 1
  store ptr %209, ptr %212, align 8, !tbaa !5
  %213 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %213, ptr %210, align 8, !tbaa !5
  %214 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %215 = getelementptr inbounds %struct.LIST, ptr %213, i64 0, i32 1
  store ptr %214, ptr %215, align 8, !tbaa !5
  %216 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %216, ptr @zz_res, align 8, !tbaa !10
  store ptr %167, ptr @zz_hold, align 8, !tbaa !10
  %217 = icmp eq ptr %216, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %201
  %219 = load ptr, ptr %169, align 8, !tbaa !5
  store ptr %219, ptr @zz_tmp, align 8, !tbaa !10
  %220 = getelementptr inbounds [2 x %struct.LIST], ptr %216, i64 0, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !5
  store ptr %221, ptr %169, align 8, !tbaa !5
  %222 = getelementptr inbounds [2 x %struct.LIST], ptr %221, i64 0, i64 1, i32 1
  store ptr %167, ptr %222, align 8, !tbaa !5
  store ptr %219, ptr %220, align 8, !tbaa !5
  %223 = getelementptr inbounds [2 x %struct.LIST], ptr %219, i64 0, i64 1, i32 1
  store ptr %216, ptr %223, align 8, !tbaa !5
  br label %224

224:                                              ; preds = %201, %218
  %225 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !5
  %226 = zext i8 %225 to i32
  store i32 %226, ptr @zz_size, align 4, !tbaa !8
  %227 = zext i8 %225 to i64
  %228 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !10
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %233 = call ptr @GetMemory(i32 noundef %226, ptr noundef %232) #9
  store ptr %233, ptr @zz_hold, align 8, !tbaa !10
  br label %236

234:                                              ; preds = %224
  store ptr %229, ptr @zz_hold, align 8, !tbaa !10
  %235 = load ptr, ptr %229, align 8, !tbaa !5
  store ptr %235, ptr %228, align 8, !tbaa !10
  br label %236

236:                                              ; preds = %231, %234
  %237 = phi ptr [ %233, %231 ], [ %229, %234 ]
  %238 = getelementptr inbounds %struct.word_type, ptr %237, i64 0, i32 1
  store i8 82, ptr %238, align 8, !tbaa !5
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %237, ptr %240, align 8, !tbaa !5
  store ptr %237, ptr %239, align 8, !tbaa !5
  %241 = getelementptr inbounds %struct.LIST, ptr %237, i64 0, i32 1
  store ptr %237, ptr %241, align 8, !tbaa !5
  store ptr %237, ptr %237, align 8, !tbaa !5
  %242 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %243 = zext i8 %242 to i32
  store i32 %243, ptr @zz_size, align 4, !tbaa !8
  %244 = zext i8 %242 to i64
  %245 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !10
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %236
  %249 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %250 = call ptr @GetMemory(i32 noundef %243, ptr noundef %249) #9
  br label %253

251:                                              ; preds = %236
  store ptr %246, ptr @zz_hold, align 8, !tbaa !10
  %252 = load ptr, ptr %246, align 8, !tbaa !5
  store ptr %252, ptr %245, align 8, !tbaa !10
  br label %253

253:                                              ; preds = %248, %251
  %254 = phi ptr [ %250, %248 ], [ %246, %251 ]
  %255 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 1
  store i8 0, ptr %255, align 8, !tbaa !5
  %256 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1, i32 1
  store ptr %254, ptr %256, align 8, !tbaa !5
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1
  store ptr %254, ptr %257, align 8, !tbaa !5
  %258 = getelementptr inbounds %struct.LIST, ptr %254, i64 0, i32 1
  store ptr %254, ptr %258, align 8, !tbaa !5
  store ptr %254, ptr %254, align 8, !tbaa !5
  store ptr %254, ptr @xx_link, align 8, !tbaa !10
  store ptr %254, ptr @zz_res, align 8, !tbaa !10
  store ptr %237, ptr @zz_hold, align 8, !tbaa !10
  %259 = load ptr, ptr %237, align 8, !tbaa !5
  store ptr %259, ptr @zz_tmp, align 8, !tbaa !10
  %260 = load ptr, ptr %254, align 8, !tbaa !5
  store ptr %260, ptr %237, align 8, !tbaa !5
  %261 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %262 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %263 = load ptr, ptr %262, align 8, !tbaa !5
  %264 = getelementptr inbounds %struct.LIST, ptr %263, i64 0, i32 1
  store ptr %261, ptr %264, align 8, !tbaa !5
  %265 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %265, ptr %262, align 8, !tbaa !5
  %266 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %267 = getelementptr inbounds %struct.LIST, ptr %265, i64 0, i32 1
  store ptr %266, ptr %267, align 8, !tbaa !5
  %268 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %268, ptr @zz_res, align 8, !tbaa !10
  store ptr %64, ptr @zz_hold, align 8, !tbaa !10
  %269 = icmp eq ptr %268, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %253
  %271 = load ptr, ptr %135, align 8, !tbaa !5
  store ptr %271, ptr @zz_tmp, align 8, !tbaa !10
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !5
  store ptr %273, ptr %135, align 8, !tbaa !5
  %274 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1, i32 1
  store ptr %64, ptr %274, align 8, !tbaa !5
  store ptr %271, ptr %272, align 8, !tbaa !5
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1, i32 1
  store ptr %268, ptr %275, align 8, !tbaa !5
  br label %276

276:                                              ; preds = %253, %270
  %277 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %278 = zext i8 %277 to i32
  store i32 %278, ptr @zz_size, align 4, !tbaa !8
  %279 = zext i8 %277 to i64
  %280 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !10
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %285 = call ptr @GetMemory(i32 noundef %278, ptr noundef %284) #9
  store ptr %285, ptr @zz_hold, align 8, !tbaa !10
  br label %288

286:                                              ; preds = %276
  store ptr %281, ptr @zz_hold, align 8, !tbaa !10
  %287 = load ptr, ptr %281, align 8, !tbaa !5
  store ptr %287, ptr %280, align 8, !tbaa !10
  br label %288

288:                                              ; preds = %283, %286
  %289 = phi ptr [ %285, %283 ], [ %281, %286 ]
  %290 = getelementptr inbounds %struct.word_type, ptr %289, i64 0, i32 1
  store i8 17, ptr %290, align 8, !tbaa !5
  %291 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1, i32 1
  store ptr %289, ptr %291, align 8, !tbaa !5
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1
  store ptr %289, ptr %292, align 8, !tbaa !5
  %293 = getelementptr inbounds %struct.LIST, ptr %289, i64 0, i32 1
  store ptr %289, ptr %293, align 8, !tbaa !5
  store ptr %289, ptr %289, align 8, !tbaa !5
  %294 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %295 = zext i8 %294 to i32
  store i32 %295, ptr @zz_size, align 4, !tbaa !8
  %296 = zext i8 %294 to i64
  %297 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !10
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %288
  %301 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %302 = call ptr @GetMemory(i32 noundef %295, ptr noundef %301) #9
  br label %305

303:                                              ; preds = %288
  store ptr %298, ptr @zz_hold, align 8, !tbaa !10
  %304 = load ptr, ptr %298, align 8, !tbaa !5
  store ptr %304, ptr %297, align 8, !tbaa !10
  br label %305

305:                                              ; preds = %300, %303
  %306 = phi ptr [ %302, %300 ], [ %298, %303 ]
  %307 = getelementptr inbounds %struct.word_type, ptr %306, i64 0, i32 1
  store i8 0, ptr %307, align 8, !tbaa !5
  %308 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1, i32 1
  store ptr %306, ptr %308, align 8, !tbaa !5
  %309 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1
  store ptr %306, ptr %309, align 8, !tbaa !5
  %310 = getelementptr inbounds %struct.LIST, ptr %306, i64 0, i32 1
  store ptr %306, ptr %310, align 8, !tbaa !5
  store ptr %306, ptr %306, align 8, !tbaa !5
  store ptr %306, ptr @xx_link, align 8, !tbaa !10
  store ptr %306, ptr @zz_res, align 8, !tbaa !10
  store ptr %289, ptr @zz_hold, align 8, !tbaa !10
  %311 = load ptr, ptr %289, align 8, !tbaa !5
  store ptr %311, ptr @zz_tmp, align 8, !tbaa !10
  %312 = load ptr, ptr %306, align 8, !tbaa !5
  store ptr %312, ptr %289, align 8, !tbaa !5
  %313 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %314 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = getelementptr inbounds %struct.LIST, ptr %315, i64 0, i32 1
  store ptr %313, ptr %316, align 8, !tbaa !5
  %317 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %317, ptr %314, align 8, !tbaa !5
  %318 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %319 = getelementptr inbounds %struct.LIST, ptr %317, i64 0, i32 1
  store ptr %318, ptr %319, align 8, !tbaa !5
  %320 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %320, ptr @zz_res, align 8, !tbaa !10
  store ptr %237, ptr @zz_hold, align 8, !tbaa !10
  %321 = icmp eq ptr %320, null
  br i1 %321, label %328, label %322

322:                                              ; preds = %305
  %323 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %323, ptr @zz_tmp, align 8, !tbaa !10
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %320, i64 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  store ptr %325, ptr %239, align 8, !tbaa !5
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  store ptr %237, ptr %326, align 8, !tbaa !5
  store ptr %323, ptr %324, align 8, !tbaa !5
  %327 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1, i32 1
  store ptr %320, ptr %327, align 8, !tbaa !5
  br label %328

328:                                              ; preds = %305, %322
  %329 = call ptr @Manifest(ptr noundef nonnull %167, ptr noundef nonnull %237, ptr noundef nonnull %136, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 0) #9
  %330 = call ptr @ReplaceWithTidy(ptr noundef %329, i32 noundef 1) #9
  %331 = load ptr, ptr %241, align 8, !tbaa !5
  store ptr %331, ptr @xx_link, align 8, !tbaa !10
  %332 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !5
  %334 = icmp eq ptr %333, %331
  br i1 %334, label %340, label %335

335:                                              ; preds = %328
  store ptr %333, ptr @zz_res, align 8, !tbaa !10
  %336 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !5
  %338 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1
  store ptr %337, ptr %338, align 8, !tbaa !5
  %339 = getelementptr inbounds [2 x %struct.LIST], ptr %337, i64 0, i64 1, i32 1
  store ptr %333, ptr %339, align 8, !tbaa !5
  store ptr %331, ptr %332, align 8, !tbaa !5
  store ptr %331, ptr %336, align 8, !tbaa !5
  br label %340

340:                                              ; preds = %328, %335
  store ptr %331, ptr @zz_hold, align 8, !tbaa !10
  %341 = getelementptr inbounds %struct.LIST, ptr %331, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !5
  %343 = icmp eq ptr %342, %331
  br i1 %343, label %352, label %344

344:                                              ; preds = %340
  store ptr %342, ptr @zz_res, align 8, !tbaa !10
  %345 = load ptr, ptr %331, align 8, !tbaa !5
  store ptr %345, ptr %342, align 8, !tbaa !5
  %346 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %347 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %348 = load ptr, ptr %347, align 8, !tbaa !5
  %349 = getelementptr inbounds %struct.LIST, ptr %348, i64 0, i32 1
  store ptr %346, ptr %349, align 8, !tbaa !5
  %350 = getelementptr inbounds %struct.LIST, ptr %347, i64 0, i32 1
  store ptr %347, ptr %350, align 8, !tbaa !5
  store ptr %347, ptr %347, align 8, !tbaa !5
  %351 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %352

352:                                              ; preds = %340, %344
  %353 = phi ptr [ %331, %340 ], [ %351, %344 ]
  store ptr %353, ptr @zz_hold, align 8, !tbaa !10
  %354 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 1
  %355 = load i8, ptr %354, align 8, !tbaa !5
  %356 = add i8 %355, -11
  %357 = icmp ult i8 %356, 2
  %358 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 1, i32 0, i32 1
  %359 = zext i8 %355 to i64
  %360 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %359
  %361 = select i1 %357, ptr %358, ptr %360
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = zext i8 %362 to i32
  store i32 %363, ptr @zz_size, align 4, !tbaa !8
  %364 = zext i8 %362 to i64
  %365 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !10
  store ptr %366, ptr %353, align 8, !tbaa !5
  %367 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %368 = load i32, ptr @zz_size, align 4, !tbaa !8
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %369
  store ptr %367, ptr %370, align 8, !tbaa !10
  %371 = call i32 @DisposeObject(ptr noundef nonnull %289) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %372 = load ptr, ptr %122, align 8, !tbaa !5
  br label %373

373:                                              ; preds = %149, %352
  %374 = phi ptr [ %372, %352 ], [ %138, %149 ]
  %375 = phi ptr [ %330, %352 ], [ %141, %149 ]
  %376 = phi ptr [ %185, %352 ], [ %140, %149 ]
  %377 = getelementptr inbounds %struct.LIST, ptr %139, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !5
  %379 = icmp eq ptr %378, %374
  br i1 %379, label %380, label %137

380:                                              ; preds = %373, %128, %121
  %381 = phi ptr [ null, %121 ], [ null, %128 ], [ %375, %373 ]
  %382 = phi ptr [ null, %121 ], [ null, %128 ], [ %376, %373 ]
  %383 = call zeroext i16 @DatabaseFileNum(ptr noundef nonnull %69) #9
  call void @AppendToFile(ptr noundef nonnull %64, i16 noundef zeroext %383, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %384 = icmp eq ptr %381, null
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 8
  %387 = load i32, ptr %386, align 4, !tbaa !5
  %388 = add nsw i32 %387, 1
  store i32 %388, ptr %386, align 4, !tbaa !5
  %389 = call ptr @StringFiveInt(i32 noundef %388) #9
  %390 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %389) #9
  br label %404

391:                                              ; preds = %380
  %392 = getelementptr inbounds %struct.word_type, ptr %381, i64 0, i32 1
  %393 = load i8, ptr %392, align 8, !tbaa !5
  %394 = add i8 %393, -11
  %395 = icmp ult i8 %394, 2
  br i1 %395, label %398, label %396

396:                                              ; preds = %391
  %397 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 10, ptr noundef nonnull @.str.30, i32 noundef 2, ptr noundef nonnull %392, ptr noundef nonnull @.str.31) #9
  br label %404

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.word_type, ptr %381, i64 0, i32 4
  %400 = load i8, ptr %399, align 1
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 11, ptr noundef nonnull @.str.33, i32 noundef 2, ptr noundef nonnull %392, ptr noundef nonnull @.str.31) #9
  br label %404

404:                                              ; preds = %398, %396, %402, %385
  %405 = phi ptr [ %2, %385 ], [ @.str.32, %402 ], [ @.str.32, %396 ], [ %399, %398 ]
  %406 = icmp eq i8 %28, -123
  br i1 %406, label %407, label %438

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 10
  %409 = load ptr, ptr %408, align 8, !tbaa !5
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %416

411:                                              ; preds = %407
  %412 = call ptr @SymName(ptr noundef %43) #9
  %413 = call ptr @SymName(ptr noundef %43) #9
  %414 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 12, ptr noundef nonnull @.str.34, i32 noundef 2, ptr noundef nonnull %69, ptr noundef %412, ptr noundef %413, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8) #9
  %415 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef nonnull %69) #9
  store ptr %415, ptr %408, align 8, !tbaa !5
  br label %416

416:                                              ; preds = %411, %407
  %417 = phi ptr [ %415, %411 ], [ %409, %407 ]
  %418 = getelementptr inbounds %struct.word_type, ptr %417, i64 0, i32 1
  %419 = load i8, ptr %418, align 8, !tbaa !5
  %420 = add i8 %419, -11
  %421 = icmp ult i8 %420, 2
  br i1 %421, label %422, label %426

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.word_type, ptr %417, i64 0, i32 4
  %424 = load i8, ptr %423, align 1
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %416, %422
  %427 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %428 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %427, ptr noundef nonnull @.str.37) #9
  %429 = load ptr, ptr %408, align 8, !tbaa !5
  br label %430

430:                                              ; preds = %426, %422
  %431 = phi ptr [ %429, %426 ], [ %417, %422 ]
  %432 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %433 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 4
  %434 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %435 = load i32, ptr %3, align 4, !tbaa !8
  %436 = sext i32 %435 to i64
  %437 = load i32, ptr %4, align 4, !tbaa !8
  call void @DbInsert(ptr noundef %432, i32 noundef 1, ptr noundef %43, ptr noundef nonnull %433, ptr noundef %434, ptr noundef nonnull %405, i16 noundef zeroext %383, i64 noundef %436, i32 noundef %437, i32 noundef 0) #9
  br label %485

438:                                              ; preds = %404
  %439 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %405, ptr noundef nonnull %69) #9
  %440 = getelementptr inbounds %struct.word_type, ptr %439, i64 0, i32 3
  store i8 %28, ptr %440, align 8, !tbaa !5
  %441 = getelementptr inbounds i8, ptr %439, i64 50
  store i16 %383, ptr %441, align 2, !tbaa !5
  %442 = load i32, ptr %3, align 4, !tbaa !8
  %443 = getelementptr inbounds i8, ptr %439, i64 52
  store i32 %442, ptr %443, align 4, !tbaa !5
  %444 = load i32, ptr %4, align 4, !tbaa !8
  %445 = getelementptr inbounds %struct.word_type, ptr %439, i64 0, i32 3, i32 1
  store i32 %444, ptr %445, align 8, !tbaa !5
  %446 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %447 = zext i8 %446 to i32
  store i32 %447, ptr @zz_size, align 4, !tbaa !8
  %448 = zext i8 %446 to i64
  %449 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !10
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %455

452:                                              ; preds = %438
  %453 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %454 = call ptr @GetMemory(i32 noundef %447, ptr noundef %453) #9
  br label %457

455:                                              ; preds = %438
  store ptr %450, ptr @zz_hold, align 8, !tbaa !10
  %456 = load ptr, ptr %450, align 8, !tbaa !5
  store ptr %456, ptr %449, align 8, !tbaa !10
  br label %457

457:                                              ; preds = %452, %455
  %458 = phi ptr [ %454, %452 ], [ %450, %455 ]
  %459 = getelementptr inbounds %struct.word_type, ptr %458, i64 0, i32 1
  store i8 0, ptr %459, align 8, !tbaa !5
  %460 = getelementptr inbounds [2 x %struct.LIST], ptr %458, i64 0, i64 1, i32 1
  store ptr %458, ptr %460, align 8, !tbaa !5
  %461 = getelementptr inbounds [2 x %struct.LIST], ptr %458, i64 0, i64 1
  store ptr %458, ptr %461, align 8, !tbaa !5
  %462 = getelementptr inbounds %struct.LIST, ptr %458, i64 0, i32 1
  store ptr %458, ptr %462, align 8, !tbaa !5
  store ptr %458, ptr %458, align 8, !tbaa !5
  store ptr %458, ptr @xx_link, align 8, !tbaa !10
  store ptr %458, ptr @zz_res, align 8, !tbaa !10
  store ptr %50, ptr @zz_hold, align 8, !tbaa !10
  %463 = icmp eq ptr %50, null
  br i1 %463, label %464, label %465

464:                                              ; preds = %457
  store ptr %439, ptr @zz_hold, align 8, !tbaa !10
  br label %477

465:                                              ; preds = %457
  %466 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %466, ptr @zz_tmp, align 8, !tbaa !10
  %467 = load ptr, ptr %458, align 8, !tbaa !5
  store ptr %467, ptr %50, align 8, !tbaa !5
  %468 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %469 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %470 = load ptr, ptr %469, align 8, !tbaa !5
  %471 = getelementptr inbounds %struct.LIST, ptr %470, i64 0, i32 1
  store ptr %468, ptr %471, align 8, !tbaa !5
  %472 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %472, ptr %469, align 8, !tbaa !5
  %473 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %474 = getelementptr inbounds %struct.LIST, ptr %472, i64 0, i32 1
  store ptr %473, ptr %474, align 8, !tbaa !5
  %475 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %475, ptr @zz_res, align 8, !tbaa !10
  store ptr %439, ptr @zz_hold, align 8, !tbaa !10
  %476 = icmp eq ptr %475, null
  br i1 %476, label %485, label %477

477:                                              ; preds = %464, %465
  %478 = phi ptr [ %458, %464 ], [ %475, %465 ]
  %479 = getelementptr inbounds [2 x %struct.LIST], ptr %439, i64 0, i64 1
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  store ptr %480, ptr @zz_tmp, align 8, !tbaa !10
  %481 = getelementptr inbounds [2 x %struct.LIST], ptr %478, i64 0, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !5
  store ptr %482, ptr %479, align 8, !tbaa !5
  %483 = getelementptr inbounds [2 x %struct.LIST], ptr %482, i64 0, i64 1, i32 1
  store ptr %439, ptr %483, align 8, !tbaa !5
  store ptr %480, ptr %481, align 8, !tbaa !5
  %484 = getelementptr inbounds [2 x %struct.LIST], ptr %480, i64 0, i64 1, i32 1
  store ptr %478, ptr %484, align 8, !tbaa !5
  br label %485

485:                                              ; preds = %465, %477, %430
  %486 = call i32 @DisposeObject(ptr noundef nonnull %64) #9
  %487 = icmp eq ptr %382, null
  br i1 %487, label %973, label %488

488:                                              ; preds = %485
  %489 = call i32 @DisposeObject(ptr noundef nonnull %382) #9
  br label %973

490:                                              ; preds = %114
  %491 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 10
  %492 = load ptr, ptr %491, align 8, !tbaa !5
  %493 = icmp eq ptr %492, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %490
  %495 = tail call i32 @DisposeObject(ptr noundef nonnull %492) #9
  br label %496

496:                                              ; preds = %494, %490
  %497 = load i8, ptr %69, align 8, !tbaa !5
  %498 = add i8 %497, -11
  %499 = icmp ult i8 %498, 2
  br i1 %499, label %500, label %504

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 4
  %502 = load i8, ptr %501, align 1
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %496, %500
  %505 = tail call i32 @DisposeObject(ptr noundef nonnull %64) #9
  %506 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %507 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef %506) #9
  br label %508

508:                                              ; preds = %500, %504
  %509 = phi ptr [ %507, %504 ], [ %64, %500 ]
  store ptr %509, ptr %491, align 8, !tbaa !5
  %510 = getelementptr inbounds %struct.LIST, ptr %50, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !5
  %512 = icmp eq ptr %511, %50
  br i1 %512, label %973, label %513

513:                                              ; preds = %508, %607
  %514 = phi ptr [ %610, %607 ], [ %511, %508 ]
  br label %515

515:                                              ; preds = %513, %515
  %516 = phi ptr [ %518, %515 ], [ %514, %513 ]
  %517 = getelementptr inbounds [2 x %struct.LIST], ptr %516, i64 0, i64 1
  %518 = load ptr, ptr %517, align 8, !tbaa !5
  %519 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 1
  %520 = load i8, ptr %519, align 8, !tbaa !5
  switch i8 %520, label %525 [
    i8 0, label %515
    i8 11, label %521
    i8 12, label %521
  ]

521:                                              ; preds = %515, %515
  %522 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 4
  %523 = load i8, ptr %522, align 1
  %524 = icmp eq i8 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %515, %521
  %526 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %527 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %526, ptr noundef nonnull @.str.38) #9
  br label %528

528:                                              ; preds = %525, %521
  %529 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 3
  %530 = load i8, ptr %529, align 8, !tbaa !5
  switch i8 %530, label %604 [
    i8 -123, label %531
    i8 -127, label %531
    i8 -126, label %531
    i8 126, label %607
    i8 -122, label %607
    i8 127, label %607
    i8 -128, label %607
  ]

531:                                              ; preds = %528, %528, %528
  %532 = getelementptr inbounds %struct.LIST, ptr %518, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !5
  %534 = icmp eq ptr %533, %518
  br i1 %534, label %542, label %535

535:                                              ; preds = %531, %535
  %536 = phi ptr [ %538, %535 ], [ %533, %531 ]
  %537 = getelementptr inbounds [2 x %struct.LIST], ptr %536, i64 0, i64 1
  %538 = load ptr, ptr %537, align 8, !tbaa !5
  %539 = getelementptr inbounds %struct.word_type, ptr %538, i64 0, i32 1
  %540 = load i8, ptr %539, align 8, !tbaa !5
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %535, label %542

542:                                              ; preds = %535, %531
  %543 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %544 = load ptr, ptr %491, align 8, !tbaa !5
  %545 = getelementptr inbounds %struct.word_type, ptr %544, i64 0, i32 4
  %546 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %547 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 4
  %548 = getelementptr inbounds i8, ptr %518, i64 50
  %549 = load i16, ptr %548, align 2, !tbaa !5
  %550 = getelementptr inbounds i8, ptr %518, i64 52
  %551 = load i32, ptr %550, align 4, !tbaa !5
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 3, i32 1
  %554 = load i32, ptr %553, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %543, i32 noundef 1, ptr noundef %43, ptr noundef nonnull %545, ptr noundef %546, ptr noundef nonnull %547, i16 noundef zeroext %549, i64 noundef %552, i32 noundef %554, i32 noundef 0) #9
  %555 = load ptr, ptr %514, align 8, !tbaa !5
  %556 = getelementptr inbounds %struct.LIST, ptr %555, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !5
  store ptr %557, ptr @xx_link, align 8, !tbaa !10
  %558 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !5
  %560 = icmp eq ptr %559, %557
  br i1 %560, label %566, label %561

561:                                              ; preds = %542
  store ptr %559, ptr @zz_res, align 8, !tbaa !10
  %562 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1
  %563 = load ptr, ptr %562, align 8, !tbaa !5
  %564 = getelementptr inbounds [2 x %struct.LIST], ptr %559, i64 0, i64 1
  store ptr %563, ptr %564, align 8, !tbaa !5
  %565 = getelementptr inbounds [2 x %struct.LIST], ptr %563, i64 0, i64 1, i32 1
  store ptr %559, ptr %565, align 8, !tbaa !5
  store ptr %557, ptr %558, align 8, !tbaa !5
  store ptr %557, ptr %562, align 8, !tbaa !5
  br label %566

566:                                              ; preds = %542, %561
  %567 = phi ptr [ %559, %561 ], [ null, %542 ]
  store ptr %567, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %557, ptr @zz_hold, align 8, !tbaa !10
  %568 = getelementptr inbounds %struct.LIST, ptr %557, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !5
  %570 = icmp eq ptr %569, %557
  br i1 %570, label %579, label %571

571:                                              ; preds = %566
  store ptr %569, ptr @zz_res, align 8, !tbaa !10
  %572 = load ptr, ptr %557, align 8, !tbaa !5
  store ptr %572, ptr %569, align 8, !tbaa !5
  %573 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %574 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %575 = load ptr, ptr %574, align 8, !tbaa !5
  %576 = getelementptr inbounds %struct.LIST, ptr %575, i64 0, i32 1
  store ptr %573, ptr %576, align 8, !tbaa !5
  %577 = getelementptr inbounds %struct.LIST, ptr %574, i64 0, i32 1
  store ptr %574, ptr %577, align 8, !tbaa !5
  store ptr %574, ptr %574, align 8, !tbaa !5
  %578 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %579

579:                                              ; preds = %566, %571
  %580 = phi ptr [ %557, %566 ], [ %578, %571 ]
  store ptr %580, ptr @zz_hold, align 8, !tbaa !10
  %581 = getelementptr inbounds %struct.word_type, ptr %580, i64 0, i32 1
  %582 = load i8, ptr %581, align 8, !tbaa !5
  %583 = add i8 %582, -11
  %584 = icmp ult i8 %583, 2
  %585 = getelementptr inbounds %struct.word_type, ptr %580, i64 0, i32 1, i32 0, i32 1
  %586 = zext i8 %582 to i64
  %587 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %586
  %588 = select i1 %584, ptr %585, ptr %587
  %589 = load i8, ptr %588, align 1, !tbaa !5
  %590 = zext i8 %589 to i32
  store i32 %590, ptr @zz_size, align 4, !tbaa !8
  %591 = zext i8 %589 to i64
  %592 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %591
  %593 = load ptr, ptr %592, align 8, !tbaa !10
  store ptr %593, ptr %580, align 8, !tbaa !5
  %594 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %595 = load i32, ptr @zz_size, align 4, !tbaa !8
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %596
  store ptr %594, ptr %597, align 8, !tbaa !10
  %598 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %599 = getelementptr inbounds [2 x %struct.LIST], ptr %598, i64 0, i64 1, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !5
  %601 = icmp eq ptr %600, %598
  br i1 %601, label %602, label %607

602:                                              ; preds = %579
  %603 = tail call i32 @DisposeObject(ptr noundef nonnull %598) #9
  br label %607

604:                                              ; preds = %528
  %605 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %606 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %605, ptr noundef nonnull @.str.39) #9
  br label %607

607:                                              ; preds = %604, %602, %579, %528, %528, %528, %528
  %608 = phi ptr [ %514, %604 ], [ %514, %528 ], [ %514, %528 ], [ %514, %528 ], [ %514, %528 ], [ %555, %602 ], [ %555, %579 ]
  %609 = getelementptr inbounds %struct.LIST, ptr %608, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !5
  %611 = icmp eq ptr %610, %50
  br i1 %611, label %973, label %513

612:                                              ; preds = %114
  %613 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 2
  %614 = load i8, ptr %613, align 1, !tbaa !5
  switch i8 %614, label %628 [
    i8 0, label %615
    i8 1, label %619
  ]

615:                                              ; preds = %612
  %616 = tail call ptr @SymName(ptr noundef %43) #9
  %617 = tail call ptr @SymName(ptr noundef %43) #9
  %618 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 13, ptr noundef nonnull @.str.40, i32 noundef 2, ptr noundef nonnull %69, ptr noundef %616, ptr noundef %617, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8) #9
  br label %973

619:                                              ; preds = %612
  %620 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 4
  %621 = load ptr, ptr %620, align 8, !tbaa !5
  %622 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 3
  %623 = load i16, ptr %622, align 2, !tbaa !5
  %624 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 6
  %625 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 7
  tail call void @AppendToFile(ptr noundef %621, i16 noundef zeroext %623, ptr noundef nonnull %624, ptr noundef nonnull %625) #9
  %626 = load ptr, ptr %620, align 8, !tbaa !5
  %627 = tail call i32 @DisposeObject(ptr noundef %626) #9
  store ptr null, ptr %620, align 8, !tbaa !5
  store i8 2, ptr %613, align 1, !tbaa !5
  br label %628

628:                                              ; preds = %612, %619
  %629 = load i8, ptr %69, align 8, !tbaa !5
  %630 = add i8 %629, -11
  %631 = icmp ult i8 %630, 2
  br i1 %631, label %632, label %636

632:                                              ; preds = %628
  %633 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 4
  %634 = load i8, ptr %633, align 1
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %628, %632
  %637 = tail call i32 @DisposeObject(ptr noundef nonnull %64) #9
  %638 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %639 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef %638) #9
  br label %640

640:                                              ; preds = %636, %632
  %641 = phi ptr [ %639, %636 ], [ %64, %632 ]
  %642 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %643 = getelementptr inbounds %struct.word_type, ptr %641, i64 0, i32 4
  %644 = getelementptr inbounds %struct.word_type, ptr %641, i64 0, i32 1
  %645 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 3
  %646 = load i16, ptr %645, align 2, !tbaa !5
  %647 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 6
  %648 = load i32, ptr %647, align 4, !tbaa !5
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 7
  %651 = load i32, ptr %650, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %642, i32 noundef 0, ptr noundef %43, ptr noundef nonnull %643, ptr noundef nonnull %644, ptr noundef nonnull @.str.41, i16 noundef zeroext %646, i64 noundef %649, i32 noundef %651, i32 noundef 1) #9
  %652 = tail call i32 @DisposeObject(ptr noundef %641) #9
  br label %973

653:                                              ; preds = %114, %114
  %654 = load i8, ptr %69, align 8, !tbaa !5
  %655 = add i8 %654, -11
  %656 = icmp ult i8 %655, 2
  br i1 %656, label %662, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 9
  %659 = load ptr, ptr %658, align 8, !tbaa !5
  %660 = tail call ptr @SymName(ptr noundef %659) #9
  %661 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 14, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull %69, ptr noundef %660) #9
  br label %973

662:                                              ; preds = %653
  %663 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 4
  %664 = load i8, ptr %663, align 1
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %973, label %666

666:                                              ; preds = %662
  %667 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %668 = zext i8 %667 to i32
  store i32 %668, ptr @zz_size, align 4, !tbaa !8
  %669 = zext i8 %667 to i64
  %670 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !10
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %676

673:                                              ; preds = %666
  %674 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %675 = tail call ptr @GetMemory(i32 noundef %668, ptr noundef %674) #9
  br label %678

676:                                              ; preds = %666
  store ptr %671, ptr @zz_hold, align 8, !tbaa !10
  %677 = load ptr, ptr %671, align 8, !tbaa !5
  store ptr %677, ptr %670, align 8, !tbaa !10
  br label %678

678:                                              ; preds = %673, %676
  %679 = phi ptr [ %675, %673 ], [ %671, %676 ]
  %680 = getelementptr inbounds %struct.word_type, ptr %679, i64 0, i32 1
  store i8 0, ptr %680, align 8, !tbaa !5
  %681 = getelementptr inbounds [2 x %struct.LIST], ptr %679, i64 0, i64 1, i32 1
  store ptr %679, ptr %681, align 8, !tbaa !5
  %682 = getelementptr inbounds [2 x %struct.LIST], ptr %679, i64 0, i64 1
  store ptr %679, ptr %682, align 8, !tbaa !5
  %683 = getelementptr inbounds %struct.LIST, ptr %679, i64 0, i32 1
  store ptr %679, ptr %683, align 8, !tbaa !5
  store ptr %679, ptr %679, align 8, !tbaa !5
  store ptr %679, ptr @xx_link, align 8, !tbaa !10
  store ptr %679, ptr @zz_res, align 8, !tbaa !10
  store ptr %50, ptr @zz_hold, align 8, !tbaa !10
  %684 = icmp eq ptr %50, null
  br i1 %684, label %685, label %686

685:                                              ; preds = %678
  store ptr %64, ptr @zz_hold, align 8, !tbaa !10
  br label %698

686:                                              ; preds = %678
  %687 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %687, ptr @zz_tmp, align 8, !tbaa !10
  %688 = load ptr, ptr %679, align 8, !tbaa !5
  store ptr %688, ptr %50, align 8, !tbaa !5
  %689 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %690 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %691 = load ptr, ptr %690, align 8, !tbaa !5
  %692 = getelementptr inbounds %struct.LIST, ptr %691, i64 0, i32 1
  store ptr %689, ptr %692, align 8, !tbaa !5
  %693 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %693, ptr %690, align 8, !tbaa !5
  %694 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %695 = getelementptr inbounds %struct.LIST, ptr %693, i64 0, i32 1
  store ptr %694, ptr %695, align 8, !tbaa !5
  %696 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %696, ptr @zz_res, align 8, !tbaa !10
  store ptr %64, ptr @zz_hold, align 8, !tbaa !10
  %697 = icmp eq ptr %696, null
  br i1 %697, label %706, label %698

698:                                              ; preds = %685, %686
  %699 = phi ptr [ %679, %685 ], [ %696, %686 ]
  %700 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  %701 = load ptr, ptr %700, align 8, !tbaa !5
  store ptr %701, ptr @zz_tmp, align 8, !tbaa !10
  %702 = getelementptr inbounds [2 x %struct.LIST], ptr %699, i64 0, i64 1
  %703 = load ptr, ptr %702, align 8, !tbaa !5
  store ptr %703, ptr %700, align 8, !tbaa !5
  %704 = getelementptr inbounds [2 x %struct.LIST], ptr %703, i64 0, i64 1, i32 1
  store ptr %64, ptr %704, align 8, !tbaa !5
  store ptr %701, ptr %702, align 8, !tbaa !5
  %705 = getelementptr inbounds [2 x %struct.LIST], ptr %701, i64 0, i64 1, i32 1
  store ptr %699, ptr %705, align 8, !tbaa !5
  br label %706

706:                                              ; preds = %686, %698
  %707 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1, i32 0, i32 2
  %708 = load i16, ptr %707, align 2, !tbaa !5
  %709 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 3
  %710 = getelementptr inbounds i8, ptr %64, i64 50
  store i16 %708, ptr %710, align 2, !tbaa !5
  store i8 %28, ptr %709, align 8, !tbaa !5
  br label %973

711:                                              ; preds = %114
  %712 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 2
  %713 = load i8, ptr %712, align 1, !tbaa !5
  %714 = icmp eq i8 %713, 1
  br i1 %714, label %715, label %719

715:                                              ; preds = %711
  %716 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 4
  %717 = load ptr, ptr %716, align 8, !tbaa !5
  %718 = tail call i32 @DisposeObject(ptr noundef %717) #9
  br label %719

719:                                              ; preds = %715, %711
  %720 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 4
  store ptr %64, ptr %720, align 8, !tbaa !5
  %721 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !5
  %723 = icmp eq ptr %722, %64
  br i1 %723, label %727, label %724

724:                                              ; preds = %719
  %725 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %726 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %725, ptr noundef nonnull @.str.43) #9
  br label %727

727:                                              ; preds = %724, %719
  %728 = tail call zeroext i16 @DatabaseFileNum(ptr noundef nonnull %69) #9
  %729 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 3
  store i16 %728, ptr %729, align 2, !tbaa !5
  store i8 1, ptr %712, align 1, !tbaa !5
  %730 = load ptr, ptr %720, align 8, !tbaa !5
  %731 = getelementptr inbounds %struct.word_type, ptr %730, i64 0, i32 1
  %732 = load i8, ptr %731, align 8, !tbaa !5
  %733 = icmp eq i8 %732, 2
  br i1 %733, label %738, label %734

734:                                              ; preds = %727
  %735 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %736 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %735, ptr noundef nonnull @.str.44) #9
  %737 = load ptr, ptr %720, align 8, !tbaa !5
  br label %738

738:                                              ; preds = %734, %727
  %739 = phi ptr [ %737, %734 ], [ %730, %727 ]
  %740 = getelementptr inbounds %struct.LIST, ptr %739, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !5
  %742 = icmp eq ptr %741, %739
  br i1 %742, label %868, label %743

743:                                              ; preds = %738, %863
  %744 = phi ptr [ %865, %863 ], [ %741, %738 ]
  br label %745

745:                                              ; preds = %743, %745
  %746 = phi ptr [ %748, %745 ], [ %744, %743 ]
  %747 = getelementptr inbounds [2 x %struct.LIST], ptr %746, i64 0, i64 1
  %748 = load ptr, ptr %747, align 8, !tbaa !5
  %749 = getelementptr inbounds %struct.word_type, ptr %748, i64 0, i32 1
  %750 = load i8, ptr %749, align 8, !tbaa !5
  switch i8 %750, label %863 [
    i8 0, label %745
    i8 10, label %751
  ]

751:                                              ; preds = %745
  %752 = getelementptr inbounds %struct.LIST, ptr %748, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !5
  %754 = icmp eq ptr %753, %748
  br i1 %754, label %755, label %758

755:                                              ; preds = %751
  %756 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %757 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %756, ptr noundef nonnull @.str.45) #9
  br label %758

758:                                              ; preds = %755, %751
  %759 = getelementptr inbounds %struct.closure_type, ptr %748, i64 0, i32 5
  %760 = load ptr, ptr %759, align 8, !tbaa !5
  %761 = getelementptr inbounds i8, ptr %760, i64 41
  %762 = load i24, ptr %761, align 1
  %763 = and i24 %762, 1
  %764 = icmp eq i24 %763, 0
  br i1 %764, label %830, label %765

765:                                              ; preds = %758
  %766 = load ptr, ptr %752, align 8, !tbaa !5
  br label %767

767:                                              ; preds = %767, %765
  %768 = phi ptr [ %766, %765 ], [ %770, %767 ]
  %769 = getelementptr inbounds [2 x %struct.LIST], ptr %768, i64 0, i64 1
  %770 = load ptr, ptr %769, align 8, !tbaa !5
  %771 = getelementptr inbounds %struct.word_type, ptr %770, i64 0, i32 1
  %772 = load i8, ptr %771, align 8, !tbaa !5
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %767, label %774

774:                                              ; preds = %767
  %775 = tail call ptr @ReplaceWithTidy(ptr noundef nonnull %770, i32 noundef 1) #9
  %776 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 1
  %777 = load i8, ptr %776, align 8, !tbaa !5
  %778 = add i8 %777, -11
  %779 = icmp ult i8 %778, 2
  br i1 %779, label %786, label %780

780:                                              ; preds = %774
  %781 = load ptr, ptr %720, align 8, !tbaa !5
  %782 = getelementptr inbounds %struct.closure_type, ptr %781, i64 0, i32 5
  %783 = load ptr, ptr %782, align 8, !tbaa !5
  %784 = tail call ptr @SymName(ptr noundef %783) #9
  %785 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 15, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull %776, ptr noundef %784) #9
  br label %863

786:                                              ; preds = %774
  %787 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 4
  %788 = load i8, ptr %787, align 1
  %789 = icmp eq i8 %788, 0
  br i1 %789, label %863, label %790

790:                                              ; preds = %786
  %791 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 1, i32 0, i32 2
  %792 = load i16, ptr %791, align 2, !tbaa !5
  %793 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 3
  %794 = getelementptr inbounds i8, ptr %775, i64 50
  store i16 %792, ptr %794, align 2, !tbaa !5
  store i8 126, ptr %793, align 8, !tbaa !5
  %795 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %796 = zext i8 %795 to i32
  store i32 %796, ptr @zz_size, align 4, !tbaa !8
  %797 = zext i8 %795 to i64
  %798 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %797
  %799 = load ptr, ptr %798, align 8, !tbaa !10
  %800 = icmp eq ptr %799, null
  br i1 %800, label %801, label %804

801:                                              ; preds = %790
  %802 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %803 = tail call ptr @GetMemory(i32 noundef %796, ptr noundef %802) #9
  br label %806

804:                                              ; preds = %790
  store ptr %799, ptr @zz_hold, align 8, !tbaa !10
  %805 = load ptr, ptr %799, align 8, !tbaa !5
  store ptr %805, ptr %798, align 8, !tbaa !10
  br label %806

806:                                              ; preds = %801, %804
  %807 = phi ptr [ %803, %801 ], [ %799, %804 ]
  %808 = getelementptr inbounds %struct.word_type, ptr %807, i64 0, i32 1
  store i8 0, ptr %808, align 8, !tbaa !5
  %809 = getelementptr inbounds [2 x %struct.LIST], ptr %807, i64 0, i64 1, i32 1
  store ptr %807, ptr %809, align 8, !tbaa !5
  %810 = getelementptr inbounds [2 x %struct.LIST], ptr %807, i64 0, i64 1
  store ptr %807, ptr %810, align 8, !tbaa !5
  %811 = getelementptr inbounds %struct.LIST, ptr %807, i64 0, i32 1
  store ptr %807, ptr %811, align 8, !tbaa !5
  store ptr %807, ptr %807, align 8, !tbaa !5
  store ptr %807, ptr @xx_link, align 8, !tbaa !10
  store ptr %807, ptr @zz_res, align 8, !tbaa !10
  store ptr %50, ptr @zz_hold, align 8, !tbaa !10
  %812 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %812, ptr @zz_tmp, align 8, !tbaa !10
  %813 = load ptr, ptr %807, align 8, !tbaa !5
  store ptr %813, ptr %50, align 8, !tbaa !5
  %814 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %815 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %816 = load ptr, ptr %815, align 8, !tbaa !5
  %817 = getelementptr inbounds %struct.LIST, ptr %816, i64 0, i32 1
  store ptr %814, ptr %817, align 8, !tbaa !5
  %818 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %818, ptr %815, align 8, !tbaa !5
  %819 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %820 = getelementptr inbounds %struct.LIST, ptr %818, i64 0, i32 1
  store ptr %819, ptr %820, align 8, !tbaa !5
  %821 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %821, ptr @zz_res, align 8, !tbaa !10
  store ptr %775, ptr @zz_hold, align 8, !tbaa !10
  %822 = icmp eq ptr %821, null
  br i1 %822, label %863, label %823

823:                                              ; preds = %806
  %824 = getelementptr inbounds [2 x %struct.LIST], ptr %775, i64 0, i64 1
  %825 = load ptr, ptr %824, align 8, !tbaa !5
  store ptr %825, ptr @zz_tmp, align 8, !tbaa !10
  %826 = getelementptr inbounds [2 x %struct.LIST], ptr %821, i64 0, i64 1
  %827 = load ptr, ptr %826, align 8, !tbaa !5
  store ptr %827, ptr %824, align 8, !tbaa !5
  %828 = getelementptr inbounds [2 x %struct.LIST], ptr %827, i64 0, i64 1, i32 1
  store ptr %775, ptr %828, align 8, !tbaa !5
  store ptr %825, ptr %826, align 8, !tbaa !5
  %829 = getelementptr inbounds [2 x %struct.LIST], ptr %825, i64 0, i64 1, i32 1
  store ptr %821, ptr %829, align 8, !tbaa !5
  br label %863

830:                                              ; preds = %758
  %831 = getelementptr inbounds %struct.word_type, ptr %760, i64 0, i32 1
  %832 = load i8, ptr %831, align 8, !tbaa !5
  %833 = icmp eq i8 %832, -110
  br i1 %833, label %834, label %863

834:                                              ; preds = %830
  %835 = load ptr, ptr %752, align 8, !tbaa !5
  br label %836

836:                                              ; preds = %836, %834
  %837 = phi ptr [ %835, %834 ], [ %839, %836 ]
  %838 = getelementptr inbounds [2 x %struct.LIST], ptr %837, i64 0, i64 1
  %839 = load ptr, ptr %838, align 8, !tbaa !5
  %840 = getelementptr inbounds %struct.word_type, ptr %839, i64 0, i32 1
  %841 = load i8, ptr %840, align 8, !tbaa !5
  switch i8 %841, label %842 [
    i8 0, label %836
    i8 11, label %863
    i8 12, label %863
    i8 17, label %863
    i8 92, label %863
    i8 78, label %863
    i8 5, label %863
    i8 6, label %863
    i8 7, label %863
    i8 93, label %863
  ]

842:                                              ; preds = %836
  %843 = getelementptr inbounds %struct.word_type, ptr %839, i64 0, i32 1
  %844 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.46, ptr noundef nonnull %843) #9
  %845 = getelementptr inbounds [2 x %struct.LIST], ptr %839, i64 0, i64 1, i32 1
  %846 = load ptr, ptr %845, align 8, !tbaa !5
  %847 = icmp eq ptr %846, %839
  br i1 %847, label %848, label %849

848:                                              ; preds = %842
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %844, ptr @zz_res, align 8, !tbaa !10
  store ptr null, ptr @zz_hold, align 8, !tbaa !10
  br label %861

849:                                              ; preds = %842
  %850 = getelementptr inbounds [2 x %struct.LIST], ptr %839, i64 0, i64 1
  %851 = load ptr, ptr %850, align 8, !tbaa !5
  %852 = getelementptr inbounds [2 x %struct.LIST], ptr %846, i64 0, i64 1
  store ptr %851, ptr %852, align 8, !tbaa !5
  %853 = getelementptr inbounds [2 x %struct.LIST], ptr %851, i64 0, i64 1, i32 1
  store ptr %846, ptr %853, align 8, !tbaa !5
  store ptr %839, ptr %845, align 8, !tbaa !5
  store ptr %839, ptr %850, align 8, !tbaa !5
  store ptr %846, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %844, ptr @zz_res, align 8, !tbaa !10
  store ptr %846, ptr @zz_hold, align 8, !tbaa !10
  %854 = icmp eq ptr %844, null
  br i1 %854, label %861, label %855

855:                                              ; preds = %849
  %856 = load ptr, ptr %852, align 8, !tbaa !5
  store ptr %856, ptr @zz_tmp, align 8, !tbaa !10
  %857 = getelementptr inbounds [2 x %struct.LIST], ptr %844, i64 0, i64 1
  %858 = load ptr, ptr %857, align 8, !tbaa !5
  store ptr %858, ptr %852, align 8, !tbaa !5
  %859 = getelementptr inbounds [2 x %struct.LIST], ptr %858, i64 0, i64 1, i32 1
  store ptr %846, ptr %859, align 8, !tbaa !5
  store ptr %856, ptr %857, align 8, !tbaa !5
  %860 = getelementptr inbounds [2 x %struct.LIST], ptr %856, i64 0, i64 1, i32 1
  store ptr %844, ptr %860, align 8, !tbaa !5
  br label %861

861:                                              ; preds = %848, %849, %855
  %862 = tail call i32 @DisposeObject(ptr noundef nonnull %839) #9
  br label %863

863:                                              ; preds = %745, %836, %836, %836, %836, %836, %836, %836, %836, %836, %806, %830, %861, %780, %823, %786
  %864 = getelementptr inbounds %struct.LIST, ptr %744, i64 0, i32 1
  %865 = load ptr, ptr %864, align 8, !tbaa !5
  %866 = load ptr, ptr %720, align 8, !tbaa !5
  %867 = icmp eq ptr %865, %866
  br i1 %867, label %868, label %743

868:                                              ; preds = %863, %738
  %869 = phi ptr [ %739, %738 ], [ %865, %863 ]
  %870 = getelementptr inbounds %struct.LIST, ptr %50, i64 0, i32 1
  %871 = load ptr, ptr %870, align 8, !tbaa !5
  %872 = icmp eq ptr %871, %50
  br i1 %872, label %973, label %873

873:                                              ; preds = %868
  %874 = load i16, ptr %729, align 2, !tbaa !5
  %875 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 6
  %876 = getelementptr inbounds %struct.cr_type, ptr %50, i64 0, i32 7
  tail call void @AppendToFile(ptr noundef %869, i16 noundef zeroext %874, ptr noundef nonnull %875, ptr noundef nonnull %876) #9
  %877 = load ptr, ptr %720, align 8, !tbaa !5
  %878 = tail call i32 @DisposeObject(ptr noundef %877) #9
  store ptr null, ptr %720, align 8, !tbaa !5
  %879 = load ptr, ptr %870, align 8, !tbaa !5
  %880 = icmp eq ptr %879, %50
  br i1 %880, label %968, label %881

881:                                              ; preds = %873, %963
  %882 = phi ptr [ %966, %963 ], [ %879, %873 ]
  br label %883

883:                                              ; preds = %881, %883
  %884 = phi ptr [ %886, %883 ], [ %882, %881 ]
  %885 = getelementptr inbounds [2 x %struct.LIST], ptr %884, i64 0, i64 1
  %886 = load ptr, ptr %885, align 8, !tbaa !5
  %887 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 1
  %888 = load i8, ptr %887, align 8, !tbaa !5
  switch i8 %888, label %894 [
    i8 0, label %883
    i8 11, label %889
    i8 12, label %889
  ]

889:                                              ; preds = %883, %883
  %890 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 1
  %891 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 4
  %892 = load i8, ptr %891, align 1
  %893 = icmp eq i8 %892, 0
  br i1 %893, label %896, label %900

894:                                              ; preds = %883
  %895 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 1
  br label %896

896:                                              ; preds = %894, %889
  %897 = phi ptr [ %895, %894 ], [ %890, %889 ]
  %898 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %899 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %898, ptr noundef nonnull @.str.47) #9
  br label %900

900:                                              ; preds = %896, %889
  %901 = phi ptr [ %897, %896 ], [ %890, %889 ]
  %902 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 3
  %903 = load i8, ptr %902, align 8, !tbaa !5
  switch i8 %903, label %960 [
    i8 126, label %904
    i8 127, label %904
    i8 -128, label %904
    i8 -127, label %963
    i8 -123, label %963
    i8 -126, label %963
  ]

904:                                              ; preds = %900, %900, %900
  %905 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %906 = getelementptr inbounds %struct.word_type, ptr %886, i64 0, i32 4
  %907 = load i16, ptr %729, align 2, !tbaa !5
  %908 = load i32, ptr %875, align 4, !tbaa !5
  %909 = sext i32 %908 to i64
  %910 = load i32, ptr %876, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %905, i32 noundef 0, ptr noundef %43, ptr noundef nonnull %906, ptr noundef nonnull %901, ptr noundef nonnull @.str.41, i16 noundef zeroext %907, i64 noundef %909, i32 noundef %910, i32 noundef 1) #9
  %911 = load ptr, ptr %882, align 8, !tbaa !5
  %912 = getelementptr inbounds %struct.LIST, ptr %911, i64 0, i32 1
  %913 = load ptr, ptr %912, align 8, !tbaa !5
  store ptr %913, ptr @xx_link, align 8, !tbaa !10
  %914 = getelementptr inbounds [2 x %struct.LIST], ptr %913, i64 0, i64 1, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !5
  %916 = icmp eq ptr %915, %913
  br i1 %916, label %922, label %917

917:                                              ; preds = %904
  store ptr %915, ptr @zz_res, align 8, !tbaa !10
  %918 = getelementptr inbounds [2 x %struct.LIST], ptr %913, i64 0, i64 1
  %919 = load ptr, ptr %918, align 8, !tbaa !5
  %920 = getelementptr inbounds [2 x %struct.LIST], ptr %915, i64 0, i64 1
  store ptr %919, ptr %920, align 8, !tbaa !5
  %921 = getelementptr inbounds [2 x %struct.LIST], ptr %919, i64 0, i64 1, i32 1
  store ptr %915, ptr %921, align 8, !tbaa !5
  store ptr %913, ptr %914, align 8, !tbaa !5
  store ptr %913, ptr %918, align 8, !tbaa !5
  br label %922

922:                                              ; preds = %904, %917
  %923 = phi ptr [ %915, %917 ], [ null, %904 ]
  store ptr %923, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %913, ptr @zz_hold, align 8, !tbaa !10
  %924 = getelementptr inbounds %struct.LIST, ptr %913, i64 0, i32 1
  %925 = load ptr, ptr %924, align 8, !tbaa !5
  %926 = icmp eq ptr %925, %913
  br i1 %926, label %935, label %927

927:                                              ; preds = %922
  store ptr %925, ptr @zz_res, align 8, !tbaa !10
  %928 = load ptr, ptr %913, align 8, !tbaa !5
  store ptr %928, ptr %925, align 8, !tbaa !5
  %929 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %930 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %931 = load ptr, ptr %930, align 8, !tbaa !5
  %932 = getelementptr inbounds %struct.LIST, ptr %931, i64 0, i32 1
  store ptr %929, ptr %932, align 8, !tbaa !5
  %933 = getelementptr inbounds %struct.LIST, ptr %930, i64 0, i32 1
  store ptr %930, ptr %933, align 8, !tbaa !5
  store ptr %930, ptr %930, align 8, !tbaa !5
  %934 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %935

935:                                              ; preds = %922, %927
  %936 = phi ptr [ %913, %922 ], [ %934, %927 ]
  store ptr %936, ptr @zz_hold, align 8, !tbaa !10
  %937 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1
  %938 = load i8, ptr %937, align 8, !tbaa !5
  %939 = add i8 %938, -11
  %940 = icmp ult i8 %939, 2
  %941 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1, i32 0, i32 1
  %942 = zext i8 %938 to i64
  %943 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %942
  %944 = select i1 %940, ptr %941, ptr %943
  %945 = load i8, ptr %944, align 1, !tbaa !5
  %946 = zext i8 %945 to i32
  store i32 %946, ptr @zz_size, align 4, !tbaa !8
  %947 = zext i8 %945 to i64
  %948 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !10
  store ptr %949, ptr %936, align 8, !tbaa !5
  %950 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %951 = load i32, ptr @zz_size, align 4, !tbaa !8
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %952
  store ptr %950, ptr %953, align 8, !tbaa !10
  %954 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %955 = getelementptr inbounds [2 x %struct.LIST], ptr %954, i64 0, i64 1, i32 1
  %956 = load ptr, ptr %955, align 8, !tbaa !5
  %957 = icmp eq ptr %956, %954
  br i1 %957, label %958, label %963

958:                                              ; preds = %935
  %959 = tail call i32 @DisposeObject(ptr noundef nonnull %954) #9
  br label %963

960:                                              ; preds = %900
  %961 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %962 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %961, ptr noundef nonnull @.str.39) #9
  br label %963

963:                                              ; preds = %960, %958, %935, %900, %900, %900
  %964 = phi ptr [ %882, %960 ], [ %882, %900 ], [ %882, %900 ], [ %882, %900 ], [ %911, %958 ], [ %911, %935 ]
  %965 = getelementptr inbounds %struct.LIST, ptr %964, i64 0, i32 1
  %966 = load ptr, ptr %965, align 8, !tbaa !5
  %967 = icmp eq ptr %966, %50
  br i1 %967, label %968, label %881

968:                                              ; preds = %963, %873
  store i8 2, ptr %712, align 1, !tbaa !5
  br label %973

969:                                              ; preds = %114
  %970 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %971 = tail call ptr @Image(i32 noundef %29) #9
  %972 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef %970, ptr noundef nonnull @.str.49, ptr noundef %971) #9
  br label %973

973:                                              ; preds = %607, %508, %615, %640, %969, %488, %485, %706, %662, %657, %968, %868, %12, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #9
  ret void
}

declare zeroext i16 @DatabaseFileNum(ptr noundef) local_unnamed_addr #2

declare void @AppendToFile(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @StringFiveInt(i32 noundef) local_unnamed_addr #2

declare void @DbInsert(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CrossClose() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #9
  %10 = load i32, ptr @AllowCrossDb, align 4, !tbaa !8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %204, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr @RootCross, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %174, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %13
  br i1 %18, label %174, label %24

19:                                               ; preds = %169, %40
  %20 = getelementptr inbounds %struct.LIST, ptr %25, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load ptr, ptr @RootCross, align 8, !tbaa !10
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %174, label %24

24:                                               ; preds = %15, %19
  %25 = phi ptr [ %21, %19 ], [ %17, %15 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi ptr [ %29, %26 ], [ %25, %24 ]
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %26, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  store ptr %35, ptr %1, align 8, !tbaa !10
  %36 = icmp eq i8 %31, -116
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %39 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %38, ptr noundef nonnull @.str.50) #9
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, %29
  br i1 %43, label %19, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 10
  %46 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 2
  %47 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 4
  %48 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 3
  %49 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 6
  %50 = getelementptr inbounds %struct.cr_type, ptr %29, i64 0, i32 7
  br label %51

51:                                               ; preds = %44, %169
  %52 = phi ptr [ %42, %44 ], [ %172, %169 ]
  %53 = phi i32 [ 0, %44 ], [ %170, %169 ]
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %57, %54 ], [ %52, %51 ]
  %56 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !5
  switch i8 %59, label %65 [
    i8 0, label %54
    i8 11, label %60
    i8 12, label %60
  ]

60:                                               ; preds = %54, %54
  %61 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  %62 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %71

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %61, %60 ]
  %69 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %70 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %69, ptr noundef nonnull @.str.51) #9
  br label %71

71:                                               ; preds = %67, %60
  %72 = phi ptr [ %68, %67 ], [ %61, %60 ]
  %73 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 3
  %74 = load i8, ptr %73, align 8, !tbaa !5
  switch i8 %74, label %166 [
    i8 127, label %75
    i8 -128, label %89
    i8 -127, label %120
    i8 -126, label %144
  ]

75:                                               ; preds = %71
  %76 = icmp slt i32 %53, 5
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = tail call ptr @SymName(ptr noundef %35) #9
  %79 = tail call ptr @SymName(ptr noundef %35) #9
  %80 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef 2, ptr noundef nonnull %72, ptr noundef %78, ptr noundef %79, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #9
  br label %87

81:                                               ; preds = %75
  %82 = icmp eq i32 %53, 5
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %85 = tail call ptr @SymName(ptr noundef %35) #9
  %86 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 17, ptr noundef nonnull @.str.53, i32 noundef 2, ptr noundef %84, ptr noundef %85, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #9
  br label %87

87:                                               ; preds = %81, %83, %77
  %88 = add nsw i32 %53, 1
  br label %169

89:                                               ; preds = %71
  %90 = load i8, ptr %46, align 1, !tbaa !5
  switch i8 %90, label %100 [
    i8 0, label %91
    i8 1, label %95
  ]

91:                                               ; preds = %89
  %92 = tail call ptr @SymName(ptr noundef %35) #9
  %93 = tail call ptr @SymName(ptr noundef %35) #9
  %94 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 18, ptr noundef nonnull @.str.54, i32 noundef 2, ptr noundef nonnull %72, ptr noundef %92, ptr noundef %93, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #9
  br label %169

95:                                               ; preds = %89
  %96 = load ptr, ptr %47, align 8, !tbaa !5
  %97 = load i16, ptr %48, align 2, !tbaa !5
  tail call void @AppendToFile(ptr noundef %96, i16 noundef zeroext %97, ptr noundef nonnull %49, ptr noundef nonnull %50) #9
  %98 = load ptr, ptr %47, align 8, !tbaa !5
  %99 = tail call i32 @DisposeObject(ptr noundef %98) #9
  store ptr null, ptr %47, align 8, !tbaa !5
  store i8 2, ptr %46, align 1, !tbaa !5
  br label %100

100:                                              ; preds = %89, %95
  %101 = load i8, ptr %72, align 8, !tbaa !5
  %102 = add i8 %101, -11
  %103 = icmp ult i8 %102, 2
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 4
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100, %104
  %109 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %110 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef %109) #9
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi ptr [ %110, %108 ], [ %57, %104 ]
  %113 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %114 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 4
  %115 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 1
  %116 = load i16, ptr %48, align 2, !tbaa !5
  %117 = load i32, ptr %49, align 4, !tbaa !5
  %118 = sext i32 %117 to i64
  %119 = load i32, ptr %50, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %113, i32 noundef 0, ptr noundef %35, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull @.str.41, i16 noundef zeroext %116, i64 noundef %118, i32 noundef %119, i32 noundef 1) #9
  br label %169

120:                                              ; preds = %71
  %121 = icmp slt i32 %53, 5
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = tail call ptr @SymName(ptr noundef %35) #9
  %124 = tail call ptr @SymName(ptr noundef %35) #9
  %125 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 19, ptr noundef nonnull @.str.52, i32 noundef 2, ptr noundef nonnull %72, ptr noundef %123, ptr noundef %124, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #9
  br label %132

126:                                              ; preds = %120
  %127 = icmp eq i32 %53, 5
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %130 = tail call ptr @SymName(ptr noundef %35) #9
  %131 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 20, ptr noundef nonnull @.str.53, i32 noundef 2, ptr noundef %129, ptr noundef %130, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #9
  br label %132

132:                                              ; preds = %126, %128, %122
  %133 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %134 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %135 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 4
  %136 = getelementptr inbounds i8, ptr %57, i64 50
  %137 = load i16, ptr %136, align 2, !tbaa !5
  %138 = getelementptr inbounds i8, ptr %57, i64 52
  %139 = load i32, ptr %138, align 4, !tbaa !5
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 3, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %133, i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.36, ptr noundef %134, ptr noundef nonnull %135, i16 noundef zeroext %137, i64 noundef %140, i32 noundef %142, i32 noundef 0) #9
  %143 = add nsw i32 %53, 1
  br label %169

144:                                              ; preds = %71
  %145 = load ptr, ptr %45, align 8, !tbaa !5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = tail call ptr @SymName(ptr noundef %35) #9
  %149 = tail call ptr @SymName(ptr noundef %35) #9
  %150 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 10, i32 noundef 21, ptr noundef nonnull @.str.55, i32 noundef 2, ptr noundef nonnull %72, ptr noundef %148, ptr noundef %149, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #9
  %151 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %152 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef %151) #9
  store ptr %152, ptr %45, align 8, !tbaa !5
  br label %153

153:                                              ; preds = %147, %144
  %154 = phi ptr [ %152, %147 ], [ %145, %144 ]
  %155 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %156 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 4
  %157 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %158 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 4
  %159 = getelementptr inbounds i8, ptr %57, i64 50
  %160 = load i16, ptr %159, align 2, !tbaa !5
  %161 = getelementptr inbounds i8, ptr %57, i64 52
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 3, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !5
  tail call void @DbInsert(ptr noundef %155, i32 noundef 1, ptr noundef %35, ptr noundef nonnull %156, ptr noundef %157, ptr noundef nonnull %158, i16 noundef zeroext %160, i64 noundef %163, i32 noundef %165, i32 noundef 0) #9
  br label %169

166:                                              ; preds = %71
  %167 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %168 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %167, ptr noundef nonnull @.str.56) #9
  br label %169

169:                                              ; preds = %87, %91, %111, %132, %153, %166
  %170 = phi i32 [ %53, %166 ], [ %53, %153 ], [ %143, %132 ], [ %53, %91 ], [ %53, %111 ], [ %88, %87 ]
  %171 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = icmp eq ptr %172, %29
  br i1 %173, label %19, label %51

174:                                              ; preds = %19, %15, %12
  store i64 0, ptr %5, align 8, !tbaa !16
  %175 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  %176 = call i32 @DbRetrieveNext(ptr noundef %175, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %201, label %178

178:                                              ; preds = %174, %197
  %179 = load i32, ptr %2, align 4, !tbaa !8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load i16, ptr %3, align 2, !tbaa !15
  %183 = call ptr @FileName(i16 noundef zeroext %182) #9
  %184 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %183) #9
  %185 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #10
  %186 = add i64 %185, -3
  %187 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %186
  store i8 0, ptr %187, align 1
  %188 = call zeroext i16 @FileNum(ptr noundef nonnull %7, ptr noundef nonnull @.str.3) #9
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %181
  %191 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  %192 = load ptr, ptr %1, align 8, !tbaa !10
  %193 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %194 = load i16, ptr %3, align 2, !tbaa !15
  %195 = load i64, ptr %4, align 8, !tbaa !16
  %196 = load i32, ptr %6, align 4, !tbaa !8
  call void @DbInsert(ptr noundef %191, i32 noundef 0, ptr noundef %192, ptr noundef nonnull %9, ptr noundef %193, ptr noundef nonnull %8, i16 noundef zeroext %194, i64 noundef %195, i32 noundef %196, i32 noundef 0) #9
  br label %197

197:                                              ; preds = %181, %190, %178
  %198 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  %199 = call i32 @DbRetrieveNext(ptr noundef %198, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %178

201:                                              ; preds = %197, %174
  %202 = load ptr, ptr @OldCrossDb, align 8, !tbaa !10
  call void @DbClose(ptr noundef %202) #9
  %203 = load ptr, ptr @NewCrossDb, align 8, !tbaa !10
  call void @DbConvert(ptr noundef %203, i32 noundef 1) #9
  br label %204

204:                                              ; preds = %0, %201
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  ret void
}

declare i32 @DbRetrieveNext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @FileNum(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DbClose(ptr noundef) local_unnamed_addr #2

declare void @DbConvert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 2}
!13 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !9, i64 4, !9, i64 6}
!14 = !{!"short", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !9, i64 0}
!19 = !{!"", !9, i64 0, !9, i64 4, !6, i64 8}
!20 = !{!21, !11, i64 8}
!21 = !{!"crossref_rec", !11, i64 0, !11, i64 8, !14, i64 16, !9, i64 20}
!22 = !{!21, !14, i64 16}
!23 = !{!21, !9, i64 20}
!24 = !{!19, !9, i64 4}
!25 = !{!21, !11, i64 0}

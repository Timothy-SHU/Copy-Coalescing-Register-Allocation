; ModuleID = 'src/z08.c'
source_filename = "src/z08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.12 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }

@ReplaceWithTidy.buff = internal global [512 x i8] zeroinitializer, align 16
@ReplaceWithTidy.buff_len = internal unnamed_addr global i32 0, align 4
@ReplaceWithTidy.buff_pos = internal global %struct.FILE_POS zeroinitializer, align 4
@ReplaceWithTidy.buff_typ = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Manifest.depth = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"maximum depth of symbol expansion (%d) reached\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Manifest/ENV_OBJ: res_env!\00", align 1
@nbt = internal global [2 x ptr] zeroinitializer, align 16
@nft = internal global [2 x ptr] zeroinitializer, align 16
@ntarget = internal global ptr null, align 8
@nenclose = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Manifest: CROSS child!\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Manifest/CROSS: type(x)!\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Manifest: ACAT!\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Manifest ACAT: GAP_OBJ is first!\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Manifest ACAT: no GAP_OBJ!\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Manifest ACAT: GAP_OBJ is last!\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Manifest ACAT: double GAP_OBJ!\00", align 1
@LanguageSentenceEnds = external local_unnamed_addr global [0 x i32], align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"Manifest: unexpected space_style!\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Manifest/ACAT: underline(prev)!\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Manifest/ACAT: underline(y)!\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"word %s%s is too long\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"replacing invalid left parameter of %s by 2i\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"replacing invalid left parameter of %s by +0i\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"replacing invalid left parameter of %s by 0d\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"%s not expected here\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@xx_res = external local_unnamed_addr global ptr, align 8
@xx_hold = external local_unnamed_addr global ptr, align 8
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [44 x i8] c"%s dropped (parameter is not a simple word)\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"%s dropped (no current font at this point)\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"%s dropped (character %s unknown in font %s)\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"no current language at this point, using %s\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"no current font at this point, using %s\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%dp\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Manifest: FONT!\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Manifest: UNDERLINE!\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Manifest: COMMON!\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"object dropped by %s: no suitable insert point\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"%s ignored: no choices in right parameter\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Manifest/NEXT: Down(x) == x!\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"invalid left parameter of %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"%s deleted (invalid right parameter)\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Manifest:\00", align 1
@GalleySym = external local_unnamed_addr global ptr, align 8
@ForceGalleySym = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [34 x i8] c"Manifest/CLOSURE: type(y) != PAR!\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"this %s is not a sequence of one or more words\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"Manifest: prntenv!\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"ManifestCl/filtered: type(sym)!\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"ManifestCl filter-encl!\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"filter parameter of %s symbol is not simple\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"ReplaceWithSplit: type(x) already SPLIT!\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Manifest/VCAT: less than two children!\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"Manifest/VCAT: type(g) != GAP_OBJECT!\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Manifest/VCAT: GAP_OBJ has no child!\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"Manifest/VCAT: GAP_OBJ is last child!\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"Manifest: bt[par] no children!\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Manifest:last_ft!\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Manifest: ft[par] child!\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Manifest: lthread == rthread!\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"replacing invalid scale factor by 1.0\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"replacing invalid scale factor %s by 1.0\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"replacing undersized scale factor %s by 1.0\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"replacing oversized scale factor %s by 1.0\00", align 1
@.str.69 = private unnamed_addr constant [42 x i8] c"%s deleted (right parameter is malformed)\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"%s expected here\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"replacing unknown %s option %s by %s\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"%s deleted (choice %s unknown)\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Manifest TAGGED: children!\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"left parameter of %s is not a cross reference\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"left parameter of %s must be a symbol\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"symbol %s not allowed here (it has no %s)\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"foll_or_prec\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"%s, %s or %s expected in left parameter of %s\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"right parameter of %s must be a simple word\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ReplaceWithTidy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i8 %4, 17
  br i1 %5, label %6, label %435

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %106, label %10

10:                                               ; preds = %6, %99
  %11 = phi ptr [ %102, %99 ], [ %8, %6 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %15, %12 ], [ %11, %10 ]
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !5
  switch i8 %17, label %99 [
    i8 0, label %12
    i8 17, label %18
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, %15
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %27, ptr noundef nonnull @.str.1) #9
  br label %29

29:                                               ; preds = %26, %22
  store ptr %20, ptr @zz_res, align 8, !tbaa !8
  store ptr %15, ptr @zz_hold, align 8, !tbaa !8
  %30 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %30, ptr @zz_tmp, align 8, !tbaa !8
  %31 = load ptr, ptr %20, align 8, !tbaa !5
  store ptr %31, ptr %15, align 8, !tbaa !5
  %32 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %33 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.LIST, ptr %34, i64 0, i32 1
  store ptr %32, ptr %35, align 8, !tbaa !5
  %36 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %36, ptr %33, align 8, !tbaa !5
  %37 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %38 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !5
  store ptr %20, ptr @zz_res, align 8, !tbaa !8
  store ptr %11, ptr @zz_hold, align 8, !tbaa !8
  %39 = icmp eq ptr %11, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %41, ptr @zz_tmp, align 8, !tbaa !8
  %42 = load ptr, ptr %20, align 8, !tbaa !5
  store ptr %42, ptr %11, align 8, !tbaa !5
  %43 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %44 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !5
  %47 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %47, ptr %44, align 8, !tbaa !5
  %48 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %49 = getelementptr inbounds %struct.LIST, ptr %47, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !5
  br label %50

50:                                               ; preds = %29, %40, %18
  store ptr %11, ptr @xx_link, align 8, !tbaa !8
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = icmp eq ptr %52, %11
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  store ptr %52, ptr @zz_res, align 8, !tbaa !8
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1
  store ptr %56, ptr %57, align 8, !tbaa !5
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1, i32 1
  store ptr %52, ptr %58, align 8, !tbaa !5
  store ptr %11, ptr %51, align 8, !tbaa !5
  store ptr %11, ptr %55, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %50, %54
  %60 = phi ptr [ %52, %54 ], [ null, %50 ]
  store ptr %60, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %11, ptr @zz_hold, align 8, !tbaa !8
  %61 = getelementptr inbounds %struct.LIST, ptr %11, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = icmp eq ptr %62, %11
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  store ptr %62, ptr @zz_res, align 8, !tbaa !8
  %65 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %65, ptr %62, align 8, !tbaa !5
  %66 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %67 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  store ptr %66, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.LIST, ptr %67, i64 0, i32 1
  store ptr %67, ptr %70, align 8, !tbaa !5
  store ptr %67, ptr %67, align 8, !tbaa !5
  %71 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %72

72:                                               ; preds = %59, %64
  %73 = phi ptr [ %11, %59 ], [ %71, %64 ]
  store ptr %73, ptr @zz_hold, align 8, !tbaa !8
  %74 = getelementptr inbounds %struct.word_type, ptr %73, i64 0, i32 1
  %75 = load i8, ptr %74, align 8, !tbaa !5
  %76 = add i8 %75, -11
  %77 = icmp ult i8 %76, 2
  %78 = getelementptr inbounds %struct.word_type, ptr %73, i64 0, i32 1, i32 0, i32 1
  %79 = zext i8 %75 to i64
  %80 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %79
  %81 = select i1 %77, ptr %78, ptr %80
  %82 = load i8, ptr %81, align 1, !tbaa !5
  %83 = zext i8 %82 to i32
  store i32 %83, ptr @zz_size, align 4, !tbaa !10
  %84 = zext i8 %82 to i64
  %85 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !8
  store ptr %86, ptr %73, align 8, !tbaa !5
  %87 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %88 = load i32, ptr @zz_size, align 4, !tbaa !10
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %89
  store ptr %87, ptr %90, align 8, !tbaa !8
  %91 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %91, i64 0, i64 1, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = icmp eq ptr %93, %91
  br i1 %94, label %95, label %97

95:                                               ; preds = %72
  %96 = tail call i32 @DisposeObject(ptr noundef nonnull %91) #9
  br label %97

97:                                               ; preds = %95, %72
  %98 = load ptr, ptr %20, align 8, !tbaa !5
  br label %99

99:                                               ; preds = %12, %97
  %100 = phi ptr [ %98, %97 ], [ %11, %12 ]
  %101 = getelementptr inbounds %struct.LIST, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %104, label %10

104:                                              ; preds = %99
  %105 = load ptr, ptr %7, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %104, %6
  %107 = phi ptr [ %105, %104 ], [ %0, %6 ]
  store i32 0, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  store i32 11, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  %108 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %109 = load i16, ptr %108, align 2, !tbaa !5
  store i16 %109, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 2), align 2, !tbaa !12
  %110 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 3), align 4
  %112 = icmp eq ptr %107, %0
  br i1 %112, label %368, label %113

113:                                              ; preds = %106
  %114 = icmp eq i32 %1, 0
  br i1 %114, label %115, label %276

115:                                              ; preds = %113, %271
  %116 = phi ptr [ %274, %271 ], [ %107, %113 ]
  %117 = phi ptr [ %272, %271 ], [ null, %113 ]
  br label %118

118:                                              ; preds = %118, %115
  %119 = phi ptr [ %121, %118 ], [ %116, %115 ]
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1
  %123 = load i8, ptr %122, align 8, !tbaa !5
  switch i8 %123, label %362 [
    i8 0, label %118
    i8 11, label %245
    i8 12, label %245
    i8 1, label %124
  ]

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.LIST, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, %121
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %121, i64 41
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i32
  %132 = getelementptr inbounds i8, ptr %121, i64 42
  %133 = load i8, ptr %132, align 2, !tbaa !5
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %271, label %137

137:                                              ; preds = %128, %124
  %138 = load i32, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  %139 = tail call ptr @MakeWord(i32 noundef %138, ptr noundef nonnull @ReplaceWithTidy.buff, ptr noundef nonnull @ReplaceWithTidy.buff_pos) #9
  store i32 0, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  store i32 11, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  %140 = icmp eq ptr %117, null
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %143 = zext i8 %142 to i32
  store i32 %143, ptr @zz_size, align 4, !tbaa !10
  %144 = zext i8 %142 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %141
  store ptr %146, ptr @zz_hold, align 8, !tbaa !8
  %149 = load ptr, ptr %146, align 8, !tbaa !5
  store ptr %149, ptr %145, align 8, !tbaa !8
  br label %153

150:                                              ; preds = %141
  %151 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %152 = tail call ptr @GetMemory(i32 noundef %143, ptr noundef %151) #9
  store ptr %152, ptr @zz_hold, align 8, !tbaa !8
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi ptr [ %152, %150 ], [ %146, %148 ]
  %155 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1
  store i8 17, ptr %155, align 8, !tbaa !5
  %156 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1, i32 1
  store ptr %154, ptr %156, align 8, !tbaa !5
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1
  store ptr %154, ptr %157, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  store ptr %154, ptr %158, align 8, !tbaa !5
  store ptr %154, ptr %154, align 8, !tbaa !5
  %159 = load i16, ptr %108, align 2, !tbaa !5
  %160 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1, i32 0, i32 2
  store i16 %159, ptr %160, align 2, !tbaa !5
  %161 = load i32, ptr %110, align 4
  %162 = and i32 %161, 1048575
  %163 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, -1048576
  %166 = or disjoint i32 %165, %162
  store i32 %166, ptr %163, align 4
  %167 = load i32, ptr %110, align 4
  %168 = and i32 %167, -1048576
  %169 = or disjoint i32 %168, %162
  store i32 %169, ptr %163, align 4
  br label %170

170:                                              ; preds = %153, %137
  %171 = phi ptr [ %154, %153 ], [ %117, %137 ]
  %172 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %173 = zext i8 %172 to i32
  store i32 %173, ptr @zz_size, align 4, !tbaa !10
  %174 = zext i8 %172 to i64
  %175 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %170
  store ptr %176, ptr @zz_hold, align 8, !tbaa !8
  %179 = load ptr, ptr %176, align 8, !tbaa !5
  store ptr %179, ptr %175, align 8, !tbaa !8
  br label %183

180:                                              ; preds = %170
  %181 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %182 = tail call ptr @GetMemory(i32 noundef %173, ptr noundef %181) #9
  br label %183

183:                                              ; preds = %180, %178
  %184 = phi ptr [ %182, %180 ], [ %176, %178 ]
  %185 = getelementptr inbounds %struct.word_type, ptr %184, i64 0, i32 1
  store i8 0, ptr %185, align 8, !tbaa !5
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1, i32 1
  store ptr %184, ptr %186, align 8, !tbaa !5
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  store ptr %184, ptr %187, align 8, !tbaa !5
  %188 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %184, ptr %188, align 8, !tbaa !5
  store ptr %184, ptr %184, align 8, !tbaa !5
  store ptr %184, ptr @xx_link, align 8, !tbaa !8
  store ptr %184, ptr @zz_res, align 8, !tbaa !8
  store ptr %171, ptr @zz_hold, align 8, !tbaa !8
  %189 = load ptr, ptr %171, align 8, !tbaa !5
  store ptr %189, ptr @zz_tmp, align 8, !tbaa !8
  %190 = load ptr, ptr %184, align 8, !tbaa !5
  store ptr %190, ptr %171, align 8, !tbaa !5
  %191 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %192 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = getelementptr inbounds %struct.LIST, ptr %193, i64 0, i32 1
  store ptr %191, ptr %194, align 8, !tbaa !5
  %195 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %195, ptr %192, align 8, !tbaa !5
  %196 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %197 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !5
  %198 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %198, ptr @zz_res, align 8, !tbaa !8
  store ptr %139, ptr @zz_hold, align 8, !tbaa !8
  %199 = icmp eq ptr %139, null
  %200 = icmp eq ptr %198, null
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %209, label %202

202:                                              ; preds = %183
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %139, i64 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  store ptr %204, ptr @zz_tmp, align 8, !tbaa !8
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !5
  store ptr %206, ptr %203, align 8, !tbaa !5
  %207 = getelementptr inbounds [2 x %struct.LIST], ptr %206, i64 0, i64 1, i32 1
  store ptr %139, ptr %207, align 8, !tbaa !5
  store ptr %204, ptr %205, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %204, i64 0, i64 1, i32 1
  store ptr %198, ptr %208, align 8, !tbaa !5
  br label %209

209:                                              ; preds = %202, %183
  %210 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  store i32 %211, ptr @zz_size, align 4, !tbaa !10
  %212 = zext i8 %210 to i64
  %213 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %209
  store ptr %214, ptr @zz_hold, align 8, !tbaa !8
  %217 = load ptr, ptr %214, align 8, !tbaa !5
  store ptr %217, ptr %213, align 8, !tbaa !8
  br label %221

218:                                              ; preds = %209
  %219 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %220 = tail call ptr @GetMemory(i32 noundef %211, ptr noundef %219) #9
  br label %221

221:                                              ; preds = %218, %216
  %222 = phi ptr [ %220, %218 ], [ %214, %216 ]
  %223 = getelementptr inbounds %struct.word_type, ptr %222, i64 0, i32 1
  store i8 0, ptr %223, align 8, !tbaa !5
  %224 = getelementptr inbounds [2 x %struct.LIST], ptr %222, i64 0, i64 1, i32 1
  store ptr %222, ptr %224, align 8, !tbaa !5
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %222, i64 0, i64 1
  store ptr %222, ptr %225, align 8, !tbaa !5
  %226 = getelementptr inbounds %struct.LIST, ptr %222, i64 0, i32 1
  store ptr %222, ptr %226, align 8, !tbaa !5
  store ptr %222, ptr %222, align 8, !tbaa !5
  store ptr %222, ptr @xx_link, align 8, !tbaa !8
  store ptr %222, ptr @zz_res, align 8, !tbaa !8
  store ptr %171, ptr @zz_hold, align 8, !tbaa !8
  %227 = load ptr, ptr %171, align 8, !tbaa !5
  store ptr %227, ptr @zz_tmp, align 8, !tbaa !8
  %228 = load ptr, ptr %222, align 8, !tbaa !5
  store ptr %228, ptr %171, align 8, !tbaa !5
  %229 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %230 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  %232 = getelementptr inbounds %struct.LIST, ptr %231, i64 0, i32 1
  store ptr %229, ptr %232, align 8, !tbaa !5
  %233 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %233, ptr %230, align 8, !tbaa !5
  %234 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %235 = getelementptr inbounds %struct.LIST, ptr %233, i64 0, i32 1
  store ptr %234, ptr %235, align 8, !tbaa !5
  %236 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %236, ptr @zz_res, align 8, !tbaa !8
  store ptr %121, ptr @zz_hold, align 8, !tbaa !8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %271, label %238

238:                                              ; preds = %221
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %240, ptr @zz_tmp, align 8, !tbaa !8
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  store ptr %242, ptr %239, align 8, !tbaa !5
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1, i32 1
  store ptr %121, ptr %243, align 8, !tbaa !5
  store ptr %240, ptr %241, align 8, !tbaa !5
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1, i32 1
  store ptr %236, ptr %244, align 8, !tbaa !5
  br label %271

245:                                              ; preds = %118, %118
  %246 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1
  %247 = load i32, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 4
  %250 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %249) #10
  %251 = add i64 %250, %248
  %252 = icmp ugt i64 %251, 511
  br i1 %252, label %269, label %253

253:                                              ; preds = %245
  %254 = icmp eq i32 %247, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1, i32 0, i32 2
  %257 = load i16, ptr %256, align 2, !tbaa !5
  store i16 %257, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 2), align 2, !tbaa !12
  %258 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1, i32 0, i32 3
  %259 = load i32, ptr %258, align 4
  store i32 %259, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 3), align 4
  br label %260

260:                                              ; preds = %255, %253
  %261 = getelementptr inbounds [512 x i8], ptr @ReplaceWithTidy.buff, i64 0, i64 %248
  %262 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %261, ptr noundef nonnull dereferenceable(1) %249) #9
  %263 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %249) #10
  %264 = trunc i64 %263 to i32
  %265 = add i32 %247, %264
  store i32 %265, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  %266 = load i8, ptr %246, align 8, !tbaa !5
  %267 = icmp eq i8 %266, 12
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  store i32 12, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  br label %271

269:                                              ; preds = %245
  %270 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %246) #9
  br label %271

271:                                              ; preds = %269, %268, %260, %238, %221, %128
  %272 = phi ptr [ %117, %269 ], [ %117, %268 ], [ %117, %260 ], [ %171, %238 ], [ %117, %128 ], [ %171, %221 ]
  %273 = getelementptr inbounds %struct.LIST, ptr %116, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !5
  %275 = icmp eq ptr %274, %0
  br i1 %275, label %371, label %115

276:                                              ; preds = %113, %364
  %277 = phi ptr [ %366, %364 ], [ %107, %113 ]
  br label %278

278:                                              ; preds = %276, %278
  %279 = phi ptr [ %281, %278 ], [ %277, %276 ]
  %280 = getelementptr inbounds [2 x %struct.LIST], ptr %279, i64 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  %282 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 1
  %283 = load i8, ptr %282, align 8, !tbaa !5
  switch i8 %283, label %435 [
    i8 0, label %278
    i8 11, label %284
    i8 12, label %284
    i8 1, label %310
  ]

284:                                              ; preds = %278, %278
  %285 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 1
  %286 = load i32, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 4
  %289 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %288) #10
  %290 = add i64 %289, %287
  %291 = icmp ugt i64 %290, 511
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %285) #9
  br label %364

294:                                              ; preds = %284
  %295 = icmp eq i32 %286, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %294
  %297 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 1, i32 0, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !5
  store i16 %298, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 2), align 2, !tbaa !12
  %299 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 1, i32 0, i32 3
  %300 = load i32, ptr %299, align 4
  store i32 %300, ptr getelementptr inbounds (%struct.FILE_POS, ptr @ReplaceWithTidy.buff_pos, i64 0, i32 3), align 4
  br label %301

301:                                              ; preds = %296, %294
  %302 = getelementptr inbounds [512 x i8], ptr @ReplaceWithTidy.buff, i64 0, i64 %287
  %303 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %302, ptr noundef nonnull dereferenceable(1) %288) #9
  %304 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %288) #10
  %305 = trunc i64 %304 to i32
  %306 = add i32 %286, %305
  store i32 %306, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  %307 = load i8, ptr %285, align 8, !tbaa !5
  %308 = icmp eq i8 %307, 12
  br i1 %308, label %309, label %364

309:                                              ; preds = %301
  store i32 12, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  br label %364

310:                                              ; preds = %278
  %311 = getelementptr inbounds %struct.word_type, ptr %281, i64 0, i32 1
  %312 = getelementptr inbounds %struct.LIST, ptr %281, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !5
  %314 = icmp eq ptr %313, %281
  %315 = getelementptr inbounds i8, ptr %281, i64 41
  %316 = load i8, ptr %315, align 1, !tbaa !5
  br i1 %314, label %322, label %317

317:                                              ; preds = %310
  %318 = getelementptr inbounds i8, ptr %281, i64 42
  %319 = load i8, ptr %318, align 2, !tbaa !5
  %320 = zext i8 %316 to i32
  %321 = zext i8 %319 to i32
  br label %329

322:                                              ; preds = %310
  %323 = zext i8 %316 to i32
  %324 = getelementptr inbounds i8, ptr %281, i64 42
  %325 = load i8, ptr %324, align 2, !tbaa !5
  %326 = zext i8 %325 to i32
  %327 = sub nsw i32 0, %326
  %328 = icmp eq i32 %323, %327
  br i1 %328, label %364, label %329

329:                                              ; preds = %317, %322
  %330 = phi i32 [ %321, %317 ], [ %326, %322 ]
  %331 = phi i32 [ %320, %317 ], [ %323, %322 ]
  %332 = load i32, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  %333 = getelementptr inbounds i8, ptr %281, i64 41
  %334 = add nsw i32 %332, %331
  %335 = getelementptr inbounds i8, ptr %281, i64 42
  %336 = add nsw i32 %334, %330
  %337 = icmp sgt i32 %336, 511
  br i1 %337, label %345, label %338

338:                                              ; preds = %329
  %339 = load i8, ptr %335, align 2, !tbaa !5
  %340 = zext i8 %339 to i32
  %341 = sub nsw i32 0, %331
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %361, label %343

343:                                              ; preds = %338
  %344 = sext i32 %332 to i64
  br label %347

345:                                              ; preds = %329
  %346 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %311) #9
  br label %364

347:                                              ; preds = %343, %347
  %348 = phi i64 [ %344, %343 ], [ %351, %347 ]
  %349 = phi i32 [ 0, %343 ], [ %352, %347 ]
  %350 = getelementptr inbounds [512 x i8], ptr @ReplaceWithTidy.buff, i64 0, i64 %348
  store i16 32, ptr %350, align 1
  %351 = add nsw i64 %348, 1
  %352 = add nuw nsw i32 %349, 1
  %353 = load i8, ptr %333, align 1, !tbaa !5
  %354 = zext i8 %353 to i32
  %355 = load i8, ptr %335, align 2, !tbaa !5
  %356 = zext i8 %355 to i32
  %357 = add nuw nsw i32 %356, %354
  %358 = icmp ult i32 %352, %357
  br i1 %358, label %347, label %359

359:                                              ; preds = %347
  %360 = trunc i64 %351 to i32
  store i32 %360, ptr @ReplaceWithTidy.buff_len, align 4, !tbaa !10
  br label %361

361:                                              ; preds = %359, %338
  store i32 12, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  br label %364

362:                                              ; preds = %118
  %363 = icmp eq ptr %117, null
  br i1 %363, label %435, label %431

364:                                              ; preds = %301, %309, %292, %322, %345, %361
  %365 = getelementptr inbounds %struct.LIST, ptr %277, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !5
  %367 = icmp eq ptr %366, %0
  br i1 %367, label %368, label %276

368:                                              ; preds = %364, %106
  %369 = load i32, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  %370 = tail call ptr @MakeWord(i32 noundef %369, ptr noundef nonnull @ReplaceWithTidy.buff, ptr noundef nonnull @ReplaceWithTidy.buff_pos) #9
  br label %413

371:                                              ; preds = %271
  %372 = load i32, ptr @ReplaceWithTidy.buff_typ, align 4, !tbaa !10
  %373 = tail call ptr @MakeWord(i32 noundef %372, ptr noundef nonnull @ReplaceWithTidy.buff, ptr noundef nonnull @ReplaceWithTidy.buff_pos) #9
  %374 = icmp eq ptr %272, null
  br i1 %374, label %413, label %375

375:                                              ; preds = %371
  %376 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %377 = zext i8 %376 to i32
  store i32 %377, ptr @zz_size, align 4, !tbaa !10
  %378 = zext i8 %376 to i64
  %379 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %375
  %383 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %384 = tail call ptr @GetMemory(i32 noundef %377, ptr noundef %383) #9
  br label %387

385:                                              ; preds = %375
  store ptr %380, ptr @zz_hold, align 8, !tbaa !8
  %386 = load ptr, ptr %380, align 8, !tbaa !5
  store ptr %386, ptr %379, align 8, !tbaa !8
  br label %387

387:                                              ; preds = %382, %385
  %388 = phi ptr [ %384, %382 ], [ %380, %385 ]
  %389 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 1
  store i8 0, ptr %389, align 8, !tbaa !5
  %390 = getelementptr inbounds [2 x %struct.LIST], ptr %388, i64 0, i64 1, i32 1
  store ptr %388, ptr %390, align 8, !tbaa !5
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %388, i64 0, i64 1
  store ptr %388, ptr %391, align 8, !tbaa !5
  %392 = getelementptr inbounds %struct.LIST, ptr %388, i64 0, i32 1
  store ptr %388, ptr %392, align 8, !tbaa !5
  store ptr %388, ptr %388, align 8, !tbaa !5
  store ptr %388, ptr @xx_link, align 8, !tbaa !8
  store ptr %388, ptr @zz_res, align 8, !tbaa !8
  store ptr %272, ptr @zz_hold, align 8, !tbaa !8
  %393 = load ptr, ptr %272, align 8, !tbaa !5
  store ptr %393, ptr @zz_tmp, align 8, !tbaa !8
  %394 = load ptr, ptr %388, align 8, !tbaa !5
  store ptr %394, ptr %272, align 8, !tbaa !5
  %395 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %396 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %397 = load ptr, ptr %396, align 8, !tbaa !5
  %398 = getelementptr inbounds %struct.LIST, ptr %397, i64 0, i32 1
  store ptr %395, ptr %398, align 8, !tbaa !5
  %399 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %399, ptr %396, align 8, !tbaa !5
  %400 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %401 = getelementptr inbounds %struct.LIST, ptr %399, i64 0, i32 1
  store ptr %400, ptr %401, align 8, !tbaa !5
  %402 = load ptr, ptr @xx_link, align 8, !tbaa !8
  %403 = icmp eq ptr %373, null
  %404 = icmp eq ptr %402, null
  %405 = select i1 %403, i1 true, i1 %404
  br i1 %405, label %413, label %406

406:                                              ; preds = %387
  %407 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !5
  store ptr %408, ptr @zz_tmp, align 8, !tbaa !8
  %409 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !5
  store ptr %410, ptr %407, align 8, !tbaa !5
  %411 = getelementptr inbounds [2 x %struct.LIST], ptr %410, i64 0, i64 1, i32 1
  store ptr %373, ptr %411, align 8, !tbaa !5
  store ptr %408, ptr %409, align 8, !tbaa !5
  %412 = getelementptr inbounds [2 x %struct.LIST], ptr %408, i64 0, i64 1, i32 1
  store ptr %402, ptr %412, align 8, !tbaa !5
  br label %413

413:                                              ; preds = %368, %387, %371, %406
  %414 = phi ptr [ %272, %406 ], [ %373, %371 ], [ %272, %387 ], [ %370, %368 ]
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !5
  %417 = icmp eq ptr %416, %0
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %414, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %431

419:                                              ; preds = %413
  %420 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %421 = load ptr, ptr %420, align 8, !tbaa !5
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1
  store ptr %421, ptr %422, align 8, !tbaa !5
  %423 = getelementptr inbounds [2 x %struct.LIST], ptr %421, i64 0, i64 1, i32 1
  store ptr %416, ptr %423, align 8, !tbaa !5
  store ptr %0, ptr %415, align 8, !tbaa !5
  store ptr %0, ptr %420, align 8, !tbaa !5
  store ptr %416, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %414, ptr @zz_res, align 8, !tbaa !8
  store ptr %416, ptr @zz_hold, align 8, !tbaa !8
  %424 = icmp eq ptr %414, null
  br i1 %424, label %431, label %425

425:                                              ; preds = %419
  %426 = load ptr, ptr %422, align 8, !tbaa !5
  store ptr %426, ptr @zz_tmp, align 8, !tbaa !8
  %427 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  store ptr %428, ptr %422, align 8, !tbaa !5
  %429 = getelementptr inbounds [2 x %struct.LIST], ptr %428, i64 0, i64 1, i32 1
  store ptr %416, ptr %429, align 8, !tbaa !5
  store ptr %426, ptr %427, align 8, !tbaa !5
  %430 = getelementptr inbounds [2 x %struct.LIST], ptr %426, i64 0, i64 1, i32 1
  store ptr %414, ptr %430, align 8, !tbaa !5
  br label %431

431:                                              ; preds = %425, %419, %418, %362
  %432 = phi ptr [ %117, %362 ], [ %0, %418 ], [ %0, %419 ], [ %0, %425 ]
  %433 = phi ptr [ %0, %362 ], [ %414, %418 ], [ %414, %419 ], [ %414, %425 ]
  %434 = tail call i32 @DisposeObject(ptr noundef nonnull %432) #9
  br label %435

435:                                              ; preds = %278, %431, %2, %362
  %436 = phi ptr [ %0, %362 ], [ %0, %2 ], [ %433, %431 ], [ %0, %278 ]
  ret ptr %436
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Manifest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [2 x ptr], align 16
  %13 = alloca [2 x ptr], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.STYLE, align 4
  %16 = alloca [2 x ptr], align 16
  %17 = alloca [2 x ptr], align 16
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.GAP, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.STYLE, align 4
  %26 = alloca i32, align 4
  %27 = alloca [20 x i8], align 16
  %28 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #9
  %29 = load i32, ptr @Manifest.depth, align 4, !tbaa !10
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr @Manifest.depth, align 4, !tbaa !10
  %31 = icmp eq i32 %30, 1000
  br i1 %31, label %32, label %35

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %34 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 40, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %33, i32 noundef 1000) #9
  br label %35

35:                                               ; preds = %32, %11
  %36 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  switch i8 %37, label %5672 [
    i8 81, label %38
    i8 2, label %80
    i8 4, label %82
    i8 5, label %110
    i8 6, label %244
    i8 7, label %244
    i8 11, label %410
    i8 12, label %410
    i8 17, label %551
    i8 18, label %1353
    i8 19, label %1353
    i8 26, label %2136
    i8 27, label %2136
    i8 28, label %2219
    i8 29, label %2219
    i8 36, label %2301
    i8 37, label %2301
    i8 38, label %2301
    i8 39, label %2301
    i8 40, label %2301
    i8 41, label %2301
    i8 24, label %2301
    i8 25, label %2301
    i8 20, label %2351
    i8 22, label %2351
    i8 21, label %2375
    i8 23, label %2375
    i8 45, label %2418
    i8 46, label %2418
    i8 50, label %2434
    i8 51, label %2543
    i8 44, label %2580
    i8 42, label %2580
    i8 43, label %2580
    i8 30, label %2580
    i8 31, label %2580
    i8 32, label %2580
    i8 33, label %2580
    i8 34, label %2607
    i8 35, label %2741
    i8 55, label %2778
    i8 54, label %2780
    i8 53, label %2780
    i8 52, label %2896
    i8 56, label %2898
    i8 58, label %2925
    i8 68, label %2996
    i8 69, label %3032
    i8 70, label %3032
    i8 71, label %3072
    i8 72, label %3072
    i8 59, label %3104
    i8 60, label %3104
    i8 61, label %3104
    i8 62, label %3104
    i8 63, label %3104
    i8 65, label %3104
    i8 67, label %3104
    i8 66, label %3329
    i8 47, label %3329
    i8 48, label %3329
    i8 49, label %3329
    i8 64, label %3482
    i8 75, label %3648
    i8 73, label %3648
    i8 74, label %3648
    i8 76, label %4254
    i8 77, label %4428
    i8 78, label %4628
    i8 79, label %4752
    i8 80, label %4752
    i8 92, label %4831
    i8 93, label %5180
    i8 96, label %5182
    i8 97, label %5182
    i8 98, label %5337
    i8 99, label %5337
    i8 94, label %5493
    i8 95, label %5493
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %40, %38 ], [ %44, %41 ]
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %41, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.LIST, ptr %40, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %50, %48 ], [ %54, %51 ]
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.word_type, ptr %54, i64 0, i32 1
  %56 = load i8, ptr %55, align 8, !tbaa !5
  switch i8 %56, label %57 [
    i8 0, label %51
    i8 82, label %60
  ]

57:                                               ; preds = %51
  %58 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %59 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %58, ptr noundef nonnull @.str.5) #9
  br label %60

60:                                               ; preds = %51, %57
  %61 = tail call ptr @Manifest(ptr noundef %44, ptr noundef nonnull %54, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %9, i32 noundef %10)
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %61, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %78

66:                                               ; preds = %60
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1
  store ptr %68, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  store ptr %63, ptr %70, align 8, !tbaa !5
  store ptr %0, ptr %62, align 8, !tbaa !5
  store ptr %0, ptr %67, align 8, !tbaa !5
  store ptr %63, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %61, ptr @zz_res, align 8, !tbaa !8
  store ptr %63, ptr @zz_hold, align 8, !tbaa !8
  %71 = icmp eq ptr %61, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %69, align 8, !tbaa !5
  store ptr %73, ptr @zz_tmp, align 8, !tbaa !8
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  store ptr %75, ptr %69, align 8, !tbaa !5
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %63, ptr %76, align 8, !tbaa !5
  store ptr %73, ptr %74, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1, i32 1
  store ptr %61, ptr %77, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %65, %66, %72
  %79 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  br label %5677

80:                                               ; preds = %35
  %81 = tail call fastcc ptr @ManifestCl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10)
  br label %5677

82:                                               ; preds = %35
  %83 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi ptr [ %84, %82 ], [ %88, %85 ]
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  %90 = load i8, ptr %89, align 8, !tbaa !5
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %85, label %92

92:                                               ; preds = %85
  %93 = tail call ptr @Manifest(ptr noundef nonnull %88, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %94 = tail call ptr @ReplaceWithTidy(ptr noundef %93, i32 noundef 1)
  %95 = getelementptr inbounds ptr, ptr %3, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load ptr, ptr %3, align 8, !tbaa !8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = getelementptr inbounds ptr, ptr %4, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load ptr, ptr %4, align 8, !tbaa !8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %5677, label %108

108:                                              ; preds = %105, %101, %98, %92
  %109 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

110:                                              ; preds = %35
  %111 = load i16, ptr %2, align 4
  %112 = and i16 %111, 128
  %113 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %114 = load i16, ptr %113, align 8
  %115 = and i16 %114, -129
  %116 = or disjoint i16 %115, %112
  store i16 %116, ptr %113, align 8
  %117 = load i16, ptr %2, align 4
  %118 = and i16 %117, 256
  %119 = and i16 %116, -257
  %120 = or disjoint i16 %119, %118
  store i16 %120, ptr %113, align 8
  %121 = load i16, ptr %2, align 4
  %122 = and i16 %121, 512
  %123 = and i16 %120, -513
  %124 = or disjoint i16 %123, %122
  store i16 %124, ptr %113, align 8
  %125 = load i16, ptr %2, align 4
  %126 = and i16 %125, 7168
  %127 = and i16 %124, -7169
  %128 = or disjoint i16 %127, %126
  store i16 %128, ptr %113, align 8
  %129 = load i16, ptr %2, align 4
  %130 = and i16 %129, -8192
  %131 = and i16 %128, 8191
  %132 = or disjoint i16 %131, %130
  store i16 %132, ptr %113, align 8
  %133 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %134 = load i16, ptr %133, align 2, !tbaa !5
  %135 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %134, ptr %135, align 2, !tbaa !5
  %136 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %137 = load i8, ptr %136, align 4
  %138 = and i8 %137, 3
  %139 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, -4
  %142 = or disjoint i8 %141, %138
  store i8 %142, ptr %139, align 4
  %143 = load i8, ptr %136, align 4
  %144 = and i8 %143, 12
  %145 = and i8 %142, -13
  %146 = or disjoint i8 %145, %144
  store i8 %146, ptr %139, align 4
  %147 = load i8, ptr %136, align 4
  %148 = and i8 %147, 112
  %149 = and i8 %146, -113
  %150 = or disjoint i8 %149, %148
  store i8 %150, ptr %139, align 4
  %151 = load i8, ptr %2, align 4
  %152 = and i8 %151, 8
  %153 = trunc i16 %116 to i8
  %154 = and i8 %153, -9
  %155 = or disjoint i8 %154, %152
  store i8 %155, ptr %113, align 8
  %156 = load i16, ptr %136, align 4
  %157 = and i16 %156, 128
  %158 = load i16, ptr %139, align 4
  %159 = and i16 %158, -129
  %160 = or disjoint i16 %159, %157
  store i16 %160, ptr %139, align 4
  %161 = load i16, ptr %136, align 4
  %162 = and i16 %161, 256
  %163 = and i16 %160, -257
  %164 = or disjoint i16 %163, %162
  store i16 %164, ptr %139, align 4
  %165 = load i16, ptr %136, align 4
  %166 = and i16 %165, 512
  %167 = and i16 %164, -513
  %168 = or disjoint i16 %167, %166
  store i16 %168, ptr %139, align 4
  %169 = load i16, ptr %136, align 4
  %170 = and i16 %169, 7168
  %171 = and i16 %168, -7169
  %172 = or disjoint i16 %171, %170
  store i16 %172, ptr %139, align 4
  %173 = load i16, ptr %136, align 4
  %174 = and i16 %173, -8192
  %175 = and i16 %172, 8191
  %176 = or disjoint i16 %175, %174
  store i16 %176, ptr %139, align 4
  %177 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %178 = load i16, ptr %177, align 2, !tbaa !5
  %179 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %178, ptr %179, align 2, !tbaa !5
  %180 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 4095
  %183 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, -4096
  %186 = or disjoint i32 %185, %182
  store i32 %186, ptr %183, align 4
  %187 = load i32, ptr %180, align 4
  %188 = and i32 %187, 4190208
  %189 = and i32 %186, -4190209
  %190 = or disjoint i32 %189, %188
  store i32 %190, ptr %183, align 4
  %191 = load i32, ptr %180, align 4
  %192 = and i32 %191, 12582912
  %193 = and i32 %190, -12582913
  %194 = or disjoint i32 %193, %192
  store i32 %194, ptr %183, align 4
  %195 = load i32, ptr %180, align 4
  %196 = and i32 %195, 1056964608
  %197 = and i32 %194, -1056964609
  %198 = or disjoint i32 %197, %196
  store i32 %198, ptr %183, align 4
  %199 = load i32, ptr %180, align 4
  %200 = and i32 %199, -2147483648
  %201 = and i32 %198, 2147483647
  %202 = or disjoint i32 %201, %200
  store i32 %202, ptr %183, align 4
  %203 = load i32, ptr %180, align 4
  %204 = and i32 %203, 1073741824
  %205 = and i32 %202, -1073741825
  %206 = or disjoint i32 %205, %204
  store i32 %206, ptr %183, align 4
  %207 = load i8, ptr %2, align 4
  %208 = and i8 %207, 1
  %209 = and i8 %155, -2
  %210 = or disjoint i8 %208, %209
  store i8 %210, ptr %113, align 8
  %211 = load i8, ptr %2, align 4
  %212 = and i8 %211, 2
  %213 = and i8 %210, -3
  %214 = or disjoint i8 %213, %212
  store i8 %214, ptr %113, align 8
  %215 = load i8, ptr %2, align 4
  %216 = and i8 %215, 4
  %217 = and i8 %214, -5
  %218 = or disjoint i8 %217, %216
  store i8 %218, ptr %113, align 8
  %219 = load i8, ptr %2, align 4
  %220 = and i8 %219, 112
  %221 = and i8 %218, -113
  %222 = or disjoint i8 %221, %220
  store i8 %222, ptr %113, align 8
  %223 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %224 = load i16, ptr %223, align 4, !tbaa !15
  %225 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %224, ptr %225, align 8, !tbaa !5
  %226 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %227 = load i16, ptr %226, align 2, !tbaa !17
  %228 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %227, ptr %228, align 2, !tbaa !5
  %229 = getelementptr inbounds ptr, ptr %3, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %242

232:                                              ; preds = %110
  %233 = load ptr, ptr %3, align 8, !tbaa !8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = getelementptr inbounds ptr, ptr %4, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load ptr, ptr %4, align 8, !tbaa !8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %5677, label %242

242:                                              ; preds = %239, %235, %232, %110
  %243 = tail call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

244:                                              ; preds = %35, %35
  %245 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  %247 = icmp eq ptr %246, %0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %0, align 8, !tbaa !5
  %250 = icmp eq ptr %249, %246
  br i1 %250, label %251, label %254

251:                                              ; preds = %248, %244
  %252 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %253 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %252, ptr noundef nonnull @.str.6) #9
  br label %254

254:                                              ; preds = %251, %248
  %255 = icmp eq i32 %10, 0
  br i1 %255, label %256, label %5677

256:                                              ; preds = %254
  %257 = load ptr, ptr %245, align 8, !tbaa !5
  br label %258

258:                                              ; preds = %258, %256
  %259 = phi ptr [ %257, %256 ], [ %261, %258 ]
  %260 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = getelementptr inbounds %struct.word_type, ptr %261, i64 0, i32 1
  %263 = load i8, ptr %262, align 8, !tbaa !5
  switch i8 %263, label %389 [
    i8 0, label %258
    i8 2, label %264
  ]

264:                                              ; preds = %258
  %265 = call ptr @CrossExpand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %18) #9
  %266 = getelementptr inbounds %struct.word_type, ptr %265, i64 0, i32 1
  %267 = load i8, ptr %266, align 8, !tbaa !5
  %268 = icmp eq i8 %267, 2
  br i1 %268, label %272, label %269

269:                                              ; preds = %264
  %270 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %271 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %270, ptr noundef nonnull @.str.7) #9
  br label %272

272:                                              ; preds = %269, %264
  %273 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %274 = zext i8 %273 to i32
  store i32 %274, ptr @zz_size, align 4, !tbaa !10
  %275 = zext i8 %273 to i64
  %276 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %281 = call ptr @GetMemory(i32 noundef %274, ptr noundef %280) #9
  store ptr %281, ptr @zz_hold, align 8, !tbaa !8
  br label %284

282:                                              ; preds = %272
  store ptr %277, ptr @zz_hold, align 8, !tbaa !8
  %283 = load ptr, ptr %277, align 8, !tbaa !5
  store ptr %283, ptr %276, align 8, !tbaa !8
  br label %284

284:                                              ; preds = %279, %282
  %285 = phi ptr [ %281, %279 ], [ %277, %282 ]
  %286 = getelementptr inbounds %struct.word_type, ptr %285, i64 0, i32 1
  store i8 17, ptr %286, align 8, !tbaa !5
  %287 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1, i32 1
  store ptr %285, ptr %287, align 8, !tbaa !5
  %288 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1
  store ptr %285, ptr %288, align 8, !tbaa !5
  %289 = getelementptr inbounds %struct.LIST, ptr %285, i64 0, i32 1
  store ptr %285, ptr %289, align 8, !tbaa !5
  store ptr %285, ptr %285, align 8, !tbaa !5
  %290 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %291 = zext i8 %290 to i32
  store i32 %291, ptr @zz_size, align 4, !tbaa !10
  %292 = zext i8 %290 to i64
  %293 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %284
  %297 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %298 = call ptr @GetMemory(i32 noundef %291, ptr noundef %297) #9
  br label %301

299:                                              ; preds = %284
  store ptr %294, ptr @zz_hold, align 8, !tbaa !8
  %300 = load ptr, ptr %294, align 8, !tbaa !5
  store ptr %300, ptr %293, align 8, !tbaa !8
  br label %301

301:                                              ; preds = %296, %299
  %302 = phi ptr [ %298, %296 ], [ %294, %299 ]
  %303 = getelementptr inbounds %struct.word_type, ptr %302, i64 0, i32 1
  store i8 0, ptr %303, align 8, !tbaa !5
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  store ptr %302, ptr %304, align 8, !tbaa !5
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1
  store ptr %302, ptr %305, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.LIST, ptr %302, i64 0, i32 1
  store ptr %302, ptr %306, align 8, !tbaa !5
  store ptr %302, ptr %302, align 8, !tbaa !5
  store ptr %302, ptr @xx_link, align 8, !tbaa !8
  store ptr %302, ptr @zz_res, align 8, !tbaa !8
  store ptr %285, ptr @zz_hold, align 8, !tbaa !8
  %307 = load ptr, ptr %285, align 8, !tbaa !5
  store ptr %307, ptr @zz_tmp, align 8, !tbaa !8
  %308 = load ptr, ptr %302, align 8, !tbaa !5
  store ptr %308, ptr %285, align 8, !tbaa !5
  %309 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %310 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = getelementptr inbounds %struct.LIST, ptr %311, i64 0, i32 1
  store ptr %309, ptr %312, align 8, !tbaa !5
  %313 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %313, ptr %310, align 8, !tbaa !5
  %314 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %315 = getelementptr inbounds %struct.LIST, ptr %313, i64 0, i32 1
  store ptr %314, ptr %315, align 8, !tbaa !5
  %316 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %316, ptr @zz_res, align 8, !tbaa !8
  %317 = load ptr, ptr %18, align 8, !tbaa !8
  store ptr %317, ptr @zz_hold, align 8, !tbaa !8
  %318 = icmp eq ptr %317, null
  %319 = icmp eq ptr %316, null
  %320 = select i1 %318, i1 true, i1 %319
  br i1 %320, label %328, label %321

321:                                              ; preds = %301
  %322 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !5
  store ptr %323, ptr @zz_tmp, align 8, !tbaa !8
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %316, i64 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  store ptr %325, ptr %322, align 8, !tbaa !5
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  store ptr %317, ptr %326, align 8, !tbaa !5
  store ptr %323, ptr %324, align 8, !tbaa !5
  %327 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1, i32 1
  store ptr %316, ptr %327, align 8, !tbaa !5
  br label %328

328:                                              ; preds = %301, %321
  %329 = call ptr @ClosureExpand(ptr noundef nonnull %265, ptr noundef %317, i32 noundef 0, ptr noundef %6, ptr noundef nonnull %19) #9
  %330 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %331 = zext i8 %330 to i32
  store i32 %331, ptr @zz_size, align 4, !tbaa !10
  %332 = zext i8 %330 to i64
  %333 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %328
  %337 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %338 = call ptr @GetMemory(i32 noundef %331, ptr noundef %337) #9
  store ptr %338, ptr @zz_hold, align 8, !tbaa !8
  br label %341

339:                                              ; preds = %328
  store ptr %334, ptr @zz_hold, align 8, !tbaa !8
  %340 = load ptr, ptr %334, align 8, !tbaa !5
  store ptr %340, ptr %333, align 8, !tbaa !8
  br label %341

341:                                              ; preds = %336, %339
  %342 = phi ptr [ %338, %336 ], [ %334, %339 ]
  %343 = getelementptr inbounds %struct.word_type, ptr %342, i64 0, i32 1
  store i8 17, ptr %343, align 8, !tbaa !5
  %344 = getelementptr inbounds [2 x %struct.LIST], ptr %342, i64 0, i64 1, i32 1
  store ptr %342, ptr %344, align 8, !tbaa !5
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %342, i64 0, i64 1
  store ptr %342, ptr %345, align 8, !tbaa !5
  %346 = getelementptr inbounds %struct.LIST, ptr %342, i64 0, i32 1
  store ptr %342, ptr %346, align 8, !tbaa !5
  store ptr %342, ptr %342, align 8, !tbaa !5
  %347 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %348 = zext i8 %347 to i32
  store i32 %348, ptr @zz_size, align 4, !tbaa !10
  %349 = zext i8 %347 to i64
  %350 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %356

353:                                              ; preds = %341
  %354 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %355 = call ptr @GetMemory(i32 noundef %348, ptr noundef %354) #9
  br label %358

356:                                              ; preds = %341
  store ptr %351, ptr @zz_hold, align 8, !tbaa !8
  %357 = load ptr, ptr %351, align 8, !tbaa !5
  store ptr %357, ptr %350, align 8, !tbaa !8
  br label %358

358:                                              ; preds = %353, %356
  %359 = phi ptr [ %355, %353 ], [ %351, %356 ]
  %360 = getelementptr inbounds %struct.word_type, ptr %359, i64 0, i32 1
  store i8 0, ptr %360, align 8, !tbaa !5
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1, i32 1
  store ptr %359, ptr %361, align 8, !tbaa !5
  %362 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1
  store ptr %359, ptr %362, align 8, !tbaa !5
  %363 = getelementptr inbounds %struct.LIST, ptr %359, i64 0, i32 1
  store ptr %359, ptr %363, align 8, !tbaa !5
  store ptr %359, ptr %359, align 8, !tbaa !5
  store ptr %359, ptr @xx_link, align 8, !tbaa !8
  store ptr %359, ptr @zz_res, align 8, !tbaa !8
  store ptr %342, ptr @zz_hold, align 8, !tbaa !8
  %364 = load ptr, ptr %342, align 8, !tbaa !5
  store ptr %364, ptr @zz_tmp, align 8, !tbaa !8
  %365 = load ptr, ptr %359, align 8, !tbaa !5
  store ptr %365, ptr %342, align 8, !tbaa !5
  %366 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %367 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %368 = load ptr, ptr %367, align 8, !tbaa !5
  %369 = getelementptr inbounds %struct.LIST, ptr %368, i64 0, i32 1
  store ptr %366, ptr %369, align 8, !tbaa !5
  %370 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %370, ptr %367, align 8, !tbaa !5
  %371 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %372 = getelementptr inbounds %struct.LIST, ptr %370, i64 0, i32 1
  store ptr %371, ptr %372, align 8, !tbaa !5
  %373 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %373, ptr @zz_res, align 8, !tbaa !8
  %374 = load ptr, ptr %19, align 8, !tbaa !8
  store ptr %374, ptr @zz_hold, align 8, !tbaa !8
  %375 = icmp eq ptr %374, null
  %376 = icmp eq ptr %373, null
  %377 = select i1 %375, i1 true, i1 %376
  br i1 %377, label %385, label %378

378:                                              ; preds = %358
  %379 = getelementptr inbounds [2 x %struct.LIST], ptr %374, i64 0, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !5
  store ptr %380, ptr @zz_tmp, align 8, !tbaa !8
  %381 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !5
  store ptr %382, ptr %379, align 8, !tbaa !5
  %383 = getelementptr inbounds [2 x %struct.LIST], ptr %382, i64 0, i64 1, i32 1
  store ptr %374, ptr %383, align 8, !tbaa !5
  store ptr %380, ptr %381, align 8, !tbaa !5
  %384 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1, i32 1
  store ptr %373, ptr %384, align 8, !tbaa !5
  br label %385

385:                                              ; preds = %358, %378
  %386 = call ptr @Manifest(ptr noundef %329, ptr noundef %374, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %9, i32 noundef 0)
  %387 = call i32 @DisposeObject(ptr noundef nonnull %285) #9
  %388 = call i32 @DisposeObject(ptr noundef nonnull %342) #9
  br label %5677

389:                                              ; preds = %258
  %390 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !5
  %393 = icmp eq ptr %392, %0
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %390, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %407

395:                                              ; preds = %389
  %396 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !5
  %398 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1
  store ptr %397, ptr %398, align 8, !tbaa !5
  %399 = getelementptr inbounds [2 x %struct.LIST], ptr %397, i64 0, i64 1, i32 1
  store ptr %392, ptr %399, align 8, !tbaa !5
  store ptr %0, ptr %391, align 8, !tbaa !5
  store ptr %0, ptr %396, align 8, !tbaa !5
  store ptr %392, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %390, ptr @zz_res, align 8, !tbaa !8
  store ptr %392, ptr @zz_hold, align 8, !tbaa !8
  %400 = icmp eq ptr %390, null
  br i1 %400, label %407, label %401

401:                                              ; preds = %395
  %402 = load ptr, ptr %398, align 8, !tbaa !5
  store ptr %402, ptr @zz_tmp, align 8, !tbaa !8
  %403 = getelementptr inbounds [2 x %struct.LIST], ptr %390, i64 0, i64 1
  %404 = load ptr, ptr %403, align 8, !tbaa !5
  store ptr %404, ptr %398, align 8, !tbaa !5
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %404, i64 0, i64 1, i32 1
  store ptr %392, ptr %405, align 8, !tbaa !5
  store ptr %402, ptr %403, align 8, !tbaa !5
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1, i32 1
  store ptr %390, ptr %406, align 8, !tbaa !5
  br label %407

407:                                              ; preds = %394, %395, %401
  %408 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %409 = tail call ptr @Manifest(ptr noundef %390, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef 0)
  br label %5677

410:                                              ; preds = %35, %35
  %411 = icmp ne i32 %7, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %410
  %413 = load ptr, ptr %6, align 8, !tbaa !8
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %472

415:                                              ; preds = %412, %410
  %416 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %417 = load i32, ptr %416, align 4
  %418 = and i32 %417, 4095
  %419 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, -4096
  %422 = or disjoint i32 %421, %418
  store i32 %422, ptr %419, align 8
  %423 = load i32, ptr %416, align 4
  %424 = and i32 %423, 4190208
  %425 = and i32 %422, -4190209
  %426 = or disjoint i32 %425, %424
  store i32 %426, ptr %419, align 8
  %427 = load i32, ptr %416, align 4
  %428 = and i32 %427, 4194304
  %429 = and i32 %426, -4194305
  %430 = or disjoint i32 %429, %428
  store i32 %430, ptr %419, align 8
  %431 = load i32, ptr %416, align 4
  %432 = lshr i32 %431, 1
  %433 = and i32 %432, 528482304
  %434 = and i32 %430, -528482305
  %435 = or disjoint i32 %433, %434
  store i32 %435, ptr %419, align 8
  %436 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %437 = load i8, ptr %436, align 4
  %438 = and i8 %437, 3
  %439 = icmp eq i8 %438, 2
  %440 = select i1 %439, i32 -2147483648, i32 0
  %441 = and i32 %435, 2147483647
  %442 = or disjoint i32 %440, %441
  store i32 %442, ptr %419, align 8
  %443 = load i8, ptr %2, align 4
  %444 = and i8 %443, 8
  %445 = icmp ne i8 %444, 0
  %446 = and i1 %411, %445
  br i1 %446, label %447, label %451

447:                                              ; preds = %415
  %448 = tail call ptr @MapSmallCaps(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  %449 = getelementptr inbounds %struct.word_type, ptr %448, i64 0, i32 2
  %450 = load i32, ptr %449, align 8
  br label %451

451:                                              ; preds = %447, %415
  %452 = phi i32 [ %450, %447 ], [ %442, %415 ]
  %453 = phi ptr [ %448, %447 ], [ %0, %415 ]
  %454 = getelementptr inbounds %struct.word_type, ptr %453, i64 0, i32 2
  %455 = and i32 %452, -1610612737
  %456 = or disjoint i32 %455, 536870912
  store i32 %456, ptr %454, align 8
  %457 = getelementptr inbounds ptr, ptr %3, i64 1
  %458 = load ptr, ptr %457, align 8, !tbaa !8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %470

460:                                              ; preds = %451
  %461 = load ptr, ptr %3, align 8, !tbaa !8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %470

463:                                              ; preds = %460
  %464 = getelementptr inbounds ptr, ptr %4, i64 1
  %465 = load ptr, ptr %464, align 8, !tbaa !8
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %463
  %468 = load ptr, ptr %4, align 8, !tbaa !8
  %469 = icmp eq ptr %468, null
  br i1 %469, label %5677, label %470

470:                                              ; preds = %467, %463, %460, %451
  %471 = tail call fastcc ptr @insert_split(ptr noundef nonnull %453, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

472:                                              ; preds = %412
  %473 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %474 = zext i8 %473 to i32
  store i32 %474, ptr @zz_size, align 4, !tbaa !10
  %475 = zext i8 %473 to i64
  %476 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !8
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %482

479:                                              ; preds = %472
  %480 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %481 = tail call ptr @GetMemory(i32 noundef %474, ptr noundef %480) #9
  br label %484

482:                                              ; preds = %472
  store ptr %477, ptr @zz_hold, align 8, !tbaa !8
  %483 = load ptr, ptr %477, align 8, !tbaa !5
  store ptr %483, ptr %476, align 8, !tbaa !8
  br label %484

484:                                              ; preds = %479, %482
  %485 = phi ptr [ %481, %479 ], [ %477, %482 ]
  %486 = getelementptr inbounds %struct.word_type, ptr %485, i64 0, i32 1
  store i8 17, ptr %486, align 8, !tbaa !5
  %487 = getelementptr inbounds [2 x %struct.LIST], ptr %485, i64 0, i64 1, i32 1
  store ptr %485, ptr %487, align 8, !tbaa !5
  %488 = getelementptr inbounds [2 x %struct.LIST], ptr %485, i64 0, i64 1
  store ptr %485, ptr %488, align 8, !tbaa !5
  %489 = getelementptr inbounds %struct.LIST, ptr %485, i64 0, i32 1
  store ptr %485, ptr %489, align 8, !tbaa !5
  store ptr %485, ptr %485, align 8, !tbaa !5
  %490 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %491 = load i16, ptr %490, align 2, !tbaa !5
  %492 = getelementptr inbounds %struct.word_type, ptr %485, i64 0, i32 1, i32 0, i32 2
  store i16 %491, ptr %492, align 2, !tbaa !5
  %493 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %494 = load i32, ptr %493, align 4
  %495 = and i32 %494, 1048575
  %496 = getelementptr inbounds %struct.word_type, ptr %485, i64 0, i32 1, i32 0, i32 3
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, -1048576
  %499 = or disjoint i32 %498, %495
  store i32 %499, ptr %496, align 4
  %500 = load i32, ptr %493, align 4
  %501 = and i32 %500, -1048576
  %502 = or disjoint i32 %501, %495
  store i32 %502, ptr %496, align 4
  %503 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %504 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = icmp eq ptr %505, %0
  br i1 %506, label %507, label %508

507:                                              ; preds = %484
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %485, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %516

508:                                              ; preds = %484
  %509 = load ptr, ptr %503, align 8, !tbaa !5
  %510 = getelementptr inbounds [2 x %struct.LIST], ptr %505, i64 0, i64 1
  store ptr %509, ptr %510, align 8, !tbaa !5
  %511 = getelementptr inbounds [2 x %struct.LIST], ptr %509, i64 0, i64 1, i32 1
  store ptr %505, ptr %511, align 8, !tbaa !5
  store ptr %0, ptr %504, align 8, !tbaa !5
  store ptr %0, ptr %503, align 8, !tbaa !5
  store ptr %505, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %485, ptr @zz_res, align 8, !tbaa !8
  store ptr %505, ptr @zz_hold, align 8, !tbaa !8
  %512 = load ptr, ptr %510, align 8, !tbaa !5
  store ptr %512, ptr @zz_tmp, align 8, !tbaa !8
  %513 = load ptr, ptr %488, align 8, !tbaa !5
  store ptr %513, ptr %510, align 8, !tbaa !5
  %514 = getelementptr inbounds [2 x %struct.LIST], ptr %513, i64 0, i64 1, i32 1
  store ptr %505, ptr %514, align 8, !tbaa !5
  store ptr %512, ptr %488, align 8, !tbaa !5
  %515 = getelementptr inbounds [2 x %struct.LIST], ptr %512, i64 0, i64 1, i32 1
  store ptr %485, ptr %515, align 8, !tbaa !5
  br label %516

516:                                              ; preds = %507, %508
  %517 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %518 = zext i8 %517 to i32
  store i32 %518, ptr @zz_size, align 4, !tbaa !10
  %519 = zext i8 %517 to i64
  %520 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !8
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %526

523:                                              ; preds = %516
  %524 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %525 = tail call ptr @GetMemory(i32 noundef %518, ptr noundef %524) #9
  br label %528

526:                                              ; preds = %516
  store ptr %521, ptr @zz_hold, align 8, !tbaa !8
  %527 = load ptr, ptr %521, align 8, !tbaa !5
  store ptr %527, ptr %520, align 8, !tbaa !8
  br label %528

528:                                              ; preds = %523, %526
  %529 = phi ptr [ %525, %523 ], [ %521, %526 ]
  %530 = getelementptr inbounds %struct.word_type, ptr %529, i64 0, i32 1
  store i8 0, ptr %530, align 8, !tbaa !5
  %531 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1, i32 1
  store ptr %529, ptr %531, align 8, !tbaa !5
  %532 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1
  store ptr %529, ptr %532, align 8, !tbaa !5
  %533 = getelementptr inbounds %struct.LIST, ptr %529, i64 0, i32 1
  store ptr %529, ptr %533, align 8, !tbaa !5
  store ptr %529, ptr %529, align 8, !tbaa !5
  store ptr %529, ptr @xx_link, align 8, !tbaa !8
  store ptr %529, ptr @zz_res, align 8, !tbaa !8
  store ptr %485, ptr @zz_hold, align 8, !tbaa !8
  %534 = load ptr, ptr %485, align 8, !tbaa !5
  store ptr %534, ptr @zz_tmp, align 8, !tbaa !8
  %535 = load ptr, ptr %529, align 8, !tbaa !5
  store ptr %535, ptr %485, align 8, !tbaa !5
  %536 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %537 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %538 = load ptr, ptr %537, align 8, !tbaa !5
  %539 = getelementptr inbounds %struct.LIST, ptr %538, i64 0, i32 1
  store ptr %536, ptr %539, align 8, !tbaa !5
  %540 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %540, ptr %537, align 8, !tbaa !5
  %541 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %542 = getelementptr inbounds %struct.LIST, ptr %540, i64 0, i32 1
  store ptr %541, ptr %542, align 8, !tbaa !5
  %543 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %543, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %544 = icmp eq ptr %543, null
  br i1 %544, label %551, label %545

545:                                              ; preds = %528
  %546 = load ptr, ptr %503, align 8, !tbaa !5
  store ptr %546, ptr @zz_tmp, align 8, !tbaa !8
  %547 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1
  %548 = load ptr, ptr %547, align 8, !tbaa !5
  store ptr %548, ptr %503, align 8, !tbaa !5
  %549 = getelementptr inbounds [2 x %struct.LIST], ptr %548, i64 0, i64 1, i32 1
  store ptr %0, ptr %549, align 8, !tbaa !5
  store ptr %546, ptr %547, align 8, !tbaa !5
  %550 = getelementptr inbounds [2 x %struct.LIST], ptr %546, i64 0, i64 1, i32 1
  store ptr %543, ptr %550, align 8, !tbaa !5
  br label %551

551:                                              ; preds = %545, %528, %35
  %552 = phi ptr [ %0, %35 ], [ %485, %528 ], [ %485, %545 ]
  %553 = load i16, ptr %2, align 4
  %554 = and i16 %553, 128
  %555 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4
  %556 = load i16, ptr %555, align 8
  %557 = and i16 %556, -129
  %558 = or disjoint i16 %557, %554
  store i16 %558, ptr %555, align 8
  %559 = load i16, ptr %2, align 4
  %560 = and i16 %559, 256
  %561 = and i16 %558, -257
  %562 = or disjoint i16 %561, %560
  store i16 %562, ptr %555, align 8
  %563 = load i16, ptr %2, align 4
  %564 = and i16 %563, 512
  %565 = and i16 %562, -513
  %566 = or disjoint i16 %565, %564
  store i16 %566, ptr %555, align 8
  %567 = load i16, ptr %2, align 4
  %568 = and i16 %567, 7168
  %569 = and i16 %566, -7169
  %570 = or disjoint i16 %569, %568
  store i16 %570, ptr %555, align 8
  %571 = load i16, ptr %2, align 4
  %572 = and i16 %571, -8192
  %573 = and i16 %570, 8191
  %574 = or disjoint i16 %573, %572
  store i16 %574, ptr %555, align 8
  %575 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %576 = load i16, ptr %575, align 2, !tbaa !5
  %577 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %576, ptr %577, align 2, !tbaa !5
  %578 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %579 = load i8, ptr %578, align 4
  %580 = and i8 %579, 3
  %581 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 1
  %582 = load i8, ptr %581, align 4
  %583 = and i8 %582, -4
  %584 = or disjoint i8 %583, %580
  store i8 %584, ptr %581, align 4
  %585 = load i8, ptr %578, align 4
  %586 = and i8 %585, 12
  %587 = and i8 %584, -13
  %588 = or disjoint i8 %587, %586
  store i8 %588, ptr %581, align 4
  %589 = load i8, ptr %578, align 4
  %590 = and i8 %589, 112
  %591 = and i8 %588, -113
  %592 = or disjoint i8 %591, %590
  store i8 %592, ptr %581, align 4
  %593 = load i8, ptr %2, align 4
  %594 = and i8 %593, 8
  %595 = trunc i16 %558 to i8
  %596 = and i8 %595, -9
  %597 = or disjoint i8 %596, %594
  store i8 %597, ptr %555, align 8
  %598 = load i16, ptr %578, align 4
  %599 = and i16 %598, 128
  %600 = load i16, ptr %581, align 4
  %601 = and i16 %600, -129
  %602 = or disjoint i16 %601, %599
  store i16 %602, ptr %581, align 4
  %603 = load i16, ptr %578, align 4
  %604 = and i16 %603, 256
  %605 = and i16 %602, -257
  %606 = or disjoint i16 %605, %604
  store i16 %606, ptr %581, align 4
  %607 = load i16, ptr %578, align 4
  %608 = and i16 %607, 512
  %609 = and i16 %606, -513
  %610 = or disjoint i16 %609, %608
  store i16 %610, ptr %581, align 4
  %611 = load i16, ptr %578, align 4
  %612 = and i16 %611, 7168
  %613 = and i16 %610, -7169
  %614 = or disjoint i16 %613, %612
  store i16 %614, ptr %581, align 4
  %615 = load i16, ptr %578, align 4
  %616 = and i16 %615, -8192
  %617 = and i16 %614, 8191
  %618 = or disjoint i16 %617, %616
  store i16 %618, ptr %581, align 4
  %619 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %620 = load i16, ptr %619, align 2, !tbaa !5
  %621 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %620, ptr %621, align 2, !tbaa !5
  %622 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %623 = load i32, ptr %622, align 4
  %624 = and i32 %623, 4095
  %625 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 4
  %626 = load i32, ptr %625, align 4
  %627 = and i32 %626, -4096
  %628 = or disjoint i32 %627, %624
  store i32 %628, ptr %625, align 4
  %629 = load i32, ptr %622, align 4
  %630 = and i32 %629, 4190208
  %631 = and i32 %628, -4190209
  %632 = or disjoint i32 %631, %630
  store i32 %632, ptr %625, align 4
  %633 = load i32, ptr %622, align 4
  %634 = and i32 %633, 12582912
  %635 = and i32 %632, -12582913
  %636 = or disjoint i32 %635, %634
  store i32 %636, ptr %625, align 4
  %637 = load i32, ptr %622, align 4
  %638 = and i32 %637, 1056964608
  %639 = and i32 %636, -1056964609
  %640 = or disjoint i32 %639, %638
  store i32 %640, ptr %625, align 4
  %641 = load i32, ptr %622, align 4
  %642 = and i32 %641, -2147483648
  %643 = and i32 %640, 2147483647
  %644 = or disjoint i32 %643, %642
  store i32 %644, ptr %625, align 4
  %645 = load i32, ptr %622, align 4
  %646 = and i32 %645, 1073741824
  %647 = and i32 %644, -1073741825
  %648 = or disjoint i32 %647, %646
  store i32 %648, ptr %625, align 4
  %649 = load i8, ptr %2, align 4
  %650 = and i8 %649, 1
  %651 = and i8 %597, -2
  %652 = or disjoint i8 %650, %651
  store i8 %652, ptr %555, align 8
  %653 = load i8, ptr %2, align 4
  %654 = and i8 %653, 2
  %655 = and i8 %652, -3
  %656 = or disjoint i8 %655, %654
  store i8 %656, ptr %555, align 8
  %657 = load i8, ptr %2, align 4
  %658 = and i8 %657, 4
  %659 = and i8 %656, -5
  %660 = or disjoint i8 %659, %658
  store i8 %660, ptr %555, align 8
  %661 = load i8, ptr %2, align 4
  %662 = and i8 %661, 112
  %663 = and i8 %660, -113
  %664 = or disjoint i8 %663, %662
  store i8 %664, ptr %555, align 8
  %665 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %666 = load i16, ptr %665, align 4, !tbaa !15
  %667 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 2
  store i16 %666, ptr %667, align 8, !tbaa !5
  %668 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %669 = load i16, ptr %668, align 2, !tbaa !17
  %670 = getelementptr inbounds %struct.closure_type, ptr %552, i64 0, i32 4, i32 0, i32 3
  store i16 %669, ptr %670, align 2, !tbaa !5
  %671 = load i8, ptr %2, align 4
  %672 = lshr i8 %671, 2
  %673 = getelementptr inbounds i8, ptr %552, i64 42
  %674 = load i16, ptr %673, align 2
  %675 = and i8 %672, 1
  %676 = zext nneg i8 %675 to i16
  %677 = shl nuw nsw i16 %676, 11
  %678 = and i16 %674, -2049
  %679 = or disjoint i16 %677, %678
  store i16 %679, ptr %673, align 2
  %680 = load i16, ptr %2, align 4
  %681 = load i16, ptr %25, align 4
  %682 = and i16 %681, 127
  %683 = and i16 %680, -128
  %684 = or disjoint i16 %682, %683
  store i16 %684, ptr %25, align 4
  %685 = load i16, ptr %575, align 2, !tbaa !5
  %686 = getelementptr inbounds %struct.GAP, ptr %25, i64 0, i32 1
  store i16 %685, ptr %686, align 2, !tbaa !5
  %687 = load i8, ptr %578, align 4
  %688 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1
  %689 = load i8, ptr %688, align 4
  %690 = and i8 %689, -128
  %691 = and i8 %687, 127
  %692 = or disjoint i8 %690, %691
  store i8 %692, ptr %688, align 4
  %693 = trunc i16 %680 to i8
  %694 = trunc i16 %683 to i8
  %695 = load i16, ptr %578, align 4
  %696 = load i16, ptr %688, align 4
  %697 = and i16 %696, 127
  %698 = and i16 %695, -128
  %699 = or disjoint i16 %697, %698
  store i16 %699, ptr %688, align 4
  %700 = load i16, ptr %619, align 2, !tbaa !5
  %701 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1, i32 0, i32 1
  store i16 %700, ptr %701, align 2, !tbaa !5
  %702 = load i32, ptr %622, align 4
  %703 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 4
  store i32 %702, ptr %703, align 4
  %704 = and i8 %693, 123
  %705 = or disjoint i8 %704, %694
  %706 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 2
  %707 = load <2 x i16>, ptr %665, align 4, !tbaa !18
  store <2 x i16> %707, ptr %706, align 4, !tbaa !18
  store i8 %705, ptr %25, align 4
  %708 = getelementptr inbounds %struct.LIST, ptr %552, i64 0, i32 1
  %709 = load ptr, ptr %708, align 8, !tbaa !5
  %710 = icmp eq ptr %709, %552
  br i1 %710, label %711, label %715

711:                                              ; preds = %551
  %712 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %713 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %712, ptr noundef nonnull @.str.9) #9
  %714 = load ptr, ptr %708, align 8, !tbaa !5
  br label %715

715:                                              ; preds = %711, %551
  %716 = phi ptr [ %714, %711 ], [ %709, %551 ]
  br label %717

717:                                              ; preds = %717, %715
  %718 = phi ptr [ %716, %715 ], [ %720, %717 ]
  %719 = getelementptr inbounds [2 x %struct.LIST], ptr %718, i64 0, i64 1
  %720 = load ptr, ptr %719, align 8, !tbaa !5
  %721 = getelementptr inbounds %struct.word_type, ptr %720, i64 0, i32 1
  %722 = load i8, ptr %721, align 8, !tbaa !5
  switch i8 %722, label %728 [
    i8 0, label %717
    i8 1, label %723
  ]

723:                                              ; preds = %717
  %724 = getelementptr inbounds %struct.word_type, ptr %720, i64 0, i32 1
  %725 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %726 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %725, ptr noundef nonnull @.str.10) #9
  %727 = load i8, ptr %724, align 8, !tbaa !5
  br label %728

728:                                              ; preds = %717, %723
  %729 = phi i8 [ %727, %723 ], [ %722, %717 ]
  %730 = add i8 %729, -11
  %731 = icmp ult i8 %730, 2
  br i1 %731, label %732, label %769

732:                                              ; preds = %728
  %733 = load i32, ptr %622, align 4
  %734 = and i32 %733, 4095
  %735 = getelementptr inbounds %struct.word_type, ptr %720, i64 0, i32 2
  %736 = load i32, ptr %735, align 8
  %737 = and i32 %736, -4096
  %738 = or disjoint i32 %737, %734
  store i32 %738, ptr %735, align 8
  %739 = load i32, ptr %622, align 4
  %740 = and i32 %739, 4190208
  %741 = and i32 %738, -4190209
  %742 = or disjoint i32 %741, %740
  store i32 %742, ptr %735, align 8
  %743 = load i32, ptr %622, align 4
  %744 = and i32 %743, 4194304
  %745 = and i32 %742, -4194305
  %746 = or disjoint i32 %745, %744
  store i32 %746, ptr %735, align 8
  %747 = load i32, ptr %622, align 4
  %748 = lshr i32 %747, 1
  %749 = and i32 %748, 528482304
  %750 = and i32 %746, -528482305
  %751 = or disjoint i32 %749, %750
  store i32 %751, ptr %735, align 8
  %752 = load i8, ptr %578, align 4
  %753 = and i8 %752, 3
  %754 = icmp eq i8 %753, 2
  %755 = select i1 %754, i32 -2147483648, i32 0
  %756 = and i32 %751, 2147483647
  %757 = or disjoint i32 %755, %756
  store i32 %757, ptr %735, align 8
  %758 = load i8, ptr %2, align 4
  %759 = and i8 %758, 8
  %760 = icmp ne i8 %759, 0
  %761 = icmp ne i32 %7, 0
  %762 = and i1 %761, %760
  br i1 %762, label %763, label %773

763:                                              ; preds = %732
  %764 = tail call ptr @MapSmallCaps(ptr noundef nonnull %720, ptr noundef nonnull %2) #9
  %765 = getelementptr inbounds %struct.word_type, ptr %764, i64 0, i32 2
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, -1610612737
  %768 = or disjoint i32 %767, 536870912
  store i32 %768, ptr %765, align 8
  br label %780

769:                                              ; preds = %728
  %770 = call ptr @Manifest(ptr noundef nonnull %720, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %771 = getelementptr inbounds %struct.word_type, ptr %770, i64 0, i32 2
  %772 = load i32, ptr %771, align 8
  br label %773

773:                                              ; preds = %732, %769
  %774 = phi i32 [ %757, %732 ], [ %772, %769 ]
  %775 = phi ptr [ %720, %732 ], [ %770, %769 ]
  %776 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 2
  %777 = and i32 %774, -1610612737
  %778 = or disjoint i32 %777, 536870912
  store i32 %778, ptr %776, align 8
  %779 = icmp eq i32 %7, 0
  br i1 %779, label %819, label %780

780:                                              ; preds = %763, %773
  %781 = phi ptr [ %764, %763 ], [ %775, %773 ]
  %782 = load ptr, ptr %6, align 8, !tbaa !8
  %783 = icmp eq ptr %782, null
  br i1 %783, label %819, label %784

784:                                              ; preds = %780
  %785 = getelementptr inbounds %struct.LIST, ptr %782, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !5
  %787 = icmp eq ptr %786, %782
  br i1 %787, label %816, label %788

788:                                              ; preds = %784
  %789 = getelementptr inbounds %struct.word_type, ptr %786, i64 0, i32 1
  %790 = load i8, ptr %789, align 8, !tbaa !5
  %791 = icmp eq i8 %790, 0
  br i1 %791, label %795, label %792

792:                                              ; preds = %788
  %793 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %794 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %793, ptr noundef nonnull @.str.1) #9
  br label %795

795:                                              ; preds = %792, %788
  store ptr %786, ptr @zz_res, align 8, !tbaa !8
  store ptr %782, ptr @zz_hold, align 8, !tbaa !8
  %796 = load ptr, ptr %782, align 8, !tbaa !5
  store ptr %796, ptr @zz_tmp, align 8, !tbaa !8
  %797 = load ptr, ptr %786, align 8, !tbaa !5
  store ptr %797, ptr %782, align 8, !tbaa !5
  %798 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %799 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %800 = load ptr, ptr %799, align 8, !tbaa !5
  %801 = getelementptr inbounds %struct.LIST, ptr %800, i64 0, i32 1
  store ptr %798, ptr %801, align 8, !tbaa !5
  %802 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %802, ptr %799, align 8, !tbaa !5
  %803 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %804 = getelementptr inbounds %struct.LIST, ptr %802, i64 0, i32 1
  store ptr %803, ptr %804, align 8, !tbaa !5
  store ptr %786, ptr @zz_res, align 8, !tbaa !8
  store ptr %716, ptr @zz_hold, align 8, !tbaa !8
  %805 = icmp eq ptr %716, null
  br i1 %805, label %816, label %806

806:                                              ; preds = %795
  %807 = load ptr, ptr %716, align 8, !tbaa !5
  store ptr %807, ptr @zz_tmp, align 8, !tbaa !8
  %808 = load ptr, ptr %786, align 8, !tbaa !5
  store ptr %808, ptr %716, align 8, !tbaa !5
  %809 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %810 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %811 = load ptr, ptr %810, align 8, !tbaa !5
  %812 = getelementptr inbounds %struct.LIST, ptr %811, i64 0, i32 1
  store ptr %809, ptr %812, align 8, !tbaa !5
  %813 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %813, ptr %810, align 8, !tbaa !5
  %814 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %815 = getelementptr inbounds %struct.LIST, ptr %813, i64 0, i32 1
  store ptr %814, ptr %815, align 8, !tbaa !5
  br label %816

816:                                              ; preds = %795, %806, %784
  %817 = load ptr, ptr %6, align 8, !tbaa !8
  %818 = call i32 @DisposeObject(ptr noundef %817) #9
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %819

819:                                              ; preds = %816, %780, %773
  %820 = phi i1 [ true, %816 ], [ true, %780 ], [ false, %773 ]
  %821 = phi ptr [ %781, %816 ], [ %781, %780 ], [ %775, %773 ]
  %822 = getelementptr inbounds %struct.LIST, ptr %716, i64 0, i32 1
  %823 = load ptr, ptr %822, align 8, !tbaa !5
  %824 = icmp eq ptr %823, %552
  br i1 %824, label %1337, label %825

825:                                              ; preds = %819, %1333
  %826 = phi ptr [ %1335, %1333 ], [ %823, %819 ]
  %827 = phi ptr [ %1294, %1333 ], [ %821, %819 ]
  br label %828

828:                                              ; preds = %825, %828
  %829 = phi ptr [ %831, %828 ], [ %826, %825 ]
  %830 = getelementptr inbounds [2 x %struct.LIST], ptr %829, i64 0, i64 1
  %831 = load ptr, ptr %830, align 8, !tbaa !5
  %832 = getelementptr inbounds %struct.word_type, ptr %831, i64 0, i32 1
  %833 = load i8, ptr %832, align 8, !tbaa !5
  switch i8 %833, label %834 [
    i8 0, label %828
    i8 1, label %837
  ]

834:                                              ; preds = %828
  %835 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %836 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %835, ptr noundef nonnull @.str.11) #9
  br label %837

837:                                              ; preds = %828, %834
  %838 = getelementptr inbounds %struct.word_type, ptr %831, i64 0, i32 2
  %839 = load i32, ptr %838, align 8
  %840 = and i32 %839, -1610612737
  %841 = or disjoint i32 %840, 536870912
  store i32 %841, ptr %838, align 8
  %842 = getelementptr inbounds %struct.LIST, ptr %826, i64 0, i32 1
  %843 = load ptr, ptr %842, align 8, !tbaa !5
  %844 = icmp eq ptr %843, %552
  br i1 %844, label %845, label %848

845:                                              ; preds = %837
  %846 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %847 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %846, ptr noundef nonnull @.str.12) #9
  br label %848

848:                                              ; preds = %845, %837
  br label %849

849:                                              ; preds = %848, %849
  %850 = phi ptr [ %852, %849 ], [ %843, %848 ]
  %851 = getelementptr inbounds [2 x %struct.LIST], ptr %850, i64 0, i64 1
  %852 = load ptr, ptr %851, align 8, !tbaa !5
  %853 = getelementptr inbounds %struct.word_type, ptr %852, i64 0, i32 1
  %854 = load i8, ptr %853, align 8, !tbaa !5
  switch i8 %854, label %860 [
    i8 0, label %849
    i8 1, label %855
  ]

855:                                              ; preds = %849
  %856 = getelementptr inbounds %struct.word_type, ptr %852, i64 0, i32 1
  %857 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %858 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %857, ptr noundef nonnull @.str.13) #9
  %859 = load i8, ptr %856, align 8, !tbaa !5
  br label %860

860:                                              ; preds = %849, %855
  %861 = phi i8 [ %859, %855 ], [ %854, %849 ]
  %862 = add i8 %861, -11
  %863 = icmp ult i8 %862, 2
  br i1 %863, label %864, label %896

864:                                              ; preds = %860
  %865 = load i32, ptr %622, align 4
  %866 = and i32 %865, 4095
  %867 = getelementptr inbounds %struct.word_type, ptr %852, i64 0, i32 2
  %868 = load i32, ptr %867, align 8
  %869 = and i32 %868, -4096
  %870 = or disjoint i32 %869, %866
  store i32 %870, ptr %867, align 8
  %871 = load i32, ptr %622, align 4
  %872 = and i32 %871, 4190208
  %873 = and i32 %870, -4190209
  %874 = or disjoint i32 %873, %872
  store i32 %874, ptr %867, align 8
  %875 = load i32, ptr %622, align 4
  %876 = and i32 %875, 4194304
  %877 = and i32 %874, -4194305
  %878 = or disjoint i32 %877, %876
  store i32 %878, ptr %867, align 8
  %879 = load i32, ptr %622, align 4
  %880 = lshr i32 %879, 1
  %881 = and i32 %880, 528482304
  %882 = and i32 %878, -528482305
  %883 = or disjoint i32 %881, %882
  store i32 %883, ptr %867, align 8
  %884 = load i8, ptr %578, align 4
  %885 = and i8 %884, 3
  %886 = icmp eq i8 %885, 2
  %887 = select i1 %886, i32 -2147483648, i32 0
  %888 = and i32 %883, 2147483647
  %889 = or disjoint i32 %887, %888
  store i32 %889, ptr %867, align 8
  %890 = load i8, ptr %2, align 4
  %891 = and i8 %890, 8
  %892 = icmp ne i8 %891, 0
  %893 = and i1 %820, %892
  br i1 %893, label %894, label %898

894:                                              ; preds = %864
  %895 = call ptr @MapSmallCaps(ptr noundef nonnull %852, ptr noundef nonnull %2) #9
  br label %898

896:                                              ; preds = %860
  %897 = call ptr @Manifest(ptr noundef nonnull %852, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %898

898:                                              ; preds = %864, %894, %896
  %899 = phi ptr [ %895, %894 ], [ %852, %864 ], [ %897, %896 ]
  %900 = getelementptr inbounds %struct.word_type, ptr %899, i64 0, i32 2
  %901 = load i32, ptr %900, align 8
  %902 = and i32 %901, -1610612737
  %903 = or disjoint i32 %902, 536870912
  store i32 %903, ptr %900, align 8
  %904 = getelementptr inbounds %struct.LIST, ptr %831, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !5
  %906 = icmp eq ptr %905, %831
  br i1 %906, label %920, label %907

907:                                              ; preds = %898, %907
  %908 = phi ptr [ %910, %907 ], [ %905, %898 ]
  %909 = getelementptr inbounds [2 x %struct.LIST], ptr %908, i64 0, i64 1
  %910 = load ptr, ptr %909, align 8, !tbaa !5
  %911 = getelementptr inbounds %struct.word_type, ptr %910, i64 0, i32 1
  %912 = load i8, ptr %911, align 8, !tbaa !5
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %907, label %914

914:                                              ; preds = %907
  %915 = call ptr @Manifest(ptr noundef nonnull %910, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %916 = call ptr @ReplaceWithTidy(ptr noundef %915, i32 noundef 0)
  store ptr %916, ptr %20, align 8, !tbaa !8
  %917 = getelementptr inbounds %struct.gapobj_type, ptr %831, i64 0, i32 3
  call void @GetGap(ptr noundef %916, ptr noundef %2, ptr noundef nonnull %917, ptr noundef nonnull %24) #9
  %918 = getelementptr inbounds i8, ptr %831, i64 41
  store i8 0, ptr %918, align 1, !tbaa !5
  %919 = getelementptr inbounds i8, ptr %831, i64 42
  store i8 0, ptr %919, align 2, !tbaa !5
  br label %1078

920:                                              ; preds = %898
  %921 = load i16, ptr %578, align 4
  %922 = and i16 %921, 128
  %923 = getelementptr inbounds %struct.gapobj_type, ptr %831, i64 0, i32 3
  %924 = load i16, ptr %923, align 4
  %925 = and i16 %924, -129
  %926 = or disjoint i16 %925, %922
  store i16 %926, ptr %923, align 4
  %927 = load i16, ptr %578, align 4
  %928 = and i16 %927, 256
  %929 = and i16 %926, -257
  %930 = or disjoint i16 %929, %928
  store i16 %930, ptr %923, align 4
  %931 = load i16, ptr %578, align 4
  %932 = and i16 %931, 512
  %933 = and i16 %930, -513
  %934 = or disjoint i16 %933, %932
  store i16 %934, ptr %923, align 4
  %935 = load i16, ptr %578, align 4
  %936 = and i16 %935, 7168
  %937 = and i16 %934, -7169
  %938 = or disjoint i16 %937, %936
  store i16 %938, ptr %923, align 4
  %939 = load i16, ptr %578, align 4
  %940 = and i16 %939, -8192
  %941 = and i16 %938, 8191
  %942 = or disjoint i16 %941, %940
  store i16 %942, ptr %923, align 4
  %943 = load i16, ptr %619, align 2, !tbaa !5
  %944 = getelementptr inbounds %struct.gapobj_type, ptr %831, i64 0, i32 3, i32 1
  store i16 %943, ptr %944, align 2, !tbaa !5
  %945 = load i8, ptr %2, align 4
  %946 = lshr i8 %945, 4
  %947 = and i8 %946, 7
  switch i8 %947, label %1063 [
    i8 0, label %948
    i8 1, label %957
    i8 2, label %1068
    i8 3, label %966
    i8 4, label %1015
  ]

948:                                              ; preds = %920
  %949 = getelementptr inbounds i8, ptr %831, i64 42
  %950 = load i8, ptr %949, align 2, !tbaa !5
  %951 = zext i8 %950 to i16
  %952 = getelementptr inbounds i8, ptr %831, i64 41
  %953 = load i8, ptr %952, align 1, !tbaa !5
  %954 = zext i8 %953 to i16
  %955 = add nuw nsw i16 %954, %951
  %956 = mul i16 %955, %943
  store i16 %956, ptr %944, align 2, !tbaa !5
  br label %1068

957:                                              ; preds = %920
  %958 = getelementptr inbounds i8, ptr %831, i64 42
  %959 = load i8, ptr %958, align 2, !tbaa !5
  %960 = zext i8 %959 to i32
  %961 = getelementptr inbounds i8, ptr %831, i64 41
  %962 = load i8, ptr %961, align 1, !tbaa !5
  %963 = zext i8 %962 to i32
  %964 = sub nsw i32 0, %963
  %965 = icmp eq i32 %960, %964
  br i1 %965, label %1067, label %1068

966:                                              ; preds = %920
  %967 = getelementptr inbounds i8, ptr %831, i64 42
  %968 = load i8, ptr %967, align 2, !tbaa !5
  %969 = zext i8 %968 to i16
  %970 = getelementptr inbounds i8, ptr %831, i64 41
  %971 = load i8, ptr %970, align 1, !tbaa !5
  %972 = zext i8 %971 to i16
  %973 = add nuw nsw i16 %972, %969
  %974 = mul i16 %973, %943
  store i16 %974, ptr %944, align 2, !tbaa !5
  %975 = icmp eq i8 %968, 0
  br i1 %975, label %1068, label %976

976:                                              ; preds = %966
  %977 = getelementptr inbounds %struct.word_type, ptr %827, i64 0, i32 1
  %978 = load i8, ptr %977, align 8, !tbaa !5
  br label %979

979:                                              ; preds = %985, %976
  %980 = phi i8 [ %978, %976 ], [ %990, %985 ]
  %981 = phi ptr [ %827, %976 ], [ %988, %985 ]
  store ptr %981, ptr %20, align 8, !tbaa !8
  switch i8 %980, label %1068 [
    i8 17, label %983
    i8 24, label %983
    i8 25, label %983
    i8 36, label %983
    i8 37, label %983
    i8 11, label %982
    i8 12, label %982
  ]

982:                                              ; preds = %979, %979
  br label %992

983:                                              ; preds = %979, %979, %979, %979, %979
  %984 = load ptr, ptr %981, align 8, !tbaa !5
  br label %985

985:                                              ; preds = %985, %983
  %986 = phi ptr [ %984, %983 ], [ %988, %985 ]
  %987 = getelementptr inbounds [2 x %struct.LIST], ptr %986, i64 0, i64 1
  %988 = load ptr, ptr %987, align 8, !tbaa !5
  %989 = getelementptr inbounds %struct.word_type, ptr %988, i64 0, i32 1
  %990 = load i8, ptr %989, align 8, !tbaa !5
  %991 = icmp eq i8 %990, 0
  br i1 %991, label %985, label %979

992:                                              ; preds = %982, %992
  %993 = phi i64 [ %997, %992 ], [ 64, %982 ]
  %994 = getelementptr inbounds i8, ptr %981, i64 %993
  %995 = load i8, ptr %994, align 1, !tbaa !5
  %996 = icmp eq i8 %995, 0
  %997 = add nuw nsw i64 %993, 1
  br i1 %996, label %998, label %992

998:                                              ; preds = %992
  %999 = icmp eq i64 %993, 64
  br i1 %999, label %1068, label %1000

1000:                                             ; preds = %998
  %1001 = getelementptr inbounds i8, ptr %981, i64 %993
  %1002 = getelementptr inbounds i8, ptr %1001, i64 -1
  %1003 = load i8, ptr %1002, align 1, !tbaa !5
  %1004 = zext i8 %1003 to i64
  %1005 = getelementptr inbounds [0 x i32], ptr @LanguageSentenceEnds, i64 0, i64 %1004
  %1006 = load i32, ptr %1005, align 4, !tbaa !10
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1068, label %1008

1008:                                             ; preds = %1000
  %1009 = call i32 @LanguageWordEndsSentence(ptr noundef nonnull %981, i32 noundef 0) #9
  %1010 = icmp eq i32 %1009, 0
  %1011 = load i16, ptr %944, align 2, !tbaa !5
  br i1 %1010, label %1068, label %1012

1012:                                             ; preds = %1008
  %1013 = load i16, ptr %619, align 2, !tbaa !5
  %1014 = add i16 %1011, %1013
  store i16 %1014, ptr %944, align 2, !tbaa !5
  br label %1068

1015:                                             ; preds = %920
  %1016 = getelementptr inbounds i8, ptr %831, i64 42
  %1017 = load i8, ptr %1016, align 2, !tbaa !5
  %1018 = zext i8 %1017 to i32
  %1019 = getelementptr inbounds i8, ptr %831, i64 41
  %1020 = load i8, ptr %1019, align 1, !tbaa !5
  %1021 = zext i8 %1020 to i32
  %1022 = sub nsw i32 0, %1021
  %1023 = icmp eq i32 %1018, %1022
  br i1 %1023, label %1067, label %1024

1024:                                             ; preds = %1015
  %1025 = getelementptr inbounds %struct.word_type, ptr %827, i64 0, i32 1
  %1026 = load i8, ptr %1025, align 8, !tbaa !5
  br label %1027

1027:                                             ; preds = %1033, %1024
  %1028 = phi i8 [ %1026, %1024 ], [ %1038, %1033 ]
  %1029 = phi ptr [ %827, %1024 ], [ %1036, %1033 ]
  store ptr %1029, ptr %20, align 8, !tbaa !8
  switch i8 %1028, label %1068 [
    i8 17, label %1031
    i8 24, label %1031
    i8 25, label %1031
    i8 36, label %1031
    i8 37, label %1031
    i8 11, label %1030
    i8 12, label %1030
  ]

1030:                                             ; preds = %1027, %1027
  br label %1040

1031:                                             ; preds = %1027, %1027, %1027, %1027, %1027
  %1032 = load ptr, ptr %1029, align 8, !tbaa !5
  br label %1033

1033:                                             ; preds = %1033, %1031
  %1034 = phi ptr [ %1032, %1031 ], [ %1036, %1033 ]
  %1035 = getelementptr inbounds [2 x %struct.LIST], ptr %1034, i64 0, i64 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !5
  %1037 = getelementptr inbounds %struct.word_type, ptr %1036, i64 0, i32 1
  %1038 = load i8, ptr %1037, align 8, !tbaa !5
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1033, label %1027

1040:                                             ; preds = %1030, %1040
  %1041 = phi i64 [ %1045, %1040 ], [ 64, %1030 ]
  %1042 = getelementptr inbounds i8, ptr %1029, i64 %1041
  %1043 = load i8, ptr %1042, align 1, !tbaa !5
  %1044 = icmp eq i8 %1043, 0
  %1045 = add nuw nsw i64 %1041, 1
  br i1 %1044, label %1046, label %1040

1046:                                             ; preds = %1040
  %1047 = icmp eq i64 %1041, 64
  br i1 %1047, label %1068, label %1048

1048:                                             ; preds = %1046
  %1049 = getelementptr inbounds i8, ptr %1029, i64 %1041
  %1050 = getelementptr inbounds i8, ptr %1049, i64 -1
  %1051 = load i8, ptr %1050, align 1, !tbaa !5
  %1052 = zext i8 %1051 to i64
  %1053 = getelementptr inbounds [0 x i32], ptr @LanguageSentenceEnds, i64 0, i64 %1052
  %1054 = load i32, ptr %1053, align 4, !tbaa !10
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1068, label %1056

1056:                                             ; preds = %1048
  %1057 = call i32 @LanguageWordEndsSentence(ptr noundef nonnull %1029, i32 noundef 1) #9
  %1058 = icmp eq i32 %1057, 0
  %1059 = load i16, ptr %944, align 2, !tbaa !5
  br i1 %1058, label %1068, label %1060

1060:                                             ; preds = %1056
  %1061 = load i16, ptr %619, align 2, !tbaa !5
  %1062 = add i16 %1059, %1061
  store i16 %1062, ptr %944, align 2, !tbaa !5
  br label %1068

1063:                                             ; preds = %920
  %1064 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1065 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1064, ptr noundef nonnull @.str.14) #9
  %1066 = load i16, ptr %944, align 2, !tbaa !5
  br label %1068

1067:                                             ; preds = %1015, %957
  store i16 0, ptr %944, align 2, !tbaa !5
  br label %1073

1068:                                             ; preds = %1027, %979, %1046, %1048, %1056, %1060, %966, %998, %1000, %1008, %1012, %957, %1063, %920, %948
  %1069 = phi i16 [ %943, %1046 ], [ %943, %1048 ], [ %1059, %1056 ], [ %1062, %1060 ], [ %974, %966 ], [ %974, %998 ], [ %974, %1000 ], [ %1011, %1008 ], [ %1014, %1012 ], [ %943, %957 ], [ %1066, %1063 ], [ %943, %920 ], [ %956, %948 ], [ %974, %979 ], [ %943, %1027 ]
  %1070 = freeze i16 %1069
  %1071 = icmp eq i16 %1070, 0
  %1072 = select i1 %1071, i16 128, i16 0
  br label %1073

1073:                                             ; preds = %1068, %1067
  %1074 = phi i16 [ 128, %1067 ], [ %1072, %1068 ]
  %1075 = load i16, ptr %923, align 4
  %1076 = and i16 %1075, -129
  %1077 = or disjoint i16 %1076, %1074
  store i16 %1077, ptr %923, align 4
  br label %1078

1078:                                             ; preds = %1073, %914
  %1079 = getelementptr inbounds %struct.word_type, ptr %899, i64 0, i32 1
  %1080 = load i8, ptr %1079, align 8, !tbaa !5
  %1081 = add i8 %1080, -11
  %1082 = icmp ult i8 %1081, 2
  br i1 %1082, label %1083, label %1293

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds %struct.gapobj_type, ptr %831, i64 0, i32 3, i32 1
  %1085 = load i16, ptr %1084, align 2, !tbaa !5
  %1086 = icmp eq i16 %1085, 0
  br i1 %1086, label %1087, label %1293

1087:                                             ; preds = %1083
  %1088 = getelementptr inbounds %struct.gapobj_type, ptr %831, i64 0, i32 3
  %1089 = load i16, ptr %1088, align 4
  %1090 = and i16 %1089, 128
  %1091 = icmp eq i16 %1090, 0
  br i1 %1091, label %1293, label %1092

1092:                                             ; preds = %1087
  %1093 = getelementptr inbounds i8, ptr %831, i64 42
  %1094 = load i8, ptr %1093, align 2, !tbaa !5
  %1095 = zext i8 %1094 to i32
  %1096 = getelementptr inbounds i8, ptr %831, i64 41
  %1097 = load i8, ptr %1096, align 1, !tbaa !5
  %1098 = zext i8 %1097 to i32
  %1099 = sub nsw i32 0, %1098
  %1100 = icmp eq i32 %1095, %1099
  %1101 = and i16 %1089, 7168
  %1102 = icmp eq i16 %1101, 1024
  %1103 = and i1 %1102, %1100
  br i1 %1103, label %1104, label %1293

1104:                                             ; preds = %1092
  %1105 = and i16 %1089, -8192
  %1106 = icmp eq i16 %1105, 8192
  %1107 = icmp ne ptr %827, null
  %1108 = and i1 %1107, %1106
  br i1 %1108, label %1109, label %1293

1109:                                             ; preds = %1104
  %1110 = getelementptr inbounds %struct.word_type, ptr %827, i64 0, i32 1
  %1111 = load i8, ptr %1110, align 8, !tbaa !5
  %1112 = add i8 %1111, -11
  %1113 = icmp ult i8 %1112, 2
  %1114 = and i16 %1089, 256
  %1115 = icmp eq i16 %1114, 0
  %1116 = and i1 %1115, %1113
  br i1 %1116, label %1117, label %1293

1117:                                             ; preds = %1109
  %1118 = getelementptr inbounds %struct.word_type, ptr %827, i64 0, i32 2
  %1119 = load i32, ptr %1118, align 8
  %1120 = load i32, ptr %900, align 8
  %1121 = xor i32 %1120, %1119
  %1122 = and i32 %1121, 536870911
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1293

1124:                                             ; preds = %1117
  %1125 = and i32 %1119, 1610612736
  %1126 = icmp eq i32 %1125, 536870912
  br i1 %1126, label %1131, label %1127

1127:                                             ; preds = %1124
  %1128 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1129 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1128, ptr noundef nonnull @.str.15) #9
  %1130 = load i32, ptr %900, align 8
  br label %1131

1131:                                             ; preds = %1127, %1124
  %1132 = phi i32 [ %1130, %1127 ], [ %1120, %1124 ]
  %1133 = and i32 %1132, 1610612736
  %1134 = icmp eq i32 %1133, 536870912
  br i1 %1134, label %1138, label %1135

1135:                                             ; preds = %1131
  %1136 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1137 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1136, ptr noundef nonnull @.str.16) #9
  br label %1138

1138:                                             ; preds = %1135, %1131
  %1139 = getelementptr inbounds %struct.word_type, ptr %827, i64 0, i32 4
  %1140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1139) #10
  %1141 = getelementptr inbounds %struct.word_type, ptr %899, i64 0, i32 4
  %1142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1141) #10
  %1143 = add i64 %1142, %1140
  %1144 = icmp ugt i64 %1143, 511
  br i1 %1144, label %1145, label %1147

1145:                                             ; preds = %1138
  %1146 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 24, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %1110, ptr noundef nonnull %1139, ptr noundef nonnull %1141) #9
  br label %1147

1147:                                             ; preds = %1145, %1138
  store ptr %899, ptr %20, align 8, !tbaa !8
  %1148 = load i8, ptr %1110, align 8, !tbaa !5
  %1149 = icmp eq i8 %1148, 12
  br i1 %1149, label %1154, label %1150

1150:                                             ; preds = %1147
  %1151 = load i8, ptr %1079, align 8, !tbaa !5
  %1152 = freeze i8 %1151
  %1153 = icmp eq i8 %1152, 12
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1147, %1150
  br label %1155

1155:                                             ; preds = %1150, %1154
  %1156 = phi i32 [ 12, %1154 ], [ 11, %1150 ]
  %1157 = call ptr @MakeWordTwo(i32 noundef %1156, ptr noundef nonnull %1139, ptr noundef nonnull %1141, ptr noundef nonnull %1110) #9
  %1158 = load i32, ptr %1118, align 8
  %1159 = and i32 %1158, 4095
  %1160 = getelementptr inbounds %struct.word_type, ptr %1157, i64 0, i32 2
  %1161 = load i32, ptr %1160, align 8
  %1162 = and i32 %1161, -4096
  %1163 = or disjoint i32 %1162, %1159
  store i32 %1163, ptr %1160, align 8
  %1164 = load i32, ptr %1118, align 8
  %1165 = and i32 %1164, 4190208
  %1166 = and i32 %1163, -4190209
  %1167 = or disjoint i32 %1166, %1165
  store i32 %1167, ptr %1160, align 8
  %1168 = load i32, ptr %1118, align 8
  %1169 = and i32 %1168, 4194304
  %1170 = and i32 %1167, -4194305
  %1171 = or disjoint i32 %1170, %1169
  store i32 %1171, ptr %1160, align 8
  %1172 = load i32, ptr %1118, align 8
  %1173 = and i32 %1172, 528482304
  %1174 = and i32 %1171, -528482305
  %1175 = or disjoint i32 %1174, %1173
  store i32 %1175, ptr %1160, align 8
  %1176 = load i32, ptr %1118, align 8
  %1177 = and i32 %1176, -2147483648
  %1178 = and i32 %1175, 536870911
  %1179 = or disjoint i32 %1177, %1178
  %1180 = or disjoint i32 %1179, 536870912
  store i32 %1180, ptr %1160, align 8
  store ptr %843, ptr @xx_link, align 8, !tbaa !8
  %1181 = getelementptr inbounds [2 x %struct.LIST], ptr %843, i64 0, i64 1, i32 1
  %1182 = load ptr, ptr %1181, align 8, !tbaa !5
  %1183 = icmp eq ptr %1182, %843
  %1184 = getelementptr inbounds [2 x %struct.LIST], ptr %843, i64 0, i64 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !5
  br i1 %1183, label %1189, label %1186

1186:                                             ; preds = %1155
  %1187 = getelementptr inbounds [2 x %struct.LIST], ptr %1182, i64 0, i64 1
  store ptr %1185, ptr %1187, align 8, !tbaa !5
  %1188 = getelementptr inbounds [2 x %struct.LIST], ptr %1185, i64 0, i64 1, i32 1
  store ptr %1182, ptr %1188, align 8, !tbaa !5
  store ptr %843, ptr %1181, align 8, !tbaa !5
  store ptr %843, ptr %1184, align 8, !tbaa !5
  br label %1189

1189:                                             ; preds = %1155, %1186
  %1190 = phi ptr [ %843, %1186 ], [ %1185, %1155 ]
  store ptr %843, ptr @zz_res, align 8, !tbaa !8
  store ptr %1157, ptr @zz_hold, align 8, !tbaa !8
  %1191 = getelementptr inbounds [2 x %struct.LIST], ptr %1157, i64 0, i64 1
  %1192 = load ptr, ptr %1191, align 8, !tbaa !5
  store ptr %1192, ptr @zz_tmp, align 8, !tbaa !8
  %1193 = getelementptr inbounds [2 x %struct.LIST], ptr %843, i64 0, i64 1
  store ptr %1190, ptr %1191, align 8, !tbaa !5
  %1194 = load ptr, ptr %1193, align 8, !tbaa !5
  %1195 = getelementptr inbounds [2 x %struct.LIST], ptr %1194, i64 0, i64 1, i32 1
  store ptr %1157, ptr %1195, align 8, !tbaa !5
  store ptr %1192, ptr %1193, align 8, !tbaa !5
  %1196 = getelementptr inbounds [2 x %struct.LIST], ptr %1192, i64 0, i64 1, i32 1
  store ptr %843, ptr %1196, align 8, !tbaa !5
  %1197 = load ptr, ptr %20, align 8, !tbaa !8
  %1198 = call i32 @DisposeObject(ptr noundef %1197) #9
  %1199 = getelementptr inbounds [2 x %struct.LIST], ptr %827, i64 0, i64 1, i32 1
  %1200 = load ptr, ptr %1199, align 8, !tbaa !5
  store ptr %1200, ptr @xx_link, align 8, !tbaa !8
  %1201 = getelementptr inbounds [2 x %struct.LIST], ptr %1200, i64 0, i64 1, i32 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !5
  %1203 = icmp eq ptr %1202, %1200
  br i1 %1203, label %1209, label %1204

1204:                                             ; preds = %1189
  store ptr %1202, ptr @zz_res, align 8, !tbaa !8
  %1205 = getelementptr inbounds [2 x %struct.LIST], ptr %1200, i64 0, i64 1
  %1206 = load ptr, ptr %1205, align 8, !tbaa !5
  %1207 = getelementptr inbounds [2 x %struct.LIST], ptr %1202, i64 0, i64 1
  store ptr %1206, ptr %1207, align 8, !tbaa !5
  %1208 = getelementptr inbounds [2 x %struct.LIST], ptr %1206, i64 0, i64 1, i32 1
  store ptr %1202, ptr %1208, align 8, !tbaa !5
  store ptr %1200, ptr %1201, align 8, !tbaa !5
  store ptr %1200, ptr %1205, align 8, !tbaa !5
  br label %1209

1209:                                             ; preds = %1189, %1204
  %1210 = phi ptr [ %1202, %1204 ], [ null, %1189 ]
  store ptr %1210, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1200, ptr @zz_hold, align 8, !tbaa !8
  %1211 = getelementptr inbounds %struct.LIST, ptr %1200, i64 0, i32 1
  %1212 = load ptr, ptr %1211, align 8, !tbaa !5
  %1213 = icmp eq ptr %1212, %1200
  br i1 %1213, label %1222, label %1214

1214:                                             ; preds = %1209
  store ptr %1212, ptr @zz_res, align 8, !tbaa !8
  %1215 = load ptr, ptr %1200, align 8, !tbaa !5
  store ptr %1215, ptr %1212, align 8, !tbaa !5
  %1216 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1217 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1218 = load ptr, ptr %1217, align 8, !tbaa !5
  %1219 = getelementptr inbounds %struct.LIST, ptr %1218, i64 0, i32 1
  store ptr %1216, ptr %1219, align 8, !tbaa !5
  %1220 = getelementptr inbounds %struct.LIST, ptr %1217, i64 0, i32 1
  store ptr %1217, ptr %1220, align 8, !tbaa !5
  store ptr %1217, ptr %1217, align 8, !tbaa !5
  %1221 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1222

1222:                                             ; preds = %1209, %1214
  %1223 = phi ptr [ %1200, %1209 ], [ %1221, %1214 ]
  store ptr %1223, ptr @zz_hold, align 8, !tbaa !8
  %1224 = getelementptr inbounds %struct.word_type, ptr %1223, i64 0, i32 1
  %1225 = load i8, ptr %1224, align 8, !tbaa !5
  %1226 = add i8 %1225, -11
  %1227 = icmp ult i8 %1226, 2
  %1228 = getelementptr inbounds %struct.word_type, ptr %1223, i64 0, i32 1, i32 0, i32 1
  %1229 = zext i8 %1225 to i64
  %1230 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1229
  %1231 = select i1 %1227, ptr %1228, ptr %1230
  %1232 = load i8, ptr %1231, align 1, !tbaa !5
  %1233 = zext i8 %1232 to i32
  store i32 %1233, ptr @zz_size, align 4, !tbaa !10
  %1234 = zext i8 %1232 to i64
  %1235 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1234
  %1236 = load ptr, ptr %1235, align 8, !tbaa !8
  store ptr %1236, ptr %1223, align 8, !tbaa !5
  %1237 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1238 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1239
  store ptr %1237, ptr %1240, align 8, !tbaa !8
  %1241 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1242 = getelementptr inbounds [2 x %struct.LIST], ptr %1241, i64 0, i64 1, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !5
  %1244 = icmp eq ptr %1243, %1241
  br i1 %1244, label %1245, label %1247

1245:                                             ; preds = %1222
  %1246 = call i32 @DisposeObject(ptr noundef nonnull %1241) #9
  br label %1247

1247:                                             ; preds = %1245, %1222
  store ptr %826, ptr @xx_link, align 8, !tbaa !8
  %1248 = getelementptr inbounds [2 x %struct.LIST], ptr %826, i64 0, i64 1, i32 1
  %1249 = load ptr, ptr %1248, align 8, !tbaa !5
  %1250 = icmp eq ptr %1249, %826
  br i1 %1250, label %1256, label %1251

1251:                                             ; preds = %1247
  store ptr %1249, ptr @zz_res, align 8, !tbaa !8
  %1252 = getelementptr inbounds [2 x %struct.LIST], ptr %826, i64 0, i64 1
  %1253 = load ptr, ptr %1252, align 8, !tbaa !5
  %1254 = getelementptr inbounds [2 x %struct.LIST], ptr %1249, i64 0, i64 1
  store ptr %1253, ptr %1254, align 8, !tbaa !5
  %1255 = getelementptr inbounds [2 x %struct.LIST], ptr %1253, i64 0, i64 1, i32 1
  store ptr %1249, ptr %1255, align 8, !tbaa !5
  store ptr %826, ptr %1248, align 8, !tbaa !5
  store ptr %826, ptr %1252, align 8, !tbaa !5
  br label %1256

1256:                                             ; preds = %1247, %1251
  %1257 = phi ptr [ %1249, %1251 ], [ null, %1247 ]
  store ptr %1257, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %826, ptr @zz_hold, align 8, !tbaa !8
  %1258 = load ptr, ptr %842, align 8, !tbaa !5
  %1259 = icmp eq ptr %1258, %826
  br i1 %1259, label %1268, label %1260

1260:                                             ; preds = %1256
  store ptr %1258, ptr @zz_res, align 8, !tbaa !8
  %1261 = load ptr, ptr %826, align 8, !tbaa !5
  store ptr %1261, ptr %1258, align 8, !tbaa !5
  %1262 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1263 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1264 = load ptr, ptr %1263, align 8, !tbaa !5
  %1265 = getelementptr inbounds %struct.LIST, ptr %1264, i64 0, i32 1
  store ptr %1262, ptr %1265, align 8, !tbaa !5
  %1266 = getelementptr inbounds %struct.LIST, ptr %1263, i64 0, i32 1
  store ptr %1263, ptr %1266, align 8, !tbaa !5
  store ptr %1263, ptr %1263, align 8, !tbaa !5
  %1267 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1268

1268:                                             ; preds = %1256, %1260
  %1269 = phi ptr [ %826, %1256 ], [ %1267, %1260 ]
  store ptr %1269, ptr @zz_hold, align 8, !tbaa !8
  %1270 = getelementptr inbounds %struct.word_type, ptr %1269, i64 0, i32 1
  %1271 = load i8, ptr %1270, align 8, !tbaa !5
  %1272 = add i8 %1271, -11
  %1273 = icmp ult i8 %1272, 2
  %1274 = getelementptr inbounds %struct.word_type, ptr %1269, i64 0, i32 1, i32 0, i32 1
  %1275 = zext i8 %1271 to i64
  %1276 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1275
  %1277 = select i1 %1273, ptr %1274, ptr %1276
  %1278 = load i8, ptr %1277, align 1, !tbaa !5
  %1279 = zext i8 %1278 to i32
  store i32 %1279, ptr @zz_size, align 4, !tbaa !10
  %1280 = zext i8 %1278 to i64
  %1281 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1280
  %1282 = load ptr, ptr %1281, align 8, !tbaa !8
  store ptr %1282, ptr %1269, align 8, !tbaa !5
  %1283 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1284 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1285
  store ptr %1283, ptr %1286, align 8, !tbaa !8
  %1287 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1288 = getelementptr inbounds [2 x %struct.LIST], ptr %1287, i64 0, i64 1, i32 1
  %1289 = load ptr, ptr %1288, align 8, !tbaa !5
  %1290 = icmp eq ptr %1289, %1287
  br i1 %1290, label %1291, label %1293

1291:                                             ; preds = %1268
  %1292 = call i32 @DisposeObject(ptr noundef nonnull %1287) #9
  br label %1293

1293:                                             ; preds = %1109, %1078, %1268, %1291, %1117, %1104, %1092, %1087, %1083
  %1294 = phi ptr [ %899, %1117 ], [ %899, %1104 ], [ %899, %1092 ], [ %899, %1087 ], [ %899, %1083 ], [ %899, %1078 ], [ %899, %1109 ], [ %1157, %1291 ], [ %1157, %1268 ]
  br i1 %820, label %1295, label %1333

1295:                                             ; preds = %1293
  %1296 = load ptr, ptr %6, align 8, !tbaa !8
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1333, label %1298

1298:                                             ; preds = %1295
  %1299 = getelementptr inbounds %struct.LIST, ptr %1296, i64 0, i32 1
  %1300 = load ptr, ptr %1299, align 8, !tbaa !5
  %1301 = icmp eq ptr %1300, %1296
  br i1 %1301, label %1330, label %1302

1302:                                             ; preds = %1298
  %1303 = getelementptr inbounds %struct.word_type, ptr %1300, i64 0, i32 1
  %1304 = load i8, ptr %1303, align 8, !tbaa !5
  %1305 = icmp eq i8 %1304, 0
  br i1 %1305, label %1309, label %1306

1306:                                             ; preds = %1302
  %1307 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1308 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1307, ptr noundef nonnull @.str.1) #9
  br label %1309

1309:                                             ; preds = %1306, %1302
  store ptr %1300, ptr @zz_res, align 8, !tbaa !8
  store ptr %1296, ptr @zz_hold, align 8, !tbaa !8
  %1310 = load ptr, ptr %1296, align 8, !tbaa !5
  store ptr %1310, ptr @zz_tmp, align 8, !tbaa !8
  %1311 = load ptr, ptr %1300, align 8, !tbaa !5
  store ptr %1311, ptr %1296, align 8, !tbaa !5
  %1312 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1313 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1314 = load ptr, ptr %1313, align 8, !tbaa !5
  %1315 = getelementptr inbounds %struct.LIST, ptr %1314, i64 0, i32 1
  store ptr %1312, ptr %1315, align 8, !tbaa !5
  %1316 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1316, ptr %1313, align 8, !tbaa !5
  %1317 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1318 = getelementptr inbounds %struct.LIST, ptr %1316, i64 0, i32 1
  store ptr %1317, ptr %1318, align 8, !tbaa !5
  store ptr %1300, ptr @zz_res, align 8, !tbaa !8
  store ptr %843, ptr @zz_hold, align 8, !tbaa !8
  %1319 = icmp eq ptr %843, null
  br i1 %1319, label %1330, label %1320

1320:                                             ; preds = %1309
  %1321 = load ptr, ptr %843, align 8, !tbaa !5
  store ptr %1321, ptr @zz_tmp, align 8, !tbaa !8
  %1322 = load ptr, ptr %1300, align 8, !tbaa !5
  store ptr %1322, ptr %843, align 8, !tbaa !5
  %1323 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1324 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1325 = load ptr, ptr %1324, align 8, !tbaa !5
  %1326 = getelementptr inbounds %struct.LIST, ptr %1325, i64 0, i32 1
  store ptr %1323, ptr %1326, align 8, !tbaa !5
  %1327 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1327, ptr %1324, align 8, !tbaa !5
  %1328 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1329 = getelementptr inbounds %struct.LIST, ptr %1327, i64 0, i32 1
  store ptr %1328, ptr %1329, align 8, !tbaa !5
  br label %1330

1330:                                             ; preds = %1309, %1320, %1298
  %1331 = load ptr, ptr %6, align 8, !tbaa !8
  %1332 = call i32 @DisposeObject(ptr noundef %1331) #9
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %1333

1333:                                             ; preds = %1293, %1295, %1330
  %1334 = getelementptr inbounds %struct.LIST, ptr %843, i64 0, i32 1
  %1335 = load ptr, ptr %1334, align 8, !tbaa !5
  %1336 = icmp eq ptr %1335, %552
  br i1 %1336, label %1337, label %825

1337:                                             ; preds = %1333, %819
  %1338 = getelementptr inbounds ptr, ptr %3, i64 1
  %1339 = load ptr, ptr %1338, align 8, !tbaa !8
  %1340 = icmp eq ptr %1339, null
  br i1 %1340, label %1341, label %1351

1341:                                             ; preds = %1337
  %1342 = load ptr, ptr %3, align 8, !tbaa !8
  %1343 = icmp eq ptr %1342, null
  br i1 %1343, label %1344, label %1351

1344:                                             ; preds = %1341
  %1345 = getelementptr inbounds ptr, ptr %4, i64 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !8
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1348, label %1351

1348:                                             ; preds = %1344
  %1349 = load ptr, ptr %4, align 8, !tbaa !8
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %5677, label %1351

1351:                                             ; preds = %1348, %1344, %1341, %1337
  %1352 = call fastcc ptr @insert_split(ptr noundef %552, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

1353:                                             ; preds = %35, %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  %1354 = load i16, ptr %2, align 4
  %1355 = and i16 %1354, -128
  store i16 %1355, ptr %15, align 4
  %1356 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %1357 = load i16, ptr %1356, align 2, !tbaa !5
  %1358 = getelementptr inbounds %struct.GAP, ptr %15, i64 0, i32 1
  store i16 %1357, ptr %1358, align 2, !tbaa !5
  %1359 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %1360 = load i8, ptr %1359, align 4
  %1361 = getelementptr inbounds %struct.STYLE, ptr %15, i64 0, i32 1
  %1362 = and i8 %1360, 127
  store i8 %1362, ptr %1361, align 4
  %1363 = trunc i16 %1354 to i8
  %1364 = trunc i16 %1355 to i8
  %1365 = load i16, ptr %1359, align 4
  %1366 = load i16, ptr %1361, align 4
  %1367 = and i16 %1366, 127
  %1368 = and i16 %1365, -128
  %1369 = or disjoint i16 %1367, %1368
  store i16 %1369, ptr %1361, align 4
  %1370 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %1371 = load i16, ptr %1370, align 2, !tbaa !5
  %1372 = getelementptr inbounds %struct.STYLE, ptr %15, i64 0, i32 1, i32 0, i32 1
  store i16 %1371, ptr %1372, align 2, !tbaa !5
  %1373 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %1374 = load i32, ptr %1373, align 4
  %1375 = getelementptr inbounds %struct.STYLE, ptr %15, i64 0, i32 4
  store i32 %1374, ptr %1375, align 4
  %1376 = and i8 %1363, 127
  %1377 = or disjoint i8 %1376, %1364
  %1378 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %1379 = getelementptr inbounds %struct.STYLE, ptr %15, i64 0, i32 2
  %1380 = load <2 x i16>, ptr %1378, align 4, !tbaa !18
  store <2 x i16> %1380, ptr %1379, align 4, !tbaa !18
  %1381 = icmp eq i8 %37, 18
  %1382 = getelementptr inbounds i8, ptr %0, i64 42
  %1383 = load i16, ptr %1382, align 2
  %1384 = and i16 %1383, -2049
  br i1 %1381, label %1385, label %1388

1385:                                             ; preds = %1353
  %1386 = shl i16 %1354, 10
  %1387 = and i16 %1386, 2048
  br label %1391

1388:                                             ; preds = %1353
  %1389 = shl i16 %1354, 11
  %1390 = and i16 %1389, 2048
  br label %1391

1391:                                             ; preds = %1388, %1385
  %1392 = phi i16 [ %1384, %1388 ], [ %1387, %1385 ]
  %1393 = phi i16 [ %1390, %1388 ], [ %1384, %1385 ]
  %1394 = phi i8 [ -2, %1388 ], [ -3, %1385 ]
  %1395 = phi i32 [ 0, %1388 ], [ 1, %1385 ]
  %1396 = or disjoint i16 %1393, %1392
  store i16 %1396, ptr %1382, align 2
  %1397 = and i8 %1377, %1394
  store i8 %1397, ptr %15, align 4
  %1398 = xor i32 %1395, 1
  %1399 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1400 = load ptr, ptr %1399, align 8, !tbaa !5
  %1401 = getelementptr inbounds %struct.LIST, ptr %1400, i64 0, i32 1
  %1402 = load ptr, ptr %1401, align 8, !tbaa !5
  %1403 = icmp eq ptr %1400, %0
  %1404 = icmp eq ptr %1402, %0
  %1405 = select i1 %1403, i1 true, i1 %1404
  br i1 %1405, label %1406, label %1409

1406:                                             ; preds = %1391
  %1407 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1408 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1407, ptr noundef nonnull @.str.56) #9
  br label %1409

1409:                                             ; preds = %1406, %1391
  br label %1410

1410:                                             ; preds = %1409, %1410
  %1411 = phi ptr [ %1413, %1410 ], [ %1400, %1409 ]
  %1412 = getelementptr inbounds [2 x %struct.LIST], ptr %1411, i64 0, i64 1
  %1413 = load ptr, ptr %1412, align 8, !tbaa !5
  %1414 = getelementptr inbounds %struct.word_type, ptr %1413, i64 0, i32 1
  %1415 = load i8, ptr %1414, align 8, !tbaa !5
  %1416 = icmp eq i8 %1415, 0
  br i1 %1416, label %1410, label %1417

1417:                                             ; preds = %1410, %1417
  %1418 = phi ptr [ %1420, %1417 ], [ %1402, %1410 ]
  %1419 = getelementptr inbounds [2 x %struct.LIST], ptr %1418, i64 0, i64 1
  %1420 = load ptr, ptr %1419, align 8, !tbaa !5
  %1421 = getelementptr inbounds %struct.word_type, ptr %1420, i64 0, i32 1
  %1422 = load i8, ptr %1421, align 8, !tbaa !5
  %1423 = icmp eq i8 %1422, 0
  br i1 %1423, label %1417, label %1424

1424:                                             ; preds = %1417
  %1425 = zext nneg i32 %1398 to i64
  %1426 = getelementptr inbounds ptr, ptr %3, i64 %1425
  %1427 = load ptr, ptr %1426, align 8, !tbaa !8
  %1428 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %1425
  store ptr %1427, ptr %1428, align 8, !tbaa !8
  %1429 = getelementptr inbounds ptr, ptr %4, i64 %1425
  %1430 = load ptr, ptr %1429, align 8, !tbaa !8
  %1431 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 %1425
  store ptr %1430, ptr %1431, align 8, !tbaa !8
  %1432 = zext nneg i32 %1395 to i64
  %1433 = getelementptr inbounds ptr, ptr %3, i64 %1432
  %1434 = load ptr, ptr %1433, align 8, !tbaa !8
  %1435 = icmp eq ptr %1434, null
  br i1 %1435, label %1456, label %1436

1436:                                             ; preds = %1424
  %1437 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %1438 = zext i8 %1437 to i32
  store i32 %1438, ptr @zz_size, align 4, !tbaa !10
  %1439 = zext i8 %1437 to i64
  %1440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1439
  %1441 = load ptr, ptr %1440, align 8, !tbaa !8
  %1442 = icmp eq ptr %1441, null
  br i1 %1442, label %1443, label %1446

1443:                                             ; preds = %1436
  %1444 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1445 = tail call ptr @GetMemory(i32 noundef %1438, ptr noundef %1444) #9
  store ptr %1445, ptr @zz_hold, align 8, !tbaa !8
  br label %1450

1446:                                             ; preds = %1436
  store ptr %1441, ptr @zz_hold, align 8, !tbaa !8
  %1447 = load ptr, ptr %1441, align 8, !tbaa !5
  %1448 = zext i8 %1437 to i64
  %1449 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1448
  store ptr %1447, ptr %1449, align 8, !tbaa !8
  br label %1450

1450:                                             ; preds = %1446, %1443
  %1451 = phi ptr [ %1441, %1446 ], [ %1445, %1443 ]
  %1452 = getelementptr inbounds %struct.word_type, ptr %1451, i64 0, i32 1
  store i8 -117, ptr %1452, align 8, !tbaa !5
  %1453 = getelementptr inbounds [2 x %struct.LIST], ptr %1451, i64 0, i64 1, i32 1
  store ptr %1451, ptr %1453, align 8, !tbaa !5
  %1454 = getelementptr inbounds [2 x %struct.LIST], ptr %1451, i64 0, i64 1
  store ptr %1451, ptr %1454, align 8, !tbaa !5
  %1455 = getelementptr inbounds %struct.LIST, ptr %1451, i64 0, i32 1
  store ptr %1451, ptr %1455, align 8, !tbaa !5
  store ptr %1451, ptr %1451, align 8, !tbaa !5
  br label %1456

1456:                                             ; preds = %1450, %1424
  %1457 = phi ptr [ %1451, %1450 ], [ null, %1424 ]
  %1458 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %1432
  store ptr %1457, ptr %1458, align 8, !tbaa !8
  %1459 = getelementptr inbounds %struct.gapobj_type, ptr %1420, i64 0, i32 3
  %1460 = load i16, ptr %1459, align 4
  %1461 = and i16 %1460, 512
  %1462 = icmp eq i16 %1461, 0
  br i1 %1462, label %1483, label %1463

1463:                                             ; preds = %1456
  %1464 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %1465 = zext i8 %1464 to i32
  store i32 %1465, ptr @zz_size, align 4, !tbaa !10
  %1466 = zext i8 %1464 to i64
  %1467 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1466
  %1468 = load ptr, ptr %1467, align 8, !tbaa !8
  %1469 = icmp eq ptr %1468, null
  br i1 %1469, label %1470, label %1473

1470:                                             ; preds = %1463
  %1471 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1472 = tail call ptr @GetMemory(i32 noundef %1465, ptr noundef %1471) #9
  store ptr %1472, ptr @zz_hold, align 8, !tbaa !8
  br label %1477

1473:                                             ; preds = %1463
  store ptr %1468, ptr @zz_hold, align 8, !tbaa !8
  %1474 = load ptr, ptr %1468, align 8, !tbaa !5
  %1475 = zext i8 %1464 to i64
  %1476 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1475
  store ptr %1474, ptr %1476, align 8, !tbaa !8
  br label %1477

1477:                                             ; preds = %1473, %1470
  %1478 = phi ptr [ %1468, %1473 ], [ %1472, %1470 ]
  %1479 = getelementptr inbounds %struct.word_type, ptr %1478, i64 0, i32 1
  store i8 -117, ptr %1479, align 8, !tbaa !5
  %1480 = getelementptr inbounds [2 x %struct.LIST], ptr %1478, i64 0, i64 1, i32 1
  store ptr %1478, ptr %1480, align 8, !tbaa !5
  %1481 = getelementptr inbounds [2 x %struct.LIST], ptr %1478, i64 0, i64 1
  store ptr %1478, ptr %1481, align 8, !tbaa !5
  %1482 = getelementptr inbounds %struct.LIST, ptr %1478, i64 0, i32 1
  store ptr %1478, ptr %1482, align 8, !tbaa !5
  store ptr %1478, ptr %1478, align 8, !tbaa !5
  br label %1483

1483:                                             ; preds = %1456, %1477
  %1484 = phi ptr [ %1478, %1477 ], [ null, %1456 ]
  %1485 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 %1432
  store ptr %1484, ptr %1485, align 8, !tbaa !8
  %1486 = icmp ne ptr %1457, null
  %1487 = zext i1 %1486 to i32
  %1488 = call ptr @Manifest(ptr noundef %1413, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %1489 = load i8, ptr %36, align 8, !tbaa !5
  %1490 = icmp eq i8 %1489, 19
  %1491 = icmp ne i32 %7, 0
  %1492 = and i1 %1491, %1490
  br i1 %1492, label %1493, label %1531

1493:                                             ; preds = %1483
  %1494 = load ptr, ptr %6, align 8, !tbaa !8
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %1531, label %1496

1496:                                             ; preds = %1493
  %1497 = getelementptr inbounds %struct.LIST, ptr %1494, i64 0, i32 1
  %1498 = load ptr, ptr %1497, align 8, !tbaa !5
  %1499 = icmp eq ptr %1498, %1494
  br i1 %1499, label %1528, label %1500

1500:                                             ; preds = %1496
  %1501 = getelementptr inbounds %struct.word_type, ptr %1498, i64 0, i32 1
  %1502 = load i8, ptr %1501, align 8, !tbaa !5
  %1503 = icmp eq i8 %1502, 0
  br i1 %1503, label %1507, label %1504

1504:                                             ; preds = %1500
  %1505 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1506 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1505, ptr noundef nonnull @.str.1) #9
  br label %1507

1507:                                             ; preds = %1504, %1500
  store ptr %1498, ptr @zz_res, align 8, !tbaa !8
  store ptr %1494, ptr @zz_hold, align 8, !tbaa !8
  %1508 = load ptr, ptr %1494, align 8, !tbaa !5
  store ptr %1508, ptr @zz_tmp, align 8, !tbaa !8
  %1509 = load ptr, ptr %1498, align 8, !tbaa !5
  store ptr %1509, ptr %1494, align 8, !tbaa !5
  %1510 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1511 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1512 = load ptr, ptr %1511, align 8, !tbaa !5
  %1513 = getelementptr inbounds %struct.LIST, ptr %1512, i64 0, i32 1
  store ptr %1510, ptr %1513, align 8, !tbaa !5
  %1514 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1514, ptr %1511, align 8, !tbaa !5
  %1515 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1516 = getelementptr inbounds %struct.LIST, ptr %1514, i64 0, i32 1
  store ptr %1515, ptr %1516, align 8, !tbaa !5
  store ptr %1498, ptr @zz_res, align 8, !tbaa !8
  store ptr %1400, ptr @zz_hold, align 8, !tbaa !8
  %1517 = icmp eq ptr %1400, null
  br i1 %1517, label %1528, label %1518

1518:                                             ; preds = %1507
  %1519 = load ptr, ptr %1400, align 8, !tbaa !5
  store ptr %1519, ptr @zz_tmp, align 8, !tbaa !8
  %1520 = load ptr, ptr %1498, align 8, !tbaa !5
  store ptr %1520, ptr %1400, align 8, !tbaa !5
  %1521 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1522 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1523 = load ptr, ptr %1522, align 8, !tbaa !5
  %1524 = getelementptr inbounds %struct.LIST, ptr %1523, i64 0, i32 1
  store ptr %1521, ptr %1524, align 8, !tbaa !5
  %1525 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1525, ptr %1522, align 8, !tbaa !5
  %1526 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1527 = getelementptr inbounds %struct.LIST, ptr %1525, i64 0, i32 1
  store ptr %1526, ptr %1527, align 8, !tbaa !5
  br label %1528

1528:                                             ; preds = %1518, %1507, %1496
  %1529 = load ptr, ptr %6, align 8, !tbaa !8
  %1530 = call i32 @DisposeObject(ptr noundef %1529) #9
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %1531

1531:                                             ; preds = %1483, %1493, %1528
  %1532 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 %1432
  %1533 = getelementptr inbounds ptr, ptr %4, i64 %1432
  %1534 = icmp eq ptr %1457, null
  br label %1535

1535:                                             ; preds = %1531, %2002
  %1536 = phi ptr [ %1402, %1531 ], [ %1662, %2002 ]
  %1537 = phi ptr [ %1420, %1531 ], [ %1672, %2002 ]
  %1538 = phi i32 [ %1487, %1531 ], [ %2003, %2002 ]
  %1539 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 1
  %1540 = load i8, ptr %1539, align 8, !tbaa !5
  %1541 = icmp eq i8 %1540, 1
  br i1 %1541, label %1545, label %1542

1542:                                             ; preds = %1535
  %1543 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1544 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1543, ptr noundef nonnull @.str.57) #9
  br label %1545

1545:                                             ; preds = %1542, %1535
  %1546 = getelementptr inbounds %struct.LIST, ptr %1537, i64 0, i32 1
  %1547 = load ptr, ptr %1546, align 8, !tbaa !5
  %1548 = icmp eq ptr %1547, %1537
  br i1 %1548, label %1549, label %1553

1549:                                             ; preds = %1545
  %1550 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1551 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1550, ptr noundef nonnull @.str.58) #9
  %1552 = load ptr, ptr %1546, align 8, !tbaa !5
  br label %1553

1553:                                             ; preds = %1549, %1545
  %1554 = phi ptr [ %1547, %1545 ], [ %1552, %1549 ]
  br label %1555

1555:                                             ; preds = %1553, %1555
  %1556 = phi ptr [ %1558, %1555 ], [ %1554, %1553 ]
  %1557 = getelementptr inbounds [2 x %struct.LIST], ptr %1556, i64 0, i64 1
  %1558 = load ptr, ptr %1557, align 8, !tbaa !5
  %1559 = getelementptr inbounds %struct.word_type, ptr %1558, i64 0, i32 1
  %1560 = load i8, ptr %1559, align 8, !tbaa !5
  %1561 = icmp eq i8 %1560, 0
  br i1 %1561, label %1555, label %1562

1562:                                             ; preds = %1555
  %1563 = call ptr @Manifest(ptr noundef nonnull %1558, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %1564 = call ptr @ReplaceWithTidy(ptr noundef %1563, i32 noundef 0)
  %1565 = getelementptr inbounds %struct.gapobj_type, ptr %1537, i64 0, i32 3
  call void @GetGap(ptr noundef %1564, ptr noundef nonnull %2, ptr noundef nonnull %1565, ptr noundef nonnull %14) #9
  %1566 = load ptr, ptr %1428, align 8, !tbaa !8
  %1567 = icmp eq ptr %1566, null
  br i1 %1567, label %1606, label %1568

1568:                                             ; preds = %1562
  %1569 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1570 = zext i8 %1569 to i32
  store i32 %1570, ptr @zz_size, align 4, !tbaa !10
  %1571 = zext i8 %1569 to i64
  %1572 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1571
  %1573 = load ptr, ptr %1572, align 8, !tbaa !8
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1575, label %1578

1575:                                             ; preds = %1568
  %1576 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1577 = call ptr @GetMemory(i32 noundef %1570, ptr noundef %1576) #9
  br label %1582

1578:                                             ; preds = %1568
  store ptr %1573, ptr @zz_hold, align 8, !tbaa !8
  %1579 = load ptr, ptr %1573, align 8, !tbaa !5
  %1580 = zext i8 %1569 to i64
  %1581 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1580
  store ptr %1579, ptr %1581, align 8, !tbaa !8
  br label %1582

1582:                                             ; preds = %1578, %1575
  %1583 = phi ptr [ %1573, %1578 ], [ %1577, %1575 ]
  %1584 = getelementptr inbounds %struct.word_type, ptr %1583, i64 0, i32 1
  store i8 0, ptr %1584, align 8, !tbaa !5
  %1585 = getelementptr inbounds [2 x %struct.LIST], ptr %1583, i64 0, i64 1, i32 1
  store ptr %1583, ptr %1585, align 8, !tbaa !5
  %1586 = getelementptr inbounds [2 x %struct.LIST], ptr %1583, i64 0, i64 1
  store ptr %1583, ptr %1586, align 8, !tbaa !5
  %1587 = getelementptr inbounds %struct.LIST, ptr %1583, i64 0, i32 1
  store ptr %1583, ptr %1587, align 8, !tbaa !5
  store ptr %1583, ptr %1583, align 8, !tbaa !5
  store ptr %1583, ptr @xx_link, align 8, !tbaa !8
  store ptr %1583, ptr @zz_res, align 8, !tbaa !8
  store ptr %1566, ptr @zz_hold, align 8, !tbaa !8
  %1588 = load ptr, ptr %1566, align 8, !tbaa !5
  store ptr %1588, ptr @zz_tmp, align 8, !tbaa !8
  %1589 = load ptr, ptr %1583, align 8, !tbaa !5
  store ptr %1589, ptr %1566, align 8, !tbaa !5
  %1590 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1591 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1592 = load ptr, ptr %1591, align 8, !tbaa !5
  %1593 = getelementptr inbounds %struct.LIST, ptr %1592, i64 0, i32 1
  store ptr %1590, ptr %1593, align 8, !tbaa !5
  %1594 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1594, ptr %1591, align 8, !tbaa !5
  %1595 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1596 = getelementptr inbounds %struct.LIST, ptr %1594, i64 0, i32 1
  store ptr %1595, ptr %1596, align 8, !tbaa !5
  %1597 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1597, ptr @zz_res, align 8, !tbaa !8
  store ptr %1537, ptr @zz_hold, align 8, !tbaa !8
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %1606, label %1599

1599:                                             ; preds = %1582
  %1600 = getelementptr inbounds [2 x %struct.LIST], ptr %1537, i64 0, i64 1
  %1601 = load ptr, ptr %1600, align 8, !tbaa !5
  store ptr %1601, ptr @zz_tmp, align 8, !tbaa !8
  %1602 = getelementptr inbounds [2 x %struct.LIST], ptr %1597, i64 0, i64 1
  %1603 = load ptr, ptr %1602, align 8, !tbaa !5
  store ptr %1603, ptr %1600, align 8, !tbaa !5
  %1604 = getelementptr inbounds [2 x %struct.LIST], ptr %1603, i64 0, i64 1, i32 1
  store ptr %1537, ptr %1604, align 8, !tbaa !5
  store ptr %1601, ptr %1602, align 8, !tbaa !5
  %1605 = getelementptr inbounds [2 x %struct.LIST], ptr %1601, i64 0, i64 1, i32 1
  store ptr %1597, ptr %1605, align 8, !tbaa !5
  br label %1606

1606:                                             ; preds = %1599, %1582, %1562
  %1607 = load ptr, ptr %1431, align 8, !tbaa !8
  %1608 = icmp eq ptr %1607, null
  br i1 %1608, label %1645, label %1609

1609:                                             ; preds = %1606
  %1610 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1611 = zext i8 %1610 to i32
  store i32 %1611, ptr @zz_size, align 4, !tbaa !10
  %1612 = zext i8 %1610 to i64
  %1613 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1612
  %1614 = load ptr, ptr %1613, align 8, !tbaa !8
  %1615 = icmp eq ptr %1614, null
  br i1 %1615, label %1616, label %1619

1616:                                             ; preds = %1609
  %1617 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1618 = call ptr @GetMemory(i32 noundef %1611, ptr noundef %1617) #9
  br label %1621

1619:                                             ; preds = %1609
  store ptr %1614, ptr @zz_hold, align 8, !tbaa !8
  %1620 = load ptr, ptr %1614, align 8, !tbaa !5
  store ptr %1620, ptr %1613, align 8, !tbaa !8
  br label %1621

1621:                                             ; preds = %1619, %1616
  %1622 = phi ptr [ %1614, %1619 ], [ %1618, %1616 ]
  %1623 = getelementptr inbounds %struct.word_type, ptr %1622, i64 0, i32 1
  store i8 0, ptr %1623, align 8, !tbaa !5
  %1624 = getelementptr inbounds [2 x %struct.LIST], ptr %1622, i64 0, i64 1, i32 1
  store ptr %1622, ptr %1624, align 8, !tbaa !5
  %1625 = getelementptr inbounds [2 x %struct.LIST], ptr %1622, i64 0, i64 1
  store ptr %1622, ptr %1625, align 8, !tbaa !5
  %1626 = getelementptr inbounds %struct.LIST, ptr %1622, i64 0, i32 1
  store ptr %1622, ptr %1626, align 8, !tbaa !5
  store ptr %1622, ptr %1622, align 8, !tbaa !5
  store ptr %1622, ptr @xx_link, align 8, !tbaa !8
  store ptr %1622, ptr @zz_res, align 8, !tbaa !8
  store ptr %1607, ptr @zz_hold, align 8, !tbaa !8
  %1627 = load ptr, ptr %1607, align 8, !tbaa !5
  store ptr %1627, ptr @zz_tmp, align 8, !tbaa !8
  %1628 = load ptr, ptr %1622, align 8, !tbaa !5
  store ptr %1628, ptr %1607, align 8, !tbaa !5
  %1629 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1630 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1631 = load ptr, ptr %1630, align 8, !tbaa !5
  %1632 = getelementptr inbounds %struct.LIST, ptr %1631, i64 0, i32 1
  store ptr %1629, ptr %1632, align 8, !tbaa !5
  %1633 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1633, ptr %1630, align 8, !tbaa !5
  %1634 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1635 = getelementptr inbounds %struct.LIST, ptr %1633, i64 0, i32 1
  store ptr %1634, ptr %1635, align 8, !tbaa !5
  %1636 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1636, ptr @zz_res, align 8, !tbaa !8
  store ptr %1537, ptr @zz_hold, align 8, !tbaa !8
  %1637 = icmp eq ptr %1636, null
  br i1 %1637, label %1645, label %1638

1638:                                             ; preds = %1621
  %1639 = getelementptr inbounds [2 x %struct.LIST], ptr %1537, i64 0, i64 1
  %1640 = load ptr, ptr %1639, align 8, !tbaa !5
  store ptr %1640, ptr @zz_tmp, align 8, !tbaa !8
  %1641 = getelementptr inbounds [2 x %struct.LIST], ptr %1636, i64 0, i64 1
  %1642 = load ptr, ptr %1641, align 8, !tbaa !5
  store ptr %1642, ptr %1639, align 8, !tbaa !5
  %1643 = getelementptr inbounds [2 x %struct.LIST], ptr %1642, i64 0, i64 1, i32 1
  store ptr %1537, ptr %1643, align 8, !tbaa !5
  store ptr %1640, ptr %1641, align 8, !tbaa !5
  %1644 = getelementptr inbounds [2 x %struct.LIST], ptr %1640, i64 0, i64 1, i32 1
  store ptr %1636, ptr %1644, align 8, !tbaa !5
  br label %1645

1645:                                             ; preds = %1638, %1621, %1606
  %1646 = getelementptr inbounds %struct.LIST, ptr %1536, i64 0, i32 1
  %1647 = load ptr, ptr %1646, align 8, !tbaa !5
  %1648 = icmp eq ptr %1647, %0
  br i1 %1648, label %1649, label %1652

1649:                                             ; preds = %1645
  %1650 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1651 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1650, ptr noundef nonnull @.str.59) #9
  br label %1652

1652:                                             ; preds = %1649, %1645
  br label %1653

1653:                                             ; preds = %1652, %1653
  %1654 = phi ptr [ %1656, %1653 ], [ %1647, %1652 ]
  %1655 = getelementptr inbounds [2 x %struct.LIST], ptr %1654, i64 0, i64 1
  %1656 = load ptr, ptr %1655, align 8, !tbaa !5
  %1657 = getelementptr inbounds %struct.word_type, ptr %1656, i64 0, i32 1
  %1658 = load i8, ptr %1657, align 8, !tbaa !5
  %1659 = icmp eq i8 %1658, 0
  br i1 %1659, label %1653, label %1660

1660:                                             ; preds = %1653
  %1661 = getelementptr inbounds %struct.LIST, ptr %1647, i64 0, i32 1
  %1662 = load ptr, ptr %1661, align 8, !tbaa !5
  %1663 = icmp eq ptr %1662, %0
  br i1 %1663, label %1671, label %1664

1664:                                             ; preds = %1660, %1664
  %1665 = phi ptr [ %1667, %1664 ], [ %1662, %1660 ]
  %1666 = getelementptr inbounds [2 x %struct.LIST], ptr %1665, i64 0, i64 1
  %1667 = load ptr, ptr %1666, align 8, !tbaa !5
  %1668 = getelementptr inbounds %struct.word_type, ptr %1667, i64 0, i32 1
  %1669 = load i8, ptr %1668, align 8, !tbaa !5
  %1670 = icmp eq i8 %1669, 0
  br i1 %1670, label %1664, label %1671

1671:                                             ; preds = %1664, %1660
  %1672 = phi ptr [ null, %1660 ], [ %1667, %1664 ]
  %1673 = load ptr, ptr %1532, align 8, !tbaa !8
  %1674 = icmp eq ptr %1673, null
  br i1 %1674, label %1693, label %1675

1675:                                             ; preds = %1671
  %1676 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %1677 = zext i8 %1676 to i32
  store i32 %1677, ptr @zz_size, align 4, !tbaa !10
  %1678 = zext i8 %1676 to i64
  %1679 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1678
  %1680 = load ptr, ptr %1679, align 8, !tbaa !8
  %1681 = icmp eq ptr %1680, null
  br i1 %1681, label %1682, label %1685

1682:                                             ; preds = %1675
  %1683 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1684 = call ptr @GetMemory(i32 noundef %1677, ptr noundef %1683) #9
  store ptr %1684, ptr @zz_hold, align 8, !tbaa !8
  br label %1687

1685:                                             ; preds = %1675
  store ptr %1680, ptr @zz_hold, align 8, !tbaa !8
  %1686 = load ptr, ptr %1680, align 8, !tbaa !5
  store ptr %1686, ptr %1679, align 8, !tbaa !8
  br label %1687

1687:                                             ; preds = %1685, %1682
  %1688 = phi ptr [ %1680, %1685 ], [ %1684, %1682 ]
  %1689 = getelementptr inbounds %struct.word_type, ptr %1688, i64 0, i32 1
  store i8 -117, ptr %1689, align 8, !tbaa !5
  %1690 = getelementptr inbounds [2 x %struct.LIST], ptr %1688, i64 0, i64 1, i32 1
  store ptr %1688, ptr %1690, align 8, !tbaa !5
  %1691 = getelementptr inbounds [2 x %struct.LIST], ptr %1688, i64 0, i64 1
  store ptr %1688, ptr %1691, align 8, !tbaa !5
  %1692 = getelementptr inbounds %struct.LIST, ptr %1688, i64 0, i32 1
  store ptr %1688, ptr %1692, align 8, !tbaa !5
  store ptr %1688, ptr %1688, align 8, !tbaa !5
  br label %1693

1693:                                             ; preds = %1687, %1671
  %1694 = phi ptr [ %1688, %1687 ], [ null, %1671 ]
  store ptr %1694, ptr %1458, align 8, !tbaa !8
  %1695 = icmp eq ptr %1672, null
  br i1 %1695, label %1719, label %1696

1696:                                             ; preds = %1693
  %1697 = getelementptr inbounds %struct.gapobj_type, ptr %1672, i64 0, i32 3
  %1698 = load i16, ptr %1697, align 4
  %1699 = and i16 %1698, 512
  %1700 = icmp eq i16 %1699, 0
  br i1 %1700, label %1740, label %1701

1701:                                             ; preds = %1696
  %1702 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %1703 = zext i8 %1702 to i32
  store i32 %1703, ptr @zz_size, align 4, !tbaa !10
  %1704 = zext i8 %1702 to i64
  %1705 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1704
  %1706 = load ptr, ptr %1705, align 8, !tbaa !8
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1708, label %1711

1708:                                             ; preds = %1701
  %1709 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1710 = call ptr @GetMemory(i32 noundef %1703, ptr noundef %1709) #9
  store ptr %1710, ptr @zz_hold, align 8, !tbaa !8
  br label %1713

1711:                                             ; preds = %1701
  store ptr %1706, ptr @zz_hold, align 8, !tbaa !8
  %1712 = load ptr, ptr %1706, align 8, !tbaa !5
  store ptr %1712, ptr %1705, align 8, !tbaa !8
  br label %1713

1713:                                             ; preds = %1711, %1708
  %1714 = phi ptr [ %1706, %1711 ], [ %1710, %1708 ]
  %1715 = getelementptr inbounds %struct.word_type, ptr %1714, i64 0, i32 1
  store i8 -117, ptr %1715, align 8, !tbaa !5
  %1716 = getelementptr inbounds [2 x %struct.LIST], ptr %1714, i64 0, i64 1, i32 1
  store ptr %1714, ptr %1716, align 8, !tbaa !5
  %1717 = getelementptr inbounds [2 x %struct.LIST], ptr %1714, i64 0, i64 1
  store ptr %1714, ptr %1717, align 8, !tbaa !5
  %1718 = getelementptr inbounds %struct.LIST, ptr %1714, i64 0, i32 1
  store ptr %1714, ptr %1718, align 8, !tbaa !5
  store ptr %1714, ptr %1714, align 8, !tbaa !5
  br label %1740

1719:                                             ; preds = %1693
  %1720 = load ptr, ptr %1533, align 8, !tbaa !8
  %1721 = icmp eq ptr %1720, null
  br i1 %1721, label %1740, label %1722

1722:                                             ; preds = %1719
  %1723 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %1724 = zext i8 %1723 to i32
  store i32 %1724, ptr @zz_size, align 4, !tbaa !10
  %1725 = zext i8 %1723 to i64
  %1726 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1725
  %1727 = load ptr, ptr %1726, align 8, !tbaa !8
  %1728 = icmp eq ptr %1727, null
  br i1 %1728, label %1729, label %1732

1729:                                             ; preds = %1722
  %1730 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1731 = call ptr @GetMemory(i32 noundef %1724, ptr noundef %1730) #9
  store ptr %1731, ptr @zz_hold, align 8, !tbaa !8
  br label %1734

1732:                                             ; preds = %1722
  store ptr %1727, ptr @zz_hold, align 8, !tbaa !8
  %1733 = load ptr, ptr %1727, align 8, !tbaa !5
  store ptr %1733, ptr %1726, align 8, !tbaa !8
  br label %1734

1734:                                             ; preds = %1732, %1729
  %1735 = phi ptr [ %1727, %1732 ], [ %1731, %1729 ]
  %1736 = getelementptr inbounds %struct.word_type, ptr %1735, i64 0, i32 1
  store i8 -117, ptr %1736, align 8, !tbaa !5
  %1737 = getelementptr inbounds [2 x %struct.LIST], ptr %1735, i64 0, i64 1, i32 1
  store ptr %1735, ptr %1737, align 8, !tbaa !5
  %1738 = getelementptr inbounds [2 x %struct.LIST], ptr %1735, i64 0, i64 1
  store ptr %1735, ptr %1738, align 8, !tbaa !5
  %1739 = getelementptr inbounds %struct.LIST, ptr %1735, i64 0, i32 1
  store ptr %1735, ptr %1739, align 8, !tbaa !5
  store ptr %1735, ptr %1735, align 8, !tbaa !5
  br label %1740

1740:                                             ; preds = %1719, %1696, %1734, %1713
  %1741 = phi ptr [ %1735, %1734 ], [ %1714, %1713 ], [ null, %1696 ], [ null, %1719 ]
  store ptr %1741, ptr %1532, align 8, !tbaa !8
  %1742 = call ptr @Manifest(ptr noundef %1656, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %1743 = load i8, ptr %36, align 8, !tbaa !5
  %1744 = icmp eq i8 %1743, 19
  %1745 = and i1 %1491, %1744
  br i1 %1745, label %1746, label %1784

1746:                                             ; preds = %1740
  %1747 = load ptr, ptr %6, align 8, !tbaa !8
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1784, label %1749

1749:                                             ; preds = %1746
  %1750 = getelementptr inbounds %struct.LIST, ptr %1747, i64 0, i32 1
  %1751 = load ptr, ptr %1750, align 8, !tbaa !5
  %1752 = icmp eq ptr %1751, %1747
  br i1 %1752, label %1781, label %1753

1753:                                             ; preds = %1749
  %1754 = getelementptr inbounds %struct.word_type, ptr %1751, i64 0, i32 1
  %1755 = load i8, ptr %1754, align 8, !tbaa !5
  %1756 = icmp eq i8 %1755, 0
  br i1 %1756, label %1760, label %1757

1757:                                             ; preds = %1753
  %1758 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1759 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1758, ptr noundef nonnull @.str.1) #9
  br label %1760

1760:                                             ; preds = %1757, %1753
  store ptr %1751, ptr @zz_res, align 8, !tbaa !8
  store ptr %1747, ptr @zz_hold, align 8, !tbaa !8
  %1761 = load ptr, ptr %1747, align 8, !tbaa !5
  store ptr %1761, ptr @zz_tmp, align 8, !tbaa !8
  %1762 = load ptr, ptr %1751, align 8, !tbaa !5
  store ptr %1762, ptr %1747, align 8, !tbaa !5
  %1763 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1764 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1765 = load ptr, ptr %1764, align 8, !tbaa !5
  %1766 = getelementptr inbounds %struct.LIST, ptr %1765, i64 0, i32 1
  store ptr %1763, ptr %1766, align 8, !tbaa !5
  %1767 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1767, ptr %1764, align 8, !tbaa !5
  %1768 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1769 = getelementptr inbounds %struct.LIST, ptr %1767, i64 0, i32 1
  store ptr %1768, ptr %1769, align 8, !tbaa !5
  store ptr %1751, ptr @zz_res, align 8, !tbaa !8
  store ptr %1647, ptr @zz_hold, align 8, !tbaa !8
  %1770 = icmp eq ptr %1647, null
  br i1 %1770, label %1781, label %1771

1771:                                             ; preds = %1760
  %1772 = load ptr, ptr %1647, align 8, !tbaa !5
  store ptr %1772, ptr @zz_tmp, align 8, !tbaa !8
  %1773 = load ptr, ptr %1751, align 8, !tbaa !5
  store ptr %1773, ptr %1647, align 8, !tbaa !5
  %1774 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1775 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1776 = load ptr, ptr %1775, align 8, !tbaa !5
  %1777 = getelementptr inbounds %struct.LIST, ptr %1776, i64 0, i32 1
  store ptr %1774, ptr %1777, align 8, !tbaa !5
  %1778 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1778, ptr %1775, align 8, !tbaa !5
  %1779 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1780 = getelementptr inbounds %struct.LIST, ptr %1778, i64 0, i32 1
  store ptr %1779, ptr %1780, align 8, !tbaa !5
  br label %1781

1781:                                             ; preds = %1771, %1760, %1749
  %1782 = load ptr, ptr %6, align 8, !tbaa !8
  %1783 = call i32 @DisposeObject(ptr noundef %1782) #9
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %1784

1784:                                             ; preds = %1781, %1746, %1740
  %1785 = icmp eq ptr %1694, null
  br i1 %1785, label %2002, label %1786

1786:                                             ; preds = %1784
  %1787 = getelementptr inbounds %struct.LIST, ptr %1694, i64 0, i32 1
  %1788 = load ptr, ptr %1787, align 8, !tbaa !5
  %1789 = icmp eq ptr %1788, %1694
  br i1 %1789, label %1790, label %1793

1790:                                             ; preds = %1786
  %1791 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1792 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1791, ptr noundef nonnull @.str.60) #9
  br label %1793

1793:                                             ; preds = %1790, %1786
  br i1 %1674, label %1798, label %1794

1794:                                             ; preds = %1793
  %1795 = getelementptr inbounds %struct.LIST, ptr %1673, i64 0, i32 1
  %1796 = load ptr, ptr %1795, align 8, !tbaa !5
  %1797 = icmp eq ptr %1796, %1673
  br i1 %1797, label %1798, label %1801

1798:                                             ; preds = %1794, %1793
  %1799 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1800 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1799, ptr noundef nonnull @.str.61) #9
  br label %1801

1801:                                             ; preds = %1798, %1794
  %1802 = icmp eq ptr %1741, null
  br i1 %1802, label %1830, label %1803

1803:                                             ; preds = %1801
  %1804 = getelementptr inbounds %struct.LIST, ptr %1741, i64 0, i32 1
  %1805 = load ptr, ptr %1804, align 8, !tbaa !5
  %1806 = icmp eq ptr %1805, %1741
  br i1 %1806, label %1807, label %1810

1807:                                             ; preds = %1803
  %1808 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1809 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1808, ptr noundef nonnull @.str.62) #9
  br label %1810

1810:                                             ; preds = %1807, %1803
  %1811 = load ptr, ptr %1694, align 8, !tbaa !5
  br label %1812

1812:                                             ; preds = %1812, %1810
  %1813 = phi ptr [ %1811, %1810 ], [ %1815, %1812 ]
  %1814 = getelementptr inbounds [2 x %struct.LIST], ptr %1813, i64 0, i64 1
  %1815 = load ptr, ptr %1814, align 8, !tbaa !5
  %1816 = getelementptr inbounds %struct.word_type, ptr %1815, i64 0, i32 1
  %1817 = load i8, ptr %1816, align 8, !tbaa !5
  %1818 = icmp eq i8 %1817, 0
  br i1 %1818, label %1812, label %1819

1819:                                             ; preds = %1812
  %1820 = load ptr, ptr %1741, align 8, !tbaa !5
  br label %1821

1821:                                             ; preds = %1821, %1819
  %1822 = phi ptr [ %1820, %1819 ], [ %1824, %1821 ]
  %1823 = getelementptr inbounds [2 x %struct.LIST], ptr %1822, i64 0, i64 1
  %1824 = load ptr, ptr %1823, align 8, !tbaa !5
  %1825 = getelementptr inbounds %struct.word_type, ptr %1824, i64 0, i32 1
  %1826 = load i8, ptr %1825, align 8, !tbaa !5
  %1827 = icmp eq i8 %1826, 0
  br i1 %1827, label %1821, label %1828

1828:                                             ; preds = %1821
  %1829 = icmp eq ptr %1815, %1824
  br label %1830

1830:                                             ; preds = %1828, %1801
  %1831 = phi i1 [ %1829, %1828 ], [ false, %1801 ]
  %1832 = getelementptr inbounds %struct.LIST, ptr %1673, i64 0, i32 1
  %1833 = load ptr, ptr %1787, align 8, !tbaa !5
  %1834 = load ptr, ptr %1832, align 8, !tbaa !5
  %1835 = icmp ne ptr %1834, %1673
  %1836 = icmp ne ptr %1833, %1694
  %1837 = select i1 %1835, i1 %1836, i1 false
  br i1 %1837, label %1838, label %1932

1838:                                             ; preds = %1830, %1906
  %1839 = phi ptr [ %1928, %1906 ], [ %1834, %1830 ]
  %1840 = phi ptr [ %1927, %1906 ], [ %1833, %1830 ]
  br label %1841

1841:                                             ; preds = %1838, %1841
  %1842 = phi ptr [ %1844, %1841 ], [ %1839, %1838 ]
  %1843 = getelementptr inbounds [2 x %struct.LIST], ptr %1842, i64 0, i64 1
  %1844 = load ptr, ptr %1843, align 8, !tbaa !5
  %1845 = getelementptr inbounds %struct.word_type, ptr %1844, i64 0, i32 1
  %1846 = load i8, ptr %1845, align 8, !tbaa !5
  %1847 = icmp eq i8 %1846, 0
  br i1 %1847, label %1841, label %1848

1848:                                             ; preds = %1841, %1848
  %1849 = phi ptr [ %1851, %1848 ], [ %1840, %1841 ]
  %1850 = getelementptr inbounds [2 x %struct.LIST], ptr %1849, i64 0, i64 1
  %1851 = load ptr, ptr %1850, align 8, !tbaa !5
  %1852 = getelementptr inbounds %struct.word_type, ptr %1851, i64 0, i32 1
  %1853 = load i8, ptr %1852, align 8, !tbaa !5
  %1854 = icmp eq i8 %1853, 0
  br i1 %1854, label %1848, label %1855

1855:                                             ; preds = %1848
  %1856 = icmp eq ptr %1844, %1851
  br i1 %1856, label %1857, label %1860

1857:                                             ; preds = %1855
  %1858 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1859 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1858, ptr noundef nonnull @.str.63) #9
  br label %1860

1860:                                             ; preds = %1857, %1855
  store ptr %1844, ptr @xx_res, align 8, !tbaa !8
  store ptr %1851, ptr @xx_hold, align 8, !tbaa !8
  %1861 = getelementptr inbounds [2 x %struct.LIST], ptr %1851, i64 0, i64 1, i32 1
  %1862 = load ptr, ptr %1861, align 8, !tbaa !5
  %1863 = icmp eq ptr %1862, %1851
  br i1 %1863, label %1864, label %1865

1864:                                             ; preds = %1860
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %1879

1865:                                             ; preds = %1860
  %1866 = getelementptr inbounds [2 x %struct.LIST], ptr %1851, i64 0, i64 1
  %1867 = load ptr, ptr %1866, align 8, !tbaa !5
  %1868 = getelementptr inbounds [2 x %struct.LIST], ptr %1862, i64 0, i64 1
  store ptr %1867, ptr %1868, align 8, !tbaa !5
  %1869 = getelementptr inbounds [2 x %struct.LIST], ptr %1867, i64 0, i64 1, i32 1
  store ptr %1862, ptr %1869, align 8, !tbaa !5
  store ptr %1851, ptr %1861, align 8, !tbaa !5
  store ptr %1851, ptr %1866, align 8, !tbaa !5
  store ptr %1862, ptr @xx_tmp, align 8, !tbaa !8
  %1870 = icmp eq ptr %1862, null
  %1871 = icmp eq ptr %1844, null
  %1872 = or i1 %1871, %1870
  br i1 %1872, label %1879, label %1873

1873:                                             ; preds = %1865
  %1874 = load ptr, ptr %1868, align 8, !tbaa !5
  store ptr %1874, ptr @zz_tmp, align 8, !tbaa !8
  %1875 = getelementptr inbounds [2 x %struct.LIST], ptr %1844, i64 0, i64 1
  %1876 = load ptr, ptr %1875, align 8, !tbaa !5
  store ptr %1876, ptr %1868, align 8, !tbaa !5
  %1877 = getelementptr inbounds [2 x %struct.LIST], ptr %1876, i64 0, i64 1, i32 1
  store ptr %1862, ptr %1877, align 8, !tbaa !5
  store ptr %1874, ptr %1875, align 8, !tbaa !5
  %1878 = getelementptr inbounds [2 x %struct.LIST], ptr %1874, i64 0, i64 1, i32 1
  store ptr %1844, ptr %1878, align 8, !tbaa !5
  br label %1879

1879:                                             ; preds = %1864, %1873, %1865
  store ptr %1851, ptr @zz_hold, align 8, !tbaa !8
  %1880 = getelementptr inbounds %struct.LIST, ptr %1851, i64 0, i32 1
  %1881 = load ptr, ptr %1880, align 8, !tbaa !5
  %1882 = icmp eq ptr %1881, %1851
  br i1 %1882, label %1883, label %1884

1883:                                             ; preds = %1879
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1844, ptr @zz_res, align 8, !tbaa !8
  br label %1906

1884:                                             ; preds = %1879
  store ptr %1881, ptr @zz_res, align 8, !tbaa !8
  %1885 = load ptr, ptr %1851, align 8, !tbaa !5
  store ptr %1885, ptr %1881, align 8, !tbaa !5
  %1886 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1887 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1888 = load ptr, ptr %1887, align 8, !tbaa !5
  %1889 = getelementptr inbounds %struct.LIST, ptr %1888, i64 0, i32 1
  store ptr %1886, ptr %1889, align 8, !tbaa !5
  %1890 = getelementptr inbounds %struct.LIST, ptr %1887, i64 0, i32 1
  store ptr %1887, ptr %1890, align 8, !tbaa !5
  store ptr %1887, ptr %1887, align 8, !tbaa !5
  %1891 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1892 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %1891, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1892, ptr @zz_res, align 8, !tbaa !8
  store ptr %1891, ptr @zz_hold, align 8, !tbaa !8
  %1893 = icmp eq ptr %1891, null
  %1894 = icmp eq ptr %1892, null
  %1895 = select i1 %1893, i1 true, i1 %1894
  br i1 %1895, label %1906, label %1896

1896:                                             ; preds = %1884
  %1897 = load ptr, ptr %1891, align 8, !tbaa !5
  store ptr %1897, ptr @zz_tmp, align 8, !tbaa !8
  %1898 = load ptr, ptr %1892, align 8, !tbaa !5
  store ptr %1898, ptr %1891, align 8, !tbaa !5
  %1899 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1900 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1901 = load ptr, ptr %1900, align 8, !tbaa !5
  %1902 = getelementptr inbounds %struct.LIST, ptr %1901, i64 0, i32 1
  store ptr %1899, ptr %1902, align 8, !tbaa !5
  %1903 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1903, ptr %1900, align 8, !tbaa !5
  %1904 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1905 = getelementptr inbounds %struct.LIST, ptr %1903, i64 0, i32 1
  store ptr %1904, ptr %1905, align 8, !tbaa !5
  br label %1906

1906:                                             ; preds = %1883, %1896, %1884
  %1907 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %1907, ptr @zz_hold, align 8, !tbaa !8
  %1908 = getelementptr inbounds %struct.word_type, ptr %1907, i64 0, i32 1
  %1909 = load i8, ptr %1908, align 8, !tbaa !5
  %1910 = add i8 %1909, -11
  %1911 = icmp ult i8 %1910, 2
  %1912 = getelementptr inbounds %struct.word_type, ptr %1907, i64 0, i32 1, i32 0, i32 1
  %1913 = zext i8 %1909 to i64
  %1914 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1913
  %1915 = select i1 %1911, ptr %1912, ptr %1914
  %1916 = load i8, ptr %1915, align 1, !tbaa !5
  %1917 = zext i8 %1916 to i32
  store i32 %1917, ptr @zz_size, align 4, !tbaa !10
  %1918 = zext i8 %1916 to i64
  %1919 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1918
  %1920 = load ptr, ptr %1919, align 8, !tbaa !8
  store ptr %1920, ptr %1907, align 8, !tbaa !5
  %1921 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1922 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1923 = sext i32 %1922 to i64
  %1924 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1923
  store ptr %1921, ptr %1924, align 8, !tbaa !8
  %1925 = getelementptr inbounds %struct.LIST, ptr %1840, i64 0, i32 1
  %1926 = getelementptr inbounds %struct.LIST, ptr %1839, i64 0, i32 1
  %1927 = load ptr, ptr %1925, align 8, !tbaa !5
  %1928 = load ptr, ptr %1926, align 8, !tbaa !5
  %1929 = icmp ne ptr %1928, %1673
  %1930 = icmp ne ptr %1927, %1694
  %1931 = select i1 %1929, i1 %1930, i1 false
  br i1 %1931, label %1838, label %1932

1932:                                             ; preds = %1906, %1830
  %1933 = phi ptr [ %1833, %1830 ], [ %1927, %1906 ]
  %1934 = phi ptr [ %1834, %1830 ], [ %1928, %1906 ]
  %1935 = phi i1 [ %1835, %1830 ], [ %1929, %1906 ]
  %1936 = icmp ne ptr %1933, %1694
  %1937 = icmp ne i32 %1538, 0
  %1938 = select i1 %1936, i1 %1937, i1 false
  br i1 %1938, label %1939, label %1966

1939:                                             ; preds = %1932
  %1940 = getelementptr inbounds %struct.word_type, ptr %1933, i64 0, i32 1
  %1941 = load i8, ptr %1940, align 8, !tbaa !5
  %1942 = icmp eq i8 %1941, 0
  br i1 %1942, label %1946, label %1943

1943:                                             ; preds = %1939
  %1944 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1945 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1944, ptr noundef nonnull @.str.1) #9
  br label %1946

1946:                                             ; preds = %1943, %1939
  store ptr %1933, ptr @zz_res, align 8, !tbaa !8
  store ptr %1694, ptr @zz_hold, align 8, !tbaa !8
  %1947 = load ptr, ptr %1694, align 8, !tbaa !5
  store ptr %1947, ptr @zz_tmp, align 8, !tbaa !8
  %1948 = load ptr, ptr %1933, align 8, !tbaa !5
  store ptr %1948, ptr %1694, align 8, !tbaa !5
  %1949 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1950 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1951 = load ptr, ptr %1950, align 8, !tbaa !5
  %1952 = getelementptr inbounds %struct.LIST, ptr %1951, i64 0, i32 1
  store ptr %1949, ptr %1952, align 8, !tbaa !5
  %1953 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1953, ptr %1950, align 8, !tbaa !5
  %1954 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1955 = getelementptr inbounds %struct.LIST, ptr %1953, i64 0, i32 1
  store ptr %1954, ptr %1955, align 8, !tbaa !5
  store ptr %1933, ptr @zz_res, align 8, !tbaa !8
  store ptr %1457, ptr @zz_hold, align 8, !tbaa !8
  br i1 %1534, label %1966, label %1956

1956:                                             ; preds = %1946
  %1957 = load ptr, ptr %1457, align 8, !tbaa !5
  store ptr %1957, ptr @zz_tmp, align 8, !tbaa !8
  %1958 = load ptr, ptr %1933, align 8, !tbaa !5
  store ptr %1958, ptr %1457, align 8, !tbaa !5
  %1959 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1960 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1961 = load ptr, ptr %1960, align 8, !tbaa !5
  %1962 = getelementptr inbounds %struct.LIST, ptr %1961, i64 0, i32 1
  store ptr %1959, ptr %1962, align 8, !tbaa !5
  %1963 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1963, ptr %1960, align 8, !tbaa !5
  %1964 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1965 = getelementptr inbounds %struct.LIST, ptr %1963, i64 0, i32 1
  store ptr %1964, ptr %1965, align 8, !tbaa !5
  br label %1966

1966:                                             ; preds = %1956, %1946, %1932
  %1967 = load ptr, ptr %1458, align 8, !tbaa !8
  %1968 = call i32 @DisposeObject(ptr noundef %1967) #9
  %1969 = and i1 %1831, %1935
  br i1 %1969, label %1970, label %1999

1970:                                             ; preds = %1966
  %1971 = getelementptr inbounds %struct.word_type, ptr %1934, i64 0, i32 1
  %1972 = load i8, ptr %1971, align 8, !tbaa !5
  %1973 = icmp eq i8 %1972, 0
  br i1 %1973, label %1977, label %1974

1974:                                             ; preds = %1970
  %1975 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1976 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1975, ptr noundef nonnull @.str.1) #9
  br label %1977

1977:                                             ; preds = %1974, %1970
  store ptr %1934, ptr @zz_res, align 8, !tbaa !8
  store ptr %1673, ptr @zz_hold, align 8, !tbaa !8
  br i1 %1674, label %1988, label %1978

1978:                                             ; preds = %1977
  %1979 = load ptr, ptr %1673, align 8, !tbaa !5
  store ptr %1979, ptr @zz_tmp, align 8, !tbaa !8
  %1980 = load ptr, ptr %1934, align 8, !tbaa !5
  store ptr %1980, ptr %1673, align 8, !tbaa !5
  %1981 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1982 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1983 = load ptr, ptr %1982, align 8, !tbaa !5
  %1984 = getelementptr inbounds %struct.LIST, ptr %1983, i64 0, i32 1
  store ptr %1981, ptr %1984, align 8, !tbaa !5
  %1985 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1985, ptr %1982, align 8, !tbaa !5
  %1986 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1987 = getelementptr inbounds %struct.LIST, ptr %1985, i64 0, i32 1
  store ptr %1986, ptr %1987, align 8, !tbaa !5
  br label %1988

1988:                                             ; preds = %1978, %1977
  store ptr %1934, ptr @zz_res, align 8, !tbaa !8
  store ptr %1741, ptr @zz_hold, align 8, !tbaa !8
  br i1 %1802, label %1999, label %1989

1989:                                             ; preds = %1988
  %1990 = load ptr, ptr %1741, align 8, !tbaa !5
  store ptr %1990, ptr @zz_tmp, align 8, !tbaa !8
  %1991 = load ptr, ptr %1934, align 8, !tbaa !5
  store ptr %1991, ptr %1741, align 8, !tbaa !5
  %1992 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1993 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1994 = load ptr, ptr %1993, align 8, !tbaa !5
  %1995 = getelementptr inbounds %struct.LIST, ptr %1994, i64 0, i32 1
  store ptr %1992, ptr %1995, align 8, !tbaa !5
  %1996 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1996, ptr %1993, align 8, !tbaa !5
  %1997 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1998 = getelementptr inbounds %struct.LIST, ptr %1996, i64 0, i32 1
  store ptr %1997, ptr %1998, align 8, !tbaa !5
  br label %1999

1999:                                             ; preds = %1989, %1988, %1966
  %2000 = call i32 @DisposeObject(ptr noundef %1673) #9
  %2001 = select i1 %1831, i32 %1538, i32 0
  br label %2002

2002:                                             ; preds = %1999, %1784
  %2003 = phi i32 [ %2001, %1999 ], [ 0, %1784 ]
  br i1 %1695, label %2004, label %1535

2004:                                             ; preds = %2002
  %2005 = getelementptr inbounds ptr, ptr %4, i64 %1432
  %2006 = load ptr, ptr %2005, align 8, !tbaa !8
  %2007 = icmp eq ptr %2006, null
  br i1 %2007, label %2071, label %2008

2008:                                             ; preds = %2004
  store ptr %2006, ptr @xx_res, align 8, !tbaa !8
  %2009 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 %1432
  %2010 = load ptr, ptr %2009, align 8, !tbaa !8
  store ptr %2010, ptr @xx_hold, align 8, !tbaa !8
  %2011 = getelementptr inbounds [2 x %struct.LIST], ptr %2010, i64 0, i64 1, i32 1
  %2012 = load ptr, ptr %2011, align 8, !tbaa !5
  %2013 = icmp eq ptr %2012, %2010
  br i1 %2013, label %2014, label %2015

2014:                                             ; preds = %2008
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %2025

2015:                                             ; preds = %2008
  store ptr %2012, ptr @zz_res, align 8, !tbaa !8
  %2016 = getelementptr inbounds [2 x %struct.LIST], ptr %2010, i64 0, i64 1
  %2017 = load ptr, ptr %2016, align 8, !tbaa !5
  %2018 = getelementptr inbounds [2 x %struct.LIST], ptr %2012, i64 0, i64 1
  store ptr %2017, ptr %2018, align 8, !tbaa !5
  %2019 = getelementptr inbounds [2 x %struct.LIST], ptr %2017, i64 0, i64 1, i32 1
  store ptr %2012, ptr %2019, align 8, !tbaa !5
  store ptr %2010, ptr %2011, align 8, !tbaa !5
  store ptr %2010, ptr %2016, align 8, !tbaa !5
  store ptr %2012, ptr @xx_tmp, align 8, !tbaa !8
  %2020 = load ptr, ptr %2018, align 8, !tbaa !5
  store ptr %2020, ptr @zz_tmp, align 8, !tbaa !8
  %2021 = getelementptr inbounds [2 x %struct.LIST], ptr %2006, i64 0, i64 1
  %2022 = load ptr, ptr %2021, align 8, !tbaa !5
  store ptr %2022, ptr %2018, align 8, !tbaa !5
  %2023 = getelementptr inbounds [2 x %struct.LIST], ptr %2022, i64 0, i64 1, i32 1
  store ptr %2012, ptr %2023, align 8, !tbaa !5
  store ptr %2020, ptr %2021, align 8, !tbaa !5
  %2024 = getelementptr inbounds [2 x %struct.LIST], ptr %2020, i64 0, i64 1, i32 1
  store ptr %2006, ptr %2024, align 8, !tbaa !5
  br label %2025

2025:                                             ; preds = %2014, %2015
  store ptr %2010, ptr @zz_hold, align 8, !tbaa !8
  %2026 = getelementptr inbounds %struct.LIST, ptr %2010, i64 0, i32 1
  %2027 = load ptr, ptr %2026, align 8, !tbaa !5
  %2028 = icmp eq ptr %2027, %2010
  br i1 %2028, label %2029, label %2030

2029:                                             ; preds = %2025
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2006, ptr @zz_res, align 8, !tbaa !8
  br label %2052

2030:                                             ; preds = %2025
  store ptr %2027, ptr @zz_res, align 8, !tbaa !8
  %2031 = load ptr, ptr %2010, align 8, !tbaa !5
  store ptr %2031, ptr %2027, align 8, !tbaa !5
  %2032 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2033 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2034 = load ptr, ptr %2033, align 8, !tbaa !5
  %2035 = getelementptr inbounds %struct.LIST, ptr %2034, i64 0, i32 1
  store ptr %2032, ptr %2035, align 8, !tbaa !5
  %2036 = getelementptr inbounds %struct.LIST, ptr %2033, i64 0, i32 1
  store ptr %2033, ptr %2036, align 8, !tbaa !5
  store ptr %2033, ptr %2033, align 8, !tbaa !5
  %2037 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2038 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %2037, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2038, ptr @zz_res, align 8, !tbaa !8
  store ptr %2037, ptr @zz_hold, align 8, !tbaa !8
  %2039 = icmp eq ptr %2037, null
  %2040 = icmp eq ptr %2038, null
  %2041 = select i1 %2039, i1 true, i1 %2040
  br i1 %2041, label %2052, label %2042

2042:                                             ; preds = %2030
  %2043 = load ptr, ptr %2037, align 8, !tbaa !5
  store ptr %2043, ptr @zz_tmp, align 8, !tbaa !8
  %2044 = load ptr, ptr %2038, align 8, !tbaa !5
  store ptr %2044, ptr %2037, align 8, !tbaa !5
  %2045 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2046 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2047 = load ptr, ptr %2046, align 8, !tbaa !5
  %2048 = getelementptr inbounds %struct.LIST, ptr %2047, i64 0, i32 1
  store ptr %2045, ptr %2048, align 8, !tbaa !5
  %2049 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2049, ptr %2046, align 8, !tbaa !5
  %2050 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2051 = getelementptr inbounds %struct.LIST, ptr %2049, i64 0, i32 1
  store ptr %2050, ptr %2051, align 8, !tbaa !5
  br label %2052

2052:                                             ; preds = %2029, %2042, %2030
  %2053 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %2053, ptr @zz_hold, align 8, !tbaa !8
  %2054 = getelementptr inbounds %struct.word_type, ptr %2053, i64 0, i32 1
  %2055 = load i8, ptr %2054, align 8, !tbaa !5
  %2056 = add i8 %2055, -11
  %2057 = icmp ult i8 %2056, 2
  %2058 = getelementptr inbounds %struct.word_type, ptr %2053, i64 0, i32 1, i32 0, i32 1
  %2059 = zext i8 %2055 to i64
  %2060 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2059
  %2061 = select i1 %2057, ptr %2058, ptr %2060
  %2062 = load i8, ptr %2061, align 1, !tbaa !5
  %2063 = zext i8 %2062 to i32
  store i32 %2063, ptr @zz_size, align 4, !tbaa !10
  %2064 = zext i8 %2062 to i64
  %2065 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2064
  %2066 = load ptr, ptr %2065, align 8, !tbaa !8
  store ptr %2066, ptr %2053, align 8, !tbaa !5
  %2067 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2068 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2069 = sext i32 %2068 to i64
  %2070 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2069
  store ptr %2067, ptr %2070, align 8, !tbaa !8
  br label %2071

2071:                                             ; preds = %2052, %2004
  %2072 = load ptr, ptr %1433, align 8, !tbaa !8
  %2073 = icmp eq ptr %2072, null
  br i1 %2073, label %2135, label %2074

2074:                                             ; preds = %2071
  store ptr %2072, ptr @xx_res, align 8, !tbaa !8
  store ptr %1457, ptr @xx_hold, align 8, !tbaa !8
  %2075 = getelementptr inbounds [2 x %struct.LIST], ptr %1457, i64 0, i64 1, i32 1
  %2076 = load ptr, ptr %2075, align 8, !tbaa !5
  %2077 = icmp eq ptr %2076, %1457
  br i1 %2077, label %2078, label %2079

2078:                                             ; preds = %2074
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %2089

2079:                                             ; preds = %2074
  store ptr %2076, ptr @zz_res, align 8, !tbaa !8
  %2080 = getelementptr inbounds [2 x %struct.LIST], ptr %1457, i64 0, i64 1
  %2081 = load ptr, ptr %2080, align 8, !tbaa !5
  %2082 = getelementptr inbounds [2 x %struct.LIST], ptr %2076, i64 0, i64 1
  store ptr %2081, ptr %2082, align 8, !tbaa !5
  %2083 = getelementptr inbounds [2 x %struct.LIST], ptr %2081, i64 0, i64 1, i32 1
  store ptr %2076, ptr %2083, align 8, !tbaa !5
  store ptr %1457, ptr %2075, align 8, !tbaa !5
  store ptr %1457, ptr %2080, align 8, !tbaa !5
  store ptr %2076, ptr @xx_tmp, align 8, !tbaa !8
  %2084 = load ptr, ptr %2082, align 8, !tbaa !5
  store ptr %2084, ptr @zz_tmp, align 8, !tbaa !8
  %2085 = getelementptr inbounds [2 x %struct.LIST], ptr %2072, i64 0, i64 1
  %2086 = load ptr, ptr %2085, align 8, !tbaa !5
  store ptr %2086, ptr %2082, align 8, !tbaa !5
  %2087 = getelementptr inbounds [2 x %struct.LIST], ptr %2086, i64 0, i64 1, i32 1
  store ptr %2076, ptr %2087, align 8, !tbaa !5
  store ptr %2084, ptr %2085, align 8, !tbaa !5
  %2088 = getelementptr inbounds [2 x %struct.LIST], ptr %2084, i64 0, i64 1, i32 1
  store ptr %2072, ptr %2088, align 8, !tbaa !5
  br label %2089

2089:                                             ; preds = %2078, %2079
  store ptr %1457, ptr @zz_hold, align 8, !tbaa !8
  %2090 = getelementptr inbounds %struct.LIST, ptr %1457, i64 0, i32 1
  %2091 = load ptr, ptr %2090, align 8, !tbaa !5
  %2092 = icmp eq ptr %2091, %1457
  br i1 %2092, label %2093, label %2094

2093:                                             ; preds = %2089
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2072, ptr @zz_res, align 8, !tbaa !8
  br label %2116

2094:                                             ; preds = %2089
  store ptr %2091, ptr @zz_res, align 8, !tbaa !8
  %2095 = load ptr, ptr %1457, align 8, !tbaa !5
  store ptr %2095, ptr %2091, align 8, !tbaa !5
  %2096 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2097 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2098 = load ptr, ptr %2097, align 8, !tbaa !5
  %2099 = getelementptr inbounds %struct.LIST, ptr %2098, i64 0, i32 1
  store ptr %2096, ptr %2099, align 8, !tbaa !5
  %2100 = getelementptr inbounds %struct.LIST, ptr %2097, i64 0, i32 1
  store ptr %2097, ptr %2100, align 8, !tbaa !5
  store ptr %2097, ptr %2097, align 8, !tbaa !5
  %2101 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2102 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %2101, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2102, ptr @zz_res, align 8, !tbaa !8
  store ptr %2101, ptr @zz_hold, align 8, !tbaa !8
  %2103 = icmp eq ptr %2101, null
  %2104 = icmp eq ptr %2102, null
  %2105 = select i1 %2103, i1 true, i1 %2104
  br i1 %2105, label %2116, label %2106

2106:                                             ; preds = %2094
  %2107 = load ptr, ptr %2101, align 8, !tbaa !5
  store ptr %2107, ptr @zz_tmp, align 8, !tbaa !8
  %2108 = load ptr, ptr %2102, align 8, !tbaa !5
  store ptr %2108, ptr %2101, align 8, !tbaa !5
  %2109 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2110 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2111 = load ptr, ptr %2110, align 8, !tbaa !5
  %2112 = getelementptr inbounds %struct.LIST, ptr %2111, i64 0, i32 1
  store ptr %2109, ptr %2112, align 8, !tbaa !5
  %2113 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2113, ptr %2110, align 8, !tbaa !5
  %2114 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2115 = getelementptr inbounds %struct.LIST, ptr %2113, i64 0, i32 1
  store ptr %2114, ptr %2115, align 8, !tbaa !5
  br label %2116

2116:                                             ; preds = %2093, %2106, %2094
  %2117 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %2117, ptr @zz_hold, align 8, !tbaa !8
  %2118 = getelementptr inbounds %struct.word_type, ptr %2117, i64 0, i32 1
  %2119 = load i8, ptr %2118, align 8, !tbaa !5
  %2120 = add i8 %2119, -11
  %2121 = icmp ult i8 %2120, 2
  %2122 = getelementptr inbounds %struct.word_type, ptr %2117, i64 0, i32 1, i32 0, i32 1
  %2123 = zext i8 %2119 to i64
  %2124 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2123
  %2125 = select i1 %2121, ptr %2122, ptr %2124
  %2126 = load i8, ptr %2125, align 1, !tbaa !5
  %2127 = zext i8 %2126 to i32
  store i32 %2127, ptr @zz_size, align 4, !tbaa !10
  %2128 = zext i8 %2126 to i64
  %2129 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2128
  %2130 = load ptr, ptr %2129, align 8, !tbaa !8
  store ptr %2130, ptr %2117, align 8, !tbaa !5
  %2131 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2132 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2133
  store ptr %2131, ptr %2134, align 8, !tbaa !8
  br label %2135

2135:                                             ; preds = %2071, %2116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  br label %5677

2136:                                             ; preds = %35, %35
  %2137 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2138 = load ptr, ptr %2137, align 8, !tbaa !5
  br label %2139

2139:                                             ; preds = %2139, %2136
  %2140 = phi ptr [ %2138, %2136 ], [ %2142, %2139 ]
  %2141 = getelementptr inbounds [2 x %struct.LIST], ptr %2140, i64 0, i64 1
  %2142 = load ptr, ptr %2141, align 8, !tbaa !5
  %2143 = getelementptr inbounds %struct.word_type, ptr %2142, i64 0, i32 1
  %2144 = load i8, ptr %2143, align 8, !tbaa !5
  %2145 = icmp eq i8 %2144, 0
  br i1 %2145, label %2139, label %2146

2146:                                             ; preds = %2139
  %2147 = tail call ptr @Manifest(ptr noundef nonnull %2142, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2148 = tail call ptr @ReplaceWithTidy(ptr noundef %2147, i32 noundef 0)
  call void @GetGap(ptr noundef %2148, ptr noundef %2, ptr noundef nonnull %23, ptr noundef nonnull %24) #9
  %2149 = load i32, ptr %24, align 4, !tbaa !10
  %2150 = icmp eq i32 %2149, 158
  br i1 %2150, label %2151, label %2159

2151:                                             ; preds = %2146
  %2152 = load i16, ptr %23, align 4
  %2153 = and i16 %2152, -1024
  %2154 = icmp eq i16 %2153, 9216
  br i1 %2154, label %2155, label %2159

2155:                                             ; preds = %2151
  %2156 = getelementptr inbounds %struct.GAP, ptr %23, i64 0, i32 1
  %2157 = load i16, ptr %2156, align 2, !tbaa !19
  %2158 = sext i16 %2157 to i32
  br label %2169

2159:                                             ; preds = %2151, %2146
  %2160 = getelementptr inbounds %struct.word_type, ptr %2148, i64 0, i32 1
  %2161 = load i8, ptr %36, align 8, !tbaa !5
  %2162 = zext i8 %2161 to i32
  %2163 = call ptr @Image(i32 noundef %2162) #9
  %2164 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 26, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %2160, ptr noundef %2163) #9
  %2165 = load i16, ptr %23, align 4
  %2166 = and i16 %2165, -7169
  %2167 = or disjoint i16 %2166, 1024
  store i16 %2167, ptr %23, align 4
  %2168 = getelementptr inbounds %struct.GAP, ptr %23, i64 0, i32 1
  store i16 2880, ptr %2168, align 2, !tbaa !19
  br label %2169

2169:                                             ; preds = %2155, %2159
  %2170 = phi i32 [ %2158, %2155 ], [ 2880, %2159 ]
  %2171 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  store i32 8388607, ptr %2171, align 8, !tbaa !5
  %2172 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 %2170, ptr %2172, align 4, !tbaa !5
  %2173 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %2173, align 8, !tbaa !5
  %2174 = load ptr, ptr %2137, align 8, !tbaa !5
  store ptr %2174, ptr @xx_link, align 8, !tbaa !8
  %2175 = getelementptr inbounds [2 x %struct.LIST], ptr %2174, i64 0, i64 1, i32 1
  %2176 = load ptr, ptr %2175, align 8, !tbaa !5
  %2177 = icmp eq ptr %2176, %2174
  br i1 %2177, label %2183, label %2178

2178:                                             ; preds = %2169
  store ptr %2176, ptr @zz_res, align 8, !tbaa !8
  %2179 = getelementptr inbounds [2 x %struct.LIST], ptr %2174, i64 0, i64 1
  %2180 = load ptr, ptr %2179, align 8, !tbaa !5
  %2181 = getelementptr inbounds [2 x %struct.LIST], ptr %2176, i64 0, i64 1
  store ptr %2180, ptr %2181, align 8, !tbaa !5
  %2182 = getelementptr inbounds [2 x %struct.LIST], ptr %2180, i64 0, i64 1, i32 1
  store ptr %2176, ptr %2182, align 8, !tbaa !5
  store ptr %2174, ptr %2175, align 8, !tbaa !5
  store ptr %2174, ptr %2179, align 8, !tbaa !5
  br label %2183

2183:                                             ; preds = %2169, %2178
  %2184 = phi ptr [ %2176, %2178 ], [ null, %2169 ]
  store ptr %2184, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2174, ptr @zz_hold, align 8, !tbaa !8
  %2185 = getelementptr inbounds %struct.LIST, ptr %2174, i64 0, i32 1
  %2186 = load ptr, ptr %2185, align 8, !tbaa !5
  %2187 = icmp eq ptr %2186, %2174
  br i1 %2187, label %2196, label %2188

2188:                                             ; preds = %2183
  store ptr %2186, ptr @zz_res, align 8, !tbaa !8
  %2189 = load ptr, ptr %2174, align 8, !tbaa !5
  store ptr %2189, ptr %2186, align 8, !tbaa !5
  %2190 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2191 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2192 = load ptr, ptr %2191, align 8, !tbaa !5
  %2193 = getelementptr inbounds %struct.LIST, ptr %2192, i64 0, i32 1
  store ptr %2190, ptr %2193, align 8, !tbaa !5
  %2194 = getelementptr inbounds %struct.LIST, ptr %2191, i64 0, i32 1
  store ptr %2191, ptr %2194, align 8, !tbaa !5
  store ptr %2191, ptr %2191, align 8, !tbaa !5
  %2195 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2196

2196:                                             ; preds = %2183, %2188
  %2197 = phi ptr [ %2174, %2183 ], [ %2195, %2188 ]
  store ptr %2197, ptr @zz_hold, align 8, !tbaa !8
  %2198 = getelementptr inbounds %struct.word_type, ptr %2197, i64 0, i32 1
  %2199 = load i8, ptr %2198, align 8, !tbaa !5
  %2200 = add i8 %2199, -11
  %2201 = icmp ult i8 %2200, 2
  %2202 = getelementptr inbounds %struct.word_type, ptr %2197, i64 0, i32 1, i32 0, i32 1
  %2203 = zext i8 %2199 to i64
  %2204 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2203
  %2205 = select i1 %2201, ptr %2202, ptr %2204
  %2206 = load i8, ptr %2205, align 1, !tbaa !5
  %2207 = zext i8 %2206 to i32
  store i32 %2207, ptr @zz_size, align 4, !tbaa !10
  %2208 = zext i8 %2206 to i64
  %2209 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2208
  %2210 = load ptr, ptr %2209, align 8, !tbaa !8
  store ptr %2210, ptr %2197, align 8, !tbaa !5
  %2211 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2212 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2213 = sext i32 %2212 to i64
  %2214 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2213
  store ptr %2211, ptr %2214, align 8, !tbaa !8
  %2215 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2216 = getelementptr inbounds [2 x %struct.LIST], ptr %2215, i64 0, i64 1, i32 1
  %2217 = load ptr, ptr %2216, align 8, !tbaa !5
  %2218 = icmp eq ptr %2217, %2215
  br i1 %2218, label %2298, label %2301

2219:                                             ; preds = %35, %35
  %2220 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2221 = load ptr, ptr %2220, align 8, !tbaa !5
  br label %2222

2222:                                             ; preds = %2222, %2219
  %2223 = phi ptr [ %2221, %2219 ], [ %2225, %2222 ]
  %2224 = getelementptr inbounds [2 x %struct.LIST], ptr %2223, i64 0, i64 1
  %2225 = load ptr, ptr %2224, align 8, !tbaa !5
  %2226 = getelementptr inbounds %struct.word_type, ptr %2225, i64 0, i32 1
  %2227 = load i8, ptr %2226, align 8, !tbaa !5
  %2228 = icmp eq i8 %2227, 0
  br i1 %2228, label %2222, label %2229

2229:                                             ; preds = %2222
  %2230 = tail call ptr @Manifest(ptr noundef nonnull %2225, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2231 = tail call ptr @ReplaceWithTidy(ptr noundef %2230, i32 noundef 0)
  %2232 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  call void @GetGap(ptr noundef %2231, ptr noundef %2, ptr noundef nonnull %2232, ptr noundef nonnull %24) #9
  %2233 = load i32, ptr %24, align 4, !tbaa !10
  %2234 = trunc i32 %2233 to i16
  %2235 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %2234, ptr %2235, align 2, !tbaa !5
  %2236 = load i16, ptr %2232, align 8
  %2237 = and i16 %2236, -8192
  %2238 = icmp eq i16 %2237, 8192
  br i1 %2238, label %2239, label %2242

2239:                                             ; preds = %2229
  %2240 = lshr i16 %2236, 10
  %2241 = and i16 %2240, 7
  switch i16 %2241, label %2242 [
    i16 1, label %2252
    i16 5, label %2252
  ]

2242:                                             ; preds = %2239, %2229
  %2243 = getelementptr inbounds %struct.word_type, ptr %2231, i64 0, i32 1
  %2244 = load i8, ptr %36, align 8, !tbaa !5
  %2245 = zext i8 %2244 to i32
  %2246 = call ptr @Image(i32 noundef %2245) #9
  %2247 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 27, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %2243, ptr noundef %2246) #9
  store i16 159, ptr %2235, align 2, !tbaa !5
  %2248 = load i16, ptr %2232, align 8
  %2249 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 0, ptr %2249, align 2, !tbaa !5
  %2250 = and i16 %2248, 1023
  %2251 = or disjoint i16 %2250, 9216
  store i16 %2251, ptr %2232, align 8
  br label %2252

2252:                                             ; preds = %2239, %2239, %2242
  %2253 = load ptr, ptr %2220, align 8, !tbaa !5
  store ptr %2253, ptr @xx_link, align 8, !tbaa !8
  %2254 = getelementptr inbounds [2 x %struct.LIST], ptr %2253, i64 0, i64 1, i32 1
  %2255 = load ptr, ptr %2254, align 8, !tbaa !5
  %2256 = icmp eq ptr %2255, %2253
  br i1 %2256, label %2262, label %2257

2257:                                             ; preds = %2252
  store ptr %2255, ptr @zz_res, align 8, !tbaa !8
  %2258 = getelementptr inbounds [2 x %struct.LIST], ptr %2253, i64 0, i64 1
  %2259 = load ptr, ptr %2258, align 8, !tbaa !5
  %2260 = getelementptr inbounds [2 x %struct.LIST], ptr %2255, i64 0, i64 1
  store ptr %2259, ptr %2260, align 8, !tbaa !5
  %2261 = getelementptr inbounds [2 x %struct.LIST], ptr %2259, i64 0, i64 1, i32 1
  store ptr %2255, ptr %2261, align 8, !tbaa !5
  store ptr %2253, ptr %2254, align 8, !tbaa !5
  store ptr %2253, ptr %2258, align 8, !tbaa !5
  br label %2262

2262:                                             ; preds = %2252, %2257
  %2263 = phi ptr [ %2255, %2257 ], [ null, %2252 ]
  store ptr %2263, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2253, ptr @zz_hold, align 8, !tbaa !8
  %2264 = getelementptr inbounds %struct.LIST, ptr %2253, i64 0, i32 1
  %2265 = load ptr, ptr %2264, align 8, !tbaa !5
  %2266 = icmp eq ptr %2265, %2253
  br i1 %2266, label %2275, label %2267

2267:                                             ; preds = %2262
  store ptr %2265, ptr @zz_res, align 8, !tbaa !8
  %2268 = load ptr, ptr %2253, align 8, !tbaa !5
  store ptr %2268, ptr %2265, align 8, !tbaa !5
  %2269 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2270 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2271 = load ptr, ptr %2270, align 8, !tbaa !5
  %2272 = getelementptr inbounds %struct.LIST, ptr %2271, i64 0, i32 1
  store ptr %2269, ptr %2272, align 8, !tbaa !5
  %2273 = getelementptr inbounds %struct.LIST, ptr %2270, i64 0, i32 1
  store ptr %2270, ptr %2273, align 8, !tbaa !5
  store ptr %2270, ptr %2270, align 8, !tbaa !5
  %2274 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2275

2275:                                             ; preds = %2262, %2267
  %2276 = phi ptr [ %2253, %2262 ], [ %2274, %2267 ]
  store ptr %2276, ptr @zz_hold, align 8, !tbaa !8
  %2277 = getelementptr inbounds %struct.word_type, ptr %2276, i64 0, i32 1
  %2278 = load i8, ptr %2277, align 8, !tbaa !5
  %2279 = add i8 %2278, -11
  %2280 = icmp ult i8 %2279, 2
  %2281 = getelementptr inbounds %struct.word_type, ptr %2276, i64 0, i32 1, i32 0, i32 1
  %2282 = zext i8 %2278 to i64
  %2283 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2282
  %2284 = select i1 %2280, ptr %2281, ptr %2283
  %2285 = load i8, ptr %2284, align 1, !tbaa !5
  %2286 = zext i8 %2285 to i32
  store i32 %2286, ptr @zz_size, align 4, !tbaa !10
  %2287 = zext i8 %2285 to i64
  %2288 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2287
  %2289 = load ptr, ptr %2288, align 8, !tbaa !8
  store ptr %2289, ptr %2276, align 8, !tbaa !5
  %2290 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2291 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2292 = sext i32 %2291 to i64
  %2293 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2292
  store ptr %2290, ptr %2293, align 8, !tbaa !8
  %2294 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2295 = getelementptr inbounds [2 x %struct.LIST], ptr %2294, i64 0, i64 1, i32 1
  %2296 = load ptr, ptr %2295, align 8, !tbaa !5
  %2297 = icmp eq ptr %2296, %2294
  br i1 %2297, label %2298, label %2301

2298:                                             ; preds = %2275, %2196
  %2299 = phi ptr [ %2215, %2196 ], [ %2294, %2275 ]
  %2300 = call i32 @DisposeObject(ptr noundef nonnull %2299) #9
  br label %2301

2301:                                             ; preds = %2298, %35, %35, %35, %35, %35, %35, %35, %35, %2275, %2196
  %2302 = load i8, ptr %36, align 8, !tbaa !5
  %2303 = add i8 %2302, -24
  %2304 = call i8 @llvm.fshl.i8(i8 %2303, i8 %2303, i8 7)
  %2305 = icmp ult i8 %2304, 9
  br i1 %2305, label %2309, label %2306

2306:                                             ; preds = %2309, %2301
  %2307 = icmp ne i8 %2302, 28
  %2308 = zext i1 %2307 to i32
  br label %2314

2309:                                             ; preds = %2301
  %2310 = zext nneg i8 %2304 to i16
  %2311 = lshr i16 451, %2310
  %2312 = and i16 %2311, 1
  %2313 = icmp eq i16 %2312, 0
  br i1 %2313, label %2306, label %2314

2314:                                             ; preds = %2309, %2306
  %2315 = phi i32 [ %2308, %2306 ], [ 0, %2309 ]
  %2316 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2317 = load ptr, ptr %2316, align 8, !tbaa !5
  br label %2318

2318:                                             ; preds = %2318, %2314
  %2319 = phi ptr [ %2317, %2314 ], [ %2321, %2318 ]
  %2320 = getelementptr inbounds [2 x %struct.LIST], ptr %2319, i64 0, i64 1
  %2321 = load ptr, ptr %2320, align 8, !tbaa !5
  %2322 = getelementptr inbounds %struct.word_type, ptr %2321, i64 0, i32 1
  %2323 = load i8, ptr %2322, align 8, !tbaa !5
  %2324 = icmp eq i8 %2323, 0
  br i1 %2324, label %2318, label %2325

2325:                                             ; preds = %2318
  %2326 = zext nneg i32 %2315 to i64
  %2327 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 %2326
  store ptr null, ptr %2327, align 8, !tbaa !8
  %2328 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 %2326
  store ptr null, ptr %2328, align 8, !tbaa !8
  %2329 = xor i32 %2315, 1
  %2330 = zext nneg i32 %2329 to i64
  %2331 = getelementptr inbounds ptr, ptr %3, i64 %2330
  %2332 = load ptr, ptr %2331, align 8, !tbaa !8
  %2333 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 %2330
  store ptr %2332, ptr %2333, align 8, !tbaa !8
  %2334 = getelementptr inbounds ptr, ptr %4, i64 %2330
  %2335 = load ptr, ptr %2334, align 8, !tbaa !8
  %2336 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 %2330
  store ptr %2335, ptr %2336, align 8, !tbaa !8
  %2337 = call ptr @Manifest(ptr noundef nonnull %2321, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2338 = getelementptr inbounds ptr, ptr %3, i64 %2326
  %2339 = load ptr, ptr %2338, align 8, !tbaa !8
  store ptr %2339, ptr %2328, align 8, !tbaa !8
  %2340 = getelementptr inbounds ptr, ptr %4, i64 %2326
  %2341 = load ptr, ptr %2340, align 8, !tbaa !8
  store ptr %2341, ptr %2327, align 8, !tbaa !8
  store ptr null, ptr %2336, align 8, !tbaa !8
  store ptr null, ptr %2333, align 8, !tbaa !8
  %2342 = load <2 x ptr>, ptr %16, align 16
  %2343 = load <2 x ptr>, ptr %17, align 16
  %2344 = shufflevector <2 x ptr> %2342, <2 x ptr> %2343, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2345 = freeze <4 x ptr> %2344
  %2346 = icmp ne <4 x ptr> %2345, zeroinitializer
  %2347 = bitcast <4 x i1> %2346 to i4
  %2348 = icmp eq i4 %2347, 0
  br i1 %2348, label %5677, label %2349

2349:                                             ; preds = %2325
  %2350 = call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %17)
  br label %5677

2351:                                             ; preds = %35, %35
  %2352 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2353 = load ptr, ptr %2352, align 8, !tbaa !5
  br label %2354

2354:                                             ; preds = %2354, %2351
  %2355 = phi ptr [ %2353, %2351 ], [ %2357, %2354 ]
  %2356 = getelementptr inbounds [2 x %struct.LIST], ptr %2355, i64 0, i64 1
  %2357 = load ptr, ptr %2356, align 8, !tbaa !5
  %2358 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 1
  %2359 = load i8, ptr %2358, align 8, !tbaa !5
  %2360 = icmp eq i8 %2359, 0
  br i1 %2360, label %2354, label %2361

2361:                                             ; preds = %2354
  %2362 = tail call ptr @Manifest(ptr noundef nonnull %2357, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2363 = tail call ptr @ReplaceWithTidy(ptr noundef %2362, i32 noundef 0)
  %2364 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  call void @GetGap(ptr noundef %2363, ptr noundef %2, ptr noundef nonnull %2364, ptr noundef nonnull %24) #9
  %2365 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2366

2366:                                             ; preds = %2366, %2361
  %2367 = phi ptr [ %2365, %2361 ], [ %2369, %2366 ]
  %2368 = getelementptr inbounds [2 x %struct.LIST], ptr %2367, i64 0, i64 1
  %2369 = load ptr, ptr %2368, align 8, !tbaa !5
  %2370 = getelementptr inbounds %struct.word_type, ptr %2369, i64 0, i32 1
  %2371 = load i8, ptr %2370, align 8, !tbaa !5
  %2372 = icmp eq i8 %2371, 0
  br i1 %2372, label %2366, label %2373

2373:                                             ; preds = %2366
  %2374 = call ptr @Manifest(ptr noundef nonnull %2369, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10)
  br label %5677

2375:                                             ; preds = %35, %35
  %2376 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  %2377 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2378 = zext i8 %2377 to i32
  store i32 %2378, ptr @zz_size, align 4, !tbaa !10
  %2379 = zext i8 %2377 to i64
  %2380 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2379
  %2381 = load ptr, ptr %2380, align 8, !tbaa !8
  %2382 = icmp eq ptr %2381, null
  br i1 %2382, label %2383, label %2386

2383:                                             ; preds = %2375
  %2384 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2385 = tail call ptr @GetMemory(i32 noundef %2378, ptr noundef %2384) #9
  br label %2390

2386:                                             ; preds = %2375
  store ptr %2381, ptr @zz_hold, align 8, !tbaa !8
  %2387 = load ptr, ptr %2381, align 8, !tbaa !5
  %2388 = zext i8 %2377 to i64
  %2389 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2388
  store ptr %2387, ptr %2389, align 8, !tbaa !8
  br label %2390

2390:                                             ; preds = %2383, %2386
  %2391 = phi ptr [ %2385, %2383 ], [ %2381, %2386 ]
  %2392 = getelementptr inbounds %struct.word_type, ptr %2391, i64 0, i32 1
  store i8 0, ptr %2392, align 8, !tbaa !5
  %2393 = getelementptr inbounds [2 x %struct.LIST], ptr %2391, i64 0, i64 1, i32 1
  store ptr %2391, ptr %2393, align 8, !tbaa !5
  %2394 = getelementptr inbounds [2 x %struct.LIST], ptr %2391, i64 0, i64 1
  store ptr %2391, ptr %2394, align 8, !tbaa !5
  %2395 = getelementptr inbounds %struct.LIST, ptr %2391, i64 0, i32 1
  store ptr %2391, ptr %2395, align 8, !tbaa !5
  store ptr %2391, ptr %2391, align 8, !tbaa !5
  store ptr %2391, ptr @xx_link, align 8, !tbaa !8
  store ptr %2391, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %2396 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %2396, ptr @zz_tmp, align 8, !tbaa !8
  %2397 = load ptr, ptr %2391, align 8, !tbaa !5
  store ptr %2397, ptr %0, align 8, !tbaa !5
  %2398 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2399 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2400 = load ptr, ptr %2399, align 8, !tbaa !5
  %2401 = getelementptr inbounds %struct.LIST, ptr %2400, i64 0, i32 1
  store ptr %2398, ptr %2401, align 8, !tbaa !5
  %2402 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2402, ptr %2399, align 8, !tbaa !5
  %2403 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2404 = getelementptr inbounds %struct.LIST, ptr %2402, i64 0, i32 1
  store ptr %2403, ptr %2404, align 8, !tbaa !5
  %2405 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2405, ptr @zz_res, align 8, !tbaa !8
  store ptr %2376, ptr @zz_hold, align 8, !tbaa !8
  %2406 = icmp eq ptr %2376, null
  %2407 = icmp eq ptr %2405, null
  %2408 = select i1 %2406, i1 true, i1 %2407
  br i1 %2408, label %2416, label %2409

2409:                                             ; preds = %2390
  %2410 = getelementptr inbounds [2 x %struct.LIST], ptr %2376, i64 0, i64 1
  %2411 = load ptr, ptr %2410, align 8, !tbaa !5
  store ptr %2411, ptr @zz_tmp, align 8, !tbaa !8
  %2412 = getelementptr inbounds [2 x %struct.LIST], ptr %2405, i64 0, i64 1
  %2413 = load ptr, ptr %2412, align 8, !tbaa !5
  store ptr %2413, ptr %2410, align 8, !tbaa !5
  %2414 = getelementptr inbounds [2 x %struct.LIST], ptr %2413, i64 0, i64 1, i32 1
  store ptr %2376, ptr %2414, align 8, !tbaa !5
  store ptr %2411, ptr %2412, align 8, !tbaa !5
  %2415 = getelementptr inbounds [2 x %struct.LIST], ptr %2411, i64 0, i64 1, i32 1
  store ptr %2405, ptr %2415, align 8, !tbaa !5
  br label %2416

2416:                                             ; preds = %2390, %2409
  %2417 = tail call ptr @Manifest(ptr noundef %2376, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10)
  br label %5677

2418:                                             ; preds = %35, %35
  %2419 = getelementptr inbounds ptr, ptr %3, i64 1
  %2420 = load ptr, ptr %2419, align 8, !tbaa !8
  %2421 = icmp eq ptr %2420, null
  br i1 %2421, label %2422, label %2432

2422:                                             ; preds = %2418
  %2423 = load ptr, ptr %3, align 8, !tbaa !8
  %2424 = icmp eq ptr %2423, null
  br i1 %2424, label %2425, label %2432

2425:                                             ; preds = %2422
  %2426 = getelementptr inbounds ptr, ptr %4, i64 1
  %2427 = load ptr, ptr %2426, align 8, !tbaa !8
  %2428 = icmp eq ptr %2427, null
  br i1 %2428, label %2429, label %2432

2429:                                             ; preds = %2425
  %2430 = load ptr, ptr %4, align 8, !tbaa !8
  %2431 = icmp eq ptr %2430, null
  br i1 %2431, label %5677, label %2432

2432:                                             ; preds = %2429, %2425, %2422, %2418
  %2433 = tail call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2434:                                             ; preds = %35
  %2435 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2436 = load ptr, ptr %2435, align 8, !tbaa !5
  br label %2437

2437:                                             ; preds = %2437, %2434
  %2438 = phi ptr [ %2436, %2434 ], [ %2440, %2437 ]
  %2439 = getelementptr inbounds [2 x %struct.LIST], ptr %2438, i64 0, i64 1
  %2440 = load ptr, ptr %2439, align 8, !tbaa !5
  %2441 = getelementptr inbounds %struct.word_type, ptr %2440, i64 0, i32 1
  %2442 = load i8, ptr %2441, align 8, !tbaa !5
  %2443 = icmp eq i8 %2442, 0
  br i1 %2443, label %2437, label %2444

2444:                                             ; preds = %2437
  %2445 = tail call ptr @Manifest(ptr noundef nonnull %2440, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2446 = tail call ptr @ReplaceWithTidy(ptr noundef %2445, i32 noundef 0)
  call void @GetGap(ptr noundef %2446, ptr noundef %2, ptr noundef nonnull %23, ptr noundef nonnull %24) #9
  %2447 = load i32, ptr %24, align 4, !tbaa !10
  %2448 = icmp eq i32 %2447, 158
  br i1 %2448, label %2449, label %2457

2449:                                             ; preds = %2444
  %2450 = load i16, ptr %23, align 4
  %2451 = and i16 %2450, -1024
  %2452 = icmp eq i16 %2451, 12288
  br i1 %2452, label %2453, label %2457

2453:                                             ; preds = %2449
  %2454 = getelementptr inbounds %struct.GAP, ptr %23, i64 0, i32 1
  %2455 = load i16, ptr %2454, align 2, !tbaa !19
  %2456 = sext i16 %2455 to i32
  br label %2467

2457:                                             ; preds = %2449, %2444
  %2458 = getelementptr inbounds %struct.word_type, ptr %2446, i64 0, i32 1
  %2459 = load i8, ptr %36, align 8, !tbaa !5
  %2460 = zext i8 %2459 to i32
  %2461 = call ptr @Image(i32 noundef %2460) #9
  %2462 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 28, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %2458, ptr noundef %2461) #9
  %2463 = load i16, ptr %23, align 4
  %2464 = and i16 %2463, -7169
  %2465 = or disjoint i16 %2464, 4096
  store i16 %2465, ptr %23, align 4
  %2466 = getelementptr inbounds %struct.GAP, ptr %23, i64 0, i32 1
  store i16 0, ptr %2466, align 2, !tbaa !19
  br label %2467

2467:                                             ; preds = %2453, %2457
  %2468 = phi i32 [ %2456, %2453 ], [ 0, %2457 ]
  %2469 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  store i32 %2468, ptr %2469, align 4, !tbaa !5
  %2470 = load ptr, ptr %2435, align 8, !tbaa !5
  store ptr %2470, ptr @xx_link, align 8, !tbaa !8
  %2471 = getelementptr inbounds [2 x %struct.LIST], ptr %2470, i64 0, i64 1, i32 1
  %2472 = load ptr, ptr %2471, align 8, !tbaa !5
  %2473 = icmp eq ptr %2472, %2470
  br i1 %2473, label %2479, label %2474

2474:                                             ; preds = %2467
  store ptr %2472, ptr @zz_res, align 8, !tbaa !8
  %2475 = getelementptr inbounds [2 x %struct.LIST], ptr %2470, i64 0, i64 1
  %2476 = load ptr, ptr %2475, align 8, !tbaa !5
  %2477 = getelementptr inbounds [2 x %struct.LIST], ptr %2472, i64 0, i64 1
  store ptr %2476, ptr %2477, align 8, !tbaa !5
  %2478 = getelementptr inbounds [2 x %struct.LIST], ptr %2476, i64 0, i64 1, i32 1
  store ptr %2472, ptr %2478, align 8, !tbaa !5
  store ptr %2470, ptr %2471, align 8, !tbaa !5
  store ptr %2470, ptr %2475, align 8, !tbaa !5
  br label %2479

2479:                                             ; preds = %2467, %2474
  %2480 = phi ptr [ %2472, %2474 ], [ null, %2467 ]
  store ptr %2480, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2470, ptr @zz_hold, align 8, !tbaa !8
  %2481 = getelementptr inbounds %struct.LIST, ptr %2470, i64 0, i32 1
  %2482 = load ptr, ptr %2481, align 8, !tbaa !5
  %2483 = icmp eq ptr %2482, %2470
  br i1 %2483, label %2492, label %2484

2484:                                             ; preds = %2479
  store ptr %2482, ptr @zz_res, align 8, !tbaa !8
  %2485 = load ptr, ptr %2470, align 8, !tbaa !5
  store ptr %2485, ptr %2482, align 8, !tbaa !5
  %2486 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2487 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2488 = load ptr, ptr %2487, align 8, !tbaa !5
  %2489 = getelementptr inbounds %struct.LIST, ptr %2488, i64 0, i32 1
  store ptr %2486, ptr %2489, align 8, !tbaa !5
  %2490 = getelementptr inbounds %struct.LIST, ptr %2487, i64 0, i32 1
  store ptr %2487, ptr %2490, align 8, !tbaa !5
  store ptr %2487, ptr %2487, align 8, !tbaa !5
  %2491 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2492

2492:                                             ; preds = %2479, %2484
  %2493 = phi ptr [ %2470, %2479 ], [ %2491, %2484 ]
  store ptr %2493, ptr @zz_hold, align 8, !tbaa !8
  %2494 = getelementptr inbounds %struct.word_type, ptr %2493, i64 0, i32 1
  %2495 = load i8, ptr %2494, align 8, !tbaa !5
  %2496 = add i8 %2495, -11
  %2497 = icmp ult i8 %2496, 2
  %2498 = getelementptr inbounds %struct.word_type, ptr %2493, i64 0, i32 1, i32 0, i32 1
  %2499 = zext i8 %2495 to i64
  %2500 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2499
  %2501 = select i1 %2497, ptr %2498, ptr %2500
  %2502 = load i8, ptr %2501, align 1, !tbaa !5
  %2503 = zext i8 %2502 to i32
  store i32 %2503, ptr @zz_size, align 4, !tbaa !10
  %2504 = zext i8 %2502 to i64
  %2505 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2504
  %2506 = load ptr, ptr %2505, align 8, !tbaa !8
  store ptr %2506, ptr %2493, align 8, !tbaa !5
  %2507 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2508 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2509 = sext i32 %2508 to i64
  %2510 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2509
  store ptr %2507, ptr %2510, align 8, !tbaa !8
  %2511 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2512 = getelementptr inbounds [2 x %struct.LIST], ptr %2511, i64 0, i64 1, i32 1
  %2513 = load ptr, ptr %2512, align 8, !tbaa !5
  %2514 = icmp eq ptr %2513, %2511
  br i1 %2514, label %2515, label %2517

2515:                                             ; preds = %2492
  %2516 = call i32 @DisposeObject(ptr noundef nonnull %2511) #9
  br label %2517

2517:                                             ; preds = %2515, %2492
  %2518 = load ptr, ptr %2435, align 8, !tbaa !5
  br label %2519

2519:                                             ; preds = %2519, %2517
  %2520 = phi ptr [ %2518, %2517 ], [ %2522, %2519 ]
  %2521 = getelementptr inbounds [2 x %struct.LIST], ptr %2520, i64 0, i64 1
  %2522 = load ptr, ptr %2521, align 8, !tbaa !5
  %2523 = getelementptr inbounds %struct.word_type, ptr %2522, i64 0, i32 1
  %2524 = load i8, ptr %2523, align 8, !tbaa !5
  %2525 = icmp eq i8 %2524, 0
  br i1 %2525, label %2519, label %2526

2526:                                             ; preds = %2519
  %2527 = call ptr @Manifest(ptr noundef nonnull %2522, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2528 = getelementptr inbounds ptr, ptr %3, i64 1
  %2529 = load ptr, ptr %2528, align 8, !tbaa !8
  %2530 = icmp eq ptr %2529, null
  br i1 %2530, label %2531, label %2541

2531:                                             ; preds = %2526
  %2532 = load ptr, ptr %3, align 8, !tbaa !8
  %2533 = icmp eq ptr %2532, null
  br i1 %2533, label %2534, label %2541

2534:                                             ; preds = %2531
  %2535 = getelementptr inbounds ptr, ptr %4, i64 1
  %2536 = load ptr, ptr %2535, align 8, !tbaa !8
  %2537 = icmp eq ptr %2536, null
  br i1 %2537, label %2538, label %2541

2538:                                             ; preds = %2534
  %2539 = load ptr, ptr %4, align 8, !tbaa !8
  %2540 = icmp eq ptr %2539, null
  br i1 %2540, label %5677, label %2541

2541:                                             ; preds = %2538, %2534, %2531, %2526
  %2542 = call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2543:                                             ; preds = %35
  %2544 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2545 = load ptr, ptr %2544, align 8, !tbaa !5
  br label %2546

2546:                                             ; preds = %2546, %2543
  %2547 = phi ptr [ %2545, %2543 ], [ %2549, %2546 ]
  %2548 = getelementptr inbounds [2 x %struct.LIST], ptr %2547, i64 0, i64 1
  %2549 = load ptr, ptr %2548, align 8, !tbaa !5
  %2550 = getelementptr inbounds %struct.word_type, ptr %2549, i64 0, i32 1
  %2551 = load i8, ptr %2550, align 8, !tbaa !5
  %2552 = icmp eq i8 %2551, 0
  br i1 %2552, label %2546, label %2553

2553:                                             ; preds = %2546
  %2554 = tail call ptr @Manifest(ptr noundef nonnull %2549, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2555 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2556

2556:                                             ; preds = %2556, %2553
  %2557 = phi ptr [ %2555, %2553 ], [ %2559, %2556 ]
  %2558 = getelementptr inbounds [2 x %struct.LIST], ptr %2557, i64 0, i64 1
  %2559 = load ptr, ptr %2558, align 8, !tbaa !5
  %2560 = getelementptr inbounds %struct.word_type, ptr %2559, i64 0, i32 1
  %2561 = load i8, ptr %2560, align 8, !tbaa !5
  %2562 = icmp eq i8 %2561, 0
  br i1 %2562, label %2556, label %2563

2563:                                             ; preds = %2556
  %2564 = tail call ptr @Manifest(ptr noundef nonnull %2559, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2565 = getelementptr inbounds ptr, ptr %3, i64 1
  %2566 = load ptr, ptr %2565, align 8, !tbaa !8
  %2567 = icmp eq ptr %2566, null
  br i1 %2567, label %2568, label %2578

2568:                                             ; preds = %2563
  %2569 = load ptr, ptr %3, align 8, !tbaa !8
  %2570 = icmp eq ptr %2569, null
  br i1 %2570, label %2571, label %2578

2571:                                             ; preds = %2568
  %2572 = getelementptr inbounds ptr, ptr %4, i64 1
  %2573 = load ptr, ptr %2572, align 8, !tbaa !8
  %2574 = icmp eq ptr %2573, null
  br i1 %2574, label %2575, label %2578

2575:                                             ; preds = %2571
  %2576 = load ptr, ptr %4, align 8, !tbaa !8
  %2577 = icmp eq ptr %2576, null
  br i1 %2577, label %5677, label %2578

2578:                                             ; preds = %2575, %2571, %2568, %2563
  %2579 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2580:                                             ; preds = %35, %35, %35, %35, %35, %35, %35
  %2581 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2582 = load ptr, ptr %2581, align 8, !tbaa !5
  br label %2583

2583:                                             ; preds = %2583, %2580
  %2584 = phi ptr [ %2582, %2580 ], [ %2586, %2583 ]
  %2585 = getelementptr inbounds [2 x %struct.LIST], ptr %2584, i64 0, i64 1
  %2586 = load ptr, ptr %2585, align 8, !tbaa !5
  %2587 = getelementptr inbounds %struct.word_type, ptr %2586, i64 0, i32 1
  %2588 = load i8, ptr %2587, align 8, !tbaa !5
  %2589 = icmp eq i8 %2588, 0
  br i1 %2589, label %2583, label %2590

2590:                                             ; preds = %2583
  %2591 = tail call ptr @Manifest(ptr noundef nonnull %2586, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2592 = getelementptr inbounds ptr, ptr %3, i64 1
  %2593 = load ptr, ptr %2592, align 8, !tbaa !8
  %2594 = icmp eq ptr %2593, null
  br i1 %2594, label %2595, label %2605

2595:                                             ; preds = %2590
  %2596 = load ptr, ptr %3, align 8, !tbaa !8
  %2597 = icmp eq ptr %2596, null
  br i1 %2597, label %2598, label %2605

2598:                                             ; preds = %2595
  %2599 = getelementptr inbounds ptr, ptr %4, i64 1
  %2600 = load ptr, ptr %2599, align 8, !tbaa !8
  %2601 = icmp eq ptr %2600, null
  br i1 %2601, label %2602, label %2605

2602:                                             ; preds = %2598
  %2603 = load ptr, ptr %4, align 8, !tbaa !8
  %2604 = icmp eq ptr %2603, null
  br i1 %2604, label %5677, label %2605

2605:                                             ; preds = %2602, %2598, %2595, %2590
  %2606 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2607:                                             ; preds = %35
  %2608 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2609 = load ptr, ptr %2608, align 8, !tbaa !5
  br label %2610

2610:                                             ; preds = %2610, %2607
  %2611 = phi ptr [ %2609, %2607 ], [ %2613, %2610 ]
  %2612 = getelementptr inbounds [2 x %struct.LIST], ptr %2611, i64 0, i64 1
  %2613 = load ptr, ptr %2612, align 8, !tbaa !5
  %2614 = getelementptr inbounds %struct.word_type, ptr %2613, i64 0, i32 1
  %2615 = load i8, ptr %2614, align 8, !tbaa !5
  %2616 = icmp eq i8 %2615, 0
  br i1 %2616, label %2610, label %2617

2617:                                             ; preds = %2610
  %2618 = tail call ptr @Manifest(ptr noundef nonnull %2613, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2619 = tail call ptr @ReplaceWithTidy(ptr noundef %2618, i32 noundef 0)
  %2620 = getelementptr inbounds %struct.word_type, ptr %2619, i64 0, i32 1
  %2621 = load i8, ptr %2620, align 8, !tbaa !5
  %2622 = add i8 %2621, -11
  %2623 = icmp ult i8 %2622, 2
  br i1 %2623, label %2624, label %2631

2624:                                             ; preds = %2617
  %2625 = getelementptr inbounds %struct.word_type, ptr %2619, i64 0, i32 4
  %2626 = load i8, ptr %2625, align 1
  %2627 = icmp eq i8 %2626, 0
  br i1 %2627, label %2628, label %2633

2628:                                             ; preds = %2624
  %2629 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %2630 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 0, ptr %2630, align 8, !tbaa !5
  store i32 0, ptr %2629, align 8, !tbaa !5
  br label %2667

2631:                                             ; preds = %2617
  %2632 = icmp eq i8 %2621, 17
  br i1 %2632, label %2639, label %2633

2633:                                             ; preds = %2624, %2631
  %2634 = tail call fastcc float @GetScaleFactor(ptr noundef nonnull %2619)
  %2635 = fmul float %2634, 1.280000e+02
  %2636 = fptosi float %2635 to i32
  %2637 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %2638 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 %2636, ptr %2638, align 8, !tbaa !5
  store i32 %2636, ptr %2637, align 8, !tbaa !5
  br label %2667

2639:                                             ; preds = %2631
  %2640 = getelementptr inbounds %struct.LIST, ptr %2619, i64 0, i32 1
  %2641 = load ptr, ptr %2640, align 8, !tbaa !5
  br label %2642

2642:                                             ; preds = %2642, %2639
  %2643 = phi ptr [ %2641, %2639 ], [ %2645, %2642 ]
  %2644 = getelementptr inbounds [2 x %struct.LIST], ptr %2643, i64 0, i64 1
  %2645 = load ptr, ptr %2644, align 8, !tbaa !5
  %2646 = getelementptr inbounds %struct.word_type, ptr %2645, i64 0, i32 1
  %2647 = load i8, ptr %2646, align 8, !tbaa !5
  %2648 = icmp eq i8 %2647, 0
  br i1 %2648, label %2642, label %2649

2649:                                             ; preds = %2642
  %2650 = tail call fastcc float @GetScaleFactor(ptr noundef nonnull %2645)
  %2651 = fmul float %2650, 1.280000e+02
  %2652 = fptosi float %2651 to i32
  %2653 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  store i32 %2652, ptr %2653, align 8, !tbaa !5
  %2654 = load ptr, ptr %2619, align 8, !tbaa !5
  br label %2655

2655:                                             ; preds = %2655, %2649
  %2656 = phi ptr [ %2654, %2649 ], [ %2658, %2655 ]
  %2657 = getelementptr inbounds [2 x %struct.LIST], ptr %2656, i64 0, i64 1
  %2658 = load ptr, ptr %2657, align 8, !tbaa !5
  %2659 = getelementptr inbounds %struct.word_type, ptr %2658, i64 0, i32 1
  %2660 = load i8, ptr %2659, align 8, !tbaa !5
  %2661 = icmp eq i8 %2660, 0
  br i1 %2661, label %2655, label %2662

2662:                                             ; preds = %2655
  %2663 = tail call fastcc float @GetScaleFactor(ptr noundef nonnull %2658)
  %2664 = fmul float %2663, 1.280000e+02
  %2665 = fptosi float %2664 to i32
  %2666 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 %2665, ptr %2666, align 8, !tbaa !5
  br label %2667

2667:                                             ; preds = %2633, %2662, %2628
  %2668 = load ptr, ptr %2608, align 8, !tbaa !5
  store ptr %2668, ptr @xx_link, align 8, !tbaa !8
  %2669 = getelementptr inbounds [2 x %struct.LIST], ptr %2668, i64 0, i64 1, i32 1
  %2670 = load ptr, ptr %2669, align 8, !tbaa !5
  %2671 = icmp eq ptr %2670, %2668
  br i1 %2671, label %2677, label %2672

2672:                                             ; preds = %2667
  store ptr %2670, ptr @zz_res, align 8, !tbaa !8
  %2673 = getelementptr inbounds [2 x %struct.LIST], ptr %2668, i64 0, i64 1
  %2674 = load ptr, ptr %2673, align 8, !tbaa !5
  %2675 = getelementptr inbounds [2 x %struct.LIST], ptr %2670, i64 0, i64 1
  store ptr %2674, ptr %2675, align 8, !tbaa !5
  %2676 = getelementptr inbounds [2 x %struct.LIST], ptr %2674, i64 0, i64 1, i32 1
  store ptr %2670, ptr %2676, align 8, !tbaa !5
  store ptr %2668, ptr %2669, align 8, !tbaa !5
  store ptr %2668, ptr %2673, align 8, !tbaa !5
  br label %2677

2677:                                             ; preds = %2667, %2672
  %2678 = phi ptr [ %2670, %2672 ], [ null, %2667 ]
  store ptr %2678, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2668, ptr @zz_hold, align 8, !tbaa !8
  %2679 = getelementptr inbounds %struct.LIST, ptr %2668, i64 0, i32 1
  %2680 = load ptr, ptr %2679, align 8, !tbaa !5
  %2681 = icmp eq ptr %2680, %2668
  br i1 %2681, label %2690, label %2682

2682:                                             ; preds = %2677
  store ptr %2680, ptr @zz_res, align 8, !tbaa !8
  %2683 = load ptr, ptr %2668, align 8, !tbaa !5
  store ptr %2683, ptr %2680, align 8, !tbaa !5
  %2684 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2685 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2686 = load ptr, ptr %2685, align 8, !tbaa !5
  %2687 = getelementptr inbounds %struct.LIST, ptr %2686, i64 0, i32 1
  store ptr %2684, ptr %2687, align 8, !tbaa !5
  %2688 = getelementptr inbounds %struct.LIST, ptr %2685, i64 0, i32 1
  store ptr %2685, ptr %2688, align 8, !tbaa !5
  store ptr %2685, ptr %2685, align 8, !tbaa !5
  %2689 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2690

2690:                                             ; preds = %2677, %2682
  %2691 = phi ptr [ %2668, %2677 ], [ %2689, %2682 ]
  store ptr %2691, ptr @zz_hold, align 8, !tbaa !8
  %2692 = getelementptr inbounds %struct.word_type, ptr %2691, i64 0, i32 1
  %2693 = load i8, ptr %2692, align 8, !tbaa !5
  %2694 = add i8 %2693, -11
  %2695 = icmp ult i8 %2694, 2
  %2696 = getelementptr inbounds %struct.word_type, ptr %2691, i64 0, i32 1, i32 0, i32 1
  %2697 = zext i8 %2693 to i64
  %2698 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2697
  %2699 = select i1 %2695, ptr %2696, ptr %2698
  %2700 = load i8, ptr %2699, align 1, !tbaa !5
  %2701 = zext i8 %2700 to i32
  store i32 %2701, ptr @zz_size, align 4, !tbaa !10
  %2702 = zext i8 %2700 to i64
  %2703 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2702
  %2704 = load ptr, ptr %2703, align 8, !tbaa !8
  store ptr %2704, ptr %2691, align 8, !tbaa !5
  %2705 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2706 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2707 = sext i32 %2706 to i64
  %2708 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2707
  store ptr %2705, ptr %2708, align 8, !tbaa !8
  %2709 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2710 = getelementptr inbounds [2 x %struct.LIST], ptr %2709, i64 0, i64 1, i32 1
  %2711 = load ptr, ptr %2710, align 8, !tbaa !5
  %2712 = icmp eq ptr %2711, %2709
  br i1 %2712, label %2713, label %2715

2713:                                             ; preds = %2690
  %2714 = tail call i32 @DisposeObject(ptr noundef nonnull %2709) #9
  br label %2715

2715:                                             ; preds = %2713, %2690
  %2716 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2717

2717:                                             ; preds = %2717, %2715
  %2718 = phi ptr [ %2716, %2715 ], [ %2720, %2717 ]
  %2719 = getelementptr inbounds [2 x %struct.LIST], ptr %2718, i64 0, i64 1
  %2720 = load ptr, ptr %2719, align 8, !tbaa !5
  %2721 = getelementptr inbounds %struct.word_type, ptr %2720, i64 0, i32 1
  %2722 = load i8, ptr %2721, align 8, !tbaa !5
  %2723 = icmp eq i8 %2722, 0
  br i1 %2723, label %2717, label %2724

2724:                                             ; preds = %2717
  %2725 = tail call ptr @Manifest(ptr noundef nonnull %2720, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2726 = getelementptr inbounds ptr, ptr %3, i64 1
  %2727 = load ptr, ptr %2726, align 8, !tbaa !8
  %2728 = icmp eq ptr %2727, null
  br i1 %2728, label %2729, label %2739

2729:                                             ; preds = %2724
  %2730 = load ptr, ptr %3, align 8, !tbaa !8
  %2731 = icmp eq ptr %2730, null
  br i1 %2731, label %2732, label %2739

2732:                                             ; preds = %2729
  %2733 = getelementptr inbounds ptr, ptr %4, i64 1
  %2734 = load ptr, ptr %2733, align 8, !tbaa !8
  %2735 = icmp eq ptr %2734, null
  br i1 %2735, label %2736, label %2739

2736:                                             ; preds = %2732
  %2737 = load ptr, ptr %4, align 8, !tbaa !8
  %2738 = icmp eq ptr %2737, null
  br i1 %2738, label %5677, label %2739

2739:                                             ; preds = %2736, %2732, %2729, %2724
  %2740 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2741:                                             ; preds = %35
  %2742 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2743 = load ptr, ptr %2742, align 8, !tbaa !5
  br label %2744

2744:                                             ; preds = %2744, %2741
  %2745 = phi ptr [ %2743, %2741 ], [ %2747, %2744 ]
  %2746 = getelementptr inbounds [2 x %struct.LIST], ptr %2745, i64 0, i64 1
  %2747 = load ptr, ptr %2746, align 8, !tbaa !5
  %2748 = getelementptr inbounds %struct.word_type, ptr %2747, i64 0, i32 1
  %2749 = load i8, ptr %2748, align 8, !tbaa !5
  %2750 = icmp eq i8 %2749, 0
  br i1 %2750, label %2744, label %2751

2751:                                             ; preds = %2744
  %2752 = tail call ptr @Manifest(ptr noundef nonnull %2747, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2753 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2754

2754:                                             ; preds = %2754, %2751
  %2755 = phi ptr [ %2753, %2751 ], [ %2757, %2754 ]
  %2756 = getelementptr inbounds [2 x %struct.LIST], ptr %2755, i64 0, i64 1
  %2757 = load ptr, ptr %2756, align 8, !tbaa !5
  %2758 = getelementptr inbounds %struct.word_type, ptr %2757, i64 0, i32 1
  %2759 = load i8, ptr %2758, align 8, !tbaa !5
  %2760 = icmp eq i8 %2759, 0
  br i1 %2760, label %2754, label %2761

2761:                                             ; preds = %2754
  %2762 = tail call ptr @Manifest(ptr noundef nonnull %2757, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2763 = getelementptr inbounds ptr, ptr %3, i64 1
  %2764 = load ptr, ptr %2763, align 8, !tbaa !8
  %2765 = icmp eq ptr %2764, null
  br i1 %2765, label %2766, label %2776

2766:                                             ; preds = %2761
  %2767 = load ptr, ptr %3, align 8, !tbaa !8
  %2768 = icmp eq ptr %2767, null
  br i1 %2768, label %2769, label %2776

2769:                                             ; preds = %2766
  %2770 = getelementptr inbounds ptr, ptr %4, i64 1
  %2771 = load ptr, ptr %2770, align 8, !tbaa !8
  %2772 = icmp eq ptr %2771, null
  br i1 %2772, label %2773, label %2776

2773:                                             ; preds = %2769
  %2774 = load ptr, ptr %4, align 8, !tbaa !8
  %2775 = icmp eq ptr %2774, null
  br i1 %2775, label %5677, label %2776

2776:                                             ; preds = %2773, %2769, %2766, %2761
  %2777 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

2778:                                             ; preds = %35
  %2779 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 29, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %36, ptr noundef nonnull @.str.22) #9
  br label %5677

2780:                                             ; preds = %35, %35
  %2781 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2782 = load ptr, ptr %2781, align 8, !tbaa !5
  br label %2783

2783:                                             ; preds = %2783, %2780
  %2784 = phi ptr [ %2782, %2780 ], [ %2786, %2783 ]
  %2785 = getelementptr inbounds [2 x %struct.LIST], ptr %2784, i64 0, i64 1
  %2786 = load ptr, ptr %2785, align 8, !tbaa !5
  %2787 = getelementptr inbounds %struct.word_type, ptr %2786, i64 0, i32 1
  %2788 = load i8, ptr %2787, align 8, !tbaa !5
  %2789 = icmp eq i8 %2788, 0
  br i1 %2789, label %2783, label %2790

2790:                                             ; preds = %2783
  %2791 = tail call ptr @Manifest(ptr noundef nonnull %2786, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %2792 = load ptr, ptr %2781, align 8, !tbaa !5
  store ptr %2792, ptr @xx_link, align 8, !tbaa !8
  %2793 = getelementptr inbounds [2 x %struct.LIST], ptr %2792, i64 0, i64 1, i32 1
  %2794 = load ptr, ptr %2793, align 8, !tbaa !5
  %2795 = icmp eq ptr %2794, %2792
  br i1 %2795, label %2801, label %2796

2796:                                             ; preds = %2790
  %2797 = getelementptr inbounds [2 x %struct.LIST], ptr %2792, i64 0, i64 1
  %2798 = load ptr, ptr %2797, align 8, !tbaa !5
  %2799 = getelementptr inbounds [2 x %struct.LIST], ptr %2794, i64 0, i64 1
  store ptr %2798, ptr %2799, align 8, !tbaa !5
  %2800 = getelementptr inbounds [2 x %struct.LIST], ptr %2798, i64 0, i64 1, i32 1
  store ptr %2794, ptr %2800, align 8, !tbaa !5
  store ptr %2792, ptr %2793, align 8, !tbaa !5
  store ptr %2792, ptr %2797, align 8, !tbaa !5
  br label %2801

2801:                                             ; preds = %2790, %2796
  store ptr %2792, ptr @zz_hold, align 8, !tbaa !8
  %2802 = getelementptr inbounds %struct.LIST, ptr %2792, i64 0, i32 1
  %2803 = load ptr, ptr %2802, align 8, !tbaa !5
  %2804 = icmp eq ptr %2803, %2792
  br i1 %2804, label %2813, label %2805

2805:                                             ; preds = %2801
  store ptr %2803, ptr @zz_res, align 8, !tbaa !8
  %2806 = load ptr, ptr %2792, align 8, !tbaa !5
  store ptr %2806, ptr %2803, align 8, !tbaa !5
  %2807 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2808 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2809 = load ptr, ptr %2808, align 8, !tbaa !5
  %2810 = getelementptr inbounds %struct.LIST, ptr %2809, i64 0, i32 1
  store ptr %2807, ptr %2810, align 8, !tbaa !5
  %2811 = getelementptr inbounds %struct.LIST, ptr %2808, i64 0, i32 1
  store ptr %2808, ptr %2811, align 8, !tbaa !5
  store ptr %2808, ptr %2808, align 8, !tbaa !5
  %2812 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2813

2813:                                             ; preds = %2801, %2805
  %2814 = phi ptr [ %2792, %2801 ], [ %2812, %2805 ]
  store ptr %2814, ptr @zz_hold, align 8, !tbaa !8
  %2815 = getelementptr inbounds %struct.word_type, ptr %2814, i64 0, i32 1
  %2816 = load i8, ptr %2815, align 8, !tbaa !5
  %2817 = add i8 %2816, -11
  %2818 = icmp ult i8 %2817, 2
  %2819 = getelementptr inbounds %struct.word_type, ptr %2814, i64 0, i32 1, i32 0, i32 1
  %2820 = zext i8 %2816 to i64
  %2821 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2820
  %2822 = select i1 %2818, ptr %2819, ptr %2821
  %2823 = load i8, ptr %2822, align 1, !tbaa !5
  %2824 = zext i8 %2823 to i32
  store i32 %2824, ptr @zz_size, align 4, !tbaa !10
  %2825 = zext i8 %2823 to i64
  %2826 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2825
  %2827 = load ptr, ptr %2826, align 8, !tbaa !8
  store ptr %2827, ptr %2814, align 8, !tbaa !5
  %2828 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2829 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2830 = sext i32 %2829 to i64
  %2831 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2830
  store ptr %2828, ptr %2831, align 8, !tbaa !8
  store ptr %2791, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %2832 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %2833 = load ptr, ptr %2832, align 8, !tbaa !5
  %2834 = icmp eq ptr %2833, %0
  br i1 %2834, label %2835, label %2836

2835:                                             ; preds = %2813
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %2851

2836:                                             ; preds = %2813
  store ptr %2833, ptr @zz_res, align 8, !tbaa !8
  %2837 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %2838 = load ptr, ptr %2837, align 8, !tbaa !5
  %2839 = getelementptr inbounds [2 x %struct.LIST], ptr %2833, i64 0, i64 1
  store ptr %2838, ptr %2839, align 8, !tbaa !5
  %2840 = getelementptr inbounds [2 x %struct.LIST], ptr %2838, i64 0, i64 1, i32 1
  store ptr %2833, ptr %2840, align 8, !tbaa !5
  store ptr %0, ptr %2832, align 8, !tbaa !5
  store ptr %0, ptr %2837, align 8, !tbaa !5
  store ptr %2833, ptr @xx_tmp, align 8, !tbaa !8
  %2841 = icmp eq ptr %2833, null
  %2842 = icmp eq ptr %2791, null
  %2843 = select i1 %2841, i1 true, i1 %2842
  br i1 %2843, label %2851, label %2844

2844:                                             ; preds = %2836
  %2845 = getelementptr inbounds [2 x %struct.LIST], ptr %2833, i64 0, i64 1
  %2846 = load ptr, ptr %2845, align 8, !tbaa !5
  store ptr %2846, ptr @zz_tmp, align 8, !tbaa !8
  %2847 = getelementptr inbounds [2 x %struct.LIST], ptr %2791, i64 0, i64 1
  %2848 = load ptr, ptr %2847, align 8, !tbaa !5
  store ptr %2848, ptr %2845, align 8, !tbaa !5
  %2849 = getelementptr inbounds [2 x %struct.LIST], ptr %2848, i64 0, i64 1, i32 1
  store ptr %2833, ptr %2849, align 8, !tbaa !5
  store ptr %2846, ptr %2847, align 8, !tbaa !5
  %2850 = getelementptr inbounds [2 x %struct.LIST], ptr %2846, i64 0, i64 1, i32 1
  store ptr %2791, ptr %2850, align 8, !tbaa !5
  br label %2851

2851:                                             ; preds = %2835, %2836, %2844
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %2852 = load ptr, ptr %2781, align 8, !tbaa !5
  %2853 = icmp eq ptr %2852, %0
  br i1 %2853, label %2854, label %2855

2854:                                             ; preds = %2851
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2791, ptr @zz_res, align 8, !tbaa !8
  br label %2877

2855:                                             ; preds = %2851
  store ptr %2852, ptr @zz_res, align 8, !tbaa !8
  %2856 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %2856, ptr %2852, align 8, !tbaa !5
  %2857 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2858 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2859 = load ptr, ptr %2858, align 8, !tbaa !5
  %2860 = getelementptr inbounds %struct.LIST, ptr %2859, i64 0, i32 1
  store ptr %2857, ptr %2860, align 8, !tbaa !5
  %2861 = getelementptr inbounds %struct.LIST, ptr %2858, i64 0, i32 1
  store ptr %2858, ptr %2861, align 8, !tbaa !5
  store ptr %2858, ptr %2858, align 8, !tbaa !5
  %2862 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2863 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %2862, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2863, ptr @zz_res, align 8, !tbaa !8
  store ptr %2862, ptr @zz_hold, align 8, !tbaa !8
  %2864 = icmp eq ptr %2862, null
  %2865 = icmp eq ptr %2863, null
  %2866 = select i1 %2864, i1 true, i1 %2865
  br i1 %2866, label %2877, label %2867

2867:                                             ; preds = %2855
  %2868 = load ptr, ptr %2862, align 8, !tbaa !5
  store ptr %2868, ptr @zz_tmp, align 8, !tbaa !8
  %2869 = load ptr, ptr %2863, align 8, !tbaa !5
  store ptr %2869, ptr %2862, align 8, !tbaa !5
  %2870 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2871 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2872 = load ptr, ptr %2871, align 8, !tbaa !5
  %2873 = getelementptr inbounds %struct.LIST, ptr %2872, i64 0, i32 1
  store ptr %2870, ptr %2873, align 8, !tbaa !5
  %2874 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2874, ptr %2871, align 8, !tbaa !5
  %2875 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2876 = getelementptr inbounds %struct.LIST, ptr %2874, i64 0, i32 1
  store ptr %2875, ptr %2876, align 8, !tbaa !5
  br label %2877

2877:                                             ; preds = %2854, %2855, %2867
  %2878 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %2878, ptr @zz_hold, align 8, !tbaa !8
  %2879 = getelementptr inbounds %struct.word_type, ptr %2878, i64 0, i32 1
  %2880 = load i8, ptr %2879, align 8, !tbaa !5
  %2881 = add i8 %2880, -11
  %2882 = icmp ult i8 %2881, 2
  %2883 = getelementptr inbounds %struct.word_type, ptr %2878, i64 0, i32 1, i32 0, i32 1
  %2884 = zext i8 %2880 to i64
  %2885 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2884
  %2886 = select i1 %2882, ptr %2883, ptr %2885
  %2887 = load i8, ptr %2886, align 1, !tbaa !5
  %2888 = zext i8 %2887 to i32
  store i32 %2888, ptr @zz_size, align 4, !tbaa !10
  %2889 = zext i8 %2887 to i64
  %2890 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2889
  %2891 = load ptr, ptr %2890, align 8, !tbaa !8
  store ptr %2891, ptr %2878, align 8, !tbaa !5
  %2892 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2893 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2894 = sext i32 %2893 to i64
  %2895 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2894
  store ptr %2892, ptr %2895, align 8, !tbaa !8
  br label %5677

2896:                                             ; preds = %35
  %2897 = tail call fastcc ptr @ManifestCase(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %9, i32 noundef %10)
  br label %5677

2898:                                             ; preds = %35
  %2899 = load ptr, ptr @BackEnd, align 8, !tbaa !8
  %2900 = getelementptr inbounds %struct.back_end_rec, ptr %2899, i64 0, i32 1
  %2901 = load ptr, ptr %2900, align 8, !tbaa !21
  %2902 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %2901, ptr noundef nonnull %36) #9
  %2903 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %2904 = load ptr, ptr %2903, align 8, !tbaa !5
  %2905 = icmp eq ptr %2904, %0
  br i1 %2905, label %2906, label %2907

2906:                                             ; preds = %2898
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2902, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %2922

2907:                                             ; preds = %2898
  %2908 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %2909 = load ptr, ptr %2908, align 8, !tbaa !5
  %2910 = getelementptr inbounds [2 x %struct.LIST], ptr %2904, i64 0, i64 1
  store ptr %2909, ptr %2910, align 8, !tbaa !5
  %2911 = getelementptr inbounds [2 x %struct.LIST], ptr %2909, i64 0, i64 1, i32 1
  store ptr %2904, ptr %2911, align 8, !tbaa !5
  store ptr %0, ptr %2903, align 8, !tbaa !5
  store ptr %0, ptr %2908, align 8, !tbaa !5
  store ptr %2904, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2902, ptr @zz_res, align 8, !tbaa !8
  store ptr %2904, ptr @zz_hold, align 8, !tbaa !8
  %2912 = icmp eq ptr %2904, null
  %2913 = icmp eq ptr %2902, null
  %2914 = select i1 %2912, i1 true, i1 %2913
  br i1 %2914, label %2922, label %2915

2915:                                             ; preds = %2907
  %2916 = getelementptr inbounds [2 x %struct.LIST], ptr %2904, i64 0, i64 1
  %2917 = load ptr, ptr %2916, align 8, !tbaa !5
  store ptr %2917, ptr @zz_tmp, align 8, !tbaa !8
  %2918 = getelementptr inbounds [2 x %struct.LIST], ptr %2902, i64 0, i64 1
  %2919 = load ptr, ptr %2918, align 8, !tbaa !5
  store ptr %2919, ptr %2916, align 8, !tbaa !5
  %2920 = getelementptr inbounds [2 x %struct.LIST], ptr %2919, i64 0, i64 1, i32 1
  store ptr %2904, ptr %2920, align 8, !tbaa !5
  store ptr %2917, ptr %2918, align 8, !tbaa !5
  %2921 = getelementptr inbounds [2 x %struct.LIST], ptr %2917, i64 0, i64 1, i32 1
  store ptr %2902, ptr %2921, align 8, !tbaa !5
  br label %2922

2922:                                             ; preds = %2906, %2907, %2915
  %2923 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %2924 = tail call ptr @Manifest(ptr noundef %2902, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5677

2925:                                             ; preds = %35
  %2926 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2927 = load ptr, ptr %2926, align 8, !tbaa !5
  br label %2928

2928:                                             ; preds = %2928, %2925
  %2929 = phi ptr [ %2927, %2925 ], [ %2931, %2928 ]
  %2930 = getelementptr inbounds [2 x %struct.LIST], ptr %2929, i64 0, i64 1
  %2931 = load ptr, ptr %2930, align 8, !tbaa !5
  %2932 = getelementptr inbounds %struct.word_type, ptr %2931, i64 0, i32 1
  %2933 = load i8, ptr %2932, align 8, !tbaa !5
  %2934 = icmp eq i8 %2933, 0
  br i1 %2934, label %2928, label %2935

2935:                                             ; preds = %2928
  %2936 = tail call ptr @Manifest(ptr noundef nonnull %2931, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %2937 = tail call ptr @ReplaceWithTidy(ptr noundef %2936, i32 noundef 0)
  %2938 = getelementptr inbounds %struct.word_type, ptr %2937, i64 0, i32 1
  %2939 = load i8, ptr %2938, align 8, !tbaa !5
  %2940 = add i8 %2939, -11
  %2941 = icmp ult i8 %2940, 2
  br i1 %2941, label %2945, label %2942

2942:                                             ; preds = %2935
  %2943 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 30, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef nonnull %2938, ptr noundef nonnull @.str.24) #9
  %2944 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  br label %2972

2945:                                             ; preds = %2935
  %2946 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %2947 = load i32, ptr %2946, align 4
  %2948 = and i32 %2947, 4095
  %2949 = getelementptr inbounds %struct.word_type, ptr %2937, i64 0, i32 2
  %2950 = load i32, ptr %2949, align 8
  %2951 = and i32 %2950, -4096
  %2952 = or disjoint i32 %2951, %2948
  store i32 %2952, ptr %2949, align 8
  %2953 = icmp eq i32 %2948, 0
  br i1 %2953, label %2954, label %2957

2954:                                             ; preds = %2945
  %2955 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 31, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %2938, ptr noundef nonnull @.str.24) #9
  %2956 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  br label %2972

2957:                                             ; preds = %2945
  %2958 = getelementptr inbounds %struct.word_type, ptr %2937, i64 0, i32 4
  %2959 = tail call i32 @FontMapping(i32 noundef %2948, ptr noundef nonnull %2938) #9
  %2960 = tail call zeroext i8 @MapCharEncoding(ptr noundef nonnull %2958, i32 noundef %2959) #9
  %2961 = icmp eq i8 %2960, 0
  br i1 %2961, label %2962, label %2969

2962:                                             ; preds = %2957
  store i8 12, ptr %2938, align 8, !tbaa !5
  %2963 = tail call ptr @StringQuotedWord(ptr noundef nonnull %2937) #9
  %2964 = load i32, ptr %2949, align 8
  %2965 = and i32 %2964, 4095
  %2966 = tail call ptr @FontFamilyAndFace(i32 noundef %2965) #9
  %2967 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %2938, ptr noundef nonnull @.str.24, ptr noundef %2963, ptr noundef %2966) #9
  %2968 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  br label %2972

2969:                                             ; preds = %2957
  %2970 = tail call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull %36) #9
  %2971 = getelementptr inbounds %struct.word_type, ptr %2970, i64 0, i32 4
  store i8 %2960, ptr %2971, align 8, !tbaa !5
  br label %2972

2972:                                             ; preds = %2954, %2969, %2962, %2942
  %2973 = phi ptr [ %2956, %2954 ], [ %2968, %2962 ], [ %2970, %2969 ], [ %2944, %2942 ]
  %2974 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %2975 = load ptr, ptr %2974, align 8, !tbaa !5
  %2976 = icmp eq ptr %2975, %0
  br i1 %2976, label %2977, label %2978

2977:                                             ; preds = %2972
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2973, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %2993

2978:                                             ; preds = %2972
  %2979 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %2980 = load ptr, ptr %2979, align 8, !tbaa !5
  %2981 = getelementptr inbounds [2 x %struct.LIST], ptr %2975, i64 0, i64 1
  store ptr %2980, ptr %2981, align 8, !tbaa !5
  %2982 = getelementptr inbounds [2 x %struct.LIST], ptr %2980, i64 0, i64 1, i32 1
  store ptr %2975, ptr %2982, align 8, !tbaa !5
  store ptr %0, ptr %2974, align 8, !tbaa !5
  store ptr %0, ptr %2979, align 8, !tbaa !5
  store ptr %2975, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2973, ptr @zz_res, align 8, !tbaa !8
  store ptr %2975, ptr @zz_hold, align 8, !tbaa !8
  %2983 = icmp eq ptr %2975, null
  %2984 = icmp eq ptr %2973, null
  %2985 = select i1 %2983, i1 true, i1 %2984
  br i1 %2985, label %2993, label %2986

2986:                                             ; preds = %2978
  %2987 = getelementptr inbounds [2 x %struct.LIST], ptr %2975, i64 0, i64 1
  %2988 = load ptr, ptr %2987, align 8, !tbaa !5
  store ptr %2988, ptr @zz_tmp, align 8, !tbaa !8
  %2989 = getelementptr inbounds [2 x %struct.LIST], ptr %2973, i64 0, i64 1
  %2990 = load ptr, ptr %2989, align 8, !tbaa !5
  store ptr %2990, ptr %2987, align 8, !tbaa !5
  %2991 = getelementptr inbounds [2 x %struct.LIST], ptr %2990, i64 0, i64 1, i32 1
  store ptr %2975, ptr %2991, align 8, !tbaa !5
  store ptr %2988, ptr %2989, align 8, !tbaa !5
  %2992 = getelementptr inbounds [2 x %struct.LIST], ptr %2988, i64 0, i64 1, i32 1
  store ptr %2973, ptr %2992, align 8, !tbaa !5
  br label %2993

2993:                                             ; preds = %2977, %2978, %2986
  %2994 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %2995 = tail call ptr @Manifest(ptr noundef %2973, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5677

2996:                                             ; preds = %35
  %2997 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %2998 = load i32, ptr %2997, align 4
  %2999 = lshr i32 %2998, 24
  %3000 = and i32 %2999, 63
  %3001 = icmp eq i32 %3000, 0
  br i1 %3001, label %3002, label %3005

3002:                                             ; preds = %2996
  %3003 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 33, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull %36, ptr noundef nonnull @.str.28) #9
  %3004 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.28, ptr noundef nonnull %36) #9
  br label %3008

3005:                                             ; preds = %2996
  %3006 = tail call ptr @LanguageString(i32 noundef %3000) #9
  %3007 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %3006, ptr noundef nonnull %36) #9
  br label %3008

3008:                                             ; preds = %3005, %3002
  %3009 = phi ptr [ %3004, %3002 ], [ %3007, %3005 ]
  %3010 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3011 = load ptr, ptr %3010, align 8, !tbaa !5
  %3012 = icmp eq ptr %3011, %0
  br i1 %3012, label %3013, label %3014

3013:                                             ; preds = %3008
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3009, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %3029

3014:                                             ; preds = %3008
  %3015 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3016 = load ptr, ptr %3015, align 8, !tbaa !5
  %3017 = getelementptr inbounds [2 x %struct.LIST], ptr %3011, i64 0, i64 1
  store ptr %3016, ptr %3017, align 8, !tbaa !5
  %3018 = getelementptr inbounds [2 x %struct.LIST], ptr %3016, i64 0, i64 1, i32 1
  store ptr %3011, ptr %3018, align 8, !tbaa !5
  store ptr %0, ptr %3010, align 8, !tbaa !5
  store ptr %0, ptr %3015, align 8, !tbaa !5
  store ptr %3011, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3009, ptr @zz_res, align 8, !tbaa !8
  store ptr %3011, ptr @zz_hold, align 8, !tbaa !8
  %3019 = icmp eq ptr %3011, null
  %3020 = icmp eq ptr %3009, null
  %3021 = select i1 %3019, i1 true, i1 %3020
  br i1 %3021, label %3029, label %3022

3022:                                             ; preds = %3014
  %3023 = getelementptr inbounds [2 x %struct.LIST], ptr %3011, i64 0, i64 1
  %3024 = load ptr, ptr %3023, align 8, !tbaa !5
  store ptr %3024, ptr @zz_tmp, align 8, !tbaa !8
  %3025 = getelementptr inbounds [2 x %struct.LIST], ptr %3009, i64 0, i64 1
  %3026 = load ptr, ptr %3025, align 8, !tbaa !5
  store ptr %3026, ptr %3023, align 8, !tbaa !5
  %3027 = getelementptr inbounds [2 x %struct.LIST], ptr %3026, i64 0, i64 1, i32 1
  store ptr %3011, ptr %3027, align 8, !tbaa !5
  store ptr %3024, ptr %3025, align 8, !tbaa !5
  %3028 = getelementptr inbounds [2 x %struct.LIST], ptr %3024, i64 0, i64 1, i32 1
  store ptr %3009, ptr %3028, align 8, !tbaa !5
  br label %3029

3029:                                             ; preds = %3013, %3014, %3022
  %3030 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %3031 = tail call ptr @Manifest(ptr noundef %3009, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5677

3032:                                             ; preds = %35, %35
  %3033 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %3034 = load i32, ptr %3033, align 4
  %3035 = and i32 %3034, 4095
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3037, label %3040

3037:                                             ; preds = %3032
  %3038 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 38, ptr noundef nonnull @.str.29, i32 noundef 2, ptr noundef nonnull %36, ptr noundef nonnull @.str.28) #9
  %3039 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.28, ptr noundef nonnull %36) #9
  br label %3048

3040:                                             ; preds = %3032
  %3041 = icmp eq i8 %37, 69
  br i1 %3041, label %3042, label %3045

3042:                                             ; preds = %3040
  %3043 = tail call ptr @FontFamily(i32 noundef %3035) #9
  %3044 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %3043, ptr noundef nonnull %36) #9
  br label %3048

3045:                                             ; preds = %3040
  %3046 = tail call ptr @FontFace(i32 noundef %3035) #9
  %3047 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %3046, ptr noundef nonnull %36) #9
  br label %3048

3048:                                             ; preds = %3042, %3045, %3037
  %3049 = phi ptr [ %3039, %3037 ], [ %3044, %3042 ], [ %3047, %3045 ]
  %3050 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3051 = load ptr, ptr %3050, align 8, !tbaa !5
  %3052 = icmp eq ptr %3051, %0
  br i1 %3052, label %3053, label %3054

3053:                                             ; preds = %3048
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3049, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %3069

3054:                                             ; preds = %3048
  %3055 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3056 = load ptr, ptr %3055, align 8, !tbaa !5
  %3057 = getelementptr inbounds [2 x %struct.LIST], ptr %3051, i64 0, i64 1
  store ptr %3056, ptr %3057, align 8, !tbaa !5
  %3058 = getelementptr inbounds [2 x %struct.LIST], ptr %3056, i64 0, i64 1, i32 1
  store ptr %3051, ptr %3058, align 8, !tbaa !5
  store ptr %0, ptr %3050, align 8, !tbaa !5
  store ptr %0, ptr %3055, align 8, !tbaa !5
  store ptr %3051, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3049, ptr @zz_res, align 8, !tbaa !8
  store ptr %3051, ptr @zz_hold, align 8, !tbaa !8
  %3059 = icmp eq ptr %3051, null
  %3060 = icmp eq ptr %3049, null
  %3061 = select i1 %3059, i1 true, i1 %3060
  br i1 %3061, label %3069, label %3062

3062:                                             ; preds = %3054
  %3063 = getelementptr inbounds [2 x %struct.LIST], ptr %3051, i64 0, i64 1
  %3064 = load ptr, ptr %3063, align 8, !tbaa !5
  store ptr %3064, ptr @zz_tmp, align 8, !tbaa !8
  %3065 = getelementptr inbounds [2 x %struct.LIST], ptr %3049, i64 0, i64 1
  %3066 = load ptr, ptr %3065, align 8, !tbaa !5
  store ptr %3066, ptr %3063, align 8, !tbaa !5
  %3067 = getelementptr inbounds [2 x %struct.LIST], ptr %3066, i64 0, i64 1, i32 1
  store ptr %3051, ptr %3067, align 8, !tbaa !5
  store ptr %3064, ptr %3065, align 8, !tbaa !5
  %3068 = getelementptr inbounds [2 x %struct.LIST], ptr %3064, i64 0, i64 1, i32 1
  store ptr %3049, ptr %3068, align 8, !tbaa !5
  br label %3069

3069:                                             ; preds = %3053, %3054, %3062
  %3070 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %3071 = tail call ptr @Manifest(ptr noundef %3049, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5677

3072:                                             ; preds = %35, %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %27) #9
  %3073 = icmp eq i8 %37, 71
  %3074 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %3075 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %3076 = select i1 %3073, ptr %3075, ptr %3074
  %3077 = load i16, ptr %3076, align 2, !tbaa !18
  %3078 = sdiv i16 %3077, 20
  %3079 = sext i16 %3078 to i32
  %3080 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %3079) #9
  %3081 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %27, ptr noundef nonnull %36) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %27) #9
  %3082 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3083 = load ptr, ptr %3082, align 8, !tbaa !5
  %3084 = icmp eq ptr %3083, %0
  br i1 %3084, label %3085, label %3086

3085:                                             ; preds = %3072
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3081, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %3101

3086:                                             ; preds = %3072
  %3087 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3088 = load ptr, ptr %3087, align 8, !tbaa !5
  %3089 = getelementptr inbounds [2 x %struct.LIST], ptr %3083, i64 0, i64 1
  store ptr %3088, ptr %3089, align 8, !tbaa !5
  %3090 = getelementptr inbounds [2 x %struct.LIST], ptr %3088, i64 0, i64 1, i32 1
  store ptr %3083, ptr %3090, align 8, !tbaa !5
  store ptr %0, ptr %3082, align 8, !tbaa !5
  store ptr %0, ptr %3087, align 8, !tbaa !5
  store ptr %3083, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3081, ptr @zz_res, align 8, !tbaa !8
  store ptr %3083, ptr @zz_hold, align 8, !tbaa !8
  %3091 = icmp eq ptr %3083, null
  %3092 = icmp eq ptr %3081, null
  %3093 = select i1 %3091, i1 true, i1 %3092
  br i1 %3093, label %3101, label %3094

3094:                                             ; preds = %3086
  %3095 = getelementptr inbounds [2 x %struct.LIST], ptr %3083, i64 0, i64 1
  %3096 = load ptr, ptr %3095, align 8, !tbaa !5
  store ptr %3096, ptr @zz_tmp, align 8, !tbaa !8
  %3097 = getelementptr inbounds [2 x %struct.LIST], ptr %3081, i64 0, i64 1
  %3098 = load ptr, ptr %3097, align 8, !tbaa !5
  store ptr %3098, ptr %3095, align 8, !tbaa !5
  %3099 = getelementptr inbounds [2 x %struct.LIST], ptr %3098, i64 0, i64 1, i32 1
  store ptr %3083, ptr %3099, align 8, !tbaa !5
  store ptr %3096, ptr %3097, align 8, !tbaa !5
  %3100 = getelementptr inbounds [2 x %struct.LIST], ptr %3096, i64 0, i64 1, i32 1
  store ptr %3081, ptr %3100, align 8, !tbaa !5
  br label %3101

3101:                                             ; preds = %3085, %3086, %3094
  %3102 = call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %3103 = call ptr @Manifest(ptr noundef %3081, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5677

3104:                                             ; preds = %35, %35, %35, %35, %35, %35, %35
  %3105 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3106 = load ptr, ptr %3105, align 8, !tbaa !5
  %3107 = icmp eq ptr %3106, %0
  br i1 %3107, label %3112, label %3108

3108:                                             ; preds = %3104
  %3109 = getelementptr inbounds %struct.LIST, ptr %3106, i64 0, i32 1
  %3110 = load ptr, ptr %3109, align 8, !tbaa !5
  %3111 = icmp eq ptr %3110, %0
  br i1 %3111, label %3112, label %3116

3112:                                             ; preds = %3108, %3104
  %3113 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3114 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3113, ptr noundef nonnull @.str.31) #9
  %3115 = load ptr, ptr %3105, align 8, !tbaa !5
  br label %3116

3116:                                             ; preds = %3112, %3108
  %3117 = phi ptr [ %3115, %3112 ], [ %3106, %3108 ]
  %3118 = load i16, ptr %2, align 4
  %3119 = and i16 %3118, -128
  store i16 %3119, ptr %25, align 4
  %3120 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %3121 = load i16, ptr %3120, align 2, !tbaa !5
  %3122 = getelementptr inbounds %struct.GAP, ptr %25, i64 0, i32 1
  store i16 %3121, ptr %3122, align 2, !tbaa !5
  %3123 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %3124 = load i8, ptr %3123, align 4
  %3125 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1
  %3126 = and i8 %3124, 127
  store i8 %3126, ptr %3125, align 4
  %3127 = trunc i16 %3118 to i8
  %3128 = trunc i16 %3119 to i8
  %3129 = load i16, ptr %3123, align 4
  %3130 = load i16, ptr %3125, align 4
  %3131 = and i16 %3130, 127
  %3132 = and i16 %3129, -128
  %3133 = or disjoint i16 %3131, %3132
  store i16 %3133, ptr %3125, align 4
  %3134 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %3135 = load i16, ptr %3134, align 2, !tbaa !5
  %3136 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1, i32 0, i32 1
  store i16 %3135, ptr %3136, align 2, !tbaa !5
  %3137 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %3138 = load i32, ptr %3137, align 4
  %3139 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 4
  store i32 %3138, ptr %3139, align 4
  %3140 = and i8 %3127, 127
  %3141 = or disjoint i8 %3140, %3128
  store i8 %3141, ptr %25, align 4
  %3142 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %3143 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 2
  %3144 = load <2 x i16>, ptr %3142, align 4, !tbaa !18
  store <2 x i16> %3144, ptr %3143, align 4, !tbaa !18
  br label %3145

3145:                                             ; preds = %3145, %3116
  %3146 = phi ptr [ %3117, %3116 ], [ %3148, %3145 ]
  %3147 = getelementptr inbounds [2 x %struct.LIST], ptr %3146, i64 0, i64 1
  %3148 = load ptr, ptr %3147, align 8, !tbaa !5
  %3149 = getelementptr inbounds %struct.word_type, ptr %3148, i64 0, i32 1
  %3150 = load i8, ptr %3149, align 8, !tbaa !5
  %3151 = icmp eq i8 %3150, 0
  br i1 %3151, label %3145, label %3152

3152:                                             ; preds = %3145
  %3153 = tail call ptr @Manifest(ptr noundef nonnull %3148, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %3154 = load i8, ptr %36, align 8, !tbaa !5
  %3155 = icmp eq i8 %3154, 65
  %3156 = zext i1 %3155 to i32
  %3157 = tail call ptr @ReplaceWithTidy(ptr noundef %3153, i32 noundef %3156)
  %3158 = load i8, ptr %36, align 8, !tbaa !5
  switch i8 %3158, label %3166 [
    i8 59, label %3159
    i8 60, label %3160
    i8 61, label %3161
    i8 62, label %3162
    i8 63, label %3163
    i8 65, label %3164
    i8 67, label %3165
  ]

3159:                                             ; preds = %3152
  call void @FontChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3160:                                             ; preds = %3152
  call void @SpaceChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3161:                                             ; preds = %3152
  call void @YUnitChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3162:                                             ; preds = %3152
  call void @ZUnitChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3163:                                             ; preds = %3152
  call void @BreakChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3164:                                             ; preds = %3152
  call void @ColourChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3165:                                             ; preds = %3152
  call void @LanguageChange(ptr noundef nonnull %25, ptr noundef %3157) #9
  br label %3166

3166:                                             ; preds = %3152, %3165, %3164, %3163, %3162, %3161, %3160, %3159
  %3167 = load ptr, ptr %3105, align 8, !tbaa !5
  store ptr %3167, ptr @xx_link, align 8, !tbaa !8
  %3168 = getelementptr inbounds [2 x %struct.LIST], ptr %3167, i64 0, i64 1, i32 1
  %3169 = load ptr, ptr %3168, align 8, !tbaa !5
  %3170 = icmp eq ptr %3169, %3167
  br i1 %3170, label %3176, label %3171

3171:                                             ; preds = %3166
  store ptr %3169, ptr @zz_res, align 8, !tbaa !8
  %3172 = getelementptr inbounds [2 x %struct.LIST], ptr %3167, i64 0, i64 1
  %3173 = load ptr, ptr %3172, align 8, !tbaa !5
  %3174 = getelementptr inbounds [2 x %struct.LIST], ptr %3169, i64 0, i64 1
  store ptr %3173, ptr %3174, align 8, !tbaa !5
  %3175 = getelementptr inbounds [2 x %struct.LIST], ptr %3173, i64 0, i64 1, i32 1
  store ptr %3169, ptr %3175, align 8, !tbaa !5
  store ptr %3167, ptr %3168, align 8, !tbaa !5
  store ptr %3167, ptr %3172, align 8, !tbaa !5
  br label %3176

3176:                                             ; preds = %3166, %3171
  %3177 = phi ptr [ %3169, %3171 ], [ null, %3166 ]
  store ptr %3177, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3167, ptr @zz_hold, align 8, !tbaa !8
  %3178 = getelementptr inbounds %struct.LIST, ptr %3167, i64 0, i32 1
  %3179 = load ptr, ptr %3178, align 8, !tbaa !5
  %3180 = icmp eq ptr %3179, %3167
  br i1 %3180, label %3189, label %3181

3181:                                             ; preds = %3176
  store ptr %3179, ptr @zz_res, align 8, !tbaa !8
  %3182 = load ptr, ptr %3167, align 8, !tbaa !5
  store ptr %3182, ptr %3179, align 8, !tbaa !5
  %3183 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3184 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3185 = load ptr, ptr %3184, align 8, !tbaa !5
  %3186 = getelementptr inbounds %struct.LIST, ptr %3185, i64 0, i32 1
  store ptr %3183, ptr %3186, align 8, !tbaa !5
  %3187 = getelementptr inbounds %struct.LIST, ptr %3184, i64 0, i32 1
  store ptr %3184, ptr %3187, align 8, !tbaa !5
  store ptr %3184, ptr %3184, align 8, !tbaa !5
  %3188 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3189

3189:                                             ; preds = %3176, %3181
  %3190 = phi ptr [ %3167, %3176 ], [ %3188, %3181 ]
  store ptr %3190, ptr @zz_hold, align 8, !tbaa !8
  %3191 = getelementptr inbounds %struct.word_type, ptr %3190, i64 0, i32 1
  %3192 = load i8, ptr %3191, align 8, !tbaa !5
  %3193 = add i8 %3192, -11
  %3194 = icmp ult i8 %3193, 2
  %3195 = getelementptr inbounds %struct.word_type, ptr %3190, i64 0, i32 1, i32 0, i32 1
  %3196 = zext i8 %3192 to i64
  %3197 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3196
  %3198 = select i1 %3194, ptr %3195, ptr %3197
  %3199 = load i8, ptr %3198, align 1, !tbaa !5
  %3200 = zext i8 %3199 to i32
  store i32 %3200, ptr @zz_size, align 4, !tbaa !10
  %3201 = zext i8 %3199 to i64
  %3202 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3201
  %3203 = load ptr, ptr %3202, align 8, !tbaa !8
  store ptr %3203, ptr %3190, align 8, !tbaa !5
  %3204 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3205 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3206 = sext i32 %3205 to i64
  %3207 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3206
  store ptr %3204, ptr %3207, align 8, !tbaa !8
  %3208 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3209 = getelementptr inbounds [2 x %struct.LIST], ptr %3208, i64 0, i64 1, i32 1
  %3210 = load ptr, ptr %3209, align 8, !tbaa !5
  %3211 = icmp eq ptr %3210, %3208
  br i1 %3211, label %3212, label %3214

3212:                                             ; preds = %3189
  %3213 = call i32 @DisposeObject(ptr noundef nonnull %3208) #9
  br label %3214

3214:                                             ; preds = %3212, %3189
  %3215 = load ptr, ptr %3105, align 8, !tbaa !5
  br label %3216

3216:                                             ; preds = %3216, %3214
  %3217 = phi ptr [ %3215, %3214 ], [ %3219, %3216 ]
  %3218 = getelementptr inbounds [2 x %struct.LIST], ptr %3217, i64 0, i64 1
  %3219 = load ptr, ptr %3218, align 8, !tbaa !5
  %3220 = getelementptr inbounds %struct.word_type, ptr %3219, i64 0, i32 1
  %3221 = load i8, ptr %3220, align 8, !tbaa !5
  %3222 = icmp eq i8 %3221, 0
  br i1 %3222, label %3216, label %3223

3223:                                             ; preds = %3216
  %3224 = call ptr @Manifest(ptr noundef nonnull %3219, ptr noundef %1, ptr noundef nonnull %25, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %3225 = load ptr, ptr %3105, align 8, !tbaa !5
  store ptr %3225, ptr @xx_link, align 8, !tbaa !8
  %3226 = getelementptr inbounds [2 x %struct.LIST], ptr %3225, i64 0, i64 1, i32 1
  %3227 = load ptr, ptr %3226, align 8, !tbaa !5
  %3228 = icmp eq ptr %3227, %3225
  br i1 %3228, label %3234, label %3229

3229:                                             ; preds = %3223
  %3230 = getelementptr inbounds [2 x %struct.LIST], ptr %3225, i64 0, i64 1
  %3231 = load ptr, ptr %3230, align 8, !tbaa !5
  %3232 = getelementptr inbounds [2 x %struct.LIST], ptr %3227, i64 0, i64 1
  store ptr %3231, ptr %3232, align 8, !tbaa !5
  %3233 = getelementptr inbounds [2 x %struct.LIST], ptr %3231, i64 0, i64 1, i32 1
  store ptr %3227, ptr %3233, align 8, !tbaa !5
  store ptr %3225, ptr %3226, align 8, !tbaa !5
  store ptr %3225, ptr %3230, align 8, !tbaa !5
  br label %3234

3234:                                             ; preds = %3223, %3229
  store ptr %3225, ptr @zz_hold, align 8, !tbaa !8
  %3235 = getelementptr inbounds %struct.LIST, ptr %3225, i64 0, i32 1
  %3236 = load ptr, ptr %3235, align 8, !tbaa !5
  %3237 = icmp eq ptr %3236, %3225
  br i1 %3237, label %3246, label %3238

3238:                                             ; preds = %3234
  store ptr %3236, ptr @zz_res, align 8, !tbaa !8
  %3239 = load ptr, ptr %3225, align 8, !tbaa !5
  store ptr %3239, ptr %3236, align 8, !tbaa !5
  %3240 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3241 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3242 = load ptr, ptr %3241, align 8, !tbaa !5
  %3243 = getelementptr inbounds %struct.LIST, ptr %3242, i64 0, i32 1
  store ptr %3240, ptr %3243, align 8, !tbaa !5
  %3244 = getelementptr inbounds %struct.LIST, ptr %3241, i64 0, i32 1
  store ptr %3241, ptr %3244, align 8, !tbaa !5
  store ptr %3241, ptr %3241, align 8, !tbaa !5
  %3245 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3246

3246:                                             ; preds = %3234, %3238
  %3247 = phi ptr [ %3225, %3234 ], [ %3245, %3238 ]
  store ptr %3247, ptr @zz_hold, align 8, !tbaa !8
  %3248 = getelementptr inbounds %struct.word_type, ptr %3247, i64 0, i32 1
  %3249 = load i8, ptr %3248, align 8, !tbaa !5
  %3250 = add i8 %3249, -11
  %3251 = icmp ult i8 %3250, 2
  %3252 = getelementptr inbounds %struct.word_type, ptr %3247, i64 0, i32 1, i32 0, i32 1
  %3253 = zext i8 %3249 to i64
  %3254 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3253
  %3255 = select i1 %3251, ptr %3252, ptr %3254
  %3256 = load i8, ptr %3255, align 1, !tbaa !5
  %3257 = zext i8 %3256 to i32
  store i32 %3257, ptr @zz_size, align 4, !tbaa !10
  %3258 = zext i8 %3256 to i64
  %3259 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3258
  %3260 = load ptr, ptr %3259, align 8, !tbaa !8
  store ptr %3260, ptr %3247, align 8, !tbaa !5
  %3261 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3262 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3263 = sext i32 %3262 to i64
  %3264 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3263
  store ptr %3261, ptr %3264, align 8, !tbaa !8
  store ptr %3224, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %3265 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3266 = load ptr, ptr %3265, align 8, !tbaa !5
  %3267 = icmp eq ptr %3266, %0
  br i1 %3267, label %3268, label %3269

3268:                                             ; preds = %3246
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %3284

3269:                                             ; preds = %3246
  store ptr %3266, ptr @zz_res, align 8, !tbaa !8
  %3270 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3271 = load ptr, ptr %3270, align 8, !tbaa !5
  %3272 = getelementptr inbounds [2 x %struct.LIST], ptr %3266, i64 0, i64 1
  store ptr %3271, ptr %3272, align 8, !tbaa !5
  %3273 = getelementptr inbounds [2 x %struct.LIST], ptr %3271, i64 0, i64 1, i32 1
  store ptr %3266, ptr %3273, align 8, !tbaa !5
  store ptr %0, ptr %3265, align 8, !tbaa !5
  store ptr %0, ptr %3270, align 8, !tbaa !5
  store ptr %3266, ptr @xx_tmp, align 8, !tbaa !8
  %3274 = icmp eq ptr %3266, null
  %3275 = icmp eq ptr %3224, null
  %3276 = select i1 %3274, i1 true, i1 %3275
  br i1 %3276, label %3284, label %3277

3277:                                             ; preds = %3269
  %3278 = getelementptr inbounds [2 x %struct.LIST], ptr %3266, i64 0, i64 1
  %3279 = load ptr, ptr %3278, align 8, !tbaa !5
  store ptr %3279, ptr @zz_tmp, align 8, !tbaa !8
  %3280 = getelementptr inbounds [2 x %struct.LIST], ptr %3224, i64 0, i64 1
  %3281 = load ptr, ptr %3280, align 8, !tbaa !5
  store ptr %3281, ptr %3278, align 8, !tbaa !5
  %3282 = getelementptr inbounds [2 x %struct.LIST], ptr %3281, i64 0, i64 1, i32 1
  store ptr %3266, ptr %3282, align 8, !tbaa !5
  store ptr %3279, ptr %3280, align 8, !tbaa !5
  %3283 = getelementptr inbounds [2 x %struct.LIST], ptr %3279, i64 0, i64 1, i32 1
  store ptr %3224, ptr %3283, align 8, !tbaa !5
  br label %3284

3284:                                             ; preds = %3268, %3269, %3277
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %3285 = load ptr, ptr %3105, align 8, !tbaa !5
  %3286 = icmp eq ptr %3285, %0
  br i1 %3286, label %3287, label %3288

3287:                                             ; preds = %3284
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3224, ptr @zz_res, align 8, !tbaa !8
  br label %3310

3288:                                             ; preds = %3284
  store ptr %3285, ptr @zz_res, align 8, !tbaa !8
  %3289 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %3289, ptr %3285, align 8, !tbaa !5
  %3290 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3291 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3292 = load ptr, ptr %3291, align 8, !tbaa !5
  %3293 = getelementptr inbounds %struct.LIST, ptr %3292, i64 0, i32 1
  store ptr %3290, ptr %3293, align 8, !tbaa !5
  %3294 = getelementptr inbounds %struct.LIST, ptr %3291, i64 0, i32 1
  store ptr %3291, ptr %3294, align 8, !tbaa !5
  store ptr %3291, ptr %3291, align 8, !tbaa !5
  %3295 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3296 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %3295, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3296, ptr @zz_res, align 8, !tbaa !8
  store ptr %3295, ptr @zz_hold, align 8, !tbaa !8
  %3297 = icmp eq ptr %3295, null
  %3298 = icmp eq ptr %3296, null
  %3299 = select i1 %3297, i1 true, i1 %3298
  br i1 %3299, label %3310, label %3300

3300:                                             ; preds = %3288
  %3301 = load ptr, ptr %3295, align 8, !tbaa !5
  store ptr %3301, ptr @zz_tmp, align 8, !tbaa !8
  %3302 = load ptr, ptr %3296, align 8, !tbaa !5
  store ptr %3302, ptr %3295, align 8, !tbaa !5
  %3303 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3304 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3305 = load ptr, ptr %3304, align 8, !tbaa !5
  %3306 = getelementptr inbounds %struct.LIST, ptr %3305, i64 0, i32 1
  store ptr %3303, ptr %3306, align 8, !tbaa !5
  %3307 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3307, ptr %3304, align 8, !tbaa !5
  %3308 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3309 = getelementptr inbounds %struct.LIST, ptr %3307, i64 0, i32 1
  store ptr %3308, ptr %3309, align 8, !tbaa !5
  br label %3310

3310:                                             ; preds = %3287, %3288, %3300
  %3311 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %3311, ptr @zz_hold, align 8, !tbaa !8
  %3312 = getelementptr inbounds %struct.word_type, ptr %3311, i64 0, i32 1
  %3313 = load i8, ptr %3312, align 8, !tbaa !5
  %3314 = add i8 %3313, -11
  %3315 = icmp ult i8 %3314, 2
  %3316 = getelementptr inbounds %struct.word_type, ptr %3311, i64 0, i32 1, i32 0, i32 1
  %3317 = zext i8 %3313 to i64
  %3318 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3317
  %3319 = select i1 %3315, ptr %3316, ptr %3318
  %3320 = load i8, ptr %3319, align 1, !tbaa !5
  %3321 = zext i8 %3320 to i32
  store i32 %3321, ptr @zz_size, align 4, !tbaa !10
  %3322 = zext i8 %3320 to i64
  %3323 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3322
  %3324 = load ptr, ptr %3323, align 8, !tbaa !8
  store ptr %3324, ptr %3311, align 8, !tbaa !5
  %3325 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3326 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3327 = sext i32 %3326 to i64
  %3328 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3327
  store ptr %3325, ptr %3328, align 8, !tbaa !8
  br label %5677

3329:                                             ; preds = %35, %35, %35, %35
  %3330 = load i16, ptr %2, align 4
  %3331 = and i16 %3330, -128
  store i16 %3331, ptr %25, align 4
  %3332 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %3333 = load i16, ptr %3332, align 2, !tbaa !5
  %3334 = getelementptr inbounds %struct.GAP, ptr %25, i64 0, i32 1
  store i16 %3333, ptr %3334, align 2, !tbaa !5
  %3335 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %3336 = load i8, ptr %3335, align 4
  %3337 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1
  %3338 = and i8 %3336, 127
  store i8 %3338, ptr %3337, align 4
  %3339 = trunc i16 %3330 to i8
  %3340 = trunc i16 %3331 to i8
  %3341 = load i16, ptr %3335, align 4
  %3342 = load i16, ptr %3337, align 4
  %3343 = and i16 %3342, 127
  %3344 = and i16 %3341, -128
  %3345 = or disjoint i16 %3343, %3344
  store i16 %3345, ptr %3337, align 4
  %3346 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %3347 = load i16, ptr %3346, align 2, !tbaa !5
  %3348 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 1, i32 0, i32 1
  store i16 %3347, ptr %3348, align 2, !tbaa !5
  %3349 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %3350 = load i32, ptr %3349, align 4
  %3351 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 4
  store i32 %3350, ptr %3351, align 4
  %3352 = and i8 %3339, 127
  %3353 = or disjoint i8 %3352, %3340
  store i8 %3353, ptr %25, align 4
  %3354 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %3355 = getelementptr inbounds %struct.STYLE, ptr %25, i64 0, i32 2
  %3356 = load <2 x i16>, ptr %3354, align 4, !tbaa !18
  store <2 x i16> %3356, ptr %3355, align 4, !tbaa !18
  switch i8 %37, label %3364 [
    i8 66, label %3357
    i8 49, label %3360
    i8 48, label %3362
  ]

3357:                                             ; preds = %3329
  %3358 = and i32 %3350, -12582913
  %3359 = or disjoint i32 %3358, 4194304
  store i32 %3359, ptr %3351, align 4
  br label %3366

3360:                                             ; preds = %3329
  %3361 = or i8 %3353, 1
  store i8 %3361, ptr %25, align 4
  br label %3366

3362:                                             ; preds = %3329
  %3363 = or i8 %3353, 2
  store i8 %3363, ptr %25, align 4
  br label %3366

3364:                                             ; preds = %3329
  %3365 = or i8 %3353, 4
  store i8 %3365, ptr %25, align 4
  br label %3366

3366:                                             ; preds = %3360, %3364, %3362, %3357
  %3367 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3368 = load ptr, ptr %3367, align 8, !tbaa !5
  br label %3369

3369:                                             ; preds = %3369, %3366
  %3370 = phi ptr [ %3368, %3366 ], [ %3372, %3369 ]
  %3371 = getelementptr inbounds [2 x %struct.LIST], ptr %3370, i64 0, i64 1
  %3372 = load ptr, ptr %3371, align 8, !tbaa !5
  %3373 = getelementptr inbounds %struct.word_type, ptr %3372, i64 0, i32 1
  %3374 = load i8, ptr %3373, align 8, !tbaa !5
  %3375 = icmp eq i8 %3374, 0
  br i1 %3375, label %3369, label %3376

3376:                                             ; preds = %3369
  %3377 = call ptr @Manifest(ptr noundef nonnull %3372, ptr noundef %1, ptr noundef nonnull %25, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %3378 = load ptr, ptr %3367, align 8, !tbaa !5
  store ptr %3378, ptr @xx_link, align 8, !tbaa !8
  %3379 = getelementptr inbounds [2 x %struct.LIST], ptr %3378, i64 0, i64 1, i32 1
  %3380 = load ptr, ptr %3379, align 8, !tbaa !5
  %3381 = icmp eq ptr %3380, %3378
  br i1 %3381, label %3387, label %3382

3382:                                             ; preds = %3376
  %3383 = getelementptr inbounds [2 x %struct.LIST], ptr %3378, i64 0, i64 1
  %3384 = load ptr, ptr %3383, align 8, !tbaa !5
  %3385 = getelementptr inbounds [2 x %struct.LIST], ptr %3380, i64 0, i64 1
  store ptr %3384, ptr %3385, align 8, !tbaa !5
  %3386 = getelementptr inbounds [2 x %struct.LIST], ptr %3384, i64 0, i64 1, i32 1
  store ptr %3380, ptr %3386, align 8, !tbaa !5
  store ptr %3378, ptr %3379, align 8, !tbaa !5
  store ptr %3378, ptr %3383, align 8, !tbaa !5
  br label %3387

3387:                                             ; preds = %3376, %3382
  store ptr %3378, ptr @zz_hold, align 8, !tbaa !8
  %3388 = getelementptr inbounds %struct.LIST, ptr %3378, i64 0, i32 1
  %3389 = load ptr, ptr %3388, align 8, !tbaa !5
  %3390 = icmp eq ptr %3389, %3378
  br i1 %3390, label %3399, label %3391

3391:                                             ; preds = %3387
  store ptr %3389, ptr @zz_res, align 8, !tbaa !8
  %3392 = load ptr, ptr %3378, align 8, !tbaa !5
  store ptr %3392, ptr %3389, align 8, !tbaa !5
  %3393 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3394 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3395 = load ptr, ptr %3394, align 8, !tbaa !5
  %3396 = getelementptr inbounds %struct.LIST, ptr %3395, i64 0, i32 1
  store ptr %3393, ptr %3396, align 8, !tbaa !5
  %3397 = getelementptr inbounds %struct.LIST, ptr %3394, i64 0, i32 1
  store ptr %3394, ptr %3397, align 8, !tbaa !5
  store ptr %3394, ptr %3394, align 8, !tbaa !5
  %3398 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3399

3399:                                             ; preds = %3387, %3391
  %3400 = phi ptr [ %3378, %3387 ], [ %3398, %3391 ]
  store ptr %3400, ptr @zz_hold, align 8, !tbaa !8
  %3401 = getelementptr inbounds %struct.word_type, ptr %3400, i64 0, i32 1
  %3402 = load i8, ptr %3401, align 8, !tbaa !5
  %3403 = add i8 %3402, -11
  %3404 = icmp ult i8 %3403, 2
  %3405 = getelementptr inbounds %struct.word_type, ptr %3400, i64 0, i32 1, i32 0, i32 1
  %3406 = zext i8 %3402 to i64
  %3407 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3406
  %3408 = select i1 %3404, ptr %3405, ptr %3407
  %3409 = load i8, ptr %3408, align 1, !tbaa !5
  %3410 = zext i8 %3409 to i32
  store i32 %3410, ptr @zz_size, align 4, !tbaa !10
  %3411 = zext i8 %3409 to i64
  %3412 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3411
  %3413 = load ptr, ptr %3412, align 8, !tbaa !8
  store ptr %3413, ptr %3400, align 8, !tbaa !5
  %3414 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3415 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3416 = sext i32 %3415 to i64
  %3417 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3416
  store ptr %3414, ptr %3417, align 8, !tbaa !8
  store ptr %3377, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %3418 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3419 = load ptr, ptr %3418, align 8, !tbaa !5
  %3420 = icmp eq ptr %3419, %0
  br i1 %3420, label %3421, label %3422

3421:                                             ; preds = %3399
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %3437

3422:                                             ; preds = %3399
  store ptr %3419, ptr @zz_res, align 8, !tbaa !8
  %3423 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3424 = load ptr, ptr %3423, align 8, !tbaa !5
  %3425 = getelementptr inbounds [2 x %struct.LIST], ptr %3419, i64 0, i64 1
  store ptr %3424, ptr %3425, align 8, !tbaa !5
  %3426 = getelementptr inbounds [2 x %struct.LIST], ptr %3424, i64 0, i64 1, i32 1
  store ptr %3419, ptr %3426, align 8, !tbaa !5
  store ptr %0, ptr %3418, align 8, !tbaa !5
  store ptr %0, ptr %3423, align 8, !tbaa !5
  store ptr %3419, ptr @xx_tmp, align 8, !tbaa !8
  %3427 = icmp eq ptr %3419, null
  %3428 = icmp eq ptr %3377, null
  %3429 = select i1 %3427, i1 true, i1 %3428
  br i1 %3429, label %3437, label %3430

3430:                                             ; preds = %3422
  %3431 = getelementptr inbounds [2 x %struct.LIST], ptr %3419, i64 0, i64 1
  %3432 = load ptr, ptr %3431, align 8, !tbaa !5
  store ptr %3432, ptr @zz_tmp, align 8, !tbaa !8
  %3433 = getelementptr inbounds [2 x %struct.LIST], ptr %3377, i64 0, i64 1
  %3434 = load ptr, ptr %3433, align 8, !tbaa !5
  store ptr %3434, ptr %3431, align 8, !tbaa !5
  %3435 = getelementptr inbounds [2 x %struct.LIST], ptr %3434, i64 0, i64 1, i32 1
  store ptr %3419, ptr %3435, align 8, !tbaa !5
  store ptr %3432, ptr %3433, align 8, !tbaa !5
  %3436 = getelementptr inbounds [2 x %struct.LIST], ptr %3432, i64 0, i64 1, i32 1
  store ptr %3377, ptr %3436, align 8, !tbaa !5
  br label %3437

3437:                                             ; preds = %3421, %3422, %3430
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %3438 = load ptr, ptr %3367, align 8, !tbaa !5
  %3439 = icmp eq ptr %3438, %0
  br i1 %3439, label %3440, label %3441

3440:                                             ; preds = %3437
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3377, ptr @zz_res, align 8, !tbaa !8
  br label %3463

3441:                                             ; preds = %3437
  store ptr %3438, ptr @zz_res, align 8, !tbaa !8
  %3442 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %3442, ptr %3438, align 8, !tbaa !5
  %3443 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3444 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3445 = load ptr, ptr %3444, align 8, !tbaa !5
  %3446 = getelementptr inbounds %struct.LIST, ptr %3445, i64 0, i32 1
  store ptr %3443, ptr %3446, align 8, !tbaa !5
  %3447 = getelementptr inbounds %struct.LIST, ptr %3444, i64 0, i32 1
  store ptr %3444, ptr %3447, align 8, !tbaa !5
  store ptr %3444, ptr %3444, align 8, !tbaa !5
  %3448 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3449 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %3448, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3449, ptr @zz_res, align 8, !tbaa !8
  store ptr %3448, ptr @zz_hold, align 8, !tbaa !8
  %3450 = icmp eq ptr %3448, null
  %3451 = icmp eq ptr %3449, null
  %3452 = select i1 %3450, i1 true, i1 %3451
  br i1 %3452, label %3463, label %3453

3453:                                             ; preds = %3441
  %3454 = load ptr, ptr %3448, align 8, !tbaa !5
  store ptr %3454, ptr @zz_tmp, align 8, !tbaa !8
  %3455 = load ptr, ptr %3449, align 8, !tbaa !5
  store ptr %3455, ptr %3448, align 8, !tbaa !5
  %3456 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3457 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3458 = load ptr, ptr %3457, align 8, !tbaa !5
  %3459 = getelementptr inbounds %struct.LIST, ptr %3458, i64 0, i32 1
  store ptr %3456, ptr %3459, align 8, !tbaa !5
  %3460 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3460, ptr %3457, align 8, !tbaa !5
  %3461 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3462 = getelementptr inbounds %struct.LIST, ptr %3460, i64 0, i32 1
  store ptr %3461, ptr %3462, align 8, !tbaa !5
  br label %3463

3463:                                             ; preds = %3440, %3441, %3453
  %3464 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %3464, ptr @zz_hold, align 8, !tbaa !8
  %3465 = getelementptr inbounds %struct.word_type, ptr %3464, i64 0, i32 1
  %3466 = load i8, ptr %3465, align 8, !tbaa !5
  %3467 = add i8 %3466, -11
  %3468 = icmp ult i8 %3467, 2
  %3469 = getelementptr inbounds %struct.word_type, ptr %3464, i64 0, i32 1, i32 0, i32 1
  %3470 = zext i8 %3466 to i64
  %3471 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3470
  %3472 = select i1 %3468, ptr %3469, ptr %3471
  %3473 = load i8, ptr %3472, align 1, !tbaa !5
  %3474 = zext i8 %3473 to i32
  store i32 %3474, ptr @zz_size, align 4, !tbaa !10
  %3475 = zext i8 %3473 to i64
  %3476 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3475
  %3477 = load ptr, ptr %3476, align 8, !tbaa !8
  store ptr %3477, ptr %3464, align 8, !tbaa !5
  %3478 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3479 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3480 = sext i32 %3479 to i64
  %3481 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3480
  store ptr %3478, ptr %3481, align 8, !tbaa !8
  br label %5677

3482:                                             ; preds = %35
  %3483 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3484 = load ptr, ptr %3483, align 8, !tbaa !5
  %3485 = icmp eq ptr %3484, %0
  br i1 %3485, label %3490, label %3486

3486:                                             ; preds = %3482
  %3487 = getelementptr inbounds %struct.LIST, ptr %3484, i64 0, i32 1
  %3488 = load ptr, ptr %3487, align 8, !tbaa !5
  %3489 = icmp eq ptr %3488, %0
  br i1 %3489, label %3493, label %3490

3490:                                             ; preds = %3486, %3482
  %3491 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3492 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3491, ptr noundef nonnull @.str.32) #9
  br label %3493

3493:                                             ; preds = %3490, %3486
  store i8 17, ptr %36, align 8, !tbaa !5
  %3494 = load i8, ptr %2, align 4
  %3495 = lshr i8 %3494, 2
  %3496 = getelementptr inbounds i8, ptr %0, i64 42
  %3497 = load i16, ptr %3496, align 2
  %3498 = and i8 %3495, 1
  %3499 = zext nneg i8 %3498 to i16
  %3500 = shl nuw nsw i16 %3499, 11
  %3501 = and i16 %3497, -2049
  %3502 = or disjoint i16 %3500, %3501
  store i16 %3502, ptr %3496, align 2
  %3503 = load i8, ptr %2, align 4
  %3504 = and i8 %3503, -5
  store i8 %3504, ptr %2, align 4
  %3505 = load i16, ptr %2, align 4
  %3506 = and i16 %3505, 128
  %3507 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %3508 = load i16, ptr %3507, align 8
  %3509 = and i16 %3508, -129
  %3510 = or disjoint i16 %3509, %3506
  store i16 %3510, ptr %3507, align 8
  %3511 = load i16, ptr %2, align 4
  %3512 = and i16 %3511, 256
  %3513 = and i16 %3510, -257
  %3514 = or disjoint i16 %3513, %3512
  store i16 %3514, ptr %3507, align 8
  %3515 = load i16, ptr %2, align 4
  %3516 = and i16 %3515, 512
  %3517 = and i16 %3514, -513
  %3518 = or disjoint i16 %3517, %3516
  store i16 %3518, ptr %3507, align 8
  %3519 = load i16, ptr %2, align 4
  %3520 = and i16 %3519, 7168
  %3521 = and i16 %3518, -7169
  %3522 = or disjoint i16 %3521, %3520
  store i16 %3522, ptr %3507, align 8
  %3523 = load i16, ptr %2, align 4
  %3524 = and i16 %3523, -8192
  %3525 = and i16 %3522, 8191
  %3526 = or disjoint i16 %3525, %3524
  store i16 %3526, ptr %3507, align 8
  %3527 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %3528 = load i16, ptr %3527, align 2, !tbaa !5
  %3529 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %3528, ptr %3529, align 2, !tbaa !5
  %3530 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %3531 = load i8, ptr %3530, align 4
  %3532 = and i8 %3531, 3
  %3533 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %3534 = load i8, ptr %3533, align 4
  %3535 = and i8 %3534, -4
  %3536 = or disjoint i8 %3535, %3532
  store i8 %3536, ptr %3533, align 4
  %3537 = load i8, ptr %3530, align 4
  %3538 = and i8 %3537, 12
  %3539 = and i8 %3536, -13
  %3540 = or disjoint i8 %3539, %3538
  store i8 %3540, ptr %3533, align 4
  %3541 = load i8, ptr %3530, align 4
  %3542 = and i8 %3541, 112
  %3543 = and i8 %3540, -113
  %3544 = or disjoint i8 %3543, %3542
  store i8 %3544, ptr %3533, align 4
  %3545 = load i8, ptr %2, align 4
  %3546 = and i8 %3545, 8
  %3547 = trunc i16 %3510 to i8
  %3548 = and i8 %3547, -9
  %3549 = or disjoint i8 %3548, %3546
  store i8 %3549, ptr %3507, align 8
  %3550 = load i16, ptr %3530, align 4
  %3551 = and i16 %3550, 128
  %3552 = load i16, ptr %3533, align 4
  %3553 = and i16 %3552, -129
  %3554 = or disjoint i16 %3553, %3551
  store i16 %3554, ptr %3533, align 4
  %3555 = load i16, ptr %3530, align 4
  %3556 = and i16 %3555, 256
  %3557 = and i16 %3554, -257
  %3558 = or disjoint i16 %3557, %3556
  store i16 %3558, ptr %3533, align 4
  %3559 = load i16, ptr %3530, align 4
  %3560 = and i16 %3559, 512
  %3561 = and i16 %3558, -513
  %3562 = or disjoint i16 %3561, %3560
  store i16 %3562, ptr %3533, align 4
  %3563 = load i16, ptr %3530, align 4
  %3564 = and i16 %3563, 7168
  %3565 = and i16 %3562, -7169
  %3566 = or disjoint i16 %3565, %3564
  store i16 %3566, ptr %3533, align 4
  %3567 = load i16, ptr %3530, align 4
  %3568 = and i16 %3567, -8192
  %3569 = and i16 %3566, 8191
  %3570 = or disjoint i16 %3569, %3568
  store i16 %3570, ptr %3533, align 4
  %3571 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %3572 = load i16, ptr %3571, align 2, !tbaa !5
  %3573 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %3572, ptr %3573, align 2, !tbaa !5
  %3574 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %3575 = load i32, ptr %3574, align 4
  %3576 = and i32 %3575, 4095
  %3577 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %3578 = load i32, ptr %3577, align 4
  %3579 = and i32 %3578, -4096
  %3580 = or disjoint i32 %3579, %3576
  store i32 %3580, ptr %3577, align 4
  %3581 = load i32, ptr %3574, align 4
  %3582 = and i32 %3581, 4190208
  %3583 = and i32 %3580, -4190209
  %3584 = or disjoint i32 %3583, %3582
  store i32 %3584, ptr %3577, align 4
  %3585 = load i32, ptr %3574, align 4
  %3586 = and i32 %3585, 12582912
  %3587 = and i32 %3584, -12582913
  %3588 = or disjoint i32 %3587, %3586
  store i32 %3588, ptr %3577, align 4
  %3589 = load i32, ptr %3574, align 4
  %3590 = and i32 %3589, 1056964608
  %3591 = and i32 %3588, -1056964609
  %3592 = or disjoint i32 %3591, %3590
  store i32 %3592, ptr %3577, align 4
  %3593 = load i32, ptr %3574, align 4
  %3594 = and i32 %3593, -2147483648
  %3595 = and i32 %3592, 2147483647
  %3596 = or disjoint i32 %3595, %3594
  store i32 %3596, ptr %3577, align 4
  %3597 = load i32, ptr %3574, align 4
  %3598 = and i32 %3597, 1073741824
  %3599 = and i32 %3596, -1073741825
  %3600 = or disjoint i32 %3599, %3598
  store i32 %3600, ptr %3577, align 4
  %3601 = load i8, ptr %2, align 4
  %3602 = and i8 %3601, 1
  %3603 = and i8 %3549, -2
  %3604 = or disjoint i8 %3603, %3602
  store i8 %3604, ptr %3507, align 8
  %3605 = load i8, ptr %2, align 4
  %3606 = and i8 %3605, 2
  %3607 = and i8 %3604, -3
  %3608 = or disjoint i8 %3607, %3606
  store i8 %3608, ptr %3507, align 8
  %3609 = load i8, ptr %2, align 4
  %3610 = and i8 %3609, 4
  %3611 = and i8 %3608, -5
  %3612 = or disjoint i8 %3611, %3610
  store i8 %3612, ptr %3507, align 8
  %3613 = load i8, ptr %2, align 4
  %3614 = and i8 %3613, 112
  %3615 = and i8 %3612, -113
  %3616 = or disjoint i8 %3615, %3614
  store i8 %3616, ptr %3507, align 8
  %3617 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %3618 = load i16, ptr %3617, align 4, !tbaa !15
  %3619 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %3618, ptr %3619, align 8, !tbaa !5
  %3620 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %3621 = load i16, ptr %3620, align 2, !tbaa !17
  %3622 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %3621, ptr %3622, align 2, !tbaa !5
  %3623 = load ptr, ptr %3483, align 8, !tbaa !5
  br label %3624

3624:                                             ; preds = %3624, %3493
  %3625 = phi ptr [ %3623, %3493 ], [ %3627, %3624 ]
  %3626 = getelementptr inbounds [2 x %struct.LIST], ptr %3625, i64 0, i64 1
  %3627 = load ptr, ptr %3626, align 8, !tbaa !5
  %3628 = getelementptr inbounds %struct.word_type, ptr %3627, i64 0, i32 1
  %3629 = load i8, ptr %3628, align 8, !tbaa !5
  %3630 = icmp eq i8 %3629, 0
  br i1 %3630, label %3624, label %3631

3631:                                             ; preds = %3624
  %3632 = tail call ptr @Manifest(ptr noundef nonnull %3627, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  tail call fastcc void @SetUnderline(ptr noundef %0)
  %3633 = getelementptr inbounds ptr, ptr %3, i64 1
  %3634 = load ptr, ptr %3633, align 8, !tbaa !8
  %3635 = icmp eq ptr %3634, null
  br i1 %3635, label %3636, label %3646

3636:                                             ; preds = %3631
  %3637 = load ptr, ptr %3, align 8, !tbaa !8
  %3638 = icmp eq ptr %3637, null
  br i1 %3638, label %3639, label %3646

3639:                                             ; preds = %3636
  %3640 = getelementptr inbounds ptr, ptr %4, i64 1
  %3641 = load ptr, ptr %3640, align 8, !tbaa !8
  %3642 = icmp eq ptr %3641, null
  br i1 %3642, label %3643, label %3646

3643:                                             ; preds = %3639
  %3644 = load ptr, ptr %4, align 8, !tbaa !8
  %3645 = icmp eq ptr %3644, null
  br i1 %3645, label %5677, label %3646

3646:                                             ; preds = %3643, %3639, %3636, %3631
  %3647 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

3648:                                             ; preds = %35, %35, %35
  %3649 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3650 = load ptr, ptr %3649, align 8, !tbaa !5
  %3651 = icmp eq ptr %3650, %0
  br i1 %3651, label %3656, label %3652

3652:                                             ; preds = %3648
  %3653 = getelementptr inbounds %struct.LIST, ptr %3650, i64 0, i32 1
  %3654 = load ptr, ptr %3653, align 8, !tbaa !5
  %3655 = icmp eq ptr %3654, %0
  br i1 %3655, label %3656, label %3660

3656:                                             ; preds = %3652, %3648
  %3657 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3658 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3657, ptr noundef nonnull @.str.33) #9
  %3659 = load ptr, ptr %3649, align 8, !tbaa !5
  br label %3660

3660:                                             ; preds = %3656, %3652
  %3661 = phi ptr [ %3650, %3652 ], [ %3659, %3656 ]
  br label %3662

3662:                                             ; preds = %3660, %3662
  %3663 = phi ptr [ %3665, %3662 ], [ %3661, %3660 ]
  %3664 = getelementptr inbounds [2 x %struct.LIST], ptr %3663, i64 0, i64 1
  %3665 = load ptr, ptr %3664, align 8, !tbaa !5
  %3666 = getelementptr inbounds %struct.word_type, ptr %3665, i64 0, i32 1
  %3667 = load i8, ptr %3666, align 8, !tbaa !5
  switch i8 %3667, label %3668 [
    i8 0, label %3662
    i8 17, label %3751
  ]

3668:                                             ; preds = %3662
  %3669 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %3670 = zext i8 %3669 to i32
  store i32 %3670, ptr @zz_size, align 4, !tbaa !10
  %3671 = zext i8 %3669 to i64
  %3672 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3671
  %3673 = load ptr, ptr %3672, align 8, !tbaa !8
  %3674 = icmp eq ptr %3673, null
  br i1 %3674, label %3675, label %3678

3675:                                             ; preds = %3668
  %3676 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3677 = tail call ptr @GetMemory(i32 noundef %3670, ptr noundef %3676) #9
  store ptr %3677, ptr @zz_hold, align 8, !tbaa !8
  br label %3682

3678:                                             ; preds = %3668
  store ptr %3673, ptr @zz_hold, align 8, !tbaa !8
  %3679 = load ptr, ptr %3673, align 8, !tbaa !5
  %3680 = zext i8 %3669 to i64
  %3681 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3680
  store ptr %3679, ptr %3681, align 8, !tbaa !8
  br label %3682

3682:                                             ; preds = %3675, %3678
  %3683 = phi ptr [ %3677, %3675 ], [ %3673, %3678 ]
  %3684 = getelementptr inbounds %struct.word_type, ptr %3683, i64 0, i32 1
  store i8 17, ptr %3684, align 8, !tbaa !5
  %3685 = getelementptr inbounds [2 x %struct.LIST], ptr %3683, i64 0, i64 1
  %3686 = getelementptr inbounds [2 x %struct.LIST], ptr %3683, i64 0, i64 1, i32 1
  store ptr %3683, ptr %3686, align 8, !tbaa !5
  store ptr %3683, ptr %3685, align 8, !tbaa !5
  %3687 = getelementptr inbounds %struct.LIST, ptr %3683, i64 0, i32 1
  store ptr %3683, ptr %3687, align 8, !tbaa !5
  store ptr %3683, ptr %3683, align 8, !tbaa !5
  %3688 = load i8, ptr %2, align 4
  %3689 = lshr i8 %3688, 2
  %3690 = getelementptr inbounds i8, ptr %3683, i64 42
  %3691 = load i16, ptr %3690, align 2
  %3692 = and i8 %3689, 1
  %3693 = zext nneg i8 %3692 to i16
  %3694 = shl nuw nsw i16 %3693, 11
  %3695 = and i16 %3691, -2049
  %3696 = or disjoint i16 %3694, %3695
  store i16 %3696, ptr %3690, align 2
  %3697 = load i8, ptr %2, align 4
  %3698 = and i8 %3697, -5
  store i8 %3698, ptr %2, align 4
  %3699 = load ptr, ptr %3649, align 8, !tbaa !5
  store ptr %3699, ptr @xx_link, align 8, !tbaa !8
  %3700 = getelementptr inbounds [2 x %struct.LIST], ptr %3699, i64 0, i64 1, i32 1
  %3701 = load ptr, ptr %3700, align 8, !tbaa !5
  %3702 = icmp eq ptr %3701, %3699
  br i1 %3702, label %3708, label %3703

3703:                                             ; preds = %3682
  %3704 = getelementptr inbounds [2 x %struct.LIST], ptr %3699, i64 0, i64 1
  %3705 = load ptr, ptr %3704, align 8, !tbaa !5
  %3706 = getelementptr inbounds [2 x %struct.LIST], ptr %3701, i64 0, i64 1
  store ptr %3705, ptr %3706, align 8, !tbaa !5
  %3707 = getelementptr inbounds [2 x %struct.LIST], ptr %3705, i64 0, i64 1, i32 1
  store ptr %3701, ptr %3707, align 8, !tbaa !5
  store ptr %3699, ptr %3700, align 8, !tbaa !5
  store ptr %3699, ptr %3704, align 8, !tbaa !5
  br label %3708

3708:                                             ; preds = %3682, %3703
  store ptr %3699, ptr @zz_res, align 8, !tbaa !8
  store ptr %3683, ptr @zz_hold, align 8, !tbaa !8
  %3709 = load ptr, ptr %3685, align 8, !tbaa !5
  store ptr %3709, ptr @zz_tmp, align 8, !tbaa !8
  %3710 = getelementptr inbounds [2 x %struct.LIST], ptr %3699, i64 0, i64 1
  %3711 = load ptr, ptr %3710, align 8, !tbaa !5
  store ptr %3711, ptr %3685, align 8, !tbaa !5
  %3712 = getelementptr inbounds [2 x %struct.LIST], ptr %3711, i64 0, i64 1, i32 1
  store ptr %3683, ptr %3712, align 8, !tbaa !5
  store ptr %3709, ptr %3710, align 8, !tbaa !5
  %3713 = getelementptr inbounds [2 x %struct.LIST], ptr %3709, i64 0, i64 1, i32 1
  store ptr %3699, ptr %3713, align 8, !tbaa !5
  %3714 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3715 = zext i8 %3714 to i32
  store i32 %3715, ptr @zz_size, align 4, !tbaa !10
  %3716 = zext i8 %3714 to i64
  %3717 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3716
  %3718 = load ptr, ptr %3717, align 8, !tbaa !8
  %3719 = icmp eq ptr %3718, null
  br i1 %3719, label %3720, label %3723

3720:                                             ; preds = %3708
  %3721 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3722 = tail call ptr @GetMemory(i32 noundef %3715, ptr noundef %3721) #9
  br label %3727

3723:                                             ; preds = %3708
  store ptr %3718, ptr @zz_hold, align 8, !tbaa !8
  %3724 = load ptr, ptr %3718, align 8, !tbaa !5
  %3725 = zext i8 %3714 to i64
  %3726 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3725
  store ptr %3724, ptr %3726, align 8, !tbaa !8
  br label %3727

3727:                                             ; preds = %3720, %3723
  %3728 = phi ptr [ %3722, %3720 ], [ %3718, %3723 ]
  %3729 = getelementptr inbounds %struct.word_type, ptr %3728, i64 0, i32 1
  store i8 0, ptr %3729, align 8, !tbaa !5
  %3730 = getelementptr inbounds [2 x %struct.LIST], ptr %3728, i64 0, i64 1, i32 1
  store ptr %3728, ptr %3730, align 8, !tbaa !5
  %3731 = getelementptr inbounds [2 x %struct.LIST], ptr %3728, i64 0, i64 1
  store ptr %3728, ptr %3731, align 8, !tbaa !5
  %3732 = getelementptr inbounds %struct.LIST, ptr %3728, i64 0, i32 1
  store ptr %3728, ptr %3732, align 8, !tbaa !5
  store ptr %3728, ptr %3728, align 8, !tbaa !5
  store ptr %3728, ptr @xx_link, align 8, !tbaa !8
  store ptr %3728, ptr @zz_res, align 8, !tbaa !8
  store ptr %3683, ptr @zz_hold, align 8, !tbaa !8
  %3733 = load ptr, ptr %3683, align 8, !tbaa !5
  store ptr %3733, ptr @zz_tmp, align 8, !tbaa !8
  %3734 = load ptr, ptr %3728, align 8, !tbaa !5
  store ptr %3734, ptr %3683, align 8, !tbaa !5
  %3735 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3736 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3737 = load ptr, ptr %3736, align 8, !tbaa !5
  %3738 = getelementptr inbounds %struct.LIST, ptr %3737, i64 0, i32 1
  store ptr %3735, ptr %3738, align 8, !tbaa !5
  %3739 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3739, ptr %3736, align 8, !tbaa !5
  %3740 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3741 = getelementptr inbounds %struct.LIST, ptr %3739, i64 0, i32 1
  store ptr %3740, ptr %3741, align 8, !tbaa !5
  %3742 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3742, ptr @zz_res, align 8, !tbaa !8
  store ptr %3665, ptr @zz_hold, align 8, !tbaa !8
  %3743 = icmp eq ptr %3742, null
  br i1 %3743, label %3751, label %3744

3744:                                             ; preds = %3727
  %3745 = getelementptr inbounds [2 x %struct.LIST], ptr %3665, i64 0, i64 1
  %3746 = load ptr, ptr %3745, align 8, !tbaa !5
  store ptr %3746, ptr @zz_tmp, align 8, !tbaa !8
  %3747 = getelementptr inbounds [2 x %struct.LIST], ptr %3742, i64 0, i64 1
  %3748 = load ptr, ptr %3747, align 8, !tbaa !5
  store ptr %3748, ptr %3745, align 8, !tbaa !5
  %3749 = getelementptr inbounds [2 x %struct.LIST], ptr %3748, i64 0, i64 1, i32 1
  store ptr %3665, ptr %3749, align 8, !tbaa !5
  store ptr %3746, ptr %3747, align 8, !tbaa !5
  %3750 = getelementptr inbounds [2 x %struct.LIST], ptr %3746, i64 0, i64 1, i32 1
  store ptr %3742, ptr %3750, align 8, !tbaa !5
  br label %3751

3751:                                             ; preds = %3662, %3744, %3727
  %3752 = phi ptr [ %3683, %3727 ], [ %3683, %3744 ], [ %3665, %3662 ]
  %3753 = tail call ptr @Manifest(ptr noundef nonnull %3752, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %3754 = getelementptr inbounds %struct.LIST, ptr %3753, i64 0, i32 1
  %3755 = load ptr, ptr %3754, align 8, !tbaa !5
  %3756 = icmp eq ptr %3755, %3753
  br i1 %3756, label %3853, label %3757

3757:                                             ; preds = %3751, %3848
  %3758 = phi ptr [ %3851, %3848 ], [ %3755, %3751 ]
  %3759 = phi ptr [ %3849, %3848 ], [ %3753, %3751 ]
  br label %3760

3760:                                             ; preds = %3757, %3760
  %3761 = phi ptr [ %3763, %3760 ], [ %3758, %3757 ]
  %3762 = getelementptr inbounds [2 x %struct.LIST], ptr %3761, i64 0, i64 1
  %3763 = load ptr, ptr %3762, align 8, !tbaa !5
  %3764 = getelementptr inbounds %struct.word_type, ptr %3763, i64 0, i32 1
  %3765 = load i8, ptr %3764, align 8, !tbaa !5
  switch i8 %3765, label %3847 [
    i8 0, label %3760
    i8 17, label %3766
  ]

3766:                                             ; preds = %3760
  store ptr %3763, ptr %20, align 8, !tbaa !8
  %3767 = getelementptr inbounds %struct.LIST, ptr %3763, i64 0, i32 1
  %3768 = load ptr, ptr %3767, align 8, !tbaa !5
  %3769 = icmp eq ptr %3768, %3763
  br i1 %3769, label %3798, label %3770

3770:                                             ; preds = %3766
  %3771 = getelementptr inbounds %struct.word_type, ptr %3768, i64 0, i32 1
  %3772 = load i8, ptr %3771, align 8, !tbaa !5
  %3773 = icmp eq i8 %3772, 0
  br i1 %3773, label %3777, label %3774

3774:                                             ; preds = %3770
  %3775 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3776 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3775, ptr noundef nonnull @.str.1) #9
  br label %3777

3777:                                             ; preds = %3774, %3770
  store ptr %3768, ptr @zz_res, align 8, !tbaa !8
  store ptr %3763, ptr @zz_hold, align 8, !tbaa !8
  %3778 = load ptr, ptr %3763, align 8, !tbaa !5
  store ptr %3778, ptr @zz_tmp, align 8, !tbaa !8
  %3779 = load ptr, ptr %3768, align 8, !tbaa !5
  store ptr %3779, ptr %3763, align 8, !tbaa !5
  %3780 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3781 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3782 = load ptr, ptr %3781, align 8, !tbaa !5
  %3783 = getelementptr inbounds %struct.LIST, ptr %3782, i64 0, i32 1
  store ptr %3780, ptr %3783, align 8, !tbaa !5
  %3784 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3784, ptr %3781, align 8, !tbaa !5
  %3785 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3786 = getelementptr inbounds %struct.LIST, ptr %3784, i64 0, i32 1
  store ptr %3785, ptr %3786, align 8, !tbaa !5
  store ptr %3768, ptr @zz_res, align 8, !tbaa !8
  store ptr %3758, ptr @zz_hold, align 8, !tbaa !8
  %3787 = icmp eq ptr %3758, null
  br i1 %3787, label %3798, label %3788

3788:                                             ; preds = %3777
  %3789 = load ptr, ptr %3758, align 8, !tbaa !5
  store ptr %3789, ptr @zz_tmp, align 8, !tbaa !8
  %3790 = load ptr, ptr %3768, align 8, !tbaa !5
  store ptr %3790, ptr %3758, align 8, !tbaa !5
  %3791 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3792 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3793 = load ptr, ptr %3792, align 8, !tbaa !5
  %3794 = getelementptr inbounds %struct.LIST, ptr %3793, i64 0, i32 1
  store ptr %3791, ptr %3794, align 8, !tbaa !5
  %3795 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3795, ptr %3792, align 8, !tbaa !5
  %3796 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3797 = getelementptr inbounds %struct.LIST, ptr %3795, i64 0, i32 1
  store ptr %3796, ptr %3797, align 8, !tbaa !5
  br label %3798

3798:                                             ; preds = %3777, %3788, %3766
  %3799 = getelementptr inbounds [2 x %struct.LIST], ptr %3763, i64 0, i64 1, i32 1
  %3800 = load ptr, ptr %3799, align 8, !tbaa !5
  store ptr %3800, ptr @xx_link, align 8, !tbaa !8
  %3801 = getelementptr inbounds [2 x %struct.LIST], ptr %3800, i64 0, i64 1, i32 1
  %3802 = load ptr, ptr %3801, align 8, !tbaa !5
  %3803 = icmp eq ptr %3802, %3800
  br i1 %3803, label %3809, label %3804

3804:                                             ; preds = %3798
  store ptr %3802, ptr @zz_res, align 8, !tbaa !8
  %3805 = getelementptr inbounds [2 x %struct.LIST], ptr %3800, i64 0, i64 1
  %3806 = load ptr, ptr %3805, align 8, !tbaa !5
  %3807 = getelementptr inbounds [2 x %struct.LIST], ptr %3802, i64 0, i64 1
  store ptr %3806, ptr %3807, align 8, !tbaa !5
  %3808 = getelementptr inbounds [2 x %struct.LIST], ptr %3806, i64 0, i64 1, i32 1
  store ptr %3802, ptr %3808, align 8, !tbaa !5
  store ptr %3800, ptr %3801, align 8, !tbaa !5
  store ptr %3800, ptr %3805, align 8, !tbaa !5
  br label %3809

3809:                                             ; preds = %3798, %3804
  %3810 = phi ptr [ %3802, %3804 ], [ null, %3798 ]
  store ptr %3810, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3800, ptr @zz_hold, align 8, !tbaa !8
  %3811 = getelementptr inbounds %struct.LIST, ptr %3800, i64 0, i32 1
  %3812 = load ptr, ptr %3811, align 8, !tbaa !5
  %3813 = icmp eq ptr %3812, %3800
  br i1 %3813, label %3822, label %3814

3814:                                             ; preds = %3809
  store ptr %3812, ptr @zz_res, align 8, !tbaa !8
  %3815 = load ptr, ptr %3800, align 8, !tbaa !5
  store ptr %3815, ptr %3812, align 8, !tbaa !5
  %3816 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3817 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3818 = load ptr, ptr %3817, align 8, !tbaa !5
  %3819 = getelementptr inbounds %struct.LIST, ptr %3818, i64 0, i32 1
  store ptr %3816, ptr %3819, align 8, !tbaa !5
  %3820 = getelementptr inbounds %struct.LIST, ptr %3817, i64 0, i32 1
  store ptr %3817, ptr %3820, align 8, !tbaa !5
  store ptr %3817, ptr %3817, align 8, !tbaa !5
  %3821 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3822

3822:                                             ; preds = %3809, %3814
  %3823 = phi ptr [ %3800, %3809 ], [ %3821, %3814 ]
  store ptr %3823, ptr @zz_hold, align 8, !tbaa !8
  %3824 = getelementptr inbounds %struct.word_type, ptr %3823, i64 0, i32 1
  %3825 = load i8, ptr %3824, align 8, !tbaa !5
  %3826 = add i8 %3825, -11
  %3827 = icmp ult i8 %3826, 2
  %3828 = getelementptr inbounds %struct.word_type, ptr %3823, i64 0, i32 1, i32 0, i32 1
  %3829 = zext i8 %3825 to i64
  %3830 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3829
  %3831 = select i1 %3827, ptr %3828, ptr %3830
  %3832 = load i8, ptr %3831, align 1, !tbaa !5
  %3833 = zext i8 %3832 to i32
  store i32 %3833, ptr @zz_size, align 4, !tbaa !10
  %3834 = zext i8 %3832 to i64
  %3835 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3834
  %3836 = load ptr, ptr %3835, align 8, !tbaa !8
  store ptr %3836, ptr %3823, align 8, !tbaa !5
  %3837 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3838 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3839 = sext i32 %3838 to i64
  %3840 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3839
  store ptr %3837, ptr %3840, align 8, !tbaa !8
  %3841 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3842 = getelementptr inbounds [2 x %struct.LIST], ptr %3841, i64 0, i64 1, i32 1
  %3843 = load ptr, ptr %3842, align 8, !tbaa !5
  %3844 = icmp eq ptr %3843, %3841
  br i1 %3844, label %3845, label %3848

3845:                                             ; preds = %3822
  %3846 = tail call i32 @DisposeObject(ptr noundef nonnull %3841) #9
  br label %3848

3847:                                             ; preds = %3760
  store ptr %3763, ptr %20, align 8, !tbaa !8
  br label %3848

3848:                                             ; preds = %3822, %3845, %3847
  %3849 = phi ptr [ %3759, %3845 ], [ %3759, %3822 ], [ %3758, %3847 ]
  %3850 = getelementptr inbounds %struct.LIST, ptr %3849, i64 0, i32 1
  %3851 = load ptr, ptr %3850, align 8, !tbaa !5
  %3852 = icmp eq ptr %3851, %3753
  br i1 %3852, label %3853, label %3757

3853:                                             ; preds = %3848, %3751
  %3854 = load ptr, ptr %3649, align 8, !tbaa !5
  %3855 = getelementptr inbounds %struct.LIST, ptr %3854, i64 0, i32 1
  %3856 = load ptr, ptr %3855, align 8, !tbaa !5
  br label %3857

3857:                                             ; preds = %3857, %3853
  %3858 = phi ptr [ %3856, %3853 ], [ %3860, %3857 ]
  %3859 = getelementptr inbounds [2 x %struct.LIST], ptr %3858, i64 0, i64 1
  %3860 = load ptr, ptr %3859, align 8, !tbaa !5
  %3861 = getelementptr inbounds %struct.word_type, ptr %3860, i64 0, i32 1
  %3862 = load i8, ptr %3861, align 8, !tbaa !5
  switch i8 %3862, label %3863 [
    i8 0, label %3857
    i8 17, label %3948
  ]

3863:                                             ; preds = %3857
  %3864 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %3865 = zext i8 %3864 to i32
  store i32 %3865, ptr @zz_size, align 4, !tbaa !10
  %3866 = zext i8 %3864 to i64
  %3867 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3866
  %3868 = load ptr, ptr %3867, align 8, !tbaa !8
  %3869 = icmp eq ptr %3868, null
  br i1 %3869, label %3870, label %3873

3870:                                             ; preds = %3863
  %3871 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3872 = tail call ptr @GetMemory(i32 noundef %3865, ptr noundef %3871) #9
  store ptr %3872, ptr @zz_hold, align 8, !tbaa !8
  br label %3877

3873:                                             ; preds = %3863
  store ptr %3868, ptr @zz_hold, align 8, !tbaa !8
  %3874 = load ptr, ptr %3868, align 8, !tbaa !5
  %3875 = zext i8 %3864 to i64
  %3876 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3875
  store ptr %3874, ptr %3876, align 8, !tbaa !8
  br label %3877

3877:                                             ; preds = %3870, %3873
  %3878 = phi ptr [ %3872, %3870 ], [ %3868, %3873 ]
  %3879 = getelementptr inbounds %struct.word_type, ptr %3878, i64 0, i32 1
  store i8 17, ptr %3879, align 8, !tbaa !5
  %3880 = getelementptr inbounds [2 x %struct.LIST], ptr %3878, i64 0, i64 1
  %3881 = getelementptr inbounds [2 x %struct.LIST], ptr %3878, i64 0, i64 1, i32 1
  store ptr %3878, ptr %3881, align 8, !tbaa !5
  store ptr %3878, ptr %3880, align 8, !tbaa !5
  %3882 = getelementptr inbounds %struct.LIST, ptr %3878, i64 0, i32 1
  store ptr %3878, ptr %3882, align 8, !tbaa !5
  store ptr %3878, ptr %3878, align 8, !tbaa !5
  %3883 = load i8, ptr %2, align 4
  %3884 = lshr i8 %3883, 2
  %3885 = getelementptr inbounds i8, ptr %3878, i64 42
  %3886 = load i16, ptr %3885, align 2
  %3887 = and i8 %3884, 1
  %3888 = zext nneg i8 %3887 to i16
  %3889 = shl nuw nsw i16 %3888, 11
  %3890 = and i16 %3886, -2049
  %3891 = or disjoint i16 %3889, %3890
  store i16 %3891, ptr %3885, align 2
  %3892 = load i8, ptr %2, align 4
  %3893 = and i8 %3892, -5
  store i8 %3893, ptr %2, align 4
  %3894 = load ptr, ptr %3649, align 8, !tbaa !5
  %3895 = getelementptr inbounds %struct.LIST, ptr %3894, i64 0, i32 1
  %3896 = load ptr, ptr %3895, align 8, !tbaa !5
  store ptr %3896, ptr @xx_link, align 8, !tbaa !8
  %3897 = getelementptr inbounds [2 x %struct.LIST], ptr %3896, i64 0, i64 1, i32 1
  %3898 = load ptr, ptr %3897, align 8, !tbaa !5
  %3899 = icmp eq ptr %3898, %3896
  br i1 %3899, label %3905, label %3900

3900:                                             ; preds = %3877
  %3901 = getelementptr inbounds [2 x %struct.LIST], ptr %3896, i64 0, i64 1
  %3902 = load ptr, ptr %3901, align 8, !tbaa !5
  %3903 = getelementptr inbounds [2 x %struct.LIST], ptr %3898, i64 0, i64 1
  store ptr %3902, ptr %3903, align 8, !tbaa !5
  %3904 = getelementptr inbounds [2 x %struct.LIST], ptr %3902, i64 0, i64 1, i32 1
  store ptr %3898, ptr %3904, align 8, !tbaa !5
  store ptr %3896, ptr %3897, align 8, !tbaa !5
  store ptr %3896, ptr %3901, align 8, !tbaa !5
  br label %3905

3905:                                             ; preds = %3877, %3900
  store ptr %3896, ptr @zz_res, align 8, !tbaa !8
  store ptr %3878, ptr @zz_hold, align 8, !tbaa !8
  %3906 = load ptr, ptr %3880, align 8, !tbaa !5
  store ptr %3906, ptr @zz_tmp, align 8, !tbaa !8
  %3907 = getelementptr inbounds [2 x %struct.LIST], ptr %3896, i64 0, i64 1
  %3908 = load ptr, ptr %3907, align 8, !tbaa !5
  store ptr %3908, ptr %3880, align 8, !tbaa !5
  %3909 = getelementptr inbounds [2 x %struct.LIST], ptr %3908, i64 0, i64 1, i32 1
  store ptr %3878, ptr %3909, align 8, !tbaa !5
  store ptr %3906, ptr %3907, align 8, !tbaa !5
  %3910 = getelementptr inbounds [2 x %struct.LIST], ptr %3906, i64 0, i64 1, i32 1
  store ptr %3896, ptr %3910, align 8, !tbaa !5
  %3911 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3912 = zext i8 %3911 to i32
  store i32 %3912, ptr @zz_size, align 4, !tbaa !10
  %3913 = zext i8 %3911 to i64
  %3914 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3913
  %3915 = load ptr, ptr %3914, align 8, !tbaa !8
  %3916 = icmp eq ptr %3915, null
  br i1 %3916, label %3917, label %3920

3917:                                             ; preds = %3905
  %3918 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3919 = tail call ptr @GetMemory(i32 noundef %3912, ptr noundef %3918) #9
  br label %3924

3920:                                             ; preds = %3905
  store ptr %3915, ptr @zz_hold, align 8, !tbaa !8
  %3921 = load ptr, ptr %3915, align 8, !tbaa !5
  %3922 = zext i8 %3911 to i64
  %3923 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3922
  store ptr %3921, ptr %3923, align 8, !tbaa !8
  br label %3924

3924:                                             ; preds = %3917, %3920
  %3925 = phi ptr [ %3919, %3917 ], [ %3915, %3920 ]
  %3926 = getelementptr inbounds %struct.word_type, ptr %3925, i64 0, i32 1
  store i8 0, ptr %3926, align 8, !tbaa !5
  %3927 = getelementptr inbounds [2 x %struct.LIST], ptr %3925, i64 0, i64 1, i32 1
  store ptr %3925, ptr %3927, align 8, !tbaa !5
  %3928 = getelementptr inbounds [2 x %struct.LIST], ptr %3925, i64 0, i64 1
  store ptr %3925, ptr %3928, align 8, !tbaa !5
  %3929 = getelementptr inbounds %struct.LIST, ptr %3925, i64 0, i32 1
  store ptr %3925, ptr %3929, align 8, !tbaa !5
  store ptr %3925, ptr %3925, align 8, !tbaa !5
  store ptr %3925, ptr @xx_link, align 8, !tbaa !8
  store ptr %3925, ptr @zz_res, align 8, !tbaa !8
  store ptr %3878, ptr @zz_hold, align 8, !tbaa !8
  %3930 = load ptr, ptr %3878, align 8, !tbaa !5
  store ptr %3930, ptr @zz_tmp, align 8, !tbaa !8
  %3931 = load ptr, ptr %3925, align 8, !tbaa !5
  store ptr %3931, ptr %3878, align 8, !tbaa !5
  %3932 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3933 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3934 = load ptr, ptr %3933, align 8, !tbaa !5
  %3935 = getelementptr inbounds %struct.LIST, ptr %3934, i64 0, i32 1
  store ptr %3932, ptr %3935, align 8, !tbaa !5
  %3936 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3936, ptr %3933, align 8, !tbaa !5
  %3937 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3938 = getelementptr inbounds %struct.LIST, ptr %3936, i64 0, i32 1
  store ptr %3937, ptr %3938, align 8, !tbaa !5
  %3939 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3939, ptr @zz_res, align 8, !tbaa !8
  store ptr %3860, ptr @zz_hold, align 8, !tbaa !8
  %3940 = icmp eq ptr %3939, null
  br i1 %3940, label %3948, label %3941

3941:                                             ; preds = %3924
  %3942 = getelementptr inbounds [2 x %struct.LIST], ptr %3860, i64 0, i64 1
  %3943 = load ptr, ptr %3942, align 8, !tbaa !5
  store ptr %3943, ptr @zz_tmp, align 8, !tbaa !8
  %3944 = getelementptr inbounds [2 x %struct.LIST], ptr %3939, i64 0, i64 1
  %3945 = load ptr, ptr %3944, align 8, !tbaa !5
  store ptr %3945, ptr %3942, align 8, !tbaa !5
  %3946 = getelementptr inbounds [2 x %struct.LIST], ptr %3945, i64 0, i64 1, i32 1
  store ptr %3860, ptr %3946, align 8, !tbaa !5
  store ptr %3943, ptr %3944, align 8, !tbaa !5
  %3947 = getelementptr inbounds [2 x %struct.LIST], ptr %3943, i64 0, i64 1, i32 1
  store ptr %3939, ptr %3947, align 8, !tbaa !5
  br label %3948

3948:                                             ; preds = %3857, %3941, %3924
  %3949 = phi ptr [ %3878, %3924 ], [ %3878, %3941 ], [ %3860, %3857 ]
  %3950 = tail call ptr @Manifest(ptr noundef nonnull %3949, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %3951 = getelementptr inbounds %struct.LIST, ptr %3950, i64 0, i32 1
  %3952 = load ptr, ptr %3951, align 8, !tbaa !5
  %3953 = icmp eq ptr %3952, %3950
  br i1 %3953, label %4050, label %3954

3954:                                             ; preds = %3948, %4045
  %3955 = phi ptr [ %4048, %4045 ], [ %3952, %3948 ]
  %3956 = phi ptr [ %4046, %4045 ], [ %3950, %3948 ]
  br label %3957

3957:                                             ; preds = %3954, %3957
  %3958 = phi ptr [ %3960, %3957 ], [ %3955, %3954 ]
  %3959 = getelementptr inbounds [2 x %struct.LIST], ptr %3958, i64 0, i64 1
  %3960 = load ptr, ptr %3959, align 8, !tbaa !5
  %3961 = getelementptr inbounds %struct.word_type, ptr %3960, i64 0, i32 1
  %3962 = load i8, ptr %3961, align 8, !tbaa !5
  switch i8 %3962, label %4044 [
    i8 0, label %3957
    i8 17, label %3963
  ]

3963:                                             ; preds = %3957
  store ptr %3960, ptr %20, align 8, !tbaa !8
  %3964 = getelementptr inbounds %struct.LIST, ptr %3960, i64 0, i32 1
  %3965 = load ptr, ptr %3964, align 8, !tbaa !5
  %3966 = icmp eq ptr %3965, %3960
  br i1 %3966, label %3995, label %3967

3967:                                             ; preds = %3963
  %3968 = getelementptr inbounds %struct.word_type, ptr %3965, i64 0, i32 1
  %3969 = load i8, ptr %3968, align 8, !tbaa !5
  %3970 = icmp eq i8 %3969, 0
  br i1 %3970, label %3974, label %3971

3971:                                             ; preds = %3967
  %3972 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3973 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3972, ptr noundef nonnull @.str.1) #9
  br label %3974

3974:                                             ; preds = %3971, %3967
  store ptr %3965, ptr @zz_res, align 8, !tbaa !8
  store ptr %3960, ptr @zz_hold, align 8, !tbaa !8
  %3975 = load ptr, ptr %3960, align 8, !tbaa !5
  store ptr %3975, ptr @zz_tmp, align 8, !tbaa !8
  %3976 = load ptr, ptr %3965, align 8, !tbaa !5
  store ptr %3976, ptr %3960, align 8, !tbaa !5
  %3977 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3978 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3979 = load ptr, ptr %3978, align 8, !tbaa !5
  %3980 = getelementptr inbounds %struct.LIST, ptr %3979, i64 0, i32 1
  store ptr %3977, ptr %3980, align 8, !tbaa !5
  %3981 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3981, ptr %3978, align 8, !tbaa !5
  %3982 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3983 = getelementptr inbounds %struct.LIST, ptr %3981, i64 0, i32 1
  store ptr %3982, ptr %3983, align 8, !tbaa !5
  store ptr %3965, ptr @zz_res, align 8, !tbaa !8
  store ptr %3955, ptr @zz_hold, align 8, !tbaa !8
  %3984 = icmp eq ptr %3955, null
  br i1 %3984, label %3995, label %3985

3985:                                             ; preds = %3974
  %3986 = load ptr, ptr %3955, align 8, !tbaa !5
  store ptr %3986, ptr @zz_tmp, align 8, !tbaa !8
  %3987 = load ptr, ptr %3965, align 8, !tbaa !5
  store ptr %3987, ptr %3955, align 8, !tbaa !5
  %3988 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3989 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3990 = load ptr, ptr %3989, align 8, !tbaa !5
  %3991 = getelementptr inbounds %struct.LIST, ptr %3990, i64 0, i32 1
  store ptr %3988, ptr %3991, align 8, !tbaa !5
  %3992 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3992, ptr %3989, align 8, !tbaa !5
  %3993 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3994 = getelementptr inbounds %struct.LIST, ptr %3992, i64 0, i32 1
  store ptr %3993, ptr %3994, align 8, !tbaa !5
  br label %3995

3995:                                             ; preds = %3974, %3985, %3963
  %3996 = getelementptr inbounds [2 x %struct.LIST], ptr %3960, i64 0, i64 1, i32 1
  %3997 = load ptr, ptr %3996, align 8, !tbaa !5
  store ptr %3997, ptr @xx_link, align 8, !tbaa !8
  %3998 = getelementptr inbounds [2 x %struct.LIST], ptr %3997, i64 0, i64 1, i32 1
  %3999 = load ptr, ptr %3998, align 8, !tbaa !5
  %4000 = icmp eq ptr %3999, %3997
  br i1 %4000, label %4006, label %4001

4001:                                             ; preds = %3995
  store ptr %3999, ptr @zz_res, align 8, !tbaa !8
  %4002 = getelementptr inbounds [2 x %struct.LIST], ptr %3997, i64 0, i64 1
  %4003 = load ptr, ptr %4002, align 8, !tbaa !5
  %4004 = getelementptr inbounds [2 x %struct.LIST], ptr %3999, i64 0, i64 1
  store ptr %4003, ptr %4004, align 8, !tbaa !5
  %4005 = getelementptr inbounds [2 x %struct.LIST], ptr %4003, i64 0, i64 1, i32 1
  store ptr %3999, ptr %4005, align 8, !tbaa !5
  store ptr %3997, ptr %3998, align 8, !tbaa !5
  store ptr %3997, ptr %4002, align 8, !tbaa !5
  br label %4006

4006:                                             ; preds = %3995, %4001
  %4007 = phi ptr [ %3999, %4001 ], [ null, %3995 ]
  store ptr %4007, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3997, ptr @zz_hold, align 8, !tbaa !8
  %4008 = getelementptr inbounds %struct.LIST, ptr %3997, i64 0, i32 1
  %4009 = load ptr, ptr %4008, align 8, !tbaa !5
  %4010 = icmp eq ptr %4009, %3997
  br i1 %4010, label %4019, label %4011

4011:                                             ; preds = %4006
  store ptr %4009, ptr @zz_res, align 8, !tbaa !8
  %4012 = load ptr, ptr %3997, align 8, !tbaa !5
  store ptr %4012, ptr %4009, align 8, !tbaa !5
  %4013 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4014 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4015 = load ptr, ptr %4014, align 8, !tbaa !5
  %4016 = getelementptr inbounds %struct.LIST, ptr %4015, i64 0, i32 1
  store ptr %4013, ptr %4016, align 8, !tbaa !5
  %4017 = getelementptr inbounds %struct.LIST, ptr %4014, i64 0, i32 1
  store ptr %4014, ptr %4017, align 8, !tbaa !5
  store ptr %4014, ptr %4014, align 8, !tbaa !5
  %4018 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4019

4019:                                             ; preds = %4006, %4011
  %4020 = phi ptr [ %3997, %4006 ], [ %4018, %4011 ]
  store ptr %4020, ptr @zz_hold, align 8, !tbaa !8
  %4021 = getelementptr inbounds %struct.word_type, ptr %4020, i64 0, i32 1
  %4022 = load i8, ptr %4021, align 8, !tbaa !5
  %4023 = add i8 %4022, -11
  %4024 = icmp ult i8 %4023, 2
  %4025 = getelementptr inbounds %struct.word_type, ptr %4020, i64 0, i32 1, i32 0, i32 1
  %4026 = zext i8 %4022 to i64
  %4027 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4026
  %4028 = select i1 %4024, ptr %4025, ptr %4027
  %4029 = load i8, ptr %4028, align 1, !tbaa !5
  %4030 = zext i8 %4029 to i32
  store i32 %4030, ptr @zz_size, align 4, !tbaa !10
  %4031 = zext i8 %4029 to i64
  %4032 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4031
  %4033 = load ptr, ptr %4032, align 8, !tbaa !8
  store ptr %4033, ptr %4020, align 8, !tbaa !5
  %4034 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4035 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4036 = sext i32 %4035 to i64
  %4037 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4036
  store ptr %4034, ptr %4037, align 8, !tbaa !8
  %4038 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %4039 = getelementptr inbounds [2 x %struct.LIST], ptr %4038, i64 0, i64 1, i32 1
  %4040 = load ptr, ptr %4039, align 8, !tbaa !5
  %4041 = icmp eq ptr %4040, %4038
  br i1 %4041, label %4042, label %4045

4042:                                             ; preds = %4019
  %4043 = tail call i32 @DisposeObject(ptr noundef nonnull %4038) #9
  br label %4045

4044:                                             ; preds = %3957
  store ptr %3960, ptr %20, align 8, !tbaa !8
  br label %4045

4045:                                             ; preds = %4019, %4042, %4044
  %4046 = phi ptr [ %3956, %4042 ], [ %3956, %4019 ], [ %3955, %4044 ]
  %4047 = getelementptr inbounds %struct.LIST, ptr %4046, i64 0, i32 1
  %4048 = load ptr, ptr %4047, align 8, !tbaa !5
  %4049 = icmp eq ptr %4048, %3950
  br i1 %4049, label %4050, label %3954

4050:                                             ; preds = %4045, %3948
  %4051 = load i8, ptr %36, align 8, !tbaa !5
  %4052 = icmp eq i8 %4051, 75
  br i1 %4052, label %4053, label %4055

4053:                                             ; preds = %4050
  %4054 = tail call ptr @Meld(ptr noundef %3753, ptr noundef %3950) #9
  br label %4216

4055:                                             ; preds = %4050
  %4056 = load ptr, ptr %3754, align 8, !tbaa !5
  %4057 = load ptr, ptr %3951, align 8, !tbaa !5
  %4058 = icmp ne ptr %4056, %3753
  %4059 = icmp ne ptr %4057, %3950
  %4060 = select i1 %4058, i1 %4059, i1 false
  br i1 %4060, label %4061, label %4098

4061:                                             ; preds = %4055, %4090
  %4062 = phi ptr [ %4094, %4090 ], [ %4057, %4055 ]
  %4063 = phi ptr [ %4093, %4090 ], [ %4056, %4055 ]
  br label %4064

4064:                                             ; preds = %4061, %4064
  %4065 = phi ptr [ %4067, %4064 ], [ %4063, %4061 ]
  %4066 = getelementptr inbounds [2 x %struct.LIST], ptr %4065, i64 0, i64 1
  %4067 = load ptr, ptr %4066, align 8, !tbaa !5
  %4068 = getelementptr inbounds %struct.word_type, ptr %4067, i64 0, i32 1
  %4069 = load i8, ptr %4068, align 8, !tbaa !5
  %4070 = icmp eq i8 %4069, 0
  br i1 %4070, label %4064, label %4071

4071:                                             ; preds = %4064, %4071
  %4072 = phi ptr [ %4074, %4071 ], [ %4062, %4064 ]
  %4073 = getelementptr inbounds [2 x %struct.LIST], ptr %4072, i64 0, i64 1
  %4074 = load ptr, ptr %4073, align 8, !tbaa !5
  %4075 = getelementptr inbounds %struct.word_type, ptr %4074, i64 0, i32 1
  %4076 = load i8, ptr %4075, align 8, !tbaa !5
  %4077 = icmp eq i8 %4076, 0
  br i1 %4077, label %4071, label %4078

4078:                                             ; preds = %4071
  %4079 = add i8 %4069, -11
  %4080 = add i8 %4076, -11
  %4081 = or i8 %4080, %4079
  %4082 = icmp ult i8 %4081, 2
  br i1 %4082, label %4083, label %4088

4083:                                             ; preds = %4078
  %4084 = getelementptr inbounds %struct.word_type, ptr %4067, i64 0, i32 4
  %4085 = getelementptr inbounds %struct.word_type, ptr %4074, i64 0, i32 4
  %4086 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4084, ptr noundef nonnull dereferenceable(1) %4085) #10
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4090, label %4098

4088:                                             ; preds = %4078
  %4089 = icmp eq i8 %4069, %4076
  br i1 %4089, label %4090, label %4098

4090:                                             ; preds = %4088, %4083
  %4091 = getelementptr inbounds %struct.LIST, ptr %4062, i64 0, i32 1
  %4092 = getelementptr inbounds %struct.LIST, ptr %4063, i64 0, i32 1
  %4093 = load ptr, ptr %4092, align 8, !tbaa !5
  %4094 = load ptr, ptr %4091, align 8, !tbaa !5
  %4095 = icmp ne ptr %4093, %3753
  %4096 = icmp ne ptr %4094, %3950
  %4097 = select i1 %4095, i1 %4096, i1 false
  br i1 %4097, label %4061, label %4098

4098:                                             ; preds = %4090, %4083, %4088, %4055
  %4099 = phi ptr [ %4056, %4055 ], [ %4063, %4088 ], [ %4063, %4083 ], [ %4093, %4090 ]
  %4100 = phi ptr [ %4057, %4055 ], [ %4062, %4088 ], [ %4062, %4083 ], [ %4094, %4090 ]
  switch i8 %4051, label %4216 [
    i8 73, label %4101
    i8 74, label %4141
  ]

4101:                                             ; preds = %4098
  %4102 = icmp eq ptr %4100, %3950
  br i1 %4102, label %4216, label %4103

4103:                                             ; preds = %4101
  %4104 = icmp eq ptr %4099, %3753
  br i1 %4104, label %4216, label %4105

4105:                                             ; preds = %4103
  %4106 = icmp eq ptr %4100, %4057
  br i1 %4106, label %4107, label %4110

4107:                                             ; preds = %4105
  %4108 = getelementptr inbounds %struct.word_type, ptr %3950, i64 0, i32 1
  %4109 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %4108) #9
  br label %4216

4110:                                             ; preds = %4105
  %4111 = load ptr, ptr %4100, align 8, !tbaa !5
  %4112 = icmp eq ptr %4111, %3950
  br i1 %4112, label %4216, label %4113

4113:                                             ; preds = %4110
  %4114 = getelementptr inbounds %struct.word_type, ptr %4111, i64 0, i32 1
  %4115 = load i8, ptr %4114, align 8, !tbaa !5
  %4116 = icmp eq i8 %4115, 0
  br i1 %4116, label %4120, label %4117

4117:                                             ; preds = %4113
  %4118 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4119 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4118, ptr noundef nonnull @.str.1) #9
  br label %4120

4120:                                             ; preds = %4117, %4113
  store ptr %4111, ptr @zz_res, align 8, !tbaa !8
  store ptr %3950, ptr @zz_hold, align 8, !tbaa !8
  %4121 = load ptr, ptr %3950, align 8, !tbaa !5
  store ptr %4121, ptr @zz_tmp, align 8, !tbaa !8
  %4122 = load ptr, ptr %4111, align 8, !tbaa !5
  store ptr %4122, ptr %3950, align 8, !tbaa !5
  %4123 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4124 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4125 = load ptr, ptr %4124, align 8, !tbaa !5
  %4126 = getelementptr inbounds %struct.LIST, ptr %4125, i64 0, i32 1
  store ptr %4123, ptr %4126, align 8, !tbaa !5
  %4127 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4127, ptr %4124, align 8, !tbaa !5
  %4128 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4129 = getelementptr inbounds %struct.LIST, ptr %4127, i64 0, i32 1
  store ptr %4128, ptr %4129, align 8, !tbaa !5
  store ptr %4111, ptr @zz_res, align 8, !tbaa !8
  store ptr %3753, ptr @zz_hold, align 8, !tbaa !8
  %4130 = icmp eq ptr %3753, null
  br i1 %4130, label %4216, label %4131

4131:                                             ; preds = %4120
  %4132 = load ptr, ptr %3753, align 8, !tbaa !5
  store ptr %4132, ptr @zz_tmp, align 8, !tbaa !8
  %4133 = load ptr, ptr %4111, align 8, !tbaa !5
  store ptr %4133, ptr %3753, align 8, !tbaa !5
  %4134 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4135 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4136 = load ptr, ptr %4135, align 8, !tbaa !5
  %4137 = getelementptr inbounds %struct.LIST, ptr %4136, i64 0, i32 1
  store ptr %4134, ptr %4137, align 8, !tbaa !5
  %4138 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4138, ptr %4135, align 8, !tbaa !5
  %4139 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4140 = getelementptr inbounds %struct.LIST, ptr %4138, i64 0, i32 1
  store ptr %4139, ptr %4140, align 8, !tbaa !5
  br label %4216

4141:                                             ; preds = %4098
  %4142 = icmp eq ptr %4100, %3950
  br i1 %4142, label %4143, label %4146

4143:                                             ; preds = %4141
  %4144 = getelementptr inbounds %struct.word_type, ptr %3950, i64 0, i32 1
  %4145 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %4144) #9
  br label %4216

4146:                                             ; preds = %4141
  %4147 = icmp eq ptr %4099, %3753
  br i1 %4147, label %4148, label %4183

4148:                                             ; preds = %4146
  %4149 = getelementptr inbounds %struct.LIST, ptr %4100, i64 0, i32 1
  %4150 = load ptr, ptr %4149, align 8, !tbaa !5
  %4151 = icmp eq ptr %4057, %4150
  br i1 %4151, label %4216, label %4152

4152:                                             ; preds = %4148
  %4153 = getelementptr inbounds %struct.word_type, ptr %4057, i64 0, i32 1
  %4154 = load i8, ptr %4153, align 8, !tbaa !5
  %4155 = icmp eq i8 %4154, 0
  br i1 %4155, label %4159, label %4156

4156:                                             ; preds = %4152
  %4157 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4158 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4157, ptr noundef nonnull @.str.1) #9
  br label %4159

4159:                                             ; preds = %4156, %4152
  store ptr %4057, ptr @zz_res, align 8, !tbaa !8
  store ptr %4150, ptr @zz_hold, align 8, !tbaa !8
  %4160 = icmp eq ptr %4150, null
  br i1 %4160, label %4171, label %4161

4161:                                             ; preds = %4159
  %4162 = load ptr, ptr %4150, align 8, !tbaa !5
  store ptr %4162, ptr @zz_tmp, align 8, !tbaa !8
  %4163 = load ptr, ptr %4057, align 8, !tbaa !5
  store ptr %4163, ptr %4150, align 8, !tbaa !5
  %4164 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4165 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4166 = load ptr, ptr %4165, align 8, !tbaa !5
  %4167 = getelementptr inbounds %struct.LIST, ptr %4166, i64 0, i32 1
  store ptr %4164, ptr %4167, align 8, !tbaa !5
  %4168 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4168, ptr %4165, align 8, !tbaa !5
  %4169 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4170 = getelementptr inbounds %struct.LIST, ptr %4168, i64 0, i32 1
  store ptr %4169, ptr %4170, align 8, !tbaa !5
  br label %4171

4171:                                             ; preds = %4159, %4161
  store ptr %4057, ptr @zz_res, align 8, !tbaa !8
  store ptr %3753, ptr @zz_hold, align 8, !tbaa !8
  %4172 = icmp eq ptr %3753, null
  br i1 %4172, label %4216, label %4173

4173:                                             ; preds = %4171
  %4174 = load ptr, ptr %3753, align 8, !tbaa !5
  store ptr %4174, ptr @zz_tmp, align 8, !tbaa !8
  %4175 = load ptr, ptr %4057, align 8, !tbaa !5
  store ptr %4175, ptr %3753, align 8, !tbaa !5
  %4176 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4177 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4178 = load ptr, ptr %4177, align 8, !tbaa !5
  %4179 = getelementptr inbounds %struct.LIST, ptr %4178, i64 0, i32 1
  store ptr %4176, ptr %4179, align 8, !tbaa !5
  %4180 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4180, ptr %4177, align 8, !tbaa !5
  %4181 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4182 = getelementptr inbounds %struct.LIST, ptr %4180, i64 0, i32 1
  store ptr %4181, ptr %4182, align 8, !tbaa !5
  br label %4216

4183:                                             ; preds = %4146
  %4184 = icmp eq ptr %4057, %4100
  br i1 %4184, label %4216, label %4185

4185:                                             ; preds = %4183
  %4186 = getelementptr inbounds %struct.word_type, ptr %4057, i64 0, i32 1
  %4187 = load i8, ptr %4186, align 8, !tbaa !5
  %4188 = icmp eq i8 %4187, 0
  br i1 %4188, label %4192, label %4189

4189:                                             ; preds = %4185
  %4190 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4191 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4190, ptr noundef nonnull @.str.1) #9
  br label %4192

4192:                                             ; preds = %4189, %4185
  store ptr %4057, ptr @zz_res, align 8, !tbaa !8
  store ptr %4100, ptr @zz_hold, align 8, !tbaa !8
  %4193 = icmp eq ptr %4100, null
  br i1 %4193, label %4204, label %4194

4194:                                             ; preds = %4192
  %4195 = load ptr, ptr %4100, align 8, !tbaa !5
  store ptr %4195, ptr @zz_tmp, align 8, !tbaa !8
  %4196 = load ptr, ptr %4057, align 8, !tbaa !5
  store ptr %4196, ptr %4100, align 8, !tbaa !5
  %4197 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4198 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4199 = load ptr, ptr %4198, align 8, !tbaa !5
  %4200 = getelementptr inbounds %struct.LIST, ptr %4199, i64 0, i32 1
  store ptr %4197, ptr %4200, align 8, !tbaa !5
  %4201 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4201, ptr %4198, align 8, !tbaa !5
  %4202 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4203 = getelementptr inbounds %struct.LIST, ptr %4201, i64 0, i32 1
  store ptr %4202, ptr %4203, align 8, !tbaa !5
  br label %4204

4204:                                             ; preds = %4192, %4194
  store ptr %4057, ptr @zz_res, align 8, !tbaa !8
  store ptr %3753, ptr @zz_hold, align 8, !tbaa !8
  %4205 = icmp eq ptr %3753, null
  br i1 %4205, label %4216, label %4206

4206:                                             ; preds = %4204
  %4207 = load ptr, ptr %3753, align 8, !tbaa !5
  store ptr %4207, ptr @zz_tmp, align 8, !tbaa !8
  %4208 = load ptr, ptr %4057, align 8, !tbaa !5
  store ptr %4208, ptr %3753, align 8, !tbaa !5
  %4209 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4210 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4211 = load ptr, ptr %4210, align 8, !tbaa !5
  %4212 = getelementptr inbounds %struct.LIST, ptr %4211, i64 0, i32 1
  store ptr %4209, ptr %4212, align 8, !tbaa !5
  %4213 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4213, ptr %4210, align 8, !tbaa !5
  %4214 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4215 = getelementptr inbounds %struct.LIST, ptr %4213, i64 0, i32 1
  store ptr %4214, ptr %4215, align 8, !tbaa !5
  br label %4216

4216:                                             ; preds = %4183, %4206, %4204, %4148, %4173, %4171, %4098, %4110, %4131, %4120, %4103, %4101, %4107, %4143, %4053
  %4217 = phi ptr [ %4054, %4053 ], [ %4109, %4107 ], [ %4145, %4143 ], [ %3950, %4101 ], [ %3753, %4103 ], [ %3950, %4120 ], [ %3950, %4131 ], [ %3950, %4110 ], [ undef, %4098 ], [ %3950, %4171 ], [ %3950, %4173 ], [ %3950, %4148 ], [ %3950, %4204 ], [ %3950, %4206 ], [ %3950, %4183 ]
  %4218 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4219 = load ptr, ptr %4218, align 8, !tbaa !5
  %4220 = icmp eq ptr %4219, %0
  br i1 %4220, label %4221, label %4222

4221:                                             ; preds = %4216
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4217, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %4237

4222:                                             ; preds = %4216
  %4223 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4224 = load ptr, ptr %4223, align 8, !tbaa !5
  %4225 = getelementptr inbounds [2 x %struct.LIST], ptr %4219, i64 0, i64 1
  store ptr %4224, ptr %4225, align 8, !tbaa !5
  %4226 = getelementptr inbounds [2 x %struct.LIST], ptr %4224, i64 0, i64 1, i32 1
  store ptr %4219, ptr %4226, align 8, !tbaa !5
  store ptr %0, ptr %4218, align 8, !tbaa !5
  store ptr %0, ptr %4223, align 8, !tbaa !5
  store ptr %4219, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4217, ptr @zz_res, align 8, !tbaa !8
  store ptr %4219, ptr @zz_hold, align 8, !tbaa !8
  %4227 = icmp eq ptr %4219, null
  %4228 = icmp eq ptr %4217, null
  %4229 = select i1 %4227, i1 true, i1 %4228
  br i1 %4229, label %4237, label %4230

4230:                                             ; preds = %4222
  %4231 = getelementptr inbounds [2 x %struct.LIST], ptr %4219, i64 0, i64 1
  %4232 = load ptr, ptr %4231, align 8, !tbaa !5
  store ptr %4232, ptr @zz_tmp, align 8, !tbaa !8
  %4233 = getelementptr inbounds [2 x %struct.LIST], ptr %4217, i64 0, i64 1
  %4234 = load ptr, ptr %4233, align 8, !tbaa !5
  store ptr %4234, ptr %4231, align 8, !tbaa !5
  %4235 = getelementptr inbounds [2 x %struct.LIST], ptr %4234, i64 0, i64 1, i32 1
  store ptr %4219, ptr %4235, align 8, !tbaa !5
  store ptr %4232, ptr %4233, align 8, !tbaa !5
  %4236 = getelementptr inbounds [2 x %struct.LIST], ptr %4232, i64 0, i64 1, i32 1
  store ptr %4217, ptr %4236, align 8, !tbaa !5
  br label %4237

4237:                                             ; preds = %4221, %4222, %4230
  %4238 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %4239 = getelementptr inbounds ptr, ptr %3, i64 1
  %4240 = load ptr, ptr %4239, align 8, !tbaa !8
  %4241 = icmp eq ptr %4240, null
  br i1 %4241, label %4242, label %4252

4242:                                             ; preds = %4237
  %4243 = load ptr, ptr %3, align 8, !tbaa !8
  %4244 = icmp eq ptr %4243, null
  br i1 %4244, label %4245, label %4252

4245:                                             ; preds = %4242
  %4246 = getelementptr inbounds ptr, ptr %4, i64 1
  %4247 = load ptr, ptr %4246, align 8, !tbaa !8
  %4248 = icmp eq ptr %4247, null
  br i1 %4248, label %4249, label %4252

4249:                                             ; preds = %4245
  %4250 = load ptr, ptr %4, align 8, !tbaa !8
  %4251 = icmp eq ptr %4250, null
  br i1 %4251, label %5677, label %4252

4252:                                             ; preds = %4249, %4245, %4242, %4237
  %4253 = tail call fastcc ptr @insert_split(ptr noundef %4217, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

4254:                                             ; preds = %35
  %4255 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4256 = load ptr, ptr %4255, align 8, !tbaa !5
  br label %4257

4257:                                             ; preds = %4257, %4254
  %4258 = phi ptr [ %4256, %4254 ], [ %4260, %4257 ]
  %4259 = getelementptr inbounds [2 x %struct.LIST], ptr %4258, i64 0, i64 1
  %4260 = load ptr, ptr %4259, align 8, !tbaa !5
  %4261 = getelementptr inbounds %struct.word_type, ptr %4260, i64 0, i32 1
  %4262 = load i8, ptr %4261, align 8, !tbaa !5
  %4263 = icmp eq i8 %4262, 0
  br i1 %4263, label %4257, label %4264

4264:                                             ; preds = %4257
  %4265 = tail call ptr @Manifest(ptr noundef nonnull %4260, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  store ptr %4265, ptr %20, align 8, !tbaa !8
  %4266 = load ptr, ptr %4255, align 8, !tbaa !5
  store ptr %4266, ptr @xx_link, align 8, !tbaa !8
  %4267 = getelementptr inbounds [2 x %struct.LIST], ptr %4266, i64 0, i64 1, i32 1
  %4268 = load ptr, ptr %4267, align 8, !tbaa !5
  %4269 = icmp eq ptr %4268, %4266
  br i1 %4269, label %4275, label %4270

4270:                                             ; preds = %4264
  store ptr %4268, ptr @zz_res, align 8, !tbaa !8
  %4271 = getelementptr inbounds [2 x %struct.LIST], ptr %4266, i64 0, i64 1
  %4272 = load ptr, ptr %4271, align 8, !tbaa !5
  %4273 = getelementptr inbounds [2 x %struct.LIST], ptr %4268, i64 0, i64 1
  store ptr %4272, ptr %4273, align 8, !tbaa !5
  %4274 = getelementptr inbounds [2 x %struct.LIST], ptr %4272, i64 0, i64 1, i32 1
  store ptr %4268, ptr %4274, align 8, !tbaa !5
  store ptr %4266, ptr %4267, align 8, !tbaa !5
  store ptr %4266, ptr %4271, align 8, !tbaa !5
  br label %4275

4275:                                             ; preds = %4264, %4270
  store ptr %4266, ptr @zz_hold, align 8, !tbaa !8
  %4276 = getelementptr inbounds %struct.LIST, ptr %4266, i64 0, i32 1
  %4277 = load ptr, ptr %4276, align 8, !tbaa !5
  %4278 = icmp eq ptr %4277, %4266
  br i1 %4278, label %4287, label %4279

4279:                                             ; preds = %4275
  store ptr %4277, ptr @zz_res, align 8, !tbaa !8
  %4280 = load ptr, ptr %4266, align 8, !tbaa !5
  store ptr %4280, ptr %4277, align 8, !tbaa !5
  %4281 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4282 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4283 = load ptr, ptr %4282, align 8, !tbaa !5
  %4284 = getelementptr inbounds %struct.LIST, ptr %4283, i64 0, i32 1
  store ptr %4281, ptr %4284, align 8, !tbaa !5
  %4285 = getelementptr inbounds %struct.LIST, ptr %4282, i64 0, i32 1
  store ptr %4282, ptr %4285, align 8, !tbaa !5
  store ptr %4282, ptr %4282, align 8, !tbaa !5
  %4286 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4287

4287:                                             ; preds = %4275, %4279
  %4288 = phi ptr [ %4266, %4275 ], [ %4286, %4279 ]
  store ptr %4288, ptr @zz_hold, align 8, !tbaa !8
  %4289 = getelementptr inbounds %struct.word_type, ptr %4288, i64 0, i32 1
  %4290 = load i8, ptr %4289, align 8, !tbaa !5
  %4291 = add i8 %4290, -11
  %4292 = icmp ult i8 %4291, 2
  %4293 = getelementptr inbounds %struct.word_type, ptr %4288, i64 0, i32 1, i32 0, i32 1
  %4294 = zext i8 %4290 to i64
  %4295 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4294
  %4296 = select i1 %4292, ptr %4293, ptr %4295
  %4297 = load i8, ptr %4296, align 1, !tbaa !5
  %4298 = zext i8 %4297 to i32
  store i32 %4298, ptr @zz_size, align 4, !tbaa !10
  %4299 = zext i8 %4297 to i64
  %4300 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4299
  %4301 = load ptr, ptr %4300, align 8, !tbaa !8
  store ptr %4301, ptr %4288, align 8, !tbaa !5
  %4302 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4303 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4304 = sext i32 %4303 to i64
  %4305 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4304
  store ptr %4302, ptr %4305, align 8, !tbaa !8
  %4306 = load ptr, ptr %0, align 8, !tbaa !5
  br label %4307

4307:                                             ; preds = %4307, %4287
  %4308 = phi ptr [ %4306, %4287 ], [ %4310, %4307 ]
  %4309 = getelementptr inbounds [2 x %struct.LIST], ptr %4308, i64 0, i64 1
  %4310 = load ptr, ptr %4309, align 8, !tbaa !5
  %4311 = getelementptr inbounds %struct.word_type, ptr %4310, i64 0, i32 1
  %4312 = load i8, ptr %4311, align 8, !tbaa !5
  %4313 = icmp eq i8 %4312, 0
  br i1 %4313, label %4307, label %4314

4314:                                             ; preds = %4307
  %4315 = tail call ptr @Manifest(ptr noundef nonnull %4310, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %4316 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %4316, ptr @xx_link, align 8, !tbaa !8
  %4317 = getelementptr inbounds [2 x %struct.LIST], ptr %4316, i64 0, i64 1, i32 1
  %4318 = load ptr, ptr %4317, align 8, !tbaa !5
  %4319 = icmp eq ptr %4318, %4316
  br i1 %4319, label %4325, label %4320

4320:                                             ; preds = %4314
  %4321 = getelementptr inbounds [2 x %struct.LIST], ptr %4316, i64 0, i64 1
  %4322 = load ptr, ptr %4321, align 8, !tbaa !5
  %4323 = getelementptr inbounds [2 x %struct.LIST], ptr %4318, i64 0, i64 1
  store ptr %4322, ptr %4323, align 8, !tbaa !5
  %4324 = getelementptr inbounds [2 x %struct.LIST], ptr %4322, i64 0, i64 1, i32 1
  store ptr %4318, ptr %4324, align 8, !tbaa !5
  store ptr %4316, ptr %4317, align 8, !tbaa !5
  store ptr %4316, ptr %4321, align 8, !tbaa !5
  br label %4325

4325:                                             ; preds = %4314, %4320
  store ptr %4316, ptr @zz_hold, align 8, !tbaa !8
  %4326 = getelementptr inbounds %struct.LIST, ptr %4316, i64 0, i32 1
  %4327 = load ptr, ptr %4326, align 8, !tbaa !5
  %4328 = icmp eq ptr %4327, %4316
  br i1 %4328, label %4337, label %4329

4329:                                             ; preds = %4325
  store ptr %4327, ptr @zz_res, align 8, !tbaa !8
  %4330 = load ptr, ptr %4316, align 8, !tbaa !5
  store ptr %4330, ptr %4327, align 8, !tbaa !5
  %4331 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4332 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4333 = load ptr, ptr %4332, align 8, !tbaa !5
  %4334 = getelementptr inbounds %struct.LIST, ptr %4333, i64 0, i32 1
  store ptr %4331, ptr %4334, align 8, !tbaa !5
  %4335 = getelementptr inbounds %struct.LIST, ptr %4332, i64 0, i32 1
  store ptr %4332, ptr %4335, align 8, !tbaa !5
  store ptr %4332, ptr %4332, align 8, !tbaa !5
  %4336 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4337

4337:                                             ; preds = %4325, %4329
  %4338 = phi ptr [ %4316, %4325 ], [ %4336, %4329 ]
  store ptr %4338, ptr @zz_hold, align 8, !tbaa !8
  %4339 = getelementptr inbounds %struct.word_type, ptr %4338, i64 0, i32 1
  %4340 = load i8, ptr %4339, align 8, !tbaa !5
  %4341 = add i8 %4340, -11
  %4342 = icmp ult i8 %4341, 2
  %4343 = getelementptr inbounds %struct.word_type, ptr %4338, i64 0, i32 1, i32 0, i32 1
  %4344 = zext i8 %4340 to i64
  %4345 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4344
  %4346 = select i1 %4342, ptr %4343, ptr %4345
  %4347 = load i8, ptr %4346, align 1, !tbaa !5
  %4348 = zext i8 %4347 to i32
  store i32 %4348, ptr @zz_size, align 4, !tbaa !10
  %4349 = zext i8 %4347 to i64
  %4350 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4349
  %4351 = load ptr, ptr %4350, align 8, !tbaa !8
  store ptr %4351, ptr %4338, align 8, !tbaa !5
  %4352 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4353 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4354 = sext i32 %4353 to i64
  %4355 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4354
  store ptr %4352, ptr %4355, align 8, !tbaa !8
  store ptr %4315, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %4356 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4357 = load ptr, ptr %4356, align 8, !tbaa !5
  %4358 = icmp eq ptr %4357, %0
  br i1 %4358, label %4359, label %4360

4359:                                             ; preds = %4337
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %4375

4360:                                             ; preds = %4337
  store ptr %4357, ptr @zz_res, align 8, !tbaa !8
  %4361 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4362 = load ptr, ptr %4361, align 8, !tbaa !5
  %4363 = getelementptr inbounds [2 x %struct.LIST], ptr %4357, i64 0, i64 1
  store ptr %4362, ptr %4363, align 8, !tbaa !5
  %4364 = getelementptr inbounds [2 x %struct.LIST], ptr %4362, i64 0, i64 1, i32 1
  store ptr %4357, ptr %4364, align 8, !tbaa !5
  store ptr %0, ptr %4356, align 8, !tbaa !5
  store ptr %0, ptr %4361, align 8, !tbaa !5
  store ptr %4357, ptr @xx_tmp, align 8, !tbaa !8
  %4365 = icmp eq ptr %4357, null
  %4366 = icmp eq ptr %4315, null
  %4367 = select i1 %4365, i1 true, i1 %4366
  br i1 %4367, label %4375, label %4368

4368:                                             ; preds = %4360
  %4369 = getelementptr inbounds [2 x %struct.LIST], ptr %4357, i64 0, i64 1
  %4370 = load ptr, ptr %4369, align 8, !tbaa !5
  store ptr %4370, ptr @zz_tmp, align 8, !tbaa !8
  %4371 = getelementptr inbounds [2 x %struct.LIST], ptr %4315, i64 0, i64 1
  %4372 = load ptr, ptr %4371, align 8, !tbaa !5
  store ptr %4372, ptr %4369, align 8, !tbaa !5
  %4373 = getelementptr inbounds [2 x %struct.LIST], ptr %4372, i64 0, i64 1, i32 1
  store ptr %4357, ptr %4373, align 8, !tbaa !5
  store ptr %4370, ptr %4371, align 8, !tbaa !5
  %4374 = getelementptr inbounds [2 x %struct.LIST], ptr %4370, i64 0, i64 1, i32 1
  store ptr %4315, ptr %4374, align 8, !tbaa !5
  br label %4375

4375:                                             ; preds = %4359, %4360, %4368
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %4376 = load ptr, ptr %4255, align 8, !tbaa !5
  %4377 = icmp eq ptr %4376, %0
  br i1 %4377, label %4378, label %4379

4378:                                             ; preds = %4375
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4315, ptr @zz_res, align 8, !tbaa !8
  br label %4401

4379:                                             ; preds = %4375
  store ptr %4376, ptr @zz_res, align 8, !tbaa !8
  %4380 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %4380, ptr %4376, align 8, !tbaa !5
  %4381 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4382 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4383 = load ptr, ptr %4382, align 8, !tbaa !5
  %4384 = getelementptr inbounds %struct.LIST, ptr %4383, i64 0, i32 1
  store ptr %4381, ptr %4384, align 8, !tbaa !5
  %4385 = getelementptr inbounds %struct.LIST, ptr %4382, i64 0, i32 1
  store ptr %4382, ptr %4385, align 8, !tbaa !5
  store ptr %4382, ptr %4382, align 8, !tbaa !5
  %4386 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4387 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %4386, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4387, ptr @zz_res, align 8, !tbaa !8
  store ptr %4386, ptr @zz_hold, align 8, !tbaa !8
  %4388 = icmp eq ptr %4386, null
  %4389 = icmp eq ptr %4387, null
  %4390 = select i1 %4388, i1 true, i1 %4389
  br i1 %4390, label %4401, label %4391

4391:                                             ; preds = %4379
  %4392 = load ptr, ptr %4386, align 8, !tbaa !5
  store ptr %4392, ptr @zz_tmp, align 8, !tbaa !8
  %4393 = load ptr, ptr %4387, align 8, !tbaa !5
  store ptr %4393, ptr %4386, align 8, !tbaa !5
  %4394 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4395 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4396 = load ptr, ptr %4395, align 8, !tbaa !5
  %4397 = getelementptr inbounds %struct.LIST, ptr %4396, i64 0, i32 1
  store ptr %4394, ptr %4397, align 8, !tbaa !5
  %4398 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4398, ptr %4395, align 8, !tbaa !5
  %4399 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4400 = getelementptr inbounds %struct.LIST, ptr %4398, i64 0, i32 1
  store ptr %4399, ptr %4400, align 8, !tbaa !5
  br label %4401

4401:                                             ; preds = %4378, %4379, %4391
  %4402 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %4402, ptr @zz_hold, align 8, !tbaa !8
  %4403 = getelementptr inbounds %struct.word_type, ptr %4402, i64 0, i32 1
  %4404 = load i8, ptr %4403, align 8, !tbaa !5
  %4405 = add i8 %4404, -11
  %4406 = icmp ult i8 %4405, 2
  %4407 = getelementptr inbounds %struct.word_type, ptr %4402, i64 0, i32 1, i32 0, i32 1
  %4408 = zext i8 %4404 to i64
  %4409 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4408
  %4410 = select i1 %4406, ptr %4407, ptr %4409
  %4411 = load i8, ptr %4410, align 1, !tbaa !5
  %4412 = zext i8 %4411 to i32
  store i32 %4412, ptr @zz_size, align 4, !tbaa !10
  %4413 = zext i8 %4411 to i64
  %4414 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4413
  %4415 = load ptr, ptr %4414, align 8, !tbaa !8
  store ptr %4415, ptr %4402, align 8, !tbaa !5
  %4416 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4417 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4418 = sext i32 %4417 to i64
  %4419 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4418
  store ptr %4416, ptr %4419, align 8, !tbaa !8
  %4420 = call ptr @InsertObject(ptr noundef %4315, ptr noundef nonnull %20, ptr noundef %2) #9
  %4421 = load ptr, ptr %20, align 8, !tbaa !8
  %4422 = icmp eq ptr %4421, null
  br i1 %4422, label %5677, label %4423

4423:                                             ; preds = %4401
  %4424 = getelementptr inbounds %struct.word_type, ptr %4420, i64 0, i32 1
  %4425 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 34, ptr noundef nonnull @.str.34, i32 noundef 2, ptr noundef nonnull %4424, ptr noundef nonnull @.str.35) #9
  %4426 = load ptr, ptr %20, align 8, !tbaa !8
  %4427 = call i32 @DisposeObject(ptr noundef %4426) #9
  br label %5677

4428:                                             ; preds = %35
  %4429 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4430 = load ptr, ptr %4429, align 8, !tbaa !5
  br label %4431

4431:                                             ; preds = %4431, %4428
  %4432 = phi ptr [ %4430, %4428 ], [ %4434, %4431 ]
  %4433 = getelementptr inbounds [2 x %struct.LIST], ptr %4432, i64 0, i64 1
  %4434 = load ptr, ptr %4433, align 8, !tbaa !5
  %4435 = getelementptr inbounds %struct.word_type, ptr %4434, i64 0, i32 1
  %4436 = load i8, ptr %4435, align 8, !tbaa !5
  switch i8 %4436, label %4441 [
    i8 0, label %4431
    i8 17, label %4437
  ]

4437:                                             ; preds = %4431
  %4438 = getelementptr inbounds %struct.LIST, ptr %4434, i64 0, i32 1
  %4439 = load ptr, ptr %4438, align 8, !tbaa !5
  %4440 = icmp eq ptr %4439, %4434
  br i1 %4440, label %4566, label %4548

4441:                                             ; preds = %4431
  %4442 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 39, ptr noundef nonnull @.str.36, i32 noundef 2, ptr noundef nonnull %36, ptr noundef nonnull @.str.37) #9
  %4443 = tail call ptr @Manifest(ptr noundef nonnull %4434, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %4444 = load ptr, ptr %4429, align 8, !tbaa !5
  store ptr %4444, ptr @xx_link, align 8, !tbaa !8
  %4445 = getelementptr inbounds [2 x %struct.LIST], ptr %4444, i64 0, i64 1, i32 1
  %4446 = load ptr, ptr %4445, align 8, !tbaa !5
  %4447 = icmp eq ptr %4446, %4444
  br i1 %4447, label %4453, label %4448

4448:                                             ; preds = %4441
  %4449 = getelementptr inbounds [2 x %struct.LIST], ptr %4444, i64 0, i64 1
  %4450 = load ptr, ptr %4449, align 8, !tbaa !5
  %4451 = getelementptr inbounds [2 x %struct.LIST], ptr %4446, i64 0, i64 1
  store ptr %4450, ptr %4451, align 8, !tbaa !5
  %4452 = getelementptr inbounds [2 x %struct.LIST], ptr %4450, i64 0, i64 1, i32 1
  store ptr %4446, ptr %4452, align 8, !tbaa !5
  store ptr %4444, ptr %4445, align 8, !tbaa !5
  store ptr %4444, ptr %4449, align 8, !tbaa !5
  br label %4453

4453:                                             ; preds = %4441, %4448
  store ptr %4444, ptr @zz_hold, align 8, !tbaa !8
  %4454 = getelementptr inbounds %struct.LIST, ptr %4444, i64 0, i32 1
  %4455 = load ptr, ptr %4454, align 8, !tbaa !5
  %4456 = icmp eq ptr %4455, %4444
  br i1 %4456, label %4465, label %4457

4457:                                             ; preds = %4453
  store ptr %4455, ptr @zz_res, align 8, !tbaa !8
  %4458 = load ptr, ptr %4444, align 8, !tbaa !5
  store ptr %4458, ptr %4455, align 8, !tbaa !5
  %4459 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4460 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4461 = load ptr, ptr %4460, align 8, !tbaa !5
  %4462 = getelementptr inbounds %struct.LIST, ptr %4461, i64 0, i32 1
  store ptr %4459, ptr %4462, align 8, !tbaa !5
  %4463 = getelementptr inbounds %struct.LIST, ptr %4460, i64 0, i32 1
  store ptr %4460, ptr %4463, align 8, !tbaa !5
  store ptr %4460, ptr %4460, align 8, !tbaa !5
  %4464 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4465

4465:                                             ; preds = %4453, %4457
  %4466 = phi ptr [ %4444, %4453 ], [ %4464, %4457 ]
  store ptr %4466, ptr @zz_hold, align 8, !tbaa !8
  %4467 = getelementptr inbounds %struct.word_type, ptr %4466, i64 0, i32 1
  %4468 = load i8, ptr %4467, align 8, !tbaa !5
  %4469 = add i8 %4468, -11
  %4470 = icmp ult i8 %4469, 2
  %4471 = getelementptr inbounds %struct.word_type, ptr %4466, i64 0, i32 1, i32 0, i32 1
  %4472 = zext i8 %4468 to i64
  %4473 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4472
  %4474 = select i1 %4470, ptr %4471, ptr %4473
  %4475 = load i8, ptr %4474, align 1, !tbaa !5
  %4476 = zext i8 %4475 to i32
  store i32 %4476, ptr @zz_size, align 4, !tbaa !10
  %4477 = zext i8 %4475 to i64
  %4478 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4477
  %4479 = load ptr, ptr %4478, align 8, !tbaa !8
  store ptr %4479, ptr %4466, align 8, !tbaa !5
  %4480 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4481 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4482 = sext i32 %4481 to i64
  %4483 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4482
  store ptr %4480, ptr %4483, align 8, !tbaa !8
  store ptr %4443, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %4484 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4485 = load ptr, ptr %4484, align 8, !tbaa !5
  %4486 = icmp eq ptr %4485, %0
  br i1 %4486, label %4487, label %4488

4487:                                             ; preds = %4465
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %4503

4488:                                             ; preds = %4465
  store ptr %4485, ptr @zz_res, align 8, !tbaa !8
  %4489 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4490 = load ptr, ptr %4489, align 8, !tbaa !5
  %4491 = getelementptr inbounds [2 x %struct.LIST], ptr %4485, i64 0, i64 1
  store ptr %4490, ptr %4491, align 8, !tbaa !5
  %4492 = getelementptr inbounds [2 x %struct.LIST], ptr %4490, i64 0, i64 1, i32 1
  store ptr %4485, ptr %4492, align 8, !tbaa !5
  store ptr %0, ptr %4484, align 8, !tbaa !5
  store ptr %0, ptr %4489, align 8, !tbaa !5
  store ptr %4485, ptr @xx_tmp, align 8, !tbaa !8
  %4493 = icmp eq ptr %4485, null
  %4494 = icmp eq ptr %4443, null
  %4495 = select i1 %4493, i1 true, i1 %4494
  br i1 %4495, label %4503, label %4496

4496:                                             ; preds = %4488
  %4497 = getelementptr inbounds [2 x %struct.LIST], ptr %4485, i64 0, i64 1
  %4498 = load ptr, ptr %4497, align 8, !tbaa !5
  store ptr %4498, ptr @zz_tmp, align 8, !tbaa !8
  %4499 = getelementptr inbounds [2 x %struct.LIST], ptr %4443, i64 0, i64 1
  %4500 = load ptr, ptr %4499, align 8, !tbaa !5
  store ptr %4500, ptr %4497, align 8, !tbaa !5
  %4501 = getelementptr inbounds [2 x %struct.LIST], ptr %4500, i64 0, i64 1, i32 1
  store ptr %4485, ptr %4501, align 8, !tbaa !5
  store ptr %4498, ptr %4499, align 8, !tbaa !5
  %4502 = getelementptr inbounds [2 x %struct.LIST], ptr %4498, i64 0, i64 1, i32 1
  store ptr %4443, ptr %4502, align 8, !tbaa !5
  br label %4503

4503:                                             ; preds = %4487, %4488, %4496
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %4504 = load ptr, ptr %4429, align 8, !tbaa !5
  %4505 = icmp eq ptr %4504, %0
  br i1 %4505, label %4506, label %4507

4506:                                             ; preds = %4503
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4443, ptr @zz_res, align 8, !tbaa !8
  br label %4529

4507:                                             ; preds = %4503
  store ptr %4504, ptr @zz_res, align 8, !tbaa !8
  %4508 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %4508, ptr %4504, align 8, !tbaa !5
  %4509 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4510 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4511 = load ptr, ptr %4510, align 8, !tbaa !5
  %4512 = getelementptr inbounds %struct.LIST, ptr %4511, i64 0, i32 1
  store ptr %4509, ptr %4512, align 8, !tbaa !5
  %4513 = getelementptr inbounds %struct.LIST, ptr %4510, i64 0, i32 1
  store ptr %4510, ptr %4513, align 8, !tbaa !5
  store ptr %4510, ptr %4510, align 8, !tbaa !5
  %4514 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4515 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %4514, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4515, ptr @zz_res, align 8, !tbaa !8
  store ptr %4514, ptr @zz_hold, align 8, !tbaa !8
  %4516 = icmp eq ptr %4514, null
  %4517 = icmp eq ptr %4515, null
  %4518 = select i1 %4516, i1 true, i1 %4517
  br i1 %4518, label %4529, label %4519

4519:                                             ; preds = %4507
  %4520 = load ptr, ptr %4514, align 8, !tbaa !5
  store ptr %4520, ptr @zz_tmp, align 8, !tbaa !8
  %4521 = load ptr, ptr %4515, align 8, !tbaa !5
  store ptr %4521, ptr %4514, align 8, !tbaa !5
  %4522 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4523 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4524 = load ptr, ptr %4523, align 8, !tbaa !5
  %4525 = getelementptr inbounds %struct.LIST, ptr %4524, i64 0, i32 1
  store ptr %4522, ptr %4525, align 8, !tbaa !5
  %4526 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4526, ptr %4523, align 8, !tbaa !5
  %4527 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4528 = getelementptr inbounds %struct.LIST, ptr %4526, i64 0, i32 1
  store ptr %4527, ptr %4528, align 8, !tbaa !5
  br label %4529

4529:                                             ; preds = %4506, %4507, %4519
  %4530 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %4530, ptr @zz_hold, align 8, !tbaa !8
  %4531 = getelementptr inbounds %struct.word_type, ptr %4530, i64 0, i32 1
  %4532 = load i8, ptr %4531, align 8, !tbaa !5
  %4533 = add i8 %4532, -11
  %4534 = icmp ult i8 %4533, 2
  %4535 = getelementptr inbounds %struct.word_type, ptr %4530, i64 0, i32 1, i32 0, i32 1
  %4536 = zext i8 %4532 to i64
  %4537 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4536
  %4538 = select i1 %4534, ptr %4535, ptr %4537
  %4539 = load i8, ptr %4538, align 1, !tbaa !5
  %4540 = zext i8 %4539 to i32
  store i32 %4540, ptr @zz_size, align 4, !tbaa !10
  %4541 = zext i8 %4539 to i64
  %4542 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4541
  %4543 = load ptr, ptr %4542, align 8, !tbaa !8
  store ptr %4543, ptr %4530, align 8, !tbaa !5
  %4544 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4545 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4546 = sext i32 %4545 to i64
  %4547 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4546
  store ptr %4544, ptr %4547, align 8, !tbaa !8
  br label %5677

4548:                                             ; preds = %4437, %4561
  %4549 = phi ptr [ %4564, %4561 ], [ %4439, %4437 ]
  br label %4550

4550:                                             ; preds = %4548, %4550
  %4551 = phi ptr [ %4553, %4550 ], [ %4549, %4548 ]
  %4552 = getelementptr inbounds [2 x %struct.LIST], ptr %4551, i64 0, i64 1
  %4553 = load ptr, ptr %4552, align 8, !tbaa !5
  %4554 = getelementptr inbounds %struct.word_type, ptr %4553, i64 0, i32 1
  %4555 = load i8, ptr %4554, align 8, !tbaa !5
  switch i8 %4555, label %4556 [
    i8 0, label %4550
    i8 1, label %4561
  ]

4556:                                             ; preds = %4550
  %4557 = load ptr, ptr %5, align 8, !tbaa !8
  %4558 = tail call ptr @Manifest(ptr noundef nonnull %4553, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %4559 = load ptr, ptr %5, align 8, !tbaa !8
  %4560 = icmp eq ptr %4559, %4557
  br i1 %4560, label %4561, label %4566

4561:                                             ; preds = %4550, %4556
  %4562 = phi ptr [ %4558, %4556 ], [ %4553, %4550 ]
  %4563 = getelementptr inbounds %struct.LIST, ptr %4549, i64 0, i32 1
  %4564 = load ptr, ptr %4563, align 8, !tbaa !5
  %4565 = icmp eq ptr %4564, %4434
  br i1 %4565, label %4566, label %4548

4566:                                             ; preds = %4561, %4556, %4437
  %4567 = phi ptr [ undef, %4437 ], [ %4558, %4556 ], [ %4562, %4561 ]
  %4568 = getelementptr inbounds [2 x %struct.LIST], ptr %4567, i64 0, i64 1, i32 1
  %4569 = load ptr, ptr %4568, align 8, !tbaa !5
  store ptr %4569, ptr @xx_link, align 8, !tbaa !8
  %4570 = getelementptr inbounds [2 x %struct.LIST], ptr %4569, i64 0, i64 1, i32 1
  %4571 = load ptr, ptr %4570, align 8, !tbaa !5
  %4572 = icmp eq ptr %4571, %4569
  br i1 %4572, label %4578, label %4573

4573:                                             ; preds = %4566
  store ptr %4571, ptr @zz_res, align 8, !tbaa !8
  %4574 = getelementptr inbounds [2 x %struct.LIST], ptr %4569, i64 0, i64 1
  %4575 = load ptr, ptr %4574, align 8, !tbaa !5
  %4576 = getelementptr inbounds [2 x %struct.LIST], ptr %4571, i64 0, i64 1
  store ptr %4575, ptr %4576, align 8, !tbaa !5
  %4577 = getelementptr inbounds [2 x %struct.LIST], ptr %4575, i64 0, i64 1, i32 1
  store ptr %4571, ptr %4577, align 8, !tbaa !5
  store ptr %4569, ptr %4570, align 8, !tbaa !5
  store ptr %4569, ptr %4574, align 8, !tbaa !5
  br label %4578

4578:                                             ; preds = %4566, %4573
  store ptr %4569, ptr @zz_hold, align 8, !tbaa !8
  %4579 = getelementptr inbounds %struct.LIST, ptr %4569, i64 0, i32 1
  %4580 = load ptr, ptr %4579, align 8, !tbaa !5
  %4581 = icmp eq ptr %4580, %4569
  br i1 %4581, label %4590, label %4582

4582:                                             ; preds = %4578
  store ptr %4580, ptr @zz_res, align 8, !tbaa !8
  %4583 = load ptr, ptr %4569, align 8, !tbaa !5
  store ptr %4583, ptr %4580, align 8, !tbaa !5
  %4584 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4585 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4586 = load ptr, ptr %4585, align 8, !tbaa !5
  %4587 = getelementptr inbounds %struct.LIST, ptr %4586, i64 0, i32 1
  store ptr %4584, ptr %4587, align 8, !tbaa !5
  %4588 = getelementptr inbounds %struct.LIST, ptr %4585, i64 0, i32 1
  store ptr %4585, ptr %4588, align 8, !tbaa !5
  store ptr %4585, ptr %4585, align 8, !tbaa !5
  %4589 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4590

4590:                                             ; preds = %4578, %4582
  %4591 = phi ptr [ %4569, %4578 ], [ %4589, %4582 ]
  store ptr %4591, ptr @zz_hold, align 8, !tbaa !8
  %4592 = getelementptr inbounds %struct.word_type, ptr %4591, i64 0, i32 1
  %4593 = load i8, ptr %4592, align 8, !tbaa !5
  %4594 = add i8 %4593, -11
  %4595 = icmp ult i8 %4594, 2
  %4596 = getelementptr inbounds %struct.word_type, ptr %4591, i64 0, i32 1, i32 0, i32 1
  %4597 = zext i8 %4593 to i64
  %4598 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4597
  %4599 = select i1 %4595, ptr %4596, ptr %4598
  %4600 = load i8, ptr %4599, align 1, !tbaa !5
  %4601 = zext i8 %4600 to i32
  store i32 %4601, ptr @zz_size, align 4, !tbaa !10
  %4602 = zext i8 %4600 to i64
  %4603 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4602
  %4604 = load ptr, ptr %4603, align 8, !tbaa !8
  store ptr %4604, ptr %4591, align 8, !tbaa !5
  %4605 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4606 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4607 = sext i32 %4606 to i64
  %4608 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4607
  store ptr %4605, ptr %4608, align 8, !tbaa !8
  %4609 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4610 = load ptr, ptr %4609, align 8, !tbaa !5
  %4611 = icmp eq ptr %4610, %0
  br i1 %4611, label %4612, label %4613

4612:                                             ; preds = %4590
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4567, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %4626

4613:                                             ; preds = %4590
  %4614 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4615 = load ptr, ptr %4614, align 8, !tbaa !5
  %4616 = getelementptr inbounds [2 x %struct.LIST], ptr %4610, i64 0, i64 1
  store ptr %4615, ptr %4616, align 8, !tbaa !5
  %4617 = getelementptr inbounds [2 x %struct.LIST], ptr %4615, i64 0, i64 1, i32 1
  store ptr %4610, ptr %4617, align 8, !tbaa !5
  store ptr %0, ptr %4609, align 8, !tbaa !5
  store ptr %0, ptr %4614, align 8, !tbaa !5
  store ptr %4610, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4567, ptr @zz_res, align 8, !tbaa !8
  store ptr %4610, ptr @zz_hold, align 8, !tbaa !8
  %4618 = icmp eq ptr %4610, null
  br i1 %4618, label %4626, label %4619

4619:                                             ; preds = %4613
  %4620 = getelementptr inbounds [2 x %struct.LIST], ptr %4610, i64 0, i64 1
  %4621 = load ptr, ptr %4620, align 8, !tbaa !5
  store ptr %4621, ptr @zz_tmp, align 8, !tbaa !8
  %4622 = getelementptr inbounds [2 x %struct.LIST], ptr %4567, i64 0, i64 1
  %4623 = load ptr, ptr %4622, align 8, !tbaa !5
  store ptr %4623, ptr %4620, align 8, !tbaa !5
  %4624 = getelementptr inbounds [2 x %struct.LIST], ptr %4623, i64 0, i64 1, i32 1
  store ptr %4610, ptr %4624, align 8, !tbaa !5
  store ptr %4621, ptr %4622, align 8, !tbaa !5
  %4625 = getelementptr inbounds [2 x %struct.LIST], ptr %4621, i64 0, i64 1, i32 1
  store ptr %4567, ptr %4625, align 8, !tbaa !5
  br label %4626

4626:                                             ; preds = %4612, %4613, %4619
  %4627 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  br label %5677

4628:                                             ; preds = %35
  %4629 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4630 = load ptr, ptr %4629, align 8, !tbaa !5
  %4631 = icmp eq ptr %4630, %0
  br i1 %4631, label %4632, label %4636

4632:                                             ; preds = %4628
  %4633 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4634 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4633, ptr noundef nonnull @.str.38) #9
  %4635 = load ptr, ptr %4629, align 8, !tbaa !5
  br label %4636

4636:                                             ; preds = %4632, %4628
  %4637 = phi ptr [ %4630, %4628 ], [ %4635, %4632 ]
  br label %4638

4638:                                             ; preds = %4636, %4638
  %4639 = phi ptr [ %4641, %4638 ], [ %4637, %4636 ]
  %4640 = getelementptr inbounds [2 x %struct.LIST], ptr %4639, i64 0, i64 1
  %4641 = load ptr, ptr %4640, align 8, !tbaa !5
  %4642 = getelementptr inbounds %struct.word_type, ptr %4641, i64 0, i32 1
  %4643 = load i8, ptr %4642, align 8, !tbaa !5
  %4644 = icmp eq i8 %4643, 0
  br i1 %4644, label %4638, label %4645

4645:                                             ; preds = %4638
  %4646 = tail call ptr @Manifest(ptr noundef nonnull %4641, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  store i32 0, ptr %26, align 4, !tbaa !10
  %4647 = call ptr @Next(ptr noundef %4646, i32 noundef 1, ptr noundef nonnull %26) #9
  %4648 = load ptr, ptr %4629, align 8, !tbaa !5
  store ptr %4648, ptr @xx_link, align 8, !tbaa !8
  %4649 = getelementptr inbounds [2 x %struct.LIST], ptr %4648, i64 0, i64 1, i32 1
  %4650 = load ptr, ptr %4649, align 8, !tbaa !5
  %4651 = icmp eq ptr %4650, %4648
  br i1 %4651, label %4657, label %4652

4652:                                             ; preds = %4645
  %4653 = getelementptr inbounds [2 x %struct.LIST], ptr %4648, i64 0, i64 1
  %4654 = load ptr, ptr %4653, align 8, !tbaa !5
  %4655 = getelementptr inbounds [2 x %struct.LIST], ptr %4650, i64 0, i64 1
  store ptr %4654, ptr %4655, align 8, !tbaa !5
  %4656 = getelementptr inbounds [2 x %struct.LIST], ptr %4654, i64 0, i64 1, i32 1
  store ptr %4650, ptr %4656, align 8, !tbaa !5
  store ptr %4648, ptr %4649, align 8, !tbaa !5
  store ptr %4648, ptr %4653, align 8, !tbaa !5
  br label %4657

4657:                                             ; preds = %4645, %4652
  store ptr %4648, ptr @zz_hold, align 8, !tbaa !8
  %4658 = getelementptr inbounds %struct.LIST, ptr %4648, i64 0, i32 1
  %4659 = load ptr, ptr %4658, align 8, !tbaa !5
  %4660 = icmp eq ptr %4659, %4648
  br i1 %4660, label %4669, label %4661

4661:                                             ; preds = %4657
  store ptr %4659, ptr @zz_res, align 8, !tbaa !8
  %4662 = load ptr, ptr %4648, align 8, !tbaa !5
  store ptr %4662, ptr %4659, align 8, !tbaa !5
  %4663 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4664 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4665 = load ptr, ptr %4664, align 8, !tbaa !5
  %4666 = getelementptr inbounds %struct.LIST, ptr %4665, i64 0, i32 1
  store ptr %4663, ptr %4666, align 8, !tbaa !5
  %4667 = getelementptr inbounds %struct.LIST, ptr %4664, i64 0, i32 1
  store ptr %4664, ptr %4667, align 8, !tbaa !5
  store ptr %4664, ptr %4664, align 8, !tbaa !5
  %4668 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4669

4669:                                             ; preds = %4657, %4661
  %4670 = phi ptr [ %4648, %4657 ], [ %4668, %4661 ]
  store ptr %4670, ptr @zz_hold, align 8, !tbaa !8
  %4671 = getelementptr inbounds %struct.word_type, ptr %4670, i64 0, i32 1
  %4672 = load i8, ptr %4671, align 8, !tbaa !5
  %4673 = add i8 %4672, -11
  %4674 = icmp ult i8 %4673, 2
  %4675 = getelementptr inbounds %struct.word_type, ptr %4670, i64 0, i32 1, i32 0, i32 1
  %4676 = zext i8 %4672 to i64
  %4677 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4676
  %4678 = select i1 %4674, ptr %4675, ptr %4677
  %4679 = load i8, ptr %4678, align 1, !tbaa !5
  %4680 = zext i8 %4679 to i32
  store i32 %4680, ptr @zz_size, align 4, !tbaa !10
  %4681 = zext i8 %4679 to i64
  %4682 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4681
  %4683 = load ptr, ptr %4682, align 8, !tbaa !8
  store ptr %4683, ptr %4670, align 8, !tbaa !5
  %4684 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4685 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4686 = sext i32 %4685 to i64
  %4687 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4686
  store ptr %4684, ptr %4687, align 8, !tbaa !8
  store ptr %4647, ptr @xx_res, align 8, !tbaa !8
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %4688 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4689 = load ptr, ptr %4688, align 8, !tbaa !5
  %4690 = icmp eq ptr %4689, %0
  br i1 %4690, label %4691, label %4692

4691:                                             ; preds = %4669
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  br label %4707

4692:                                             ; preds = %4669
  store ptr %4689, ptr @zz_res, align 8, !tbaa !8
  %4693 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4694 = load ptr, ptr %4693, align 8, !tbaa !5
  %4695 = getelementptr inbounds [2 x %struct.LIST], ptr %4689, i64 0, i64 1
  store ptr %4694, ptr %4695, align 8, !tbaa !5
  %4696 = getelementptr inbounds [2 x %struct.LIST], ptr %4694, i64 0, i64 1, i32 1
  store ptr %4689, ptr %4696, align 8, !tbaa !5
  store ptr %0, ptr %4688, align 8, !tbaa !5
  store ptr %0, ptr %4693, align 8, !tbaa !5
  store ptr %4689, ptr @xx_tmp, align 8, !tbaa !8
  %4697 = icmp eq ptr %4689, null
  %4698 = icmp eq ptr %4647, null
  %4699 = select i1 %4697, i1 true, i1 %4698
  br i1 %4699, label %4707, label %4700

4700:                                             ; preds = %4692
  %4701 = getelementptr inbounds [2 x %struct.LIST], ptr %4689, i64 0, i64 1
  %4702 = load ptr, ptr %4701, align 8, !tbaa !5
  store ptr %4702, ptr @zz_tmp, align 8, !tbaa !8
  %4703 = getelementptr inbounds [2 x %struct.LIST], ptr %4647, i64 0, i64 1
  %4704 = load ptr, ptr %4703, align 8, !tbaa !5
  store ptr %4704, ptr %4701, align 8, !tbaa !5
  %4705 = getelementptr inbounds [2 x %struct.LIST], ptr %4704, i64 0, i64 1, i32 1
  store ptr %4689, ptr %4705, align 8, !tbaa !5
  store ptr %4702, ptr %4703, align 8, !tbaa !5
  %4706 = getelementptr inbounds [2 x %struct.LIST], ptr %4702, i64 0, i64 1, i32 1
  store ptr %4647, ptr %4706, align 8, !tbaa !5
  br label %4707

4707:                                             ; preds = %4691, %4692, %4700
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %4708 = load ptr, ptr %4629, align 8, !tbaa !5
  %4709 = icmp eq ptr %4708, %0
  br i1 %4709, label %4710, label %4711

4710:                                             ; preds = %4707
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4647, ptr @zz_res, align 8, !tbaa !8
  br label %4733

4711:                                             ; preds = %4707
  store ptr %4708, ptr @zz_res, align 8, !tbaa !8
  %4712 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %4712, ptr %4708, align 8, !tbaa !5
  %4713 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4714 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4715 = load ptr, ptr %4714, align 8, !tbaa !5
  %4716 = getelementptr inbounds %struct.LIST, ptr %4715, i64 0, i32 1
  store ptr %4713, ptr %4716, align 8, !tbaa !5
  %4717 = getelementptr inbounds %struct.LIST, ptr %4714, i64 0, i32 1
  store ptr %4714, ptr %4717, align 8, !tbaa !5
  store ptr %4714, ptr %4714, align 8, !tbaa !5
  %4718 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4719 = load ptr, ptr @xx_res, align 8, !tbaa !8
  store ptr %4718, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4719, ptr @zz_res, align 8, !tbaa !8
  store ptr %4718, ptr @zz_hold, align 8, !tbaa !8
  %4720 = icmp eq ptr %4718, null
  %4721 = icmp eq ptr %4719, null
  %4722 = select i1 %4720, i1 true, i1 %4721
  br i1 %4722, label %4733, label %4723

4723:                                             ; preds = %4711
  %4724 = load ptr, ptr %4718, align 8, !tbaa !5
  store ptr %4724, ptr @zz_tmp, align 8, !tbaa !8
  %4725 = load ptr, ptr %4719, align 8, !tbaa !5
  store ptr %4725, ptr %4718, align 8, !tbaa !5
  %4726 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4727 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4728 = load ptr, ptr %4727, align 8, !tbaa !5
  %4729 = getelementptr inbounds %struct.LIST, ptr %4728, i64 0, i32 1
  store ptr %4726, ptr %4729, align 8, !tbaa !5
  %4730 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %4730, ptr %4727, align 8, !tbaa !5
  %4731 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4732 = getelementptr inbounds %struct.LIST, ptr %4730, i64 0, i32 1
  store ptr %4731, ptr %4732, align 8, !tbaa !5
  br label %4733

4733:                                             ; preds = %4710, %4711, %4723
  %4734 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  store ptr %4734, ptr @zz_hold, align 8, !tbaa !8
  %4735 = getelementptr inbounds %struct.word_type, ptr %4734, i64 0, i32 1
  %4736 = load i8, ptr %4735, align 8, !tbaa !5
  %4737 = add i8 %4736, -11
  %4738 = icmp ult i8 %4737, 2
  %4739 = getelementptr inbounds %struct.word_type, ptr %4734, i64 0, i32 1, i32 0, i32 1
  %4740 = zext i8 %4736 to i64
  %4741 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4740
  %4742 = select i1 %4738, ptr %4739, ptr %4741
  %4743 = load i8, ptr %4742, align 1, !tbaa !5
  %4744 = zext i8 %4743 to i32
  store i32 %4744, ptr @zz_size, align 4, !tbaa !10
  %4745 = zext i8 %4743 to i64
  %4746 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4745
  %4747 = load ptr, ptr %4746, align 8, !tbaa !8
  store ptr %4747, ptr %4734, align 8, !tbaa !5
  %4748 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4749 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4750 = sext i32 %4749 to i64
  %4751 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4750
  store ptr %4748, ptr %4751, align 8, !tbaa !8
  br label %5677

4752:                                             ; preds = %35, %35
  %4753 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4754 = load ptr, ptr %4753, align 8, !tbaa !5
  br label %4755

4755:                                             ; preds = %4755, %4752
  %4756 = phi ptr [ %4754, %4752 ], [ %4758, %4755 ]
  %4757 = getelementptr inbounds [2 x %struct.LIST], ptr %4756, i64 0, i64 1
  %4758 = load ptr, ptr %4757, align 8, !tbaa !5
  %4759 = getelementptr inbounds %struct.word_type, ptr %4758, i64 0, i32 1
  %4760 = load i8, ptr %4759, align 8, !tbaa !5
  %4761 = icmp eq i8 %4760, 0
  br i1 %4761, label %4755, label %4762

4762:                                             ; preds = %4755
  %4763 = tail call ptr @Manifest(ptr noundef nonnull %4758, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %4764 = tail call ptr @ReplaceWithTidy(ptr noundef %4763, i32 noundef 0)
  %4765 = load ptr, ptr %4753, align 8, !tbaa !5
  %4766 = getelementptr inbounds %struct.LIST, ptr %4765, i64 0, i32 1
  %4767 = load ptr, ptr %4766, align 8, !tbaa !5
  br label %4768

4768:                                             ; preds = %4768, %4762
  %4769 = phi ptr [ %4767, %4762 ], [ %4771, %4768 ]
  %4770 = getelementptr inbounds [2 x %struct.LIST], ptr %4769, i64 0, i64 1
  %4771 = load ptr, ptr %4770, align 8, !tbaa !5
  %4772 = getelementptr inbounds %struct.word_type, ptr %4771, i64 0, i32 1
  %4773 = load i8, ptr %4772, align 8, !tbaa !5
  %4774 = icmp eq i8 %4773, 0
  br i1 %4774, label %4768, label %4775

4775:                                             ; preds = %4768
  %4776 = tail call ptr @Manifest(ptr noundef nonnull %4771, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %4777 = tail call ptr @ReplaceWithTidy(ptr noundef %4776, i32 noundef 0)
  %4778 = getelementptr inbounds %struct.word_type, ptr %4764, i64 0, i32 1
  %4779 = load i8, ptr %4778, align 8, !tbaa !5
  %4780 = add i8 %4779, -11
  %4781 = icmp ult i8 %4780, 2
  br i1 %4781, label %4782, label %4805

4782:                                             ; preds = %4775
  %4783 = getelementptr inbounds %struct.word_type, ptr %4764, i64 0, i32 4
  %4784 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4783, ptr noundef nonnull @.str.39, ptr noundef nonnull %21) #9
  %4785 = icmp eq i32 %4784, 1
  br i1 %4785, label %4786, label %4805

4786:                                             ; preds = %4782
  %4787 = getelementptr inbounds %struct.word_type, ptr %4777, i64 0, i32 1
  %4788 = load i8, ptr %4787, align 8, !tbaa !5
  %4789 = add i8 %4788, -11
  %4790 = icmp ult i8 %4789, 2
  br i1 %4790, label %4791, label %4805

4791:                                             ; preds = %4786
  %4792 = getelementptr inbounds %struct.word_type, ptr %4777, i64 0, i32 4
  %4793 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4792, ptr noundef nonnull @.str.39, ptr noundef nonnull %22) #9
  %4794 = icmp eq i32 %4793, 1
  br i1 %4794, label %4795, label %4805

4795:                                             ; preds = %4791
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %28) #9
  %4796 = load i8, ptr %36, align 8, !tbaa !5
  %4797 = icmp eq i8 %4796, 79
  %4798 = load i32, ptr %21, align 4, !tbaa !10
  %4799 = load i32, ptr %22, align 4, !tbaa !10
  %4800 = sub i32 0, %4799
  %4801 = select i1 %4797, i32 %4799, i32 %4800
  %4802 = add i32 %4798, %4801
  %4803 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %4802) #9
  %4804 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %28, ptr noundef nonnull %36) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %28) #9
  br label %4807

4805:                                             ; preds = %4786, %4775, %4791, %4782
  %4806 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.40, ptr noundef nonnull %36) #9
  br label %4807

4807:                                             ; preds = %4805, %4795
  %4808 = phi ptr [ %4804, %4795 ], [ %4806, %4805 ]
  %4809 = call ptr @Manifest(ptr noundef %4808, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %4810 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4811 = load ptr, ptr %4810, align 8, !tbaa !5
  %4812 = icmp eq ptr %4811, %0
  br i1 %4812, label %4813, label %4814

4813:                                             ; preds = %4807
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4809, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %4829

4814:                                             ; preds = %4807
  %4815 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %4816 = load ptr, ptr %4815, align 8, !tbaa !5
  %4817 = getelementptr inbounds [2 x %struct.LIST], ptr %4811, i64 0, i64 1
  store ptr %4816, ptr %4817, align 8, !tbaa !5
  %4818 = getelementptr inbounds [2 x %struct.LIST], ptr %4816, i64 0, i64 1, i32 1
  store ptr %4811, ptr %4818, align 8, !tbaa !5
  store ptr %0, ptr %4810, align 8, !tbaa !5
  store ptr %0, ptr %4815, align 8, !tbaa !5
  store ptr %4811, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %4809, ptr @zz_res, align 8, !tbaa !8
  store ptr %4811, ptr @zz_hold, align 8, !tbaa !8
  %4819 = icmp eq ptr %4811, null
  %4820 = icmp eq ptr %4809, null
  %4821 = select i1 %4819, i1 true, i1 %4820
  br i1 %4821, label %4829, label %4822

4822:                                             ; preds = %4814
  %4823 = getelementptr inbounds [2 x %struct.LIST], ptr %4811, i64 0, i64 1
  %4824 = load ptr, ptr %4823, align 8, !tbaa !5
  store ptr %4824, ptr @zz_tmp, align 8, !tbaa !8
  %4825 = getelementptr inbounds [2 x %struct.LIST], ptr %4809, i64 0, i64 1
  %4826 = load ptr, ptr %4825, align 8, !tbaa !5
  store ptr %4826, ptr %4823, align 8, !tbaa !5
  %4827 = getelementptr inbounds [2 x %struct.LIST], ptr %4826, i64 0, i64 1, i32 1
  store ptr %4811, ptr %4827, align 8, !tbaa !5
  store ptr %4824, ptr %4825, align 8, !tbaa !5
  %4828 = getelementptr inbounds [2 x %struct.LIST], ptr %4824, i64 0, i64 1, i32 1
  store ptr %4809, ptr %4828, align 8, !tbaa !5
  br label %4829

4829:                                             ; preds = %4813, %4814, %4822
  %4830 = call i32 @DisposeObject(ptr noundef nonnull %0) #9
  br label %5677

4831:                                             ; preds = %35
  %4832 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4833 = load ptr, ptr %4832, align 8, !tbaa !5
  br label %4834

4834:                                             ; preds = %4834, %4831
  %4835 = phi ptr [ %4833, %4831 ], [ %4837, %4834 ]
  %4836 = getelementptr inbounds [2 x %struct.LIST], ptr %4835, i64 0, i64 1
  %4837 = load ptr, ptr %4836, align 8, !tbaa !5
  %4838 = getelementptr inbounds %struct.word_type, ptr %4837, i64 0, i32 1
  %4839 = load i8, ptr %4838, align 8, !tbaa !5
  %4840 = icmp eq i8 %4839, 0
  br i1 %4840, label %4834, label %4841

4841:                                             ; preds = %4834
  %4842 = getelementptr inbounds %struct.word_type, ptr %4837, i64 0, i32 1
  store ptr %4833, ptr @xx_link, align 8, !tbaa !8
  %4843 = getelementptr inbounds [2 x %struct.LIST], ptr %4833, i64 0, i64 1, i32 1
  %4844 = load ptr, ptr %4843, align 8, !tbaa !5
  %4845 = icmp eq ptr %4844, %4833
  br i1 %4845, label %4851, label %4846

4846:                                             ; preds = %4841
  store ptr %4844, ptr @zz_res, align 8, !tbaa !8
  %4847 = getelementptr inbounds [2 x %struct.LIST], ptr %4833, i64 0, i64 1
  %4848 = load ptr, ptr %4847, align 8, !tbaa !5
  %4849 = getelementptr inbounds [2 x %struct.LIST], ptr %4844, i64 0, i64 1
  store ptr %4848, ptr %4849, align 8, !tbaa !5
  %4850 = getelementptr inbounds [2 x %struct.LIST], ptr %4848, i64 0, i64 1, i32 1
  store ptr %4844, ptr %4850, align 8, !tbaa !5
  store ptr %4833, ptr %4843, align 8, !tbaa !5
  store ptr %4833, ptr %4847, align 8, !tbaa !5
  br label %4851

4851:                                             ; preds = %4841, %4846
  store ptr %4833, ptr @zz_hold, align 8, !tbaa !8
  %4852 = getelementptr inbounds %struct.LIST, ptr %4833, i64 0, i32 1
  %4853 = load ptr, ptr %4852, align 8, !tbaa !5
  %4854 = icmp eq ptr %4853, %4833
  br i1 %4854, label %4863, label %4855

4855:                                             ; preds = %4851
  store ptr %4853, ptr @zz_res, align 8, !tbaa !8
  %4856 = load ptr, ptr %4833, align 8, !tbaa !5
  store ptr %4856, ptr %4853, align 8, !tbaa !5
  %4857 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %4858 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4859 = load ptr, ptr %4858, align 8, !tbaa !5
  %4860 = getelementptr inbounds %struct.LIST, ptr %4859, i64 0, i32 1
  store ptr %4857, ptr %4860, align 8, !tbaa !5
  %4861 = getelementptr inbounds %struct.LIST, ptr %4858, i64 0, i32 1
  store ptr %4858, ptr %4861, align 8, !tbaa !5
  store ptr %4858, ptr %4858, align 8, !tbaa !5
  %4862 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %4863

4863:                                             ; preds = %4851, %4855
  %4864 = phi ptr [ %4833, %4851 ], [ %4862, %4855 ]
  store ptr %4864, ptr @zz_hold, align 8, !tbaa !8
  %4865 = getelementptr inbounds %struct.word_type, ptr %4864, i64 0, i32 1
  %4866 = load i8, ptr %4865, align 8, !tbaa !5
  %4867 = add i8 %4866, -11
  %4868 = icmp ult i8 %4867, 2
  %4869 = getelementptr inbounds %struct.word_type, ptr %4864, i64 0, i32 1, i32 0, i32 1
  %4870 = zext i8 %4866 to i64
  %4871 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %4870
  %4872 = select i1 %4868, ptr %4869, ptr %4871
  %4873 = load i8, ptr %4872, align 1, !tbaa !5
  %4874 = zext i8 %4873 to i32
  store i32 %4874, ptr @zz_size, align 4, !tbaa !10
  %4875 = zext i8 %4873 to i64
  %4876 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4875
  %4877 = load ptr, ptr %4876, align 8, !tbaa !8
  store ptr %4877, ptr %4864, align 8, !tbaa !5
  %4878 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %4879 = load i32, ptr @zz_size, align 4, !tbaa !10
  %4880 = sext i32 %4879 to i64
  %4881 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4880
  store ptr %4878, ptr %4881, align 8, !tbaa !8
  %4882 = load ptr, ptr %0, align 8, !tbaa !5
  br label %4883

4883:                                             ; preds = %4883, %4863
  %4884 = phi ptr [ %4882, %4863 ], [ %4886, %4883 ]
  %4885 = getelementptr inbounds [2 x %struct.LIST], ptr %4884, i64 0, i64 1
  %4886 = load ptr, ptr %4885, align 8, !tbaa !5
  %4887 = getelementptr inbounds %struct.word_type, ptr %4886, i64 0, i32 1
  %4888 = load i8, ptr %4887, align 8, !tbaa !5
  %4889 = icmp eq i8 %4888, 0
  br i1 %4889, label %4883, label %4890

4890:                                             ; preds = %4883
  %4891 = load i8, ptr %4842, align 8, !tbaa !5
  switch i8 %4891, label %5150 [
    i8 2, label %4892
    i8 6, label %5073
    i8 7, label %5073
  ]

4892:                                             ; preds = %4890
  tail call void @AttachEnv(ptr noundef %1, ptr noundef nonnull %4837) #9
  %4893 = load i16, ptr %2, align 4
  %4894 = and i16 %4893, 128
  %4895 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4
  %4896 = load i16, ptr %4895, align 8
  %4897 = and i16 %4896, -129
  %4898 = or disjoint i16 %4897, %4894
  store i16 %4898, ptr %4895, align 8
  %4899 = load i16, ptr %2, align 4
  %4900 = and i16 %4899, 256
  %4901 = and i16 %4898, -257
  %4902 = or disjoint i16 %4901, %4900
  store i16 %4902, ptr %4895, align 8
  %4903 = load i16, ptr %2, align 4
  %4904 = and i16 %4903, 512
  %4905 = and i16 %4902, -513
  %4906 = or disjoint i16 %4905, %4904
  store i16 %4906, ptr %4895, align 8
  %4907 = load i16, ptr %2, align 4
  %4908 = and i16 %4907, 7168
  %4909 = and i16 %4906, -7169
  %4910 = or disjoint i16 %4909, %4908
  store i16 %4910, ptr %4895, align 8
  %4911 = load i16, ptr %2, align 4
  %4912 = and i16 %4911, -8192
  %4913 = and i16 %4910, 8191
  %4914 = or disjoint i16 %4913, %4912
  store i16 %4914, ptr %4895, align 8
  %4915 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %4916 = load i16, ptr %4915, align 2, !tbaa !5
  %4917 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %4916, ptr %4917, align 2, !tbaa !5
  %4918 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %4919 = load i8, ptr %4918, align 4
  %4920 = and i8 %4919, 3
  %4921 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 1
  %4922 = load i8, ptr %4921, align 4
  %4923 = and i8 %4922, -4
  %4924 = or disjoint i8 %4923, %4920
  store i8 %4924, ptr %4921, align 4
  %4925 = load i8, ptr %4918, align 4
  %4926 = and i8 %4925, 12
  %4927 = and i8 %4924, -13
  %4928 = or disjoint i8 %4927, %4926
  store i8 %4928, ptr %4921, align 4
  %4929 = load i8, ptr %4918, align 4
  %4930 = and i8 %4929, 112
  %4931 = and i8 %4928, -113
  %4932 = or disjoint i8 %4931, %4930
  store i8 %4932, ptr %4921, align 4
  %4933 = load i8, ptr %2, align 4
  %4934 = and i8 %4933, 8
  %4935 = trunc i16 %4898 to i8
  %4936 = and i8 %4935, -9
  %4937 = or disjoint i8 %4936, %4934
  store i8 %4937, ptr %4895, align 8
  %4938 = load i16, ptr %4918, align 4
  %4939 = and i16 %4938, 128
  %4940 = load i16, ptr %4921, align 4
  %4941 = and i16 %4940, -129
  %4942 = or disjoint i16 %4941, %4939
  store i16 %4942, ptr %4921, align 4
  %4943 = load i16, ptr %4918, align 4
  %4944 = and i16 %4943, 256
  %4945 = and i16 %4942, -257
  %4946 = or disjoint i16 %4945, %4944
  store i16 %4946, ptr %4921, align 4
  %4947 = load i16, ptr %4918, align 4
  %4948 = and i16 %4947, 512
  %4949 = and i16 %4946, -513
  %4950 = or disjoint i16 %4949, %4948
  store i16 %4950, ptr %4921, align 4
  %4951 = load i16, ptr %4918, align 4
  %4952 = and i16 %4951, 7168
  %4953 = and i16 %4950, -7169
  %4954 = or disjoint i16 %4953, %4952
  store i16 %4954, ptr %4921, align 4
  %4955 = load i16, ptr %4918, align 4
  %4956 = and i16 %4955, -8192
  %4957 = and i16 %4954, 8191
  %4958 = or disjoint i16 %4957, %4956
  store i16 %4958, ptr %4921, align 4
  %4959 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %4960 = load i16, ptr %4959, align 2, !tbaa !5
  %4961 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %4960, ptr %4961, align 2, !tbaa !5
  %4962 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %4963 = load i32, ptr %4962, align 4
  %4964 = and i32 %4963, 4095
  %4965 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 4
  %4966 = load i32, ptr %4965, align 4
  %4967 = and i32 %4966, -4096
  %4968 = or disjoint i32 %4967, %4964
  store i32 %4968, ptr %4965, align 4
  %4969 = load i32, ptr %4962, align 4
  %4970 = and i32 %4969, 4190208
  %4971 = and i32 %4968, -4190209
  %4972 = or disjoint i32 %4971, %4970
  store i32 %4972, ptr %4965, align 4
  %4973 = load i32, ptr %4962, align 4
  %4974 = and i32 %4973, 12582912
  %4975 = and i32 %4972, -12582913
  %4976 = or disjoint i32 %4975, %4974
  store i32 %4976, ptr %4965, align 4
  %4977 = load i32, ptr %4962, align 4
  %4978 = and i32 %4977, 1056964608
  %4979 = and i32 %4976, -1056964609
  %4980 = or disjoint i32 %4979, %4978
  store i32 %4980, ptr %4965, align 4
  %4981 = load i32, ptr %4962, align 4
  %4982 = and i32 %4981, -2147483648
  %4983 = and i32 %4980, 2147483647
  %4984 = or disjoint i32 %4983, %4982
  store i32 %4984, ptr %4965, align 4
  %4985 = load i32, ptr %4962, align 4
  %4986 = and i32 %4985, 1073741824
  %4987 = and i32 %4984, -1073741825
  %4988 = or disjoint i32 %4987, %4986
  store i32 %4988, ptr %4965, align 4
  %4989 = load i8, ptr %2, align 4
  %4990 = and i8 %4989, 1
  %4991 = and i8 %4937, -2
  %4992 = or disjoint i8 %4991, %4990
  store i8 %4992, ptr %4895, align 8
  %4993 = load i8, ptr %2, align 4
  %4994 = and i8 %4993, 2
  %4995 = and i8 %4992, -3
  %4996 = or disjoint i8 %4995, %4994
  store i8 %4996, ptr %4895, align 8
  %4997 = load i8, ptr %2, align 4
  %4998 = and i8 %4997, 4
  %4999 = and i8 %4996, -5
  %5000 = or disjoint i8 %4999, %4998
  store i8 %5000, ptr %4895, align 8
  %5001 = load i8, ptr %2, align 4
  %5002 = and i8 %5001, 112
  %5003 = and i8 %5000, -113
  %5004 = or disjoint i8 %5003, %5002
  store i8 %5004, ptr %4895, align 8
  %5005 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %5006 = load i16, ptr %5005, align 4, !tbaa !15
  %5007 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 2
  store i16 %5006, ptr %5007, align 8, !tbaa !5
  %5008 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %5009 = load i16, ptr %5008, align 2, !tbaa !17
  %5010 = getelementptr inbounds %struct.closure_type, ptr %4837, i64 0, i32 4, i32 0, i32 3
  store i16 %5009, ptr %5010, align 2, !tbaa !5
  %5011 = tail call ptr @SetEnv(ptr noundef nonnull %4837, ptr noundef null) #9
  store ptr %5011, ptr %18, align 8, !tbaa !8
  %5012 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %5013 = zext i8 %5012 to i32
  store i32 %5013, ptr @zz_size, align 4, !tbaa !10
  %5014 = zext i8 %5012 to i64
  %5015 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5014
  %5016 = load ptr, ptr %5015, align 8, !tbaa !8
  %5017 = icmp eq ptr %5016, null
  br i1 %5017, label %5018, label %5021

5018:                                             ; preds = %4892
  %5019 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %5020 = tail call ptr @GetMemory(i32 noundef %5013, ptr noundef %5019) #9
  store ptr %5020, ptr @zz_hold, align 8, !tbaa !8
  br label %5025

5021:                                             ; preds = %4892
  store ptr %5016, ptr @zz_hold, align 8, !tbaa !8
  %5022 = load ptr, ptr %5016, align 8, !tbaa !5
  %5023 = zext i8 %5012 to i64
  %5024 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5023
  store ptr %5022, ptr %5024, align 8, !tbaa !8
  br label %5025

5025:                                             ; preds = %5018, %5021
  %5026 = phi ptr [ %5020, %5018 ], [ %5016, %5021 ]
  %5027 = getelementptr inbounds %struct.word_type, ptr %5026, i64 0, i32 1
  store i8 17, ptr %5027, align 8, !tbaa !5
  %5028 = getelementptr inbounds [2 x %struct.LIST], ptr %5026, i64 0, i64 1, i32 1
  store ptr %5026, ptr %5028, align 8, !tbaa !5
  %5029 = getelementptr inbounds [2 x %struct.LIST], ptr %5026, i64 0, i64 1
  store ptr %5026, ptr %5029, align 8, !tbaa !5
  %5030 = getelementptr inbounds %struct.LIST, ptr %5026, i64 0, i32 1
  store ptr %5026, ptr %5030, align 8, !tbaa !5
  store ptr %5026, ptr %5026, align 8, !tbaa !5
  %5031 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %5032 = zext i8 %5031 to i32
  store i32 %5032, ptr @zz_size, align 4, !tbaa !10
  %5033 = zext i8 %5031 to i64
  %5034 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5033
  %5035 = load ptr, ptr %5034, align 8, !tbaa !8
  %5036 = icmp eq ptr %5035, null
  br i1 %5036, label %5037, label %5040

5037:                                             ; preds = %5025
  %5038 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %5039 = tail call ptr @GetMemory(i32 noundef %5032, ptr noundef %5038) #9
  br label %5044

5040:                                             ; preds = %5025
  store ptr %5035, ptr @zz_hold, align 8, !tbaa !8
  %5041 = load ptr, ptr %5035, align 8, !tbaa !5
  %5042 = zext i8 %5031 to i64
  %5043 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5042
  store ptr %5041, ptr %5043, align 8, !tbaa !8
  br label %5044

5044:                                             ; preds = %5037, %5040
  %5045 = phi ptr [ %5039, %5037 ], [ %5035, %5040 ]
  %5046 = getelementptr inbounds %struct.word_type, ptr %5045, i64 0, i32 1
  store i8 0, ptr %5046, align 8, !tbaa !5
  %5047 = getelementptr inbounds [2 x %struct.LIST], ptr %5045, i64 0, i64 1, i32 1
  store ptr %5045, ptr %5047, align 8, !tbaa !5
  %5048 = getelementptr inbounds [2 x %struct.LIST], ptr %5045, i64 0, i64 1
  store ptr %5045, ptr %5048, align 8, !tbaa !5
  %5049 = getelementptr inbounds %struct.LIST, ptr %5045, i64 0, i32 1
  store ptr %5045, ptr %5049, align 8, !tbaa !5
  store ptr %5045, ptr %5045, align 8, !tbaa !5
  store ptr %5045, ptr @xx_link, align 8, !tbaa !8
  store ptr %5045, ptr @zz_res, align 8, !tbaa !8
  store ptr %5026, ptr @zz_hold, align 8, !tbaa !8
  %5050 = load ptr, ptr %5026, align 8, !tbaa !5
  store ptr %5050, ptr @zz_tmp, align 8, !tbaa !8
  %5051 = load ptr, ptr %5045, align 8, !tbaa !5
  store ptr %5051, ptr %5026, align 8, !tbaa !5
  %5052 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %5053 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %5054 = load ptr, ptr %5053, align 8, !tbaa !5
  %5055 = getelementptr inbounds %struct.LIST, ptr %5054, i64 0, i32 1
  store ptr %5052, ptr %5055, align 8, !tbaa !5
  %5056 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %5056, ptr %5053, align 8, !tbaa !5
  %5057 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %5058 = getelementptr inbounds %struct.LIST, ptr %5056, i64 0, i32 1
  store ptr %5057, ptr %5058, align 8, !tbaa !5
  %5059 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %5059, ptr @zz_res, align 8, !tbaa !8
  %5060 = load ptr, ptr %18, align 8, !tbaa !8
  store ptr %5060, ptr @zz_hold, align 8, !tbaa !8
  %5061 = icmp eq ptr %5060, null
  %5062 = icmp eq ptr %5059, null
  %5063 = select i1 %5061, i1 true, i1 %5062
  br i1 %5063, label %5071, label %5064

5064:                                             ; preds = %5044
  %5065 = getelementptr inbounds [2 x %struct.LIST], ptr %5060, i64 0, i64 1
  %5066 = load ptr, ptr %5065, align 8, !tbaa !5
  store ptr %5066, ptr @zz_tmp, align 8, !tbaa !8
  %5067 = getelementptr inbounds [2 x %struct.LIST], ptr %5059, i64 0, i64 1
  %5068 = load ptr, ptr %5067, align 8, !tbaa !5
  store ptr %5068, ptr %5065, align 8, !tbaa !5
  %5069 = getelementptr inbounds [2 x %struct.LIST], ptr %5068, i64 0, i64 1, i32 1
  store ptr %5060, ptr %5069, align 8, !tbaa !5
  store ptr %5066, ptr %5067, align 8, !tbaa !5
  %5070 = getelementptr inbounds [2 x %struct.LIST], ptr %5066, i64 0, i64 1, i32 1
  store ptr %5059, ptr %5070, align 8, !tbaa !5
  br label %5071

5071:                                             ; preds = %5044, %5064
  %5072 = tail call ptr @Manifest(ptr noundef nonnull %4886, ptr noundef %5060, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5153

5073:                                             ; preds = %4890, %4890
  %5074 = getelementptr inbounds %struct.LIST, ptr %4837, i64 0, i32 1
  %5075 = load ptr, ptr %5074, align 8, !tbaa !5
  br label %5076

5076:                                             ; preds = %5076, %5073
  %5077 = phi ptr [ %5075, %5073 ], [ %5079, %5076 ]
  %5078 = getelementptr inbounds [2 x %struct.LIST], ptr %5077, i64 0, i64 1
  %5079 = load ptr, ptr %5078, align 8, !tbaa !5
  %5080 = getelementptr inbounds %struct.word_type, ptr %5079, i64 0, i32 1
  %5081 = load i8, ptr %5080, align 8, !tbaa !5
  switch i8 %5081, label %5147 [
    i8 0, label %5076
    i8 2, label %5082
  ]

5082:                                             ; preds = %5076
  store ptr %5079, ptr %20, align 8, !tbaa !8
  %5083 = call ptr @CrossExpand(ptr noundef %4837, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %18) #9
  %5084 = load ptr, ptr %18, align 8, !tbaa !8
  call void @AttachEnv(ptr noundef %5084, ptr noundef %5083) #9
  %5085 = call ptr @SetEnv(ptr noundef %5083, ptr noundef %1) #9
  store ptr %5085, ptr %18, align 8, !tbaa !8
  %5086 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %5087 = zext i8 %5086 to i32
  store i32 %5087, ptr @zz_size, align 4, !tbaa !10
  %5088 = zext i8 %5086 to i64
  %5089 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5088
  %5090 = load ptr, ptr %5089, align 8, !tbaa !8
  %5091 = icmp eq ptr %5090, null
  br i1 %5091, label %5092, label %5095

5092:                                             ; preds = %5082
  %5093 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %5094 = call ptr @GetMemory(i32 noundef %5087, ptr noundef %5093) #9
  store ptr %5094, ptr @zz_hold, align 8, !tbaa !8
  br label %5099

5095:                                             ; preds = %5082
  store ptr %5090, ptr @zz_hold, align 8, !tbaa !8
  %5096 = load ptr, ptr %5090, align 8, !tbaa !5
  %5097 = zext i8 %5086 to i64
  %5098 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5097
  store ptr %5096, ptr %5098, align 8, !tbaa !8
  br label %5099

5099:                                             ; preds = %5092, %5095
  %5100 = phi ptr [ %5094, %5092 ], [ %5090, %5095 ]
  %5101 = getelementptr inbounds %struct.word_type, ptr %5100, i64 0, i32 1
  store i8 17, ptr %5101, align 8, !tbaa !5
  %5102 = getelementptr inbounds [2 x %struct.LIST], ptr %5100, i64 0, i64 1, i32 1
  store ptr %5100, ptr %5102, align 8, !tbaa !5
  %5103 = getelementptr inbounds [2 x %struct.LIST], ptr %5100, i64 0, i64 1
  store ptr %5100, ptr %5103, align 8, !tbaa !5
  %5104 = getelementptr inbounds %struct.LIST, ptr %5100, i64 0, i32 1
  store ptr %5100, ptr %5104, align 8, !tbaa !5
  store ptr %5100, ptr %5100, align 8, !tbaa !5
  %5105 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %5106 = zext i8 %5105 to i32
  store i32 %5106, ptr @zz_size, align 4, !tbaa !10
  %5107 = zext i8 %5105 to i64
  %5108 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5107
  %5109 = load ptr, ptr %5108, align 8, !tbaa !8
  %5110 = icmp eq ptr %5109, null
  br i1 %5110, label %5111, label %5114

5111:                                             ; preds = %5099
  %5112 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %5113 = call ptr @GetMemory(i32 noundef %5106, ptr noundef %5112) #9
  br label %5118

5114:                                             ; preds = %5099
  store ptr %5109, ptr @zz_hold, align 8, !tbaa !8
  %5115 = load ptr, ptr %5109, align 8, !tbaa !5
  %5116 = zext i8 %5105 to i64
  %5117 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5116
  store ptr %5115, ptr %5117, align 8, !tbaa !8
  br label %5118

5118:                                             ; preds = %5111, %5114
  %5119 = phi ptr [ %5113, %5111 ], [ %5109, %5114 ]
  %5120 = getelementptr inbounds %struct.word_type, ptr %5119, i64 0, i32 1
  store i8 0, ptr %5120, align 8, !tbaa !5
  %5121 = getelementptr inbounds [2 x %struct.LIST], ptr %5119, i64 0, i64 1, i32 1
  store ptr %5119, ptr %5121, align 8, !tbaa !5
  %5122 = getelementptr inbounds [2 x %struct.LIST], ptr %5119, i64 0, i64 1
  store ptr %5119, ptr %5122, align 8, !tbaa !5
  %5123 = getelementptr inbounds %struct.LIST, ptr %5119, i64 0, i32 1
  store ptr %5119, ptr %5123, align 8, !tbaa !5
  store ptr %5119, ptr %5119, align 8, !tbaa !5
  store ptr %5119, ptr @xx_link, align 8, !tbaa !8
  store ptr %5119, ptr @zz_res, align 8, !tbaa !8
  store ptr %5100, ptr @zz_hold, align 8, !tbaa !8
  %5124 = load ptr, ptr %5100, align 8, !tbaa !5
  store ptr %5124, ptr @zz_tmp, align 8, !tbaa !8
  %5125 = load ptr, ptr %5119, align 8, !tbaa !5
  store ptr %5125, ptr %5100, align 8, !tbaa !5
  %5126 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %5127 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %5128 = load ptr, ptr %5127, align 8, !tbaa !5
  %5129 = getelementptr inbounds %struct.LIST, ptr %5128, i64 0, i32 1
  store ptr %5126, ptr %5129, align 8, !tbaa !5
  %5130 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %5130, ptr %5127, align 8, !tbaa !5
  %5131 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %5132 = getelementptr inbounds %struct.LIST, ptr %5130, i64 0, i32 1
  store ptr %5131, ptr %5132, align 8, !tbaa !5
  %5133 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %5133, ptr @zz_res, align 8, !tbaa !8
  %5134 = load ptr, ptr %18, align 8, !tbaa !8
  store ptr %5134, ptr @zz_hold, align 8, !tbaa !8
  %5135 = icmp eq ptr %5134, null
  %5136 = icmp eq ptr %5133, null
  %5137 = select i1 %5135, i1 true, i1 %5136
  br i1 %5137, label %5145, label %5138

5138:                                             ; preds = %5118
  %5139 = getelementptr inbounds [2 x %struct.LIST], ptr %5134, i64 0, i64 1
  %5140 = load ptr, ptr %5139, align 8, !tbaa !5
  store ptr %5140, ptr @zz_tmp, align 8, !tbaa !8
  %5141 = getelementptr inbounds [2 x %struct.LIST], ptr %5133, i64 0, i64 1
  %5142 = load ptr, ptr %5141, align 8, !tbaa !5
  store ptr %5142, ptr %5139, align 8, !tbaa !5
  %5143 = getelementptr inbounds [2 x %struct.LIST], ptr %5142, i64 0, i64 1, i32 1
  store ptr %5134, ptr %5143, align 8, !tbaa !5
  store ptr %5140, ptr %5141, align 8, !tbaa !5
  %5144 = getelementptr inbounds [2 x %struct.LIST], ptr %5140, i64 0, i64 1, i32 1
  store ptr %5133, ptr %5144, align 8, !tbaa !5
  br label %5145

5145:                                             ; preds = %5118, %5138
  %5146 = call ptr @Manifest(ptr noundef %4886, ptr noundef %5134, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5153

5147:                                             ; preds = %5076
  store ptr %5079, ptr %20, align 8, !tbaa !8
  %5148 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 35, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef nonnull %4842, ptr noundef nonnull @.str.42) #9
  %5149 = tail call ptr @Manifest(ptr noundef %4886, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5153

5150:                                             ; preds = %4890
  %5151 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 36, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef nonnull %4842, ptr noundef nonnull @.str.42) #9
  %5152 = tail call ptr @Manifest(ptr noundef nonnull %4886, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5153

5153:                                             ; preds = %5150, %5147, %5145, %5071
  %5154 = phi ptr [ %5026, %5071 ], [ %5100, %5145 ], [ null, %5147 ], [ null, %5150 ]
  %5155 = phi ptr [ %5072, %5071 ], [ %5146, %5145 ], [ %5149, %5147 ], [ %5152, %5150 ]
  %5156 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %5157 = load ptr, ptr %5156, align 8, !tbaa !5
  %5158 = icmp eq ptr %5157, %0
  br i1 %5158, label %5159, label %5160

5159:                                             ; preds = %5153
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %5155, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %5175

5160:                                             ; preds = %5153
  %5161 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %5162 = load ptr, ptr %5161, align 8, !tbaa !5
  %5163 = getelementptr inbounds [2 x %struct.LIST], ptr %5157, i64 0, i64 1
  store ptr %5162, ptr %5163, align 8, !tbaa !5
  %5164 = getelementptr inbounds [2 x %struct.LIST], ptr %5162, i64 0, i64 1, i32 1
  store ptr %5157, ptr %5164, align 8, !tbaa !5
  store ptr %0, ptr %5156, align 8, !tbaa !5
  store ptr %0, ptr %5161, align 8, !tbaa !5
  store ptr %5157, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %5155, ptr @zz_res, align 8, !tbaa !8
  store ptr %5157, ptr @zz_hold, align 8, !tbaa !8
  %5165 = icmp eq ptr %5157, null
  %5166 = icmp eq ptr %5155, null
  %5167 = select i1 %5165, i1 true, i1 %5166
  br i1 %5167, label %5175, label %5168

5168:                                             ; preds = %5160
  %5169 = getelementptr inbounds [2 x %struct.LIST], ptr %5157, i64 0, i64 1
  %5170 = load ptr, ptr %5169, align 8, !tbaa !5
  store ptr %5170, ptr @zz_tmp, align 8, !tbaa !8
  %5171 = getelementptr inbounds [2 x %struct.LIST], ptr %5155, i64 0, i64 1
  %5172 = load ptr, ptr %5171, align 8, !tbaa !5
  store ptr %5172, ptr %5169, align 8, !tbaa !5
  %5173 = getelementptr inbounds [2 x %struct.LIST], ptr %5172, i64 0, i64 1, i32 1
  store ptr %5157, ptr %5173, align 8, !tbaa !5
  store ptr %5170, ptr %5171, align 8, !tbaa !5
  %5174 = getelementptr inbounds [2 x %struct.LIST], ptr %5170, i64 0, i64 1, i32 1
  store ptr %5155, ptr %5174, align 8, !tbaa !5
  br label %5175

5175:                                             ; preds = %5159, %5160, %5168
  %5176 = call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %5177 = icmp eq ptr %5154, null
  br i1 %5177, label %5677, label %5178

5178:                                             ; preds = %5175
  %5179 = call i32 @DisposeObject(ptr noundef nonnull %5154) #9
  br label %5677

5180:                                             ; preds = %35
  %5181 = tail call fastcc ptr @ManifestTg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %9, i32 noundef %10)
  br label %5677

5182:                                             ; preds = %35, %35
  %5183 = load ptr, ptr %0, align 8, !tbaa !5
  br label %5184

5184:                                             ; preds = %5184, %5182
  %5185 = phi ptr [ %5183, %5182 ], [ %5187, %5184 ]
  %5186 = getelementptr inbounds [2 x %struct.LIST], ptr %5185, i64 0, i64 1
  %5187 = load ptr, ptr %5186, align 8, !tbaa !5
  %5188 = getelementptr inbounds %struct.word_type, ptr %5187, i64 0, i32 1
  %5189 = load i8, ptr %5188, align 8, !tbaa !5
  %5190 = icmp eq i8 %5189, 0
  br i1 %5190, label %5184, label %5191

5191:                                             ; preds = %5184
  %5192 = tail call ptr @Manifest(ptr noundef nonnull %5187, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %5193 = load i16, ptr %2, align 4
  %5194 = and i16 %5193, 128
  %5195 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %5196 = load i16, ptr %5195, align 8
  %5197 = and i16 %5196, -129
  %5198 = or disjoint i16 %5197, %5194
  store i16 %5198, ptr %5195, align 8
  %5199 = load i16, ptr %2, align 4
  %5200 = and i16 %5199, 256
  %5201 = and i16 %5198, -257
  %5202 = or disjoint i16 %5201, %5200
  store i16 %5202, ptr %5195, align 8
  %5203 = load i16, ptr %2, align 4
  %5204 = and i16 %5203, 512
  %5205 = and i16 %5202, -513
  %5206 = or disjoint i16 %5205, %5204
  store i16 %5206, ptr %5195, align 8
  %5207 = load i16, ptr %2, align 4
  %5208 = and i16 %5207, 7168
  %5209 = and i16 %5206, -7169
  %5210 = or disjoint i16 %5209, %5208
  store i16 %5210, ptr %5195, align 8
  %5211 = load i16, ptr %2, align 4
  %5212 = and i16 %5211, -8192
  %5213 = and i16 %5210, 8191
  %5214 = or disjoint i16 %5213, %5212
  store i16 %5214, ptr %5195, align 8
  %5215 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %5216 = load i16, ptr %5215, align 2, !tbaa !5
  %5217 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %5216, ptr %5217, align 2, !tbaa !5
  %5218 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %5219 = load i8, ptr %5218, align 4
  %5220 = and i8 %5219, 3
  %5221 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %5222 = load i8, ptr %5221, align 4
  %5223 = and i8 %5222, -4
  %5224 = or disjoint i8 %5223, %5220
  store i8 %5224, ptr %5221, align 4
  %5225 = load i8, ptr %5218, align 4
  %5226 = and i8 %5225, 12
  %5227 = and i8 %5224, -13
  %5228 = or disjoint i8 %5227, %5226
  store i8 %5228, ptr %5221, align 4
  %5229 = load i8, ptr %5218, align 4
  %5230 = and i8 %5229, 112
  %5231 = and i8 %5228, -113
  %5232 = or disjoint i8 %5231, %5230
  store i8 %5232, ptr %5221, align 4
  %5233 = load i8, ptr %2, align 4
  %5234 = and i8 %5233, 8
  %5235 = trunc i16 %5198 to i8
  %5236 = and i8 %5235, -9
  %5237 = or disjoint i8 %5236, %5234
  store i8 %5237, ptr %5195, align 8
  %5238 = load i16, ptr %5218, align 4
  %5239 = and i16 %5238, 128
  %5240 = load i16, ptr %5221, align 4
  %5241 = and i16 %5240, -129
  %5242 = or disjoint i16 %5241, %5239
  store i16 %5242, ptr %5221, align 4
  %5243 = load i16, ptr %5218, align 4
  %5244 = and i16 %5243, 256
  %5245 = and i16 %5242, -257
  %5246 = or disjoint i16 %5245, %5244
  store i16 %5246, ptr %5221, align 4
  %5247 = load i16, ptr %5218, align 4
  %5248 = and i16 %5247, 512
  %5249 = and i16 %5246, -513
  %5250 = or disjoint i16 %5249, %5248
  store i16 %5250, ptr %5221, align 4
  %5251 = load i16, ptr %5218, align 4
  %5252 = and i16 %5251, 7168
  %5253 = and i16 %5250, -7169
  %5254 = or disjoint i16 %5253, %5252
  store i16 %5254, ptr %5221, align 4
  %5255 = load i16, ptr %5218, align 4
  %5256 = and i16 %5255, -8192
  %5257 = and i16 %5254, 8191
  %5258 = or disjoint i16 %5257, %5256
  store i16 %5258, ptr %5221, align 4
  %5259 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %5260 = load i16, ptr %5259, align 2, !tbaa !5
  %5261 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %5260, ptr %5261, align 2, !tbaa !5
  %5262 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %5263 = load i32, ptr %5262, align 4
  %5264 = and i32 %5263, 4095
  %5265 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %5266 = load i32, ptr %5265, align 4
  %5267 = and i32 %5266, -4096
  %5268 = or disjoint i32 %5267, %5264
  store i32 %5268, ptr %5265, align 4
  %5269 = load i32, ptr %5262, align 4
  %5270 = and i32 %5269, 4190208
  %5271 = and i32 %5268, -4190209
  %5272 = or disjoint i32 %5271, %5270
  store i32 %5272, ptr %5265, align 4
  %5273 = load i32, ptr %5262, align 4
  %5274 = and i32 %5273, 12582912
  %5275 = and i32 %5272, -12582913
  %5276 = or disjoint i32 %5275, %5274
  store i32 %5276, ptr %5265, align 4
  %5277 = load i32, ptr %5262, align 4
  %5278 = and i32 %5277, 1056964608
  %5279 = and i32 %5276, -1056964609
  %5280 = or disjoint i32 %5279, %5278
  store i32 %5280, ptr %5265, align 4
  %5281 = load i32, ptr %5262, align 4
  %5282 = and i32 %5281, -2147483648
  %5283 = and i32 %5280, 2147483647
  %5284 = or disjoint i32 %5283, %5282
  store i32 %5284, ptr %5265, align 4
  %5285 = load i32, ptr %5262, align 4
  %5286 = and i32 %5285, 1073741824
  %5287 = and i32 %5284, -1073741825
  %5288 = or disjoint i32 %5287, %5286
  store i32 %5288, ptr %5265, align 4
  %5289 = load i8, ptr %2, align 4
  %5290 = and i8 %5289, 1
  %5291 = and i8 %5237, -2
  %5292 = or disjoint i8 %5291, %5290
  store i8 %5292, ptr %5195, align 8
  %5293 = load i8, ptr %2, align 4
  %5294 = and i8 %5293, 2
  %5295 = and i8 %5292, -3
  %5296 = or disjoint i8 %5295, %5294
  store i8 %5296, ptr %5195, align 8
  %5297 = load i8, ptr %2, align 4
  %5298 = and i8 %5297, 4
  %5299 = and i8 %5296, -5
  %5300 = or disjoint i8 %5299, %5298
  store i8 %5300, ptr %5195, align 8
  %5301 = load i8, ptr %2, align 4
  %5302 = and i8 %5301, 112
  %5303 = and i8 %5300, -113
  %5304 = or disjoint i8 %5303, %5302
  store i8 %5304, ptr %5195, align 8
  %5305 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %5306 = load i16, ptr %5305, align 4, !tbaa !15
  %5307 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %5306, ptr %5307, align 8, !tbaa !5
  %5308 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %5309 = load i16, ptr %5308, align 2, !tbaa !17
  %5310 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %5309, ptr %5310, align 2, !tbaa !5
  %5311 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5312 = load ptr, ptr %5311, align 8, !tbaa !5
  br label %5313

5313:                                             ; preds = %5313, %5191
  %5314 = phi ptr [ %5312, %5191 ], [ %5316, %5313 ]
  %5315 = getelementptr inbounds [2 x %struct.LIST], ptr %5314, i64 0, i64 1
  %5316 = load ptr, ptr %5315, align 8, !tbaa !5
  %5317 = getelementptr inbounds %struct.word_type, ptr %5316, i64 0, i32 1
  %5318 = load i8, ptr %5317, align 8, !tbaa !5
  %5319 = icmp eq i8 %5318, 0
  br i1 %5319, label %5313, label %5320

5320:                                             ; preds = %5313
  %5321 = tail call ptr @Manifest(ptr noundef nonnull %5316, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %5322 = getelementptr inbounds ptr, ptr %3, i64 1
  %5323 = load ptr, ptr %5322, align 8, !tbaa !8
  %5324 = icmp eq ptr %5323, null
  br i1 %5324, label %5325, label %5335

5325:                                             ; preds = %5320
  %5326 = load ptr, ptr %3, align 8, !tbaa !8
  %5327 = icmp eq ptr %5326, null
  br i1 %5327, label %5328, label %5335

5328:                                             ; preds = %5325
  %5329 = getelementptr inbounds ptr, ptr %4, i64 1
  %5330 = load ptr, ptr %5329, align 8, !tbaa !8
  %5331 = icmp eq ptr %5330, null
  br i1 %5331, label %5332, label %5335

5332:                                             ; preds = %5328
  %5333 = load ptr, ptr %4, align 8, !tbaa !8
  %5334 = icmp eq ptr %5333, null
  br i1 %5334, label %5677, label %5335

5335:                                             ; preds = %5332, %5328, %5325, %5320
  %5336 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

5337:                                             ; preds = %35, %35
  %5338 = load ptr, ptr %0, align 8, !tbaa !5
  br label %5339

5339:                                             ; preds = %5339, %5337
  %5340 = phi ptr [ %5338, %5337 ], [ %5342, %5339 ]
  %5341 = getelementptr inbounds [2 x %struct.LIST], ptr %5340, i64 0, i64 1
  %5342 = load ptr, ptr %5341, align 8, !tbaa !5
  %5343 = getelementptr inbounds %struct.word_type, ptr %5342, i64 0, i32 1
  %5344 = load i8, ptr %5343, align 8, !tbaa !5
  %5345 = icmp eq i8 %5344, 0
  br i1 %5345, label %5339, label %5346

5346:                                             ; preds = %5339
  %5347 = tail call ptr @Manifest(ptr noundef nonnull %5342, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  %5348 = load i16, ptr %2, align 4
  %5349 = and i16 %5348, 128
  %5350 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %5351 = load i16, ptr %5350, align 8
  %5352 = and i16 %5351, -129
  %5353 = or disjoint i16 %5352, %5349
  store i16 %5353, ptr %5350, align 8
  %5354 = load i16, ptr %2, align 4
  %5355 = and i16 %5354, 256
  %5356 = and i16 %5353, -257
  %5357 = or disjoint i16 %5356, %5355
  store i16 %5357, ptr %5350, align 8
  %5358 = load i16, ptr %2, align 4
  %5359 = and i16 %5358, 512
  %5360 = and i16 %5357, -513
  %5361 = or disjoint i16 %5360, %5359
  store i16 %5361, ptr %5350, align 8
  %5362 = load i16, ptr %2, align 4
  %5363 = and i16 %5362, 7168
  %5364 = and i16 %5361, -7169
  %5365 = or disjoint i16 %5364, %5363
  store i16 %5365, ptr %5350, align 8
  %5366 = load i16, ptr %2, align 4
  %5367 = and i16 %5366, -8192
  %5368 = and i16 %5365, 8191
  %5369 = or disjoint i16 %5368, %5367
  store i16 %5369, ptr %5350, align 8
  %5370 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %5371 = load i16, ptr %5370, align 2, !tbaa !5
  %5372 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %5371, ptr %5372, align 2, !tbaa !5
  %5373 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %5374 = load i8, ptr %5373, align 4
  %5375 = and i8 %5374, 3
  %5376 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %5377 = load i8, ptr %5376, align 4
  %5378 = and i8 %5377, -4
  %5379 = or disjoint i8 %5378, %5375
  store i8 %5379, ptr %5376, align 4
  %5380 = load i8, ptr %5373, align 4
  %5381 = and i8 %5380, 12
  %5382 = and i8 %5379, -13
  %5383 = or disjoint i8 %5382, %5381
  store i8 %5383, ptr %5376, align 4
  %5384 = load i8, ptr %5373, align 4
  %5385 = and i8 %5384, 112
  %5386 = and i8 %5383, -113
  %5387 = or disjoint i8 %5386, %5385
  store i8 %5387, ptr %5376, align 4
  %5388 = load i8, ptr %2, align 4
  %5389 = and i8 %5388, 8
  %5390 = trunc i16 %5353 to i8
  %5391 = and i8 %5390, -9
  %5392 = or disjoint i8 %5391, %5389
  store i8 %5392, ptr %5350, align 8
  %5393 = load i16, ptr %5373, align 4
  %5394 = and i16 %5393, 128
  %5395 = load i16, ptr %5376, align 4
  %5396 = and i16 %5395, -129
  %5397 = or disjoint i16 %5396, %5394
  store i16 %5397, ptr %5376, align 4
  %5398 = load i16, ptr %5373, align 4
  %5399 = and i16 %5398, 256
  %5400 = and i16 %5397, -257
  %5401 = or disjoint i16 %5400, %5399
  store i16 %5401, ptr %5376, align 4
  %5402 = load i16, ptr %5373, align 4
  %5403 = and i16 %5402, 512
  %5404 = and i16 %5401, -513
  %5405 = or disjoint i16 %5404, %5403
  store i16 %5405, ptr %5376, align 4
  %5406 = load i16, ptr %5373, align 4
  %5407 = and i16 %5406, 7168
  %5408 = and i16 %5405, -7169
  %5409 = or disjoint i16 %5408, %5407
  store i16 %5409, ptr %5376, align 4
  %5410 = load i16, ptr %5373, align 4
  %5411 = and i16 %5410, -8192
  %5412 = and i16 %5409, 8191
  %5413 = or disjoint i16 %5412, %5411
  store i16 %5413, ptr %5376, align 4
  %5414 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %5415 = load i16, ptr %5414, align 2, !tbaa !5
  %5416 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %5415, ptr %5416, align 2, !tbaa !5
  %5417 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %5418 = load i32, ptr %5417, align 4
  %5419 = and i32 %5418, 4095
  %5420 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %5421 = load i32, ptr %5420, align 4
  %5422 = and i32 %5421, -4096
  %5423 = or disjoint i32 %5422, %5419
  store i32 %5423, ptr %5420, align 4
  %5424 = load i32, ptr %5417, align 4
  %5425 = and i32 %5424, 4190208
  %5426 = and i32 %5423, -4190209
  %5427 = or disjoint i32 %5426, %5425
  store i32 %5427, ptr %5420, align 4
  %5428 = load i32, ptr %5417, align 4
  %5429 = and i32 %5428, 12582912
  %5430 = and i32 %5427, -12582913
  %5431 = or disjoint i32 %5430, %5429
  store i32 %5431, ptr %5420, align 4
  %5432 = load i32, ptr %5417, align 4
  %5433 = and i32 %5432, 1056964608
  %5434 = and i32 %5431, -1056964609
  %5435 = or disjoint i32 %5434, %5433
  store i32 %5435, ptr %5420, align 4
  %5436 = load i32, ptr %5417, align 4
  %5437 = and i32 %5436, -2147483648
  %5438 = and i32 %5435, 2147483647
  %5439 = or disjoint i32 %5438, %5437
  store i32 %5439, ptr %5420, align 4
  %5440 = load i32, ptr %5417, align 4
  %5441 = and i32 %5440, 1073741824
  %5442 = and i32 %5439, -1073741825
  %5443 = or disjoint i32 %5442, %5441
  store i32 %5443, ptr %5420, align 4
  %5444 = load i8, ptr %2, align 4
  %5445 = and i8 %5444, 1
  %5446 = and i8 %5392, -2
  %5447 = or disjoint i8 %5446, %5445
  store i8 %5447, ptr %5350, align 8
  %5448 = load i8, ptr %2, align 4
  %5449 = and i8 %5448, 2
  %5450 = and i8 %5447, -3
  %5451 = or disjoint i8 %5450, %5449
  store i8 %5451, ptr %5350, align 8
  %5452 = load i8, ptr %2, align 4
  %5453 = and i8 %5452, 4
  %5454 = and i8 %5451, -5
  %5455 = or disjoint i8 %5454, %5453
  store i8 %5455, ptr %5350, align 8
  %5456 = load i8, ptr %2, align 4
  %5457 = and i8 %5456, 112
  %5458 = and i8 %5455, -113
  %5459 = or disjoint i8 %5458, %5457
  store i8 %5459, ptr %5350, align 8
  %5460 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %5461 = load i16, ptr %5460, align 4, !tbaa !15
  %5462 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %5461, ptr %5462, align 8, !tbaa !5
  %5463 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %5464 = load i16, ptr %5463, align 2, !tbaa !17
  %5465 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %5464, ptr %5465, align 2, !tbaa !5
  %5466 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5467 = load ptr, ptr %5466, align 8, !tbaa !5
  br label %5468

5468:                                             ; preds = %5468, %5346
  %5469 = phi ptr [ %5467, %5346 ], [ %5471, %5468 ]
  %5470 = getelementptr inbounds [2 x %struct.LIST], ptr %5469, i64 0, i64 1
  %5471 = load ptr, ptr %5470, align 8, !tbaa !5
  %5472 = getelementptr inbounds %struct.word_type, ptr %5471, i64 0, i32 1
  %5473 = load i8, ptr %5472, align 8, !tbaa !5
  %5474 = icmp eq i8 %5473, 0
  br i1 %5474, label %5468, label %5475

5475:                                             ; preds = %5468
  %5476 = tail call ptr @Manifest(ptr noundef nonnull %5471, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %5477 = tail call ptr @ReplaceWithTidy(ptr noundef %5476, i32 noundef 1)
  %5478 = getelementptr inbounds ptr, ptr %3, i64 1
  %5479 = load ptr, ptr %5478, align 8, !tbaa !8
  %5480 = icmp eq ptr %5479, null
  br i1 %5480, label %5481, label %5491

5481:                                             ; preds = %5475
  %5482 = load ptr, ptr %3, align 8, !tbaa !8
  %5483 = icmp eq ptr %5482, null
  br i1 %5483, label %5484, label %5491

5484:                                             ; preds = %5481
  %5485 = getelementptr inbounds ptr, ptr %4, i64 1
  %5486 = load ptr, ptr %5485, align 8, !tbaa !8
  %5487 = icmp eq ptr %5486, null
  br i1 %5487, label %5488, label %5491

5488:                                             ; preds = %5484
  %5489 = load ptr, ptr %4, align 8, !tbaa !8
  %5490 = icmp eq ptr %5489, null
  br i1 %5490, label %5677, label %5491

5491:                                             ; preds = %5488, %5484, %5481, %5475
  %5492 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

5493:                                             ; preds = %35, %35
  %5494 = load i16, ptr %2, align 4
  %5495 = and i16 %5494, 128
  %5496 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %5497 = load i16, ptr %5496, align 8
  %5498 = and i16 %5497, -129
  %5499 = or disjoint i16 %5498, %5495
  store i16 %5499, ptr %5496, align 8
  %5500 = load i16, ptr %2, align 4
  %5501 = and i16 %5500, 256
  %5502 = and i16 %5499, -257
  %5503 = or disjoint i16 %5502, %5501
  store i16 %5503, ptr %5496, align 8
  %5504 = load i16, ptr %2, align 4
  %5505 = and i16 %5504, 512
  %5506 = and i16 %5503, -513
  %5507 = or disjoint i16 %5506, %5505
  store i16 %5507, ptr %5496, align 8
  %5508 = load i16, ptr %2, align 4
  %5509 = and i16 %5508, 7168
  %5510 = and i16 %5507, -7169
  %5511 = or disjoint i16 %5510, %5509
  store i16 %5511, ptr %5496, align 8
  %5512 = load i16, ptr %2, align 4
  %5513 = and i16 %5512, -8192
  %5514 = and i16 %5511, 8191
  %5515 = or disjoint i16 %5514, %5513
  store i16 %5515, ptr %5496, align 8
  %5516 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %5517 = load i16, ptr %5516, align 2, !tbaa !5
  %5518 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %5517, ptr %5518, align 2, !tbaa !5
  %5519 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %5520 = load i8, ptr %5519, align 4
  %5521 = and i8 %5520, 3
  %5522 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %5523 = load i8, ptr %5522, align 4
  %5524 = and i8 %5523, -4
  %5525 = or disjoint i8 %5524, %5521
  store i8 %5525, ptr %5522, align 4
  %5526 = load i8, ptr %5519, align 4
  %5527 = and i8 %5526, 12
  %5528 = and i8 %5525, -13
  %5529 = or disjoint i8 %5528, %5527
  store i8 %5529, ptr %5522, align 4
  %5530 = load i8, ptr %5519, align 4
  %5531 = and i8 %5530, 112
  %5532 = and i8 %5529, -113
  %5533 = or disjoint i8 %5532, %5531
  store i8 %5533, ptr %5522, align 4
  %5534 = load i8, ptr %2, align 4
  %5535 = and i8 %5534, 8
  %5536 = trunc i16 %5499 to i8
  %5537 = and i8 %5536, -9
  %5538 = or disjoint i8 %5537, %5535
  store i8 %5538, ptr %5496, align 8
  %5539 = load i16, ptr %5519, align 4
  %5540 = and i16 %5539, 128
  %5541 = load i16, ptr %5522, align 4
  %5542 = and i16 %5541, -129
  %5543 = or disjoint i16 %5542, %5540
  store i16 %5543, ptr %5522, align 4
  %5544 = load i16, ptr %5519, align 4
  %5545 = and i16 %5544, 256
  %5546 = and i16 %5543, -257
  %5547 = or disjoint i16 %5546, %5545
  store i16 %5547, ptr %5522, align 4
  %5548 = load i16, ptr %5519, align 4
  %5549 = and i16 %5548, 512
  %5550 = and i16 %5547, -513
  %5551 = or disjoint i16 %5550, %5549
  store i16 %5551, ptr %5522, align 4
  %5552 = load i16, ptr %5519, align 4
  %5553 = and i16 %5552, 7168
  %5554 = and i16 %5551, -7169
  %5555 = or disjoint i16 %5554, %5553
  store i16 %5555, ptr %5522, align 4
  %5556 = load i16, ptr %5519, align 4
  %5557 = and i16 %5556, -8192
  %5558 = and i16 %5555, 8191
  %5559 = or disjoint i16 %5558, %5557
  store i16 %5559, ptr %5522, align 4
  %5560 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %5561 = load i16, ptr %5560, align 2, !tbaa !5
  %5562 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %5561, ptr %5562, align 2, !tbaa !5
  %5563 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %5564 = load i32, ptr %5563, align 4
  %5565 = and i32 %5564, 4095
  %5566 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %5567 = load i32, ptr %5566, align 4
  %5568 = and i32 %5567, -4096
  %5569 = or disjoint i32 %5568, %5565
  store i32 %5569, ptr %5566, align 4
  %5570 = load i32, ptr %5563, align 4
  %5571 = and i32 %5570, 4190208
  %5572 = and i32 %5569, -4190209
  %5573 = or disjoint i32 %5572, %5571
  store i32 %5573, ptr %5566, align 4
  %5574 = load i32, ptr %5563, align 4
  %5575 = and i32 %5574, 12582912
  %5576 = and i32 %5573, -12582913
  %5577 = or disjoint i32 %5576, %5575
  store i32 %5577, ptr %5566, align 4
  %5578 = load i32, ptr %5563, align 4
  %5579 = and i32 %5578, 1056964608
  %5580 = and i32 %5577, -1056964609
  %5581 = or disjoint i32 %5580, %5579
  store i32 %5581, ptr %5566, align 4
  %5582 = load i32, ptr %5563, align 4
  %5583 = and i32 %5582, -2147483648
  %5584 = and i32 %5581, 2147483647
  %5585 = or disjoint i32 %5584, %5583
  store i32 %5585, ptr %5566, align 4
  %5586 = load i32, ptr %5563, align 4
  %5587 = and i32 %5586, 1073741824
  %5588 = and i32 %5585, -1073741825
  %5589 = or disjoint i32 %5588, %5587
  store i32 %5589, ptr %5566, align 4
  %5590 = load i8, ptr %2, align 4
  %5591 = and i8 %5590, 1
  %5592 = and i8 %5538, -2
  %5593 = or disjoint i8 %5592, %5591
  store i8 %5593, ptr %5496, align 8
  %5594 = load i8, ptr %2, align 4
  %5595 = and i8 %5594, 2
  %5596 = and i8 %5593, -3
  %5597 = or disjoint i8 %5596, %5595
  store i8 %5597, ptr %5496, align 8
  %5598 = load i8, ptr %2, align 4
  %5599 = and i8 %5598, 4
  %5600 = and i8 %5597, -5
  %5601 = or disjoint i8 %5600, %5599
  store i8 %5601, ptr %5496, align 8
  %5602 = load i8, ptr %2, align 4
  %5603 = and i8 %5602, 112
  %5604 = and i8 %5601, -113
  %5605 = or disjoint i8 %5604, %5603
  store i8 %5605, ptr %5496, align 8
  %5606 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %5607 = load i16, ptr %5606, align 4, !tbaa !15
  %5608 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %5607, ptr %5608, align 8, !tbaa !5
  %5609 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %5610 = load i16, ptr %5609, align 2, !tbaa !17
  %5611 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %5610, ptr %5611, align 2, !tbaa !5
  %5612 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5613 = load ptr, ptr %5612, align 8, !tbaa !5
  br label %5614

5614:                                             ; preds = %5614, %5493
  %5615 = phi ptr [ %5613, %5493 ], [ %5617, %5614 ]
  %5616 = getelementptr inbounds [2 x %struct.LIST], ptr %5615, i64 0, i64 1
  %5617 = load ptr, ptr %5616, align 8, !tbaa !5
  %5618 = getelementptr inbounds %struct.word_type, ptr %5617, i64 0, i32 1
  %5619 = load i8, ptr %5618, align 8, !tbaa !5
  %5620 = icmp eq i8 %5619, 0
  br i1 %5620, label %5614, label %5621

5621:                                             ; preds = %5614
  %5622 = tail call ptr @Manifest(ptr noundef nonnull %5617, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %5623 = tail call ptr @ReplaceWithTidy(ptr noundef %5622, i32 noundef 0)
  %5624 = getelementptr inbounds %struct.word_type, ptr %5623, i64 0, i32 1
  %5625 = load i8, ptr %5624, align 8, !tbaa !5
  %5626 = add i8 %5625, -11
  %5627 = icmp ult i8 %5626, 2
  br i1 %5627, label %5656, label %5628

5628:                                             ; preds = %5621
  %5629 = load i8, ptr %36, align 8, !tbaa !5
  %5630 = icmp eq i8 %5629, 94
  %5631 = select i1 %5630, ptr @.str.44, ptr @.str.45
  %5632 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 37, ptr noundef nonnull @.str.43, i32 noundef 2, ptr noundef nonnull %5624, ptr noundef nonnull %5631) #9
  %5633 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %36) #9
  %5634 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %5635 = load ptr, ptr %5634, align 8, !tbaa !5
  %5636 = icmp eq ptr %5635, %0
  br i1 %5636, label %5637, label %5638

5637:                                             ; preds = %5628
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %5633, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %5653

5638:                                             ; preds = %5628
  %5639 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %5640 = load ptr, ptr %5639, align 8, !tbaa !5
  %5641 = getelementptr inbounds [2 x %struct.LIST], ptr %5635, i64 0, i64 1
  store ptr %5640, ptr %5641, align 8, !tbaa !5
  %5642 = getelementptr inbounds [2 x %struct.LIST], ptr %5640, i64 0, i64 1, i32 1
  store ptr %5635, ptr %5642, align 8, !tbaa !5
  store ptr %0, ptr %5634, align 8, !tbaa !5
  store ptr %0, ptr %5639, align 8, !tbaa !5
  store ptr %5635, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %5633, ptr @zz_res, align 8, !tbaa !8
  store ptr %5635, ptr @zz_hold, align 8, !tbaa !8
  %5643 = icmp eq ptr %5635, null
  %5644 = icmp eq ptr %5633, null
  %5645 = select i1 %5643, i1 true, i1 %5644
  br i1 %5645, label %5653, label %5646

5646:                                             ; preds = %5638
  %5647 = getelementptr inbounds [2 x %struct.LIST], ptr %5635, i64 0, i64 1
  %5648 = load ptr, ptr %5647, align 8, !tbaa !5
  store ptr %5648, ptr @zz_tmp, align 8, !tbaa !8
  %5649 = getelementptr inbounds [2 x %struct.LIST], ptr %5633, i64 0, i64 1
  %5650 = load ptr, ptr %5649, align 8, !tbaa !5
  store ptr %5650, ptr %5647, align 8, !tbaa !5
  %5651 = getelementptr inbounds [2 x %struct.LIST], ptr %5650, i64 0, i64 1, i32 1
  store ptr %5635, ptr %5651, align 8, !tbaa !5
  store ptr %5648, ptr %5649, align 8, !tbaa !5
  %5652 = getelementptr inbounds [2 x %struct.LIST], ptr %5648, i64 0, i64 1, i32 1
  store ptr %5633, ptr %5652, align 8, !tbaa !5
  br label %5653

5653:                                             ; preds = %5637, %5638, %5646
  %5654 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %5655 = tail call ptr @Manifest(ptr noundef %5633, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %5681

5656:                                             ; preds = %5621
  %5657 = getelementptr inbounds ptr, ptr %3, i64 1
  %5658 = load ptr, ptr %5657, align 8, !tbaa !8
  %5659 = icmp eq ptr %5658, null
  br i1 %5659, label %5660, label %5670

5660:                                             ; preds = %5656
  %5661 = load ptr, ptr %3, align 8, !tbaa !8
  %5662 = icmp eq ptr %5661, null
  br i1 %5662, label %5663, label %5670

5663:                                             ; preds = %5660
  %5664 = getelementptr inbounds ptr, ptr %4, i64 1
  %5665 = load ptr, ptr %5664, align 8, !tbaa !8
  %5666 = icmp eq ptr %5665, null
  br i1 %5666, label %5667, label %5670

5667:                                             ; preds = %5663
  %5668 = load ptr, ptr %4, align 8, !tbaa !8
  %5669 = icmp eq ptr %5668, null
  br i1 %5669, label %5677, label %5670

5670:                                             ; preds = %5667, %5663, %5660, %5656
  %5671 = tail call fastcc ptr @insert_split(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %5677

5672:                                             ; preds = %35
  %5673 = zext i8 %37 to i32
  %5674 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %5675 = tail call ptr @Image(i32 noundef %5673) #9
  %5676 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef %5674, ptr noundef nonnull @.str.47, ptr noundef %5675) #9
  br label %5677

5677:                                             ; preds = %5175, %5178, %5667, %5670, %5488, %5491, %5332, %5335, %4529, %4626, %4401, %4423, %4249, %4252, %3643, %3646, %2773, %2776, %2736, %2739, %2602, %2605, %2575, %2578, %2538, %2541, %2429, %2432, %2349, %2325, %1348, %1351, %467, %470, %254, %407, %385, %239, %242, %105, %108, %5672, %5180, %4829, %4733, %3463, %3310, %3101, %3069, %3029, %2993, %2922, %2896, %2877, %2778, %2416, %2373, %2135, %80, %78
  %5678 = phi ptr [ %0, %5672 ], [ %5671, %5670 ], [ %0, %5667 ], [ %5492, %5491 ], [ %0, %5488 ], [ %5336, %5335 ], [ %0, %5332 ], [ %5181, %5180 ], [ %4809, %4829 ], [ %4647, %4733 ], [ %4443, %4529 ], [ %4567, %4626 ], [ %4420, %4423 ], [ %4420, %4401 ], [ %4253, %4252 ], [ %4217, %4249 ], [ %3647, %3646 ], [ %0, %3643 ], [ %3377, %3463 ], [ %3224, %3310 ], [ %3103, %3101 ], [ %3071, %3069 ], [ %3031, %3029 ], [ %2995, %2993 ], [ %2924, %2922 ], [ %2897, %2896 ], [ %2791, %2877 ], [ %0, %2778 ], [ %2777, %2776 ], [ %0, %2773 ], [ %2740, %2739 ], [ %0, %2736 ], [ %2606, %2605 ], [ %0, %2602 ], [ %2579, %2578 ], [ %0, %2575 ], [ %2542, %2541 ], [ %0, %2538 ], [ %2433, %2432 ], [ %0, %2429 ], [ %0, %2416 ], [ %0, %2373 ], [ %2350, %2349 ], [ %0, %2325 ], [ %0, %2135 ], [ %1352, %1351 ], [ %552, %1348 ], [ %471, %470 ], [ %453, %467 ], [ %0, %254 ], [ %386, %385 ], [ %409, %407 ], [ %243, %242 ], [ %0, %239 ], [ %109, %108 ], [ %0, %105 ], [ %81, %80 ], [ %61, %78 ], [ %5155, %5178 ], [ %5155, %5175 ]
  %5679 = load i32, ptr @Manifest.depth, align 4, !tbaa !10
  %5680 = add nsw i32 %5679, -1
  store i32 %5680, ptr @Manifest.depth, align 4, !tbaa !10
  br label %5681

5681:                                             ; preds = %5677, %5653
  %5682 = phi ptr [ %5678, %5677 ], [ %5655, %5653 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  ret ptr %5682
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ManifestCl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  %13 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load i16, ptr %2, align 4
  %16 = and i16 %15, 128
  %17 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, -129
  %20 = or disjoint i16 %19, %16
  store i16 %20, ptr %17, align 8
  %21 = load i16, ptr %2, align 4
  %22 = and i16 %21, 256
  %23 = and i16 %20, -257
  %24 = or disjoint i16 %23, %22
  store i16 %24, ptr %17, align 8
  %25 = load i16, ptr %2, align 4
  %26 = and i16 %25, 512
  %27 = and i16 %24, -513
  %28 = or disjoint i16 %27, %26
  store i16 %28, ptr %17, align 8
  %29 = load i16, ptr %2, align 4
  %30 = and i16 %29, 7168
  %31 = and i16 %28, -7169
  %32 = or disjoint i16 %31, %30
  store i16 %32, ptr %17, align 8
  %33 = load i16, ptr %2, align 4
  %34 = and i16 %33, -8192
  %35 = and i16 %32, 8191
  %36 = or disjoint i16 %35, %34
  store i16 %36, ptr %17, align 8
  %37 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !5
  %39 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %38, ptr %39, align 2, !tbaa !5
  %40 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 3
  %43 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, -4
  %46 = or disjoint i8 %45, %42
  store i8 %46, ptr %43, align 4
  %47 = load i8, ptr %40, align 4
  %48 = and i8 %47, 12
  %49 = and i8 %46, -13
  %50 = or disjoint i8 %49, %48
  store i8 %50, ptr %43, align 4
  %51 = load i8, ptr %40, align 4
  %52 = and i8 %51, 112
  %53 = and i8 %50, -113
  %54 = or disjoint i8 %53, %52
  store i8 %54, ptr %43, align 4
  %55 = load i8, ptr %2, align 4
  %56 = and i8 %55, 8
  %57 = trunc i16 %20 to i8
  %58 = and i8 %57, -9
  %59 = or disjoint i8 %58, %56
  store i8 %59, ptr %17, align 8
  %60 = load i16, ptr %40, align 4
  %61 = and i16 %60, 128
  %62 = load i16, ptr %43, align 4
  %63 = and i16 %62, -129
  %64 = or disjoint i16 %63, %61
  store i16 %64, ptr %43, align 4
  %65 = load i16, ptr %40, align 4
  %66 = and i16 %65, 256
  %67 = and i16 %64, -257
  %68 = or disjoint i16 %67, %66
  store i16 %68, ptr %43, align 4
  %69 = load i16, ptr %40, align 4
  %70 = and i16 %69, 512
  %71 = and i16 %68, -513
  %72 = or disjoint i16 %71, %70
  store i16 %72, ptr %43, align 4
  %73 = load i16, ptr %40, align 4
  %74 = and i16 %73, 7168
  %75 = and i16 %72, -7169
  %76 = or disjoint i16 %75, %74
  store i16 %76, ptr %43, align 4
  %77 = load i16, ptr %40, align 4
  %78 = and i16 %77, -8192
  %79 = and i16 %76, 8191
  %80 = or disjoint i16 %79, %78
  store i16 %80, ptr %43, align 4
  %81 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !5
  %83 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %82, ptr %83, align 2, !tbaa !5
  %84 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 4095
  %87 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -4096
  %90 = or disjoint i32 %89, %86
  store i32 %90, ptr %87, align 4
  %91 = load i32, ptr %84, align 4
  %92 = and i32 %91, 4190208
  %93 = and i32 %90, -4190209
  %94 = or disjoint i32 %93, %92
  store i32 %94, ptr %87, align 4
  %95 = load i32, ptr %84, align 4
  %96 = and i32 %95, 12582912
  %97 = and i32 %94, -12582913
  %98 = or disjoint i32 %97, %96
  store i32 %98, ptr %87, align 4
  %99 = load i32, ptr %84, align 4
  %100 = and i32 %99, 1056964608
  %101 = and i32 %98, -1056964609
  %102 = or disjoint i32 %101, %100
  store i32 %102, ptr %87, align 4
  %103 = load i32, ptr %84, align 4
  %104 = and i32 %103, -2147483648
  %105 = and i32 %102, 2147483647
  %106 = or disjoint i32 %105, %104
  store i32 %106, ptr %87, align 4
  %107 = load i32, ptr %84, align 4
  %108 = and i32 %107, 1073741824
  %109 = and i32 %106, -1073741825
  %110 = or disjoint i32 %109, %108
  store i32 %110, ptr %87, align 4
  %111 = load i8, ptr %2, align 4
  %112 = and i8 %111, 1
  %113 = and i8 %59, -2
  %114 = or disjoint i8 %112, %113
  store i8 %114, ptr %17, align 8
  %115 = load i8, ptr %2, align 4
  %116 = and i8 %115, 2
  %117 = and i8 %114, -3
  %118 = or disjoint i8 %117, %116
  store i8 %118, ptr %17, align 8
  %119 = load i8, ptr %2, align 4
  %120 = and i8 %119, 4
  %121 = and i8 %118, -5
  %122 = or disjoint i8 %121, %120
  store i8 %122, ptr %17, align 8
  %123 = load i8, ptr %2, align 4
  %124 = and i8 %123, 112
  %125 = and i8 %122, -113
  %126 = or disjoint i8 %125, %124
  store i8 %126, ptr %17, align 8
  %127 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %128 = load i16, ptr %127, align 4, !tbaa !15
  %129 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i16 %128, ptr %129, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  %131 = load i16, ptr %130, align 2, !tbaa !17
  %132 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i16 %131, ptr %132, align 2, !tbaa !5
  %133 = load ptr, ptr %9, align 8, !tbaa !8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %273, label %135

135:                                              ; preds = %11
  %136 = load ptr, ptr @GalleySym, align 8, !tbaa !8
  %137 = icmp eq ptr %14, %136
  %138 = load ptr, ptr @ForceGalleySym, align 8
  %139 = icmp eq ptr %14, %138
  %140 = select i1 %137, i1 true, i1 %139
  br i1 %140, label %141, label %273

141:                                              ; preds = %135
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = icmp eq ptr %144, %0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  store ptr %144, ptr @zz_res, align 8, !tbaa !8
  %147 = load ptr, ptr %142, align 8, !tbaa !5
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1
  store ptr %147, ptr %148, align 8, !tbaa !5
  %149 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1, i32 1
  store ptr %144, ptr %149, align 8, !tbaa !5
  store ptr %0, ptr %143, align 8, !tbaa !5
  store ptr %0, ptr %142, align 8, !tbaa !5
  br label %150

150:                                              ; preds = %141, %146
  %151 = phi ptr [ %144, %146 ], [ null, %141 ]
  store ptr %151, ptr @xx_tmp, align 8, !tbaa !8
  %152 = load ptr, ptr %9, align 8, !tbaa !8
  store ptr %152, ptr @zz_res, align 8, !tbaa !8
  store ptr %151, ptr @zz_hold, align 8, !tbaa !8
  %153 = icmp eq ptr %151, null
  %154 = icmp eq ptr %152, null
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  store ptr %158, ptr @zz_tmp, align 8, !tbaa !8
  %159 = getelementptr inbounds [2 x %struct.LIST], ptr %152, i64 0, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !5
  store ptr %160, ptr %157, align 8, !tbaa !5
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %160, i64 0, i64 1, i32 1
  store ptr %151, ptr %161, align 8, !tbaa !5
  store ptr %158, ptr %159, align 8, !tbaa !5
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1, i32 1
  store ptr %152, ptr %162, align 8, !tbaa !5
  br label %163

163:                                              ; preds = %150, %156
  %164 = load ptr, ptr %9, align 8, !tbaa !8
  %165 = getelementptr inbounds %struct.LIST, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  br label %167

167:                                              ; preds = %167, %163
  %168 = phi ptr [ %166, %163 ], [ %170, %167 ]
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  %171 = getelementptr inbounds %struct.word_type, ptr %170, i64 0, i32 1
  %172 = load i8, ptr %171, align 8, !tbaa !5
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %167, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.LIST, ptr %170, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  br label %177

177:                                              ; preds = %177, %174
  %178 = phi ptr [ %176, %174 ], [ %180, %177 ]
  %179 = getelementptr inbounds [2 x %struct.LIST], ptr %178, i64 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds %struct.word_type, ptr %180, i64 0, i32 1
  %182 = load i8, ptr %181, align 8, !tbaa !5
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %177, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.LIST, ptr %180, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  store ptr %186, ptr @xx_link, align 8, !tbaa !8
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %186, i64 0, i64 1, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = icmp eq ptr %188, %186
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  store ptr %188, ptr @zz_res, align 8, !tbaa !8
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %186, i64 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %188, i64 0, i64 1
  store ptr %192, ptr %193, align 8, !tbaa !5
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1, i32 1
  store ptr %188, ptr %194, align 8, !tbaa !5
  store ptr %186, ptr %187, align 8, !tbaa !5
  store ptr %186, ptr %191, align 8, !tbaa !5
  br label %195

195:                                              ; preds = %184, %190
  %196 = phi ptr [ %188, %190 ], [ null, %184 ]
  store ptr %196, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %186, ptr @zz_hold, align 8, !tbaa !8
  %197 = getelementptr inbounds %struct.LIST, ptr %186, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  %199 = icmp eq ptr %198, %186
  br i1 %199, label %208, label %200

200:                                              ; preds = %195
  store ptr %198, ptr @zz_res, align 8, !tbaa !8
  %201 = load ptr, ptr %186, align 8, !tbaa !5
  store ptr %201, ptr %198, align 8, !tbaa !5
  %202 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %203 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = getelementptr inbounds %struct.LIST, ptr %204, i64 0, i32 1
  store ptr %202, ptr %205, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.LIST, ptr %203, i64 0, i32 1
  store ptr %203, ptr %206, align 8, !tbaa !5
  store ptr %203, ptr %203, align 8, !tbaa !5
  %207 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %208

208:                                              ; preds = %195, %200
  %209 = phi ptr [ %186, %195 ], [ %207, %200 ]
  store ptr %209, ptr @zz_hold, align 8, !tbaa !8
  %210 = getelementptr inbounds %struct.word_type, ptr %209, i64 0, i32 1
  %211 = load i8, ptr %210, align 8, !tbaa !5
  %212 = add i8 %211, -11
  %213 = icmp ult i8 %212, 2
  %214 = getelementptr inbounds %struct.word_type, ptr %209, i64 0, i32 1, i32 0, i32 1
  %215 = zext i8 %211 to i64
  %216 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %215
  %217 = select i1 %213, ptr %214, ptr %216
  %218 = load i8, ptr %217, align 1, !tbaa !5
  %219 = zext i8 %218 to i32
  store i32 %219, ptr @zz_size, align 4, !tbaa !10
  %220 = zext i8 %218 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !8
  store ptr %222, ptr %209, align 8, !tbaa !5
  %223 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %224 = load i32, ptr @zz_size, align 4, !tbaa !10
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %225
  store ptr %223, ptr %226, align 8, !tbaa !8
  %227 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %227, i64 0, i64 1, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = icmp eq ptr %229, %227
  br i1 %230, label %231, label %233

231:                                              ; preds = %208
  %232 = tail call i32 @DisposeObject(ptr noundef nonnull %227) #9
  br label %233

233:                                              ; preds = %231, %208
  %234 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %235 = zext i8 %234 to i32
  store i32 %235, ptr @zz_size, align 4, !tbaa !10
  %236 = zext i8 %234 to i64
  %237 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %242 = tail call ptr @GetMemory(i32 noundef %235, ptr noundef %241) #9
  br label %245

243:                                              ; preds = %233
  store ptr %238, ptr @zz_hold, align 8, !tbaa !8
  %244 = load ptr, ptr %238, align 8, !tbaa !5
  store ptr %244, ptr %237, align 8, !tbaa !8
  br label %245

245:                                              ; preds = %240, %243
  %246 = phi ptr [ %242, %240 ], [ %238, %243 ]
  %247 = getelementptr inbounds %struct.word_type, ptr %246, i64 0, i32 1
  store i8 0, ptr %247, align 8, !tbaa !5
  %248 = getelementptr inbounds [2 x %struct.LIST], ptr %246, i64 0, i64 1, i32 1
  store ptr %246, ptr %248, align 8, !tbaa !5
  %249 = getelementptr inbounds [2 x %struct.LIST], ptr %246, i64 0, i64 1
  store ptr %246, ptr %249, align 8, !tbaa !5
  %250 = getelementptr inbounds %struct.LIST, ptr %246, i64 0, i32 1
  store ptr %246, ptr %250, align 8, !tbaa !5
  store ptr %246, ptr %246, align 8, !tbaa !5
  store ptr %246, ptr @xx_link, align 8, !tbaa !8
  store ptr %246, ptr @zz_res, align 8, !tbaa !8
  store ptr %180, ptr @zz_hold, align 8, !tbaa !8
  %251 = load ptr, ptr %180, align 8, !tbaa !5
  store ptr %251, ptr @zz_tmp, align 8, !tbaa !8
  %252 = load ptr, ptr %246, align 8, !tbaa !5
  store ptr %252, ptr %180, align 8, !tbaa !5
  %253 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %254 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %255 = load ptr, ptr %254, align 8, !tbaa !5
  %256 = getelementptr inbounds %struct.LIST, ptr %255, i64 0, i32 1
  store ptr %253, ptr %256, align 8, !tbaa !5
  %257 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %257, ptr %254, align 8, !tbaa !5
  %258 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %259 = getelementptr inbounds %struct.LIST, ptr %257, i64 0, i32 1
  store ptr %258, ptr %259, align 8, !tbaa !5
  %260 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %260, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %261 = icmp eq ptr %0, null
  %262 = icmp eq ptr %260, null
  %263 = select i1 %261, i1 true, i1 %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %245
  %265 = load ptr, ptr %142, align 8, !tbaa !5
  store ptr %265, ptr @zz_tmp, align 8, !tbaa !8
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %260, i64 0, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  store ptr %267, ptr %142, align 8, !tbaa !5
  %268 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1, i32 1
  store ptr %0, ptr %268, align 8, !tbaa !5
  store ptr %265, ptr %266, align 8, !tbaa !5
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %265, i64 0, i64 1, i32 1
  store ptr %260, ptr %269, align 8, !tbaa !5
  br label %270

270:                                              ; preds = %245, %264
  %271 = load ptr, ptr %9, align 8, !tbaa !8
  store ptr null, ptr %9, align 8, !tbaa !8
  %272 = tail call ptr @Manifest(ptr noundef %271, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %9, i32 noundef %10)
  br label %802

273:                                              ; preds = %135, %11
  %274 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !5
  %276 = icmp eq ptr %275, %0
  br i1 %276, label %363, label %277

277:                                              ; preds = %273, %351
  %278 = phi ptr [ %359, %351 ], [ %275, %273 ]
  %279 = phi i32 [ %357, %351 ], [ 1, %273 ]
  br label %280

280:                                              ; preds = %277, %280
  %281 = phi ptr [ %283, %280 ], [ %278, %277 ]
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !5
  %284 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 1
  %285 = load i8, ptr %284, align 8, !tbaa !5
  switch i8 %285, label %286 [
    i8 0, label %280
    i8 10, label %289
  ]

286:                                              ; preds = %280
  %287 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %288 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %287, ptr noundef nonnull @.str.48) #9
  br label %289

289:                                              ; preds = %280, %286
  %290 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 1
  %291 = getelementptr inbounds %struct.LIST, ptr %283, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  br label %293

293:                                              ; preds = %293, %289
  %294 = phi ptr [ %292, %289 ], [ %296, %293 ]
  %295 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1
  %296 = load ptr, ptr %295, align 8, !tbaa !5
  %297 = getelementptr inbounds %struct.word_type, ptr %296, i64 0, i32 1
  %298 = load i8, ptr %297, align 8, !tbaa !5
  switch i8 %298, label %299 [
    i8 0, label %293
    i8 11, label %351
    i8 12, label %351
  ]

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.closure_type, ptr %283, i64 0, i32 5
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = getelementptr inbounds i8, ptr %301, i64 41
  %303 = load i24, ptr %302, align 1
  %304 = and i24 %303, 524288
  %305 = icmp eq i24 %304, 0
  br i1 %305, label %306, label %351

306:                                              ; preds = %299
  %307 = and i24 %303, 8193
  %308 = icmp eq i24 %307, 0
  br i1 %308, label %320, label %309

309:                                              ; preds = %306
  %310 = tail call ptr @Manifest(ptr noundef nonnull %296, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %311 = tail call ptr @ReplaceWithTidy(ptr noundef %310, i32 noundef 1)
  %312 = getelementptr inbounds %struct.word_type, ptr %311, i64 0, i32 1
  %313 = load i8, ptr %312, align 8, !tbaa !5
  %314 = add i8 %313, -11
  %315 = icmp ult i8 %314, 2
  br i1 %315, label %351, label %316

316:                                              ; preds = %309
  %317 = load ptr, ptr %300, align 8, !tbaa !5
  %318 = tail call ptr @SymName(ptr noundef %317) #9
  %319 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 41, ptr noundef nonnull @.str.49, i32 noundef 1, ptr noundef nonnull %290, ptr noundef %318) #9
  br label %351

320:                                              ; preds = %306
  switch i8 %298, label %351 [
    i8 78, label %321
    i8 2, label %324
  ]

321:                                              ; preds = %320
  %322 = tail call ptr @Manifest(ptr noundef nonnull %296, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %323 = tail call ptr @ReplaceWithTidy(ptr noundef %322, i32 noundef 0)
  br label %351

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.closure_type, ptr %296, i64 0, i32 5
  %326 = load ptr, ptr %325, align 8, !tbaa !5
  %327 = getelementptr inbounds %struct.word_type, ptr %326, i64 0, i32 1
  %328 = load i8, ptr %327, align 8, !tbaa !5
  %329 = add i8 %328, 112
  %330 = icmp ult i8 %329, 3
  br i1 %330, label %331, label %351

331:                                              ; preds = %324
  %332 = tail call ptr @ParameterCheck(ptr noundef nonnull %296, ptr noundef %1) #9
  %333 = icmp eq ptr %332, null
  br i1 %333, label %351, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %296, i64 0, i64 1, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = icmp eq ptr %336, %296
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %332, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %349

339:                                              ; preds = %334
  %340 = getelementptr inbounds [2 x %struct.LIST], ptr %296, i64 0, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !5
  %342 = getelementptr inbounds [2 x %struct.LIST], ptr %336, i64 0, i64 1
  store ptr %341, ptr %342, align 8, !tbaa !5
  %343 = getelementptr inbounds [2 x %struct.LIST], ptr %341, i64 0, i64 1, i32 1
  store ptr %336, ptr %343, align 8, !tbaa !5
  store ptr %296, ptr %335, align 8, !tbaa !5
  store ptr %296, ptr %340, align 8, !tbaa !5
  store ptr %336, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %332, ptr @zz_res, align 8, !tbaa !8
  store ptr %336, ptr @zz_hold, align 8, !tbaa !8
  %344 = load ptr, ptr %342, align 8, !tbaa !5
  store ptr %344, ptr @zz_tmp, align 8, !tbaa !8
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %332, i64 0, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !5
  store ptr %346, ptr %342, align 8, !tbaa !5
  %347 = getelementptr inbounds [2 x %struct.LIST], ptr %346, i64 0, i64 1, i32 1
  store ptr %336, ptr %347, align 8, !tbaa !5
  store ptr %344, ptr %345, align 8, !tbaa !5
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %344, i64 0, i64 1, i32 1
  store ptr %332, ptr %348, align 8, !tbaa !5
  br label %349

349:                                              ; preds = %338, %339
  %350 = tail call i32 @DisposeObject(ptr noundef nonnull %296) #9
  br label %351

351:                                              ; preds = %293, %293, %309, %320, %316, %324, %349, %331, %321, %299
  %352 = phi ptr [ %296, %299 ], [ %311, %316 ], [ %323, %321 ], [ %332, %349 ], [ %296, %331 ], [ %296, %324 ], [ %311, %309 ], [ %296, %320 ], [ %296, %293 ], [ %296, %293 ]
  %353 = getelementptr inbounds %struct.word_type, ptr %352, i64 0, i32 1
  %354 = load i8, ptr %353, align 8, !tbaa !5
  %355 = add i8 %354, -11
  %356 = icmp ult i8 %355, 2
  %357 = select i1 %356, i32 %279, i32 0
  %358 = getelementptr inbounds %struct.LIST, ptr %278, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !5
  %360 = icmp eq ptr %359, %0
  br i1 %360, label %361, label %277

361:                                              ; preds = %351
  %362 = icmp eq i32 %357, 0
  br i1 %362, label %461, label %363

363:                                              ; preds = %273, %361
  %364 = getelementptr inbounds %struct.symbol_type, ptr %14, i64 0, i32 9
  %365 = load ptr, ptr %364, align 8, !tbaa !5
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %461

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.symbol_type, ptr %14, i64 0, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !5
  %370 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %371 = icmp eq ptr %369, %370
  br i1 %371, label %461, label %372

372:                                              ; preds = %367
  %373 = tail call ptr @SearchEnv(ptr noundef %1, ptr noundef %369) #9
  %374 = icmp eq ptr %373, null
  br i1 %374, label %461, label %375

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.word_type, ptr %373, i64 0, i32 1
  %377 = load i8, ptr %376, align 8, !tbaa !5
  %378 = icmp eq i8 %377, 2
  br i1 %378, label %379, label %461

379:                                              ; preds = %375
  %380 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !5
  br label %382

382:                                              ; preds = %382, %379
  %383 = phi ptr [ %381, %379 ], [ %384, %382 ]
  %384 = load ptr, ptr %383, align 8, !tbaa !5
  %385 = getelementptr inbounds %struct.word_type, ptr %384, i64 0, i32 1
  %386 = load i8, ptr %385, align 8, !tbaa !5
  switch i8 %386, label %387 [
    i8 0, label %382
    i8 82, label %398
  ]

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.word_type, ptr %384, i64 0, i32 1
  %389 = zext i8 %386 to i32
  %390 = load ptr, ptr @stderr, align 8, !tbaa !8
  %391 = tail call ptr @Image(i32 noundef %389) #9
  %392 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %390, ptr noundef nonnull @.str.50, ptr noundef %391) #11
  %393 = load i8, ptr %388, align 8, !tbaa !5
  %394 = icmp eq i8 %393, 82
  br i1 %394, label %398, label %395

395:                                              ; preds = %387
  %396 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %397 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %396, ptr noundef nonnull @.str.51) #9
  br label %398

398:                                              ; preds = %382, %395, %387
  %399 = getelementptr inbounds %struct.LIST, ptr %384, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !5
  %401 = load ptr, ptr %384, align 8, !tbaa !5
  %402 = icmp eq ptr %400, %401
  br i1 %402, label %405, label %403

403:                                              ; preds = %398
  %404 = tail call ptr @SetEnv(ptr noundef nonnull %373, ptr noundef null) #9
  br label %405

405:                                              ; preds = %398, %403
  %406 = phi ptr [ %404, %403 ], [ %384, %398 ]
  %407 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %408 = zext i8 %407 to i32
  store i32 %408, ptr @zz_size, align 4, !tbaa !10
  %409 = zext i8 %407 to i64
  %410 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %416

413:                                              ; preds = %405
  %414 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %415 = tail call ptr @GetMemory(i32 noundef %408, ptr noundef %414) #9
  store ptr %415, ptr @zz_hold, align 8, !tbaa !8
  br label %418

416:                                              ; preds = %405
  store ptr %411, ptr @zz_hold, align 8, !tbaa !8
  %417 = load ptr, ptr %411, align 8, !tbaa !5
  store ptr %417, ptr %410, align 8, !tbaa !8
  br label %418

418:                                              ; preds = %413, %416
  %419 = phi ptr [ %415, %413 ], [ %411, %416 ]
  %420 = getelementptr inbounds %struct.word_type, ptr %419, i64 0, i32 1
  store i8 17, ptr %420, align 8, !tbaa !5
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %419, i64 0, i64 1, i32 1
  store ptr %419, ptr %421, align 8, !tbaa !5
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %419, i64 0, i64 1
  store ptr %419, ptr %422, align 8, !tbaa !5
  %423 = getelementptr inbounds %struct.LIST, ptr %419, i64 0, i32 1
  store ptr %419, ptr %423, align 8, !tbaa !5
  store ptr %419, ptr %419, align 8, !tbaa !5
  %424 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %425 = zext i8 %424 to i32
  store i32 %425, ptr @zz_size, align 4, !tbaa !10
  %426 = zext i8 %424 to i64
  %427 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !8
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %433

430:                                              ; preds = %418
  %431 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %432 = tail call ptr @GetMemory(i32 noundef %425, ptr noundef %431) #9
  br label %435

433:                                              ; preds = %418
  store ptr %428, ptr @zz_hold, align 8, !tbaa !8
  %434 = load ptr, ptr %428, align 8, !tbaa !5
  store ptr %434, ptr %427, align 8, !tbaa !8
  br label %435

435:                                              ; preds = %430, %433
  %436 = phi ptr [ %432, %430 ], [ %428, %433 ]
  %437 = getelementptr inbounds %struct.word_type, ptr %436, i64 0, i32 1
  store i8 0, ptr %437, align 8, !tbaa !5
  %438 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1, i32 1
  store ptr %436, ptr %438, align 8, !tbaa !5
  %439 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1
  store ptr %436, ptr %439, align 8, !tbaa !5
  %440 = getelementptr inbounds %struct.LIST, ptr %436, i64 0, i32 1
  store ptr %436, ptr %440, align 8, !tbaa !5
  store ptr %436, ptr %436, align 8, !tbaa !5
  store ptr %436, ptr @xx_link, align 8, !tbaa !8
  store ptr %436, ptr @zz_res, align 8, !tbaa !8
  store ptr %419, ptr @zz_hold, align 8, !tbaa !8
  %441 = load ptr, ptr %419, align 8, !tbaa !5
  store ptr %441, ptr @zz_tmp, align 8, !tbaa !8
  %442 = load ptr, ptr %436, align 8, !tbaa !5
  store ptr %442, ptr %419, align 8, !tbaa !5
  %443 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %444 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %445 = load ptr, ptr %444, align 8, !tbaa !5
  %446 = getelementptr inbounds %struct.LIST, ptr %445, i64 0, i32 1
  store ptr %443, ptr %446, align 8, !tbaa !5
  %447 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %447, ptr %444, align 8, !tbaa !5
  %448 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %449 = getelementptr inbounds %struct.LIST, ptr %447, i64 0, i32 1
  store ptr %448, ptr %449, align 8, !tbaa !5
  %450 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %450, ptr @zz_res, align 8, !tbaa !8
  store ptr %406, ptr @zz_hold, align 8, !tbaa !8
  %451 = icmp eq ptr %406, null
  %452 = icmp eq ptr %450, null
  %453 = select i1 %451, i1 true, i1 %452
  br i1 %453, label %461, label %454

454:                                              ; preds = %435
  %455 = getelementptr inbounds [2 x %struct.LIST], ptr %406, i64 0, i64 1
  %456 = load ptr, ptr %455, align 8, !tbaa !5
  store ptr %456, ptr @zz_tmp, align 8, !tbaa !8
  %457 = getelementptr inbounds [2 x %struct.LIST], ptr %450, i64 0, i64 1
  %458 = load ptr, ptr %457, align 8, !tbaa !5
  store ptr %458, ptr %455, align 8, !tbaa !5
  %459 = getelementptr inbounds [2 x %struct.LIST], ptr %458, i64 0, i64 1, i32 1
  store ptr %406, ptr %459, align 8, !tbaa !5
  store ptr %456, ptr %457, align 8, !tbaa !5
  %460 = getelementptr inbounds [2 x %struct.LIST], ptr %456, i64 0, i64 1, i32 1
  store ptr %450, ptr %460, align 8, !tbaa !5
  br label %461

461:                                              ; preds = %361, %363, %367, %372, %375, %454, %435
  %462 = phi ptr [ %406, %435 ], [ %406, %454 ], [ %1, %375 ], [ %1, %372 ], [ %1, %367 ], [ %1, %363 ], [ %1, %361 ]
  %463 = phi ptr [ %419, %435 ], [ %419, %454 ], [ null, %375 ], [ null, %372 ], [ null, %367 ], [ null, %363 ], [ null, %361 ]
  %464 = getelementptr inbounds i8, ptr %14, i64 41
  %465 = load i24, ptr %464, align 1
  %466 = and i24 %465, 64
  %467 = icmp eq i24 %466, 0
  %468 = icmp ne i32 %8, 0
  %469 = or i1 %468, %467
  br i1 %469, label %599, label %470

470:                                              ; preds = %461
  %471 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !5
  %472 = zext i8 %471 to i32
  store i32 %472, ptr @zz_size, align 4, !tbaa !10
  %473 = zext i8 %471 to i64
  %474 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !8
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %480

477:                                              ; preds = %470
  %478 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %479 = tail call ptr @GetMemory(i32 noundef %472, ptr noundef %478) #9
  br label %482

480:                                              ; preds = %470
  store ptr %475, ptr @zz_hold, align 8, !tbaa !8
  %481 = load ptr, ptr %475, align 8, !tbaa !5
  store ptr %481, ptr %474, align 8, !tbaa !8
  br label %482

482:                                              ; preds = %477, %480
  %483 = phi ptr [ %479, %477 ], [ %475, %480 ]
  %484 = getelementptr inbounds %struct.word_type, ptr %483, i64 0, i32 1
  store i8 8, ptr %484, align 8, !tbaa !5
  %485 = getelementptr inbounds [2 x %struct.LIST], ptr %483, i64 0, i64 1, i32 1
  store ptr %483, ptr %485, align 8, !tbaa !5
  %486 = getelementptr inbounds [2 x %struct.LIST], ptr %483, i64 0, i64 1
  store ptr %483, ptr %486, align 8, !tbaa !5
  %487 = getelementptr inbounds %struct.LIST, ptr %483, i64 0, i32 1
  store ptr %483, ptr %487, align 8, !tbaa !5
  store ptr %483, ptr %483, align 8, !tbaa !5
  %488 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %489 = load i16, ptr %488, align 2, !tbaa !5
  %490 = getelementptr inbounds %struct.word_type, ptr %483, i64 0, i32 1, i32 0, i32 2
  store i16 %489, ptr %490, align 2, !tbaa !5
  %491 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, 1048575
  %494 = getelementptr inbounds %struct.word_type, ptr %483, i64 0, i32 1, i32 0, i32 3
  %495 = load i32, ptr %494, align 4
  %496 = and i32 %495, -1048576
  %497 = or disjoint i32 %496, %493
  store i32 %497, ptr %494, align 4
  %498 = load i32, ptr %491, align 4
  %499 = and i32 %498, -1048576
  %500 = or disjoint i32 %499, %493
  store i32 %500, ptr %494, align 4
  %501 = getelementptr inbounds %struct.closure_type, ptr %483, i64 0, i32 5
  store ptr %14, ptr %501, align 8, !tbaa !5
  %502 = getelementptr inbounds %struct.head_type, ptr %483, i64 0, i32 8
  %503 = getelementptr inbounds %struct.head_type, ptr %483, i64 0, i32 11
  store ptr null, ptr %503, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %502, i8 0, i64 16, i1 false)
  %504 = load i24, ptr %464, align 1
  %505 = getelementptr inbounds i8, ptr %483, i64 42
  %506 = load i16, ptr %505, align 2
  %507 = lshr i24 %504, 13
  %508 = trunc i24 %507 to i16
  %509 = and i16 %508, 256
  %510 = and i16 %506, -387
  %511 = or disjoint i16 %509, %510
  %512 = getelementptr inbounds %struct.head_type, ptr %483, i64 0, i32 7
  store ptr null, ptr %512, align 8, !tbaa !5
  %513 = or disjoint i16 %511, 128
  store i16 %513, ptr %505, align 2
  %514 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %515 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !5
  %517 = icmp eq ptr %516, %0
  br i1 %517, label %518, label %519

518:                                              ; preds = %482
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %483, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %527

519:                                              ; preds = %482
  %520 = load ptr, ptr %514, align 8, !tbaa !5
  %521 = getelementptr inbounds [2 x %struct.LIST], ptr %516, i64 0, i64 1
  store ptr %520, ptr %521, align 8, !tbaa !5
  %522 = getelementptr inbounds [2 x %struct.LIST], ptr %520, i64 0, i64 1, i32 1
  store ptr %516, ptr %522, align 8, !tbaa !5
  store ptr %0, ptr %515, align 8, !tbaa !5
  store ptr %0, ptr %514, align 8, !tbaa !5
  store ptr %516, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %483, ptr @zz_res, align 8, !tbaa !8
  store ptr %516, ptr @zz_hold, align 8, !tbaa !8
  %523 = load ptr, ptr %521, align 8, !tbaa !5
  store ptr %523, ptr @zz_tmp, align 8, !tbaa !8
  %524 = load ptr, ptr %486, align 8, !tbaa !5
  store ptr %524, ptr %521, align 8, !tbaa !5
  %525 = getelementptr inbounds [2 x %struct.LIST], ptr %524, i64 0, i64 1, i32 1
  store ptr %516, ptr %525, align 8, !tbaa !5
  store ptr %523, ptr %486, align 8, !tbaa !5
  %526 = getelementptr inbounds [2 x %struct.LIST], ptr %523, i64 0, i64 1, i32 1
  store ptr %483, ptr %526, align 8, !tbaa !5
  br label %527

527:                                              ; preds = %518, %519
  %528 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %529 = zext i8 %528 to i32
  store i32 %529, ptr @zz_size, align 4, !tbaa !10
  %530 = zext i8 %528 to i64
  %531 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !8
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %537

534:                                              ; preds = %527
  %535 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %536 = tail call ptr @GetMemory(i32 noundef %529, ptr noundef %535) #9
  br label %539

537:                                              ; preds = %527
  store ptr %532, ptr @zz_hold, align 8, !tbaa !8
  %538 = load ptr, ptr %532, align 8, !tbaa !5
  store ptr %538, ptr %531, align 8, !tbaa !8
  br label %539

539:                                              ; preds = %534, %537
  %540 = phi ptr [ %536, %534 ], [ %532, %537 ]
  %541 = getelementptr inbounds %struct.word_type, ptr %540, i64 0, i32 1
  store i8 0, ptr %541, align 8, !tbaa !5
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %540, i64 0, i64 1, i32 1
  store ptr %540, ptr %542, align 8, !tbaa !5
  %543 = getelementptr inbounds [2 x %struct.LIST], ptr %540, i64 0, i64 1
  store ptr %540, ptr %543, align 8, !tbaa !5
  %544 = getelementptr inbounds %struct.LIST, ptr %540, i64 0, i32 1
  store ptr %540, ptr %544, align 8, !tbaa !5
  store ptr %540, ptr %540, align 8, !tbaa !5
  store ptr %540, ptr @xx_link, align 8, !tbaa !8
  store ptr %540, ptr @zz_res, align 8, !tbaa !8
  store ptr %483, ptr @zz_hold, align 8, !tbaa !8
  %545 = load ptr, ptr %483, align 8, !tbaa !5
  store ptr %545, ptr @zz_tmp, align 8, !tbaa !8
  %546 = load ptr, ptr %540, align 8, !tbaa !5
  store ptr %546, ptr %483, align 8, !tbaa !5
  %547 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %548 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %549 = load ptr, ptr %548, align 8, !tbaa !5
  %550 = getelementptr inbounds %struct.LIST, ptr %549, i64 0, i32 1
  store ptr %547, ptr %550, align 8, !tbaa !5
  %551 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %551, ptr %548, align 8, !tbaa !5
  %552 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %553 = getelementptr inbounds %struct.LIST, ptr %551, i64 0, i32 1
  store ptr %552, ptr %553, align 8, !tbaa !5
  %554 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %554, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %562, label %556

556:                                              ; preds = %539
  %557 = load ptr, ptr %514, align 8, !tbaa !5
  store ptr %557, ptr @zz_tmp, align 8, !tbaa !8
  %558 = getelementptr inbounds [2 x %struct.LIST], ptr %554, i64 0, i64 1
  %559 = load ptr, ptr %558, align 8, !tbaa !5
  store ptr %559, ptr %514, align 8, !tbaa !5
  %560 = getelementptr inbounds [2 x %struct.LIST], ptr %559, i64 0, i64 1, i32 1
  store ptr %0, ptr %560, align 8, !tbaa !5
  store ptr %557, ptr %558, align 8, !tbaa !5
  %561 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1, i32 1
  store ptr %554, ptr %561, align 8, !tbaa !5
  br label %562

562:                                              ; preds = %539, %556
  tail call void @AttachEnv(ptr noundef %462, ptr noundef nonnull %0) #9
  tail call void @SetTarget(ptr noundef nonnull %483) #9
  %563 = getelementptr inbounds %struct.symbol_type, ptr %14, i64 0, i32 16
  %564 = load i8, ptr %563, align 2
  %565 = and i8 %564, 32
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %569, label %567

567:                                              ; preds = %562
  %568 = tail call ptr @BuildEnclose(ptr noundef nonnull %483) #9
  br label %569

569:                                              ; preds = %562, %567
  %570 = phi ptr [ %568, %567 ], [ null, %562 ]
  %571 = getelementptr inbounds %struct.head_type, ptr %483, i64 0, i32 12
  store ptr %570, ptr %571, align 8, !tbaa !5
  %572 = getelementptr inbounds %struct.head_type, ptr %483, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %572, i8 0, i64 16, i1 false)
  %573 = load ptr, ptr %3, align 8, !tbaa !8
  %574 = icmp eq ptr %573, null
  br i1 %574, label %575, label %579

575:                                              ; preds = %569
  %576 = load ptr, ptr %4, align 8, !tbaa !8
  %577 = icmp eq ptr %576, null
  %578 = select i1 %577, i16 0, i16 4
  br label %579

579:                                              ; preds = %575, %569
  %580 = phi i16 [ 4, %569 ], [ %578, %575 ]
  %581 = load i16, ptr %505, align 2
  %582 = and i16 %581, -5
  %583 = or disjoint i16 %582, %580
  store i16 %583, ptr %505, align 2
  %584 = getelementptr inbounds ptr, ptr %3, i64 1
  %585 = load ptr, ptr %584, align 8, !tbaa !8
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %597

587:                                              ; preds = %579
  %588 = load ptr, ptr %3, align 8, !tbaa !8
  %589 = icmp eq ptr %588, null
  br i1 %589, label %590, label %597

590:                                              ; preds = %587
  %591 = getelementptr inbounds ptr, ptr %4, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %597

594:                                              ; preds = %590
  %595 = load ptr, ptr %4, align 8, !tbaa !8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %797, label %597

597:                                              ; preds = %594, %590, %587, %579
  %598 = tail call fastcc ptr @insert_split(ptr noundef nonnull %483, ptr noundef nonnull %3, ptr noundef %4)
  br label %797

599:                                              ; preds = %461
  %600 = load ptr, ptr %5, align 8, !tbaa !8
  %601 = icmp eq ptr %600, %14
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  store ptr null, ptr %5, align 8, !tbaa !8
  br label %618

603:                                              ; preds = %599
  %604 = and i24 %465, 1049600
  %605 = icmp eq i24 %604, 1048576
  %606 = and i24 %465, 1536
  %607 = icmp eq i24 %606, 0
  %608 = or i1 %605, %607
  %609 = or i1 %608, %468
  br i1 %609, label %618, label %610

610:                                              ; preds = %603
  %611 = and i24 %465, 512
  %612 = icmp eq i24 %611, 0
  %613 = icmp eq ptr %600, null
  %614 = or i1 %612, %613
  br i1 %614, label %769, label %615

615:                                              ; preds = %610
  %616 = tail call i32 @SearchUses(ptr noundef nonnull %14, ptr noundef nonnull %600) #9
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %769, label %618

618:                                              ; preds = %603, %602, %615
  %619 = call ptr @ClosureExpand(ptr noundef %0, ptr noundef %462, i32 noundef 1, ptr noundef %6, ptr noundef nonnull %12) #9
  %620 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %621 = zext i8 %620 to i32
  store i32 %621, ptr @zz_size, align 4, !tbaa !10
  %622 = zext i8 %620 to i64
  %623 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %622
  %624 = load ptr, ptr %623, align 8, !tbaa !8
  %625 = icmp eq ptr %624, null
  br i1 %625, label %626, label %629

626:                                              ; preds = %618
  %627 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %628 = call ptr @GetMemory(i32 noundef %621, ptr noundef %627) #9
  store ptr %628, ptr @zz_hold, align 8, !tbaa !8
  br label %631

629:                                              ; preds = %618
  store ptr %624, ptr @zz_hold, align 8, !tbaa !8
  %630 = load ptr, ptr %624, align 8, !tbaa !5
  store ptr %630, ptr %623, align 8, !tbaa !8
  br label %631

631:                                              ; preds = %626, %629
  %632 = phi ptr [ %628, %626 ], [ %624, %629 ]
  %633 = getelementptr inbounds %struct.word_type, ptr %632, i64 0, i32 1
  store i8 17, ptr %633, align 8, !tbaa !5
  %634 = getelementptr inbounds [2 x %struct.LIST], ptr %632, i64 0, i64 1, i32 1
  store ptr %632, ptr %634, align 8, !tbaa !5
  %635 = getelementptr inbounds [2 x %struct.LIST], ptr %632, i64 0, i64 1
  store ptr %632, ptr %635, align 8, !tbaa !5
  %636 = getelementptr inbounds %struct.LIST, ptr %632, i64 0, i32 1
  store ptr %632, ptr %636, align 8, !tbaa !5
  store ptr %632, ptr %632, align 8, !tbaa !5
  %637 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %638 = zext i8 %637 to i32
  store i32 %638, ptr @zz_size, align 4, !tbaa !10
  %639 = zext i8 %637 to i64
  %640 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %639
  %641 = load ptr, ptr %640, align 8, !tbaa !8
  %642 = icmp eq ptr %641, null
  br i1 %642, label %643, label %646

643:                                              ; preds = %631
  %644 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %645 = call ptr @GetMemory(i32 noundef %638, ptr noundef %644) #9
  br label %648

646:                                              ; preds = %631
  store ptr %641, ptr @zz_hold, align 8, !tbaa !8
  %647 = load ptr, ptr %641, align 8, !tbaa !5
  store ptr %647, ptr %640, align 8, !tbaa !8
  br label %648

648:                                              ; preds = %643, %646
  %649 = phi ptr [ %645, %643 ], [ %641, %646 ]
  %650 = getelementptr inbounds %struct.word_type, ptr %649, i64 0, i32 1
  store i8 0, ptr %650, align 8, !tbaa !5
  %651 = getelementptr inbounds [2 x %struct.LIST], ptr %649, i64 0, i64 1, i32 1
  store ptr %649, ptr %651, align 8, !tbaa !5
  %652 = getelementptr inbounds [2 x %struct.LIST], ptr %649, i64 0, i64 1
  store ptr %649, ptr %652, align 8, !tbaa !5
  %653 = getelementptr inbounds %struct.LIST, ptr %649, i64 0, i32 1
  store ptr %649, ptr %653, align 8, !tbaa !5
  store ptr %649, ptr %649, align 8, !tbaa !5
  store ptr %649, ptr @xx_link, align 8, !tbaa !8
  store ptr %649, ptr @zz_res, align 8, !tbaa !8
  store ptr %632, ptr @zz_hold, align 8, !tbaa !8
  %654 = load ptr, ptr %632, align 8, !tbaa !5
  store ptr %654, ptr @zz_tmp, align 8, !tbaa !8
  %655 = load ptr, ptr %649, align 8, !tbaa !5
  store ptr %655, ptr %632, align 8, !tbaa !5
  %656 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %657 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %658 = load ptr, ptr %657, align 8, !tbaa !5
  %659 = getelementptr inbounds %struct.LIST, ptr %658, i64 0, i32 1
  store ptr %656, ptr %659, align 8, !tbaa !5
  %660 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %660, ptr %657, align 8, !tbaa !5
  %661 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %662 = getelementptr inbounds %struct.LIST, ptr %660, i64 0, i32 1
  store ptr %661, ptr %662, align 8, !tbaa !5
  %663 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %663, ptr @zz_res, align 8, !tbaa !8
  %664 = load ptr, ptr %12, align 8, !tbaa !8
  store ptr %664, ptr @zz_hold, align 8, !tbaa !8
  %665 = icmp eq ptr %664, null
  %666 = icmp eq ptr %663, null
  %667 = select i1 %665, i1 true, i1 %666
  br i1 %667, label %675, label %668

668:                                              ; preds = %648
  %669 = getelementptr inbounds [2 x %struct.LIST], ptr %664, i64 0, i64 1
  %670 = load ptr, ptr %669, align 8, !tbaa !5
  store ptr %670, ptr @zz_tmp, align 8, !tbaa !8
  %671 = getelementptr inbounds [2 x %struct.LIST], ptr %663, i64 0, i64 1
  %672 = load ptr, ptr %671, align 8, !tbaa !5
  store ptr %672, ptr %669, align 8, !tbaa !5
  %673 = getelementptr inbounds [2 x %struct.LIST], ptr %672, i64 0, i64 1, i32 1
  store ptr %664, ptr %673, align 8, !tbaa !5
  store ptr %670, ptr %671, align 8, !tbaa !5
  %674 = getelementptr inbounds [2 x %struct.LIST], ptr %670, i64 0, i64 1, i32 1
  store ptr %663, ptr %674, align 8, !tbaa !5
  br label %675

675:                                              ; preds = %648, %668
  %676 = getelementptr inbounds %struct.word_type, ptr %619, i64 0, i32 1
  %677 = load i8, ptr %676, align 8, !tbaa !5
  %678 = icmp eq i8 %677, 57
  br i1 %678, label %679, label %764

679:                                              ; preds = %675
  %680 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %681 = load i8, ptr %680, align 8, !tbaa !5
  %682 = icmp eq i8 %681, -110
  br i1 %682, label %686, label %683

683:                                              ; preds = %679
  %684 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %685 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %684, ptr noundef nonnull @.str.52) #9
  br label %686

686:                                              ; preds = %683, %679
  %687 = getelementptr inbounds %struct.symbol_type, ptr %14, i64 0, i32 3
  %688 = load ptr, ptr %687, align 8, !tbaa !5
  %689 = getelementptr inbounds %struct.symbol_type, ptr %688, i64 0, i32 10
  %690 = load ptr, ptr %689, align 8, !tbaa !5
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %695

692:                                              ; preds = %686
  %693 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %694 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %693, ptr noundef nonnull @.str.53) #9
  br label %695

695:                                              ; preds = %692, %686
  %696 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %697 = zext i8 %696 to i32
  store i32 %697, ptr @zz_size, align 4, !tbaa !10
  %698 = zext i8 %696 to i64
  %699 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !8
  %701 = icmp eq ptr %700, null
  br i1 %701, label %702, label %705

702:                                              ; preds = %695
  %703 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %704 = call ptr @GetMemory(i32 noundef %697, ptr noundef %703) #9
  store ptr %704, ptr @zz_hold, align 8, !tbaa !8
  br label %707

705:                                              ; preds = %695
  store ptr %700, ptr @zz_hold, align 8, !tbaa !8
  %706 = load ptr, ptr %700, align 8, !tbaa !5
  store ptr %706, ptr %699, align 8, !tbaa !8
  br label %707

707:                                              ; preds = %702, %705
  %708 = phi ptr [ %704, %702 ], [ %700, %705 ]
  %709 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 1
  store i8 2, ptr %709, align 8, !tbaa !5
  %710 = getelementptr inbounds [2 x %struct.LIST], ptr %708, i64 0, i64 1, i32 1
  store ptr %708, ptr %710, align 8, !tbaa !5
  %711 = getelementptr inbounds [2 x %struct.LIST], ptr %708, i64 0, i64 1
  store ptr %708, ptr %711, align 8, !tbaa !5
  %712 = getelementptr inbounds %struct.LIST, ptr %708, i64 0, i32 1
  store ptr %708, ptr %712, align 8, !tbaa !5
  store ptr %708, ptr %708, align 8, !tbaa !5
  %713 = getelementptr inbounds %struct.word_type, ptr %619, i64 0, i32 1, i32 0, i32 2
  %714 = load i16, ptr %713, align 2, !tbaa !5
  %715 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 1, i32 0, i32 2
  store i16 %714, ptr %715, align 2, !tbaa !5
  %716 = getelementptr inbounds %struct.word_type, ptr %619, i64 0, i32 1, i32 0, i32 3
  %717 = load i32, ptr %716, align 4
  %718 = and i32 %717, 1048575
  %719 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 1, i32 0, i32 3
  %720 = load i32, ptr %719, align 4
  %721 = and i32 %720, -1048576
  %722 = or disjoint i32 %721, %718
  store i32 %722, ptr %719, align 4
  %723 = load i32, ptr %716, align 4
  %724 = and i32 %723, -1048576
  %725 = or disjoint i32 %724, %718
  store i32 %725, ptr %719, align 4
  %726 = load ptr, ptr %687, align 8, !tbaa !5
  %727 = getelementptr inbounds %struct.symbol_type, ptr %726, i64 0, i32 10
  %728 = load ptr, ptr %727, align 8, !tbaa !5
  %729 = getelementptr inbounds %struct.closure_type, ptr %708, i64 0, i32 5
  store ptr %728, ptr %729, align 8, !tbaa !5
  call void @FilterSetFileNames(ptr noundef nonnull %619) #9
  %730 = call ptr @Manifest(ptr noundef nonnull %708, ptr noundef %462, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %731 = call ptr @ReplaceWithTidy(ptr noundef %730, i32 noundef 1)
  %732 = getelementptr inbounds %struct.word_type, ptr %731, i64 0, i32 1
  %733 = load i8, ptr %732, align 8, !tbaa !5
  %734 = add i8 %733, -11
  %735 = icmp ult i8 %734, 2
  br i1 %735, label %740, label %736

736:                                              ; preds = %707
  %737 = load ptr, ptr %687, align 8, !tbaa !5
  %738 = call ptr @SymName(ptr noundef %737) #9
  %739 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 19, ptr noundef nonnull @.str.54, i32 noundef 1, ptr noundef nonnull %732, ptr noundef %738) #9
  br label %740

740:                                              ; preds = %707, %736
  %741 = getelementptr inbounds %struct.word_type, ptr %731, i64 0, i32 4
  %742 = load ptr, ptr %12, align 8, !tbaa !8
  %743 = call ptr @FilterExecute(ptr noundef nonnull %619, ptr noundef nonnull %741, ptr noundef %742) #9
  %744 = call i32 @DisposeObject(ptr noundef nonnull %731) #9
  %745 = getelementptr inbounds [2 x %struct.LIST], ptr %619, i64 0, i64 1, i32 1
  %746 = load ptr, ptr %745, align 8, !tbaa !5
  %747 = icmp eq ptr %746, %619
  br i1 %747, label %748, label %749

748:                                              ; preds = %740
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %743, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %761

749:                                              ; preds = %740
  %750 = getelementptr inbounds [2 x %struct.LIST], ptr %619, i64 0, i64 1
  %751 = load ptr, ptr %750, align 8, !tbaa !5
  %752 = getelementptr inbounds [2 x %struct.LIST], ptr %746, i64 0, i64 1
  store ptr %751, ptr %752, align 8, !tbaa !5
  %753 = getelementptr inbounds [2 x %struct.LIST], ptr %751, i64 0, i64 1, i32 1
  store ptr %746, ptr %753, align 8, !tbaa !5
  store ptr %619, ptr %745, align 8, !tbaa !5
  store ptr %619, ptr %750, align 8, !tbaa !5
  store ptr %746, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %743, ptr @zz_res, align 8, !tbaa !8
  store ptr %746, ptr @zz_hold, align 8, !tbaa !8
  %754 = icmp eq ptr %743, null
  br i1 %754, label %761, label %755

755:                                              ; preds = %749
  %756 = load ptr, ptr %752, align 8, !tbaa !5
  store ptr %756, ptr @zz_tmp, align 8, !tbaa !8
  %757 = getelementptr inbounds [2 x %struct.LIST], ptr %743, i64 0, i64 1
  %758 = load ptr, ptr %757, align 8, !tbaa !5
  store ptr %758, ptr %752, align 8, !tbaa !5
  %759 = getelementptr inbounds [2 x %struct.LIST], ptr %758, i64 0, i64 1, i32 1
  store ptr %746, ptr %759, align 8, !tbaa !5
  store ptr %756, ptr %757, align 8, !tbaa !5
  %760 = getelementptr inbounds [2 x %struct.LIST], ptr %756, i64 0, i64 1, i32 1
  store ptr %743, ptr %760, align 8, !tbaa !5
  br label %761

761:                                              ; preds = %748, %749, %755
  %762 = call i32 @DisposeObject(ptr noundef nonnull %619) #9
  %763 = load ptr, ptr %12, align 8, !tbaa !8
  br label %764

764:                                              ; preds = %761, %675
  %765 = phi ptr [ %763, %761 ], [ %664, %675 ]
  %766 = phi ptr [ %743, %761 ], [ %619, %675 ]
  %767 = call ptr @Manifest(ptr noundef %766, ptr noundef %765, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %9, i32 noundef %10)
  %768 = call i32 @DisposeObject(ptr noundef nonnull %632) #9
  br label %797

769:                                              ; preds = %610, %615
  tail call void @AttachEnv(ptr noundef %462, ptr noundef %0) #9
  %770 = load ptr, ptr %3, align 8, !tbaa !8
  %771 = icmp eq ptr %770, null
  br i1 %771, label %772, label %776

772:                                              ; preds = %769
  %773 = load ptr, ptr %4, align 8, !tbaa !8
  %774 = icmp eq ptr %773, null
  %775 = select i1 %774, i16 0, i16 4
  br label %776

776:                                              ; preds = %772, %769
  %777 = phi i16 [ 4, %769 ], [ %775, %772 ]
  %778 = getelementptr inbounds i8, ptr %0, i64 42
  %779 = load i16, ptr %778, align 2
  %780 = and i16 %779, -5
  %781 = or disjoint i16 %780, %777
  store i16 %781, ptr %778, align 2
  %782 = getelementptr inbounds ptr, ptr %3, i64 1
  %783 = load ptr, ptr %782, align 8, !tbaa !8
  %784 = icmp eq ptr %783, null
  br i1 %784, label %785, label %795

785:                                              ; preds = %776
  %786 = load ptr, ptr %3, align 8, !tbaa !8
  %787 = icmp eq ptr %786, null
  br i1 %787, label %788, label %795

788:                                              ; preds = %785
  %789 = getelementptr inbounds ptr, ptr %4, i64 1
  %790 = load ptr, ptr %789, align 8, !tbaa !8
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %795

792:                                              ; preds = %788
  %793 = load ptr, ptr %4, align 8, !tbaa !8
  %794 = icmp eq ptr %793, null
  br i1 %794, label %797, label %795

795:                                              ; preds = %792, %788, %785, %776
  %796 = tail call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %797

797:                                              ; preds = %594, %597, %764, %795, %792
  %798 = phi ptr [ %767, %764 ], [ %796, %795 ], [ %0, %792 ], [ %598, %597 ], [ %483, %594 ]
  %799 = icmp eq ptr %463, null
  br i1 %799, label %802, label %800

800:                                              ; preds = %797
  %801 = call i32 @DisposeObject(ptr noundef nonnull %463) #9
  br label %802

802:                                              ; preds = %797, %800, %270
  %803 = phi ptr [ %272, %270 ], [ %798, %800 ], [ %798, %797 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  ret ptr %803
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @insert_split(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i8 %5, 9
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.55) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 9), align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  store i32 %12, ptr @zz_size, align 4, !tbaa !10
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr @GetMemory(i32 noundef %12, ptr noundef %18) #9
  br label %22

20:                                               ; preds = %10
  store ptr %15, ptr @zz_hold, align 8, !tbaa !8
  %21 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %21, ptr %14, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %19, %17 ], [ %15, %20 ]
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  store i8 9, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !5
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1
  store ptr %23, ptr %26, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !5
  store ptr %23, ptr %23, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !5
  %30 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1, i32 0, i32 2
  store i16 %29, ptr %30, align 2, !tbaa !5
  %31 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1048575
  %34 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -1048576
  %37 = or disjoint i32 %36, %33
  store i32 %37, ptr %34, align 4
  %38 = load i32, ptr %31, align 4
  %39 = and i32 %38, -1048576
  %40 = or disjoint i32 %39, %33
  store i32 %40, ptr %34, align 4
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %23, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %54

46:                                               ; preds = %22
  %47 = load ptr, ptr %41, align 8, !tbaa !5
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  store ptr %47, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1, i32 1
  store ptr %43, ptr %49, align 8, !tbaa !5
  store ptr %0, ptr %42, align 8, !tbaa !5
  store ptr %0, ptr %41, align 8, !tbaa !5
  store ptr %43, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %23, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %50 = load ptr, ptr %48, align 8, !tbaa !5
  store ptr %50, ptr @zz_tmp, align 8, !tbaa !8
  %51 = load ptr, ptr %26, align 8, !tbaa !5
  store ptr %51, ptr %48, align 8, !tbaa !5
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1, i32 1
  store ptr %43, ptr %52, align 8, !tbaa !5
  store ptr %50, ptr %26, align 8, !tbaa !5
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1, i32 1
  store ptr %23, ptr %53, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %45, %46
  br label %55

55:                                               ; preds = %54, %305
  %56 = phi i32 [ 15, %305 ], [ 16, %54 ]
  %57 = phi i1 [ false, %305 ], [ true, %54 ]
  %58 = phi i64 [ 1, %305 ], [ 0, %54 ]
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = getelementptr inbounds ptr, ptr %2, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %267, label %66

66:                                               ; preds = %62, %55
  %67 = zext nneg i32 %56 to i64
  %68 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !5
  %70 = zext i8 %69 to i32
  store i32 %70, ptr @zz_size, align 4, !tbaa !10
  %71 = zext i8 %69 to i64
  %72 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %77 = tail call ptr @GetMemory(i32 noundef %70, ptr noundef %76) #9
  store ptr %77, ptr @zz_hold, align 8, !tbaa !8
  br label %80

78:                                               ; preds = %66
  store ptr %73, ptr @zz_hold, align 8, !tbaa !8
  %79 = load ptr, ptr %73, align 8, !tbaa !5
  store ptr %79, ptr %72, align 8, !tbaa !8
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi ptr [ %77, %75 ], [ %73, %78 ]
  %82 = trunc i32 %56 to i8
  %83 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 1
  store i8 %82, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  store ptr %81, ptr %85, align 8, !tbaa !5
  store ptr %81, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.LIST, ptr %81, i64 0, i32 1
  store ptr %81, ptr %86, align 8, !tbaa !5
  store ptr %81, ptr %81, align 8, !tbaa !5
  %87 = getelementptr inbounds i8, ptr %81, i64 41
  store i8 0, ptr %87, align 1, !tbaa !5
  %88 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 3
  %89 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 3, i32 1
  %90 = xor i64 %58, 1
  %91 = getelementptr inbounds [2 x i32], ptr %89, i64 0, i64 %90
  store i32 0, ptr %91, align 4, !tbaa !5
  %92 = getelementptr inbounds [2 x i32], ptr %88, i64 0, i64 %90
  store i32 0, ptr %92, align 4, !tbaa !5
  %93 = load i16, ptr %28, align 2, !tbaa !5
  %94 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 1, i32 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !5
  %95 = load i32, ptr %31, align 4
  %96 = and i32 %95, 1048575
  %97 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 1, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -1048576
  %100 = or disjoint i32 %99, %96
  store i32 %100, ptr %97, align 4
  %101 = load i32, ptr %31, align 4
  %102 = and i32 %101, -1048576
  %103 = or disjoint i32 %102, %96
  store i32 %103, ptr %97, align 4
  %104 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  store i32 %105, ptr @zz_size, align 4, !tbaa !10
  %106 = zext i8 %104 to i64
  %107 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %112 = tail call ptr @GetMemory(i32 noundef %105, ptr noundef %111) #9
  br label %115

113:                                              ; preds = %80
  store ptr %108, ptr @zz_hold, align 8, !tbaa !8
  %114 = load ptr, ptr %108, align 8, !tbaa !5
  store ptr %114, ptr %107, align 8, !tbaa !8
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi ptr [ %112, %110 ], [ %108, %113 ]
  %117 = getelementptr inbounds %struct.word_type, ptr %116, i64 0, i32 1
  store i8 0, ptr %117, align 8, !tbaa !5
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %116, i64 0, i64 1, i32 1
  store ptr %116, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %116, i64 0, i64 1
  store ptr %116, ptr %119, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.LIST, ptr %116, i64 0, i32 1
  store ptr %116, ptr %120, align 8, !tbaa !5
  store ptr %116, ptr %116, align 8, !tbaa !5
  store ptr %116, ptr @xx_link, align 8, !tbaa !8
  store ptr %116, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %121 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %121, ptr @zz_tmp, align 8, !tbaa !8
  %122 = load ptr, ptr %116, align 8, !tbaa !5
  store ptr %122, ptr %23, align 8, !tbaa !5
  %123 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %124 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.LIST, ptr %125, i64 0, i32 1
  store ptr %123, ptr %126, align 8, !tbaa !5
  %127 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %127, ptr %124, align 8, !tbaa !5
  %128 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %129 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  store ptr %128, ptr %129, align 8, !tbaa !5
  %130 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %130, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %115
  %133 = load ptr, ptr %84, align 8, !tbaa !5
  store ptr %133, ptr @zz_tmp, align 8, !tbaa !8
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %130, i64 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  store ptr %135, ptr %84, align 8, !tbaa !5
  %136 = getelementptr inbounds [2 x %struct.LIST], ptr %135, i64 0, i64 1, i32 1
  store ptr %81, ptr %136, align 8, !tbaa !5
  store ptr %133, ptr %134, align 8, !tbaa !5
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %133, i64 0, i64 1, i32 1
  store ptr %130, ptr %137, align 8, !tbaa !5
  br label %138

138:                                              ; preds = %115, %132
  %139 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %140 = zext i8 %139 to i32
  store i32 %140, ptr @zz_size, align 4, !tbaa !10
  %141 = zext i8 %139 to i64
  %142 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %147 = tail call ptr @GetMemory(i32 noundef %140, ptr noundef %146) #9
  br label %150

148:                                              ; preds = %138
  store ptr %143, ptr @zz_hold, align 8, !tbaa !8
  %149 = load ptr, ptr %143, align 8, !tbaa !5
  store ptr %149, ptr %142, align 8, !tbaa !8
  br label %150

150:                                              ; preds = %145, %148
  %151 = phi ptr [ %147, %145 ], [ %143, %148 ]
  %152 = getelementptr inbounds %struct.word_type, ptr %151, i64 0, i32 1
  store i8 0, ptr %152, align 8, !tbaa !5
  %153 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1, i32 1
  store ptr %151, ptr %153, align 8, !tbaa !5
  %154 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1
  store ptr %151, ptr %154, align 8, !tbaa !5
  %155 = getelementptr inbounds %struct.LIST, ptr %151, i64 0, i32 1
  store ptr %151, ptr %155, align 8, !tbaa !5
  store ptr %151, ptr %151, align 8, !tbaa !5
  store ptr %151, ptr @xx_link, align 8, !tbaa !8
  store ptr %151, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %156 = load ptr, ptr %81, align 8, !tbaa !5
  store ptr %156, ptr @zz_tmp, align 8, !tbaa !8
  %157 = load ptr, ptr %151, align 8, !tbaa !5
  store ptr %157, ptr %81, align 8, !tbaa !5
  %158 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %159 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %160 = load ptr, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds %struct.LIST, ptr %160, i64 0, i32 1
  store ptr %158, ptr %161, align 8, !tbaa !5
  %162 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %162, ptr %159, align 8, !tbaa !5
  %163 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %164 = getelementptr inbounds %struct.LIST, ptr %162, i64 0, i32 1
  store ptr %163, ptr %164, align 8, !tbaa !5
  %165 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %165, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %150
  %168 = load ptr, ptr %41, align 8, !tbaa !5
  store ptr %168, ptr @zz_tmp, align 8, !tbaa !8
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  store ptr %170, ptr %41, align 8, !tbaa !5
  %171 = getelementptr inbounds [2 x %struct.LIST], ptr %170, i64 0, i64 1, i32 1
  store ptr %0, ptr %171, align 8, !tbaa !5
  store ptr %168, ptr %169, align 8, !tbaa !5
  %172 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1, i32 1
  store ptr %165, ptr %172, align 8, !tbaa !5
  br label %173

173:                                              ; preds = %150, %167
  %174 = load ptr, ptr %59, align 8, !tbaa !8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %220, label %176

176:                                              ; preds = %173
  %177 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %178 = zext i8 %177 to i32
  store i32 %178, ptr @zz_size, align 4, !tbaa !10
  %179 = zext i8 %177 to i64
  %180 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %185 = tail call ptr @GetMemory(i32 noundef %178, ptr noundef %184) #9
  store ptr %185, ptr @zz_hold, align 8, !tbaa !8
  br label %188

186:                                              ; preds = %176
  store ptr %181, ptr @zz_hold, align 8, !tbaa !8
  %187 = load ptr, ptr %181, align 8, !tbaa !5
  store ptr %187, ptr %180, align 8, !tbaa !8
  br label %188

188:                                              ; preds = %183, %186
  %189 = phi ptr [ %185, %183 ], [ %181, %186 ]
  %190 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1
  store i8 0, ptr %190, align 8, !tbaa !5
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !5
  %192 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  store ptr %189, ptr %192, align 8, !tbaa !5
  %193 = getelementptr inbounds %struct.LIST, ptr %189, i64 0, i32 1
  store ptr %189, ptr %193, align 8, !tbaa !5
  store ptr %189, ptr %189, align 8, !tbaa !5
  store ptr %189, ptr @xx_link, align 8, !tbaa !8
  store ptr %189, ptr @zz_res, align 8, !tbaa !8
  %194 = load ptr, ptr %59, align 8, !tbaa !8
  store ptr %194, ptr @zz_hold, align 8, !tbaa !8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  store ptr %189, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  br label %212

197:                                              ; preds = %188
  %198 = load ptr, ptr %194, align 8, !tbaa !5
  store ptr %198, ptr @zz_tmp, align 8, !tbaa !8
  %199 = load ptr, ptr %189, align 8, !tbaa !5
  store ptr %199, ptr %194, align 8, !tbaa !5
  %200 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %201 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  store ptr %200, ptr %203, align 8, !tbaa !5
  %204 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %204, ptr %201, align 8, !tbaa !5
  %205 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %206 = getelementptr inbounds %struct.LIST, ptr %204, i64 0, i32 1
  store ptr %205, ptr %206, align 8, !tbaa !5
  %207 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %207, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %220, label %209

209:                                              ; preds = %197
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  br label %212

212:                                              ; preds = %209, %196
  %213 = phi ptr [ %189, %196 ], [ %211, %209 ]
  %214 = phi ptr [ %189, %196 ], [ %207, %209 ]
  %215 = load ptr, ptr %84, align 8, !tbaa !5
  store ptr %215, ptr @zz_tmp, align 8, !tbaa !8
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %214, i64 0, i64 1
  store ptr %213, ptr %84, align 8, !tbaa !5
  %217 = load ptr, ptr %216, align 8, !tbaa !5
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %81, ptr %218, align 8, !tbaa !5
  store ptr %215, ptr %216, align 8, !tbaa !5
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %214, ptr %219, align 8, !tbaa !5
  br label %220

220:                                              ; preds = %197, %212, %173
  %221 = getelementptr inbounds ptr, ptr %2, i64 %58
  %222 = load ptr, ptr %221, align 8, !tbaa !8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %305, label %224

224:                                              ; preds = %220
  %225 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %226 = zext i8 %225 to i32
  store i32 %226, ptr @zz_size, align 4, !tbaa !10
  %227 = zext i8 %225 to i64
  %228 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %233 = tail call ptr @GetMemory(i32 noundef %226, ptr noundef %232) #9
  store ptr %233, ptr @zz_hold, align 8, !tbaa !8
  br label %236

234:                                              ; preds = %224
  store ptr %229, ptr @zz_hold, align 8, !tbaa !8
  %235 = load ptr, ptr %229, align 8, !tbaa !5
  store ptr %235, ptr %228, align 8, !tbaa !8
  br label %236

236:                                              ; preds = %231, %234
  %237 = phi ptr [ %233, %231 ], [ %229, %234 ]
  %238 = getelementptr inbounds %struct.word_type, ptr %237, i64 0, i32 1
  store i8 0, ptr %238, align 8, !tbaa !5
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %237, ptr %239, align 8, !tbaa !5
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1
  store ptr %237, ptr %240, align 8, !tbaa !5
  %241 = getelementptr inbounds %struct.LIST, ptr %237, i64 0, i32 1
  store ptr %237, ptr %241, align 8, !tbaa !5
  store ptr %237, ptr %237, align 8, !tbaa !5
  store ptr %237, ptr @xx_link, align 8, !tbaa !8
  store ptr %237, ptr @zz_res, align 8, !tbaa !8
  %242 = load ptr, ptr %221, align 8, !tbaa !8
  store ptr %242, ptr @zz_hold, align 8, !tbaa !8
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store ptr %237, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  br label %260

245:                                              ; preds = %236
  %246 = load ptr, ptr %242, align 8, !tbaa !5
  store ptr %246, ptr @zz_tmp, align 8, !tbaa !8
  %247 = load ptr, ptr %237, align 8, !tbaa !5
  store ptr %247, ptr %242, align 8, !tbaa !5
  %248 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %249 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %250 = load ptr, ptr %249, align 8, !tbaa !5
  %251 = getelementptr inbounds %struct.LIST, ptr %250, i64 0, i32 1
  store ptr %248, ptr %251, align 8, !tbaa !5
  %252 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %252, ptr %249, align 8, !tbaa !5
  %253 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %254 = getelementptr inbounds %struct.LIST, ptr %252, i64 0, i32 1
  store ptr %253, ptr %254, align 8, !tbaa !5
  %255 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %255, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %305, label %257

257:                                              ; preds = %245
  %258 = getelementptr inbounds [2 x %struct.LIST], ptr %255, i64 0, i64 1
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  br label %260

260:                                              ; preds = %257, %244
  %261 = phi ptr [ %237, %244 ], [ %259, %257 ]
  %262 = phi ptr [ %237, %244 ], [ %255, %257 ]
  %263 = load ptr, ptr %84, align 8, !tbaa !5
  store ptr %263, ptr @zz_tmp, align 8, !tbaa !8
  %264 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1
  store ptr %261, ptr %84, align 8, !tbaa !5
  %265 = load ptr, ptr %264, align 8, !tbaa !5
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %265, i64 0, i64 1, i32 1
  store ptr %81, ptr %266, align 8, !tbaa !5
  store ptr %263, ptr %264, align 8, !tbaa !5
  br label %301

267:                                              ; preds = %62
  %268 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  store i32 %269, ptr @zz_size, align 4, !tbaa !10
  %270 = zext i8 %268 to i64
  %271 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %267
  %275 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %276 = tail call ptr @GetMemory(i32 noundef %269, ptr noundef %275) #9
  br label %279

277:                                              ; preds = %267
  store ptr %272, ptr @zz_hold, align 8, !tbaa !8
  %278 = load ptr, ptr %272, align 8, !tbaa !5
  store ptr %278, ptr %271, align 8, !tbaa !8
  br label %279

279:                                              ; preds = %274, %277
  %280 = phi ptr [ %276, %274 ], [ %272, %277 ]
  %281 = getelementptr inbounds %struct.word_type, ptr %280, i64 0, i32 1
  store i8 0, ptr %281, align 8, !tbaa !5
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %280, i64 0, i64 1, i32 1
  store ptr %280, ptr %282, align 8, !tbaa !5
  %283 = getelementptr inbounds [2 x %struct.LIST], ptr %280, i64 0, i64 1
  store ptr %280, ptr %283, align 8, !tbaa !5
  %284 = getelementptr inbounds %struct.LIST, ptr %280, i64 0, i32 1
  store ptr %280, ptr %284, align 8, !tbaa !5
  store ptr %280, ptr %280, align 8, !tbaa !5
  store ptr %280, ptr @xx_link, align 8, !tbaa !8
  store ptr %280, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %285 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %285, ptr @zz_tmp, align 8, !tbaa !8
  %286 = load ptr, ptr %280, align 8, !tbaa !5
  store ptr %286, ptr %23, align 8, !tbaa !5
  %287 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %288 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %289 = load ptr, ptr %288, align 8, !tbaa !5
  %290 = getelementptr inbounds %struct.LIST, ptr %289, i64 0, i32 1
  store ptr %287, ptr %290, align 8, !tbaa !5
  %291 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %291, ptr %288, align 8, !tbaa !5
  %292 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %293 = getelementptr inbounds %struct.LIST, ptr %291, i64 0, i32 1
  store ptr %292, ptr %293, align 8, !tbaa !5
  %294 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %294, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %305, label %296

296:                                              ; preds = %279
  %297 = load ptr, ptr %41, align 8, !tbaa !5
  store ptr %297, ptr @zz_tmp, align 8, !tbaa !8
  %298 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  store ptr %299, ptr %41, align 8, !tbaa !5
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1, i32 1
  store ptr %0, ptr %300, align 8, !tbaa !5
  store ptr %297, ptr %298, align 8, !tbaa !5
  br label %301

301:                                              ; preds = %296, %260
  %302 = phi ptr [ %263, %260 ], [ %297, %296 ]
  %303 = phi ptr [ %262, %260 ], [ %294, %296 ]
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  store ptr %303, ptr %304, align 8, !tbaa !5
  br label %305

305:                                              ; preds = %301, %279, %245, %220
  br i1 %57, label %55, label %306

306:                                              ; preds = %305
  ret ptr %23
}

declare ptr @CrossExpand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ClosureExpand(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MapSmallCaps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetGap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LanguageWordEndsSentence(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc float @GetScaleFactor(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = add i8 %4, -11
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 3, ptr noundef nonnull @.str.64, i32 noundef 2, ptr noundef nonnull %3) #9
  br label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %10, ptr noundef nonnull @.str.65, ptr noundef nonnull %2) #9
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %10) #9
  br label %25

15:                                               ; preds = %9
  %16 = load float, ptr %2, align 4, !tbaa !23
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-02
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 5, ptr noundef nonnull @.str.67, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %10) #9
  br label %25

21:                                               ; preds = %15
  %22 = fcmp ogt float %16, 1.000000e+02
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 6, ptr noundef nonnull @.str.68, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %10) #9
  br label %25

25:                                               ; preds = %13, %21, %23, %19, %7
  %26 = phi float [ 1.000000e+00, %13 ], [ %16, %21 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %19 ], [ 1.000000e+00, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret float %26
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ManifestCase(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr noundef %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %12, %10 ], [ %16, %13 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @Manifest(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %9)
  %22 = tail call ptr @ReplaceWithTidy(ptr noundef %21, i32 noundef 0)
  %23 = load ptr, ptr %0, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %23, %20 ], [ %27, %24 ]
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !5
  switch i8 %29, label %109 [
    i8 0, label %24
    i8 55, label %30
  ]

30:                                               ; preds = %24
  %31 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %32 = zext i8 %31 to i32
  store i32 %32, ptr @zz_size, align 4, !tbaa !10
  %33 = zext i8 %31 to i64
  %34 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %39 = tail call ptr @GetMemory(i32 noundef %32, ptr noundef %38) #9
  br label %42

40:                                               ; preds = %30
  store ptr %35, ptr @zz_hold, align 8, !tbaa !8
  %41 = load ptr, ptr %35, align 8, !tbaa !5
  store ptr %41, ptr %34, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi ptr [ %39, %37 ], [ %35, %40 ]
  %44 = getelementptr inbounds %struct.word_type, ptr %43, i64 0, i32 1
  store i8 17, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !5
  store ptr %43, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.LIST, ptr %43, i64 0, i32 1
  store ptr %43, ptr %47, align 8, !tbaa !5
  store ptr %43, ptr %43, align 8, !tbaa !5
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  store ptr %49, ptr @xx_link, align 8, !tbaa !8
  store ptr %49, ptr @zz_hold, align 8, !tbaa !8
  %50 = getelementptr inbounds %struct.LIST, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store ptr %49, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  br label %63

54:                                               ; preds = %42
  store ptr %51, ptr @zz_res, align 8, !tbaa !8
  %55 = load ptr, ptr %49, align 8, !tbaa !5
  store ptr %55, ptr %51, align 8, !tbaa !5
  %56 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %57 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.LIST, ptr %58, i64 0, i32 1
  store ptr %56, ptr %59, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %57, ptr %60, align 8, !tbaa !5
  store ptr %57, ptr %57, align 8, !tbaa !5
  %61 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %61, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %53, %54
  %64 = phi ptr [ %49, %53 ], [ %61, %54 ]
  %65 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %65, ptr @zz_tmp, align 8, !tbaa !8
  %66 = load ptr, ptr %64, align 8, !tbaa !5
  store ptr %66, ptr %43, align 8, !tbaa !5
  %67 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %68 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.LIST, ptr %69, i64 0, i32 1
  store ptr %67, ptr %70, align 8, !tbaa !5
  %71 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %71, ptr %68, align 8, !tbaa !5
  %72 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %73 = getelementptr inbounds %struct.LIST, ptr %71, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %54, %63
  %75 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %76 = zext i8 %75 to i32
  store i32 %76, ptr @zz_size, align 4, !tbaa !10
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %83 = tail call ptr @GetMemory(i32 noundef %76, ptr noundef %82) #9
  br label %86

84:                                               ; preds = %74
  store ptr %79, ptr @zz_hold, align 8, !tbaa !8
  %85 = load ptr, ptr %79, align 8, !tbaa !5
  store ptr %85, ptr %78, align 8, !tbaa !8
  br label %86

86:                                               ; preds = %81, %84
  %87 = phi ptr [ %83, %81 ], [ %79, %84 ]
  %88 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 1
  store i8 0, ptr %88, align 8, !tbaa !5
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  store ptr %87, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1
  store ptr %87, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  store ptr %87, ptr %91, align 8, !tbaa !5
  store ptr %87, ptr %87, align 8, !tbaa !5
  store ptr %87, ptr @xx_link, align 8, !tbaa !8
  store ptr %87, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %92 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %92, ptr @zz_tmp, align 8, !tbaa !8
  %93 = load ptr, ptr %87, align 8, !tbaa !5
  store ptr %93, ptr %0, align 8, !tbaa !5
  %94 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %95 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.LIST, ptr %96, i64 0, i32 1
  store ptr %94, ptr %97, align 8, !tbaa !5
  %98 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %98, ptr %95, align 8, !tbaa !5
  %99 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %100 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !5
  %101 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %101, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %86
  %104 = load ptr, ptr %45, align 8, !tbaa !5
  store ptr %104, ptr @zz_tmp, align 8, !tbaa !8
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %101, i64 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  store ptr %106, ptr %45, align 8, !tbaa !5
  %107 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %43, ptr %107, align 8, !tbaa !5
  store ptr %104, ptr %105, align 8, !tbaa !5
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %104, i64 0, i64 1, i32 1
  store ptr %101, ptr %108, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %24, %103, %86
  %110 = phi ptr [ %43, %86 ], [ %43, %103 ], [ %27, %24 ]
  %111 = getelementptr inbounds %struct.word_type, ptr %110, i64 0, i32 1
  %112 = load i8, ptr %111, align 8, !tbaa !5
  %113 = icmp eq i8 %112, 17
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.LIST, ptr %110, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = icmp eq ptr %116, %110
  br i1 %117, label %280, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %120 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  br label %144

121:                                              ; preds = %109
  %122 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 7, ptr noundef nonnull @.str.69, i32 noundef 2, ptr noundef nonnull %111, ptr noundef nonnull @.str.70) #9
  %123 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %124 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %123) #9
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, %0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %124, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %141

129:                                              ; preds = %121
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1
  store ptr %131, ptr %132, align 8, !tbaa !5
  %133 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1, i32 1
  store ptr %126, ptr %133, align 8, !tbaa !5
  store ptr %0, ptr %125, align 8, !tbaa !5
  store ptr %0, ptr %130, align 8, !tbaa !5
  store ptr %126, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %124, ptr @zz_res, align 8, !tbaa !8
  store ptr %126, ptr @zz_hold, align 8, !tbaa !8
  %134 = icmp eq ptr %124, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %132, align 8, !tbaa !5
  store ptr %136, ptr @zz_tmp, align 8, !tbaa !8
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  store ptr %138, ptr %132, align 8, !tbaa !5
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1, i32 1
  store ptr %126, ptr %139, align 8, !tbaa !5
  store ptr %136, ptr %137, align 8, !tbaa !5
  %140 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1, i32 1
  store ptr %124, ptr %140, align 8, !tbaa !5
  br label %141

141:                                              ; preds = %128, %129, %135
  %142 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %143 = tail call ptr @Manifest(ptr noundef %124, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %365

144:                                              ; preds = %118, %265
  %145 = phi ptr [ %116, %118 ], [ %269, %265 ]
  %146 = phi ptr [ undef, %118 ], [ %267, %265 ]
  %147 = phi ptr [ null, %118 ], [ %266, %265 ]
  br label %148

148:                                              ; preds = %144, %148
  %149 = phi ptr [ %151, %148 ], [ %145, %144 ]
  %150 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.word_type, ptr %151, i64 0, i32 1
  %153 = load i8, ptr %152, align 8, !tbaa !5
  switch i8 %153, label %154 [
    i8 0, label %148
    i8 1, label %265
    i8 55, label %157
  ]

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.word_type, ptr %151, i64 0, i32 1
  %156 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef 2, ptr noundef nonnull %155, ptr noundef nonnull @.str.22) #9
  br label %271

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.LIST, ptr %151, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !5
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi ptr [ %159, %157 ], [ %163, %160 ]
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.word_type, ptr %163, i64 0, i32 1
  %165 = load i8, ptr %164, align 8, !tbaa !5
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %160, label %167

167:                                              ; preds = %160
  %168 = tail call ptr @Manifest(ptr noundef nonnull %163, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %9)
  %169 = tail call ptr @ReplaceWithTidy(ptr noundef %168, i32 noundef 0)
  %170 = getelementptr inbounds %struct.word_type, ptr %169, i64 0, i32 1
  %171 = load i8, ptr %170, align 8, !tbaa !5
  switch i8 %171, label %263 [
    i8 11, label %176
    i8 12, label %176
    i8 17, label %172
  ]

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.LIST, ptr %169, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = icmp eq ptr %174, %169
  br i1 %175, label %265, label %210

176:                                              ; preds = %167, %167
  %177 = icmp eq ptr %147, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %176
  %179 = load ptr, ptr %151, align 8, !tbaa !5
  br label %180

180:                                              ; preds = %180, %178
  %181 = phi ptr [ %179, %178 ], [ %183, %180 ]
  %182 = getelementptr inbounds [2 x %struct.LIST], ptr %181, i64 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds %struct.word_type, ptr %183, i64 0, i32 1
  %185 = load i8, ptr %184, align 8, !tbaa !5
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %180, label %187

187:                                              ; preds = %180, %176
  %188 = phi ptr [ %147, %176 ], [ %169, %180 ]
  %189 = phi ptr [ %146, %176 ], [ %183, %180 ]
  %190 = load i8, ptr %119, align 8, !tbaa !5
  %191 = add i8 %190, -11
  %192 = icmp ult i8 %191, 2
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.word_type, ptr %169, i64 0, i32 4
  %195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(1) %120) #10
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %187, %193
  %198 = getelementptr inbounds %struct.word_type, ptr %169, i64 0, i32 4
  %199 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %198, ptr noundef nonnull dereferenceable(5) @.str.72) #10
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %265

201:                                              ; preds = %197, %193
  %202 = load ptr, ptr %151, align 8, !tbaa !5
  br label %203

203:                                              ; preds = %203, %201
  %204 = phi ptr [ %202, %201 ], [ %206, %203 ]
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %204, i64 0, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !5
  %207 = getelementptr inbounds %struct.word_type, ptr %206, i64 0, i32 1
  %208 = load i8, ptr %207, align 8, !tbaa !5
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %203, label %305

210:                                              ; preds = %172, %257
  %211 = phi ptr [ %261, %257 ], [ %174, %172 ]
  %212 = phi ptr [ %259, %257 ], [ %146, %172 ]
  %213 = phi ptr [ %258, %257 ], [ %147, %172 ]
  br label %214

214:                                              ; preds = %210, %214
  %215 = phi ptr [ %217, %214 ], [ %211, %210 ]
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !5
  %218 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 1
  %219 = load i8, ptr %218, align 8, !tbaa !5
  switch i8 %219, label %220 [
    i8 0, label %214
    i8 1, label %257
    i8 11, label %223
    i8 12, label %223
  ]

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 1
  %222 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 9, ptr noundef nonnull @.str.73, i32 noundef 2, ptr noundef nonnull %221, ptr noundef nonnull @.str.22) #9
  br label %265

223:                                              ; preds = %214, %214
  %224 = icmp eq ptr %213, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %223
  %226 = load ptr, ptr %151, align 8, !tbaa !5
  br label %227

227:                                              ; preds = %227, %225
  %228 = phi ptr [ %226, %225 ], [ %230, %227 ]
  %229 = getelementptr inbounds [2 x %struct.LIST], ptr %228, i64 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.word_type, ptr %230, i64 0, i32 1
  %232 = load i8, ptr %231, align 8, !tbaa !5
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %227, label %234

234:                                              ; preds = %227, %223
  %235 = phi ptr [ %213, %223 ], [ %217, %227 ]
  %236 = phi ptr [ %212, %223 ], [ %230, %227 ]
  %237 = load i8, ptr %119, align 8, !tbaa !5
  %238 = add i8 %237, -11
  %239 = icmp ult i8 %238, 2
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 4
  %242 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %241, ptr noundef nonnull dereferenceable(1) %120) #10
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %234, %240
  %245 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 4
  %246 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(5) @.str.72) #10
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %244, %240
  %249 = load ptr, ptr %151, align 8, !tbaa !5
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi ptr [ %249, %248 ], [ %253, %250 ]
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.word_type, ptr %253, i64 0, i32 1
  %255 = load i8, ptr %254, align 8, !tbaa !5
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %250, label %305

257:                                              ; preds = %214, %244
  %258 = phi ptr [ %235, %244 ], [ %213, %214 ]
  %259 = phi ptr [ %236, %244 ], [ %212, %214 ]
  %260 = getelementptr inbounds %struct.LIST, ptr %211, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = icmp eq ptr %261, %169
  br i1 %262, label %265, label %210

263:                                              ; preds = %167
  %264 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 10, ptr noundef nonnull @.str.73, i32 noundef 2, ptr noundef nonnull %170, ptr noundef nonnull @.str.22) #9
  br label %265

265:                                              ; preds = %148, %257, %172, %197, %220, %263
  %266 = phi ptr [ %188, %197 ], [ %213, %220 ], [ %147, %263 ], [ %147, %172 ], [ %258, %257 ], [ %147, %148 ]
  %267 = phi ptr [ %189, %197 ], [ %212, %220 ], [ %146, %263 ], [ %146, %172 ], [ %259, %257 ], [ %146, %148 ]
  %268 = getelementptr inbounds %struct.LIST, ptr %145, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !5
  %270 = icmp eq ptr %269, %110
  br i1 %270, label %271, label %144

271:                                              ; preds = %265, %154
  %272 = phi ptr [ %147, %154 ], [ %266, %265 ]
  %273 = phi ptr [ %146, %154 ], [ %267, %265 ]
  %274 = icmp eq ptr %272, null
  br i1 %274, label %280, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %277 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  %278 = getelementptr inbounds %struct.word_type, ptr %272, i64 0, i32 4
  %279 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 11, ptr noundef nonnull @.str.74, i32 noundef 2, ptr noundef nonnull %276, ptr noundef nonnull @.str.70, ptr noundef nonnull %277, ptr noundef nonnull %278) #9
  br label %305

280:                                              ; preds = %114, %271
  %281 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %282 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  %283 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 12, ptr noundef nonnull @.str.75, i32 noundef 2, ptr noundef nonnull %281, ptr noundef nonnull @.str.70, ptr noundef nonnull %282) #9
  %284 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %285 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %284) #9
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !5
  %288 = icmp eq ptr %287, %0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %285, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %302

290:                                              ; preds = %280
  %291 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %287, i64 0, i64 1
  store ptr %292, ptr %293, align 8, !tbaa !5
  %294 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1, i32 1
  store ptr %287, ptr %294, align 8, !tbaa !5
  store ptr %0, ptr %286, align 8, !tbaa !5
  store ptr %0, ptr %291, align 8, !tbaa !5
  store ptr %287, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %285, ptr @zz_res, align 8, !tbaa !8
  store ptr %287, ptr @zz_hold, align 8, !tbaa !8
  %295 = icmp eq ptr %285, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load ptr, ptr %293, align 8, !tbaa !5
  store ptr %297, ptr @zz_tmp, align 8, !tbaa !8
  %298 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  store ptr %299, ptr %293, align 8, !tbaa !5
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1, i32 1
  store ptr %287, ptr %300, align 8, !tbaa !5
  store ptr %297, ptr %298, align 8, !tbaa !5
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %297, i64 0, i64 1, i32 1
  store ptr %285, ptr %301, align 8, !tbaa !5
  br label %302

302:                                              ; preds = %289, %290, %296
  %303 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %304 = tail call ptr @Manifest(ptr noundef %285, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %365

305:                                              ; preds = %250, %203, %275
  %306 = phi ptr [ %273, %275 ], [ %206, %203 ], [ %253, %250 ]
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !5
  store ptr %308, ptr @xx_link, align 8, !tbaa !8
  %309 = getelementptr inbounds [2 x %struct.LIST], ptr %308, i64 0, i64 1, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !5
  %311 = icmp eq ptr %310, %308
  br i1 %311, label %317, label %312

312:                                              ; preds = %305
  %313 = getelementptr inbounds [2 x %struct.LIST], ptr %308, i64 0, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !5
  %315 = getelementptr inbounds [2 x %struct.LIST], ptr %310, i64 0, i64 1
  store ptr %314, ptr %315, align 8, !tbaa !5
  %316 = getelementptr inbounds [2 x %struct.LIST], ptr %314, i64 0, i64 1, i32 1
  store ptr %310, ptr %316, align 8, !tbaa !5
  store ptr %308, ptr %309, align 8, !tbaa !5
  store ptr %308, ptr %313, align 8, !tbaa !5
  br label %317

317:                                              ; preds = %305, %312
  store ptr %308, ptr @zz_hold, align 8, !tbaa !8
  %318 = getelementptr inbounds %struct.LIST, ptr %308, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !5
  %320 = icmp eq ptr %319, %308
  br i1 %320, label %329, label %321

321:                                              ; preds = %317
  store ptr %319, ptr @zz_res, align 8, !tbaa !8
  %322 = load ptr, ptr %308, align 8, !tbaa !5
  store ptr %322, ptr %319, align 8, !tbaa !5
  %323 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %324 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  %326 = getelementptr inbounds %struct.LIST, ptr %325, i64 0, i32 1
  store ptr %323, ptr %326, align 8, !tbaa !5
  %327 = getelementptr inbounds %struct.LIST, ptr %324, i64 0, i32 1
  store ptr %324, ptr %327, align 8, !tbaa !5
  store ptr %324, ptr %324, align 8, !tbaa !5
  %328 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %329

329:                                              ; preds = %317, %321
  %330 = phi ptr [ %308, %317 ], [ %328, %321 ]
  store ptr %330, ptr @zz_hold, align 8, !tbaa !8
  %331 = getelementptr inbounds %struct.word_type, ptr %330, i64 0, i32 1
  %332 = load i8, ptr %331, align 8, !tbaa !5
  %333 = add i8 %332, -11
  %334 = icmp ult i8 %333, 2
  %335 = getelementptr inbounds %struct.word_type, ptr %330, i64 0, i32 1, i32 0, i32 1
  %336 = zext i8 %332 to i64
  %337 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %336
  %338 = select i1 %334, ptr %335, ptr %337
  %339 = load i8, ptr %338, align 1, !tbaa !5
  %340 = zext i8 %339 to i32
  store i32 %340, ptr @zz_size, align 4, !tbaa !10
  %341 = zext i8 %339 to i64
  %342 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !8
  store ptr %343, ptr %330, align 8, !tbaa !5
  %344 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %345 = load i32, ptr @zz_size, align 4, !tbaa !10
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %346
  store ptr %344, ptr %347, align 8, !tbaa !8
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !5
  %350 = icmp eq ptr %349, %0
  br i1 %350, label %361, label %351

351:                                              ; preds = %329
  %352 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !5
  %354 = getelementptr inbounds [2 x %struct.LIST], ptr %349, i64 0, i64 1
  store ptr %353, ptr %354, align 8, !tbaa !5
  %355 = getelementptr inbounds [2 x %struct.LIST], ptr %353, i64 0, i64 1, i32 1
  store ptr %349, ptr %355, align 8, !tbaa !5
  store ptr %0, ptr %348, align 8, !tbaa !5
  store ptr %0, ptr %352, align 8, !tbaa !5
  %356 = load ptr, ptr %354, align 8, !tbaa !5
  store ptr %356, ptr @zz_tmp, align 8, !tbaa !8
  %357 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !5
  store ptr %358, ptr %354, align 8, !tbaa !5
  %359 = getelementptr inbounds [2 x %struct.LIST], ptr %358, i64 0, i64 1, i32 1
  store ptr %349, ptr %359, align 8, !tbaa !5
  store ptr %356, ptr %357, align 8, !tbaa !5
  %360 = getelementptr inbounds [2 x %struct.LIST], ptr %356, i64 0, i64 1, i32 1
  store ptr %306, ptr %360, align 8, !tbaa !5
  br label %361

361:                                              ; preds = %329, %351
  %362 = phi ptr [ %349, %351 ], [ null, %329 ]
  store ptr %362, ptr @xx_tmp, align 8
  store ptr %306, ptr @zz_res, align 8
  store ptr %362, ptr @zz_hold, align 8
  %363 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %364 = tail call ptr @Manifest(ptr noundef nonnull %306, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %365

365:                                              ; preds = %361, %302, %141
  %366 = phi ptr [ %143, %141 ], [ %364, %361 ], [ %304, %302 ]
  ret ptr %366
}

declare zeroext i8 @MapCharEncoding(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FontMapping(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @StringQuotedWord(ptr noundef) local_unnamed_addr #2

declare ptr @FontFamilyAndFace(i32 noundef) local_unnamed_addr #2

declare ptr @LanguageString(i32 noundef) local_unnamed_addr #2

declare ptr @FontFamily(i32 noundef) local_unnamed_addr #2

declare ptr @FontFace(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @FontChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SpaceChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @YUnitChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ZUnitChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BreakChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ColourChange(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @LanguageChange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SetUnderline(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 17
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %5 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %14, %11 ], [ %10, %9 ]
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %11
  tail call fastcc void @SetUnderline(ptr noundef nonnull %14)
  %19 = getelementptr inbounds %struct.LIST, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %9

22:                                               ; preds = %18, %5, %1
  %23 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -1610612737
  %26 = or disjoint i32 %25, 1073741824
  store i32 %26, ptr %23, align 8
  ret void
}

declare ptr @Meld(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @InsertObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ManifestTg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr noundef %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.LIST, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %14, %10
  %23 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.76) #9
  %25 = load ptr, ptr %11, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %12, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %31, %28 ], [ %27, %26 ]
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !5
  switch i8 %33, label %34 [
    i8 0, label %28
    i8 6, label %63
    i8 7, label %63
  ]

34:                                               ; preds = %28
  %35 = tail call ptr @Manifest(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef 1)
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  %38 = and i8 %37, -2
  %39 = icmp eq i8 %38, 6
  br i1 %39, label %63, label %40

40:                                               ; preds = %34
  %41 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 13, ptr noundef nonnull @.str.77, i32 noundef 2, ptr noundef nonnull %36, ptr noundef nonnull @.str.78) #9
  %42 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %43 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %42) #9
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %43, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %60

48:                                               ; preds = %40
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !5
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1, i32 1
  store ptr %45, ptr %52, align 8, !tbaa !5
  store ptr %0, ptr %44, align 8, !tbaa !5
  store ptr %0, ptr %49, align 8, !tbaa !5
  store ptr %45, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %43, ptr @zz_res, align 8, !tbaa !8
  store ptr %45, ptr @zz_hold, align 8, !tbaa !8
  %53 = icmp eq ptr %43, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %55, ptr @zz_tmp, align 8, !tbaa !8
  %56 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %57, ptr %51, align 8, !tbaa !5
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1, i32 1
  store ptr %45, ptr %58, align 8, !tbaa !5
  store ptr %55, ptr %56, align 8, !tbaa !5
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1, i32 1
  store ptr %43, ptr %59, align 8, !tbaa !5
  br label %60

60:                                               ; preds = %47, %48, %54
  %61 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %62 = tail call ptr @Manifest(ptr noundef %43, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %272

63:                                               ; preds = %28, %28, %34
  %64 = phi ptr [ %35, %34 ], [ %31, %28 ], [ %31, %28 ]
  %65 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  br label %67

67:                                               ; preds = %67, %63
  %68 = phi ptr [ %66, %63 ], [ %70, %67 ]
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !5
  switch i8 %72, label %73 [
    i8 0, label %67
    i8 2, label %97
  ]

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1
  %75 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 14, ptr noundef nonnull @.str.79, i32 noundef 2, ptr noundef nonnull %74, ptr noundef nonnull @.str.78) #9
  %76 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %77 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %76) #9
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %77, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %94

82:                                               ; preds = %73
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !5
  %86 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1, i32 1
  store ptr %79, ptr %86, align 8, !tbaa !5
  store ptr %0, ptr %78, align 8, !tbaa !5
  store ptr %0, ptr %83, align 8, !tbaa !5
  store ptr %79, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %77, ptr @zz_res, align 8, !tbaa !8
  store ptr %79, ptr @zz_hold, align 8, !tbaa !8
  %87 = icmp eq ptr %77, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %85, align 8, !tbaa !5
  store ptr %89, ptr @zz_tmp, align 8, !tbaa !8
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  store ptr %91, ptr %85, align 8, !tbaa !5
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %91, i64 0, i64 1, i32 1
  store ptr %79, ptr %92, align 8, !tbaa !5
  store ptr %89, ptr %90, align 8, !tbaa !5
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1, i32 1
  store ptr %77, ptr %93, align 8, !tbaa !5
  br label %94

94:                                               ; preds = %81, %82, %88
  %95 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %96 = tail call ptr @Manifest(ptr noundef %77, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %272

97:                                               ; preds = %67
  %98 = getelementptr inbounds %struct.closure_type, ptr %70, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds i8, ptr %99, i64 41
  %101 = load i24, ptr %100, align 1
  %102 = and i24 %101, 2
  %103 = icmp eq i24 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %106 = tail call ptr @SymName(ptr noundef nonnull %99) #9
  %107 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 15, ptr noundef nonnull @.str.80, i32 noundef 2, ptr noundef nonnull %105, ptr noundef %106, ptr noundef nonnull @.str.81) #9
  %108 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %109 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %108) #9
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %109, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %126

114:                                              ; preds = %104
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  store ptr %116, ptr %117, align 8, !tbaa !5
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %116, i64 0, i64 1, i32 1
  store ptr %111, ptr %118, align 8, !tbaa !5
  store ptr %0, ptr %110, align 8, !tbaa !5
  store ptr %0, ptr %115, align 8, !tbaa !5
  store ptr %111, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %109, ptr @zz_res, align 8, !tbaa !8
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  %119 = icmp eq ptr %109, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %117, align 8, !tbaa !5
  store ptr %121, ptr @zz_tmp, align 8, !tbaa !8
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %109, i64 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  store ptr %123, ptr %117, align 8, !tbaa !5
  %124 = getelementptr inbounds [2 x %struct.LIST], ptr %123, i64 0, i64 1, i32 1
  store ptr %111, ptr %124, align 8, !tbaa !5
  store ptr %121, ptr %122, align 8, !tbaa !5
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1, i32 1
  store ptr %109, ptr %125, align 8, !tbaa !5
  br label %126

126:                                              ; preds = %113, %114, %120
  %127 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %128 = tail call ptr @Manifest(ptr noundef %109, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %272

129:                                              ; preds = %97
  %130 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  br label %132

132:                                              ; preds = %132, %129
  %133 = phi ptr [ %131, %129 ], [ %135, %132 ]
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %133, i64 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1
  %137 = load i8, ptr %136, align 8, !tbaa !5
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %132, label %139

139:                                              ; preds = %132
  %140 = tail call ptr @Manifest(ptr noundef nonnull %135, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %9)
  %141 = tail call ptr @ReplaceWithTidy(ptr noundef %140, i32 noundef 0)
  %142 = getelementptr inbounds %struct.word_type, ptr %141, i64 0, i32 1
  %143 = load i8, ptr %142, align 8, !tbaa !5
  %144 = add i8 %143, -11
  %145 = icmp ult i8 %144, 2
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.word_type, ptr %141, i64 0, i32 4
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(10) @.str.82) #10
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %179, label %150

150:                                              ; preds = %146
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(10) @.str.83) #10
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %150
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(13) @.str.84) #10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %179, label %156

156:                                              ; preds = %139, %153
  %157 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 16, ptr noundef nonnull @.str.85, i32 noundef 2, ptr noundef nonnull %142, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.78) #9
  %158 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %159 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %158) #9
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = icmp eq ptr %161, %0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %159, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %176

164:                                              ; preds = %156
  %165 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1
  store ptr %166, ptr %167, align 8, !tbaa !5
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1, i32 1
  store ptr %161, ptr %168, align 8, !tbaa !5
  store ptr %0, ptr %160, align 8, !tbaa !5
  store ptr %0, ptr %165, align 8, !tbaa !5
  store ptr %161, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %159, ptr @zz_res, align 8, !tbaa !8
  store ptr %161, ptr @zz_hold, align 8, !tbaa !8
  %169 = icmp eq ptr %159, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr %167, align 8, !tbaa !5
  store ptr %171, ptr @zz_tmp, align 8, !tbaa !8
  %172 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  store ptr %173, ptr %167, align 8, !tbaa !5
  %174 = getelementptr inbounds [2 x %struct.LIST], ptr %173, i64 0, i64 1, i32 1
  store ptr %161, ptr %174, align 8, !tbaa !5
  store ptr %171, ptr %172, align 8, !tbaa !5
  %175 = getelementptr inbounds [2 x %struct.LIST], ptr %171, i64 0, i64 1, i32 1
  store ptr %159, ptr %175, align 8, !tbaa !5
  br label %176

176:                                              ; preds = %163, %164, %170
  %177 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %178 = tail call ptr @Manifest(ptr noundef %159, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %272

179:                                              ; preds = %153, %150, %146
  %180 = phi i8 [ -122, %146 ], [ 127, %150 ], [ -128, %153 ]
  %181 = getelementptr inbounds i8, ptr %64, i64 41
  store i8 %180, ptr %181, align 1, !tbaa !5
  %182 = load ptr, ptr %0, align 8, !tbaa !5
  br label %183

183:                                              ; preds = %183, %179
  %184 = phi ptr [ %182, %179 ], [ %186, %183 ]
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = getelementptr inbounds %struct.word_type, ptr %186, i64 0, i32 1
  %188 = load i8, ptr %187, align 8, !tbaa !5
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %183, label %190

190:                                              ; preds = %183
  %191 = tail call ptr @Manifest(ptr noundef nonnull %186, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %9)
  %192 = tail call ptr @ReplaceWithTidy(ptr noundef %191, i32 noundef 1)
  %193 = getelementptr inbounds %struct.word_type, ptr %192, i64 0, i32 1
  %194 = load i8, ptr %193, align 8, !tbaa !5
  %195 = add i8 %194, -11
  %196 = icmp ult i8 %195, 2
  br i1 %196, label %220, label %197

197:                                              ; preds = %190
  %198 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 17, ptr noundef nonnull @.str.86, i32 noundef 2, ptr noundef nonnull %193, ptr noundef nonnull @.str.78) #9
  %199 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %200 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %199) #9
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = icmp eq ptr %202, %0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %200, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %217

205:                                              ; preds = %197
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %202, i64 0, i64 1
  store ptr %207, ptr %208, align 8, !tbaa !5
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %202, ptr %209, align 8, !tbaa !5
  store ptr %0, ptr %201, align 8, !tbaa !5
  store ptr %0, ptr %206, align 8, !tbaa !5
  store ptr %202, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %200, ptr @zz_res, align 8, !tbaa !8
  store ptr %202, ptr @zz_hold, align 8, !tbaa !8
  %210 = icmp eq ptr %200, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load ptr, ptr %208, align 8, !tbaa !5
  store ptr %212, ptr @zz_tmp, align 8, !tbaa !8
  %213 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !5
  store ptr %214, ptr %208, align 8, !tbaa !5
  %215 = getelementptr inbounds [2 x %struct.LIST], ptr %214, i64 0, i64 1, i32 1
  store ptr %202, ptr %215, align 8, !tbaa !5
  store ptr %212, ptr %213, align 8, !tbaa !5
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1, i32 1
  store ptr %200, ptr %216, align 8, !tbaa !5
  br label %217

217:                                              ; preds = %204, %205, %211
  %218 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %219 = tail call ptr @Manifest(ptr noundef %200, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9)
  br label %272

220:                                              ; preds = %190
  %221 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  %223 = icmp eq ptr %222, %141
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  %227 = getelementptr inbounds [2 x %struct.LIST], ptr %222, i64 0, i64 1
  store ptr %226, ptr %227, align 8, !tbaa !5
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1, i32 1
  store ptr %222, ptr %228, align 8, !tbaa !5
  store ptr %141, ptr %221, align 8, !tbaa !5
  store ptr %141, ptr %225, align 8, !tbaa !5
  %229 = load ptr, ptr %227, align 8, !tbaa !5
  store ptr %229, ptr @zz_tmp, align 8, !tbaa !8
  %230 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  store ptr %231, ptr %227, align 8, !tbaa !5
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %231, i64 0, i64 1, i32 1
  store ptr %222, ptr %232, align 8, !tbaa !5
  store ptr %229, ptr %230, align 8, !tbaa !5
  %233 = getelementptr inbounds [2 x %struct.LIST], ptr %229, i64 0, i64 1, i32 1
  store ptr %192, ptr %233, align 8, !tbaa !5
  br label %234

234:                                              ; preds = %220, %224
  %235 = phi ptr [ %222, %224 ], [ null, %220 ]
  store ptr %235, ptr @xx_tmp, align 8
  store ptr %192, ptr @zz_res, align 8
  store ptr %235, ptr @zz_hold, align 8
  %236 = tail call i32 @DisposeObject(ptr noundef nonnull %141) #9
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !5
  %239 = icmp eq ptr %238, %0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %64, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %255

241:                                              ; preds = %234
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %238, i64 0, i64 1
  store ptr %243, ptr %244, align 8, !tbaa !5
  %245 = getelementptr inbounds [2 x %struct.LIST], ptr %243, i64 0, i64 1, i32 1
  store ptr %238, ptr %245, align 8, !tbaa !5
  store ptr %0, ptr %237, align 8, !tbaa !5
  store ptr %0, ptr %242, align 8, !tbaa !5
  store ptr %238, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %64, ptr @zz_res, align 8, !tbaa !8
  store ptr %238, ptr @zz_hold, align 8, !tbaa !8
  %246 = icmp eq ptr %238, null
  %247 = icmp eq ptr %64, null
  %248 = or i1 %247, %246
  br i1 %248, label %255, label %249

249:                                              ; preds = %241
  %250 = load ptr, ptr %244, align 8, !tbaa !5
  store ptr %250, ptr @zz_tmp, align 8, !tbaa !8
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  store ptr %252, ptr %244, align 8, !tbaa !5
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %252, i64 0, i64 1, i32 1
  store ptr %238, ptr %253, align 8, !tbaa !5
  store ptr %250, ptr %251, align 8, !tbaa !5
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1, i32 1
  store ptr %64, ptr %254, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %240, %241, %249
  %256 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9
  %257 = getelementptr inbounds ptr, ptr %3, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %270

260:                                              ; preds = %255
  %261 = load ptr, ptr %3, align 8, !tbaa !8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = getelementptr inbounds ptr, ptr %4, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load ptr, ptr %4, align 8, !tbaa !8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %267, %263, %260, %255
  %271 = tail call fastcc ptr @insert_split(ptr noundef %64, ptr noundef nonnull %3, ptr noundef %4)
  br label %272

272:                                              ; preds = %267, %270, %217, %176, %126, %94, %60
  %273 = phi ptr [ %96, %94 ], [ %219, %217 ], [ %178, %176 ], [ %128, %126 ], [ %62, %60 ], [ %271, %270 ], [ %64, %267 ]
  ret ptr %273
}

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare ptr @ParameterCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SearchEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @SetTarget(ptr noundef) local_unnamed_addr #2

declare ptr @BuildEnclose(ptr noundef) local_unnamed_addr #2

declare i32 @SearchUses(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FilterSetFileNames(ptr noundef) local_unnamed_addr #2

declare ptr @FilterExecute(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold }

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
!12 = !{!13, !14, i64 2}
!13 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !11, i64 4, !11, i64 6}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !14, i64 8}
!16 = !{!"", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 10, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 15, !11, i64 15}
!17 = !{!16, !14, i64 10}
!18 = !{!14, !14, i64 0}
!19 = !{!20, !14, i64 2}
!20 = !{!"", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !14, i64 2}
!21 = !{!22, !9, i64 8}
!22 = !{!"back_end_rec", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !6, i64 0}

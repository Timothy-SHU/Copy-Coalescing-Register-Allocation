; ModuleID = 'src/z43.c'
source_filename = "src/z43.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.14 = type { i32, i32, [1 x ptr] }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }

@names_tab = internal global ptr null, align 8
@lang_count = internal unnamed_addr global i32 0, align 4
@lang_tabsize = internal unnamed_addr global i32 0, align 4
@hyph_tab = internal unnamed_addr global ptr null, align 8
@canonical_tab = internal unnamed_addr global ptr null, align 8
@LanguageSentenceEnds = dso_local local_unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"LanguageDefine: names!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"LanguageDefine: names is empty!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"LanguageDefine: type(y) != WORD!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"hyphenation file name expected here\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lang_ends = internal unnamed_addr global [64 x ptr] zeroinitializer, align 16
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"expected word ending pattern here\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"empty word ending pattern\00", align 1
@InitializeAll = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"LanguageWordEndsSentence: wd!\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s ignored (unknown language %s)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"LanguageString: unknown number\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"LanguageHyph: unknown number\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging language table\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"language name %s used twice (first at%s)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @LanguageInit() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(808) ptr @malloc(i64 noundef 808) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %4) #9
  br label %6

6:                                                ; preds = %0, %3
  store i32 100, ptr %1, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.anon.14, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(804) %7, i8 0, i64 804, i1 false)
  store ptr %1, ptr @names_tab, align 8, !tbaa !5
  store i32 0, ptr @lang_count, align 4, !tbaa !12
  store i32 100, ptr @lang_tabsize, align 4, !tbaa !12
  %8 = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #8
  store ptr %8, ptr @hyph_tab, align 8, !tbaa !5
  %9 = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #8
  store ptr %9, ptr @canonical_tab, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @LanguageSentenceEnds, i8 0, i64 1024, i1 false), !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @LanguageDefine(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i8 %6, 17
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.1) #9
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %17 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %16, ptr noundef nonnull @.str.2) #9
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr @lang_count, align 4, !tbaa !12
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @lang_count, align 4, !tbaa !12
  %21 = load i32, ptr @lang_tabsize, align 4, !tbaa !12
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = shl nsw i32 %21, 1
  store i32 %24, ptr @lang_tabsize, align 4, !tbaa !12
  %25 = load ptr, ptr @hyph_tab, align 8, !tbaa !5
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @realloc(ptr noundef %25, i64 noundef %27) #10
  store ptr %28, ptr @hyph_tab, align 8, !tbaa !5
  %29 = load ptr, ptr @canonical_tab, align 8, !tbaa !5
  %30 = tail call ptr @realloc(ptr noundef %29, i64 noundef %27) #10
  store ptr %30, ptr @canonical_tab, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %23, %18
  %32 = load ptr, ptr %12, align 8, !tbaa !13
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31, %45
  %35 = phi ptr [ %54, %45 ], [ %32, %31 ]
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %39, %36 ], [ %35, %34 ]
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %37, i64 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !13
  switch i8 %41, label %42 [
    i8 0, label %36
    i8 11, label %45
    i8 12, label %45
  ]

42:                                               ; preds = %36
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %43, ptr noundef nonnull @.str.3) #9
  br label %45

45:                                               ; preds = %36, %36, %42
  %46 = load i32, ptr @lang_count, align 4, !tbaa !12
  %47 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = shl i32 %46, 23
  %50 = and i32 %49, 528482304
  %51 = and i32 %48, -528482305
  %52 = or disjoint i32 %51, %50
  store i32 %52, ptr %47, align 8
  tail call fastcc void @ltab_insert(ptr noundef nonnull %39, ptr noundef nonnull @names_tab)
  %53 = getelementptr inbounds %struct.LIST, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %56, label %34

56:                                               ; preds = %45
  %57 = load ptr, ptr %12, align 8, !tbaa !13
  br label %58

58:                                               ; preds = %56, %31
  %59 = phi ptr [ %0, %31 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %63, %60 ], [ %59, %58 ]
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.word_type, ptr %63, i64 0, i32 1
  %65 = load i8, ptr %64, align 8, !tbaa !13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %60, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr @canonical_tab, align 8, !tbaa !5
  %69 = load i32, ptr @lang_count, align 4, !tbaa !12
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  store ptr %63, ptr %71, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %73 = load i8, ptr %72, align 8, !tbaa !13
  %74 = icmp eq i8 %73, 17
  br i1 %74, label %141, label %75

75:                                               ; preds = %67
  %76 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  store i32 %77, ptr @zz_size, align 4, !tbaa !12
  %78 = zext i8 %76 to i64
  %79 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %84 = tail call ptr @GetMemory(i32 noundef %77, ptr noundef %83) #9
  store ptr %84, ptr @zz_hold, align 8, !tbaa !5
  br label %87

85:                                               ; preds = %75
  store ptr %80, ptr @zz_hold, align 8, !tbaa !5
  %86 = load ptr, ptr %80, align 8, !tbaa !13
  store ptr %86, ptr %79, align 8, !tbaa !5
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi ptr [ %84, %82 ], [ %80, %85 ]
  %89 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  store i8 17, ptr %89, align 8, !tbaa !13
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1, i32 1
  store ptr %88, ptr %90, align 8, !tbaa !13
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  store ptr %88, ptr %91, align 8, !tbaa !13
  %92 = getelementptr inbounds %struct.LIST, ptr %88, i64 0, i32 1
  store ptr %88, ptr %92, align 8, !tbaa !13
  store ptr %88, ptr %88, align 8, !tbaa !13
  %93 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1, i32 0, i32 2
  %94 = load i16, ptr %93, align 2, !tbaa !13
  %95 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1, i32 0, i32 2
  store i16 %94, ptr %95, align 2, !tbaa !13
  %96 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1048575
  %99 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, -1048576
  %102 = or disjoint i32 %101, %98
  store i32 %102, ptr %99, align 4
  %103 = load i32, ptr %96, align 4
  %104 = and i32 %103, -1048576
  %105 = or disjoint i32 %104, %98
  store i32 %105, ptr %99, align 4
  %106 = load i8, ptr @zz_lengths, align 1, !tbaa !13
  %107 = zext i8 %106 to i32
  store i32 %107, ptr @zz_size, align 4, !tbaa !12
  %108 = zext i8 %106 to i64
  %109 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %87
  %113 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %114 = tail call ptr @GetMemory(i32 noundef %107, ptr noundef %113) #9
  br label %117

115:                                              ; preds = %87
  store ptr %110, ptr @zz_hold, align 8, !tbaa !5
  %116 = load ptr, ptr %110, align 8, !tbaa !13
  store ptr %116, ptr %109, align 8, !tbaa !5
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %114, %112 ], [ %110, %115 ]
  %119 = getelementptr inbounds %struct.word_type, ptr %118, i64 0, i32 1
  store i8 0, ptr %119, align 8, !tbaa !13
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %118, i64 0, i64 1, i32 1
  store ptr %118, ptr %120, align 8, !tbaa !13
  %121 = getelementptr inbounds [2 x %struct.LIST], ptr %118, i64 0, i64 1
  store ptr %118, ptr %121, align 8, !tbaa !13
  %122 = getelementptr inbounds %struct.LIST, ptr %118, i64 0, i32 1
  store ptr %118, ptr %122, align 8, !tbaa !13
  store ptr %118, ptr %118, align 8, !tbaa !13
  store ptr %118, ptr @xx_link, align 8, !tbaa !5
  store ptr %118, ptr @zz_res, align 8, !tbaa !5
  store ptr %88, ptr @zz_hold, align 8, !tbaa !5
  %123 = load ptr, ptr %88, align 8, !tbaa !13
  store ptr %123, ptr @zz_tmp, align 8, !tbaa !5
  %124 = load ptr, ptr %118, align 8, !tbaa !13
  store ptr %124, ptr %88, align 8, !tbaa !13
  %125 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %126 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %127 = load ptr, ptr %126, align 8, !tbaa !13
  %128 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  store ptr %125, ptr %128, align 8, !tbaa !13
  %129 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %129, ptr %126, align 8, !tbaa !13
  %130 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.LIST, ptr %129, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !13
  %132 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %132, ptr @zz_res, align 8, !tbaa !5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %117
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !13
  store ptr %136, ptr @zz_tmp, align 8, !tbaa !5
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !13
  store ptr %138, ptr %135, align 8, !tbaa !13
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1, i32 1
  store ptr %1, ptr %139, align 8, !tbaa !13
  store ptr %136, ptr %137, align 8, !tbaa !13
  %140 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1, i32 1
  store ptr %132, ptr %140, align 8, !tbaa !13
  br label %141

141:                                              ; preds = %134, %117, %67
  %142 = phi ptr [ %1, %67 ], [ %88, %117 ], [ %88, %134 ]
  %143 = getelementptr inbounds %struct.LIST, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !13
  br label %145

145:                                              ; preds = %145, %141
  %146 = phi ptr [ %144, %141 ], [ %148, %145 ]
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !13
  %149 = getelementptr inbounds %struct.word_type, ptr %148, i64 0, i32 1
  %150 = load i8, ptr %149, align 8, !tbaa !13
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %145, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.word_type, ptr %148, i64 0, i32 1
  store ptr %144, ptr @xx_link, align 8, !tbaa !5
  %154 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !13
  %156 = icmp eq ptr %155, %144
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  store ptr %155, ptr @zz_res, align 8, !tbaa !5
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !13
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %155, i64 0, i64 1
  store ptr %159, ptr %160, align 8, !tbaa !13
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1, i32 1
  store ptr %155, ptr %161, align 8, !tbaa !13
  store ptr %144, ptr %154, align 8, !tbaa !13
  store ptr %144, ptr %158, align 8, !tbaa !13
  br label %162

162:                                              ; preds = %152, %157
  store ptr %144, ptr @zz_hold, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !13
  %165 = icmp eq ptr %164, %144
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  store ptr %164, ptr @zz_res, align 8, !tbaa !5
  %167 = load ptr, ptr %144, align 8, !tbaa !13
  store ptr %167, ptr %164, align 8, !tbaa !13
  %168 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %169 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %170 = load ptr, ptr %169, align 8, !tbaa !13
  %171 = getelementptr inbounds %struct.LIST, ptr %170, i64 0, i32 1
  store ptr %168, ptr %171, align 8, !tbaa !13
  %172 = getelementptr inbounds %struct.LIST, ptr %169, i64 0, i32 1
  store ptr %169, ptr %172, align 8, !tbaa !13
  store ptr %169, ptr %169, align 8, !tbaa !13
  %173 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %174

174:                                              ; preds = %162, %166
  %175 = phi ptr [ %144, %162 ], [ %173, %166 ]
  store ptr %175, ptr @zz_hold, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.word_type, ptr %175, i64 0, i32 1
  %177 = load i8, ptr %176, align 8, !tbaa !13
  %178 = add i8 %177, -11
  %179 = icmp ult i8 %178, 2
  %180 = getelementptr inbounds %struct.word_type, ptr %175, i64 0, i32 1, i32 0, i32 1
  %181 = zext i8 %177 to i64
  %182 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %181
  %183 = select i1 %179, ptr %180, ptr %182
  %184 = load i8, ptr %183, align 1, !tbaa !13
  %185 = zext i8 %184 to i32
  store i32 %185, ptr @zz_size, align 4, !tbaa !12
  %186 = zext i8 %184 to i64
  %187 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  store ptr %188, ptr %175, align 8, !tbaa !13
  %189 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %190 = load i32, ptr @zz_size, align 4, !tbaa !12
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %191
  store ptr %189, ptr %192, align 8, !tbaa !5
  %193 = load i8, ptr %153, align 8, !tbaa !13
  %194 = add i8 %193, -11
  %195 = icmp ult i8 %194, 2
  br i1 %195, label %199, label %196

196:                                              ; preds = %174
  %197 = getelementptr inbounds %struct.word_type, ptr %142, i64 0, i32 1
  %198 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull %197) #9
  br label %199

199:                                              ; preds = %174, %196
  %200 = getelementptr inbounds %struct.word_type, ptr %148, i64 0, i32 4
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32, ptr @lang_count, align 4, !tbaa !12
  br label %209

205:                                              ; preds = %199
  %206 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %200, ptr noundef nonnull dereferenceable(2) @.str.7) #11
  %207 = icmp eq i32 %206, 0
  %208 = load i32, ptr @lang_count, align 4, !tbaa !12
  br i1 %207, label %209, label %230

209:                                              ; preds = %203, %205
  %210 = phi i32 [ %204, %203 ], [ %208, %205 ]
  store ptr %148, ptr @zz_hold, align 8, !tbaa !5
  %211 = load i8, ptr %153, align 8, !tbaa !13
  %212 = add i8 %211, -11
  %213 = icmp ult i8 %212, 2
  %214 = getelementptr inbounds %struct.word_type, ptr %148, i64 0, i32 1, i32 0, i32 1
  %215 = zext i8 %211 to i64
  %216 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %215
  %217 = select i1 %213, ptr %214, ptr %216
  %218 = load i8, ptr %217, align 1, !tbaa !13
  %219 = zext i8 %218 to i32
  store i32 %219, ptr @zz_size, align 4, !tbaa !12
  %220 = zext i8 %218 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  store ptr %222, ptr %148, align 8, !tbaa !13
  %223 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %224 = load i32, ptr @zz_size, align 4, !tbaa !12
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %225
  store ptr %223, ptr %226, align 8, !tbaa !5
  %227 = load ptr, ptr @hyph_tab, align 8, !tbaa !5
  %228 = sext i32 %210 to i64
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228
  store ptr null, ptr %229, align 8, !tbaa !5
  br label %234

230:                                              ; preds = %205
  %231 = load ptr, ptr @hyph_tab, align 8, !tbaa !5
  %232 = sext i32 %208 to i64
  %233 = getelementptr inbounds ptr, ptr %231, i64 %232
  store ptr %148, ptr %233, align 8, !tbaa !5
  br label %234

234:                                              ; preds = %230, %209
  %235 = phi i64 [ %232, %230 ], [ %228, %209 ]
  %236 = getelementptr inbounds [64 x ptr], ptr @lang_ends, i64 0, i64 %235
  store ptr %142, ptr %236, align 8, !tbaa !5
  %237 = load ptr, ptr %143, align 8, !tbaa !13
  %238 = icmp eq ptr %237, %142
  br i1 %238, label %323, label %239

239:                                              ; preds = %234, %318
  %240 = phi ptr [ %321, %318 ], [ %237, %234 ]
  br label %241

241:                                              ; preds = %239, %241
  %242 = phi ptr [ %244, %241 ], [ %240, %239 ]
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !13
  %245 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1
  %246 = load i8, ptr %245, align 8, !tbaa !13
  switch i8 %246, label %297 [
    i8 0, label %241
    i8 1, label %247
    i8 11, label %300
    i8 12, label %300
  ]

247:                                              ; preds = %241
  %248 = load ptr, ptr %240, align 8, !tbaa !13
  %249 = getelementptr inbounds %struct.LIST, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !13
  store ptr %250, ptr @xx_link, align 8, !tbaa !5
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !13
  %253 = icmp eq ptr %252, %250
  br i1 %253, label %259, label %254

254:                                              ; preds = %247
  store ptr %252, ptr @zz_res, align 8, !tbaa !5
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !13
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %252, i64 0, i64 1
  store ptr %256, ptr %257, align 8, !tbaa !13
  %258 = getelementptr inbounds [2 x %struct.LIST], ptr %256, i64 0, i64 1, i32 1
  store ptr %252, ptr %258, align 8, !tbaa !13
  store ptr %250, ptr %251, align 8, !tbaa !13
  store ptr %250, ptr %255, align 8, !tbaa !13
  br label %259

259:                                              ; preds = %247, %254
  %260 = phi ptr [ %252, %254 ], [ null, %247 ]
  store ptr %260, ptr @xx_tmp, align 8, !tbaa !5
  store ptr %250, ptr @zz_hold, align 8, !tbaa !5
  %261 = getelementptr inbounds %struct.LIST, ptr %250, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !13
  %263 = icmp eq ptr %262, %250
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  store ptr %262, ptr @zz_res, align 8, !tbaa !5
  %265 = load ptr, ptr %250, align 8, !tbaa !13
  store ptr %265, ptr %262, align 8, !tbaa !13
  %266 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %267 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %268 = load ptr, ptr %267, align 8, !tbaa !13
  %269 = getelementptr inbounds %struct.LIST, ptr %268, i64 0, i32 1
  store ptr %266, ptr %269, align 8, !tbaa !13
  %270 = getelementptr inbounds %struct.LIST, ptr %267, i64 0, i32 1
  store ptr %267, ptr %270, align 8, !tbaa !13
  store ptr %267, ptr %267, align 8, !tbaa !13
  %271 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %272

272:                                              ; preds = %259, %264
  %273 = phi ptr [ %250, %259 ], [ %271, %264 ]
  store ptr %273, ptr @zz_hold, align 8, !tbaa !5
  %274 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1
  %275 = load i8, ptr %274, align 8, !tbaa !13
  %276 = add i8 %275, -11
  %277 = icmp ult i8 %276, 2
  %278 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1, i32 0, i32 1
  %279 = zext i8 %275 to i64
  %280 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %279
  %281 = select i1 %277, ptr %278, ptr %280
  %282 = load i8, ptr %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i32
  store i32 %283, ptr @zz_size, align 4, !tbaa !12
  %284 = zext i8 %282 to i64
  %285 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !5
  store ptr %286, ptr %273, align 8, !tbaa !13
  %287 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %288 = load i32, ptr @zz_size, align 4, !tbaa !12
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %289
  store ptr %287, ptr %290, align 8, !tbaa !5
  %291 = load ptr, ptr @xx_tmp, align 8, !tbaa !5
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !13
  %294 = icmp eq ptr %293, %291
  br i1 %294, label %295, label %318

295:                                              ; preds = %272
  %296 = tail call i32 @DisposeObject(ptr noundef nonnull %291) #9
  br label %318

297:                                              ; preds = %241
  %298 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1
  %299 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %298) #9
  br label %302

300:                                              ; preds = %241, %241
  %301 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi ptr [ %301, %300 ], [ %298, %297 ]
  %304 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 4
  %305 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %304) #11
  %306 = and i64 %305, 4294967295
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %303) #9
  br label %310

310:                                              ; preds = %308, %302
  %311 = shl i64 %305, 32
  %312 = add i64 %311, -4294967296
  %313 = ashr exact i64 %312, 32
  %314 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 4, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !13
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds [256 x i32], ptr @LanguageSentenceEnds, i64 0, i64 %316
  store i32 1, ptr %317, align 4, !tbaa !12
  br label %318

318:                                              ; preds = %272, %295, %310
  %319 = phi ptr [ %248, %295 ], [ %248, %272 ], [ %240, %310 ]
  %320 = getelementptr inbounds %struct.LIST, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !13
  %322 = icmp eq ptr %321, %142
  br i1 %322, label %323, label %239

323:                                              ; preds = %318, %234
  %324 = load i32, ptr @InitializeAll, align 4, !tbaa !12
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr @hyph_tab, align 8, !tbaa !5
  %328 = load i32, ptr @lang_count, align 4, !tbaa !12
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds ptr, ptr %327, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !5
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %326
  %334 = tail call i32 @ReadHyphTable(i32 noundef %328) #9
  br label %335

335:                                              ; preds = %326, %333, %323
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @ltab_insert(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = load i32, ptr %4, align 8, !tbaa !9
  %8 = add nsw i32 %7, -1
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = shl nsw i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = or disjoint i64 %13, 8
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %18) #9
  br label %20

20:                                               ; preds = %17, %10
  store i32 %11, ptr %15, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.anon.14, ptr %15, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !14
  %22 = icmp sgt i32 %7, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %15, i64 8
  %25 = zext nneg i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %26, i1 false), !tbaa !5
  br label %27

27:                                               ; preds = %20, %23
  store ptr %15, ptr %3, align 8, !tbaa !5
  %28 = load i32, ptr %4, align 8, !tbaa !9
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %45, label %30

30:                                               ; preds = %27, %38
  %31 = phi i32 [ %39, %38 ], [ %28, %27 ]
  %32 = phi i64 [ %40, %38 ], [ 1, %27 ]
  %33 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  call fastcc void @ltab_insert(ptr noundef nonnull %34, ptr noundef nonnull %3)
  %37 = load i32, ptr %4, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %37, %36 ], [ %31, %30 ]
  %40 = add nuw nsw i64 %32, 1
  %41 = sext i32 %39 to i64
  %42 = icmp slt i64 %32, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi ptr [ %44, %43 ], [ %15, %27 ]
  tail call void @free(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  store ptr %46, ptr %1, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi ptr [ %46, %45 ], [ %4, %2 ]
  %49 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %50, align 1, !tbaa !13
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47, %55
  %56 = phi i8 [ %62, %55 ], [ %53, %47 ]
  %57 = phi ptr [ %59, %55 ], [ %50, %47 ]
  %58 = phi i32 [ %61, %55 ], [ %52, %47 ]
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  %60 = zext i8 %56 to i32
  %61 = add nuw nsw i32 %58, %60
  %62 = load i8, ptr %59, align 1, !tbaa !13
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %55

64:                                               ; preds = %55, %47
  %65 = phi i32 [ %52, %47 ], [ %61, %55 ]
  %66 = load i32, ptr %48, align 8, !tbaa !9
  %67 = srem i32 %65, %66
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds %struct.anon.14, ptr %48, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  store i32 %74, ptr @zz_size, align 4, !tbaa !12
  %75 = zext i8 %73 to i64
  %76 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %81 = tail call ptr @GetMemory(i32 noundef %74, ptr noundef %80) #9
  store ptr %81, ptr @zz_hold, align 8, !tbaa !5
  br label %84

82:                                               ; preds = %72
  store ptr %77, ptr @zz_hold, align 8, !tbaa !5
  %83 = load ptr, ptr %77, align 8, !tbaa !13
  store ptr %83, ptr %76, align 8, !tbaa !5
  br label %84

84:                                               ; preds = %79, %82
  %85 = phi ptr [ %81, %79 ], [ %77, %82 ]
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  store i8 17, ptr %86, align 8, !tbaa !13
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !13
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1
  store ptr %85, ptr %88, align 8, !tbaa !13
  %89 = getelementptr inbounds %struct.LIST, ptr %85, i64 0, i32 1
  store ptr %85, ptr %89, align 8, !tbaa !13
  store ptr %85, ptr %85, align 8, !tbaa !13
  %90 = load ptr, ptr %1, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.anon.14, ptr %90, i64 0, i32 2, i64 %68
  store ptr %85, ptr %91, align 8, !tbaa !5
  %92 = load ptr, ptr %1, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.anon.14, ptr %92, i64 0, i32 2, i64 %68
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %84, %64
  %96 = phi ptr [ %94, %84 ], [ %70, %64 ]
  %97 = getelementptr inbounds %struct.LIST, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !13
  %99 = icmp eq ptr %98, %96
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %102

102:                                              ; preds = %100, %119
  %103 = phi ptr [ %98, %100 ], [ %121, %119 ]
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi ptr [ %107, %104 ], [ %103, %102 ]
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !13
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %104, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 4
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %112) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %117 = tail call ptr @EchoFilePos(ptr noundef nonnull %116) #9
  %118 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %101, ptr noundef nonnull %49, ptr noundef %117) #9
  br label %119

119:                                              ; preds = %111, %115
  %120 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !13
  %122 = icmp eq ptr %121, %96
  br i1 %122, label %123, label %102

123:                                              ; preds = %119, %95
  %124 = load i8, ptr @zz_lengths, align 1, !tbaa !13
  %125 = zext i8 %124 to i32
  store i32 %125, ptr @zz_size, align 4, !tbaa !12
  %126 = zext i8 %124 to i64
  %127 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %132 = tail call ptr @GetMemory(i32 noundef %125, ptr noundef %131) #9
  store ptr %132, ptr @zz_hold, align 8, !tbaa !5
  br label %135

133:                                              ; preds = %123
  store ptr %128, ptr @zz_hold, align 8, !tbaa !5
  %134 = load ptr, ptr %128, align 8, !tbaa !13
  store ptr %134, ptr %127, align 8, !tbaa !5
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi ptr [ %132, %130 ], [ %128, %133 ]
  %137 = getelementptr inbounds %struct.word_type, ptr %136, i64 0, i32 1
  store i8 0, ptr %137, align 8, !tbaa !13
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1, i32 1
  store ptr %136, ptr %138, align 8, !tbaa !13
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1
  store ptr %136, ptr %139, align 8, !tbaa !13
  %140 = getelementptr inbounds %struct.LIST, ptr %136, i64 0, i32 1
  store ptr %136, ptr %140, align 8, !tbaa !13
  store ptr %136, ptr %136, align 8, !tbaa !13
  store ptr %136, ptr @xx_link, align 8, !tbaa !5
  store ptr %136, ptr @zz_res, align 8, !tbaa !5
  %141 = load ptr, ptr %1, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.anon.14, ptr %141, i64 0, i32 2, i64 %68
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  store ptr %143, ptr @zz_hold, align 8, !tbaa !5
  %144 = icmp eq ptr %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %135
  %146 = load ptr, ptr %143, align 8, !tbaa !13
  store ptr %146, ptr @zz_tmp, align 8, !tbaa !5
  %147 = load ptr, ptr %136, align 8, !tbaa !13
  store ptr %147, ptr %143, align 8, !tbaa !13
  %148 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %149 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %150 = load ptr, ptr %149, align 8, !tbaa !13
  %151 = getelementptr inbounds %struct.LIST, ptr %150, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !13
  %152 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %152, ptr %149, align 8, !tbaa !13
  %153 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.LIST, ptr %152, i64 0, i32 1
  store ptr %153, ptr %154, align 8, !tbaa !13
  %155 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %156

156:                                              ; preds = %135, %145
  %157 = phi ptr [ %136, %135 ], [ %155, %145 ]
  store ptr %157, ptr @zz_res, align 8, !tbaa !5
  store ptr %0, ptr @zz_hold, align 8, !tbaa !5
  %158 = icmp eq ptr %0, null
  %159 = icmp eq ptr %157, null
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !13
  store ptr %163, ptr @zz_tmp, align 8, !tbaa !5
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !13
  store ptr %165, ptr %162, align 8, !tbaa !13
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1, i32 1
  store ptr %0, ptr %166, align 8, !tbaa !13
  store ptr %163, ptr %164, align 8, !tbaa !13
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1, i32 1
  store ptr %157, ptr %167, align 8, !tbaa !13
  br label %168

168:                                              ; preds = %156, %161
  ret void
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @ReadHyphTable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LanguageWordEndsSentence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !13
  %5 = add i8 %4, -11
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.10) #9
  br label %10

10:                                               ; preds = %2, %7
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 23
  %14 = and i32 %13, 63
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [64 x ptr], ptr @lang_ends, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.LIST, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %74, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %37
  %25 = phi ptr [ %39, %37 ], [ %19, %21 ]
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %29, %26 ], [ %25, %24 ]
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %26, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 4
  %35 = tail call i32 @StringEndsWith(ptr noundef nonnull %22, ptr noundef nonnull %34) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.LIST, ptr %25, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %74, label %24

41:                                               ; preds = %21, %70
  %42 = phi ptr [ %72, %70 ], [ %19, %21 ]
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %46, %43 ], [ %42, %41 ]
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  %48 = load i8, ptr %47, align 8, !tbaa !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %43, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 4
  %52 = tail call i32 @StringEndsWith(ptr noundef nonnull %22, ptr noundef nonnull %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #11
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #11
  %57 = xor i64 %56, -1
  %58 = add i64 %55, %57
  %59 = and i64 %58, 2147483648
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = and i64 %58, 2147483647
  %63 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = load i32, ptr %11, align 8
  %66 = and i32 %65, 4095
  %67 = tail call i32 @FontMapping(i32 noundef %66, ptr noundef nonnull %3) #9
  %68 = tail call i32 @MapIsLowerCase(i8 noundef zeroext %64, i32 noundef %67) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %50, %61, %54
  %71 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !13
  %73 = icmp eq ptr %72, %17
  br i1 %73, label %74, label %41

74:                                               ; preds = %61, %70, %33, %37, %10
  %75 = phi i32 [ 0, %10 ], [ 0, %37 ], [ 1, %33 ], [ 0, %70 ], [ 1, %61 ]
  ret i32 %75
}

declare i32 @StringEndsWith(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @MapIsLowerCase(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @FontMapping(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @LanguageChange(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !13
  %5 = add i8 %4, -11
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 6, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #9
  br label %58

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @names_tab, align 8, !tbaa !5
  %15 = zext i8 %11 to i32
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %15, %13 ], [ %23, %16 ]
  %18 = phi ptr [ %10, %13 ], [ %19, %16 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = icmp eq i8 %20, 0
  %22 = zext i8 %20 to i32
  %23 = add nuw nsw i32 %17, %22
  br i1 %21, label %24, label %16

24:                                               ; preds = %16
  %25 = load i32, ptr %14, align 8, !tbaa !9
  %26 = srem i32 %17, %25
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds %struct.anon.14, ptr %14, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %24, %43
  %32 = phi ptr [ %34, %43 ], [ %29, %24 ]
  %33 = getelementptr inbounds %struct.LIST, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = icmp eq ptr %34, %29
  br i1 %35, label %47, label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %31 ]
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %37, i64 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 4
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %44) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %31

47:                                               ; preds = %31, %24
  %48 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 7, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %10) #9
  br label %58

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %51, 1
  %55 = and i32 %54, 1056964608
  %56 = and i32 %53, -1056964609
  %57 = or disjoint i32 %56, %55
  store i32 %57, ptr %52, align 4
  br label %58

58:                                               ; preds = %47, %49, %9, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @LanguageString(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @lang_count, align 4
  %3 = freeze i32 %2
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %7, ptr noundef nonnull @.str.14) #9
  br label %9

9:                                                ; preds = %1, %6
  %10 = load ptr, ptr @canonical_tab, align 8, !tbaa !5
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 4
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @LanguageHyph(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @lang_count, align 4
  %3 = freeze i32 %2
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %7, ptr noundef nonnull @.str.15) #9
  br label %9

9:                                                ; preds = %1, %6
  %10 = load ptr, ptr @hyph_tab, align 8, !tbaa !5
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !11, i64 4, !7, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!10, !11, i64 4}

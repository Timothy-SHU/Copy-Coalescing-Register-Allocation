; ModuleID = 'src/z07.c'
source_filename = "src/z07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.GAP = type { i16, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"SplitIsDefinite: x not a SPLIT!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DisposeObject: x has a parent!\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"CopyObject: PAR child!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CopyObject: CLOSURE!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CopyObject:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"InsertObject:\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Meld: type(x) != ACAT\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Meld: type(y) != ACAT\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: maximum paragraph length (%d) exceeded\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"1s\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Meld: g!\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"DisposeSplitObject: x has no children!\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"DisposeSplitObject: x has one child!\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: children!\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (a)!\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (b)!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @SplitIsDefinite(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 9
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.1) #6
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %10, %8 ], [ %14, %11 ]
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %22 = getelementptr inbounds [2 x %struct.LIST], ptr %21, i64 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %20, label %27

27:                                               ; preds = %20
  %28 = add i8 %16, -9
  %29 = icmp ult i8 %28, 91
  %30 = add i8 %25, -9
  %31 = icmp ult i8 %30, 91
  %32 = and i1 %29, %31
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DisposeObject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  br label %4

4:                                                ; preds = %270, %1
  %5 = phi ptr [ %3, %1 ], [ %289, %270 ]
  %6 = phi ptr [ %0, %1 ], [ %289, %270 ]
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.2) #6
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !5
  %14 = icmp eq i8 %13, 9
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 1
  %17 = getelementptr inbounds %struct.LIST, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %346, label %293

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.LIST, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %26 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %25, ptr noundef nonnull @.str.17) #6
  %27 = load ptr, ptr %21, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %30 = load ptr, ptr %6, align 8, !tbaa !5
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %34 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %33, ptr noundef nonnull @.str.18) #6
  %35 = load ptr, ptr %6, align 8, !tbaa !5
  %36 = load ptr, ptr %21, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi ptr [ %36, %32 ], [ %29, %28 ]
  %39 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %40 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %45 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %44, ptr noundef nonnull @.str.19) #6
  %46 = load ptr, ptr %21, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi ptr [ %38, %37 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %56
  %50 = phi i32 [ %57, %56 ], [ 1, %47 ]
  %51 = phi ptr [ %53, %56 ], [ %48, %47 ]
  %52 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.word_type, ptr %53, i64 0, i32 1
  %55 = load i8, ptr %54, align 8, !tbaa !5
  switch i8 %55, label %123 [
    i8 0, label %56
    i8 16, label %58
  ]

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %50, 1
  br label %49

58:                                               ; preds = %49, %58
  %59 = phi i32 [ %71, %58 ], [ 1, %49 ]
  %60 = phi ptr [ %65, %58 ], [ %53, %49 ]
  %61 = phi ptr [ %64, %58 ], [ %53, %49 ]
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1, i32 1
  %63 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %62, align 8, !tbaa !5
  %65 = load ptr, ptr %63, align 8, !tbaa !5
  %66 = icmp ne ptr %65, %53
  %67 = icmp ne ptr %64, %53
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ult i32 %59, %50
  %70 = select i1 %68, i1 %69, i1 false
  %71 = add nuw nsw i32 %59, 1
  br i1 %70, label %58, label %72

72:                                               ; preds = %58
  br i1 %68, label %76, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %75 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %74, ptr noundef nonnull @.str.20) #6
  br label %76

76:                                               ; preds = %73, %72
  store ptr %65, ptr @xx_link, align 8, !tbaa !8
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, %65
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  store ptr %78, ptr @zz_res, align 8, !tbaa !8
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %82, i64 0, i64 1, i32 1
  store ptr %78, ptr %84, align 8, !tbaa !5
  store ptr %65, ptr %77, align 8, !tbaa !5
  store ptr %65, ptr %81, align 8, !tbaa !5
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi ptr [ %78, %80 ], [ null, %76 ]
  store ptr %86, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %65, ptr @zz_hold, align 8, !tbaa !8
  %87 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, %65
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  store ptr %88, ptr @zz_res, align 8, !tbaa !8
  %91 = load ptr, ptr %65, align 8, !tbaa !5
  store ptr %91, ptr %88, align 8, !tbaa !5
  %92 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %93 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.LIST, ptr %94, i64 0, i32 1
  store ptr %92, ptr %95, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  store ptr %93, ptr %96, align 8, !tbaa !5
  store ptr %93, ptr %93, align 8, !tbaa !5
  %97 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %98

98:                                               ; preds = %90, %85
  %99 = phi ptr [ %97, %90 ], [ %65, %85 ]
  store ptr %99, ptr @zz_hold, align 8, !tbaa !8
  %100 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  %101 = load i8, ptr %100, align 8, !tbaa !5
  %102 = add i8 %101, -11
  %103 = icmp ult i8 %102, 2
  %104 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1, i32 0, i32 1
  %105 = zext i8 %101 to i64
  %106 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %105
  %107 = select i1 %103, ptr %104, ptr %106
  %108 = load i8, ptr %107, align 1, !tbaa !5
  %109 = zext i8 %108 to i32
  store i32 %109, ptr @zz_size, align 4, !tbaa !10
  %110 = zext i8 %108 to i64
  %111 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !8
  store ptr %112, ptr %99, align 8, !tbaa !5
  %113 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %114 = load i32, ptr @zz_size, align 4, !tbaa !10
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %115
  store ptr %113, ptr %116, align 8, !tbaa !8
  %117 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %117, i64 0, i64 1, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = icmp eq ptr %119, %117
  br i1 %120, label %121, label %123

121:                                              ; preds = %98
  %122 = tail call i32 @DisposeObject(ptr noundef nonnull %117)
  br label %123

123:                                              ; preds = %49, %121, %98
  %124 = load ptr, ptr %21, align 8, !tbaa !5
  store ptr %124, ptr @xx_link, align 8, !tbaa !8
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, %124
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  store ptr %126, ptr @zz_res, align 8, !tbaa !8
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1
  store ptr %130, ptr %131, align 8, !tbaa !5
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %130, i64 0, i64 1, i32 1
  store ptr %126, ptr %132, align 8, !tbaa !5
  store ptr %124, ptr %125, align 8, !tbaa !5
  store ptr %124, ptr %129, align 8, !tbaa !5
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi ptr [ %126, %128 ], [ null, %123 ]
  store ptr %134, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %124, ptr @zz_hold, align 8, !tbaa !8
  %135 = getelementptr inbounds %struct.LIST, ptr %124, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = icmp eq ptr %136, %124
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  store ptr %136, ptr @zz_res, align 8, !tbaa !8
  %139 = load ptr, ptr %124, align 8, !tbaa !5
  store ptr %139, ptr %136, align 8, !tbaa !5
  %140 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %141 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.LIST, ptr %142, i64 0, i32 1
  store ptr %140, ptr %143, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.LIST, ptr %141, i64 0, i32 1
  store ptr %141, ptr %144, align 8, !tbaa !5
  store ptr %141, ptr %141, align 8, !tbaa !5
  %145 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %146

146:                                              ; preds = %138, %133
  %147 = phi ptr [ %145, %138 ], [ %124, %133 ]
  store ptr %147, ptr @zz_hold, align 8, !tbaa !8
  %148 = getelementptr inbounds %struct.word_type, ptr %147, i64 0, i32 1
  %149 = load i8, ptr %148, align 8, !tbaa !5
  %150 = add i8 %149, -11
  %151 = icmp ult i8 %150, 2
  %152 = getelementptr inbounds %struct.word_type, ptr %147, i64 0, i32 1, i32 0, i32 1
  %153 = zext i8 %149 to i64
  %154 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %153
  %155 = select i1 %151, ptr %152, ptr %154
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i32
  store i32 %157, ptr @zz_size, align 4, !tbaa !10
  %158 = zext i8 %156 to i64
  %159 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !8
  store ptr %160, ptr %147, align 8, !tbaa !5
  %161 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %162 = load i32, ptr @zz_size, align 4, !tbaa !10
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %163
  store ptr %161, ptr %164, align 8, !tbaa !8
  %165 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = icmp eq ptr %167, %165
  br i1 %168, label %169, label %171

169:                                              ; preds = %146
  %170 = tail call i32 @DisposeObject(ptr noundef nonnull %165)
  br label %171

171:                                              ; preds = %169, %146
  %172 = load ptr, ptr %6, align 8, !tbaa !5
  br label %173

173:                                              ; preds = %180, %171
  %174 = phi i32 [ 1, %171 ], [ %181, %180 ]
  %175 = phi ptr [ %172, %171 ], [ %177, %180 ]
  %176 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds %struct.word_type, ptr %177, i64 0, i32 1
  %179 = load i8, ptr %178, align 8, !tbaa !5
  switch i8 %179, label %247 [
    i8 0, label %180
    i8 15, label %182
  ]

180:                                              ; preds = %173
  %181 = add nuw nsw i32 %174, 1
  br label %173

182:                                              ; preds = %173, %182
  %183 = phi i32 [ %195, %182 ], [ 1, %173 ]
  %184 = phi ptr [ %189, %182 ], [ %177, %173 ]
  %185 = phi ptr [ %188, %182 ], [ %177, %173 ]
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1, i32 1
  %187 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %186, align 8, !tbaa !5
  %189 = load ptr, ptr %187, align 8, !tbaa !5
  %190 = icmp ne ptr %189, %177
  %191 = icmp ne ptr %188, %177
  %192 = select i1 %190, i1 %191, i1 false
  %193 = icmp ult i32 %183, %174
  %194 = select i1 %192, i1 %193, i1 false
  %195 = add nuw nsw i32 %183, 1
  br i1 %194, label %182, label %196

196:                                              ; preds = %182
  br i1 %192, label %200, label %197

197:                                              ; preds = %196
  %198 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %199 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %198, ptr noundef nonnull @.str.21) #6
  br label %200

200:                                              ; preds = %197, %196
  store ptr %189, ptr @xx_link, align 8, !tbaa !8
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = icmp eq ptr %202, %189
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  store ptr %202, ptr @zz_res, align 8, !tbaa !8
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !5
  %207 = getelementptr inbounds [2 x %struct.LIST], ptr %202, i64 0, i64 1
  store ptr %206, ptr %207, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %206, i64 0, i64 1, i32 1
  store ptr %202, ptr %208, align 8, !tbaa !5
  store ptr %189, ptr %201, align 8, !tbaa !5
  store ptr %189, ptr %205, align 8, !tbaa !5
  br label %209

209:                                              ; preds = %204, %200
  %210 = phi ptr [ %202, %204 ], [ null, %200 ]
  store ptr %210, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %189, ptr @zz_hold, align 8, !tbaa !8
  %211 = getelementptr inbounds %struct.LIST, ptr %189, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = icmp eq ptr %212, %189
  br i1 %213, label %222, label %214

214:                                              ; preds = %209
  store ptr %212, ptr @zz_res, align 8, !tbaa !8
  %215 = load ptr, ptr %189, align 8, !tbaa !5
  store ptr %215, ptr %212, align 8, !tbaa !5
  %216 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %217 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = getelementptr inbounds %struct.LIST, ptr %218, i64 0, i32 1
  store ptr %216, ptr %219, align 8, !tbaa !5
  %220 = getelementptr inbounds %struct.LIST, ptr %217, i64 0, i32 1
  store ptr %217, ptr %220, align 8, !tbaa !5
  store ptr %217, ptr %217, align 8, !tbaa !5
  %221 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %222

222:                                              ; preds = %214, %209
  %223 = phi ptr [ %221, %214 ], [ %189, %209 ]
  store ptr %223, ptr @zz_hold, align 8, !tbaa !8
  %224 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  %225 = load i8, ptr %224, align 8, !tbaa !5
  %226 = add i8 %225, -11
  %227 = icmp ult i8 %226, 2
  %228 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1, i32 0, i32 1
  %229 = zext i8 %225 to i64
  %230 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %229
  %231 = select i1 %227, ptr %228, ptr %230
  %232 = load i8, ptr %231, align 1, !tbaa !5
  %233 = zext i8 %232 to i32
  store i32 %233, ptr @zz_size, align 4, !tbaa !10
  %234 = zext i8 %232 to i64
  %235 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !8
  store ptr %236, ptr %223, align 8, !tbaa !5
  %237 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %238 = load i32, ptr @zz_size, align 4, !tbaa !10
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %239
  store ptr %237, ptr %240, align 8, !tbaa !8
  %241 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = icmp eq ptr %243, %241
  br i1 %244, label %245, label %247

245:                                              ; preds = %222
  %246 = tail call i32 @DisposeObject(ptr noundef nonnull %241)
  br label %247

247:                                              ; preds = %173, %245, %222
  %248 = load ptr, ptr %6, align 8, !tbaa !5
  store ptr %248, ptr @xx_link, align 8, !tbaa !8
  %249 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !5
  %251 = icmp eq ptr %250, %248
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  store ptr %250, ptr @zz_res, align 8, !tbaa !8
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1
  store ptr %254, ptr %255, align 8, !tbaa !5
  %256 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1, i32 1
  store ptr %250, ptr %256, align 8, !tbaa !5
  store ptr %248, ptr %249, align 8, !tbaa !5
  store ptr %248, ptr %253, align 8, !tbaa !5
  br label %257

257:                                              ; preds = %252, %247
  %258 = phi ptr [ %250, %252 ], [ null, %247 ]
  store ptr %258, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %248, ptr @zz_hold, align 8, !tbaa !8
  %259 = getelementptr inbounds %struct.LIST, ptr %248, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  %261 = icmp eq ptr %260, %248
  br i1 %261, label %270, label %262

262:                                              ; preds = %257
  store ptr %260, ptr @zz_res, align 8, !tbaa !8
  %263 = load ptr, ptr %248, align 8, !tbaa !5
  store ptr %263, ptr %260, align 8, !tbaa !5
  %264 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %265 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %266 = load ptr, ptr %265, align 8, !tbaa !5
  %267 = getelementptr inbounds %struct.LIST, ptr %266, i64 0, i32 1
  store ptr %264, ptr %267, align 8, !tbaa !5
  %268 = getelementptr inbounds %struct.LIST, ptr %265, i64 0, i32 1
  store ptr %265, ptr %268, align 8, !tbaa !5
  store ptr %265, ptr %265, align 8, !tbaa !5
  %269 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %270

270:                                              ; preds = %262, %257
  %271 = phi ptr [ %269, %262 ], [ %248, %257 ]
  store ptr %271, ptr @zz_hold, align 8, !tbaa !8
  %272 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1
  %273 = load i8, ptr %272, align 8, !tbaa !5
  %274 = add i8 %273, -11
  %275 = icmp ult i8 %274, 2
  %276 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1, i32 0, i32 1
  %277 = zext i8 %273 to i64
  %278 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %277
  %279 = select i1 %275, ptr %276, ptr %278
  %280 = load i8, ptr %279, align 1, !tbaa !5
  %281 = zext i8 %280 to i32
  store i32 %281, ptr @zz_size, align 4, !tbaa !10
  %282 = zext i8 %280 to i64
  %283 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !8
  store ptr %284, ptr %271, align 8, !tbaa !5
  %285 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %286 = load i32, ptr @zz_size, align 4, !tbaa !10
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %287
  store ptr %285, ptr %288, align 8, !tbaa !8
  %289 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %290 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !5
  %292 = icmp eq ptr %291, %289
  br i1 %292, label %4, label %363

293:                                              ; preds = %15, %341
  %294 = phi ptr [ %342, %341 ], [ %18, %15 ]
  store ptr %294, ptr @xx_link, align 8, !tbaa !8
  %295 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !5
  %297 = icmp eq ptr %296, %294
  br i1 %297, label %303, label %298

298:                                              ; preds = %293
  store ptr %296, ptr @zz_res, align 8, !tbaa !8
  %299 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %296, i64 0, i64 1
  store ptr %300, ptr %301, align 8, !tbaa !5
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %300, i64 0, i64 1, i32 1
  store ptr %296, ptr %302, align 8, !tbaa !5
  store ptr %294, ptr %295, align 8, !tbaa !5
  store ptr %294, ptr %299, align 8, !tbaa !5
  br label %303

303:                                              ; preds = %293, %298
  %304 = phi ptr [ %296, %298 ], [ null, %293 ]
  store ptr %304, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %294, ptr @zz_hold, align 8, !tbaa !8
  %305 = getelementptr inbounds %struct.LIST, ptr %294, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !5
  %307 = icmp eq ptr %306, %294
  br i1 %307, label %316, label %308

308:                                              ; preds = %303
  store ptr %306, ptr @zz_res, align 8, !tbaa !8
  %309 = load ptr, ptr %294, align 8, !tbaa !5
  store ptr %309, ptr %306, align 8, !tbaa !5
  %310 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %311 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %312 = load ptr, ptr %311, align 8, !tbaa !5
  %313 = getelementptr inbounds %struct.LIST, ptr %312, i64 0, i32 1
  store ptr %310, ptr %313, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.LIST, ptr %311, i64 0, i32 1
  store ptr %311, ptr %314, align 8, !tbaa !5
  store ptr %311, ptr %311, align 8, !tbaa !5
  %315 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %316

316:                                              ; preds = %303, %308
  %317 = phi ptr [ %294, %303 ], [ %315, %308 ]
  store ptr %317, ptr @zz_hold, align 8, !tbaa !8
  %318 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 1
  %319 = load i8, ptr %318, align 8, !tbaa !5
  %320 = add i8 %319, -11
  %321 = icmp ult i8 %320, 2
  %322 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 1, i32 0, i32 1
  %323 = zext i8 %319 to i64
  %324 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %323
  %325 = select i1 %321, ptr %322, ptr %324
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i32
  store i32 %327, ptr @zz_size, align 4, !tbaa !10
  %328 = zext i8 %326 to i64
  %329 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !8
  store ptr %330, ptr %317, align 8, !tbaa !5
  %331 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %332 = load i32, ptr @zz_size, align 4, !tbaa !10
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %333
  store ptr %331, ptr %334, align 8, !tbaa !8
  %335 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %336 = getelementptr inbounds [2 x %struct.LIST], ptr %335, i64 0, i64 1, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !5
  %338 = icmp eq ptr %337, %335
  br i1 %338, label %339, label %341

339:                                              ; preds = %316
  %340 = tail call i32 @DisposeObject(ptr noundef nonnull %335)
  br label %341

341:                                              ; preds = %339, %316
  %342 = load ptr, ptr %17, align 8, !tbaa !5
  %343 = icmp eq ptr %342, %6
  br i1 %343, label %344, label %293

344:                                              ; preds = %341
  %345 = load i8, ptr %16, align 8, !tbaa !5
  br label %346

346:                                              ; preds = %344, %15
  %347 = phi i8 [ %345, %344 ], [ %13, %15 ]
  store ptr %6, ptr @zz_hold, align 8, !tbaa !8
  %348 = add i8 %347, -11
  %349 = icmp ult i8 %348, 2
  %350 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 1, i32 0, i32 1
  %351 = zext i8 %347 to i64
  %352 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %351
  %353 = select i1 %349, ptr %350, ptr %352
  %354 = load i8, ptr %353, align 1, !tbaa !5
  %355 = zext i8 %354 to i32
  store i32 %355, ptr @zz_size, align 4, !tbaa !10
  %356 = zext i8 %354 to i64
  %357 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !8
  store ptr %358, ptr %6, align 8, !tbaa !5
  %359 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %360 = load i32, ptr @zz_size, align 4, !tbaa !10
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %361
  store ptr %359, ptr %362, align 8, !tbaa !8
  br label %363

363:                                              ; preds = %270, %346
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @MakeWord(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %5 = shl i64 %4, 32
  %6 = add i64 %5, 292057776128
  %7 = ashr exact i64 %6, 32
  %8 = lshr i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 1
  store i32 %10, ptr @zz_size, align 4, !tbaa !10
  %11 = icmp ugt i32 %10, 264
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %2) #6
  %14 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  br label %24

15:                                               ; preds = %3
  %16 = zext nneg i32 %10 to i64
  %17 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @GetMemory(i32 noundef %10, ptr noundef %2) #6
  store ptr %21, ptr @zz_hold, align 8, !tbaa !8
  br label %24

22:                                               ; preds = %15
  store ptr %18, ptr @zz_hold, align 8, !tbaa !8
  %23 = load ptr, ptr %18, align 8, !tbaa !5
  store ptr %23, ptr %17, align 8, !tbaa !8
  br label %24

24:                                               ; preds = %20, %22, %12
  %25 = phi ptr [ %21, %20 ], [ %18, %22 ], [ %14, %12 ]
  %26 = load i32, ptr @zz_size, align 4, !tbaa !10
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1, i32 0, i32 1
  store i8 %27, ptr %28, align 1, !tbaa !5
  %29 = trunc i32 %0 to i8
  %30 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  store i8 %29, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1, i32 1
  store ptr %25, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  store ptr %25, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.LIST, ptr %25, i64 0, i32 1
  store ptr %25, ptr %33, align 8, !tbaa !5
  store ptr %25, ptr %25, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 4
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %1) #6
  %36 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 2
  %37 = load i16, ptr %36, align 2, !tbaa !12
  %38 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1, i32 0, i32 2
  store i16 %37, ptr %38, align 2, !tbaa !5
  %39 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1048575
  %42 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -1048576
  %45 = or disjoint i32 %44, %41
  store i32 %45, ptr %42, align 4
  %46 = load i32, ptr %39, align 4
  %47 = and i32 %46, -1048576
  %48 = or disjoint i32 %47, %41
  store i32 %48, ptr %42, align 4
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @MakeWordTwo(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %7 = add i64 %6, %5
  %8 = shl i64 %7, 32
  %9 = add i64 %8, 292057776128
  %10 = ashr exact i64 %9, 32
  %11 = lshr i64 %10, 3
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  store i32 %13, ptr @zz_size, align 4, !tbaa !10
  %14 = icmp ugt i32 %13, 264
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %3) #6
  %17 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  br label %27

18:                                               ; preds = %4
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call ptr @GetMemory(i32 noundef %13, ptr noundef %3) #6
  store ptr %24, ptr @zz_hold, align 8, !tbaa !8
  br label %27

25:                                               ; preds = %18
  store ptr %21, ptr @zz_hold, align 8, !tbaa !8
  %26 = load ptr, ptr %21, align 8, !tbaa !5
  store ptr %26, ptr %20, align 8, !tbaa !8
  br label %27

27:                                               ; preds = %23, %25, %15
  %28 = phi ptr [ %24, %23 ], [ %21, %25 ], [ %17, %15 ]
  %29 = load i32, ptr @zz_size, align 4, !tbaa !10
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1, i32 0, i32 1
  store i8 %30, ptr %31, align 1, !tbaa !5
  %32 = trunc i32 %0 to i8
  %33 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  store i8 %32, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1, i32 1
  store ptr %28, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1
  store ptr %28, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  store ptr %28, ptr %36, align 8, !tbaa !5
  store ptr %28, ptr %28, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 4
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %1) #6
  %39 = shl i64 %5, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 4, i64 %40
  %42 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %2) #6
  %43 = getelementptr inbounds %struct.FILE_POS, ptr %3, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !12
  %45 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1, i32 0, i32 2
  store i16 %44, ptr %45, align 2, !tbaa !5
  %46 = getelementptr inbounds %struct.FILE_POS, ptr %3, i64 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1048575
  %49 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, -1048576
  %52 = or disjoint i32 %51, %48
  store i32 %52, ptr %49, align 4
  %53 = load i32, ptr %46, align 4
  %54 = and i32 %53, -1048576
  %55 = or disjoint i32 %54, %48
  store i32 %55, ptr %49, align 4
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @MakeWordThree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %5 = trunc i64 %4 to i32
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %7, %5
  %11 = add i32 %9, 68
  %12 = add i32 %11, %10
  %13 = ashr i32 %12, 3
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @zz_size, align 4, !tbaa !10
  %15 = icmp ugt i32 %14, 264
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %17) #6
  %19 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  br label %30

20:                                               ; preds = %3
  %21 = zext nneg i32 %14 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %27 = tail call ptr @GetMemory(i32 noundef %14, ptr noundef %26) #6
  store ptr %27, ptr @zz_hold, align 8, !tbaa !8
  br label %30

28:                                               ; preds = %20
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %29 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %29, ptr %22, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %25, %28, %16
  %31 = phi ptr [ %27, %25 ], [ %23, %28 ], [ %19, %16 ]
  %32 = load i32, ptr @zz_size, align 4, !tbaa !10
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1, i32 0, i32 1
  store i8 %33, ptr %34, align 1, !tbaa !5
  %35 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  store i8 11, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  store ptr %31, ptr %36, align 8, !tbaa !5
  %37 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  store ptr %31, ptr %37, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  store ptr %31, ptr %38, align 8, !tbaa !5
  store ptr %31, ptr %31, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 4
  %40 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %0) #6
  %41 = shl i64 %4, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 4, i64 %42
  %44 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %1) #6
  %45 = sext i32 %10 to i64
  %46 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 4, i64 %45
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %2) #6
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CopyObject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  switch i8 %4, label %544 [
    i8 11, label %5
    i8 12, label %5
    i8 1, label %39
    i8 5, label %123
    i8 4, label %123
    i8 6, label %123
    i8 7, label %123
    i8 20, label %123
    i8 21, label %123
    i8 22, label %123
    i8 23, label %123
    i8 24, label %123
    i8 25, label %123
    i8 26, label %123
    i8 27, label %123
    i8 28, label %123
    i8 29, label %123
    i8 30, label %123
    i8 31, label %123
    i8 32, label %123
    i8 33, label %123
    i8 34, label %123
    i8 35, label %123
    i8 36, label %123
    i8 37, label %123
    i8 38, label %123
    i8 39, label %123
    i8 40, label %123
    i8 41, label %123
    i8 44, label %123
    i8 42, label %123
    i8 43, label %123
    i8 45, label %123
    i8 46, label %123
    i8 47, label %123
    i8 48, label %123
    i8 49, label %123
    i8 50, label %123
    i8 51, label %123
    i8 54, label %123
    i8 53, label %123
    i8 52, label %123
    i8 55, label %123
    i8 56, label %123
    i8 58, label %123
    i8 59, label %123
    i8 60, label %123
    i8 61, label %123
    i8 62, label %123
    i8 63, label %123
    i8 64, label %123
    i8 65, label %123
    i8 66, label %123
    i8 67, label %123
    i8 68, label %123
    i8 69, label %123
    i8 70, label %123
    i8 71, label %123
    i8 72, label %123
    i8 73, label %123
    i8 74, label %123
    i8 75, label %123
    i8 76, label %123
    i8 77, label %123
    i8 78, label %123
    i8 79, label %123
    i8 80, label %123
    i8 92, label %123
    i8 93, label %123
    i8 94, label %123
    i8 95, label %123
    i8 96, label %123
    i8 97, label %123
    i8 98, label %123
    i8 99, label %123
    i8 19, label %123
    i8 18, label %123
    i8 17, label %123
    i8 81, label %123
    i8 57, label %199
    i8 82, label %549
    i8 10, label %270
    i8 2, label %346
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #7
  %8 = shl i64 %7, 32
  %9 = add i64 %8, 292057776128
  %10 = ashr exact i64 %9, 32
  %11 = lshr i64 %10, 3
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  store i32 %13, ptr @zz_size, align 4, !tbaa !10
  %14 = icmp ugt i32 %13, 264
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %1) #6
  %17 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  br label %27

18:                                               ; preds = %5
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call ptr @GetMemory(i32 noundef %13, ptr noundef %1) #6
  store ptr %24, ptr @zz_hold, align 8, !tbaa !8
  br label %27

25:                                               ; preds = %18
  store ptr %21, ptr @zz_hold, align 8, !tbaa !8
  %26 = load ptr, ptr %21, align 8, !tbaa !5
  store ptr %26, ptr %20, align 8, !tbaa !8
  br label %27

27:                                               ; preds = %23, %25, %15
  %28 = phi ptr [ %24, %23 ], [ %21, %25 ], [ %17, %15 ]
  %29 = load i32, ptr @zz_size, align 4, !tbaa !10
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1, i32 0, i32 1
  store i8 %30, ptr %31, align 1, !tbaa !5
  %32 = load i8, ptr %3, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  store i8 %32, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1, i32 1
  store ptr %28, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1
  store ptr %28, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  store ptr %28, ptr %36, align 8, !tbaa !5
  store ptr %28, ptr %28, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 4
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %6) #6
  br label %549

39:                                               ; preds = %2
  %40 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  store i32 %41, ptr @zz_size, align 4, !tbaa !10
  %42 = zext i8 %40 to i64
  %43 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %48 = tail call ptr @GetMemory(i32 noundef %41, ptr noundef %47) #6
  store ptr %48, ptr @zz_hold, align 8, !tbaa !8
  br label %51

49:                                               ; preds = %39
  store ptr %44, ptr @zz_hold, align 8, !tbaa !8
  %50 = load ptr, ptr %44, align 8, !tbaa !5
  store ptr %50, ptr %43, align 8, !tbaa !8
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %48, %46 ], [ %44, %49 ]
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 1
  store i8 1, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !5
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1
  store ptr %52, ptr %55, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  store ptr %52, ptr %56, align 8, !tbaa !5
  store ptr %52, ptr %52, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.gapobj_type, ptr %0, i64 0, i32 3
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 256
  %60 = getelementptr inbounds %struct.gapobj_type, ptr %52, i64 0, i32 3
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, -257
  %63 = or disjoint i16 %62, %59
  store i16 %63, ptr %60, align 4
  %64 = load i16, ptr %57, align 4
  %65 = and i16 %64, 512
  %66 = and i16 %63, -513
  %67 = or disjoint i16 %66, %65
  store i16 %67, ptr %60, align 4
  %68 = getelementptr inbounds i8, ptr %0, i64 41
  %69 = load i8, ptr %68, align 1, !tbaa !5
  %70 = getelementptr inbounds i8, ptr %52, i64 41
  store i8 %69, ptr %70, align 1, !tbaa !5
  %71 = getelementptr inbounds i8, ptr %0, i64 42
  %72 = load i8, ptr %71, align 2, !tbaa !5
  %73 = getelementptr inbounds i8, ptr %52, i64 42
  store i8 %72, ptr %73, align 2, !tbaa !5
  %74 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %549, label %77

77:                                               ; preds = %51, %77
  %78 = phi ptr [ %80, %77 ], [ %75, %51 ]
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.word_type, ptr %80, i64 0, i32 1
  %82 = load i8, ptr %81, align 8, !tbaa !5
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %77, label %84

84:                                               ; preds = %77
  %85 = tail call ptr @CopyObject(ptr noundef nonnull %80, ptr noundef %1)
  %86 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %87 = zext i8 %86 to i32
  store i32 %87, ptr @zz_size, align 4, !tbaa !10
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %94 = tail call ptr @GetMemory(i32 noundef %87, ptr noundef %93) #6
  br label %97

95:                                               ; preds = %84
  store ptr %90, ptr @zz_hold, align 8, !tbaa !8
  %96 = load ptr, ptr %90, align 8, !tbaa !5
  store ptr %96, ptr %89, align 8, !tbaa !8
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi ptr [ %94, %92 ], [ %90, %95 ]
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  store i8 0, ptr %99, align 8, !tbaa !5
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !5
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1
  store ptr %98, ptr %101, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %98, ptr %102, align 8, !tbaa !5
  store ptr %98, ptr %98, align 8, !tbaa !5
  store ptr %98, ptr @xx_link, align 8, !tbaa !8
  store ptr %98, ptr @zz_res, align 8, !tbaa !8
  store ptr %52, ptr @zz_hold, align 8, !tbaa !8
  %103 = load ptr, ptr %52, align 8, !tbaa !5
  store ptr %103, ptr @zz_tmp, align 8, !tbaa !8
  %104 = load ptr, ptr %98, align 8, !tbaa !5
  store ptr %104, ptr %52, align 8, !tbaa !5
  %105 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %106 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.LIST, ptr %107, i64 0, i32 1
  store ptr %105, ptr %108, align 8, !tbaa !5
  %109 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %109, ptr %106, align 8, !tbaa !5
  %110 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %111 = getelementptr inbounds %struct.LIST, ptr %109, i64 0, i32 1
  store ptr %110, ptr %111, align 8, !tbaa !5
  %112 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %112, ptr @zz_res, align 8, !tbaa !8
  store ptr %85, ptr @zz_hold, align 8, !tbaa !8
  %113 = icmp eq ptr %85, null
  %114 = icmp eq ptr %112, null
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %549, label %116

116:                                              ; preds = %97
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  store ptr %118, ptr @zz_tmp, align 8, !tbaa !8
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %112, i64 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  store ptr %120, ptr %117, align 8, !tbaa !5
  %121 = getelementptr inbounds [2 x %struct.LIST], ptr %120, i64 0, i64 1, i32 1
  store ptr %85, ptr %121, align 8, !tbaa !5
  store ptr %118, ptr %119, align 8, !tbaa !5
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %118, i64 0, i64 1, i32 1
  store ptr %112, ptr %122, align 8, !tbaa !5
  br label %549

123:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %124 = zext nneg i8 %4 to i64
  %125 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !5
  %127 = zext i8 %126 to i32
  store i32 %127, ptr @zz_size, align 4, !tbaa !10
  %128 = zext i8 %126 to i64
  %129 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %134 = tail call ptr @GetMemory(i32 noundef %127, ptr noundef %133) #6
  store ptr %134, ptr @zz_hold, align 8, !tbaa !8
  br label %137

135:                                              ; preds = %123
  store ptr %130, ptr @zz_hold, align 8, !tbaa !8
  %136 = load ptr, ptr %130, align 8, !tbaa !5
  store ptr %136, ptr %129, align 8, !tbaa !8
  br label %137

137:                                              ; preds = %132, %135
  %138 = phi ptr [ %134, %132 ], [ %130, %135 ]
  %139 = load i8, ptr %3, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 1
  store i8 %139, ptr %140, align 8, !tbaa !5
  %141 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1, i32 1
  store ptr %138, ptr %141, align 8, !tbaa !5
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1
  store ptr %138, ptr %142, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.LIST, ptr %138, i64 0, i32 1
  store ptr %138, ptr %143, align 8, !tbaa !5
  store ptr %138, ptr %138, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = icmp eq ptr %145, %0
  br i1 %146, label %549, label %147

147:                                              ; preds = %137, %195
  %148 = phi ptr [ %197, %195 ], [ %145, %137 ]
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi ptr [ %152, %149 ], [ %148, %147 ]
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  %154 = load i8, ptr %153, align 8, !tbaa !5
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %149, label %156

156:                                              ; preds = %149
  %157 = tail call ptr @CopyObject(ptr noundef nonnull %152, ptr noundef %1)
  %158 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %159 = zext i8 %158 to i32
  store i32 %159, ptr @zz_size, align 4, !tbaa !10
  %160 = zext i8 %158 to i64
  %161 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %166 = tail call ptr @GetMemory(i32 noundef %159, ptr noundef %165) #6
  br label %169

167:                                              ; preds = %156
  store ptr %162, ptr @zz_hold, align 8, !tbaa !8
  %168 = load ptr, ptr %162, align 8, !tbaa !5
  store ptr %168, ptr %161, align 8, !tbaa !8
  br label %169

169:                                              ; preds = %164, %167
  %170 = phi ptr [ %166, %164 ], [ %162, %167 ]
  %171 = getelementptr inbounds %struct.word_type, ptr %170, i64 0, i32 1
  store i8 0, ptr %171, align 8, !tbaa !5
  %172 = getelementptr inbounds [2 x %struct.LIST], ptr %170, i64 0, i64 1, i32 1
  store ptr %170, ptr %172, align 8, !tbaa !5
  %173 = getelementptr inbounds [2 x %struct.LIST], ptr %170, i64 0, i64 1
  store ptr %170, ptr %173, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.LIST, ptr %170, i64 0, i32 1
  store ptr %170, ptr %174, align 8, !tbaa !5
  store ptr %170, ptr %170, align 8, !tbaa !5
  store ptr %170, ptr @xx_link, align 8, !tbaa !8
  store ptr %170, ptr @zz_res, align 8, !tbaa !8
  store ptr %138, ptr @zz_hold, align 8, !tbaa !8
  %175 = load ptr, ptr %138, align 8, !tbaa !5
  store ptr %175, ptr @zz_tmp, align 8, !tbaa !8
  %176 = load ptr, ptr %170, align 8, !tbaa !5
  store ptr %176, ptr %138, align 8, !tbaa !5
  %177 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %178 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = getelementptr inbounds %struct.LIST, ptr %179, i64 0, i32 1
  store ptr %177, ptr %180, align 8, !tbaa !5
  %181 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %181, ptr %178, align 8, !tbaa !5
  %182 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %183 = getelementptr inbounds %struct.LIST, ptr %181, i64 0, i32 1
  store ptr %182, ptr %183, align 8, !tbaa !5
  %184 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %184, ptr @zz_res, align 8, !tbaa !8
  store ptr %157, ptr @zz_hold, align 8, !tbaa !8
  %185 = icmp eq ptr %157, null
  %186 = icmp eq ptr %184, null
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %195, label %188

188:                                              ; preds = %169
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  store ptr %190, ptr @zz_tmp, align 8, !tbaa !8
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  store ptr %192, ptr %189, align 8, !tbaa !5
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1, i32 1
  store ptr %157, ptr %193, align 8, !tbaa !5
  store ptr %190, ptr %191, align 8, !tbaa !5
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1, i32 1
  store ptr %184, ptr %194, align 8, !tbaa !5
  br label %195

195:                                              ; preds = %169, %188
  %196 = getelementptr inbounds %struct.LIST, ptr %148, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = icmp eq ptr %197, %0
  br i1 %198, label %549, label %147

199:                                              ; preds = %2
  %200 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 57), align 1, !tbaa !5
  %201 = zext i8 %200 to i32
  store i32 %201, ptr @zz_size, align 4, !tbaa !10
  %202 = zext i8 %200 to i64
  %203 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %208 = tail call ptr @GetMemory(i32 noundef %201, ptr noundef %207) #6
  store ptr %208, ptr @zz_hold, align 8, !tbaa !8
  br label %211

209:                                              ; preds = %199
  store ptr %204, ptr @zz_hold, align 8, !tbaa !8
  %210 = load ptr, ptr %204, align 8, !tbaa !5
  store ptr %210, ptr %203, align 8, !tbaa !8
  br label %211

211:                                              ; preds = %206, %209
  %212 = phi ptr [ %208, %206 ], [ %204, %209 ]
  %213 = load i8, ptr %3, align 8, !tbaa !5
  %214 = getelementptr inbounds %struct.word_type, ptr %212, i64 0, i32 1
  store i8 %213, ptr %214, align 8, !tbaa !5
  %215 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1, i32 1
  store ptr %212, ptr %215, align 8, !tbaa !5
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1
  store ptr %212, ptr %216, align 8, !tbaa !5
  %217 = getelementptr inbounds %struct.LIST, ptr %212, i64 0, i32 1
  store ptr %212, ptr %217, align 8, !tbaa !5
  store ptr %212, ptr %212, align 8, !tbaa !5
  %218 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !5
  %220 = icmp eq ptr %219, %0
  br i1 %220, label %549, label %221

221:                                              ; preds = %211, %266
  %222 = phi ptr [ %268, %266 ], [ %219, %211 ]
  br label %223

223:                                              ; preds = %221, %223
  %224 = phi ptr [ %226, %223 ], [ %222, %221 ]
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  %227 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1
  %228 = load i8, ptr %227, align 8, !tbaa !5
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %223, label %230

230:                                              ; preds = %223
  %231 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %232 = zext i8 %231 to i32
  store i32 %232, ptr @zz_size, align 4, !tbaa !10
  %233 = zext i8 %231 to i64
  %234 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %239 = tail call ptr @GetMemory(i32 noundef %232, ptr noundef %238) #6
  br label %242

240:                                              ; preds = %230
  store ptr %235, ptr @zz_hold, align 8, !tbaa !8
  %241 = load ptr, ptr %235, align 8, !tbaa !5
  store ptr %241, ptr %234, align 8, !tbaa !8
  br label %242

242:                                              ; preds = %237, %240
  %243 = phi ptr [ %239, %237 ], [ %235, %240 ]
  %244 = getelementptr inbounds %struct.word_type, ptr %243, i64 0, i32 1
  store i8 0, ptr %244, align 8, !tbaa !5
  %245 = getelementptr inbounds [2 x %struct.LIST], ptr %243, i64 0, i64 1, i32 1
  store ptr %243, ptr %245, align 8, !tbaa !5
  %246 = getelementptr inbounds [2 x %struct.LIST], ptr %243, i64 0, i64 1
  store ptr %243, ptr %246, align 8, !tbaa !5
  %247 = getelementptr inbounds %struct.LIST, ptr %243, i64 0, i32 1
  store ptr %243, ptr %247, align 8, !tbaa !5
  store ptr %243, ptr %243, align 8, !tbaa !5
  store ptr %243, ptr @xx_link, align 8, !tbaa !8
  store ptr %243, ptr @zz_res, align 8, !tbaa !8
  store ptr %212, ptr @zz_hold, align 8, !tbaa !8
  %248 = load ptr, ptr %212, align 8, !tbaa !5
  store ptr %248, ptr @zz_tmp, align 8, !tbaa !8
  %249 = load ptr, ptr %243, align 8, !tbaa !5
  store ptr %249, ptr %212, align 8, !tbaa !5
  %250 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %251 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = getelementptr inbounds %struct.LIST, ptr %252, i64 0, i32 1
  store ptr %250, ptr %253, align 8, !tbaa !5
  %254 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %254, ptr %251, align 8, !tbaa !5
  %255 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %256 = getelementptr inbounds %struct.LIST, ptr %254, i64 0, i32 1
  store ptr %255, ptr %256, align 8, !tbaa !5
  %257 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %257, ptr @zz_res, align 8, !tbaa !8
  store ptr %226, ptr @zz_hold, align 8, !tbaa !8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %266, label %259

259:                                              ; preds = %242
  %260 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  store ptr %261, ptr @zz_tmp, align 8, !tbaa !8
  %262 = getelementptr inbounds [2 x %struct.LIST], ptr %257, i64 0, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !5
  store ptr %263, ptr %260, align 8, !tbaa !5
  %264 = getelementptr inbounds [2 x %struct.LIST], ptr %263, i64 0, i64 1, i32 1
  store ptr %226, ptr %264, align 8, !tbaa !5
  store ptr %261, ptr %262, align 8, !tbaa !5
  %265 = getelementptr inbounds [2 x %struct.LIST], ptr %261, i64 0, i64 1, i32 1
  store ptr %257, ptr %265, align 8, !tbaa !5
  br label %266

266:                                              ; preds = %242, %259
  %267 = getelementptr inbounds %struct.LIST, ptr %222, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = icmp eq ptr %268, %0
  br i1 %269, label %549, label %221

270:                                              ; preds = %2
  %271 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %272 = zext i8 %271 to i32
  store i32 %272, ptr @zz_size, align 4, !tbaa !10
  %273 = zext i8 %271 to i64
  %274 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %279 = tail call ptr @GetMemory(i32 noundef %272, ptr noundef %278) #6
  store ptr %279, ptr @zz_hold, align 8, !tbaa !8
  br label %282

280:                                              ; preds = %270
  store ptr %275, ptr @zz_hold, align 8, !tbaa !8
  %281 = load ptr, ptr %275, align 8, !tbaa !5
  store ptr %281, ptr %274, align 8, !tbaa !8
  br label %282

282:                                              ; preds = %277, %280
  %283 = phi ptr [ %279, %277 ], [ %275, %280 ]
  %284 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 1
  store i8 10, ptr %284, align 8, !tbaa !5
  %285 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1, i32 1
  store ptr %283, ptr %285, align 8, !tbaa !5
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1
  store ptr %283, ptr %286, align 8, !tbaa !5
  %287 = getelementptr inbounds %struct.LIST, ptr %283, i64 0, i32 1
  store ptr %283, ptr %287, align 8, !tbaa !5
  store ptr %283, ptr %283, align 8, !tbaa !5
  %288 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %289 = load ptr, ptr %288, align 8, !tbaa !5
  %290 = getelementptr inbounds %struct.closure_type, ptr %283, i64 0, i32 5
  store ptr %289, ptr %290, align 8, !tbaa !5
  %291 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = icmp eq ptr %292, %0
  br i1 %293, label %294, label %298

294:                                              ; preds = %282
  %295 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %296 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %295, ptr noundef nonnull @.str.4) #6
  %297 = load ptr, ptr %291, align 8, !tbaa !5
  br label %298

298:                                              ; preds = %294, %282
  %299 = phi ptr [ %292, %282 ], [ %297, %294 ]
  br label %300

300:                                              ; preds = %298, %300
  %301 = phi ptr [ %303, %300 ], [ %299, %298 ]
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %301, i64 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  %304 = getelementptr inbounds %struct.word_type, ptr %303, i64 0, i32 1
  %305 = load i8, ptr %304, align 8, !tbaa !5
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %300, label %307

307:                                              ; preds = %300
  %308 = tail call ptr @CopyObject(ptr noundef nonnull %303, ptr noundef %1)
  %309 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %310 = zext i8 %309 to i32
  store i32 %310, ptr @zz_size, align 4, !tbaa !10
  %311 = zext i8 %309 to i64
  %312 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %317 = tail call ptr @GetMemory(i32 noundef %310, ptr noundef %316) #6
  br label %320

318:                                              ; preds = %307
  store ptr %313, ptr @zz_hold, align 8, !tbaa !8
  %319 = load ptr, ptr %313, align 8, !tbaa !5
  store ptr %319, ptr %312, align 8, !tbaa !8
  br label %320

320:                                              ; preds = %315, %318
  %321 = phi ptr [ %317, %315 ], [ %313, %318 ]
  %322 = getelementptr inbounds %struct.word_type, ptr %321, i64 0, i32 1
  store i8 0, ptr %322, align 8, !tbaa !5
  %323 = getelementptr inbounds [2 x %struct.LIST], ptr %321, i64 0, i64 1, i32 1
  store ptr %321, ptr %323, align 8, !tbaa !5
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %321, i64 0, i64 1
  store ptr %321, ptr %324, align 8, !tbaa !5
  %325 = getelementptr inbounds %struct.LIST, ptr %321, i64 0, i32 1
  store ptr %321, ptr %325, align 8, !tbaa !5
  store ptr %321, ptr %321, align 8, !tbaa !5
  store ptr %321, ptr @xx_link, align 8, !tbaa !8
  store ptr %321, ptr @zz_res, align 8, !tbaa !8
  store ptr %283, ptr @zz_hold, align 8, !tbaa !8
  %326 = load ptr, ptr %283, align 8, !tbaa !5
  store ptr %326, ptr @zz_tmp, align 8, !tbaa !8
  %327 = load ptr, ptr %321, align 8, !tbaa !5
  store ptr %327, ptr %283, align 8, !tbaa !5
  %328 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %329 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %330 = load ptr, ptr %329, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.LIST, ptr %330, i64 0, i32 1
  store ptr %328, ptr %331, align 8, !tbaa !5
  %332 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %332, ptr %329, align 8, !tbaa !5
  %333 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %334 = getelementptr inbounds %struct.LIST, ptr %332, i64 0, i32 1
  store ptr %333, ptr %334, align 8, !tbaa !5
  %335 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %335, ptr @zz_res, align 8, !tbaa !8
  store ptr %308, ptr @zz_hold, align 8, !tbaa !8
  %336 = icmp eq ptr %308, null
  %337 = icmp eq ptr %335, null
  %338 = select i1 %336, i1 true, i1 %337
  br i1 %338, label %549, label %339

339:                                              ; preds = %320
  %340 = getelementptr inbounds [2 x %struct.LIST], ptr %308, i64 0, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !5
  store ptr %341, ptr @zz_tmp, align 8, !tbaa !8
  %342 = getelementptr inbounds [2 x %struct.LIST], ptr %335, i64 0, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  store ptr %343, ptr %340, align 8, !tbaa !5
  %344 = getelementptr inbounds [2 x %struct.LIST], ptr %343, i64 0, i64 1, i32 1
  store ptr %308, ptr %344, align 8, !tbaa !5
  store ptr %341, ptr %342, align 8, !tbaa !5
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %341, i64 0, i64 1, i32 1
  store ptr %335, ptr %345, align 8, !tbaa !5
  br label %549

346:                                              ; preds = %2
  %347 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %348 = zext i8 %347 to i32
  store i32 %348, ptr @zz_size, align 4, !tbaa !10
  %349 = zext i8 %347 to i64
  %350 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %356

353:                                              ; preds = %346
  %354 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %355 = tail call ptr @GetMemory(i32 noundef %348, ptr noundef %354) #6
  store ptr %355, ptr @zz_hold, align 8, !tbaa !8
  br label %358

356:                                              ; preds = %346
  store ptr %351, ptr @zz_hold, align 8, !tbaa !8
  %357 = load ptr, ptr %351, align 8, !tbaa !5
  store ptr %357, ptr %350, align 8, !tbaa !8
  br label %358

358:                                              ; preds = %353, %356
  %359 = phi ptr [ %355, %353 ], [ %351, %356 ]
  %360 = getelementptr inbounds %struct.word_type, ptr %359, i64 0, i32 1
  store i8 2, ptr %360, align 8, !tbaa !5
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1, i32 1
  store ptr %359, ptr %361, align 8, !tbaa !5
  %362 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1
  store ptr %359, ptr %362, align 8, !tbaa !5
  %363 = getelementptr inbounds %struct.LIST, ptr %359, i64 0, i32 1
  store ptr %359, ptr %363, align 8, !tbaa !5
  store ptr %359, ptr %359, align 8, !tbaa !5
  %364 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !5
  %366 = icmp eq ptr %365, %0
  br i1 %366, label %421, label %367

367:                                              ; preds = %358, %417
  %368 = phi ptr [ %419, %417 ], [ %365, %358 ]
  br label %369

369:                                              ; preds = %367, %369
  %370 = phi ptr [ %372, %369 ], [ %368, %367 ]
  %371 = getelementptr inbounds [2 x %struct.LIST], ptr %370, i64 0, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !5
  %373 = getelementptr inbounds %struct.word_type, ptr %372, i64 0, i32 1
  %374 = load i8, ptr %373, align 8, !tbaa !5
  switch i8 %374, label %378 [
    i8 0, label %369
    i8 2, label %375
  ]

375:                                              ; preds = %369
  %376 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %377 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %376, ptr noundef nonnull @.str.5) #6
  br label %378

378:                                              ; preds = %369, %375
  %379 = tail call ptr @CopyObject(ptr noundef nonnull %372, ptr noundef %1)
  %380 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %381 = zext i8 %380 to i32
  store i32 %381, ptr @zz_size, align 4, !tbaa !10
  %382 = zext i8 %380 to i64
  %383 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %378
  %387 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %388 = tail call ptr @GetMemory(i32 noundef %381, ptr noundef %387) #6
  br label %391

389:                                              ; preds = %378
  store ptr %384, ptr @zz_hold, align 8, !tbaa !8
  %390 = load ptr, ptr %384, align 8, !tbaa !5
  store ptr %390, ptr %383, align 8, !tbaa !8
  br label %391

391:                                              ; preds = %386, %389
  %392 = phi ptr [ %388, %386 ], [ %384, %389 ]
  %393 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 1
  store i8 0, ptr %393, align 8, !tbaa !5
  %394 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1, i32 1
  store ptr %392, ptr %394, align 8, !tbaa !5
  %395 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1
  store ptr %392, ptr %395, align 8, !tbaa !5
  %396 = getelementptr inbounds %struct.LIST, ptr %392, i64 0, i32 1
  store ptr %392, ptr %396, align 8, !tbaa !5
  store ptr %392, ptr %392, align 8, !tbaa !5
  store ptr %392, ptr @xx_link, align 8, !tbaa !8
  store ptr %392, ptr @zz_res, align 8, !tbaa !8
  store ptr %359, ptr @zz_hold, align 8, !tbaa !8
  %397 = load ptr, ptr %359, align 8, !tbaa !5
  store ptr %397, ptr @zz_tmp, align 8, !tbaa !8
  %398 = load ptr, ptr %392, align 8, !tbaa !5
  store ptr %398, ptr %359, align 8, !tbaa !5
  %399 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %400 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %401 = load ptr, ptr %400, align 8, !tbaa !5
  %402 = getelementptr inbounds %struct.LIST, ptr %401, i64 0, i32 1
  store ptr %399, ptr %402, align 8, !tbaa !5
  %403 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %403, ptr %400, align 8, !tbaa !5
  %404 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %405 = getelementptr inbounds %struct.LIST, ptr %403, i64 0, i32 1
  store ptr %404, ptr %405, align 8, !tbaa !5
  %406 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %406, ptr @zz_res, align 8, !tbaa !8
  store ptr %379, ptr @zz_hold, align 8, !tbaa !8
  %407 = icmp eq ptr %379, null
  %408 = icmp eq ptr %406, null
  %409 = select i1 %407, i1 true, i1 %408
  br i1 %409, label %417, label %410

410:                                              ; preds = %391
  %411 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  store ptr %412, ptr @zz_tmp, align 8, !tbaa !8
  %413 = getelementptr inbounds [2 x %struct.LIST], ptr %406, i64 0, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  store ptr %414, ptr %411, align 8, !tbaa !5
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1, i32 1
  store ptr %379, ptr %415, align 8, !tbaa !5
  store ptr %412, ptr %413, align 8, !tbaa !5
  %416 = getelementptr inbounds [2 x %struct.LIST], ptr %412, i64 0, i64 1, i32 1
  store ptr %406, ptr %416, align 8, !tbaa !5
  br label %417

417:                                              ; preds = %391, %410
  %418 = getelementptr inbounds %struct.LIST, ptr %368, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !5
  %420 = icmp eq ptr %419, %0
  br i1 %420, label %421, label %367

421:                                              ; preds = %417, %358
  %422 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %423 = load ptr, ptr %422, align 8, !tbaa !5
  %424 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 5
  store ptr %423, ptr %424, align 8, !tbaa !5
  %425 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %426 = load i16, ptr %425, align 8
  %427 = and i16 %426, 128
  %428 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4
  %429 = load i16, ptr %428, align 8
  %430 = and i16 %429, -129
  %431 = or disjoint i16 %430, %427
  store i16 %431, ptr %428, align 8
  %432 = load i16, ptr %425, align 8
  %433 = and i16 %432, 256
  %434 = and i16 %431, -257
  %435 = or disjoint i16 %434, %433
  store i16 %435, ptr %428, align 8
  %436 = load i16, ptr %425, align 8
  %437 = and i16 %436, 512
  %438 = and i16 %435, -513
  %439 = or disjoint i16 %438, %437
  store i16 %439, ptr %428, align 8
  %440 = load i16, ptr %425, align 8
  %441 = and i16 %440, 7168
  %442 = and i16 %439, -7169
  %443 = or disjoint i16 %442, %441
  store i16 %443, ptr %428, align 8
  %444 = load i16, ptr %425, align 8
  %445 = and i16 %444, -8192
  %446 = and i16 %443, 8191
  %447 = or disjoint i16 %446, %445
  store i16 %447, ptr %428, align 8
  %448 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %449 = load i16, ptr %448, align 2, !tbaa !5
  %450 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %449, ptr %450, align 2, !tbaa !5
  %451 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %452 = load i8, ptr %451, align 4
  %453 = and i8 %452, 3
  %454 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 1
  %455 = load i8, ptr %454, align 4
  %456 = and i8 %455, -4
  %457 = or disjoint i8 %456, %453
  store i8 %457, ptr %454, align 4
  %458 = load i8, ptr %451, align 4
  %459 = and i8 %458, 12
  %460 = and i8 %457, -13
  %461 = or disjoint i8 %460, %459
  store i8 %461, ptr %454, align 4
  %462 = load i8, ptr %451, align 4
  %463 = and i8 %462, 112
  %464 = and i8 %461, -113
  %465 = or disjoint i8 %464, %463
  store i8 %465, ptr %454, align 4
  %466 = load i8, ptr %425, align 8
  %467 = and i8 %466, 8
  %468 = trunc i16 %431 to i8
  %469 = and i8 %468, -9
  %470 = or disjoint i8 %469, %467
  store i8 %470, ptr %428, align 8
  %471 = load i16, ptr %451, align 4
  %472 = and i16 %471, 128
  %473 = load i16, ptr %454, align 4
  %474 = and i16 %473, -129
  %475 = or disjoint i16 %474, %472
  store i16 %475, ptr %454, align 4
  %476 = load i16, ptr %451, align 4
  %477 = and i16 %476, 256
  %478 = and i16 %475, -257
  %479 = or disjoint i16 %478, %477
  store i16 %479, ptr %454, align 4
  %480 = load i16, ptr %451, align 4
  %481 = and i16 %480, 512
  %482 = and i16 %479, -513
  %483 = or disjoint i16 %482, %481
  store i16 %483, ptr %454, align 4
  %484 = load i16, ptr %451, align 4
  %485 = and i16 %484, 7168
  %486 = and i16 %483, -7169
  %487 = or disjoint i16 %486, %485
  store i16 %487, ptr %454, align 4
  %488 = load i16, ptr %451, align 4
  %489 = and i16 %488, -8192
  %490 = and i16 %487, 8191
  %491 = or disjoint i16 %490, %489
  store i16 %491, ptr %454, align 4
  %492 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %493 = load i16, ptr %492, align 2, !tbaa !5
  %494 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %493, ptr %494, align 2, !tbaa !5
  %495 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %496 = load i32, ptr %495, align 4
  %497 = and i32 %496, 4095
  %498 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 4
  %499 = load i32, ptr %498, align 4
  %500 = and i32 %499, -4096
  %501 = or disjoint i32 %500, %497
  store i32 %501, ptr %498, align 4
  %502 = load i32, ptr %495, align 4
  %503 = and i32 %502, 4190208
  %504 = and i32 %501, -4190209
  %505 = or disjoint i32 %504, %503
  store i32 %505, ptr %498, align 4
  %506 = load i32, ptr %495, align 4
  %507 = and i32 %506, 12582912
  %508 = and i32 %505, -12582913
  %509 = or disjoint i32 %508, %507
  store i32 %509, ptr %498, align 4
  %510 = load i32, ptr %495, align 4
  %511 = and i32 %510, 1056964608
  %512 = and i32 %509, -1056964609
  %513 = or disjoint i32 %512, %511
  store i32 %513, ptr %498, align 4
  %514 = load i32, ptr %495, align 4
  %515 = and i32 %514, -2147483648
  %516 = and i32 %513, 2147483647
  %517 = or disjoint i32 %516, %515
  store i32 %517, ptr %498, align 4
  %518 = load i32, ptr %495, align 4
  %519 = and i32 %518, 1073741824
  %520 = and i32 %517, -1073741825
  %521 = or disjoint i32 %520, %519
  store i32 %521, ptr %498, align 4
  %522 = load i8, ptr %425, align 8
  %523 = and i8 %522, 1
  %524 = and i8 %470, -2
  %525 = or disjoint i8 %523, %524
  store i8 %525, ptr %428, align 8
  %526 = load i8, ptr %425, align 8
  %527 = and i8 %526, 2
  %528 = and i8 %525, -3
  %529 = or disjoint i8 %528, %527
  store i8 %529, ptr %428, align 8
  %530 = load i8, ptr %425, align 8
  %531 = and i8 %530, 4
  %532 = and i8 %529, -5
  %533 = or disjoint i8 %532, %531
  store i8 %533, ptr %428, align 8
  %534 = load i8, ptr %425, align 8
  %535 = and i8 %534, 112
  %536 = and i8 %533, -113
  %537 = or disjoint i8 %536, %535
  store i8 %537, ptr %428, align 8
  %538 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %539 = load i16, ptr %538, align 8, !tbaa !5
  %540 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 2
  store i16 %539, ptr %540, align 8, !tbaa !5
  %541 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  %542 = load i16, ptr %541, align 2, !tbaa !5
  %543 = getelementptr inbounds %struct.closure_type, ptr %359, i64 0, i32 4, i32 0, i32 3
  store i16 %542, ptr %543, align 2, !tbaa !5
  br label %549

544:                                              ; preds = %2
  %545 = zext i8 %4 to i32
  %546 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %547 = tail call ptr @Image(i32 noundef %545) #6
  %548 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %546, ptr noundef nonnull @.str.7, ptr noundef %547) #6
  br label %549

549:                                              ; preds = %266, %195, %211, %137, %320, %2, %97, %339, %51, %116, %544, %421, %27
  %550 = phi ptr [ null, %544 ], [ %359, %421 ], [ %283, %339 ], [ %52, %116 ], [ %52, %51 ], [ %28, %27 ], [ %52, %97 ], [ %0, %2 ], [ %283, %320 ], [ %138, %137 ], [ %212, %211 ], [ %138, %195 ], [ %212, %266 ]
  %551 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %552 = icmp eq ptr %551, %1
  %553 = getelementptr inbounds %struct.word_type, ptr %550, i64 0, i32 1, i32 0, i32 2
  br i1 %552, label %554, label %558

554:                                              ; preds = %549
  %555 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %556 = load i16, ptr %555, align 2, !tbaa !5
  store i16 %556, ptr %553, align 2, !tbaa !5
  %557 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  br label %562

558:                                              ; preds = %549
  %559 = getelementptr inbounds %struct.FILE_POS, ptr %1, i64 0, i32 2
  %560 = load i16, ptr %559, align 2, !tbaa !12
  store i16 %560, ptr %553, align 2, !tbaa !5
  %561 = getelementptr inbounds %struct.FILE_POS, ptr %1, i64 0, i32 3
  br label %562

562:                                              ; preds = %558, %554
  %563 = phi ptr [ %561, %558 ], [ %557, %554 ]
  %564 = getelementptr inbounds %struct.word_type, ptr %550, i64 0, i32 1, i32 0, i32 3
  %565 = load i32, ptr %563, align 4
  %566 = and i32 %565, 1048575
  %567 = load i32, ptr %564, align 4
  %568 = and i32 %567, -1048576
  %569 = or disjoint i32 %568, %566
  store i32 %569, ptr %564, align 4
  %570 = load i32, ptr %563, align 4
  %571 = and i32 %570, -1048576
  %572 = or disjoint i32 %571, %566
  store i32 %572, ptr %564, align 4
  ret ptr %550
}

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @InsertObject(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.GAP, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 4
  %8 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.STYLE, ptr %2, i64 0, i32 3
  br label %10

10:                                               ; preds = %248, %3
  %11 = phi ptr [ %244, %248 ], [ %0, %3 ]
  %12 = phi ptr [ %249, %248 ], [ poison, %3 ]
  %13 = phi i1 [ true, %248 ], [ false, %3 ]
  br label %14

14:                                               ; preds = %10, %97
  %15 = phi ptr [ %31, %97 ], [ %11, %10 ]
  %16 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !5
  switch i8 %17, label %370 [
    i8 11, label %18
    i8 12, label %18
    i8 5, label %375
    i8 20, label %375
    i8 21, label %375
    i8 22, label %375
    i8 23, label %375
    i8 8, label %375
    i8 6, label %375
    i8 7, label %375
    i8 4, label %375
    i8 2, label %375
    i8 94, label %375
    i8 95, label %375
    i8 45, label %375
    i8 46, label %375
    i8 18, label %219
    i8 19, label %219
    i8 16, label %219
    i8 15, label %219
    i8 9, label %219
    i8 24, label %239
    i8 25, label %239
    i8 47, label %239
    i8 48, label %239
    i8 49, label %239
    i8 36, label %239
    i8 37, label %239
    i8 38, label %239
    i8 39, label %239
    i8 40, label %239
    i8 41, label %239
    i8 30, label %239
    i8 31, label %239
    i8 32, label %239
    i8 33, label %239
    i8 96, label %239
    i8 97, label %239
    i8 98, label %239
    i8 99, label %239
    i8 50, label %239
    i8 51, label %239
    i8 34, label %239
    i8 35, label %239
    i8 26, label %239
    i8 27, label %239
    i8 28, label %239
    i8 29, label %239
    i8 44, label %239
    i8 42, label %239
    i8 43, label %239
    i8 17, label %250
  ]

18:                                               ; preds = %14, %14
  %19 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %20 = zext i8 %19 to i32
  store i32 %20, ptr @zz_size, align 4, !tbaa !10
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %27 = tail call ptr @GetMemory(i32 noundef %20, ptr noundef %26) #6
  br label %30

28:                                               ; preds = %18
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %29 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %29, ptr %22, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %27, %25 ], [ %23, %28 ]
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  store i8 17, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  store ptr %31, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !5
  store ptr %31, ptr %31, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1, i32 0, i32 2
  %37 = load i16, ptr %36, align 2, !tbaa !5
  %38 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1, i32 0, i32 2
  store i16 %37, ptr %38, align 2, !tbaa !5
  %39 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1048575
  %42 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -1048576
  %45 = or disjoint i32 %44, %41
  store i32 %45, ptr %42, align 4
  %46 = load i32, ptr %39, align 4
  %47 = and i32 %46, -1048576
  %48 = or disjoint i32 %47, %41
  store i32 %48, ptr %42, align 4
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, %15
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %31, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %62

54:                                               ; preds = %30
  %55 = load ptr, ptr %49, align 8, !tbaa !5
  %56 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1
  store ptr %55, ptr %56, align 8, !tbaa !5
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1, i32 1
  store ptr %51, ptr %57, align 8, !tbaa !5
  store ptr %15, ptr %50, align 8, !tbaa !5
  store ptr %15, ptr %49, align 8, !tbaa !5
  store ptr %51, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %31, ptr @zz_res, align 8, !tbaa !8
  store ptr %51, ptr @zz_hold, align 8, !tbaa !8
  %58 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %58, ptr @zz_tmp, align 8, !tbaa !8
  %59 = load ptr, ptr %34, align 8, !tbaa !5
  store ptr %59, ptr %56, align 8, !tbaa !5
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1, i32 1
  store ptr %51, ptr %60, align 8, !tbaa !5
  store ptr %58, ptr %34, align 8, !tbaa !5
  %61 = getelementptr inbounds [2 x %struct.LIST], ptr %58, i64 0, i64 1, i32 1
  store ptr %31, ptr %61, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %53, %54
  %63 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %64 = zext i8 %63 to i32
  store i32 %64, ptr @zz_size, align 4, !tbaa !10
  %65 = zext i8 %63 to i64
  %66 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %71 = tail call ptr @GetMemory(i32 noundef %64, ptr noundef %70) #6
  br label %74

72:                                               ; preds = %62
  store ptr %67, ptr @zz_hold, align 8, !tbaa !8
  %73 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %73, ptr %66, align 8, !tbaa !8
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi ptr [ %71, %69 ], [ %67, %72 ]
  %76 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 1
  store i8 0, ptr %76, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %75, ptr %77, align 8, !tbaa !5
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1
  store ptr %75, ptr %78, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.LIST, ptr %75, i64 0, i32 1
  store ptr %75, ptr %79, align 8, !tbaa !5
  store ptr %75, ptr %75, align 8, !tbaa !5
  store ptr %75, ptr @xx_link, align 8, !tbaa !8
  store ptr %75, ptr @zz_res, align 8, !tbaa !8
  store ptr %31, ptr @zz_hold, align 8, !tbaa !8
  %80 = load ptr, ptr %31, align 8, !tbaa !5
  store ptr %80, ptr @zz_tmp, align 8, !tbaa !8
  %81 = load ptr, ptr %75, align 8, !tbaa !5
  store ptr %81, ptr %31, align 8, !tbaa !5
  %82 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %83 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  store ptr %82, ptr %85, align 8, !tbaa !5
  %86 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %86, ptr %83, align 8, !tbaa !5
  %87 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %88 = getelementptr inbounds %struct.LIST, ptr %86, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !5
  %89 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %89, ptr @zz_res, align 8, !tbaa !8
  store ptr %15, ptr @zz_hold, align 8, !tbaa !8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %74
  %92 = load ptr, ptr %49, align 8, !tbaa !5
  store ptr %92, ptr @zz_tmp, align 8, !tbaa !8
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %94, ptr %49, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1, i32 1
  store ptr %15, ptr %95, align 8, !tbaa !5
  store ptr %92, ptr %93, align 8, !tbaa !5
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1, i32 1
  store ptr %89, ptr %96, align 8, !tbaa !5
  br label %97

97:                                               ; preds = %74, %91
  %98 = load i16, ptr %2, align 4
  %99 = and i16 %98, 128
  %100 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4
  %101 = load i16, ptr %100, align 8
  %102 = and i16 %101, -129
  %103 = or disjoint i16 %102, %99
  store i16 %103, ptr %100, align 8
  %104 = load i16, ptr %2, align 4
  %105 = and i16 %104, 256
  %106 = and i16 %103, -257
  %107 = or disjoint i16 %106, %105
  store i16 %107, ptr %100, align 8
  %108 = load i16, ptr %2, align 4
  %109 = and i16 %108, 512
  %110 = and i16 %107, -513
  %111 = or disjoint i16 %110, %109
  store i16 %111, ptr %100, align 8
  %112 = load i16, ptr %2, align 4
  %113 = and i16 %112, 7168
  %114 = and i16 %111, -7169
  %115 = or disjoint i16 %114, %113
  store i16 %115, ptr %100, align 8
  %116 = load i16, ptr %2, align 4
  %117 = and i16 %116, -8192
  %118 = and i16 %115, 8191
  %119 = or disjoint i16 %118, %117
  store i16 %119, ptr %100, align 8
  %120 = load i16, ptr %4, align 2, !tbaa !5
  %121 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !5
  %122 = load i8, ptr %5, align 4
  %123 = and i8 %122, 3
  %124 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 1
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, -4
  %127 = or disjoint i8 %126, %123
  store i8 %127, ptr %124, align 4
  %128 = load i8, ptr %5, align 4
  %129 = and i8 %128, 12
  %130 = and i8 %127, -13
  %131 = or disjoint i8 %130, %129
  store i8 %131, ptr %124, align 4
  %132 = load i8, ptr %5, align 4
  %133 = and i8 %132, 112
  %134 = and i8 %131, -113
  %135 = or disjoint i8 %134, %133
  store i8 %135, ptr %124, align 4
  %136 = load i8, ptr %2, align 4
  %137 = and i8 %136, 8
  %138 = trunc i16 %103 to i8
  %139 = and i8 %138, -9
  %140 = or disjoint i8 %139, %137
  store i8 %140, ptr %100, align 8
  %141 = load i16, ptr %5, align 4
  %142 = and i16 %141, 128
  %143 = load i16, ptr %124, align 4
  %144 = and i16 %143, -129
  %145 = or disjoint i16 %144, %142
  store i16 %145, ptr %124, align 4
  %146 = load i16, ptr %5, align 4
  %147 = and i16 %146, 256
  %148 = and i16 %145, -257
  %149 = or disjoint i16 %148, %147
  store i16 %149, ptr %124, align 4
  %150 = load i16, ptr %5, align 4
  %151 = and i16 %150, 512
  %152 = and i16 %149, -513
  %153 = or disjoint i16 %152, %151
  store i16 %153, ptr %124, align 4
  %154 = load i16, ptr %5, align 4
  %155 = and i16 %154, 7168
  %156 = and i16 %153, -7169
  %157 = or disjoint i16 %156, %155
  store i16 %157, ptr %124, align 4
  %158 = load i16, ptr %5, align 4
  %159 = and i16 %158, -8192
  %160 = and i16 %157, 8191
  %161 = or disjoint i16 %160, %159
  store i16 %161, ptr %124, align 4
  %162 = load i16, ptr %6, align 2, !tbaa !5
  %163 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %162, ptr %163, align 2, !tbaa !5
  %164 = load i32, ptr %7, align 4
  %165 = and i32 %164, 4095
  %166 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, -4096
  %169 = or disjoint i32 %168, %165
  store i32 %169, ptr %166, align 4
  %170 = load i32, ptr %7, align 4
  %171 = and i32 %170, 4190208
  %172 = and i32 %169, -4190209
  %173 = or disjoint i32 %172, %171
  store i32 %173, ptr %166, align 4
  %174 = load i32, ptr %7, align 4
  %175 = and i32 %174, 12582912
  %176 = and i32 %173, -12582913
  %177 = or disjoint i32 %176, %175
  store i32 %177, ptr %166, align 4
  %178 = load i32, ptr %7, align 4
  %179 = and i32 %178, 1056964608
  %180 = and i32 %177, -1056964609
  %181 = or disjoint i32 %180, %179
  store i32 %181, ptr %166, align 4
  %182 = load i32, ptr %7, align 4
  %183 = and i32 %182, -2147483648
  %184 = and i32 %181, 2147483647
  %185 = or disjoint i32 %184, %183
  store i32 %185, ptr %166, align 4
  %186 = load i32, ptr %7, align 4
  %187 = and i32 %186, 1073741824
  %188 = and i32 %185, -1073741825
  %189 = or disjoint i32 %188, %187
  store i32 %189, ptr %166, align 4
  %190 = load i8, ptr %2, align 4
  %191 = and i8 %190, 1
  %192 = and i8 %140, -2
  %193 = or disjoint i8 %191, %192
  store i8 %193, ptr %100, align 8
  %194 = load i8, ptr %2, align 4
  %195 = and i8 %194, 2
  %196 = and i8 %193, -3
  %197 = or disjoint i8 %196, %195
  store i8 %197, ptr %100, align 8
  %198 = load i8, ptr %2, align 4
  %199 = and i8 %198, 4
  %200 = and i8 %197, -5
  %201 = or disjoint i8 %200, %199
  store i8 %201, ptr %100, align 8
  %202 = load i8, ptr %2, align 4
  %203 = and i8 %202, 112
  %204 = and i8 %201, -113
  %205 = or disjoint i8 %204, %203
  store i8 %205, ptr %100, align 8
  %206 = load i16, ptr %8, align 4, !tbaa !15
  %207 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 2
  store i16 %206, ptr %207, align 8, !tbaa !5
  %208 = load i16, ptr %9, align 2, !tbaa !17
  %209 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 4, i32 0, i32 3
  store i16 %208, ptr %209, align 2, !tbaa !5
  %210 = load i8, ptr %2, align 4
  %211 = lshr i8 %210, 2
  %212 = getelementptr inbounds i8, ptr %31, i64 42
  %213 = load i16, ptr %212, align 2
  %214 = and i8 %211, 1
  %215 = zext nneg i8 %214 to i16
  %216 = shl nuw nsw i16 %215, 11
  %217 = and i16 %213, -2049
  %218 = or disjoint i16 %216, %217
  store i16 %218, ptr %212, align 2
  br label %14

219:                                              ; preds = %14, %14, %14, %14, %14
  %220 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !5
  %222 = icmp eq ptr %221, %15
  br i1 %222, label %375, label %223

223:                                              ; preds = %219, %234
  %224 = phi ptr [ %237, %234 ], [ %221, %219 ]
  %225 = load ptr, ptr %1, align 8, !tbaa !8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %375, label %227

227:                                              ; preds = %223, %227
  %228 = phi ptr [ %230, %227 ], [ %224, %223 ]
  %229 = getelementptr inbounds [2 x %struct.LIST], ptr %228, i64 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.word_type, ptr %230, i64 0, i32 1
  %232 = load i8, ptr %231, align 8, !tbaa !5
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %227, label %234

234:                                              ; preds = %227
  %235 = tail call ptr @InsertObject(ptr noundef nonnull %230, ptr noundef nonnull %1, ptr noundef %2)
  %236 = getelementptr inbounds %struct.LIST, ptr %224, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = icmp eq ptr %237, %15
  br i1 %238, label %375, label %223

239:                                              ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %240 = load ptr, ptr %15, align 8, !tbaa !5
  br label %241

241:                                              ; preds = %241, %239
  %242 = phi ptr [ %240, %239 ], [ %244, %241 ]
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1
  %246 = load i8, ptr %245, align 8, !tbaa !5
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %241, label %248

248:                                              ; preds = %241
  %249 = select i1 %13, ptr %12, ptr %15
  br label %10

250:                                              ; preds = %14
  %251 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %252 = zext i8 %251 to i32
  store i32 %252, ptr @zz_size, align 4, !tbaa !10
  %253 = zext i8 %251 to i64
  %254 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %259 = tail call ptr @GetMemory(i32 noundef %252, ptr noundef %258) #6
  store ptr %259, ptr @zz_hold, align 8, !tbaa !8
  br label %262

260:                                              ; preds = %250
  store ptr %255, ptr @zz_hold, align 8, !tbaa !8
  %261 = load ptr, ptr %255, align 8, !tbaa !5
  store ptr %261, ptr %254, align 8, !tbaa !8
  br label %262

262:                                              ; preds = %257, %260
  %263 = phi ptr [ %259, %257 ], [ %255, %260 ]
  %264 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 1
  store i8 1, ptr %264, align 8, !tbaa !5
  %265 = getelementptr inbounds [2 x %struct.LIST], ptr %263, i64 0, i64 1
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %263, i64 0, i64 1, i32 1
  store ptr %263, ptr %266, align 8, !tbaa !5
  store ptr %263, ptr %265, align 8, !tbaa !5
  %267 = getelementptr inbounds %struct.LIST, ptr %263, i64 0, i32 1
  store ptr %263, ptr %267, align 8, !tbaa !5
  store ptr %263, ptr %263, align 8, !tbaa !5
  %268 = getelementptr inbounds %struct.gapobj_type, ptr %263, i64 0, i32 3
  %269 = load i16, ptr %268, align 4
  %270 = and i16 %269, 127
  %271 = or disjoint i16 %270, 9728
  store i16 %271, ptr %268, align 4
  %272 = getelementptr inbounds %struct.gapobj_type, ptr %263, i64 0, i32 3, i32 1
  store i16 0, ptr %272, align 2, !tbaa !5
  %273 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 2
  %274 = getelementptr inbounds i8, ptr %263, i64 42
  store i8 0, ptr %274, align 2, !tbaa !5
  %275 = getelementptr inbounds i8, ptr %263, i64 41
  store i8 0, ptr %275, align 1, !tbaa !5
  %276 = load i32, ptr %273, align 8
  %277 = and i32 %276, -1610612737
  %278 = or disjoint i32 %277, 536870912
  store i32 %278, ptr %273, align 8
  %279 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %280 = zext i8 %279 to i32
  store i32 %280, ptr @zz_size, align 4, !tbaa !10
  %281 = zext i8 %279 to i64
  %282 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %262
  %286 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %287 = tail call ptr @GetMemory(i32 noundef %280, ptr noundef %286) #6
  br label %290

288:                                              ; preds = %262
  store ptr %283, ptr @zz_hold, align 8, !tbaa !8
  %289 = load ptr, ptr %283, align 8, !tbaa !5
  store ptr %289, ptr %282, align 8, !tbaa !8
  br label %290

290:                                              ; preds = %285, %288
  %291 = phi ptr [ %287, %285 ], [ %283, %288 ]
  %292 = getelementptr inbounds %struct.word_type, ptr %291, i64 0, i32 1
  store i8 0, ptr %292, align 8, !tbaa !5
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1, i32 1
  store ptr %291, ptr %293, align 8, !tbaa !5
  %294 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1
  store ptr %291, ptr %294, align 8, !tbaa !5
  %295 = getelementptr inbounds %struct.LIST, ptr %291, i64 0, i32 1
  store ptr %291, ptr %295, align 8, !tbaa !5
  store ptr %291, ptr %291, align 8, !tbaa !5
  store ptr %291, ptr @xx_link, align 8, !tbaa !8
  store ptr %291, ptr @zz_res, align 8, !tbaa !8
  %296 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  store ptr %297, ptr @zz_hold, align 8, !tbaa !8
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  store ptr %263, ptr @zz_hold, align 8, !tbaa !8
  br label %312

300:                                              ; preds = %290
  %301 = load ptr, ptr %297, align 8, !tbaa !5
  store ptr %301, ptr @zz_tmp, align 8, !tbaa !8
  %302 = load ptr, ptr %291, align 8, !tbaa !5
  store ptr %302, ptr %297, align 8, !tbaa !5
  %303 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %304 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.LIST, ptr %305, i64 0, i32 1
  store ptr %303, ptr %306, align 8, !tbaa !5
  %307 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %307, ptr %304, align 8, !tbaa !5
  %308 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %309 = getelementptr inbounds %struct.LIST, ptr %307, i64 0, i32 1
  store ptr %308, ptr %309, align 8, !tbaa !5
  %310 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %310, ptr @zz_res, align 8, !tbaa !8
  store ptr %263, ptr @zz_hold, align 8, !tbaa !8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %319, label %312

312:                                              ; preds = %299, %300
  %313 = phi ptr [ %291, %299 ], [ %310, %300 ]
  %314 = load ptr, ptr %265, align 8, !tbaa !5
  store ptr %314, ptr @zz_tmp, align 8, !tbaa !8
  %315 = getelementptr inbounds [2 x %struct.LIST], ptr %313, i64 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !5
  store ptr %316, ptr %265, align 8, !tbaa !5
  %317 = getelementptr inbounds [2 x %struct.LIST], ptr %316, i64 0, i64 1, i32 1
  store ptr %263, ptr %317, align 8, !tbaa !5
  store ptr %314, ptr %315, align 8, !tbaa !5
  %318 = getelementptr inbounds [2 x %struct.LIST], ptr %314, i64 0, i64 1, i32 1
  store ptr %313, ptr %318, align 8, !tbaa !5
  br label %319

319:                                              ; preds = %300, %312
  %320 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %321 = zext i8 %320 to i32
  store i32 %321, ptr @zz_size, align 4, !tbaa !10
  %322 = zext i8 %320 to i64
  %323 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !8
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %319
  %327 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %328 = tail call ptr @GetMemory(i32 noundef %321, ptr noundef %327) #6
  br label %331

329:                                              ; preds = %319
  store ptr %324, ptr @zz_hold, align 8, !tbaa !8
  %330 = load ptr, ptr %324, align 8, !tbaa !5
  store ptr %330, ptr %323, align 8, !tbaa !8
  br label %331

331:                                              ; preds = %326, %329
  %332 = phi ptr [ %328, %326 ], [ %324, %329 ]
  %333 = getelementptr inbounds %struct.word_type, ptr %332, i64 0, i32 1
  store i8 0, ptr %333, align 8, !tbaa !5
  %334 = getelementptr inbounds [2 x %struct.LIST], ptr %332, i64 0, i64 1, i32 1
  store ptr %332, ptr %334, align 8, !tbaa !5
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %332, i64 0, i64 1
  store ptr %332, ptr %335, align 8, !tbaa !5
  %336 = getelementptr inbounds %struct.LIST, ptr %332, i64 0, i32 1
  store ptr %332, ptr %336, align 8, !tbaa !5
  store ptr %332, ptr %332, align 8, !tbaa !5
  store ptr %332, ptr @xx_link, align 8, !tbaa !8
  store ptr %332, ptr @zz_res, align 8, !tbaa !8
  %337 = load ptr, ptr %296, align 8, !tbaa !5
  store ptr %337, ptr @zz_hold, align 8, !tbaa !8
  %338 = icmp eq ptr %337, null
  br i1 %338, label %350, label %339

339:                                              ; preds = %331
  %340 = load ptr, ptr %337, align 8, !tbaa !5
  store ptr %340, ptr @zz_tmp, align 8, !tbaa !8
  %341 = load ptr, ptr %332, align 8, !tbaa !5
  store ptr %341, ptr %337, align 8, !tbaa !5
  %342 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %343 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %344 = load ptr, ptr %343, align 8, !tbaa !5
  %345 = getelementptr inbounds %struct.LIST, ptr %344, i64 0, i32 1
  store ptr %342, ptr %345, align 8, !tbaa !5
  %346 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %346, ptr %343, align 8, !tbaa !5
  %347 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %348 = getelementptr inbounds %struct.LIST, ptr %346, i64 0, i32 1
  store ptr %347, ptr %348, align 8, !tbaa !5
  %349 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %350

350:                                              ; preds = %331, %339
  %351 = phi ptr [ %332, %331 ], [ %349, %339 ]
  store ptr %351, ptr @zz_res, align 8, !tbaa !8
  %352 = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %352, ptr @zz_hold, align 8, !tbaa !8
  %353 = icmp eq ptr %352, null
  %354 = icmp eq ptr %351, null
  %355 = select i1 %353, i1 true, i1 %354
  br i1 %355, label %364, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds [2 x %struct.LIST], ptr %352, i64 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !5
  store ptr %358, ptr @zz_tmp, align 8, !tbaa !8
  %359 = getelementptr inbounds [2 x %struct.LIST], ptr %351, i64 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !5
  store ptr %360, ptr %357, align 8, !tbaa !5
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %360, i64 0, i64 1, i32 1
  store ptr %352, ptr %361, align 8, !tbaa !5
  store ptr %358, ptr %359, align 8, !tbaa !5
  %362 = getelementptr inbounds [2 x %struct.LIST], ptr %358, i64 0, i64 1, i32 1
  store ptr %351, ptr %362, align 8, !tbaa !5
  %363 = load ptr, ptr %1, align 8, !tbaa !8
  br label %364

364:                                              ; preds = %350, %356
  %365 = phi ptr [ %352, %350 ], [ %363, %356 ]
  %366 = getelementptr inbounds %struct.word_type, ptr %365, i64 0, i32 2
  %367 = load i32, ptr %366, align 8
  %368 = and i32 %367, -1610612737
  %369 = or disjoint i32 %368, 536870912
  store i32 %369, ptr %366, align 8
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %375

370:                                              ; preds = %14
  %371 = zext i8 %17 to i32
  %372 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %373 = tail call ptr @Image(i32 noundef %371) #6
  %374 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %372, ptr noundef nonnull @.str.8, ptr noundef %373) #6
  br label %375

375:                                              ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %234, %223, %219, %370, %364
  %376 = select i1 %13, ptr %12, ptr %15
  ret ptr %376
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Meld(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x [32 x i8]], align 16
  %4 = alloca [32 x [32 x i8]], align 16
  %5 = alloca [32 x ptr], align 16
  %6 = alloca [32 x ptr], align 16
  %7 = alloca [32 x ptr], align 16
  %8 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #6
  %9 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i8 %10, 17
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %14 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %13, ptr noundef nonnull @.str.9) #6
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !5
  %18 = icmp eq i8 %17, 17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %21 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %20, ptr noundef nonnull @.str.10) #6
  br label %22

22:                                               ; preds = %19, %15
  store ptr null, ptr %5, align 16, !tbaa !8
  %23 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %134, label %26

26:                                               ; preds = %22, %62
  %27 = phi ptr [ %64, %62 ], [ %24, %22 ]
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %31, %28 ], [ %27, %26 ]
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !5
  switch i8 %33, label %59 [
    i8 0, label %28
    i8 1, label %62
    i8 9, label %34
  ]

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %36, %34 ], [ %40, %37 ]
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %37, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %31, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %45, %44 ], [ %49, %46 ]
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.word_type, ptr %49, i64 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %46, label %53

53:                                               ; preds = %46
  %54 = add i8 %42, -100
  %55 = icmp ult i8 %54, -91
  %56 = add i8 %51, -100
  %57 = icmp ult i8 %56, -91
  %58 = or i1 %55, %57
  br i1 %58, label %62, label %66

59:                                               ; preds = %28
  %60 = add i8 %33, -9
  %61 = icmp ult i8 %60, 91
  br i1 %61, label %66, label %62

62:                                               ; preds = %28, %59, %53
  %63 = getelementptr inbounds %struct.LIST, ptr %27, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %134, label %26

66:                                               ; preds = %53, %59
  %67 = icmp eq ptr %27, %0
  br i1 %67, label %134, label %68

68:                                               ; preds = %66, %130
  %69 = phi i64 [ %79, %130 ], [ 1, %66 ]
  %70 = phi ptr [ %85, %130 ], [ null, %66 ]
  %71 = phi ptr [ %89, %130 ], [ %31, %66 ]
  %72 = phi ptr [ %84, %130 ], [ %27, %66 ]
  %73 = icmp ugt i64 %69, 31
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull @.str.12, i32 noundef 31) #6
  br label %76

76:                                               ; preds = %74, %68
  %77 = getelementptr inbounds [32 x ptr], ptr %5, i64 0, i64 %69
  store ptr %71, ptr %77, align 8, !tbaa !8
  %78 = getelementptr inbounds [32 x ptr], ptr %7, i64 0, i64 %69
  store ptr %70, ptr %78, align 8, !tbaa !8
  %79 = add nuw i64 %69, 1
  %80 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %132, label %83

83:                                               ; preds = %76, %125
  %84 = phi ptr [ %128, %125 ], [ %81, %76 ]
  %85 = phi ptr [ %126, %125 ], [ null, %76 ]
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.word_type, ptr %89, i64 0, i32 1
  %91 = load i8, ptr %90, align 8, !tbaa !5
  switch i8 %91, label %117 [
    i8 0, label %86
    i8 1, label %125
    i8 9, label %92
  ]

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %94, %92 ], [ %98, %95 ]
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %95, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %89, align 8, !tbaa !5
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi ptr [ %103, %102 ], [ %107, %104 ]
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %104, label %111

111:                                              ; preds = %104
  %112 = add i8 %100, -100
  %113 = icmp ult i8 %112, -91
  %114 = add i8 %109, -100
  %115 = icmp ult i8 %114, -91
  %116 = or i1 %113, %115
  br i1 %116, label %125, label %120

117:                                              ; preds = %86
  %118 = add i8 %91, -9
  %119 = icmp ult i8 %118, 91
  br i1 %119, label %120, label %125

120:                                              ; preds = %117, %111
  %121 = icmp eq ptr %85, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %120
  %123 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %124 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %123, ptr noundef nonnull @.str.13) #6
  br label %130

125:                                              ; preds = %86, %117, %111
  %126 = phi ptr [ %85, %111 ], [ %85, %117 ], [ %89, %86 ]
  %127 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = icmp eq ptr %128, %0
  br i1 %129, label %132, label %83

130:                                              ; preds = %120, %122
  %131 = icmp eq ptr %84, %0
  br i1 %131, label %132, label %68

132:                                              ; preds = %76, %130, %125
  %133 = trunc i64 %79 to i32
  br label %134

134:                                              ; preds = %62, %22, %132, %66
  %135 = phi i32 [ 1, %66 ], [ %133, %132 ], [ 1, %22 ], [ 1, %62 ]
  store ptr null, ptr %6, align 16, !tbaa !8
  %136 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = icmp eq ptr %137, %1
  br i1 %138, label %248, label %139

139:                                              ; preds = %134, %175
  %140 = phi ptr [ %177, %175 ], [ %137, %134 ]
  br label %141

141:                                              ; preds = %139, %141
  %142 = phi ptr [ %144, %141 ], [ %140, %139 ]
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %142, i64 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.word_type, ptr %144, i64 0, i32 1
  %146 = load i8, ptr %145, align 8, !tbaa !5
  switch i8 %146, label %172 [
    i8 0, label %141
    i8 1, label %175
    i8 9, label %147
  ]

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  br label %150

150:                                              ; preds = %150, %147
  %151 = phi ptr [ %149, %147 ], [ %153, %150 ]
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.word_type, ptr %153, i64 0, i32 1
  %155 = load i8, ptr %154, align 8, !tbaa !5
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %150, label %157

157:                                              ; preds = %150
  %158 = load ptr, ptr %144, align 8, !tbaa !5
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi ptr [ %158, %157 ], [ %162, %159 ]
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %160, i64 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.word_type, ptr %162, i64 0, i32 1
  %164 = load i8, ptr %163, align 8, !tbaa !5
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %159, label %166

166:                                              ; preds = %159
  %167 = add i8 %155, -100
  %168 = icmp ult i8 %167, -91
  %169 = add i8 %164, -100
  %170 = icmp ult i8 %169, -91
  %171 = or i1 %168, %170
  br i1 %171, label %175, label %179

172:                                              ; preds = %141
  %173 = add i8 %146, -9
  %174 = icmp ult i8 %173, 91
  br i1 %174, label %179, label %175

175:                                              ; preds = %141, %172, %166
  %176 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !5
  %178 = icmp eq ptr %177, %1
  br i1 %178, label %248, label %139

179:                                              ; preds = %166, %172
  %180 = icmp eq ptr %140, %1
  br i1 %180, label %248, label %181

181:                                              ; preds = %179, %243
  %182 = phi i64 [ %192, %243 ], [ 1, %179 ]
  %183 = phi ptr [ %198, %243 ], [ null, %179 ]
  %184 = phi ptr [ %202, %243 ], [ %144, %179 ]
  %185 = phi ptr [ %197, %243 ], [ %140, %179 ]
  %186 = icmp ugt i64 %182, 31
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %16, ptr noundef nonnull @.str.12, i32 noundef 31) #6
  br label %189

189:                                              ; preds = %187, %181
  %190 = getelementptr inbounds [32 x ptr], ptr %6, i64 0, i64 %182
  store ptr %184, ptr %190, align 8, !tbaa !8
  %191 = getelementptr inbounds [32 x ptr], ptr %8, i64 0, i64 %182
  store ptr %183, ptr %191, align 8, !tbaa !8
  %192 = add nuw i64 %182, 1
  %193 = getelementptr inbounds %struct.LIST, ptr %185, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !5
  %195 = icmp eq ptr %194, %1
  br i1 %195, label %245, label %196

196:                                              ; preds = %189, %238
  %197 = phi ptr [ %241, %238 ], [ %194, %189 ]
  %198 = phi ptr [ %239, %238 ], [ null, %189 ]
  br label %199

199:                                              ; preds = %196, %199
  %200 = phi ptr [ %202, %199 ], [ %197, %196 ]
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.word_type, ptr %202, i64 0, i32 1
  %204 = load i8, ptr %203, align 8, !tbaa !5
  switch i8 %204, label %230 [
    i8 0, label %199
    i8 1, label %238
    i8 9, label %205
  ]

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  br label %208

208:                                              ; preds = %208, %205
  %209 = phi ptr [ %207, %205 ], [ %211, %208 ]
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !5
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %208, label %215

215:                                              ; preds = %208
  %216 = load ptr, ptr %202, align 8, !tbaa !5
  br label %217

217:                                              ; preds = %217, %215
  %218 = phi ptr [ %216, %215 ], [ %220, %217 ]
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %218, i64 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  %221 = getelementptr inbounds %struct.word_type, ptr %220, i64 0, i32 1
  %222 = load i8, ptr %221, align 8, !tbaa !5
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %217, label %224

224:                                              ; preds = %217
  %225 = add i8 %213, -100
  %226 = icmp ult i8 %225, -91
  %227 = add i8 %222, -100
  %228 = icmp ult i8 %227, -91
  %229 = or i1 %226, %228
  br i1 %229, label %238, label %233

230:                                              ; preds = %199
  %231 = add i8 %204, -9
  %232 = icmp ult i8 %231, 91
  br i1 %232, label %233, label %238

233:                                              ; preds = %230, %224
  %234 = icmp eq ptr %198, null
  br i1 %234, label %235, label %243

235:                                              ; preds = %233
  %236 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %237 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %236, ptr noundef nonnull @.str.13) #6
  br label %243

238:                                              ; preds = %199, %230, %224
  %239 = phi ptr [ %198, %224 ], [ %198, %230 ], [ %202, %199 ]
  %240 = getelementptr inbounds %struct.LIST, ptr %197, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !5
  %242 = icmp eq ptr %241, %1
  br i1 %242, label %245, label %196

243:                                              ; preds = %233, %235
  %244 = icmp eq ptr %197, %1
  br i1 %244, label %245, label %181

245:                                              ; preds = %189, %243, %238
  %246 = phi ptr [ %239, %238 ], [ null, %189 ], [ %198, %243 ]
  %247 = trunc i64 %192 to i32
  br label %248

248:                                              ; preds = %175, %134, %245, %179
  %249 = phi ptr [ null, %179 ], [ %246, %245 ], [ null, %134 ], [ null, %175 ]
  %250 = phi i32 [ 1, %179 ], [ %247, %245 ], [ 1, %134 ], [ 1, %175 ]
  store i8 0, ptr %3, align 16, !tbaa !5
  store i8 0, ptr %4, align 16, !tbaa !5
  %251 = icmp ugt i32 %135, 1
  br i1 %251, label %252, label %267

252:                                              ; preds = %248
  %253 = zext i32 %135 to i64
  %254 = add nsw i64 %253, -1
  %255 = and i64 %254, 1
  %256 = icmp eq i32 %135, 2
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = and i64 %254, -2
  br label %274

259:                                              ; preds = %274, %252
  %260 = phi i64 [ 1, %252 ], [ %282, %274 ]
  %261 = icmp eq i64 %255, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %260
  store i8 0, ptr %263, align 16, !tbaa !5
  %264 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %260
  store i8 1, ptr %264, align 16, !tbaa !5
  br label %265

265:                                              ; preds = %259, %262
  %266 = icmp ugt i32 %250, 1
  br i1 %266, label %285, label %368

267:                                              ; preds = %248
  %268 = icmp ugt i32 %250, 1
  br i1 %268, label %269, label %368

269:                                              ; preds = %267
  %270 = getelementptr inbounds i8, ptr %3, i64 1
  %271 = add i32 %250, -1
  %272 = zext i32 %271 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %270, i8 0, i64 %272, i1 false), !tbaa !5
  %273 = getelementptr inbounds i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %273, i8 2, i64 %272, i1 false), !tbaa !5
  br label %368

274:                                              ; preds = %274, %257
  %275 = phi i64 [ 1, %257 ], [ %282, %274 ]
  %276 = phi i64 [ 0, %257 ], [ %283, %274 ]
  %277 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %275
  store i8 0, ptr %277, align 16, !tbaa !5
  %278 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %275
  store i8 1, ptr %278, align 16, !tbaa !5
  %279 = add nuw nsw i64 %275, 1
  %280 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %279
  store i8 0, ptr %280, align 16, !tbaa !5
  %281 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %279
  store i8 1, ptr %281, align 16, !tbaa !5
  %282 = add nuw nsw i64 %275, 2
  %283 = add i64 %276, 2
  %284 = icmp eq i64 %283, %258
  br i1 %284, label %259, label %274

285:                                              ; preds = %265
  %286 = getelementptr inbounds i8, ptr %3, i64 1
  %287 = add i32 %250, -1
  %288 = zext i32 %287 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %286, i8 0, i64 %288, i1 false), !tbaa !5
  %289 = getelementptr inbounds i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %289, i8 2, i64 %288, i1 false), !tbaa !5
  br i1 %251, label %290, label %368

290:                                              ; preds = %285
  %291 = zext i32 %135 to i64
  %292 = zext i32 %250 to i64
  %293 = zext i32 %250 to i64
  br label %294

294:                                              ; preds = %290, %332
  %295 = phi i64 [ 1, %290 ], [ %333, %332 ]
  %296 = getelementptr inbounds [32 x ptr], ptr %5, i64 0, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !8
  %298 = getelementptr inbounds %struct.word_type, ptr %297, i64 0, i32 1
  %299 = load i8, ptr %298, align 8, !tbaa !5
  %300 = add i8 %299, -11
  %301 = icmp ult i8 %300, 2
  %302 = getelementptr inbounds %struct.word_type, ptr %297, i64 0, i32 4
  %303 = add nsw i64 %295, -1
  br i1 %301, label %335, label %304

304:                                              ; preds = %294, %329
  %305 = phi i64 [ %330, %329 ], [ 1, %294 ]
  %306 = getelementptr inbounds [32 x ptr], ptr %6, i64 0, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !8
  %308 = getelementptr inbounds %struct.word_type, ptr %307, i64 0, i32 1
  %309 = load i8, ptr %308, align 8, !tbaa !5
  %310 = icmp eq i8 %299, %309
  br i1 %310, label %322, label %311

311:                                              ; preds = %304
  %312 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %303, i64 %305
  %313 = load i8, ptr %312, align 1, !tbaa !5
  %314 = add nsw i64 %305, -1
  %315 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !5
  %317 = icmp sgt i8 %313, %316
  %318 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %305
  %319 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %295, i64 %305
  br i1 %317, label %321, label %320

320:                                              ; preds = %311
  store i8 %316, ptr %318, align 1, !tbaa !5
  store i8 2, ptr %319, align 1, !tbaa !5
  br label %329

321:                                              ; preds = %311
  store i8 %313, ptr %318, align 1, !tbaa !5
  store i8 1, ptr %319, align 1, !tbaa !5
  br label %329

322:                                              ; preds = %304
  %323 = add nsw i64 %305, -1
  %324 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %303, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !5
  %326 = add i8 %325, 1
  %327 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %305
  store i8 %326, ptr %327, align 1, !tbaa !5
  %328 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %295, i64 %305
  store i8 3, ptr %328, align 1, !tbaa !5
  br label %329

329:                                              ; preds = %322, %321, %320
  %330 = add nuw nsw i64 %305, 1
  %331 = icmp eq i64 %330, %292
  br i1 %331, label %332, label %304

332:                                              ; preds = %329, %365
  %333 = add nuw nsw i64 %295, 1
  %334 = icmp eq i64 %333, %291
  br i1 %334, label %368, label %294

335:                                              ; preds = %294, %365
  %336 = phi i64 [ %366, %365 ], [ 1, %294 ]
  %337 = getelementptr inbounds [32 x ptr], ptr %6, i64 0, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !8
  %339 = getelementptr inbounds %struct.word_type, ptr %338, i64 0, i32 1
  %340 = load i8, ptr %339, align 8, !tbaa !5
  %341 = add i8 %340, -11
  %342 = icmp ult i8 %341, 2
  br i1 %342, label %343, label %347

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.word_type, ptr %338, i64 0, i32 4
  %345 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %302, ptr noundef nonnull dereferenceable(1) %344) #7
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %358, label %347

347:                                              ; preds = %343, %335
  %348 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %303, i64 %336
  %349 = load i8, ptr %348, align 1, !tbaa !5
  %350 = add nsw i64 %336, -1
  %351 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = icmp sgt i8 %349, %352
  %354 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %336
  %355 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %295, i64 %336
  br i1 %353, label %357, label %356

356:                                              ; preds = %347
  store i8 %352, ptr %354, align 1, !tbaa !5
  store i8 2, ptr %355, align 1, !tbaa !5
  br label %365

357:                                              ; preds = %347
  store i8 %349, ptr %354, align 1, !tbaa !5
  store i8 1, ptr %355, align 1, !tbaa !5
  br label %365

358:                                              ; preds = %343
  %359 = add nsw i64 %336, -1
  %360 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %303, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !5
  %362 = add i8 %361, 1
  %363 = getelementptr inbounds [32 x [32 x i8]], ptr %3, i64 0, i64 %295, i64 %336
  store i8 %362, ptr %363, align 1, !tbaa !5
  %364 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %295, i64 %336
  store i8 3, ptr %364, align 1, !tbaa !5
  br label %365

365:                                              ; preds = %358, %357, %356
  %366 = add nuw nsw i64 %336, 1
  %367 = icmp eq i64 %366, %293
  br i1 %367, label %332, label %335

368:                                              ; preds = %332, %265, %267, %269, %285
  %369 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %370 = zext i8 %369 to i32
  store i32 %370, ptr @zz_size, align 4, !tbaa !10
  %371 = zext i8 %369 to i64
  %372 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %377 = tail call ptr @GetMemory(i32 noundef %370, ptr noundef %376) #6
  store ptr %377, ptr @zz_hold, align 8, !tbaa !8
  br label %380

378:                                              ; preds = %368
  store ptr %373, ptr @zz_hold, align 8, !tbaa !8
  %379 = load ptr, ptr %373, align 8, !tbaa !5
  store ptr %379, ptr %372, align 8, !tbaa !8
  br label %380

380:                                              ; preds = %375, %378
  %381 = phi ptr [ %377, %375 ], [ %373, %378 ]
  %382 = getelementptr inbounds %struct.word_type, ptr %381, i64 0, i32 1
  store i8 17, ptr %382, align 8, !tbaa !5
  %383 = getelementptr inbounds [2 x %struct.LIST], ptr %381, i64 0, i64 1, i32 1
  store ptr %381, ptr %383, align 8, !tbaa !5
  %384 = getelementptr inbounds [2 x %struct.LIST], ptr %381, i64 0, i64 1
  store ptr %381, ptr %384, align 8, !tbaa !5
  %385 = getelementptr inbounds %struct.LIST, ptr %381, i64 0, i32 1
  store ptr %381, ptr %385, align 8, !tbaa !5
  store ptr %381, ptr %381, align 8, !tbaa !5
  %386 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %387 = load i16, ptr %386, align 8
  %388 = and i16 %387, 128
  %389 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4
  %390 = load i16, ptr %389, align 8
  %391 = and i16 %390, -129
  %392 = or disjoint i16 %391, %388
  store i16 %392, ptr %389, align 8
  %393 = load i16, ptr %386, align 8
  %394 = and i16 %393, 256
  %395 = and i16 %392, -257
  %396 = or disjoint i16 %395, %394
  store i16 %396, ptr %389, align 8
  %397 = load i16, ptr %386, align 8
  %398 = and i16 %397, 512
  %399 = and i16 %396, -513
  %400 = or disjoint i16 %399, %398
  store i16 %400, ptr %389, align 8
  %401 = load i16, ptr %386, align 8
  %402 = and i16 %401, 7168
  %403 = and i16 %400, -7169
  %404 = or disjoint i16 %403, %402
  store i16 %404, ptr %389, align 8
  %405 = load i16, ptr %386, align 8
  %406 = and i16 %405, -8192
  %407 = and i16 %404, 8191
  %408 = or disjoint i16 %407, %406
  store i16 %408, ptr %389, align 8
  %409 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %410 = load i16, ptr %409, align 2, !tbaa !5
  %411 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %410, ptr %411, align 2, !tbaa !5
  %412 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %413 = load i8, ptr %412, align 4
  %414 = and i8 %413, 3
  %415 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 1
  %416 = load i8, ptr %415, align 4
  %417 = and i8 %416, -4
  %418 = or disjoint i8 %417, %414
  store i8 %418, ptr %415, align 4
  %419 = load i8, ptr %412, align 4
  %420 = and i8 %419, 12
  %421 = and i8 %418, -13
  %422 = or disjoint i8 %421, %420
  store i8 %422, ptr %415, align 4
  %423 = load i8, ptr %412, align 4
  %424 = and i8 %423, 112
  %425 = and i8 %422, -113
  %426 = or disjoint i8 %425, %424
  store i8 %426, ptr %415, align 4
  %427 = load i8, ptr %386, align 8
  %428 = and i8 %427, 8
  %429 = trunc i16 %392 to i8
  %430 = and i8 %429, -9
  %431 = or disjoint i8 %430, %428
  store i8 %431, ptr %389, align 8
  %432 = load i16, ptr %412, align 4
  %433 = and i16 %432, 128
  %434 = load i16, ptr %415, align 4
  %435 = and i16 %434, -129
  %436 = or disjoint i16 %435, %433
  store i16 %436, ptr %415, align 4
  %437 = load i16, ptr %412, align 4
  %438 = and i16 %437, 256
  %439 = and i16 %436, -257
  %440 = or disjoint i16 %439, %438
  store i16 %440, ptr %415, align 4
  %441 = load i16, ptr %412, align 4
  %442 = and i16 %441, 512
  %443 = and i16 %440, -513
  %444 = or disjoint i16 %443, %442
  store i16 %444, ptr %415, align 4
  %445 = load i16, ptr %412, align 4
  %446 = and i16 %445, 7168
  %447 = and i16 %444, -7169
  %448 = or disjoint i16 %447, %446
  store i16 %448, ptr %415, align 4
  %449 = load i16, ptr %412, align 4
  %450 = and i16 %449, -8192
  %451 = and i16 %448, 8191
  %452 = or disjoint i16 %451, %450
  store i16 %452, ptr %415, align 4
  %453 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %454 = load i16, ptr %453, align 2, !tbaa !5
  %455 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %454, ptr %455, align 2, !tbaa !5
  %456 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %457 = load i32, ptr %456, align 4
  %458 = and i32 %457, 4095
  %459 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 4
  %460 = load i32, ptr %459, align 4
  %461 = and i32 %460, -4096
  %462 = or disjoint i32 %461, %458
  store i32 %462, ptr %459, align 4
  %463 = load i32, ptr %456, align 4
  %464 = and i32 %463, 4190208
  %465 = and i32 %462, -4190209
  %466 = or disjoint i32 %465, %464
  store i32 %466, ptr %459, align 4
  %467 = load i32, ptr %456, align 4
  %468 = and i32 %467, 12582912
  %469 = and i32 %466, -12582913
  %470 = or disjoint i32 %469, %468
  store i32 %470, ptr %459, align 4
  %471 = load i32, ptr %456, align 4
  %472 = and i32 %471, 1056964608
  %473 = and i32 %470, -1056964609
  %474 = or disjoint i32 %473, %472
  store i32 %474, ptr %459, align 4
  %475 = load i32, ptr %456, align 4
  %476 = and i32 %475, -2147483648
  %477 = and i32 %474, 2147483647
  %478 = or disjoint i32 %477, %476
  store i32 %478, ptr %459, align 4
  %479 = load i32, ptr %456, align 4
  %480 = and i32 %479, 1073741824
  %481 = and i32 %478, -1073741825
  %482 = or disjoint i32 %481, %480
  store i32 %482, ptr %459, align 4
  %483 = load i8, ptr %386, align 8
  %484 = and i8 %483, 1
  %485 = and i8 %431, -2
  %486 = or disjoint i8 %484, %485
  store i8 %486, ptr %389, align 8
  %487 = load i8, ptr %386, align 8
  %488 = and i8 %487, 2
  %489 = and i8 %486, -3
  %490 = or disjoint i8 %489, %488
  store i8 %490, ptr %389, align 8
  %491 = load i8, ptr %386, align 8
  %492 = and i8 %491, 4
  %493 = and i8 %490, -5
  %494 = or disjoint i8 %493, %492
  store i8 %494, ptr %389, align 8
  %495 = load i8, ptr %386, align 8
  %496 = and i8 %495, 112
  %497 = and i8 %494, -113
  %498 = or disjoint i8 %497, %496
  store i8 %498, ptr %389, align 8
  %499 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %500 = load i16, ptr %499, align 8, !tbaa !5
  %501 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 2
  store i16 %500, ptr %501, align 8, !tbaa !5
  %502 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  %503 = load i16, ptr %502, align 2, !tbaa !5
  %504 = getelementptr inbounds %struct.closure_type, ptr %381, i64 0, i32 4, i32 0, i32 3
  store i16 %503, ptr %504, align 2, !tbaa !5
  %505 = add nsw i32 %135, -1
  %506 = add nsw i32 %250, -1
  br label %507

507:                                              ; preds = %852, %380
  %508 = phi ptr [ %249, %380 ], [ %853, %852 ]
  %509 = phi i32 [ %505, %380 ], [ %665, %852 ]
  %510 = phi i32 [ %506, %380 ], [ %666, %852 ]
  %511 = sext i32 %509 to i64
  %512 = sext i32 %510 to i64
  %513 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %511, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !5
  switch i8 %514, label %663 [
    i8 0, label %854
    i8 3, label %515
    i8 2, label %565
    i8 1, label %614
  ]

515:                                              ; preds = %507
  %516 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %517 = zext i8 %516 to i32
  store i32 %517, ptr @zz_size, align 4, !tbaa !10
  %518 = zext i8 %516 to i64
  %519 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !8
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %525

522:                                              ; preds = %515
  %523 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %524 = tail call ptr @GetMemory(i32 noundef %517, ptr noundef %523) #6
  br label %527

525:                                              ; preds = %515
  store ptr %520, ptr @zz_hold, align 8, !tbaa !8
  %526 = load ptr, ptr %520, align 8, !tbaa !5
  store ptr %526, ptr %519, align 8, !tbaa !8
  br label %527

527:                                              ; preds = %522, %525
  %528 = phi ptr [ %524, %522 ], [ %520, %525 ]
  %529 = getelementptr inbounds %struct.word_type, ptr %528, i64 0, i32 1
  store i8 0, ptr %529, align 8, !tbaa !5
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %528, i64 0, i64 1, i32 1
  store ptr %528, ptr %530, align 8, !tbaa !5
  %531 = getelementptr inbounds [2 x %struct.LIST], ptr %528, i64 0, i64 1
  store ptr %528, ptr %531, align 8, !tbaa !5
  %532 = getelementptr inbounds %struct.LIST, ptr %528, i64 0, i32 1
  store ptr %528, ptr %532, align 8, !tbaa !5
  store ptr %528, ptr %528, align 8, !tbaa !5
  store ptr %528, ptr @xx_link, align 8, !tbaa !8
  store ptr %528, ptr @zz_res, align 8, !tbaa !8
  %533 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %533, ptr @zz_hold, align 8, !tbaa !8
  %534 = icmp eq ptr %533, null
  br i1 %534, label %546, label %535

535:                                              ; preds = %527
  %536 = load ptr, ptr %533, align 8, !tbaa !5
  store ptr %536, ptr @zz_tmp, align 8, !tbaa !8
  %537 = load ptr, ptr %528, align 8, !tbaa !5
  store ptr %537, ptr %533, align 8, !tbaa !5
  %538 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %539 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %540 = load ptr, ptr %539, align 8, !tbaa !5
  %541 = getelementptr inbounds %struct.LIST, ptr %540, i64 0, i32 1
  store ptr %538, ptr %541, align 8, !tbaa !5
  %542 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %542, ptr %539, align 8, !tbaa !5
  %543 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %544 = getelementptr inbounds %struct.LIST, ptr %542, i64 0, i32 1
  store ptr %543, ptr %544, align 8, !tbaa !5
  %545 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %546

546:                                              ; preds = %527, %535
  %547 = phi ptr [ %528, %527 ], [ %545, %535 ]
  store ptr %547, ptr @zz_res, align 8, !tbaa !8
  %548 = getelementptr inbounds [32 x ptr], ptr %5, i64 0, i64 %511
  %549 = load ptr, ptr %548, align 8, !tbaa !8
  store ptr %549, ptr @zz_hold, align 8, !tbaa !8
  %550 = icmp eq ptr %549, null
  %551 = icmp eq ptr %547, null
  %552 = select i1 %550, i1 true, i1 %551
  br i1 %552, label %560, label %553

553:                                              ; preds = %546
  %554 = getelementptr inbounds [2 x %struct.LIST], ptr %549, i64 0, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !5
  store ptr %555, ptr @zz_tmp, align 8, !tbaa !8
  %556 = getelementptr inbounds [2 x %struct.LIST], ptr %547, i64 0, i64 1
  %557 = load ptr, ptr %556, align 8, !tbaa !5
  store ptr %557, ptr %554, align 8, !tbaa !5
  %558 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1, i32 1
  store ptr %549, ptr %558, align 8, !tbaa !5
  store ptr %555, ptr %556, align 8, !tbaa !5
  %559 = getelementptr inbounds [2 x %struct.LIST], ptr %555, i64 0, i64 1, i32 1
  store ptr %547, ptr %559, align 8, !tbaa !5
  br label %560

560:                                              ; preds = %546, %553
  %561 = getelementptr inbounds [32 x ptr], ptr %7, i64 0, i64 %511
  %562 = load ptr, ptr %561, align 8, !tbaa !8
  %563 = add nsw i32 %509, -1
  %564 = add nsw i32 %510, -1
  br label %663

565:                                              ; preds = %507
  %566 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %567 = zext i8 %566 to i32
  store i32 %567, ptr @zz_size, align 4, !tbaa !10
  %568 = zext i8 %566 to i64
  %569 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !8
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %575

572:                                              ; preds = %565
  %573 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %574 = tail call ptr @GetMemory(i32 noundef %567, ptr noundef %573) #6
  br label %577

575:                                              ; preds = %565
  store ptr %570, ptr @zz_hold, align 8, !tbaa !8
  %576 = load ptr, ptr %570, align 8, !tbaa !5
  store ptr %576, ptr %569, align 8, !tbaa !8
  br label %577

577:                                              ; preds = %572, %575
  %578 = phi ptr [ %574, %572 ], [ %570, %575 ]
  %579 = getelementptr inbounds %struct.word_type, ptr %578, i64 0, i32 1
  store i8 0, ptr %579, align 8, !tbaa !5
  %580 = getelementptr inbounds [2 x %struct.LIST], ptr %578, i64 0, i64 1, i32 1
  store ptr %578, ptr %580, align 8, !tbaa !5
  %581 = getelementptr inbounds [2 x %struct.LIST], ptr %578, i64 0, i64 1
  store ptr %578, ptr %581, align 8, !tbaa !5
  %582 = getelementptr inbounds %struct.LIST, ptr %578, i64 0, i32 1
  store ptr %578, ptr %582, align 8, !tbaa !5
  store ptr %578, ptr %578, align 8, !tbaa !5
  store ptr %578, ptr @xx_link, align 8, !tbaa !8
  store ptr %578, ptr @zz_res, align 8, !tbaa !8
  %583 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %583, ptr @zz_hold, align 8, !tbaa !8
  %584 = icmp eq ptr %583, null
  br i1 %584, label %596, label %585

585:                                              ; preds = %577
  %586 = load ptr, ptr %583, align 8, !tbaa !5
  store ptr %586, ptr @zz_tmp, align 8, !tbaa !8
  %587 = load ptr, ptr %578, align 8, !tbaa !5
  store ptr %587, ptr %583, align 8, !tbaa !5
  %588 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %589 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %590 = load ptr, ptr %589, align 8, !tbaa !5
  %591 = getelementptr inbounds %struct.LIST, ptr %590, i64 0, i32 1
  store ptr %588, ptr %591, align 8, !tbaa !5
  %592 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %592, ptr %589, align 8, !tbaa !5
  %593 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %594 = getelementptr inbounds %struct.LIST, ptr %592, i64 0, i32 1
  store ptr %593, ptr %594, align 8, !tbaa !5
  %595 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %596

596:                                              ; preds = %577, %585
  %597 = phi ptr [ %578, %577 ], [ %595, %585 ]
  store ptr %597, ptr @zz_res, align 8, !tbaa !8
  %598 = getelementptr inbounds [32 x ptr], ptr %6, i64 0, i64 %512
  %599 = load ptr, ptr %598, align 8, !tbaa !8
  store ptr %599, ptr @zz_hold, align 8, !tbaa !8
  %600 = icmp eq ptr %599, null
  %601 = icmp eq ptr %597, null
  %602 = select i1 %600, i1 true, i1 %601
  br i1 %602, label %610, label %603

603:                                              ; preds = %596
  %604 = getelementptr inbounds [2 x %struct.LIST], ptr %599, i64 0, i64 1
  %605 = load ptr, ptr %604, align 8, !tbaa !5
  store ptr %605, ptr @zz_tmp, align 8, !tbaa !8
  %606 = getelementptr inbounds [2 x %struct.LIST], ptr %597, i64 0, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !5
  store ptr %607, ptr %604, align 8, !tbaa !5
  %608 = getelementptr inbounds [2 x %struct.LIST], ptr %607, i64 0, i64 1, i32 1
  store ptr %599, ptr %608, align 8, !tbaa !5
  store ptr %605, ptr %606, align 8, !tbaa !5
  %609 = getelementptr inbounds [2 x %struct.LIST], ptr %605, i64 0, i64 1, i32 1
  store ptr %597, ptr %609, align 8, !tbaa !5
  br label %610

610:                                              ; preds = %596, %603
  %611 = getelementptr inbounds [32 x ptr], ptr %8, i64 0, i64 %512
  %612 = load ptr, ptr %611, align 8, !tbaa !8
  %613 = add nsw i32 %510, -1
  br label %663

614:                                              ; preds = %507
  %615 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %616 = zext i8 %615 to i32
  store i32 %616, ptr @zz_size, align 4, !tbaa !10
  %617 = zext i8 %615 to i64
  %618 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %617
  %619 = load ptr, ptr %618, align 8, !tbaa !8
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %624

621:                                              ; preds = %614
  %622 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %623 = tail call ptr @GetMemory(i32 noundef %616, ptr noundef %622) #6
  br label %626

624:                                              ; preds = %614
  store ptr %619, ptr @zz_hold, align 8, !tbaa !8
  %625 = load ptr, ptr %619, align 8, !tbaa !5
  store ptr %625, ptr %618, align 8, !tbaa !8
  br label %626

626:                                              ; preds = %621, %624
  %627 = phi ptr [ %623, %621 ], [ %619, %624 ]
  %628 = getelementptr inbounds %struct.word_type, ptr %627, i64 0, i32 1
  store i8 0, ptr %628, align 8, !tbaa !5
  %629 = getelementptr inbounds [2 x %struct.LIST], ptr %627, i64 0, i64 1, i32 1
  store ptr %627, ptr %629, align 8, !tbaa !5
  %630 = getelementptr inbounds [2 x %struct.LIST], ptr %627, i64 0, i64 1
  store ptr %627, ptr %630, align 8, !tbaa !5
  %631 = getelementptr inbounds %struct.LIST, ptr %627, i64 0, i32 1
  store ptr %627, ptr %631, align 8, !tbaa !5
  store ptr %627, ptr %627, align 8, !tbaa !5
  store ptr %627, ptr @xx_link, align 8, !tbaa !8
  store ptr %627, ptr @zz_res, align 8, !tbaa !8
  %632 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %632, ptr @zz_hold, align 8, !tbaa !8
  %633 = icmp eq ptr %632, null
  br i1 %633, label %645, label %634

634:                                              ; preds = %626
  %635 = load ptr, ptr %632, align 8, !tbaa !5
  store ptr %635, ptr @zz_tmp, align 8, !tbaa !8
  %636 = load ptr, ptr %627, align 8, !tbaa !5
  store ptr %636, ptr %632, align 8, !tbaa !5
  %637 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %638 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %639 = load ptr, ptr %638, align 8, !tbaa !5
  %640 = getelementptr inbounds %struct.LIST, ptr %639, i64 0, i32 1
  store ptr %637, ptr %640, align 8, !tbaa !5
  %641 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %641, ptr %638, align 8, !tbaa !5
  %642 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %643 = getelementptr inbounds %struct.LIST, ptr %641, i64 0, i32 1
  store ptr %642, ptr %643, align 8, !tbaa !5
  %644 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %645

645:                                              ; preds = %626, %634
  %646 = phi ptr [ %627, %626 ], [ %644, %634 ]
  store ptr %646, ptr @zz_res, align 8, !tbaa !8
  %647 = getelementptr inbounds [32 x ptr], ptr %5, i64 0, i64 %511
  %648 = load ptr, ptr %647, align 8, !tbaa !8
  store ptr %648, ptr @zz_hold, align 8, !tbaa !8
  %649 = icmp eq ptr %648, null
  %650 = icmp eq ptr %646, null
  %651 = select i1 %649, i1 true, i1 %650
  br i1 %651, label %659, label %652

652:                                              ; preds = %645
  %653 = getelementptr inbounds [2 x %struct.LIST], ptr %648, i64 0, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !5
  store ptr %654, ptr @zz_tmp, align 8, !tbaa !8
  %655 = getelementptr inbounds [2 x %struct.LIST], ptr %646, i64 0, i64 1
  %656 = load ptr, ptr %655, align 8, !tbaa !5
  store ptr %656, ptr %653, align 8, !tbaa !5
  %657 = getelementptr inbounds [2 x %struct.LIST], ptr %656, i64 0, i64 1, i32 1
  store ptr %648, ptr %657, align 8, !tbaa !5
  store ptr %654, ptr %655, align 8, !tbaa !5
  %658 = getelementptr inbounds [2 x %struct.LIST], ptr %654, i64 0, i64 1, i32 1
  store ptr %646, ptr %658, align 8, !tbaa !5
  br label %659

659:                                              ; preds = %645, %652
  %660 = getelementptr inbounds [32 x ptr], ptr %7, i64 0, i64 %511
  %661 = load ptr, ptr %660, align 8, !tbaa !8
  %662 = add nsw i32 %509, -1
  br label %663

663:                                              ; preds = %507, %659, %610, %560
  %664 = phi ptr [ %661, %659 ], [ %612, %610 ], [ %562, %560 ], [ %508, %507 ]
  %665 = phi i32 [ %662, %659 ], [ %509, %610 ], [ %563, %560 ], [ %509, %507 ]
  %666 = phi i32 [ %510, %659 ], [ %613, %610 ], [ %564, %560 ], [ %510, %507 ]
  %667 = sext i32 %665 to i64
  %668 = sext i32 %666 to i64
  %669 = getelementptr inbounds [32 x [32 x i8]], ptr %4, i64 0, i64 %667, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !5
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %852, label %672

672:                                              ; preds = %663
  %673 = icmp eq ptr %664, null
  br i1 %673, label %674, label %795

674:                                              ; preds = %672
  %675 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %676 = zext i8 %675 to i32
  store i32 %676, ptr @zz_size, align 4, !tbaa !10
  %677 = zext i8 %675 to i64
  %678 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !8
  %680 = icmp eq ptr %679, null
  br i1 %680, label %681, label %684

681:                                              ; preds = %674
  %682 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %683 = tail call ptr @GetMemory(i32 noundef %676, ptr noundef %682) #6
  store ptr %683, ptr @zz_hold, align 8, !tbaa !8
  br label %686

684:                                              ; preds = %674
  store ptr %679, ptr @zz_hold, align 8, !tbaa !8
  %685 = load ptr, ptr %679, align 8, !tbaa !5
  store ptr %685, ptr %678, align 8, !tbaa !8
  br label %686

686:                                              ; preds = %681, %684
  %687 = phi ptr [ %683, %681 ], [ %679, %684 ]
  %688 = getelementptr inbounds %struct.word_type, ptr %687, i64 0, i32 1
  store i8 1, ptr %688, align 8, !tbaa !5
  %689 = getelementptr inbounds [2 x %struct.LIST], ptr %687, i64 0, i64 1
  %690 = getelementptr inbounds [2 x %struct.LIST], ptr %687, i64 0, i64 1, i32 1
  store ptr %687, ptr %690, align 8, !tbaa !5
  store ptr %687, ptr %689, align 8, !tbaa !5
  %691 = getelementptr inbounds %struct.LIST, ptr %687, i64 0, i32 1
  store ptr %687, ptr %691, align 8, !tbaa !5
  store ptr %687, ptr %687, align 8, !tbaa !5
  %692 = getelementptr inbounds i8, ptr %687, i64 41
  store i8 1, ptr %692, align 1, !tbaa !5
  %693 = getelementptr inbounds i8, ptr %687, i64 42
  store i8 0, ptr %693, align 2, !tbaa !5
  %694 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %695 = getelementptr inbounds %struct.FILE_POS, ptr %694, i64 0, i32 2
  %696 = load i16, ptr %695, align 2, !tbaa !12
  %697 = getelementptr inbounds %struct.word_type, ptr %687, i64 0, i32 1, i32 0, i32 2
  store i16 %696, ptr %697, align 2, !tbaa !5
  %698 = getelementptr inbounds %struct.FILE_POS, ptr %694, i64 0, i32 3
  %699 = load i32, ptr %698, align 4
  %700 = and i32 %699, 1048575
  %701 = getelementptr inbounds %struct.word_type, ptr %687, i64 0, i32 1, i32 0, i32 3
  %702 = load i32, ptr %701, align 4
  %703 = and i32 %702, -1048576
  %704 = or disjoint i32 %703, %700
  store i32 %704, ptr %701, align 4
  %705 = load i32, ptr %698, align 4
  %706 = and i32 %705, -1048576
  %707 = or disjoint i32 %706, %700
  store i32 %707, ptr %701, align 4
  %708 = getelementptr inbounds %struct.gapobj_type, ptr %687, i64 0, i32 3
  %709 = load i16, ptr %708, align 4
  %710 = and i16 %709, 127
  %711 = or disjoint i16 %710, 9728
  store i16 %711, ptr %708, align 4
  %712 = load i16, ptr %455, align 2, !tbaa !5
  %713 = getelementptr inbounds %struct.gapobj_type, ptr %687, i64 0, i32 3, i32 1
  store i16 %712, ptr %713, align 2, !tbaa !5
  %714 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef nonnull %688)
  %715 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %716 = zext i8 %715 to i32
  store i32 %716, ptr @zz_size, align 4, !tbaa !10
  %717 = zext i8 %715 to i64
  %718 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %717
  %719 = load ptr, ptr %718, align 8, !tbaa !8
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %724

721:                                              ; preds = %686
  %722 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %723 = tail call ptr @GetMemory(i32 noundef %716, ptr noundef %722) #6
  br label %726

724:                                              ; preds = %686
  store ptr %719, ptr @zz_hold, align 8, !tbaa !8
  %725 = load ptr, ptr %719, align 8, !tbaa !5
  store ptr %725, ptr %718, align 8, !tbaa !8
  br label %726

726:                                              ; preds = %721, %724
  %727 = phi ptr [ %723, %721 ], [ %719, %724 ]
  %728 = getelementptr inbounds %struct.word_type, ptr %727, i64 0, i32 1
  store i8 0, ptr %728, align 8, !tbaa !5
  %729 = getelementptr inbounds [2 x %struct.LIST], ptr %727, i64 0, i64 1, i32 1
  store ptr %727, ptr %729, align 8, !tbaa !5
  %730 = getelementptr inbounds [2 x %struct.LIST], ptr %727, i64 0, i64 1
  store ptr %727, ptr %730, align 8, !tbaa !5
  %731 = getelementptr inbounds %struct.LIST, ptr %727, i64 0, i32 1
  store ptr %727, ptr %731, align 8, !tbaa !5
  store ptr %727, ptr %727, align 8, !tbaa !5
  store ptr %727, ptr @xx_link, align 8, !tbaa !8
  store ptr %727, ptr @zz_res, align 8, !tbaa !8
  store ptr %687, ptr @zz_hold, align 8, !tbaa !8
  %732 = load ptr, ptr %687, align 8, !tbaa !5
  store ptr %732, ptr @zz_tmp, align 8, !tbaa !8
  %733 = load ptr, ptr %727, align 8, !tbaa !5
  store ptr %733, ptr %687, align 8, !tbaa !5
  %734 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %735 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %736 = load ptr, ptr %735, align 8, !tbaa !5
  %737 = getelementptr inbounds %struct.LIST, ptr %736, i64 0, i32 1
  store ptr %734, ptr %737, align 8, !tbaa !5
  %738 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %738, ptr %735, align 8, !tbaa !5
  %739 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %740 = getelementptr inbounds %struct.LIST, ptr %738, i64 0, i32 1
  store ptr %739, ptr %740, align 8, !tbaa !5
  %741 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %741, ptr @zz_res, align 8, !tbaa !8
  store ptr %714, ptr @zz_hold, align 8, !tbaa !8
  %742 = icmp eq ptr %714, null
  %743 = icmp eq ptr %741, null
  %744 = select i1 %742, i1 true, i1 %743
  br i1 %744, label %752, label %745

745:                                              ; preds = %726
  %746 = getelementptr inbounds [2 x %struct.LIST], ptr %714, i64 0, i64 1
  %747 = load ptr, ptr %746, align 8, !tbaa !5
  store ptr %747, ptr @zz_tmp, align 8, !tbaa !8
  %748 = getelementptr inbounds [2 x %struct.LIST], ptr %741, i64 0, i64 1
  %749 = load ptr, ptr %748, align 8, !tbaa !5
  store ptr %749, ptr %746, align 8, !tbaa !5
  %750 = getelementptr inbounds [2 x %struct.LIST], ptr %749, i64 0, i64 1, i32 1
  store ptr %714, ptr %750, align 8, !tbaa !5
  store ptr %747, ptr %748, align 8, !tbaa !5
  %751 = getelementptr inbounds [2 x %struct.LIST], ptr %747, i64 0, i64 1, i32 1
  store ptr %741, ptr %751, align 8, !tbaa !5
  br label %752

752:                                              ; preds = %726, %745
  %753 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %754 = zext i8 %753 to i32
  store i32 %754, ptr @zz_size, align 4, !tbaa !10
  %755 = zext i8 %753 to i64
  %756 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %755
  %757 = load ptr, ptr %756, align 8, !tbaa !8
  %758 = icmp eq ptr %757, null
  br i1 %758, label %759, label %762

759:                                              ; preds = %752
  %760 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %761 = tail call ptr @GetMemory(i32 noundef %754, ptr noundef %760) #6
  br label %764

762:                                              ; preds = %752
  store ptr %757, ptr @zz_hold, align 8, !tbaa !8
  %763 = load ptr, ptr %757, align 8, !tbaa !5
  store ptr %763, ptr %756, align 8, !tbaa !8
  br label %764

764:                                              ; preds = %759, %762
  %765 = phi ptr [ %761, %759 ], [ %757, %762 ]
  %766 = getelementptr inbounds %struct.word_type, ptr %765, i64 0, i32 1
  store i8 0, ptr %766, align 8, !tbaa !5
  %767 = getelementptr inbounds [2 x %struct.LIST], ptr %765, i64 0, i64 1, i32 1
  store ptr %765, ptr %767, align 8, !tbaa !5
  %768 = getelementptr inbounds [2 x %struct.LIST], ptr %765, i64 0, i64 1
  store ptr %765, ptr %768, align 8, !tbaa !5
  %769 = getelementptr inbounds %struct.LIST, ptr %765, i64 0, i32 1
  store ptr %765, ptr %769, align 8, !tbaa !5
  store ptr %765, ptr %765, align 8, !tbaa !5
  store ptr %765, ptr @xx_link, align 8, !tbaa !8
  store ptr %765, ptr @zz_res, align 8, !tbaa !8
  %770 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %770, ptr @zz_hold, align 8, !tbaa !8
  %771 = icmp eq ptr %770, null
  br i1 %771, label %772, label %773

772:                                              ; preds = %764
  store ptr %687, ptr @zz_hold, align 8, !tbaa !8
  br label %788

773:                                              ; preds = %764
  %774 = load ptr, ptr %770, align 8, !tbaa !5
  store ptr %774, ptr @zz_tmp, align 8, !tbaa !8
  %775 = load ptr, ptr %765, align 8, !tbaa !5
  store ptr %775, ptr %770, align 8, !tbaa !5
  %776 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %777 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %778 = load ptr, ptr %777, align 8, !tbaa !5
  %779 = getelementptr inbounds %struct.LIST, ptr %778, i64 0, i32 1
  store ptr %776, ptr %779, align 8, !tbaa !5
  %780 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %780, ptr %777, align 8, !tbaa !5
  %781 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %782 = getelementptr inbounds %struct.LIST, ptr %780, i64 0, i32 1
  store ptr %781, ptr %782, align 8, !tbaa !5
  %783 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %783, ptr @zz_res, align 8, !tbaa !8
  store ptr %687, ptr @zz_hold, align 8, !tbaa !8
  %784 = icmp eq ptr %783, null
  br i1 %784, label %852, label %785

785:                                              ; preds = %773
  %786 = getelementptr inbounds [2 x %struct.LIST], ptr %783, i64 0, i64 1
  %787 = load ptr, ptr %786, align 8, !tbaa !5
  br label %788

788:                                              ; preds = %785, %772
  %789 = phi ptr [ %765, %772 ], [ %787, %785 ]
  %790 = phi ptr [ %765, %772 ], [ %783, %785 ]
  %791 = load ptr, ptr %689, align 8, !tbaa !5
  store ptr %791, ptr @zz_tmp, align 8, !tbaa !8
  %792 = getelementptr inbounds [2 x %struct.LIST], ptr %790, i64 0, i64 1
  store ptr %789, ptr %689, align 8, !tbaa !5
  %793 = load ptr, ptr %792, align 8, !tbaa !5
  %794 = getelementptr inbounds [2 x %struct.LIST], ptr %793, i64 0, i64 1, i32 1
  store ptr %687, ptr %794, align 8, !tbaa !5
  store ptr %791, ptr %792, align 8, !tbaa !5
  br label %847

795:                                              ; preds = %672
  %796 = getelementptr inbounds [2 x %struct.LIST], ptr %664, i64 0, i64 1
  %797 = getelementptr inbounds [2 x %struct.LIST], ptr %664, i64 0, i64 1, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !5
  %799 = load ptr, ptr %796, align 8, !tbaa !5
  %800 = icmp eq ptr %798, %799
  br i1 %800, label %804, label %801

801:                                              ; preds = %795
  %802 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %803 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %802, ptr noundef nonnull @.str.15) #6
  br label %804

804:                                              ; preds = %801, %795
  %805 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %806 = zext i8 %805 to i32
  store i32 %806, ptr @zz_size, align 4, !tbaa !10
  %807 = zext i8 %805 to i64
  %808 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !8
  %810 = icmp eq ptr %809, null
  br i1 %810, label %811, label %814

811:                                              ; preds = %804
  %812 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %813 = tail call ptr @GetMemory(i32 noundef %806, ptr noundef %812) #6
  br label %816

814:                                              ; preds = %804
  store ptr %809, ptr @zz_hold, align 8, !tbaa !8
  %815 = load ptr, ptr %809, align 8, !tbaa !5
  store ptr %815, ptr %808, align 8, !tbaa !8
  br label %816

816:                                              ; preds = %811, %814
  %817 = phi ptr [ %813, %811 ], [ %809, %814 ]
  %818 = getelementptr inbounds %struct.word_type, ptr %817, i64 0, i32 1
  store i8 0, ptr %818, align 8, !tbaa !5
  %819 = getelementptr inbounds [2 x %struct.LIST], ptr %817, i64 0, i64 1, i32 1
  store ptr %817, ptr %819, align 8, !tbaa !5
  %820 = getelementptr inbounds [2 x %struct.LIST], ptr %817, i64 0, i64 1
  store ptr %817, ptr %820, align 8, !tbaa !5
  %821 = getelementptr inbounds %struct.LIST, ptr %817, i64 0, i32 1
  store ptr %817, ptr %821, align 8, !tbaa !5
  store ptr %817, ptr %817, align 8, !tbaa !5
  store ptr %817, ptr @xx_link, align 8, !tbaa !8
  store ptr %817, ptr @zz_res, align 8, !tbaa !8
  %822 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %822, ptr @zz_hold, align 8, !tbaa !8
  %823 = icmp eq ptr %822, null
  br i1 %823, label %824, label %825

824:                                              ; preds = %816
  store ptr %664, ptr @zz_hold, align 8, !tbaa !8
  br label %840

825:                                              ; preds = %816
  %826 = load ptr, ptr %822, align 8, !tbaa !5
  store ptr %826, ptr @zz_tmp, align 8, !tbaa !8
  %827 = load ptr, ptr %817, align 8, !tbaa !5
  store ptr %827, ptr %822, align 8, !tbaa !5
  %828 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %829 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %830 = load ptr, ptr %829, align 8, !tbaa !5
  %831 = getelementptr inbounds %struct.LIST, ptr %830, i64 0, i32 1
  store ptr %828, ptr %831, align 8, !tbaa !5
  %832 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %832, ptr %829, align 8, !tbaa !5
  %833 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %834 = getelementptr inbounds %struct.LIST, ptr %832, i64 0, i32 1
  store ptr %833, ptr %834, align 8, !tbaa !5
  %835 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %835, ptr @zz_res, align 8, !tbaa !8
  store ptr %664, ptr @zz_hold, align 8, !tbaa !8
  %836 = icmp eq ptr %835, null
  br i1 %836, label %852, label %837

837:                                              ; preds = %825
  %838 = getelementptr inbounds [2 x %struct.LIST], ptr %835, i64 0, i64 1
  %839 = load ptr, ptr %838, align 8, !tbaa !5
  br label %840

840:                                              ; preds = %837, %824
  %841 = phi ptr [ %817, %824 ], [ %839, %837 ]
  %842 = phi ptr [ %817, %824 ], [ %835, %837 ]
  %843 = load ptr, ptr %796, align 8, !tbaa !5
  store ptr %843, ptr @zz_tmp, align 8, !tbaa !8
  %844 = getelementptr inbounds [2 x %struct.LIST], ptr %842, i64 0, i64 1
  store ptr %841, ptr %796, align 8, !tbaa !5
  %845 = load ptr, ptr %844, align 8, !tbaa !5
  %846 = getelementptr inbounds [2 x %struct.LIST], ptr %845, i64 0, i64 1, i32 1
  store ptr %664, ptr %846, align 8, !tbaa !5
  store ptr %843, ptr %844, align 8, !tbaa !5
  br label %847

847:                                              ; preds = %840, %788
  %848 = phi ptr [ %791, %788 ], [ %843, %840 ]
  %849 = phi ptr [ %790, %788 ], [ %842, %840 ]
  %850 = phi ptr [ %687, %788 ], [ %664, %840 ]
  %851 = getelementptr inbounds [2 x %struct.LIST], ptr %848, i64 0, i64 1, i32 1
  store ptr %849, ptr %851, align 8, !tbaa !5
  br label %852

852:                                              ; preds = %847, %825, %773, %663
  %853 = phi ptr [ %664, %663 ], [ %687, %773 ], [ %664, %825 ], [ %850, %847 ]
  br label %507

854:                                              ; preds = %507
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  ret ptr %381
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!12 = !{!13, !14, i64 2}
!13 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !11, i64 4, !11, i64 6}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !14, i64 8}
!16 = !{!"", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 10, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 15, !11, i64 15}
!17 = !{!16, !14, i64 10}

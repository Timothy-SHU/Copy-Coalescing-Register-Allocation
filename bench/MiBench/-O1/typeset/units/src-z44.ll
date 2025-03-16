; ModuleID = 'src/z44.c'
source_filename = "src/z44.c"
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
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"VerticalHyphenate: type(y) != HCAT!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"FirstDefiniteCompressed!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NDWGC!\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"FirstDefiniteWithGapCompressed: mode(gap(g))!\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MoveIndexes: is_index!\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: x!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: y!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BuildEnclose: no enclose!\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s may not have a left or named parameter\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s may not have a body parameter\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%s must have a right parameter\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"BuildEnclose:  hd child!\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) == nxt!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) != nxt!\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"EncloseInHcat: type(s2) != SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"FindTarget: unknown index\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"BuildMergeTree: has_m!\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"BuildMergeTree: y!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @VerticalHyphenate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 18
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.1) #5
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %708, label %12

12:                                               ; preds = %8, %84
  %13 = phi ptr [ %90, %84 ], [ %10, %8 ]
  %14 = phi ptr [ %88, %84 ], [ null, %8 ]
  %15 = phi ptr [ %87, %84 ], [ null, %8 ]
  %16 = phi i32 [ %86, %84 ], [ 0, %8 ]
  %17 = phi ptr [ %85, %84 ], [ undef, %8 ]
  br label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %21, %18 ], [ %13, %12 ]
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.word_type, ptr %21, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !5
  switch i8 %23, label %39 [
    i8 0, label %18
    i8 1, label %24
    i8 26, label %29
    i8 24, label %29
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gapobj_type, ptr %21, i64 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 512
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %708, label %84

29:                                               ; preds = %18, %18
  %30 = getelementptr inbounds %struct.LIST, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %31, %29 ], [ %35, %32 ]
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %32, label %39

39:                                               ; preds = %18, %32
  %40 = phi i8 [ %37, %32 ], [ %23, %18 ]
  %41 = phi ptr [ %35, %32 ], [ %21, %18 ]
  %42 = icmp eq i8 %40, 9
  br i1 %42, label %43, label %708

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %45, %43 ], [ %49, %46 ]
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.word_type, ptr %49, i64 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %46, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %41, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %54, %53 ], [ %58, %55 ]
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.word_type, ptr %58, i64 0, i32 1
  %60 = load i8, ptr %59, align 8, !tbaa !5
  switch i8 %60, label %708 [
    i8 0, label %55
    i8 15, label %61
  ]

61:                                               ; preds = %55
  %62 = icmp eq ptr %15, null
  %63 = icmp eq ptr %15, %58
  %64 = or i1 %62, %63
  br i1 %64, label %65, label %708

65:                                               ; preds = %61
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %49, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %67, %65 ], [ %70, %68 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %68, label %74

74:                                               ; preds = %68
  %75 = icmp eq ptr %70, %58
  br i1 %75, label %76, label %708

76:                                               ; preds = %74
  %77 = icmp eq i8 %51, 19
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.word_type, ptr %49, i64 0, i32 3, i32 1, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %81 = tail call i32 @llvm.smax.i32(i32 %16, i32 %80)
  br label %84

82:                                               ; preds = %76
  %83 = icmp eq ptr %14, null
  br i1 %83, label %84, label %708

84:                                               ; preds = %82, %78, %24
  %85 = phi ptr [ %17, %24 ], [ %17, %78 ], [ %41, %82 ]
  %86 = phi i32 [ %16, %24 ], [ %81, %78 ], [ %16, %82 ]
  %87 = phi ptr [ %15, %24 ], [ %58, %78 ], [ %58, %82 ]
  %88 = phi ptr [ %14, %24 ], [ %14, %78 ], [ %49, %82 ]
  %89 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %92, label %12

92:                                               ; preds = %84
  %93 = icmp eq ptr %88, null
  br i1 %93, label %708, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.LIST, ptr %88, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = icmp eq ptr %96, %88
  br i1 %97, label %708, label %98

98:                                               ; preds = %94, %112
  %99 = phi ptr [ %114, %112 ], [ %96, %94 ]
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %103, %100 ], [ %99, %98 ]
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %101, i64 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.word_type, ptr %103, i64 0, i32 1
  %105 = load i8, ptr %104, align 8, !tbaa !5
  switch i8 %105, label %109 [
    i8 0, label %100
    i8 1, label %112
    i8 9, label %106
  ]

106:                                              ; preds = %100
  %107 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %103) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %116

109:                                              ; preds = %100
  %110 = add i8 %105, -9
  %111 = icmp ult i8 %110, 91
  br i1 %111, label %116, label %112

112:                                              ; preds = %100, %109, %106
  %113 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = icmp eq ptr %114, %88
  br i1 %115, label %708, label %98

116:                                              ; preds = %106, %109
  %117 = icmp eq ptr %99, %88
  br i1 %117, label %708, label %118

118:                                              ; preds = %116, %224
  %119 = phi ptr [ %207, %224 ], [ %99, %116 ]
  %120 = phi ptr [ %211, %224 ], [ %103, %116 ]
  %121 = getelementptr inbounds %struct.word_type, ptr %120, i64 0, i32 1
  %122 = load i8, ptr %121, align 8, !tbaa !5
  %123 = icmp eq i8 %122, 19
  br i1 %123, label %124, label %226

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.LIST, ptr %120, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, %120
  br i1 %127, label %156, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.word_type, ptr %126, i64 0, i32 1
  %130 = load i8, ptr %129, align 8, !tbaa !5
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %134 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %133, ptr noundef nonnull @.str.2) #5
  br label %135

135:                                              ; preds = %132, %128
  store ptr %126, ptr @zz_res, align 8, !tbaa !8
  store ptr %120, ptr @zz_hold, align 8, !tbaa !8
  %136 = load ptr, ptr %120, align 8, !tbaa !5
  store ptr %136, ptr @zz_tmp, align 8, !tbaa !8
  %137 = load ptr, ptr %126, align 8, !tbaa !5
  store ptr %137, ptr %120, align 8, !tbaa !5
  %138 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %139 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  store ptr %138, ptr %141, align 8, !tbaa !5
  %142 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %142, ptr %139, align 8, !tbaa !5
  %143 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %144 = getelementptr inbounds %struct.LIST, ptr %142, i64 0, i32 1
  store ptr %143, ptr %144, align 8, !tbaa !5
  store ptr %126, ptr @zz_res, align 8, !tbaa !8
  store ptr %119, ptr @zz_hold, align 8, !tbaa !8
  %145 = icmp eq ptr %119, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %135
  %147 = load ptr, ptr %119, align 8, !tbaa !5
  store ptr %147, ptr @zz_tmp, align 8, !tbaa !8
  %148 = load ptr, ptr %126, align 8, !tbaa !5
  store ptr %148, ptr %119, align 8, !tbaa !5
  %149 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %150 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.LIST, ptr %151, i64 0, i32 1
  store ptr %149, ptr %152, align 8, !tbaa !5
  %153 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %153, ptr %150, align 8, !tbaa !5
  %154 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %155 = getelementptr inbounds %struct.LIST, ptr %153, i64 0, i32 1
  store ptr %154, ptr %155, align 8, !tbaa !5
  br label %156

156:                                              ; preds = %135, %146, %124
  store ptr %119, ptr @xx_link, align 8, !tbaa !8
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = icmp eq ptr %158, %119
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  store ptr %158, ptr @zz_res, align 8, !tbaa !8
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1
  store ptr %162, ptr %163, align 8, !tbaa !5
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %162, i64 0, i64 1, i32 1
  store ptr %158, ptr %164, align 8, !tbaa !5
  store ptr %119, ptr %157, align 8, !tbaa !5
  store ptr %119, ptr %161, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %156, %160
  %166 = phi ptr [ %158, %160 ], [ null, %156 ]
  store ptr %166, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %119, ptr @zz_hold, align 8, !tbaa !8
  %167 = getelementptr inbounds %struct.LIST, ptr %119, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = icmp eq ptr %168, %119
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  store ptr %168, ptr @zz_res, align 8, !tbaa !8
  %171 = load ptr, ptr %119, align 8, !tbaa !5
  store ptr %171, ptr %168, align 8, !tbaa !5
  %172 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %173 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.LIST, ptr %174, i64 0, i32 1
  store ptr %172, ptr %175, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.LIST, ptr %173, i64 0, i32 1
  store ptr %173, ptr %176, align 8, !tbaa !5
  store ptr %173, ptr %173, align 8, !tbaa !5
  %177 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %178

178:                                              ; preds = %165, %170
  %179 = phi ptr [ %119, %165 ], [ %177, %170 ]
  store ptr %179, ptr @zz_hold, align 8, !tbaa !8
  %180 = getelementptr inbounds %struct.word_type, ptr %179, i64 0, i32 1
  %181 = load i8, ptr %180, align 8, !tbaa !5
  %182 = add i8 %181, -11
  %183 = icmp ult i8 %182, 2
  %184 = getelementptr inbounds %struct.word_type, ptr %179, i64 0, i32 1, i32 0, i32 1
  %185 = zext i8 %181 to i64
  %186 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %185
  %187 = select i1 %183, ptr %184, ptr %186
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = zext i8 %188 to i32
  store i32 %189, ptr @zz_size, align 4, !tbaa !10
  %190 = zext i8 %188 to i64
  %191 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !8
  store ptr %192, ptr %179, align 8, !tbaa !5
  %193 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %194 = load i32, ptr @zz_size, align 4, !tbaa !10
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %195
  store ptr %193, ptr %196, align 8, !tbaa !8
  %197 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %197, i64 0, i64 1, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !5
  %200 = icmp eq ptr %199, %197
  br i1 %200, label %201, label %203

201:                                              ; preds = %178
  %202 = tail call i32 @DisposeObject(ptr noundef nonnull %197) #5
  br label %203

203:                                              ; preds = %201, %178
  %204 = load ptr, ptr %95, align 8, !tbaa !5
  %205 = icmp eq ptr %204, %88
  br i1 %205, label %708, label %206

206:                                              ; preds = %203, %220
  %207 = phi ptr [ %222, %220 ], [ %204, %203 ]
  br label %208

208:                                              ; preds = %206, %208
  %209 = phi ptr [ %211, %208 ], [ %207, %206 ]
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !5
  switch i8 %213, label %217 [
    i8 0, label %208
    i8 1, label %220
    i8 9, label %214
  ]

214:                                              ; preds = %208
  %215 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %211) #5
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %224

217:                                              ; preds = %208
  %218 = add i8 %213, -9
  %219 = icmp ult i8 %218, 91
  br i1 %219, label %224, label %220

220:                                              ; preds = %208, %217, %214
  %221 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  %223 = icmp eq ptr %222, %88
  br i1 %223, label %708, label %206

224:                                              ; preds = %214, %217
  %225 = icmp eq ptr %207, %88
  br i1 %225, label %708, label %118

226:                                              ; preds = %118
  %227 = add i8 %122, -9
  %228 = icmp ult i8 %227, 91
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %231 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %230, ptr noundef nonnull @.str.3) #5
  br label %232

232:                                              ; preds = %229, %226
  %233 = load ptr, ptr %119, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.LIST, ptr %119, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !5
  %236 = icmp eq ptr %235, %88
  br i1 %236, label %708, label %237

237:                                              ; preds = %232, %257
  %238 = phi ptr [ %260, %257 ], [ %235, %232 ]
  %239 = phi ptr [ %258, %257 ], [ null, %232 ]
  br label %240

240:                                              ; preds = %237, %240
  %241 = phi ptr [ %243, %240 ], [ %238, %237 ]
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.word_type, ptr %243, i64 0, i32 1
  %245 = load i8, ptr %244, align 8, !tbaa !5
  switch i8 %245, label %249 [
    i8 0, label %240
    i8 1, label %257
    i8 9, label %246
  ]

246:                                              ; preds = %240
  %247 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %243) #5
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %257, label %252

249:                                              ; preds = %240
  %250 = add i8 %245, -9
  %251 = icmp ult i8 %250, 91
  br i1 %251, label %252, label %257

252:                                              ; preds = %249, %246
  %253 = icmp eq ptr %239, null
  br i1 %253, label %254, label %262

254:                                              ; preds = %252
  %255 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %256 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %255, ptr noundef nonnull @.str.4) #5
  br label %262

257:                                              ; preds = %240, %249, %246
  %258 = phi ptr [ %239, %246 ], [ %239, %249 ], [ %243, %240 ]
  %259 = getelementptr inbounds %struct.LIST, ptr %238, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  %261 = icmp eq ptr %260, %88
  br i1 %261, label %708, label %237

262:                                              ; preds = %252, %254
  %263 = icmp eq ptr %238, %88
  br i1 %263, label %708, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.LIST, ptr %233, i64 0, i32 1
  br label %266

266:                                              ; preds = %264, %477
  %267 = phi ptr [ %238, %264 ], [ %453, %477 ]
  %268 = phi ptr [ %239, %264 ], [ %454, %477 ]
  %269 = phi ptr [ %243, %264 ], [ %458, %477 ]
  %270 = getelementptr inbounds %struct.word_type, ptr %269, i64 0, i32 1
  %271 = load i8, ptr %270, align 8, !tbaa !5
  %272 = icmp eq i8 %271, 19
  br i1 %272, label %273, label %479

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.LIST, ptr %269, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !5
  %276 = icmp eq ptr %275, %269
  br i1 %276, label %369, label %277

277:                                              ; preds = %273, %291
  %278 = phi ptr [ %293, %291 ], [ %275, %273 ]
  br label %279

279:                                              ; preds = %277, %279
  %280 = phi ptr [ %282, %279 ], [ %278, %277 ]
  %281 = getelementptr inbounds [2 x %struct.LIST], ptr %280, i64 0, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  %283 = getelementptr inbounds %struct.word_type, ptr %282, i64 0, i32 1
  %284 = load i8, ptr %283, align 8, !tbaa !5
  switch i8 %284, label %288 [
    i8 0, label %279
    i8 1, label %291
    i8 9, label %285
  ]

285:                                              ; preds = %279
  %286 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %282) #5
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %295

288:                                              ; preds = %279
  %289 = add i8 %284, -9
  %290 = icmp ult i8 %289, 91
  br i1 %290, label %295, label %291

291:                                              ; preds = %279, %288, %285
  %292 = getelementptr inbounds %struct.LIST, ptr %278, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  %294 = icmp eq ptr %293, %269
  br i1 %294, label %369, label %277

295:                                              ; preds = %285, %288
  %296 = load ptr, ptr %278, align 8, !tbaa !5
  %297 = icmp eq ptr %296, %269
  br i1 %297, label %369, label %298

298:                                              ; preds = %295, %298
  %299 = phi ptr [ %301, %298 ], [ %296, %295 ]
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = getelementptr inbounds %struct.word_type, ptr %301, i64 0, i32 1
  %303 = load i8, ptr %302, align 8, !tbaa !5
  switch i8 %303, label %308 [
    i8 0, label %298
    i8 1, label %304
  ]

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.gapobj_type, ptr %301, i64 0, i32 3
  %306 = load i16, ptr %305, align 4
  %307 = icmp ult i16 %306, 8192
  br i1 %307, label %308, label %312

308:                                              ; preds = %298, %304
  %309 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %310 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %309, ptr noundef nonnull @.str.5) #5
  %311 = load ptr, ptr %278, align 8, !tbaa !5
  br label %312

312:                                              ; preds = %308, %304
  %313 = phi ptr [ %311, %308 ], [ %296, %304 ]
  store ptr %313, ptr @xx_link, align 8, !tbaa !8
  store ptr %313, ptr @zz_hold, align 8, !tbaa !8
  %314 = getelementptr inbounds %struct.LIST, ptr %313, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = icmp eq ptr %315, %313
  br i1 %316, label %325, label %317

317:                                              ; preds = %312
  store ptr %315, ptr @zz_res, align 8, !tbaa !8
  %318 = load ptr, ptr %313, align 8, !tbaa !5
  store ptr %318, ptr %315, align 8, !tbaa !5
  %319 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %320 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %321 = load ptr, ptr %320, align 8, !tbaa !5
  %322 = getelementptr inbounds %struct.LIST, ptr %321, i64 0, i32 1
  store ptr %319, ptr %322, align 8, !tbaa !5
  %323 = getelementptr inbounds %struct.LIST, ptr %320, i64 0, i32 1
  store ptr %320, ptr %323, align 8, !tbaa !5
  store ptr %320, ptr %320, align 8, !tbaa !5
  %324 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %325

325:                                              ; preds = %312, %317
  %326 = phi ptr [ %313, %312 ], [ %324, %317 ]
  store ptr %326, ptr @zz_res, align 8, !tbaa !8
  %327 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !5
  store ptr %328, ptr @zz_hold, align 8, !tbaa !8
  %329 = icmp eq ptr %328, null
  %330 = icmp eq ptr %326, null
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %343, label %332

332:                                              ; preds = %325
  %333 = load ptr, ptr %328, align 8, !tbaa !5
  store ptr %333, ptr @zz_tmp, align 8, !tbaa !8
  %334 = load ptr, ptr %326, align 8, !tbaa !5
  store ptr %334, ptr %328, align 8, !tbaa !5
  %335 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %336 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %337 = load ptr, ptr %336, align 8, !tbaa !5
  %338 = getelementptr inbounds %struct.LIST, ptr %337, i64 0, i32 1
  store ptr %335, ptr %338, align 8, !tbaa !5
  %339 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %339, ptr %336, align 8, !tbaa !5
  %340 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %341 = getelementptr inbounds %struct.LIST, ptr %339, i64 0, i32 1
  store ptr %340, ptr %341, align 8, !tbaa !5
  %342 = load ptr, ptr %327, align 8, !tbaa !5
  br label %343

343:                                              ; preds = %325, %332
  %344 = phi ptr [ %328, %325 ], [ %342, %332 ]
  store ptr %344, ptr @xx_link, align 8, !tbaa !8
  store ptr %344, ptr @zz_hold, align 8, !tbaa !8
  %345 = getelementptr inbounds %struct.LIST, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !5
  %347 = icmp eq ptr %346, %344
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  store ptr %344, ptr @zz_res, align 8, !tbaa !8
  store ptr %278, ptr @zz_hold, align 8, !tbaa !8
  br label %358

349:                                              ; preds = %343
  store ptr %346, ptr @zz_res, align 8, !tbaa !8
  %350 = load ptr, ptr %344, align 8, !tbaa !5
  store ptr %350, ptr %346, align 8, !tbaa !5
  %351 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %352 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %353 = load ptr, ptr %352, align 8, !tbaa !5
  %354 = getelementptr inbounds %struct.LIST, ptr %353, i64 0, i32 1
  store ptr %351, ptr %354, align 8, !tbaa !5
  %355 = getelementptr inbounds %struct.LIST, ptr %352, i64 0, i32 1
  store ptr %352, ptr %355, align 8, !tbaa !5
  store ptr %352, ptr %352, align 8, !tbaa !5
  %356 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %356, ptr @zz_res, align 8, !tbaa !8
  store ptr %278, ptr @zz_hold, align 8, !tbaa !8
  %357 = icmp eq ptr %356, null
  br i1 %357, label %369, label %358

358:                                              ; preds = %348, %349
  %359 = phi ptr [ %344, %348 ], [ %356, %349 ]
  %360 = load ptr, ptr %278, align 8, !tbaa !5
  store ptr %360, ptr @zz_tmp, align 8, !tbaa !8
  %361 = load ptr, ptr %359, align 8, !tbaa !5
  store ptr %361, ptr %278, align 8, !tbaa !5
  %362 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %363 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %364 = load ptr, ptr %363, align 8, !tbaa !5
  %365 = getelementptr inbounds %struct.LIST, ptr %364, i64 0, i32 1
  store ptr %362, ptr %365, align 8, !tbaa !5
  %366 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %366, ptr %363, align 8, !tbaa !5
  %367 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %368 = getelementptr inbounds %struct.LIST, ptr %366, i64 0, i32 1
  store ptr %367, ptr %368, align 8, !tbaa !5
  br label %369

369:                                              ; preds = %291, %273, %349, %358, %295
  %370 = load ptr, ptr %274, align 8, !tbaa !5
  %371 = icmp eq ptr %370, %269
  br i1 %371, label %400, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.word_type, ptr %370, i64 0, i32 1
  %374 = load i8, ptr %373, align 8, !tbaa !5
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %378 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %377, ptr noundef nonnull @.str.2) #5
  br label %379

379:                                              ; preds = %376, %372
  store ptr %370, ptr @zz_res, align 8, !tbaa !8
  store ptr %269, ptr @zz_hold, align 8, !tbaa !8
  %380 = load ptr, ptr %269, align 8, !tbaa !5
  store ptr %380, ptr @zz_tmp, align 8, !tbaa !8
  %381 = load ptr, ptr %370, align 8, !tbaa !5
  store ptr %381, ptr %269, align 8, !tbaa !5
  %382 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %383 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %384 = load ptr, ptr %383, align 8, !tbaa !5
  %385 = getelementptr inbounds %struct.LIST, ptr %384, i64 0, i32 1
  store ptr %382, ptr %385, align 8, !tbaa !5
  %386 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %386, ptr %383, align 8, !tbaa !5
  %387 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %388 = getelementptr inbounds %struct.LIST, ptr %386, i64 0, i32 1
  store ptr %387, ptr %388, align 8, !tbaa !5
  store ptr %370, ptr @zz_res, align 8, !tbaa !8
  store ptr %267, ptr @zz_hold, align 8, !tbaa !8
  %389 = icmp eq ptr %267, null
  br i1 %389, label %400, label %390

390:                                              ; preds = %379
  %391 = load ptr, ptr %267, align 8, !tbaa !5
  store ptr %391, ptr @zz_tmp, align 8, !tbaa !8
  %392 = load ptr, ptr %370, align 8, !tbaa !5
  store ptr %392, ptr %267, align 8, !tbaa !5
  %393 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %394 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %395 = load ptr, ptr %394, align 8, !tbaa !5
  %396 = getelementptr inbounds %struct.LIST, ptr %395, i64 0, i32 1
  store ptr %393, ptr %396, align 8, !tbaa !5
  %397 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %397, ptr %394, align 8, !tbaa !5
  %398 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %399 = getelementptr inbounds %struct.LIST, ptr %397, i64 0, i32 1
  store ptr %398, ptr %399, align 8, !tbaa !5
  br label %400

400:                                              ; preds = %379, %390, %369
  store ptr %267, ptr @xx_link, align 8, !tbaa !8
  %401 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !5
  %403 = icmp eq ptr %402, %267
  br i1 %403, label %409, label %404

404:                                              ; preds = %400
  store ptr %402, ptr @zz_res, align 8, !tbaa !8
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !5
  %407 = getelementptr inbounds [2 x %struct.LIST], ptr %402, i64 0, i64 1
  store ptr %406, ptr %407, align 8, !tbaa !5
  %408 = getelementptr inbounds [2 x %struct.LIST], ptr %406, i64 0, i64 1, i32 1
  store ptr %402, ptr %408, align 8, !tbaa !5
  store ptr %267, ptr %401, align 8, !tbaa !5
  store ptr %267, ptr %405, align 8, !tbaa !5
  br label %409

409:                                              ; preds = %400, %404
  %410 = phi ptr [ %402, %404 ], [ null, %400 ]
  store ptr %410, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %267, ptr @zz_hold, align 8, !tbaa !8
  %411 = getelementptr inbounds %struct.LIST, ptr %267, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  %413 = icmp eq ptr %412, %267
  br i1 %413, label %422, label %414

414:                                              ; preds = %409
  store ptr %412, ptr @zz_res, align 8, !tbaa !8
  %415 = load ptr, ptr %267, align 8, !tbaa !5
  store ptr %415, ptr %412, align 8, !tbaa !5
  %416 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %417 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %418 = load ptr, ptr %417, align 8, !tbaa !5
  %419 = getelementptr inbounds %struct.LIST, ptr %418, i64 0, i32 1
  store ptr %416, ptr %419, align 8, !tbaa !5
  %420 = getelementptr inbounds %struct.LIST, ptr %417, i64 0, i32 1
  store ptr %417, ptr %420, align 8, !tbaa !5
  store ptr %417, ptr %417, align 8, !tbaa !5
  %421 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %422

422:                                              ; preds = %409, %414
  %423 = phi ptr [ %267, %409 ], [ %421, %414 ]
  store ptr %423, ptr @zz_hold, align 8, !tbaa !8
  %424 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 1
  %425 = load i8, ptr %424, align 8, !tbaa !5
  %426 = add i8 %425, -11
  %427 = icmp ult i8 %426, 2
  %428 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 1, i32 0, i32 1
  %429 = zext i8 %425 to i64
  %430 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %429
  %431 = select i1 %427, ptr %428, ptr %430
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = zext i8 %432 to i32
  store i32 %433, ptr @zz_size, align 4, !tbaa !10
  %434 = zext i8 %432 to i64
  %435 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !8
  store ptr %436, ptr %423, align 8, !tbaa !5
  %437 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %438 = load i32, ptr @zz_size, align 4, !tbaa !10
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %439
  store ptr %437, ptr %440, align 8, !tbaa !8
  %441 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %442 = getelementptr inbounds [2 x %struct.LIST], ptr %441, i64 0, i64 1, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !5
  %444 = icmp eq ptr %443, %441
  br i1 %444, label %445, label %447

445:                                              ; preds = %422
  %446 = tail call i32 @DisposeObject(ptr noundef nonnull %441) #5
  br label %447

447:                                              ; preds = %445, %422
  %448 = load ptr, ptr %265, align 8, !tbaa !5
  %449 = getelementptr inbounds %struct.LIST, ptr %448, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !5
  %451 = icmp eq ptr %450, %88
  br i1 %451, label %708, label %452

452:                                              ; preds = %447, %472
  %453 = phi ptr [ %475, %472 ], [ %450, %447 ]
  %454 = phi ptr [ %473, %472 ], [ null, %447 ]
  br label %455

455:                                              ; preds = %452, %455
  %456 = phi ptr [ %458, %455 ], [ %453, %452 ]
  %457 = getelementptr inbounds [2 x %struct.LIST], ptr %456, i64 0, i64 1
  %458 = load ptr, ptr %457, align 8, !tbaa !5
  %459 = getelementptr inbounds %struct.word_type, ptr %458, i64 0, i32 1
  %460 = load i8, ptr %459, align 8, !tbaa !5
  switch i8 %460, label %464 [
    i8 0, label %455
    i8 1, label %472
    i8 9, label %461
  ]

461:                                              ; preds = %455
  %462 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %458) #5
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %472, label %467

464:                                              ; preds = %455
  %465 = add i8 %460, -9
  %466 = icmp ult i8 %465, 91
  br i1 %466, label %467, label %472

467:                                              ; preds = %464, %461
  %468 = icmp eq ptr %454, null
  br i1 %468, label %469, label %477

469:                                              ; preds = %467
  %470 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %471 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %470, ptr noundef nonnull @.str.4) #5
  br label %477

472:                                              ; preds = %455, %464, %461
  %473 = phi ptr [ %454, %461 ], [ %454, %464 ], [ %458, %455 ]
  %474 = getelementptr inbounds %struct.LIST, ptr %453, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !5
  %476 = icmp eq ptr %475, %88
  br i1 %476, label %708, label %452

477:                                              ; preds = %467, %469
  %478 = icmp eq ptr %453, %88
  br i1 %478, label %708, label %266

479:                                              ; preds = %266
  %480 = add i8 %271, -9
  %481 = icmp ult i8 %480, 91
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %484 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %483, ptr noundef nonnull @.str.3) #5
  br label %485

485:                                              ; preds = %482, %479
  %486 = getelementptr inbounds %struct.gapobj_type, ptr %268, i64 0, i32 3
  %487 = load i16, ptr %486, align 4
  %488 = icmp ult i16 %487, 8192
  br i1 %488, label %489, label %492

489:                                              ; preds = %485
  %490 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %491 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %490, ptr noundef nonnull @.str.6) #5
  br label %492

492:                                              ; preds = %485, %489
  %493 = getelementptr inbounds %struct.word_type, ptr %120, i64 0, i32 3, i32 1, i64 4
  %494 = load i32, ptr %493, align 4, !tbaa !5
  %495 = tail call i32 @llvm.smax.i32(i32 %86, i32 %494)
  %496 = getelementptr inbounds i8, ptr %269, i64 52
  %497 = load i32, ptr %496, align 4, !tbaa !5
  %498 = getelementptr inbounds %struct.word_type, ptr %269, i64 0, i32 3, i32 1, i64 4
  %499 = load i32, ptr %498, align 4, !tbaa !5
  %500 = tail call i32 @MinGap(i32 noundef %495, i32 noundef %497, i32 noundef %499, ptr noundef nonnull %486) #5
  %501 = load i32, ptr %493, align 4, !tbaa !5
  %502 = load i32, ptr %496, align 4, !tbaa !5
  %503 = load i32, ptr %498, align 4, !tbaa !5
  %504 = tail call i32 @MinGap(i32 noundef %501, i32 noundef %502, i32 noundef %503, ptr noundef nonnull %486) #5
  %505 = icmp eq i32 %500, %504
  br i1 %505, label %506, label %708

506:                                              ; preds = %492
  %507 = load ptr, ptr %95, align 8, !tbaa !5
  %508 = icmp eq ptr %507, %88
  br i1 %508, label %528, label %509

509:                                              ; preds = %506, %524
  %510 = phi ptr [ %526, %524 ], [ %507, %506 ]
  br label %511

511:                                              ; preds = %509, %511
  %512 = phi ptr [ %514, %511 ], [ %510, %509 ]
  %513 = getelementptr inbounds [2 x %struct.LIST], ptr %512, i64 0, i64 1
  %514 = load ptr, ptr %513, align 8, !tbaa !5
  %515 = getelementptr inbounds %struct.word_type, ptr %514, i64 0, i32 1
  %516 = load i8, ptr %515, align 8, !tbaa !5
  switch i8 %516, label %524 [
    i8 0, label %511
    i8 1, label %517
  ]

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.gapobj_type, ptr %514, i64 0, i32 3
  %519 = load i16, ptr %518, align 4
  %520 = icmp ult i16 %519, 8192
  %521 = and i16 %519, 512
  %522 = icmp eq i16 %521, 0
  %523 = or i1 %520, %522
  br i1 %523, label %524, label %708

524:                                              ; preds = %511, %517
  %525 = getelementptr inbounds %struct.LIST, ptr %510, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !5
  %527 = icmp eq ptr %526, %88
  br i1 %527, label %528, label %509

528:                                              ; preds = %524, %506
  %529 = getelementptr inbounds [2 x %struct.LIST], ptr %120, i64 0, i64 1, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !5
  %531 = getelementptr inbounds %struct.LIST, ptr %530, i64 0, i32 1
  %532 = load ptr, ptr %531, align 8, !tbaa !5
  %533 = icmp eq ptr %532, %88
  br i1 %533, label %550, label %534

534:                                              ; preds = %528, %546
  %535 = phi ptr [ %548, %546 ], [ %532, %528 ]
  br label %536

536:                                              ; preds = %534, %536
  %537 = phi ptr [ %539, %536 ], [ %535, %534 ]
  %538 = getelementptr inbounds [2 x %struct.LIST], ptr %537, i64 0, i64 1
  %539 = load ptr, ptr %538, align 8, !tbaa !5
  %540 = getelementptr inbounds %struct.word_type, ptr %539, i64 0, i32 1
  %541 = load i8, ptr %540, align 8, !tbaa !5
  switch i8 %541, label %542 [
    i8 0, label %536
    i8 1, label %546
  ]

542:                                              ; preds = %536
  %543 = add i8 %541, -9
  %544 = icmp ult i8 %543, 91
  br i1 %544, label %545, label %546

545:                                              ; preds = %542
  tail call fastcc void @EncloseInHcat(ptr noundef nonnull %539, ptr noundef %0, ptr noundef nonnull %88)
  br label %546

546:                                              ; preds = %536, %542, %545
  %547 = getelementptr inbounds %struct.LIST, ptr %535, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !5
  %549 = icmp eq ptr %548, %88
  br i1 %549, label %550, label %534

550:                                              ; preds = %546, %528
  %551 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !5
  %553 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !5
  %555 = getelementptr inbounds %struct.LIST, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !5
  %557 = icmp eq ptr %552, %88
  br i1 %557, label %586, label %558

558:                                              ; preds = %550
  %559 = getelementptr inbounds %struct.word_type, ptr %552, i64 0, i32 1
  %560 = load i8, ptr %559, align 8, !tbaa !5
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %565, label %562

562:                                              ; preds = %558
  %563 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %564 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %563, ptr noundef nonnull @.str.2) #5
  br label %565

565:                                              ; preds = %562, %558
  store ptr %552, ptr @zz_res, align 8, !tbaa !8
  store ptr %88, ptr @zz_hold, align 8, !tbaa !8
  %566 = load ptr, ptr %88, align 8, !tbaa !5
  store ptr %566, ptr @zz_tmp, align 8, !tbaa !8
  %567 = load ptr, ptr %552, align 8, !tbaa !5
  store ptr %567, ptr %88, align 8, !tbaa !5
  %568 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %569 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %570 = load ptr, ptr %569, align 8, !tbaa !5
  %571 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  store ptr %568, ptr %571, align 8, !tbaa !5
  %572 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %572, ptr %569, align 8, !tbaa !5
  %573 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %574 = getelementptr inbounds %struct.LIST, ptr %572, i64 0, i32 1
  store ptr %573, ptr %574, align 8, !tbaa !5
  store ptr %552, ptr @zz_res, align 8, !tbaa !8
  store ptr %556, ptr @zz_hold, align 8, !tbaa !8
  %575 = icmp eq ptr %556, null
  br i1 %575, label %586, label %576

576:                                              ; preds = %565
  %577 = load ptr, ptr %556, align 8, !tbaa !5
  store ptr %577, ptr @zz_tmp, align 8, !tbaa !8
  %578 = load ptr, ptr %552, align 8, !tbaa !5
  store ptr %578, ptr %556, align 8, !tbaa !5
  %579 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %580 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %581 = load ptr, ptr %580, align 8, !tbaa !5
  %582 = getelementptr inbounds %struct.LIST, ptr %581, i64 0, i32 1
  store ptr %579, ptr %582, align 8, !tbaa !5
  %583 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %583, ptr %580, align 8, !tbaa !5
  %584 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %585 = getelementptr inbounds %struct.LIST, ptr %583, i64 0, i32 1
  store ptr %584, ptr %585, align 8, !tbaa !5
  br label %586

586:                                              ; preds = %565, %576, %550
  %587 = load i32, ptr %493, align 4, !tbaa !5
  %588 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 3, i32 1, i64 4
  store i32 %587, ptr %588, align 4, !tbaa !5
  %589 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 3, i32 1, i64 4
  store i32 %587, ptr %589, align 4, !tbaa !5
  %590 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 3, i32 1, i64 4
  store i32 %587, ptr %590, align 4, !tbaa !5
  %591 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  store i32 %587, ptr %591, align 4, !tbaa !5
  %592 = load ptr, ptr %553, align 8, !tbaa !5
  br label %593

593:                                              ; preds = %606, %586
  %594 = phi ptr [ %592, %586 ], [ %595, %606 ]
  %595 = load ptr, ptr %594, align 8, !tbaa !5
  %596 = getelementptr inbounds %struct.word_type, ptr %595, i64 0, i32 1
  %597 = load i8, ptr %596, align 8, !tbaa !5
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %599, label %609

599:                                              ; preds = %593, %599
  %600 = phi ptr [ %602, %599 ], [ %595, %593 ]
  %601 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1
  %602 = load ptr, ptr %601, align 8, !tbaa !5
  %603 = getelementptr inbounds %struct.word_type, ptr %602, i64 0, i32 1
  %604 = load i8, ptr %603, align 8, !tbaa !5
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %599, label %606

606:                                              ; preds = %599
  %607 = add i8 %604, -119
  %608 = icmp ult i8 %607, 20
  br i1 %608, label %593, label %609

609:                                              ; preds = %606, %593
  %610 = getelementptr inbounds %struct.LIST, ptr %595, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !5
  %612 = icmp eq ptr %611, %592
  br i1 %612, label %708, label %613

613:                                              ; preds = %609, %702
  %614 = phi ptr [ %705, %702 ], [ %611, %609 ]
  %615 = phi ptr [ %704, %702 ], [ %610, %609 ]
  %616 = phi ptr [ %703, %702 ], [ %595, %609 ]
  br label %617

617:                                              ; preds = %613, %617
  %618 = phi ptr [ %620, %617 ], [ %614, %613 ]
  %619 = getelementptr inbounds [2 x %struct.LIST], ptr %618, i64 0, i64 1
  %620 = load ptr, ptr %619, align 8, !tbaa !5
  %621 = getelementptr inbounds %struct.word_type, ptr %620, i64 0, i32 1
  %622 = load i8, ptr %621, align 8, !tbaa !5
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %617, label %624

624:                                              ; preds = %617
  %625 = add i8 %622, -119
  %626 = icmp ult i8 %625, 20
  br i1 %626, label %632, label %627

627:                                              ; preds = %624
  %628 = getelementptr inbounds %struct.word_type, ptr %620, i64 0, i32 1
  %629 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %630 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %629, ptr noundef nonnull @.str.7) #5
  %631 = load i8, ptr %628, align 8, !tbaa !5
  br label %632

632:                                              ; preds = %624, %627
  %633 = phi i8 [ %622, %624 ], [ %631, %627 ]
  switch i8 %633, label %638 [
    i8 119, label %700
    i8 120, label %634
    i8 -123, label %634
    i8 -127, label %634
    i8 -126, label %634
    i8 121, label %636
    i8 122, label %636
    i8 123, label %636
    i8 -120, label %636
    i8 -119, label %636
    i8 -118, label %636
    i8 124, label %700
    i8 125, label %700
    i8 -125, label %700
    i8 -122, label %700
    i8 127, label %700
    i8 -128, label %700
    i8 -121, label %700
    i8 -124, label %700
  ]

634:                                              ; preds = %632, %632, %632, %632
  %635 = getelementptr inbounds %struct.closure_type, ptr %620, i64 0, i32 6
  br label %643

636:                                              ; preds = %632, %632, %632, %632, %632, %632
  %637 = getelementptr inbounds %struct.closure_type, ptr %620, i64 0, i32 5
  br label %643

638:                                              ; preds = %632
  %639 = zext i8 %633 to i32
  %640 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %641 = tail call ptr @Image(i32 noundef %639) #5
  %642 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef %640, ptr noundef nonnull @.str.23, ptr noundef %641) #5
  br label %698

643:                                              ; preds = %634, %636
  %644 = phi ptr [ %637, %636 ], [ %635, %634 ]
  %645 = load ptr, ptr %644, align 8, !tbaa !5
  %646 = icmp eq ptr %645, null
  br i1 %646, label %700, label %647

647:                                              ; preds = %643
  %648 = getelementptr inbounds [2 x %struct.LIST], ptr %645, i64 0, i64 1, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !5
  %650 = icmp eq ptr %649, %645
  br i1 %650, label %698, label %655

651:                                              ; preds = %658
  %652 = getelementptr inbounds [2 x %struct.LIST], ptr %660, i64 0, i64 1, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !5
  %654 = icmp eq ptr %653, %660
  br i1 %654, label %698, label %655

655:                                              ; preds = %647, %651
  %656 = phi ptr [ %653, %651 ], [ %649, %647 ]
  %657 = phi ptr [ %660, %651 ], [ %645, %647 ]
  br label %658

658:                                              ; preds = %658, %655
  %659 = phi ptr [ %660, %658 ], [ %656, %655 ]
  %660 = load ptr, ptr %659, align 8, !tbaa !5
  %661 = getelementptr inbounds %struct.word_type, ptr %660, i64 0, i32 1
  %662 = load i8, ptr %661, align 8, !tbaa !5
  switch i8 %662, label %651 [
    i8 0, label %658
    i8 8, label %663
  ]

663:                                              ; preds = %658
  %664 = icmp eq ptr %657, null
  %665 = icmp eq ptr %657, %0
  %666 = or i1 %664, %665
  br i1 %666, label %698, label %667

667:                                              ; preds = %663
  %668 = load ptr, ptr %615, align 8, !tbaa !5
  store ptr %668, ptr @xx_link, align 8, !tbaa !8
  store ptr %668, ptr @zz_hold, align 8, !tbaa !8
  %669 = getelementptr inbounds %struct.LIST, ptr %668, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !5
  %671 = icmp eq ptr %670, %668
  br i1 %671, label %682, label %672

672:                                              ; preds = %667
  store ptr %670, ptr @zz_res, align 8, !tbaa !8
  %673 = load ptr, ptr %668, align 8, !tbaa !5
  store ptr %673, ptr %670, align 8, !tbaa !5
  %674 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %675 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %676 = load ptr, ptr %675, align 8, !tbaa !5
  %677 = getelementptr inbounds %struct.LIST, ptr %676, i64 0, i32 1
  store ptr %674, ptr %677, align 8, !tbaa !5
  %678 = getelementptr inbounds %struct.LIST, ptr %675, i64 0, i32 1
  store ptr %675, ptr %678, align 8, !tbaa !5
  store ptr %675, ptr %675, align 8, !tbaa !5
  %679 = load ptr, ptr @xx_link, align 8, !tbaa !8
  %680 = getelementptr inbounds [2 x %struct.LIST], ptr %657, i64 0, i64 1, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !5
  br label %682

682:                                              ; preds = %667, %672
  %683 = phi ptr [ %656, %667 ], [ %681, %672 ]
  %684 = phi ptr [ %668, %667 ], [ %679, %672 ]
  store ptr %684, ptr @zz_res, align 8, !tbaa !8
  store ptr %683, ptr @zz_hold, align 8, !tbaa !8
  %685 = icmp eq ptr %683, null
  %686 = icmp eq ptr %684, null
  %687 = select i1 %685, i1 true, i1 %686
  br i1 %687, label %702, label %688

688:                                              ; preds = %682
  %689 = load ptr, ptr %683, align 8, !tbaa !5
  store ptr %689, ptr @zz_tmp, align 8, !tbaa !8
  %690 = load ptr, ptr %684, align 8, !tbaa !5
  store ptr %690, ptr %683, align 8, !tbaa !5
  %691 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %692 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %693 = load ptr, ptr %692, align 8, !tbaa !5
  %694 = getelementptr inbounds %struct.LIST, ptr %693, i64 0, i32 1
  store ptr %691, ptr %694, align 8, !tbaa !5
  %695 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %695, ptr %692, align 8, !tbaa !5
  %696 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %697 = getelementptr inbounds %struct.LIST, ptr %695, i64 0, i32 1
  store ptr %696, ptr %697, align 8, !tbaa !5
  br label %702

698:                                              ; preds = %651, %638, %647, %663
  %699 = load ptr, ptr %615, align 8, !tbaa !5
  br label %702

700:                                              ; preds = %632, %632, %632, %632, %632, %632, %632, %632, %632, %643
  %701 = load ptr, ptr %615, align 8, !tbaa !5
  br label %702

702:                                              ; preds = %682, %698, %688, %700
  %703 = phi ptr [ %616, %688 ], [ %699, %698 ], [ %701, %700 ], [ %616, %682 ]
  %704 = getelementptr inbounds %struct.LIST, ptr %703, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !5
  %706 = load ptr, ptr %553, align 8, !tbaa !5
  %707 = icmp eq ptr %705, %706
  br i1 %707, label %708, label %613

708:                                              ; preds = %82, %74, %61, %39, %24, %55, %112, %203, %224, %220, %257, %447, %477, %472, %517, %702, %232, %94, %8, %116, %262, %609, %492, %92
  %709 = phi i32 [ 0, %92 ], [ 0, %492 ], [ 1, %609 ], [ 0, %262 ], [ 0, %116 ], [ 0, %8 ], [ 0, %94 ], [ 0, %232 ], [ 1, %702 ], [ 0, %517 ], [ 0, %472 ], [ 0, %477 ], [ 0, %447 ], [ 0, %257 ], [ 0, %220 ], [ 0, %224 ], [ 0, %203 ], [ 0, %112 ], [ 0, %55 ], [ 0, %24 ], [ 0, %39 ], [ 0, %61 ], [ 0, %74 ], [ 0, %82 ]
  ret i32 %709
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @EncloseInHcat(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.18) #5
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 18), align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  store i32 %12, ptr @zz_size, align 4, !tbaa !10
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr @GetMemory(i32 noundef %12, ptr noundef %18) #5
  br label %22

20:                                               ; preds = %10
  store ptr %15, ptr @zz_hold, align 8, !tbaa !8
  %21 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %21, ptr %14, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %19, %17 ], [ %15, %20 ]
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  store i8 18, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !5
  store ptr %23, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !5
  store ptr %23, ptr %23, align 8, !tbaa !5
  %28 = getelementptr inbounds i8, ptr %23, i64 42
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, -2049
  store i16 %30, ptr %28, align 2
  %31 = load ptr, ptr %4, align 8, !tbaa !5
  store ptr %31, ptr @xx_link, align 8, !tbaa !8
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, %31
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  br i1 %34, label %41, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  store ptr %36, ptr %38, align 8, !tbaa !5
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  store ptr %33, ptr %39, align 8, !tbaa !5
  store ptr %31, ptr %32, align 8, !tbaa !5
  store ptr %31, ptr %35, align 8, !tbaa !5
  %40 = load ptr, ptr %25, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %22, %37
  %42 = phi ptr [ %31, %37 ], [ %36, %22 ]
  %43 = phi ptr [ %40, %37 ], [ %23, %22 ]
  store ptr %31, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  store ptr %43, ptr @zz_tmp, align 8, !tbaa !8
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  store ptr %42, ptr %25, align 8, !tbaa !5
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1, i32 1
  store ptr %23, ptr %46, align 8, !tbaa !5
  store ptr %43, ptr %44, align 8, !tbaa !5
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1, i32 1
  store ptr %31, ptr %47, align 8, !tbaa !5
  %48 = load ptr, ptr %4, align 8, !tbaa !5
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %52 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %51, ptr noundef nonnull @.str.19) #5
  br label %53

53:                                               ; preds = %50, %41
  %54 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1, i32 0, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !5
  %56 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1, i32 0, i32 2
  store i16 %55, ptr %56, align 2, !tbaa !5
  %57 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1048575
  %60 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -1048576
  %63 = or disjoint i32 %62, %59
  store i32 %63, ptr %60, align 4
  %64 = load i32, ptr %57, align 4
  %65 = and i32 %64, -1048576
  %66 = or disjoint i32 %65, %59
  store i32 %66, ptr %60, align 4
  %67 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 3
  store i32 %68, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 3, i32 1
  store i32 %71, ptr %72, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %74 = getelementptr inbounds i8, ptr %0, i64 52
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = getelementptr inbounds i8, ptr %23, i64 52
  store i32 %75, ptr %76, align 4, !tbaa !5
  %77 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %78 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 3, i32 1, i64 4
  store i32 %79, ptr %80, align 4, !tbaa !5
  %81 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 15), align 1, !tbaa !5
  %82 = zext i8 %81 to i32
  store i32 %82, ptr @zz_size, align 4, !tbaa !10
  %83 = zext i8 %81 to i64
  %84 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %53
  %88 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %89 = tail call ptr @GetMemory(i32 noundef %82, ptr noundef %88) #5
  store ptr %89, ptr @zz_hold, align 8, !tbaa !8
  br label %92

90:                                               ; preds = %53
  store ptr %85, ptr @zz_hold, align 8, !tbaa !8
  %91 = load ptr, ptr %85, align 8, !tbaa !5
  store ptr %91, ptr %84, align 8, !tbaa !8
  br label %92

92:                                               ; preds = %87, %90
  %93 = phi ptr [ %89, %87 ], [ %85, %90 ]
  %94 = getelementptr inbounds %struct.word_type, ptr %93, i64 0, i32 1
  store i8 15, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1, i32 1
  store ptr %93, ptr %96, align 8, !tbaa !5
  store ptr %93, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  store ptr %93, ptr %97, align 8, !tbaa !5
  store ptr %93, ptr %93, align 8, !tbaa !5
  %98 = load i32, ptr %76, align 4, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %93, i64 0, i32 3
  %100 = getelementptr inbounds i8, ptr %93, i64 52
  store i32 %98, ptr %100, align 4, !tbaa !5
  %101 = load i32, ptr %80, align 4, !tbaa !5
  %102 = getelementptr inbounds %struct.word_type, ptr %93, i64 0, i32 3, i32 1
  %103 = getelementptr inbounds %struct.word_type, ptr %93, i64 0, i32 3, i32 1, i64 4
  store i32 %101, ptr %103, align 4, !tbaa !5
  %104 = getelementptr inbounds i8, ptr %93, i64 41
  store i8 1, ptr %104, align 1, !tbaa !5
  %105 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = icmp eq ptr %106, %1
  br i1 %107, label %630, label %108

108:                                              ; preds = %92, %626
  %109 = phi ptr [ %628, %626 ], [ %106, %92 ]
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %113, %110 ], [ %109, %108 ]
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1
  %115 = load i8, ptr %114, align 8, !tbaa !5
  switch i8 %115, label %222 [
    i8 0, label %110
    i8 1, label %116
    i8 26, label %212
    i8 24, label %212
  ]

116:                                              ; preds = %110
  %117 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %118 = zext i8 %117 to i32
  store i32 %118, ptr @zz_size, align 4, !tbaa !10
  %119 = zext i8 %117 to i64
  %120 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %125 = tail call ptr @GetMemory(i32 noundef %118, ptr noundef %124) #5
  store ptr %125, ptr @zz_hold, align 8, !tbaa !8
  br label %128

126:                                              ; preds = %116
  store ptr %121, ptr @zz_hold, align 8, !tbaa !8
  %127 = load ptr, ptr %121, align 8, !tbaa !5
  store ptr %127, ptr %120, align 8, !tbaa !8
  br label %128

128:                                              ; preds = %123, %126
  %129 = phi ptr [ %125, %123 ], [ %121, %126 ]
  %130 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  store i8 1, ptr %130, align 8, !tbaa !5
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1, i32 1
  store ptr %129, ptr %132, align 8, !tbaa !5
  store ptr %129, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.LIST, ptr %129, i64 0, i32 1
  store ptr %129, ptr %133, align 8, !tbaa !5
  store ptr %129, ptr %129, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1, i32 0, i32 2
  %135 = load i16, ptr %134, align 2, !tbaa !5
  %136 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 2
  store i16 %135, ptr %136, align 2, !tbaa !5
  %137 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1048575
  %140 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, -1048576
  %143 = or disjoint i32 %142, %139
  store i32 %143, ptr %140, align 4
  %144 = load i32, ptr %137, align 4
  %145 = and i32 %144, -1048576
  %146 = or disjoint i32 %145, %139
  store i32 %146, ptr %140, align 4
  %147 = getelementptr inbounds %struct.gapobj_type, ptr %113, i64 0, i32 3
  %148 = load i16, ptr %147, align 4
  %149 = and i16 %148, 128
  %150 = getelementptr inbounds %struct.gapobj_type, ptr %129, i64 0, i32 3
  %151 = load i16, ptr %150, align 4
  %152 = and i16 %151, -129
  %153 = or disjoint i16 %152, %149
  store i16 %153, ptr %150, align 4
  %154 = load i16, ptr %147, align 4
  %155 = and i16 %154, 256
  %156 = and i16 %153, -257
  %157 = or disjoint i16 %156, %155
  store i16 %157, ptr %150, align 4
  %158 = load i16, ptr %147, align 4
  %159 = and i16 %158, 512
  %160 = and i16 %157, -513
  %161 = or disjoint i16 %160, %159
  store i16 %161, ptr %150, align 4
  %162 = load i16, ptr %147, align 4
  %163 = and i16 %162, 7168
  %164 = and i16 %161, -7169
  %165 = or disjoint i16 %164, %163
  store i16 %165, ptr %150, align 4
  %166 = load i16, ptr %147, align 4
  %167 = and i16 %166, -8192
  %168 = and i16 %165, 8191
  %169 = or disjoint i16 %168, %167
  store i16 %169, ptr %150, align 4
  %170 = getelementptr inbounds %struct.gapobj_type, ptr %113, i64 0, i32 3, i32 1
  %171 = load i16, ptr %170, align 2, !tbaa !5
  %172 = getelementptr inbounds %struct.gapobj_type, ptr %129, i64 0, i32 3, i32 1
  store i16 %171, ptr %172, align 2, !tbaa !5
  %173 = getelementptr inbounds i8, ptr %113, i64 41
  %174 = load i8, ptr %173, align 1, !tbaa !5
  %175 = getelementptr inbounds i8, ptr %129, i64 41
  store i8 %174, ptr %175, align 1, !tbaa !5
  %176 = getelementptr inbounds i8, ptr %113, i64 42
  %177 = load i8, ptr %176, align 2, !tbaa !5
  %178 = getelementptr inbounds i8, ptr %129, i64 42
  store i8 %177, ptr %178, align 2, !tbaa !5
  %179 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %180 = zext i8 %179 to i32
  store i32 %180, ptr @zz_size, align 4, !tbaa !10
  %181 = zext i8 %179 to i64
  %182 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %128
  %186 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %187 = tail call ptr @GetMemory(i32 noundef %180, ptr noundef %186) #5
  br label %190

188:                                              ; preds = %128
  store ptr %183, ptr @zz_hold, align 8, !tbaa !8
  %189 = load ptr, ptr %183, align 8, !tbaa !5
  store ptr %189, ptr %182, align 8, !tbaa !8
  br label %190

190:                                              ; preds = %185, %188
  %191 = phi ptr [ %187, %185 ], [ %183, %188 ]
  %192 = getelementptr inbounds %struct.word_type, ptr %191, i64 0, i32 1
  store i8 0, ptr %192, align 8, !tbaa !5
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %191, i64 0, i64 1, i32 1
  store ptr %191, ptr %193, align 8, !tbaa !5
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %191, i64 0, i64 1
  store ptr %191, ptr %194, align 8, !tbaa !5
  %195 = getelementptr inbounds %struct.LIST, ptr %191, i64 0, i32 1
  store ptr %191, ptr %195, align 8, !tbaa !5
  store ptr %191, ptr %191, align 8, !tbaa !5
  store ptr %191, ptr @xx_link, align 8, !tbaa !8
  store ptr %191, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %196 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %196, ptr @zz_tmp, align 8, !tbaa !8
  %197 = load ptr, ptr %191, align 8, !tbaa !5
  store ptr %197, ptr %23, align 8, !tbaa !5
  %198 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %199 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.LIST, ptr %200, i64 0, i32 1
  store ptr %198, ptr %201, align 8, !tbaa !5
  %202 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %202, ptr %199, align 8, !tbaa !5
  %203 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %204 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  store ptr %203, ptr %204, align 8, !tbaa !5
  %205 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %205, ptr @zz_res, align 8, !tbaa !8
  store ptr %129, ptr @zz_hold, align 8, !tbaa !8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %626, label %207

207:                                              ; preds = %190
  %208 = load ptr, ptr %131, align 8, !tbaa !5
  store ptr %208, ptr @zz_tmp, align 8, !tbaa !8
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !5
  store ptr %210, ptr %131, align 8, !tbaa !5
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %210, i64 0, i64 1, i32 1
  store ptr %129, ptr %211, align 8, !tbaa !5
  store ptr %208, ptr %209, align 8, !tbaa !5
  br label %622

212:                                              ; preds = %110, %110
  %213 = getelementptr inbounds %struct.LIST, ptr %113, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !5
  br label %215

215:                                              ; preds = %215, %212
  %216 = phi ptr [ %214, %212 ], [ %218, %215 ]
  %217 = getelementptr inbounds [2 x %struct.LIST], ptr %216, i64 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = getelementptr inbounds %struct.word_type, ptr %218, i64 0, i32 1
  %220 = load i8, ptr %219, align 8, !tbaa !5
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %215, label %222

222:                                              ; preds = %110, %215
  %223 = phi i8 [ %220, %215 ], [ %115, %110 ]
  %224 = phi ptr [ %218, %215 ], [ %113, %110 ]
  %225 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1
  %226 = icmp eq i8 %223, 9
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %229 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %228, ptr noundef nonnull @.str.20) #5
  br label %230

230:                                              ; preds = %227, %222
  %231 = getelementptr inbounds %struct.LIST, ptr %224, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  br label %233

233:                                              ; preds = %233, %230
  %234 = phi ptr [ %232, %230 ], [ %236, %233 ]
  %235 = getelementptr inbounds [2 x %struct.LIST], ptr %234, i64 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1
  %238 = load i8, ptr %237, align 8, !tbaa !5
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %233, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1
  %242 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 9), align 1, !tbaa !5
  %243 = zext i8 %242 to i32
  store i32 %243, ptr @zz_size, align 4, !tbaa !10
  %244 = zext i8 %242 to i64
  %245 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %240
  %249 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %250 = tail call ptr @GetMemory(i32 noundef %243, ptr noundef %249) #5
  store ptr %250, ptr @zz_hold, align 8, !tbaa !8
  br label %253

251:                                              ; preds = %240
  store ptr %246, ptr @zz_hold, align 8, !tbaa !8
  %252 = load ptr, ptr %246, align 8, !tbaa !5
  store ptr %252, ptr %245, align 8, !tbaa !8
  br label %253

253:                                              ; preds = %248, %251
  %254 = phi ptr [ %250, %248 ], [ %246, %251 ]
  %255 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 1
  store i8 9, ptr %255, align 8, !tbaa !5
  %256 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1, i32 1
  store ptr %254, ptr %257, align 8, !tbaa !5
  store ptr %254, ptr %256, align 8, !tbaa !5
  %258 = getelementptr inbounds %struct.LIST, ptr %254, i64 0, i32 1
  store ptr %254, ptr %258, align 8, !tbaa !5
  store ptr %254, ptr %254, align 8, !tbaa !5
  %259 = getelementptr inbounds %struct.word_type, ptr %224, i64 0, i32 1, i32 0, i32 2
  %260 = load i16, ptr %259, align 2, !tbaa !5
  %261 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 1, i32 0, i32 2
  store i16 %260, ptr %261, align 2, !tbaa !5
  %262 = getelementptr inbounds %struct.word_type, ptr %224, i64 0, i32 1, i32 0, i32 3
  %263 = load i32, ptr %262, align 4
  %264 = and i32 %263, 1048575
  %265 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 1, i32 0, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = and i32 %266, -1048576
  %268 = or disjoint i32 %267, %264
  store i32 %268, ptr %265, align 4
  %269 = load i32, ptr %262, align 4
  %270 = and i32 %269, -1048576
  %271 = or disjoint i32 %270, %264
  store i32 %271, ptr %265, align 4
  %272 = icmp eq ptr %224, %113
  br i1 %272, label %373, label %273

273:                                              ; preds = %253
  %274 = load i8, ptr %225, align 8, !tbaa !5
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !5
  %278 = zext i8 %277 to i32
  store i32 %278, ptr @zz_size, align 4, !tbaa !10
  %279 = zext i8 %277 to i64
  %280 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %273
  %284 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %285 = tail call ptr @GetMemory(i32 noundef %278, ptr noundef %284) #5
  store ptr %285, ptr @zz_hold, align 8, !tbaa !8
  br label %288

286:                                              ; preds = %273
  store ptr %281, ptr @zz_hold, align 8, !tbaa !8
  %287 = load ptr, ptr %281, align 8, !tbaa !5
  store ptr %287, ptr %280, align 8, !tbaa !8
  br label %288

288:                                              ; preds = %283, %286
  %289 = phi ptr [ %285, %283 ], [ %281, %286 ]
  %290 = load i8, ptr %225, align 8, !tbaa !5
  %291 = getelementptr inbounds %struct.word_type, ptr %289, i64 0, i32 1
  store i8 %290, ptr %291, align 8, !tbaa !5
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1, i32 1
  store ptr %289, ptr %293, align 8, !tbaa !5
  store ptr %289, ptr %292, align 8, !tbaa !5
  %294 = getelementptr inbounds %struct.LIST, ptr %289, i64 0, i32 1
  store ptr %289, ptr %294, align 8, !tbaa !5
  store ptr %289, ptr %289, align 8, !tbaa !5
  %295 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 3
  %296 = load i32, ptr %295, align 8, !tbaa !5
  %297 = getelementptr inbounds %struct.word_type, ptr %289, i64 0, i32 3
  store i32 %296, ptr %297, align 8, !tbaa !5
  %298 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 3, i32 1
  %299 = load i32, ptr %298, align 8, !tbaa !5
  %300 = getelementptr inbounds %struct.word_type, ptr %289, i64 0, i32 3, i32 1
  store i32 %299, ptr %300, align 8, !tbaa !5
  %301 = load i32, ptr %99, align 8, !tbaa !5
  %302 = getelementptr inbounds i8, ptr %289, i64 52
  store i32 %301, ptr %302, align 4, !tbaa !5
  %303 = load i32, ptr %102, align 8, !tbaa !5
  %304 = getelementptr inbounds %struct.word_type, ptr %289, i64 0, i32 3, i32 1, i64 4
  store i32 %303, ptr %304, align 4, !tbaa !5
  %305 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %306 = zext i8 %305 to i32
  store i32 %306, ptr @zz_size, align 4, !tbaa !10
  %307 = zext i8 %305 to i64
  %308 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %288
  %312 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %313 = tail call ptr @GetMemory(i32 noundef %306, ptr noundef %312) #5
  br label %316

314:                                              ; preds = %288
  store ptr %309, ptr @zz_hold, align 8, !tbaa !8
  %315 = load ptr, ptr %309, align 8, !tbaa !5
  store ptr %315, ptr %308, align 8, !tbaa !8
  br label %316

316:                                              ; preds = %311, %314
  %317 = phi ptr [ %313, %311 ], [ %309, %314 ]
  %318 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 1
  store i8 0, ptr %318, align 8, !tbaa !5
  %319 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1, i32 1
  store ptr %317, ptr %319, align 8, !tbaa !5
  %320 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1
  store ptr %317, ptr %320, align 8, !tbaa !5
  %321 = getelementptr inbounds %struct.LIST, ptr %317, i64 0, i32 1
  store ptr %317, ptr %321, align 8, !tbaa !5
  store ptr %317, ptr %317, align 8, !tbaa !5
  store ptr %317, ptr @xx_link, align 8, !tbaa !8
  store ptr %317, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %322 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %322, ptr @zz_tmp, align 8, !tbaa !8
  %323 = load ptr, ptr %317, align 8, !tbaa !5
  store ptr %323, ptr %23, align 8, !tbaa !5
  %324 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %325 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %326 = load ptr, ptr %325, align 8, !tbaa !5
  %327 = getelementptr inbounds %struct.LIST, ptr %326, i64 0, i32 1
  store ptr %324, ptr %327, align 8, !tbaa !5
  %328 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %328, ptr %325, align 8, !tbaa !5
  %329 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %330 = getelementptr inbounds %struct.LIST, ptr %328, i64 0, i32 1
  store ptr %329, ptr %330, align 8, !tbaa !5
  %331 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %331, ptr @zz_res, align 8, !tbaa !8
  store ptr %289, ptr @zz_hold, align 8, !tbaa !8
  %332 = icmp eq ptr %331, null
  br i1 %332, label %339, label %333

333:                                              ; preds = %316
  %334 = load ptr, ptr %292, align 8, !tbaa !5
  store ptr %334, ptr @zz_tmp, align 8, !tbaa !8
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  store ptr %336, ptr %292, align 8, !tbaa !5
  %337 = getelementptr inbounds [2 x %struct.LIST], ptr %336, i64 0, i64 1, i32 1
  store ptr %289, ptr %337, align 8, !tbaa !5
  store ptr %334, ptr %335, align 8, !tbaa !5
  %338 = getelementptr inbounds [2 x %struct.LIST], ptr %334, i64 0, i64 1, i32 1
  store ptr %331, ptr %338, align 8, !tbaa !5
  br label %339

339:                                              ; preds = %316, %333
  %340 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %341 = zext i8 %340 to i32
  store i32 %341, ptr @zz_size, align 4, !tbaa !10
  %342 = zext i8 %340 to i64
  %343 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %348 = tail call ptr @GetMemory(i32 noundef %341, ptr noundef %347) #5
  br label %351

349:                                              ; preds = %339
  store ptr %344, ptr @zz_hold, align 8, !tbaa !8
  %350 = load ptr, ptr %344, align 8, !tbaa !5
  store ptr %350, ptr %343, align 8, !tbaa !8
  br label %351

351:                                              ; preds = %346, %349
  %352 = phi ptr [ %348, %346 ], [ %344, %349 ]
  %353 = getelementptr inbounds %struct.word_type, ptr %352, i64 0, i32 1
  store i8 0, ptr %353, align 8, !tbaa !5
  %354 = getelementptr inbounds [2 x %struct.LIST], ptr %352, i64 0, i64 1, i32 1
  store ptr %352, ptr %354, align 8, !tbaa !5
  %355 = getelementptr inbounds [2 x %struct.LIST], ptr %352, i64 0, i64 1
  store ptr %352, ptr %355, align 8, !tbaa !5
  %356 = getelementptr inbounds %struct.LIST, ptr %352, i64 0, i32 1
  store ptr %352, ptr %356, align 8, !tbaa !5
  store ptr %352, ptr %352, align 8, !tbaa !5
  store ptr %352, ptr @xx_link, align 8, !tbaa !8
  store ptr %352, ptr @zz_res, align 8, !tbaa !8
  store ptr %289, ptr @zz_hold, align 8, !tbaa !8
  %357 = load ptr, ptr %289, align 8, !tbaa !5
  store ptr %357, ptr @zz_tmp, align 8, !tbaa !8
  %358 = load ptr, ptr %352, align 8, !tbaa !5
  store ptr %358, ptr %289, align 8, !tbaa !5
  %359 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %360 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %361 = load ptr, ptr %360, align 8, !tbaa !5
  %362 = getelementptr inbounds %struct.LIST, ptr %361, i64 0, i32 1
  store ptr %359, ptr %362, align 8, !tbaa !5
  %363 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %363, ptr %360, align 8, !tbaa !5
  %364 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %365 = getelementptr inbounds %struct.LIST, ptr %363, i64 0, i32 1
  store ptr %364, ptr %365, align 8, !tbaa !5
  %366 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %366, ptr @zz_res, align 8, !tbaa !8
  store ptr %254, ptr @zz_hold, align 8, !tbaa !8
  %367 = icmp eq ptr %366, null
  br i1 %367, label %411, label %368

368:                                              ; preds = %351
  %369 = load ptr, ptr %256, align 8, !tbaa !5
  store ptr %369, ptr @zz_tmp, align 8, !tbaa !8
  %370 = getelementptr inbounds [2 x %struct.LIST], ptr %366, i64 0, i64 1
  %371 = load ptr, ptr %370, align 8, !tbaa !5
  store ptr %371, ptr %256, align 8, !tbaa !5
  %372 = getelementptr inbounds [2 x %struct.LIST], ptr %371, i64 0, i64 1, i32 1
  store ptr %254, ptr %372, align 8, !tbaa !5
  store ptr %369, ptr %370, align 8, !tbaa !5
  br label %407

373:                                              ; preds = %253
  %374 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %375 = zext i8 %374 to i32
  store i32 %375, ptr @zz_size, align 4, !tbaa !10
  %376 = zext i8 %374 to i64
  %377 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !8
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %373
  %381 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %382 = tail call ptr @GetMemory(i32 noundef %375, ptr noundef %381) #5
  br label %385

383:                                              ; preds = %373
  store ptr %378, ptr @zz_hold, align 8, !tbaa !8
  %384 = load ptr, ptr %378, align 8, !tbaa !5
  store ptr %384, ptr %377, align 8, !tbaa !8
  br label %385

385:                                              ; preds = %380, %383
  %386 = phi ptr [ %382, %380 ], [ %378, %383 ]
  %387 = getelementptr inbounds %struct.word_type, ptr %386, i64 0, i32 1
  store i8 0, ptr %387, align 8, !tbaa !5
  %388 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1, i32 1
  store ptr %386, ptr %388, align 8, !tbaa !5
  %389 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1
  store ptr %386, ptr %389, align 8, !tbaa !5
  %390 = getelementptr inbounds %struct.LIST, ptr %386, i64 0, i32 1
  store ptr %386, ptr %390, align 8, !tbaa !5
  store ptr %386, ptr %386, align 8, !tbaa !5
  store ptr %386, ptr @xx_link, align 8, !tbaa !8
  store ptr %386, ptr @zz_res, align 8, !tbaa !8
  store ptr %23, ptr @zz_hold, align 8, !tbaa !8
  %391 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %391, ptr @zz_tmp, align 8, !tbaa !8
  %392 = load ptr, ptr %386, align 8, !tbaa !5
  store ptr %392, ptr %23, align 8, !tbaa !5
  %393 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %394 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %395 = load ptr, ptr %394, align 8, !tbaa !5
  %396 = getelementptr inbounds %struct.LIST, ptr %395, i64 0, i32 1
  store ptr %393, ptr %396, align 8, !tbaa !5
  %397 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %397, ptr %394, align 8, !tbaa !5
  %398 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %399 = getelementptr inbounds %struct.LIST, ptr %397, i64 0, i32 1
  store ptr %398, ptr %399, align 8, !tbaa !5
  %400 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %400, ptr @zz_res, align 8, !tbaa !8
  store ptr %254, ptr @zz_hold, align 8, !tbaa !8
  %401 = icmp eq ptr %400, null
  br i1 %401, label %411, label %402

402:                                              ; preds = %385
  %403 = load ptr, ptr %256, align 8, !tbaa !5
  store ptr %403, ptr @zz_tmp, align 8, !tbaa !8
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %400, i64 0, i64 1
  %405 = load ptr, ptr %404, align 8, !tbaa !5
  store ptr %405, ptr %256, align 8, !tbaa !5
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %405, i64 0, i64 1, i32 1
  store ptr %254, ptr %406, align 8, !tbaa !5
  store ptr %403, ptr %404, align 8, !tbaa !5
  br label %407

407:                                              ; preds = %368, %402
  %408 = phi ptr [ %403, %402 ], [ %369, %368 ]
  %409 = phi ptr [ %400, %402 ], [ %366, %368 ]
  %410 = getelementptr inbounds [2 x %struct.LIST], ptr %408, i64 0, i64 1, i32 1
  store ptr %409, ptr %410, align 8, !tbaa !5
  br label %411

411:                                              ; preds = %407, %385, %351
  %412 = icmp eq ptr %236, %2
  br i1 %412, label %413, label %418

413:                                              ; preds = %411
  %414 = getelementptr inbounds %struct.word_type, ptr %224, i64 0, i32 3
  %415 = load i32, ptr %414, align 8, !tbaa !5
  store i32 %415, ptr %73, align 8, !tbaa !5
  %416 = getelementptr inbounds %struct.word_type, ptr %224, i64 0, i32 3, i32 1
  %417 = load i32, ptr %416, align 8, !tbaa !5
  store i32 %417, ptr %77, align 8, !tbaa !5
  br label %505

418:                                              ; preds = %411
  %419 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 26), align 1, !tbaa !5
  %420 = zext i8 %419 to i32
  store i32 %420, ptr @zz_size, align 4, !tbaa !10
  %421 = zext i8 %419 to i64
  %422 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !8
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %428

425:                                              ; preds = %418
  %426 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %427 = tail call ptr @GetMemory(i32 noundef %420, ptr noundef %426) #5
  store ptr %427, ptr @zz_hold, align 8, !tbaa !8
  br label %430

428:                                              ; preds = %418
  store ptr %423, ptr @zz_hold, align 8, !tbaa !8
  %429 = load ptr, ptr %423, align 8, !tbaa !5
  store ptr %429, ptr %422, align 8, !tbaa !8
  br label %430

430:                                              ; preds = %425, %428
  %431 = phi ptr [ %427, %425 ], [ %423, %428 ]
  %432 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 1
  store i8 26, ptr %432, align 8, !tbaa !5
  %433 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1, i32 1
  store ptr %431, ptr %433, align 8, !tbaa !5
  %434 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1
  store ptr %431, ptr %434, align 8, !tbaa !5
  %435 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  store ptr %431, ptr %435, align 8, !tbaa !5
  store ptr %431, ptr %431, align 8, !tbaa !5
  %436 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1, i32 0, i32 2
  %437 = load i16, ptr %436, align 2, !tbaa !5
  %438 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 1, i32 0, i32 2
  store i16 %437, ptr %438, align 2, !tbaa !5
  %439 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1, i32 0, i32 3
  %440 = load i32, ptr %439, align 4
  %441 = and i32 %440, 1048575
  %442 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 1, i32 0, i32 3
  %443 = load i32, ptr %442, align 4
  %444 = and i32 %443, -1048576
  %445 = or disjoint i32 %444, %441
  store i32 %445, ptr %442, align 4
  %446 = load i32, ptr %439, align 4
  %447 = and i32 %446, -1048576
  %448 = or disjoint i32 %447, %441
  store i32 %448, ptr %442, align 4
  %449 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 3
  %450 = load i32, ptr %449, align 8, !tbaa !5
  %451 = getelementptr inbounds %struct.closure_type, ptr %431, i64 0, i32 4
  store i32 %450, ptr %451, align 8, !tbaa !5
  %452 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 3, i32 1
  %453 = load i32, ptr %452, align 8, !tbaa !5
  %454 = add nsw i32 %453, %450
  %455 = getelementptr inbounds %struct.closure_type, ptr %431, i64 0, i32 4, i32 0, i32 1
  store i32 %454, ptr %455, align 4, !tbaa !5
  %456 = load i32, ptr %452, align 8, !tbaa !5
  %457 = getelementptr inbounds %struct.closure_type, ptr %431, i64 0, i32 4, i32 0, i32 2
  store i32 %456, ptr %457, align 8, !tbaa !5
  %458 = load i32, ptr %449, align 8, !tbaa !5
  %459 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 3
  store i32 %458, ptr %459, align 8, !tbaa !5
  %460 = load i32, ptr %452, align 8, !tbaa !5
  %461 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 3, i32 1
  store i32 %460, ptr %461, align 8, !tbaa !5
  %462 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 3, i32 1, i64 4
  store i32 0, ptr %462, align 4, !tbaa !5
  %463 = getelementptr inbounds i8, ptr %431, i64 52
  store i32 0, ptr %463, align 4, !tbaa !5
  %464 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.21, ptr noundef nonnull %241) #5
  %465 = getelementptr inbounds %struct.word_type, ptr %464, i64 0, i32 3
  %466 = getelementptr inbounds %struct.word_type, ptr %464, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %465, i8 0, i64 16, i1 false)
  %467 = load i32, ptr %466, align 8
  %468 = and i32 %467, -1610612737
  %469 = or disjoint i32 %468, 536870912
  store i32 %469, ptr %466, align 8
  %470 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %471 = zext i8 %470 to i32
  store i32 %471, ptr @zz_size, align 4, !tbaa !10
  %472 = zext i8 %470 to i64
  %473 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %479

476:                                              ; preds = %430
  %477 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %478 = tail call ptr @GetMemory(i32 noundef %471, ptr noundef %477) #5
  br label %481

479:                                              ; preds = %430
  store ptr %474, ptr @zz_hold, align 8, !tbaa !8
  %480 = load ptr, ptr %474, align 8, !tbaa !5
  store ptr %480, ptr %473, align 8, !tbaa !8
  br label %481

481:                                              ; preds = %476, %479
  %482 = phi ptr [ %478, %476 ], [ %474, %479 ]
  %483 = getelementptr inbounds %struct.word_type, ptr %482, i64 0, i32 1
  store i8 0, ptr %483, align 8, !tbaa !5
  %484 = getelementptr inbounds [2 x %struct.LIST], ptr %482, i64 0, i64 1, i32 1
  store ptr %482, ptr %484, align 8, !tbaa !5
  %485 = getelementptr inbounds [2 x %struct.LIST], ptr %482, i64 0, i64 1
  store ptr %482, ptr %485, align 8, !tbaa !5
  %486 = getelementptr inbounds %struct.LIST, ptr %482, i64 0, i32 1
  store ptr %482, ptr %486, align 8, !tbaa !5
  store ptr %482, ptr %482, align 8, !tbaa !5
  store ptr %482, ptr @xx_link, align 8, !tbaa !8
  store ptr %482, ptr @zz_res, align 8, !tbaa !8
  store ptr %431, ptr @zz_hold, align 8, !tbaa !8
  %487 = load ptr, ptr %431, align 8, !tbaa !5
  store ptr %487, ptr @zz_tmp, align 8, !tbaa !8
  %488 = load ptr, ptr %482, align 8, !tbaa !5
  store ptr %488, ptr %431, align 8, !tbaa !5
  %489 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %490 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %491 = load ptr, ptr %490, align 8, !tbaa !5
  %492 = getelementptr inbounds %struct.LIST, ptr %491, i64 0, i32 1
  store ptr %489, ptr %492, align 8, !tbaa !5
  %493 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %493, ptr %490, align 8, !tbaa !5
  %494 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %495 = getelementptr inbounds %struct.LIST, ptr %493, i64 0, i32 1
  store ptr %494, ptr %495, align 8, !tbaa !5
  %496 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %496, ptr @zz_res, align 8, !tbaa !8
  store ptr %464, ptr @zz_hold, align 8, !tbaa !8
  %497 = icmp eq ptr %496, null
  br i1 %497, label %505, label %498

498:                                              ; preds = %481
  %499 = getelementptr inbounds [2 x %struct.LIST], ptr %464, i64 0, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !5
  store ptr %500, ptr @zz_tmp, align 8, !tbaa !8
  %501 = getelementptr inbounds [2 x %struct.LIST], ptr %496, i64 0, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !5
  store ptr %502, ptr %499, align 8, !tbaa !5
  %503 = getelementptr inbounds [2 x %struct.LIST], ptr %502, i64 0, i64 1, i32 1
  store ptr %464, ptr %503, align 8, !tbaa !5
  store ptr %500, ptr %501, align 8, !tbaa !5
  %504 = getelementptr inbounds [2 x %struct.LIST], ptr %500, i64 0, i64 1, i32 1
  store ptr %496, ptr %504, align 8, !tbaa !5
  br label %505

505:                                              ; preds = %481, %498, %413
  %506 = phi ptr [ %0, %413 ], [ %431, %498 ], [ %431, %481 ]
  %507 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %508 = zext i8 %507 to i32
  store i32 %508, ptr @zz_size, align 4, !tbaa !10
  %509 = zext i8 %507 to i64
  %510 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !8
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %516

513:                                              ; preds = %505
  %514 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %515 = tail call ptr @GetMemory(i32 noundef %508, ptr noundef %514) #5
  br label %518

516:                                              ; preds = %505
  store ptr %511, ptr @zz_hold, align 8, !tbaa !8
  %517 = load ptr, ptr %511, align 8, !tbaa !5
  store ptr %517, ptr %510, align 8, !tbaa !8
  br label %518

518:                                              ; preds = %513, %516
  %519 = phi ptr [ %515, %513 ], [ %511, %516 ]
  %520 = getelementptr inbounds %struct.word_type, ptr %519, i64 0, i32 1
  store i8 0, ptr %520, align 8, !tbaa !5
  %521 = getelementptr inbounds [2 x %struct.LIST], ptr %519, i64 0, i64 1, i32 1
  store ptr %519, ptr %521, align 8, !tbaa !5
  %522 = getelementptr inbounds [2 x %struct.LIST], ptr %519, i64 0, i64 1
  store ptr %519, ptr %522, align 8, !tbaa !5
  %523 = getelementptr inbounds %struct.LIST, ptr %519, i64 0, i32 1
  store ptr %519, ptr %523, align 8, !tbaa !5
  store ptr %519, ptr %519, align 8, !tbaa !5
  store ptr %519, ptr @xx_link, align 8, !tbaa !8
  store ptr %519, ptr @zz_res, align 8, !tbaa !8
  store ptr %254, ptr @zz_hold, align 8, !tbaa !8
  %524 = load ptr, ptr %254, align 8, !tbaa !5
  store ptr %524, ptr @zz_tmp, align 8, !tbaa !8
  %525 = load ptr, ptr %519, align 8, !tbaa !5
  store ptr %525, ptr %254, align 8, !tbaa !5
  %526 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %527 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %528 = load ptr, ptr %527, align 8, !tbaa !5
  %529 = getelementptr inbounds %struct.LIST, ptr %528, i64 0, i32 1
  store ptr %526, ptr %529, align 8, !tbaa !5
  %530 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %530, ptr %527, align 8, !tbaa !5
  %531 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %532 = getelementptr inbounds %struct.LIST, ptr %530, i64 0, i32 1
  store ptr %531, ptr %532, align 8, !tbaa !5
  %533 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %533, ptr @zz_res, align 8, !tbaa !8
  store ptr %506, ptr @zz_hold, align 8, !tbaa !8
  %534 = icmp eq ptr %533, null
  br i1 %534, label %542, label %535

535:                                              ; preds = %518
  %536 = getelementptr inbounds [2 x %struct.LIST], ptr %506, i64 0, i64 1
  %537 = load ptr, ptr %536, align 8, !tbaa !5
  store ptr %537, ptr @zz_tmp, align 8, !tbaa !8
  %538 = getelementptr inbounds [2 x %struct.LIST], ptr %533, i64 0, i64 1
  %539 = load ptr, ptr %538, align 8, !tbaa !5
  store ptr %539, ptr %536, align 8, !tbaa !5
  %540 = getelementptr inbounds [2 x %struct.LIST], ptr %539, i64 0, i64 1, i32 1
  store ptr %506, ptr %540, align 8, !tbaa !5
  store ptr %537, ptr %538, align 8, !tbaa !5
  %541 = getelementptr inbounds [2 x %struct.LIST], ptr %537, i64 0, i64 1, i32 1
  store ptr %533, ptr %541, align 8, !tbaa !5
  br label %542

542:                                              ; preds = %518, %535
  %543 = getelementptr inbounds %struct.word_type, ptr %506, i64 0, i32 3
  %544 = load i32, ptr %543, align 8, !tbaa !5
  %545 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 3
  store i32 %544, ptr %545, align 8, !tbaa !5
  %546 = getelementptr inbounds %struct.word_type, ptr %506, i64 0, i32 3, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !5
  %548 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 3, i32 1
  store i32 %547, ptr %548, align 8, !tbaa !5
  %549 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %550 = zext i8 %549 to i32
  store i32 %550, ptr @zz_size, align 4, !tbaa !10
  %551 = zext i8 %549 to i64
  %552 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !8
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %558

555:                                              ; preds = %542
  %556 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %557 = tail call ptr @GetMemory(i32 noundef %550, ptr noundef %556) #5
  br label %560

558:                                              ; preds = %542
  store ptr %553, ptr @zz_hold, align 8, !tbaa !8
  %559 = load ptr, ptr %553, align 8, !tbaa !5
  store ptr %559, ptr %552, align 8, !tbaa !8
  br label %560

560:                                              ; preds = %555, %558
  %561 = phi ptr [ %557, %555 ], [ %553, %558 ]
  %562 = getelementptr inbounds %struct.word_type, ptr %561, i64 0, i32 1
  store i8 0, ptr %562, align 8, !tbaa !5
  %563 = getelementptr inbounds [2 x %struct.LIST], ptr %561, i64 0, i64 1, i32 1
  store ptr %561, ptr %563, align 8, !tbaa !5
  %564 = getelementptr inbounds [2 x %struct.LIST], ptr %561, i64 0, i64 1
  store ptr %561, ptr %564, align 8, !tbaa !5
  %565 = getelementptr inbounds %struct.LIST, ptr %561, i64 0, i32 1
  store ptr %561, ptr %565, align 8, !tbaa !5
  store ptr %561, ptr %561, align 8, !tbaa !5
  store ptr %561, ptr @xx_link, align 8, !tbaa !8
  store ptr %561, ptr @zz_res, align 8, !tbaa !8
  store ptr %254, ptr @zz_hold, align 8, !tbaa !8
  %566 = load ptr, ptr %254, align 8, !tbaa !5
  store ptr %566, ptr @zz_tmp, align 8, !tbaa !8
  %567 = load ptr, ptr %561, align 8, !tbaa !5
  store ptr %567, ptr %254, align 8, !tbaa !5
  %568 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %569 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %570 = load ptr, ptr %569, align 8, !tbaa !5
  %571 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  store ptr %568, ptr %571, align 8, !tbaa !5
  %572 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %572, ptr %569, align 8, !tbaa !5
  %573 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %574 = getelementptr inbounds %struct.LIST, ptr %572, i64 0, i32 1
  store ptr %573, ptr %574, align 8, !tbaa !5
  %575 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %575, ptr @zz_res, align 8, !tbaa !8
  store ptr %93, ptr @zz_hold, align 8, !tbaa !8
  %576 = icmp eq ptr %575, null
  br i1 %576, label %583, label %577

577:                                              ; preds = %560
  %578 = load ptr, ptr %95, align 8, !tbaa !5
  store ptr %578, ptr @zz_tmp, align 8, !tbaa !8
  %579 = getelementptr inbounds [2 x %struct.LIST], ptr %575, i64 0, i64 1
  %580 = load ptr, ptr %579, align 8, !tbaa !5
  store ptr %580, ptr %95, align 8, !tbaa !5
  %581 = getelementptr inbounds [2 x %struct.LIST], ptr %580, i64 0, i64 1, i32 1
  store ptr %93, ptr %581, align 8, !tbaa !5
  store ptr %578, ptr %579, align 8, !tbaa !5
  %582 = getelementptr inbounds [2 x %struct.LIST], ptr %578, i64 0, i64 1, i32 1
  store ptr %575, ptr %582, align 8, !tbaa !5
  br label %583

583:                                              ; preds = %560, %577
  %584 = load i32, ptr %100, align 4, !tbaa !5
  %585 = getelementptr inbounds i8, ptr %254, i64 52
  store i32 %584, ptr %585, align 4, !tbaa !5
  %586 = load i32, ptr %103, align 4, !tbaa !5
  %587 = getelementptr inbounds %struct.word_type, ptr %254, i64 0, i32 3, i32 1, i64 4
  store i32 %586, ptr %587, align 4, !tbaa !5
  %588 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %589 = zext i8 %588 to i32
  store i32 %589, ptr @zz_size, align 4, !tbaa !10
  %590 = zext i8 %588 to i64
  %591 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %590
  %592 = load ptr, ptr %591, align 8, !tbaa !8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %597

594:                                              ; preds = %583
  %595 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %596 = tail call ptr @GetMemory(i32 noundef %589, ptr noundef %595) #5
  br label %599

597:                                              ; preds = %583
  store ptr %592, ptr @zz_hold, align 8, !tbaa !8
  %598 = load ptr, ptr %592, align 8, !tbaa !5
  store ptr %598, ptr %591, align 8, !tbaa !8
  br label %599

599:                                              ; preds = %594, %597
  %600 = phi ptr [ %596, %594 ], [ %592, %597 ]
  %601 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1
  store i8 0, ptr %601, align 8, !tbaa !5
  %602 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1, i32 1
  store ptr %600, ptr %602, align 8, !tbaa !5
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1
  store ptr %600, ptr %603, align 8, !tbaa !5
  %604 = getelementptr inbounds %struct.LIST, ptr %600, i64 0, i32 1
  store ptr %600, ptr %604, align 8, !tbaa !5
  store ptr %600, ptr %600, align 8, !tbaa !5
  store ptr %600, ptr @xx_link, align 8, !tbaa !8
  store ptr %600, ptr @zz_res, align 8, !tbaa !8
  store ptr %93, ptr @zz_hold, align 8, !tbaa !8
  %605 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %605, ptr @zz_tmp, align 8, !tbaa !8
  %606 = load ptr, ptr %600, align 8, !tbaa !5
  store ptr %606, ptr %93, align 8, !tbaa !5
  %607 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %608 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %609 = load ptr, ptr %608, align 8, !tbaa !5
  %610 = getelementptr inbounds %struct.LIST, ptr %609, i64 0, i32 1
  store ptr %607, ptr %610, align 8, !tbaa !5
  %611 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %611, ptr %608, align 8, !tbaa !5
  %612 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %613 = getelementptr inbounds %struct.LIST, ptr %611, i64 0, i32 1
  store ptr %612, ptr %613, align 8, !tbaa !5
  %614 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %614, ptr @zz_res, align 8, !tbaa !8
  store ptr %506, ptr @zz_hold, align 8, !tbaa !8
  %615 = icmp eq ptr %614, null
  br i1 %615, label %626, label %616

616:                                              ; preds = %599
  %617 = getelementptr inbounds [2 x %struct.LIST], ptr %506, i64 0, i64 1
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  store ptr %618, ptr @zz_tmp, align 8, !tbaa !8
  %619 = getelementptr inbounds [2 x %struct.LIST], ptr %614, i64 0, i64 1
  %620 = load ptr, ptr %619, align 8, !tbaa !5
  store ptr %620, ptr %617, align 8, !tbaa !5
  %621 = getelementptr inbounds [2 x %struct.LIST], ptr %620, i64 0, i64 1, i32 1
  store ptr %506, ptr %621, align 8, !tbaa !5
  store ptr %618, ptr %619, align 8, !tbaa !5
  br label %622

622:                                              ; preds = %207, %616
  %623 = phi ptr [ %618, %616 ], [ %208, %207 ]
  %624 = phi ptr [ %614, %616 ], [ %205, %207 ]
  %625 = getelementptr inbounds [2 x %struct.LIST], ptr %623, i64 0, i64 1, i32 1
  store ptr %624, ptr %625, align 8, !tbaa !5
  br label %626

626:                                              ; preds = %622, %599, %190
  %627 = getelementptr inbounds %struct.LIST, ptr %109, i64 0, i32 1
  %628 = load ptr, ptr %627, align 8, !tbaa !5
  %629 = icmp eq ptr %628, %1
  br i1 %629, label %630, label %108

630:                                              ; preds = %626, %92
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ConvertGalleyList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %5, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds [2 x %struct.LIST], ptr %7, i64 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %15, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %16, label %23

23:                                               ; preds = %16
  store ptr %5, ptr @zz_hold, align 8, !tbaa !8
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  br label %35

30:                                               ; preds = %23
  store ptr %25, ptr @zz_res, align 8, !tbaa !8
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %32, i64 0, i64 1, i32 1
  store ptr %25, ptr %34, align 8, !tbaa !5
  store ptr %5, ptr %24, align 8, !tbaa !5
  store ptr %5, ptr %31, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %27, %30
  %36 = phi ptr [ %29, %27 ], [ %5, %30 ]
  %37 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  store ptr %38, ptr @zz_tmp, align 8, !tbaa !8
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !5
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1, i32 1
  store ptr %19, ptr %41, align 8, !tbaa !5
  store ptr %38, ptr %39, align 8, !tbaa !5
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  store ptr %5, ptr %42, align 8, !tbaa !5
  %43 = load ptr, ptr %14, align 8, !tbaa !5
  store ptr %43, ptr @xx_link, align 8, !tbaa !8
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %43
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  store ptr %49, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %49, i64 0, i64 1, i32 1
  store ptr %45, ptr %51, align 8, !tbaa !5
  store ptr %43, ptr %44, align 8, !tbaa !5
  store ptr %43, ptr %48, align 8, !tbaa !5
  br label %52

52:                                               ; preds = %35, %47
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %53 = getelementptr inbounds %struct.LIST, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, %43
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  store ptr %54, ptr @zz_res, align 8, !tbaa !8
  %57 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %57, ptr %54, align 8, !tbaa !5
  %58 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %59 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  store ptr %58, ptr %61, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %59, ptr %62, align 8, !tbaa !5
  store ptr %59, ptr %59, align 8, !tbaa !5
  %63 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %64

64:                                               ; preds = %52, %56
  %65 = phi ptr [ %43, %52 ], [ %63, %56 ]
  store ptr %65, ptr @zz_hold, align 8, !tbaa !8
  %66 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1
  %67 = load i8, ptr %66, align 8, !tbaa !5
  %68 = add i8 %67, -11
  %69 = icmp ult i8 %68, 2
  %70 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1, i32 0, i32 1
  %71 = zext i8 %67 to i64
  %72 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %71
  %73 = select i1 %69, ptr %70, ptr %72
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  store i32 %75, ptr @zz_size, align 4, !tbaa !10
  %76 = zext i8 %74 to i64
  %77 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !8
  store ptr %78, ptr %65, align 8, !tbaa !5
  %79 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %80 = load i32, ptr @zz_size, align 4, !tbaa !10
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %81
  store ptr %79, ptr %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  store ptr %84, ptr @xx_link, align 8, !tbaa !8
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, %84
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  br i1 %87, label %93, label %90

90:                                               ; preds = %64
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1
  store ptr %89, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1, i32 1
  store ptr %86, ptr %92, align 8, !tbaa !5
  store ptr %84, ptr %85, align 8, !tbaa !5
  store ptr %84, ptr %88, align 8, !tbaa !5
  br label %93

93:                                               ; preds = %64, %90
  %94 = phi ptr [ %84, %90 ], [ %89, %64 ]
  store ptr %84, ptr @zz_res, align 8, !tbaa !8
  store ptr %9, ptr @zz_hold, align 8, !tbaa !8
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %9, i64 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  store ptr %96, ptr @zz_tmp, align 8, !tbaa !8
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  store ptr %94, ptr %95, align 8, !tbaa !5
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %9, ptr %99, align 8, !tbaa !5
  store ptr %96, ptr %97, align 8, !tbaa !5
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1, i32 1
  store ptr %84, ptr %100, align 8, !tbaa !5
  %101 = load ptr, ptr %4, align 8, !tbaa !5
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %110, label %103

103:                                              ; preds = %93, %103
  %104 = phi ptr [ %108, %103 ], [ %101, %93 ]
  %105 = phi i32 [ %107, %103 ], [ 0, %93 ]
  %106 = getelementptr inbounds %struct.LIST, ptr %104, i64 0, i32 1
  %107 = add nuw nsw i32 %105, 1
  %108 = load ptr, ptr %106, align 8, !tbaa !5
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %110, label %103

110:                                              ; preds = %103, %93
  %111 = phi i32 [ 0, %93 ], [ %107, %103 ]
  %112 = call fastcc ptr @BuildMergeTree(i32 noundef %111, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %113 = load ptr, ptr %4, align 8, !tbaa !5
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load ptr, ptr %83, align 8, !tbaa !5
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115, %110
  %119 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %120 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %119, ptr noundef nonnull @.str.8) #5
  br label %121

121:                                              ; preds = %118, %115
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %122 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %123 = load i8, ptr %122, align 8, !tbaa !5
  %124 = add i8 %123, -11
  %125 = icmp ult i8 %124, 2
  %126 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 1
  %127 = zext i8 %123 to i64
  %128 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %127
  %129 = select i1 %125, ptr %126, ptr %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i32
  store i32 %131, ptr @zz_size, align 4, !tbaa !10
  %132 = zext i8 %130 to i64
  %133 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !8
  store ptr %134, ptr %0, align 8, !tbaa !5
  %135 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %136 = load i32, ptr @zz_size, align 4, !tbaa !10
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %137
  store ptr %135, ptr %138, align 8, !tbaa !8
  %139 = getelementptr inbounds %struct.LIST, ptr %112, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  br label %141

141:                                              ; preds = %141, %121
  %142 = phi ptr [ %140, %121 ], [ %144, %141 ]
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %142, i64 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.word_type, ptr %144, i64 0, i32 1
  %146 = load i8, ptr %145, align 8, !tbaa !5
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %141, label %148

148:                                              ; preds = %141
  store ptr %140, ptr @xx_link, align 8, !tbaa !8
  store ptr %140, ptr @zz_hold, align 8, !tbaa !8
  %149 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = icmp eq ptr %150, %140
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store ptr %140, ptr @zz_res, align 8, !tbaa !8
  store ptr %9, ptr @zz_hold, align 8, !tbaa !8
  br label %162

153:                                              ; preds = %148
  store ptr %150, ptr @zz_res, align 8, !tbaa !8
  %154 = load ptr, ptr %140, align 8, !tbaa !5
  store ptr %154, ptr %150, align 8, !tbaa !5
  %155 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %156 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.LIST, ptr %157, i64 0, i32 1
  store ptr %155, ptr %158, align 8, !tbaa !5
  %159 = getelementptr inbounds %struct.LIST, ptr %156, i64 0, i32 1
  store ptr %156, ptr %159, align 8, !tbaa !5
  store ptr %156, ptr %156, align 8, !tbaa !5
  %160 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %160, ptr @zz_res, align 8, !tbaa !8
  store ptr %9, ptr @zz_hold, align 8, !tbaa !8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %173, label %162

162:                                              ; preds = %152, %153
  %163 = phi ptr [ %140, %152 ], [ %160, %153 ]
  %164 = load ptr, ptr %9, align 8, !tbaa !5
  store ptr %164, ptr @zz_tmp, align 8, !tbaa !8
  %165 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %165, ptr %9, align 8, !tbaa !5
  %166 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %167 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = getelementptr inbounds %struct.LIST, ptr %168, i64 0, i32 1
  store ptr %166, ptr %169, align 8, !tbaa !5
  %170 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %170, ptr %167, align 8, !tbaa !5
  %171 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %172 = getelementptr inbounds %struct.LIST, ptr %170, i64 0, i32 1
  store ptr %171, ptr %172, align 8, !tbaa !5
  br label %173

173:                                              ; preds = %153, %162
  %174 = load ptr, ptr %112, align 8, !tbaa !5
  store ptr %174, ptr @xx_link, align 8, !tbaa !8
  store ptr %174, ptr @zz_hold, align 8, !tbaa !8
  %175 = getelementptr inbounds %struct.LIST, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = icmp eq ptr %176, %174
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store ptr %174, ptr @zz_res, align 8, !tbaa !8
  store ptr %144, ptr @zz_hold, align 8, !tbaa !8
  br label %188

179:                                              ; preds = %173
  store ptr %176, ptr @zz_res, align 8, !tbaa !8
  %180 = load ptr, ptr %174, align 8, !tbaa !5
  store ptr %180, ptr %176, align 8, !tbaa !5
  %181 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %182 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %183 = load ptr, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds %struct.LIST, ptr %183, i64 0, i32 1
  store ptr %181, ptr %184, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %182, ptr %185, align 8, !tbaa !5
  store ptr %182, ptr %182, align 8, !tbaa !5
  %186 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %186, ptr @zz_res, align 8, !tbaa !8
  store ptr %144, ptr @zz_hold, align 8, !tbaa !8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %178, %179
  %189 = phi ptr [ %174, %178 ], [ %186, %179 ]
  %190 = load ptr, ptr %144, align 8, !tbaa !5
  store ptr %190, ptr @zz_tmp, align 8, !tbaa !8
  %191 = load ptr, ptr %189, align 8, !tbaa !5
  store ptr %191, ptr %144, align 8, !tbaa !5
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
  br label %199

199:                                              ; preds = %179, %188
  %200 = load ptr, ptr %139, align 8, !tbaa !5
  %201 = icmp eq ptr %200, %112
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %112, i64 0, i64 1, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = icmp eq ptr %204, %112
  br i1 %205, label %209, label %206

206:                                              ; preds = %202, %199
  %207 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %208 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %207, ptr noundef nonnull @.str.9) #5
  br label %209

209:                                              ; preds = %206, %202
  store ptr %112, ptr @zz_hold, align 8, !tbaa !8
  %210 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 1
  %211 = load i8, ptr %210, align 8, !tbaa !5
  %212 = add i8 %211, -11
  %213 = icmp ult i8 %212, 2
  %214 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 1, i32 0, i32 1
  %215 = zext i8 %211 to i64
  %216 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %215
  %217 = select i1 %213, ptr %214, ptr %216
  %218 = load i8, ptr %217, align 1, !tbaa !5
  %219 = zext i8 %218 to i32
  store i32 %219, ptr @zz_size, align 4, !tbaa !10
  %220 = zext i8 %218 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !8
  store ptr %222, ptr %112, align 8, !tbaa !5
  %223 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %224 = load i32, ptr @zz_size, align 4, !tbaa !10
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %225
  store ptr %223, ptr %226, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @BuildMergeTree(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %8, label %79

8:                                                ; preds = %4
  %9 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 81), align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  store i32 %10, ptr @zz_size, align 4, !tbaa !10
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %17 = tail call ptr @GetMemory(i32 noundef %10, ptr noundef %16) #5
  br label %20

18:                                               ; preds = %8
  store ptr %13, ptr @zz_hold, align 8, !tbaa !8
  %19 = load ptr, ptr %13, align 8, !tbaa !5
  store ptr %19, ptr %12, align 8, !tbaa !8
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %17, %15 ], [ %13, %18 ]
  %22 = getelementptr inbounds %struct.word_type, ptr %21, i64 0, i32 1
  store i8 81, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %21, i64 0, i64 1, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %21, i64 0, i64 1
  store ptr %21, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.LIST, ptr %21, i64 0, i32 1
  store ptr %21, ptr %25, align 8, !tbaa !5
  store ptr %21, ptr %21, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %28, %20
  %29 = phi ptr [ %27, %20 ], [ %31, %28 ]
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %28, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  store ptr %27, ptr @xx_link, align 8, !tbaa !8
  store ptr %27, ptr @zz_hold, align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.LIST, ptr %27, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, %27
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store ptr %27, ptr @zz_res, align 8, !tbaa !8
  store ptr %21, ptr @zz_hold, align 8, !tbaa !8
  br label %50

41:                                               ; preds = %35
  store ptr %38, ptr @zz_res, align 8, !tbaa !8
  %42 = load ptr, ptr %27, align 8, !tbaa !5
  store ptr %42, ptr %38, align 8, !tbaa !5
  %43 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %44 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  store ptr %44, ptr %47, align 8, !tbaa !5
  store ptr %44, ptr %44, align 8, !tbaa !5
  %48 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %48, ptr @zz_res, align 8, !tbaa !8
  store ptr %21, ptr @zz_hold, align 8, !tbaa !8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %40, %41
  %51 = phi ptr [ %27, %40 ], [ %48, %41 ]
  %52 = load ptr, ptr %21, align 8, !tbaa !5
  store ptr %52, ptr @zz_tmp, align 8, !tbaa !8
  %53 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %53, ptr %21, align 8, !tbaa !5
  %54 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %55 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.LIST, ptr %56, i64 0, i32 1
  store ptr %54, ptr %57, align 8, !tbaa !5
  %58 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %58, ptr %55, align 8, !tbaa !5
  %59 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %60 = getelementptr inbounds %struct.LIST, ptr %58, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %41, %50
  %62 = load i8, ptr %36, align 8, !tbaa !5
  %63 = icmp eq i8 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.symbol_type, ptr %66, i64 0, i32 16
  %68 = load i8, ptr %67, align 2
  %69 = and i8 %68, 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64, %61
  %72 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %73 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %72, ptr noundef nonnull @.str.24) #5
  %74 = getelementptr inbounds %struct.closure_type, ptr %31, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi ptr [ %75, %71 ], [ %66, %64 ]
  store ptr %77, ptr %3, align 8, !tbaa !8
  %78 = tail call ptr @DetachEnv(ptr noundef nonnull %31) #5
  store ptr %78, ptr %2, align 8, !tbaa !8
  tail call void @AttachEnv(ptr noundef %78, ptr noundef nonnull %21) #5
  br label %406

79:                                               ; preds = %4
  %80 = sdiv i32 %0, 2
  %81 = tail call fastcc ptr @BuildMergeTree(i32 noundef %80, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %82 = sub nsw i32 %0, %80
  %83 = call fastcc ptr @BuildMergeTree(i32 noundef %82, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %84 = load ptr, ptr %6, align 8, !tbaa !8
  %85 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, %84
  br i1 %87, label %108, label %92

88:                                               ; preds = %101
  %89 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, %84
  br i1 %91, label %106, label %92

92:                                               ; preds = %79, %88
  %93 = phi ptr [ %90, %88 ], [ %86, %79 ]
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi ptr [ %97, %94 ], [ %93, %92 ]
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %95, i64 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.word_type, ptr %97, i64 0, i32 1
  %99 = load i8, ptr %98, align 8, !tbaa !5
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %94, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.symbol_type, ptr %97, i64 0, i32 16
  %103 = load i8, ptr %102, align 2
  %104 = and i8 %103, 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %88, label %106

106:                                              ; preds = %88, %101
  %107 = icmp eq ptr %97, %84
  br i1 %107, label %108, label %112

108:                                              ; preds = %79, %106
  %109 = phi ptr [ %97, %106 ], [ undef, %79 ]
  %110 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %111 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %110, ptr noundef nonnull @.str.25) #5
  br label %112

112:                                              ; preds = %108, %106
  %113 = phi ptr [ %109, %108 ], [ %97, %106 ]
  %114 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %115 = zext i8 %114 to i32
  store i32 %115, ptr @zz_size, align 4, !tbaa !10
  %116 = zext i8 %114 to i64
  %117 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %122 = tail call ptr @GetMemory(i32 noundef %115, ptr noundef %121) #5
  store ptr %122, ptr @zz_hold, align 8, !tbaa !8
  br label %125

123:                                              ; preds = %112
  store ptr %118, ptr @zz_hold, align 8, !tbaa !8
  %124 = load ptr, ptr %118, align 8, !tbaa !5
  store ptr %124, ptr %117, align 8, !tbaa !8
  br label %125

125:                                              ; preds = %120, %123
  %126 = phi ptr [ %122, %120 ], [ %118, %123 ]
  %127 = getelementptr inbounds %struct.word_type, ptr %126, i64 0, i32 1
  store i8 2, ptr %127, align 8, !tbaa !5
  %128 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1, i32 1
  store ptr %126, ptr %129, align 8, !tbaa !5
  store ptr %126, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.LIST, ptr %126, i64 0, i32 1
  store ptr %126, ptr %130, align 8, !tbaa !5
  store ptr %126, ptr %126, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.closure_type, ptr %126, i64 0, i32 5
  store ptr %113, ptr %131, align 8, !tbaa !5
  %132 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %133 = zext i8 %132 to i32
  store i32 %133, ptr @zz_size, align 4, !tbaa !10
  %134 = zext i8 %132 to i64
  %135 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %125
  %139 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %140 = tail call ptr @GetMemory(i32 noundef %133, ptr noundef %139) #5
  store ptr %140, ptr @zz_hold, align 8, !tbaa !8
  br label %143

141:                                              ; preds = %125
  store ptr %136, ptr @zz_hold, align 8, !tbaa !8
  %142 = load ptr, ptr %136, align 8, !tbaa !5
  store ptr %142, ptr %135, align 8, !tbaa !8
  br label %143

143:                                              ; preds = %138, %141
  %144 = phi ptr [ %140, %138 ], [ %136, %141 ]
  %145 = getelementptr inbounds %struct.word_type, ptr %144, i64 0, i32 1
  store i8 10, ptr %145, align 8, !tbaa !5
  %146 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1, i32 1
  store ptr %144, ptr %147, align 8, !tbaa !5
  store ptr %144, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  store ptr %144, ptr %148, align 8, !tbaa !5
  store ptr %144, ptr %144, align 8, !tbaa !5
  %149 = tail call ptr @ChildSym(ptr noundef %113, i32 noundef 144) #5
  %150 = getelementptr inbounds %struct.closure_type, ptr %144, i64 0, i32 5
  store ptr %149, ptr %150, align 8, !tbaa !5
  %151 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %152 = zext i8 %151 to i32
  store i32 %152, ptr @zz_size, align 4, !tbaa !10
  %153 = zext i8 %151 to i64
  %154 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %143
  %158 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %159 = tail call ptr @GetMemory(i32 noundef %152, ptr noundef %158) #5
  br label %162

160:                                              ; preds = %143
  store ptr %155, ptr @zz_hold, align 8, !tbaa !8
  %161 = load ptr, ptr %155, align 8, !tbaa !5
  store ptr %161, ptr %154, align 8, !tbaa !8
  br label %162

162:                                              ; preds = %157, %160
  %163 = phi ptr [ %159, %157 ], [ %155, %160 ]
  %164 = getelementptr inbounds %struct.word_type, ptr %163, i64 0, i32 1
  store i8 0, ptr %164, align 8, !tbaa !5
  %165 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1, i32 1
  store ptr %163, ptr %165, align 8, !tbaa !5
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1
  store ptr %163, ptr %166, align 8, !tbaa !5
  %167 = getelementptr inbounds %struct.LIST, ptr %163, i64 0, i32 1
  store ptr %163, ptr %167, align 8, !tbaa !5
  store ptr %163, ptr %163, align 8, !tbaa !5
  store ptr %163, ptr @xx_link, align 8, !tbaa !8
  store ptr %163, ptr @zz_res, align 8, !tbaa !8
  store ptr %126, ptr @zz_hold, align 8, !tbaa !8
  %168 = load ptr, ptr %126, align 8, !tbaa !5
  store ptr %168, ptr @zz_tmp, align 8, !tbaa !8
  %169 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %169, ptr %126, align 8, !tbaa !5
  %170 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %171 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = getelementptr inbounds %struct.LIST, ptr %172, i64 0, i32 1
  store ptr %170, ptr %173, align 8, !tbaa !5
  %174 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %174, ptr %171, align 8, !tbaa !5
  %175 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %176 = getelementptr inbounds %struct.LIST, ptr %174, i64 0, i32 1
  store ptr %175, ptr %176, align 8, !tbaa !5
  %177 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %177, ptr @zz_res, align 8, !tbaa !8
  store ptr %144, ptr @zz_hold, align 8, !tbaa !8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %162
  %180 = load ptr, ptr %146, align 8, !tbaa !5
  store ptr %180, ptr @zz_tmp, align 8, !tbaa !8
  %181 = getelementptr inbounds [2 x %struct.LIST], ptr %177, i64 0, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  store ptr %182, ptr %146, align 8, !tbaa !5
  %183 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  store ptr %144, ptr %183, align 8, !tbaa !5
  store ptr %180, ptr %181, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %180, i64 0, i64 1, i32 1
  store ptr %177, ptr %184, align 8, !tbaa !5
  br label %185

185:                                              ; preds = %162, %179
  %186 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %187 = zext i8 %186 to i32
  store i32 %187, ptr @zz_size, align 4, !tbaa !10
  %188 = zext i8 %186 to i64
  %189 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %194 = tail call ptr @GetMemory(i32 noundef %187, ptr noundef %193) #5
  br label %197

195:                                              ; preds = %185
  store ptr %190, ptr @zz_hold, align 8, !tbaa !8
  %196 = load ptr, ptr %190, align 8, !tbaa !5
  store ptr %196, ptr %189, align 8, !tbaa !8
  br label %197

197:                                              ; preds = %192, %195
  %198 = phi ptr [ %194, %192 ], [ %190, %195 ]
  %199 = getelementptr inbounds %struct.word_type, ptr %198, i64 0, i32 1
  store i8 0, ptr %199, align 8, !tbaa !5
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1, i32 1
  store ptr %198, ptr %200, align 8, !tbaa !5
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  store ptr %198, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %198, ptr %202, align 8, !tbaa !5
  store ptr %198, ptr %198, align 8, !tbaa !5
  store ptr %198, ptr @xx_link, align 8, !tbaa !8
  store ptr %198, ptr @zz_res, align 8, !tbaa !8
  store ptr %144, ptr @zz_hold, align 8, !tbaa !8
  %203 = load ptr, ptr %144, align 8, !tbaa !5
  store ptr %203, ptr @zz_tmp, align 8, !tbaa !8
  %204 = load ptr, ptr %198, align 8, !tbaa !5
  store ptr %204, ptr %144, align 8, !tbaa !5
  %205 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %206 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  store ptr %205, ptr %208, align 8, !tbaa !5
  %209 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %209, ptr %206, align 8, !tbaa !5
  %210 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %211 = getelementptr inbounds %struct.LIST, ptr %209, i64 0, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !5
  %212 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %212, ptr @zz_res, align 8, !tbaa !8
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %213 = icmp eq ptr %81, null
  %214 = icmp eq ptr %212, null
  %215 = select i1 %213, i1 true, i1 %214
  br i1 %215, label %223, label %216

216:                                              ; preds = %197
  %217 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  store ptr %218, ptr @zz_tmp, align 8, !tbaa !8
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  store ptr %220, ptr %217, align 8, !tbaa !5
  %221 = getelementptr inbounds [2 x %struct.LIST], ptr %220, i64 0, i64 1, i32 1
  store ptr %81, ptr %221, align 8, !tbaa !5
  store ptr %218, ptr %219, align 8, !tbaa !5
  %222 = getelementptr inbounds [2 x %struct.LIST], ptr %218, i64 0, i64 1, i32 1
  store ptr %212, ptr %222, align 8, !tbaa !5
  br label %223

223:                                              ; preds = %197, %216
  %224 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %225 = zext i8 %224 to i32
  store i32 %225, ptr @zz_size, align 4, !tbaa !10
  %226 = zext i8 %224 to i64
  %227 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %232 = tail call ptr @GetMemory(i32 noundef %225, ptr noundef %231) #5
  store ptr %232, ptr @zz_hold, align 8, !tbaa !8
  br label %235

233:                                              ; preds = %223
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %234 = load ptr, ptr %228, align 8, !tbaa !5
  store ptr %234, ptr %227, align 8, !tbaa !8
  br label %235

235:                                              ; preds = %230, %233
  %236 = phi ptr [ %232, %230 ], [ %228, %233 ]
  %237 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1
  store i8 10, ptr %237, align 8, !tbaa !5
  %238 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1, i32 1
  store ptr %236, ptr %239, align 8, !tbaa !5
  store ptr %236, ptr %238, align 8, !tbaa !5
  %240 = getelementptr inbounds %struct.LIST, ptr %236, i64 0, i32 1
  store ptr %236, ptr %240, align 8, !tbaa !5
  store ptr %236, ptr %236, align 8, !tbaa !5
  %241 = tail call ptr @ChildSym(ptr noundef %113, i32 noundef 146) #5
  %242 = getelementptr inbounds %struct.closure_type, ptr %236, i64 0, i32 5
  store ptr %241, ptr %242, align 8, !tbaa !5
  %243 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %244 = zext i8 %243 to i32
  store i32 %244, ptr @zz_size, align 4, !tbaa !10
  %245 = zext i8 %243 to i64
  %246 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %235
  %250 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %251 = tail call ptr @GetMemory(i32 noundef %244, ptr noundef %250) #5
  br label %254

252:                                              ; preds = %235
  store ptr %247, ptr @zz_hold, align 8, !tbaa !8
  %253 = load ptr, ptr %247, align 8, !tbaa !5
  store ptr %253, ptr %246, align 8, !tbaa !8
  br label %254

254:                                              ; preds = %249, %252
  %255 = phi ptr [ %251, %249 ], [ %247, %252 ]
  %256 = getelementptr inbounds %struct.word_type, ptr %255, i64 0, i32 1
  store i8 0, ptr %256, align 8, !tbaa !5
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %255, i64 0, i64 1, i32 1
  store ptr %255, ptr %257, align 8, !tbaa !5
  %258 = getelementptr inbounds [2 x %struct.LIST], ptr %255, i64 0, i64 1
  store ptr %255, ptr %258, align 8, !tbaa !5
  %259 = getelementptr inbounds %struct.LIST, ptr %255, i64 0, i32 1
  store ptr %255, ptr %259, align 8, !tbaa !5
  store ptr %255, ptr %255, align 8, !tbaa !5
  store ptr %255, ptr @xx_link, align 8, !tbaa !8
  store ptr %255, ptr @zz_res, align 8, !tbaa !8
  store ptr %126, ptr @zz_hold, align 8, !tbaa !8
  %260 = load ptr, ptr %126, align 8, !tbaa !5
  store ptr %260, ptr @zz_tmp, align 8, !tbaa !8
  %261 = load ptr, ptr %255, align 8, !tbaa !5
  store ptr %261, ptr %126, align 8, !tbaa !5
  %262 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %263 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  %265 = getelementptr inbounds %struct.LIST, ptr %264, i64 0, i32 1
  store ptr %262, ptr %265, align 8, !tbaa !5
  %266 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %266, ptr %263, align 8, !tbaa !5
  %267 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %268 = getelementptr inbounds %struct.LIST, ptr %266, i64 0, i32 1
  store ptr %267, ptr %268, align 8, !tbaa !5
  %269 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %269, ptr @zz_res, align 8, !tbaa !8
  store ptr %236, ptr @zz_hold, align 8, !tbaa !8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %254
  %272 = load ptr, ptr %238, align 8, !tbaa !5
  store ptr %272, ptr @zz_tmp, align 8, !tbaa !8
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %269, i64 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !5
  store ptr %274, ptr %238, align 8, !tbaa !5
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %274, i64 0, i64 1, i32 1
  store ptr %236, ptr %275, align 8, !tbaa !5
  store ptr %272, ptr %273, align 8, !tbaa !5
  %276 = getelementptr inbounds [2 x %struct.LIST], ptr %272, i64 0, i64 1, i32 1
  store ptr %269, ptr %276, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %254, %271
  %278 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %279 = zext i8 %278 to i32
  store i32 %279, ptr @zz_size, align 4, !tbaa !10
  %280 = zext i8 %278 to i64
  %281 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %286 = tail call ptr @GetMemory(i32 noundef %279, ptr noundef %285) #5
  br label %289

287:                                              ; preds = %277
  store ptr %282, ptr @zz_hold, align 8, !tbaa !8
  %288 = load ptr, ptr %282, align 8, !tbaa !5
  store ptr %288, ptr %281, align 8, !tbaa !8
  br label %289

289:                                              ; preds = %284, %287
  %290 = phi ptr [ %286, %284 ], [ %282, %287 ]
  %291 = getelementptr inbounds %struct.word_type, ptr %290, i64 0, i32 1
  store i8 0, ptr %291, align 8, !tbaa !5
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %290, i64 0, i64 1, i32 1
  store ptr %290, ptr %292, align 8, !tbaa !5
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %290, i64 0, i64 1
  store ptr %290, ptr %293, align 8, !tbaa !5
  %294 = getelementptr inbounds %struct.LIST, ptr %290, i64 0, i32 1
  store ptr %290, ptr %294, align 8, !tbaa !5
  store ptr %290, ptr %290, align 8, !tbaa !5
  store ptr %290, ptr @xx_link, align 8, !tbaa !8
  store ptr %290, ptr @zz_res, align 8, !tbaa !8
  store ptr %236, ptr @zz_hold, align 8, !tbaa !8
  %295 = load ptr, ptr %236, align 8, !tbaa !5
  store ptr %295, ptr @zz_tmp, align 8, !tbaa !8
  %296 = load ptr, ptr %290, align 8, !tbaa !5
  store ptr %296, ptr %236, align 8, !tbaa !5
  %297 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %298 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  %300 = getelementptr inbounds %struct.LIST, ptr %299, i64 0, i32 1
  store ptr %297, ptr %300, align 8, !tbaa !5
  %301 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %301, ptr %298, align 8, !tbaa !5
  %302 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %303 = getelementptr inbounds %struct.LIST, ptr %301, i64 0, i32 1
  store ptr %302, ptr %303, align 8, !tbaa !5
  %304 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %304, ptr @zz_res, align 8, !tbaa !8
  store ptr %83, ptr @zz_hold, align 8, !tbaa !8
  %305 = icmp eq ptr %83, null
  %306 = icmp eq ptr %304, null
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %315, label %308

308:                                              ; preds = %289
  %309 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !5
  store ptr %310, ptr @zz_tmp, align 8, !tbaa !8
  %311 = getelementptr inbounds [2 x %struct.LIST], ptr %304, i64 0, i64 1
  %312 = load ptr, ptr %311, align 8, !tbaa !5
  store ptr %312, ptr %309, align 8, !tbaa !5
  %313 = getelementptr inbounds [2 x %struct.LIST], ptr %312, i64 0, i64 1, i32 1
  store ptr %83, ptr %313, align 8, !tbaa !5
  store ptr %310, ptr %311, align 8, !tbaa !5
  %314 = getelementptr inbounds [2 x %struct.LIST], ptr %310, i64 0, i64 1, i32 1
  store ptr %304, ptr %314, align 8, !tbaa !5
  br label %315

315:                                              ; preds = %289, %308
  %316 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 81), align 1, !tbaa !5
  %317 = zext i8 %316 to i32
  store i32 %317, ptr @zz_size, align 4, !tbaa !10
  %318 = zext i8 %316 to i64
  %319 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %315
  %323 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %324 = tail call ptr @GetMemory(i32 noundef %317, ptr noundef %323) #5
  store ptr %324, ptr @zz_hold, align 8, !tbaa !8
  br label %327

325:                                              ; preds = %315
  store ptr %320, ptr @zz_hold, align 8, !tbaa !8
  %326 = load ptr, ptr %320, align 8, !tbaa !5
  store ptr %326, ptr %319, align 8, !tbaa !8
  br label %327

327:                                              ; preds = %322, %325
  %328 = phi ptr [ %324, %322 ], [ %320, %325 ]
  %329 = getelementptr inbounds %struct.word_type, ptr %328, i64 0, i32 1
  store i8 81, ptr %329, align 8, !tbaa !5
  %330 = getelementptr inbounds [2 x %struct.LIST], ptr %328, i64 0, i64 1, i32 1
  store ptr %328, ptr %330, align 8, !tbaa !5
  %331 = getelementptr inbounds [2 x %struct.LIST], ptr %328, i64 0, i64 1
  store ptr %328, ptr %331, align 8, !tbaa !5
  %332 = getelementptr inbounds %struct.LIST, ptr %328, i64 0, i32 1
  store ptr %328, ptr %332, align 8, !tbaa !5
  store ptr %328, ptr %328, align 8, !tbaa !5
  %333 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %334 = zext i8 %333 to i32
  store i32 %334, ptr @zz_size, align 4, !tbaa !10
  %335 = zext i8 %333 to i64
  %336 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !8
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %327
  %340 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %341 = tail call ptr @GetMemory(i32 noundef %334, ptr noundef %340) #5
  br label %344

342:                                              ; preds = %327
  store ptr %337, ptr @zz_hold, align 8, !tbaa !8
  %343 = load ptr, ptr %337, align 8, !tbaa !5
  store ptr %343, ptr %336, align 8, !tbaa !8
  br label %344

344:                                              ; preds = %339, %342
  %345 = phi ptr [ %341, %339 ], [ %337, %342 ]
  %346 = getelementptr inbounds %struct.word_type, ptr %345, i64 0, i32 1
  store i8 0, ptr %346, align 8, !tbaa !5
  %347 = getelementptr inbounds [2 x %struct.LIST], ptr %345, i64 0, i64 1, i32 1
  store ptr %345, ptr %347, align 8, !tbaa !5
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %345, i64 0, i64 1
  store ptr %345, ptr %348, align 8, !tbaa !5
  %349 = getelementptr inbounds %struct.LIST, ptr %345, i64 0, i32 1
  store ptr %345, ptr %349, align 8, !tbaa !5
  store ptr %345, ptr %345, align 8, !tbaa !5
  store ptr %345, ptr @xx_link, align 8, !tbaa !8
  store ptr %345, ptr @zz_res, align 8, !tbaa !8
  store ptr %328, ptr @zz_hold, align 8, !tbaa !8
  %350 = load ptr, ptr %328, align 8, !tbaa !5
  store ptr %350, ptr @zz_tmp, align 8, !tbaa !8
  %351 = load ptr, ptr %345, align 8, !tbaa !5
  store ptr %351, ptr %328, align 8, !tbaa !5
  %352 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %353 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %354 = load ptr, ptr %353, align 8, !tbaa !5
  %355 = getelementptr inbounds %struct.LIST, ptr %354, i64 0, i32 1
  store ptr %352, ptr %355, align 8, !tbaa !5
  %356 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %356, ptr %353, align 8, !tbaa !5
  %357 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %358 = getelementptr inbounds %struct.LIST, ptr %356, i64 0, i32 1
  store ptr %357, ptr %358, align 8, !tbaa !5
  %359 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %359, ptr @zz_res, align 8, !tbaa !8
  store ptr %126, ptr @zz_hold, align 8, !tbaa !8
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %344
  %362 = load ptr, ptr %128, align 8, !tbaa !5
  store ptr %362, ptr @zz_tmp, align 8, !tbaa !8
  %363 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !5
  store ptr %364, ptr %128, align 8, !tbaa !5
  %365 = getelementptr inbounds [2 x %struct.LIST], ptr %364, i64 0, i64 1, i32 1
  store ptr %126, ptr %365, align 8, !tbaa !5
  store ptr %362, ptr %363, align 8, !tbaa !5
  %366 = getelementptr inbounds [2 x %struct.LIST], ptr %362, i64 0, i64 1, i32 1
  store ptr %359, ptr %366, align 8, !tbaa !5
  br label %367

367:                                              ; preds = %344, %361
  %368 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %369 = zext i8 %368 to i32
  store i32 %369, ptr @zz_size, align 4, !tbaa !10
  %370 = zext i8 %368 to i64
  %371 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %367
  %375 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %376 = tail call ptr @GetMemory(i32 noundef %369, ptr noundef %375) #5
  br label %379

377:                                              ; preds = %367
  store ptr %372, ptr @zz_hold, align 8, !tbaa !8
  %378 = load ptr, ptr %372, align 8, !tbaa !5
  store ptr %378, ptr %371, align 8, !tbaa !8
  br label %379

379:                                              ; preds = %374, %377
  %380 = phi ptr [ %376, %374 ], [ %372, %377 ]
  %381 = getelementptr inbounds %struct.word_type, ptr %380, i64 0, i32 1
  store i8 0, ptr %381, align 8, !tbaa !5
  %382 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1, i32 1
  store ptr %380, ptr %382, align 8, !tbaa !5
  %383 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1
  store ptr %380, ptr %383, align 8, !tbaa !5
  %384 = getelementptr inbounds %struct.LIST, ptr %380, i64 0, i32 1
  store ptr %380, ptr %384, align 8, !tbaa !5
  store ptr %380, ptr %380, align 8, !tbaa !5
  store ptr %380, ptr @xx_link, align 8, !tbaa !8
  store ptr %380, ptr @zz_res, align 8, !tbaa !8
  store ptr %328, ptr @zz_hold, align 8, !tbaa !8
  %385 = load ptr, ptr %328, align 8, !tbaa !5
  store ptr %385, ptr @zz_tmp, align 8, !tbaa !8
  %386 = load ptr, ptr %380, align 8, !tbaa !5
  store ptr %386, ptr %328, align 8, !tbaa !5
  %387 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %388 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = getelementptr inbounds %struct.LIST, ptr %389, i64 0, i32 1
  store ptr %387, ptr %390, align 8, !tbaa !5
  %391 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %391, ptr %388, align 8, !tbaa !5
  %392 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %393 = getelementptr inbounds %struct.LIST, ptr %391, i64 0, i32 1
  store ptr %392, ptr %393, align 8, !tbaa !5
  %394 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %394, ptr @zz_res, align 8, !tbaa !8
  %395 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %395, ptr @zz_hold, align 8, !tbaa !8
  %396 = icmp eq ptr %395, null
  %397 = icmp eq ptr %394, null
  %398 = select i1 %396, i1 true, i1 %397
  br i1 %398, label %406, label %399

399:                                              ; preds = %379
  %400 = getelementptr inbounds [2 x %struct.LIST], ptr %395, i64 0, i64 1
  %401 = load ptr, ptr %400, align 8, !tbaa !5
  store ptr %401, ptr @zz_tmp, align 8, !tbaa !8
  %402 = getelementptr inbounds [2 x %struct.LIST], ptr %394, i64 0, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !5
  store ptr %403, ptr %400, align 8, !tbaa !5
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %403, i64 0, i64 1, i32 1
  store ptr %395, ptr %404, align 8, !tbaa !5
  store ptr %401, ptr %402, align 8, !tbaa !5
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %401, i64 0, i64 1, i32 1
  store ptr %394, ptr %405, align 8, !tbaa !5
  br label %406

406:                                              ; preds = %379, %399, %76
  %407 = phi ptr [ %21, %76 ], [ %328, %399 ], [ %328, %379 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %407
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BuildEnclose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.LIST, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %25, label %11

7:                                                ; preds = %20
  %8 = getelementptr inbounds %struct.LIST, ptr %12, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %25, label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %1 ]
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
  %21 = getelementptr inbounds %struct.symbol_type, ptr %16, i64 0, i32 16
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %29

25:                                               ; preds = %7, %1
  %26 = phi ptr [ undef, %1 ], [ %16, %7 ]
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %27, ptr noundef nonnull @.str.10) #5
  br label %29

29:                                               ; preds = %20, %25
  %30 = phi ptr [ %26, %25 ], [ %16, %20 ]
  %31 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %62, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %30, i64 41
  br label %36

36:                                               ; preds = %34, %55
  %37 = phi ptr [ %32, %34 ], [ %58, %55 ]
  %38 = phi ptr [ null, %34 ], [ %56, %55 ]
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %42, %39 ], [ %37, %36 ]
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !5
  switch i8 %44, label %55 [
    i8 0, label %39
    i8 -112, label %45
    i8 -111, label %45
    i8 -110, label %48
  ]

45:                                               ; preds = %39, %39
  %46 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %47 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 44, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %46, ptr noundef nonnull @.str.12) #5
  br label %55

48:                                               ; preds = %39
  %49 = load i24, ptr %35, align 1
  %50 = and i24 %49, 256
  %51 = icmp eq i24 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %54 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 44, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull @.str.12) #5
  br label %55

55:                                               ; preds = %39, %48, %52, %45
  %56 = phi ptr [ %38, %45 ], [ %42, %52 ], [ %42, %48 ], [ %38, %39 ]
  %57 = getelementptr inbounds %struct.LIST, ptr %37, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, %30
  br i1 %59, label %60, label %36

60:                                               ; preds = %55
  %61 = icmp eq ptr %56, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %29, %60
  %63 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  %64 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 44, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %63, ptr noundef nonnull @.str.12) #5
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi ptr [ null, %62 ], [ %56, %60 ]
  %67 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  store i32 %68, ptr @zz_size, align 4, !tbaa !10
  %69 = zext i8 %67 to i64
  %70 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %75 = tail call ptr @GetMemory(i32 noundef %68, ptr noundef %74) #5
  store ptr %75, ptr @zz_hold, align 8, !tbaa !8
  br label %78

76:                                               ; preds = %65
  store ptr %71, ptr @zz_hold, align 8, !tbaa !8
  %77 = load ptr, ptr %71, align 8, !tbaa !5
  store ptr %77, ptr %70, align 8, !tbaa !8
  br label %78

78:                                               ; preds = %73, %76
  %79 = phi ptr [ %75, %73 ], [ %71, %76 ]
  %80 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 1
  store i8 2, ptr %80, align 8, !tbaa !5
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1, i32 1
  store ptr %79, ptr %82, align 8, !tbaa !5
  store ptr %79, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  store ptr %79, ptr %83, align 8, !tbaa !5
  store ptr %79, ptr %79, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %85 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 1, i32 0, i32 2
  store i16 %86, ptr %87, align 2, !tbaa !5
  %88 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1048575
  %91 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 1, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, -1048576
  %94 = or disjoint i32 %93, %90
  store i32 %94, ptr %91, align 4
  %95 = load i32, ptr %88, align 4
  %96 = and i32 %95, -1048576
  %97 = or disjoint i32 %96, %90
  store i32 %97, ptr %91, align 4
  %98 = getelementptr inbounds %struct.closure_type, ptr %79, i64 0, i32 5
  store ptr %30, ptr %98, align 8, !tbaa !5
  %99 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %100 = zext i8 %99 to i32
  store i32 %100, ptr @zz_size, align 4, !tbaa !10
  %101 = zext i8 %99 to i64
  %102 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %78
  %106 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %107 = tail call ptr @GetMemory(i32 noundef %100, ptr noundef %106) #5
  store ptr %107, ptr @zz_hold, align 8, !tbaa !8
  br label %110

108:                                              ; preds = %78
  store ptr %103, ptr @zz_hold, align 8, !tbaa !8
  %109 = load ptr, ptr %103, align 8, !tbaa !5
  store ptr %109, ptr %102, align 8, !tbaa !8
  br label %110

110:                                              ; preds = %105, %108
  %111 = phi ptr [ %107, %105 ], [ %103, %108 ]
  %112 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1
  store i8 10, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  store ptr %111, ptr %114, align 8, !tbaa !5
  store ptr %111, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.LIST, ptr %111, i64 0, i32 1
  store ptr %111, ptr %115, align 8, !tbaa !5
  store ptr %111, ptr %111, align 8, !tbaa !5
  %116 = load i16, ptr %85, align 2, !tbaa !5
  %117 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1, i32 0, i32 2
  store i16 %116, ptr %117, align 2, !tbaa !5
  %118 = load i32, ptr %88, align 4
  %119 = and i32 %118, 1048575
  %120 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, -1048576
  %123 = or disjoint i32 %122, %119
  store i32 %123, ptr %120, align 4
  %124 = load i32, ptr %88, align 4
  %125 = and i32 %124, -1048576
  %126 = or disjoint i32 %125, %119
  store i32 %126, ptr %120, align 4
  %127 = getelementptr inbounds %struct.closure_type, ptr %111, i64 0, i32 5
  store ptr %66, ptr %127, align 8, !tbaa !5
  %128 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %129 = zext i8 %128 to i32
  store i32 %129, ptr @zz_size, align 4, !tbaa !10
  %130 = zext i8 %128 to i64
  %131 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %110
  %135 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %136 = tail call ptr @GetMemory(i32 noundef %129, ptr noundef %135) #5
  br label %139

137:                                              ; preds = %110
  store ptr %132, ptr @zz_hold, align 8, !tbaa !8
  %138 = load ptr, ptr %132, align 8, !tbaa !5
  store ptr %138, ptr %131, align 8, !tbaa !8
  br label %139

139:                                              ; preds = %134, %137
  %140 = phi ptr [ %136, %134 ], [ %132, %137 ]
  %141 = getelementptr inbounds %struct.word_type, ptr %140, i64 0, i32 1
  store i8 0, ptr %141, align 8, !tbaa !5
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %140, i64 0, i64 1, i32 1
  store ptr %140, ptr %142, align 8, !tbaa !5
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %140, i64 0, i64 1
  store ptr %140, ptr %143, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  store ptr %140, ptr %144, align 8, !tbaa !5
  store ptr %140, ptr %140, align 8, !tbaa !5
  store ptr %140, ptr @xx_link, align 8, !tbaa !8
  store ptr %140, ptr @zz_res, align 8, !tbaa !8
  store ptr %79, ptr @zz_hold, align 8, !tbaa !8
  %145 = load ptr, ptr %79, align 8, !tbaa !5
  store ptr %145, ptr @zz_tmp, align 8, !tbaa !8
  %146 = load ptr, ptr %140, align 8, !tbaa !5
  store ptr %146, ptr %79, align 8, !tbaa !5
  %147 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %148 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %147, ptr %150, align 8, !tbaa !5
  %151 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %151, ptr %148, align 8, !tbaa !5
  %152 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %153 = getelementptr inbounds %struct.LIST, ptr %151, i64 0, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !5
  %154 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %154, ptr @zz_res, align 8, !tbaa !8
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %139
  %157 = load ptr, ptr %113, align 8, !tbaa !5
  store ptr %157, ptr @zz_tmp, align 8, !tbaa !8
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !5
  store ptr %159, ptr %113, align 8, !tbaa !5
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1, i32 1
  store ptr %111, ptr %160, align 8, !tbaa !5
  store ptr %157, ptr %158, align 8, !tbaa !5
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1, i32 1
  store ptr %154, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %139, %156
  %163 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.16, ptr noundef nonnull %84) #5
  %164 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %165 = zext i8 %164 to i32
  store i32 %165, ptr @zz_size, align 4, !tbaa !10
  %166 = zext i8 %164 to i64
  %167 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %172 = tail call ptr @GetMemory(i32 noundef %165, ptr noundef %171) #5
  br label %175

173:                                              ; preds = %162
  store ptr %168, ptr @zz_hold, align 8, !tbaa !8
  %174 = load ptr, ptr %168, align 8, !tbaa !5
  store ptr %174, ptr %167, align 8, !tbaa !8
  br label %175

175:                                              ; preds = %170, %173
  %176 = phi ptr [ %172, %170 ], [ %168, %173 ]
  %177 = getelementptr inbounds %struct.word_type, ptr %176, i64 0, i32 1
  store i8 0, ptr %177, align 8, !tbaa !5
  %178 = getelementptr inbounds [2 x %struct.LIST], ptr %176, i64 0, i64 1, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !5
  %179 = getelementptr inbounds [2 x %struct.LIST], ptr %176, i64 0, i64 1
  store ptr %176, ptr %179, align 8, !tbaa !5
  %180 = getelementptr inbounds %struct.LIST, ptr %176, i64 0, i32 1
  store ptr %176, ptr %180, align 8, !tbaa !5
  store ptr %176, ptr %176, align 8, !tbaa !5
  store ptr %176, ptr @xx_link, align 8, !tbaa !8
  store ptr %176, ptr @zz_res, align 8, !tbaa !8
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  %181 = load ptr, ptr %111, align 8, !tbaa !5
  store ptr %181, ptr @zz_tmp, align 8, !tbaa !8
  %182 = load ptr, ptr %176, align 8, !tbaa !5
  store ptr %182, ptr %111, align 8, !tbaa !5
  %183 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %184 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = getelementptr inbounds %struct.LIST, ptr %185, i64 0, i32 1
  store ptr %183, ptr %186, align 8, !tbaa !5
  %187 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %187, ptr %184, align 8, !tbaa !5
  %188 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %189 = getelementptr inbounds %struct.LIST, ptr %187, i64 0, i32 1
  store ptr %188, ptr %189, align 8, !tbaa !5
  %190 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %190, ptr @zz_res, align 8, !tbaa !8
  store ptr %163, ptr @zz_hold, align 8, !tbaa !8
  %191 = icmp eq ptr %163, null
  %192 = icmp eq ptr %190, null
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %175
  %195 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  store ptr %196, ptr @zz_tmp, align 8, !tbaa !8
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  store ptr %198, ptr %195, align 8, !tbaa !5
  %199 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1, i32 1
  store ptr %163, ptr %199, align 8, !tbaa !5
  store ptr %196, ptr %197, align 8, !tbaa !5
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %196, i64 0, i64 1, i32 1
  store ptr %190, ptr %200, align 8, !tbaa !5
  br label %201

201:                                              ; preds = %175, %194
  %202 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  br label %204

204:                                              ; preds = %204, %201
  %205 = phi ptr [ %203, %201 ], [ %207, %204 ]
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 1
  %209 = load i8, ptr %208, align 8, !tbaa !5
  switch i8 %209, label %210 [
    i8 0, label %204
    i8 2, label %213
  ]

210:                                              ; preds = %204
  %211 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %212 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %211, ptr noundef nonnull @.str.17) #5
  br label %213

213:                                              ; preds = %204, %210
  %214 = tail call ptr @CopyObject(ptr noundef nonnull %207, ptr noundef nonnull %84) #5
  %215 = tail call ptr @SetEnv(ptr noundef %214, ptr noundef null) #5
  %216 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 81), align 1, !tbaa !5
  %217 = zext i8 %216 to i32
  store i32 %217, ptr @zz_size, align 4, !tbaa !10
  %218 = zext i8 %216 to i64
  %219 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %213
  %223 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %224 = tail call ptr @GetMemory(i32 noundef %217, ptr noundef %223) #5
  store ptr %224, ptr @zz_hold, align 8, !tbaa !8
  br label %227

225:                                              ; preds = %213
  store ptr %220, ptr @zz_hold, align 8, !tbaa !8
  %226 = load ptr, ptr %220, align 8, !tbaa !5
  store ptr %226, ptr %219, align 8, !tbaa !8
  br label %227

227:                                              ; preds = %222, %225
  %228 = phi ptr [ %224, %222 ], [ %220, %225 ]
  %229 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 1
  store i8 81, ptr %229, align 8, !tbaa !5
  %230 = getelementptr inbounds [2 x %struct.LIST], ptr %228, i64 0, i64 1, i32 1
  store ptr %228, ptr %230, align 8, !tbaa !5
  %231 = getelementptr inbounds [2 x %struct.LIST], ptr %228, i64 0, i64 1
  store ptr %228, ptr %231, align 8, !tbaa !5
  %232 = getelementptr inbounds %struct.LIST, ptr %228, i64 0, i32 1
  store ptr %228, ptr %232, align 8, !tbaa !5
  store ptr %228, ptr %228, align 8, !tbaa !5
  %233 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %234 = zext i8 %233 to i32
  store i32 %234, ptr @zz_size, align 4, !tbaa !10
  %235 = zext i8 %233 to i64
  %236 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %241 = tail call ptr @GetMemory(i32 noundef %234, ptr noundef %240) #5
  br label %244

242:                                              ; preds = %227
  store ptr %237, ptr @zz_hold, align 8, !tbaa !8
  %243 = load ptr, ptr %237, align 8, !tbaa !5
  store ptr %243, ptr %236, align 8, !tbaa !8
  br label %244

244:                                              ; preds = %239, %242
  %245 = phi ptr [ %241, %239 ], [ %237, %242 ]
  %246 = getelementptr inbounds %struct.word_type, ptr %245, i64 0, i32 1
  store i8 0, ptr %246, align 8, !tbaa !5
  %247 = getelementptr inbounds [2 x %struct.LIST], ptr %245, i64 0, i64 1, i32 1
  store ptr %245, ptr %247, align 8, !tbaa !5
  %248 = getelementptr inbounds [2 x %struct.LIST], ptr %245, i64 0, i64 1
  store ptr %245, ptr %248, align 8, !tbaa !5
  %249 = getelementptr inbounds %struct.LIST, ptr %245, i64 0, i32 1
  store ptr %245, ptr %249, align 8, !tbaa !5
  store ptr %245, ptr %245, align 8, !tbaa !5
  store ptr %245, ptr @xx_link, align 8, !tbaa !8
  store ptr %245, ptr @zz_res, align 8, !tbaa !8
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %250 = load ptr, ptr %228, align 8, !tbaa !5
  store ptr %250, ptr @zz_tmp, align 8, !tbaa !8
  %251 = load ptr, ptr %245, align 8, !tbaa !5
  store ptr %251, ptr %228, align 8, !tbaa !5
  %252 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %253 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = getelementptr inbounds %struct.LIST, ptr %254, i64 0, i32 1
  store ptr %252, ptr %255, align 8, !tbaa !5
  %256 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %256, ptr %253, align 8, !tbaa !5
  %257 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %258 = getelementptr inbounds %struct.LIST, ptr %256, i64 0, i32 1
  store ptr %257, ptr %258, align 8, !tbaa !5
  %259 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %259, ptr @zz_res, align 8, !tbaa !8
  store ptr %79, ptr @zz_hold, align 8, !tbaa !8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %267, label %261

261:                                              ; preds = %244
  %262 = load ptr, ptr %81, align 8, !tbaa !5
  store ptr %262, ptr @zz_tmp, align 8, !tbaa !8
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  store ptr %264, ptr %81, align 8, !tbaa !5
  %265 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1, i32 1
  store ptr %79, ptr %265, align 8, !tbaa !5
  store ptr %262, ptr %263, align 8, !tbaa !5
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1, i32 1
  store ptr %259, ptr %266, align 8, !tbaa !5
  br label %267

267:                                              ; preds = %244, %261
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
  %276 = tail call ptr @GetMemory(i32 noundef %269, ptr noundef %275) #5
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
  store ptr %228, ptr @zz_hold, align 8, !tbaa !8
  %285 = load ptr, ptr %228, align 8, !tbaa !5
  store ptr %285, ptr @zz_tmp, align 8, !tbaa !8
  %286 = load ptr, ptr %280, align 8, !tbaa !5
  store ptr %286, ptr %228, align 8, !tbaa !5
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
  store ptr %215, ptr @zz_hold, align 8, !tbaa !8
  %295 = icmp eq ptr %215, null
  %296 = icmp eq ptr %294, null
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %305, label %298

298:                                              ; preds = %279
  %299 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  store ptr %300, ptr @zz_tmp, align 8, !tbaa !8
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !5
  store ptr %302, ptr %299, align 8, !tbaa !5
  %303 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  store ptr %215, ptr %303, align 8, !tbaa !5
  store ptr %300, ptr %301, align 8, !tbaa !5
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %300, i64 0, i64 1, i32 1
  store ptr %294, ptr %304, align 8, !tbaa !5
  br label %305

305:                                              ; preds = %279, %298
  ret ptr %228
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare ptr @DetachEnv(ptr noundef) local_unnamed_addr #2

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ChildSym(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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

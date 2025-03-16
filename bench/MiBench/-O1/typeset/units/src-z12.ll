; ModuleID = 'src/z12.c'
source_filename = "src/z12.c"
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
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }
%struct.mapvec = type { ptr, i16, i32, i32, ptr, [256 x ptr], [353 x i8], [4 x [256 x i8]] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"SpannerAvail!\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SpannerAvailableSpace: thr_state!\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"search for gap preceding %s failed, using zero\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s deleted (out of place)\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"MinSize: CLOSURE has target!\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"MinSize: definite non-recursive closure\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"MinSize/SPAN: type(t) != HSPANNER!\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"%s replaced by empty object (out of place)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"MinSize: SPANNER!\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"MinSize: BreakObject failed to fit!\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"forced to enlarge %s from %s to %s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"word %s%s is too long\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"^ deleted (it may not precede this object)\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"gap replaced by 0i (%c unit not allowed here)\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"MinSize: NO_MODE!\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"mark alignment incompatible with centring or right justification\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"MinSize/VCAT/perp: !found!\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"MinSize/VCAT/perp: !found (2)!\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"MinSize/COL_THR: dim!\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"MinSize/COL_THR: Down(x)!\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"MinSize/COL_THR: GAP_OBJ!\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"MinSize/ROW_THR: dim!\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"MinSize/ROW_THR: Down(x)!\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"MinSize/ROW_THR: GAP_OBJ!\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%[^\0A\0D]%*c\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%!\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"%%BoundingBox:\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"(atend)\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"%%%%BoundingBox: %f %f %f %f\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"%s deleted (cannot open file %s)\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"%s given zero size (no BoundingBox line in file %s)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"%s deleted (bad first line in file %s)\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"%s given zero size (bad BoundingBox line in file %s)\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"MinSize\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"MinSize: back(x, dim) < 0!\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"MinSize: fwd(x, dim) < 0!\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"FindSpannerGap: type(*res)!\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"FindSpannerGap (HEAD): type(*res)!\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"BuildSpanner: spanobj!\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"%s deleted (not in column)\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"%s symbol out of place\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"BuildSpanner: type(prnt)!\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"%s deleted (not in row)\00", align 1
@finfo = external local_unnamed_addr global ptr, align 8
@MapTable = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: nounwind uwtable
define dso_local void @SpannerAvailableSpace(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = add i8 %6, -13
  %8 = icmp ult i8 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.1) #8
  br label %12

12:                                               ; preds = %4, %9
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 16, i32 15
  %15 = select i1 %13, i32 18, i32 19
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %212, label %19

19:                                               ; preds = %12
  %20 = sext i32 %1 to i64
  br label %21

21:                                               ; preds = %19, %206
  %22 = phi ptr [ %17, %19 ], [ %210, %206 ]
  %23 = phi i32 [ undef, %19 ], [ %208, %206 ]
  %24 = phi i32 [ undef, %19 ], [ %207, %206 ]
  %25 = phi ptr [ null, %19 ], [ %40, %206 ]
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %28, %26 ], [ %22, %21 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %26, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1, i32 1
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1
  %36 = select i1 %13, ptr %34, ptr %35
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  br label %38

38:                                               ; preds = %38, %32
  %39 = phi ptr [ %37, %32 ], [ %40, %38 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %38, label %44

44:                                               ; preds = %38
  %45 = zext i8 %42 to i32
  %46 = icmp eq i32 %14, %45
  br i1 %46, label %47, label %202

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %40, i64 41
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %53 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %52, ptr noundef nonnull @.str.2) #8
  br label %54

54:                                               ; preds = %51, %47
  %55 = icmp eq ptr %25, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3
  %58 = getelementptr inbounds [2 x i32], ptr %57, i64 0, i64 %20
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3, i32 1
  %61 = getelementptr inbounds [2 x i32], ptr %60, i64 0, i64 %20
  %62 = load i32, ptr %61, align 4, !tbaa !5
  br label %206

63:                                               ; preds = %54
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1, i32 1
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  %66 = select i1 %13, ptr %64, ptr %65
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  br label %68

68:                                               ; preds = %68, %63
  %69 = phi ptr [ %67, %63 ], [ %70, %68 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %68, label %74

74:                                               ; preds = %68
  br i1 %13, label %75, label %104

75:                                               ; preds = %98, %74
  %76 = phi i8 [ %72, %74 ], [ %102, %98 ]
  %77 = phi ptr [ %67, %74 ], [ %97, %98 ]
  %78 = phi ptr [ %70, %74 ], [ %100, %98 ]
  %79 = zext i8 %76 to i32
  %80 = icmp eq i32 %15, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, %78
  br i1 %84, label %141, label %96

85:                                               ; preds = %75
  %86 = load ptr, ptr %77, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.word_type, ptr %86, i64 0, i32 1
  %88 = load i8, ptr %87, align 8, !tbaa !5
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %110, %85
  %91 = phi ptr [ %86, %85 ], [ %111, %110 ]
  br label %132

92:                                               ; preds = %85
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %141, label %96

96:                                               ; preds = %92, %81
  %97 = phi ptr [ %83, %81 ], [ %94, %92 ]
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi ptr [ %97, %96 ], [ %100, %98 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.word_type, ptr %100, i64 0, i32 1
  %102 = load i8, ptr %101, align 8, !tbaa !5
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %98, label %75

104:                                              ; preds = %126, %74
  %105 = phi i8 [ %72, %74 ], [ %130, %126 ]
  %106 = phi ptr [ %67, %74 ], [ %125, %126 ]
  %107 = phi ptr [ %70, %74 ], [ %128, %126 ]
  %108 = zext i8 %105 to i32
  %109 = icmp eq i32 %15, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load ptr, ptr %106, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1
  %113 = load i8, ptr %112, align 8, !tbaa !5
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %90, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, %107
  br i1 %118, label %141, label %123

119:                                              ; preds = %104
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = icmp eq ptr %121, %107
  br i1 %122, label %141, label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  br label %126

126:                                              ; preds = %126, %123
  %127 = phi ptr [ %125, %123 ], [ %128, %126 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1
  %130 = load i8, ptr %129, align 8, !tbaa !5
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %126, label %104

132:                                              ; preds = %90, %132
  %133 = phi ptr [ %135, %132 ], [ %91, %90 ]
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %133, i64 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1
  %137 = load i8, ptr %136, align 8, !tbaa !5
  switch i8 %137, label %138 [
    i8 0, label %132
    i8 1, label %171
  ]

138:                                              ; preds = %132
  %139 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %140 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %139, ptr noundef nonnull @.str.46) #8
  br label %171

141:                                              ; preds = %119, %115, %92, %81
  %142 = phi ptr [ %77, %81 ], [ %77, %92 ], [ %106, %115 ], [ %106, %119 ]
  %143 = phi ptr [ %78, %81 ], [ %78, %92 ], [ %107, %115 ], [ %107, %119 ]
  %144 = phi i8 [ %76, %81 ], [ %76, %92 ], [ %105, %115 ], [ %105, %119 ]
  %145 = icmp eq i8 %144, 8
  br i1 %145, label %146, label %186

146:                                              ; preds = %141
  %147 = getelementptr inbounds i8, ptr %143, i64 42
  %148 = load i16, ptr %147, align 2
  %149 = lshr i16 %148, 8
  %150 = and i16 %149, 1
  %151 = zext nneg i16 %150 to i32
  %152 = icmp eq i32 %151, %1
  br i1 %152, label %153, label %186

153:                                              ; preds = %146
  %154 = load ptr, ptr %142, align 8, !tbaa !5
  %155 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1
  %156 = load i8, ptr %155, align 8, !tbaa !5
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %153, %158
  %159 = phi ptr [ %161, %158 ], [ %154, %153 ]
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1
  %163 = load i8, ptr %162, align 8, !tbaa !5
  switch i8 %163, label %164 [
    i8 0, label %158
    i8 1, label %167
  ]

164:                                              ; preds = %158
  %165 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %166 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %165, ptr noundef nonnull @.str.47) #8
  br label %167

167:                                              ; preds = %158, %164
  %168 = getelementptr inbounds %struct.gapobj_type, ptr %161, i64 0, i32 3
  %169 = load i16, ptr %168, align 4
  %170 = or i16 %169, 128
  store i16 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %132, %167, %138
  %172 = phi ptr [ %135, %138 ], [ %161, %167 ], [ %135, %132 ]
  %173 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 3, i32 1
  %174 = getelementptr inbounds [2 x i32], ptr %173, i64 0, i64 %20
  %175 = load i32, ptr %174, align 4, !tbaa !5
  %176 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3
  %177 = getelementptr inbounds [2 x i32], ptr %176, i64 0, i64 %20
  %178 = load i32, ptr %177, align 4, !tbaa !5
  %179 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3, i32 1
  %180 = getelementptr inbounds [2 x i32], ptr %179, i64 0, i64 %20
  %181 = load i32, ptr %180, align 4, !tbaa !5
  %182 = getelementptr inbounds %struct.gapobj_type, ptr %172, i64 0, i32 3
  %183 = tail call i32 @MinGap(i32 noundef %175, i32 noundef %178, i32 noundef %181, ptr noundef nonnull %182) #8
  %184 = add nsw i32 %183, %24
  %185 = load i32, ptr %180, align 4, !tbaa !5
  br label %206

186:                                              ; preds = %153, %146, %141
  %187 = load i8, ptr %33, align 8, !tbaa !5
  %188 = zext i8 %187 to i32
  %189 = tail call ptr @Image(i32 noundef %188) #8
  %190 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 13, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %33, ptr noundef %189) #8
  %191 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 3, i32 1
  %192 = getelementptr inbounds [2 x i32], ptr %191, i64 0, i64 %20
  %193 = load i32, ptr %192, align 4, !tbaa !5
  %194 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3
  %195 = getelementptr inbounds [2 x i32], ptr %194, i64 0, i64 %20
  %196 = load i32, ptr %195, align 4, !tbaa !5
  %197 = add i32 %193, %24
  %198 = add i32 %197, %196
  %199 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3, i32 1
  %200 = getelementptr inbounds [2 x i32], ptr %199, i64 0, i64 %20
  %201 = load i32, ptr %200, align 4, !tbaa !5
  br label %206

202:                                              ; preds = %44
  %203 = zext i8 %30 to i32
  %204 = tail call ptr @Image(i32 noundef %203) #8
  %205 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 14, ptr noundef nonnull @.str.4, i32 noundef 2, ptr noundef nonnull %33, ptr noundef %204) #8
  br label %206

206:                                              ; preds = %56, %186, %171, %202
  %207 = phi i32 [ %59, %56 ], [ %184, %171 ], [ %198, %186 ], [ %24, %202 ]
  %208 = phi i32 [ %62, %56 ], [ %185, %171 ], [ %201, %186 ], [ %23, %202 ]
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !5
  %211 = icmp eq ptr %210, %0
  br i1 %211, label %212, label %21

212:                                              ; preds = %206, %12
  %213 = phi i32 [ undef, %12 ], [ %207, %206 ]
  %214 = phi i32 [ undef, %12 ], [ %208, %206 ]
  store i32 %213, ptr %2, align 4, !tbaa !10
  store i32 %214, ptr %3, align 4, !tbaa !10
  %215 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  store i32 8388607, ptr %215, align 8, !tbaa !5
  %216 = add nsw i32 %214, %213
  %217 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 %216, ptr %217, align 4, !tbaa !5
  %218 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %218, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MinSize(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %12) #8
  %14 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !5
  switch i8 %15, label %4187 [
    i8 11, label %16
    i8 12, label %16
    i8 6, label %19
    i8 7, label %19
    i8 4, label %130
    i8 5, label %236
    i8 8, label %242
    i8 2, label %490
    i8 24, label %648
    i8 25, label %648
    i8 36, label %648
    i8 37, label %648
    i8 38, label %648
    i8 39, label %648
    i8 51, label %671
    i8 95, label %4045
    i8 94, label %4045
    i8 15, label %3947
    i8 16, label %3848
    i8 19, label %3048
    i8 13, label %1514
    i8 14, label %1514
    i8 40, label %1544
    i8 41, label %1544
    i8 21, label %1630
    i8 23, label %1630
    i8 20, label %1650
    i8 22, label %1650
    i8 96, label %1672
    i8 97, label %1672
    i8 98, label %1672
    i8 99, label %1672
    i8 32, label %1694
    i8 33, label %1694
    i8 30, label %1792
    i8 31, label %1792
    i8 50, label %1826
    i8 34, label %1919
    i8 35, label %2033
    i8 26, label %2125
    i8 27, label %2178
    i8 28, label %2244
    i8 29, label %2244
    i8 9, label %2291
    i8 17, label %2316
    i8 18, label %3048
    i8 44, label %708
    i8 42, label %708
    i8 43, label %704
    i8 45, label %704
    i8 46, label %704
  ]

16:                                               ; preds = %3, %3
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %4192

18:                                               ; preds = %16
  tail call void @FontWordSize(ptr noundef nonnull %0) #8
  br label %4192

19:                                               ; preds = %3, %3
  %20 = icmp eq i32 %1, 1
  br i1 %20, label %21, label %124

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %0, i64 41
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  store i32 %27, ptr @zz_size, align 4, !tbaa !10
  %28 = zext i8 %26 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %34 = tail call ptr @GetMemory(i32 noundef %27, ptr noundef %33) #8
  store ptr %34, ptr @zz_hold, align 8, !tbaa !8
  br label %37

35:                                               ; preds = %21
  store ptr %30, ptr @zz_hold, align 8, !tbaa !8
  %36 = load ptr, ptr %30, align 8, !tbaa !5
  store ptr %36, ptr %29, align 8, !tbaa !8
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %34, %32 ], [ %30, %35 ]
  %39 = load i8, ptr %22, align 1, !tbaa !5
  %40 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 1
  store i8 %39, ptr %40, align 8, !tbaa !5
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  store ptr %38, ptr %42, align 8, !tbaa !5
  store ptr %38, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  store ptr %38, ptr %43, align 8, !tbaa !5
  store ptr %38, ptr %38, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.closure_type, ptr %38, i64 0, i32 5
  store ptr %0, ptr %44, align 8, !tbaa !5
  %45 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %46 = zext i8 %45 to i32
  store i32 %46, ptr @zz_size, align 4, !tbaa !10
  %47 = zext i8 %45 to i64
  %48 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %53 = tail call ptr @GetMemory(i32 noundef %46, ptr noundef %52) #8
  br label %56

54:                                               ; preds = %37
  store ptr %49, ptr @zz_hold, align 8, !tbaa !8
  %55 = load ptr, ptr %49, align 8, !tbaa !5
  store ptr %55, ptr %48, align 8, !tbaa !8
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %53, %51 ], [ %49, %54 ]
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !5
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !5
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1
  store ptr %57, ptr %60, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %57, ptr %61, align 8, !tbaa !5
  store ptr %57, ptr %57, align 8, !tbaa !5
  store ptr %57, ptr @xx_link, align 8, !tbaa !8
  store ptr %57, ptr @zz_res, align 8, !tbaa !8
  store ptr %38, ptr @zz_hold, align 8, !tbaa !8
  %62 = load ptr, ptr %38, align 8, !tbaa !5
  store ptr %62, ptr @zz_tmp, align 8, !tbaa !8
  %63 = load ptr, ptr %57, align 8, !tbaa !5
  store ptr %63, ptr %38, align 8, !tbaa !5
  %64 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %65 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  store ptr %64, ptr %67, align 8, !tbaa !5
  %68 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %68, ptr %65, align 8, !tbaa !5
  %69 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %70 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !5
  %71 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %71, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %56
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  store ptr %75, ptr @zz_tmp, align 8, !tbaa !8
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  store ptr %77, ptr %74, align 8, !tbaa !5
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1, i32 1
  store ptr %0, ptr %78, align 8, !tbaa !5
  store ptr %75, ptr %76, align 8, !tbaa !5
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %71, ptr %79, align 8, !tbaa !5
  br label %80

80:                                               ; preds = %56, %73
  %81 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %82 = zext i8 %81 to i32
  store i32 %82, ptr @zz_size, align 4, !tbaa !10
  %83 = zext i8 %81 to i64
  %84 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %89 = tail call ptr @GetMemory(i32 noundef %82, ptr noundef %88) #8
  store ptr %89, ptr @zz_hold, align 8, !tbaa !8
  br label %92

90:                                               ; preds = %80
  store ptr %85, ptr @zz_hold, align 8, !tbaa !8
  %91 = load ptr, ptr %85, align 8, !tbaa !5
  store ptr %91, ptr %84, align 8, !tbaa !8
  br label %92

92:                                               ; preds = %87, %90
  %93 = phi ptr [ %89, %87 ], [ %85, %90 ]
  %94 = getelementptr inbounds %struct.word_type, ptr %93, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !5
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1
  store ptr %93, ptr %96, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  store ptr %93, ptr %97, align 8, !tbaa !5
  store ptr %93, ptr %93, align 8, !tbaa !5
  store ptr %93, ptr @xx_link, align 8, !tbaa !8
  store ptr %93, ptr @zz_res, align 8, !tbaa !8
  %98 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %98, ptr @zz_hold, align 8, !tbaa !8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store ptr %93, ptr @zz_res, align 8, !tbaa !8
  store ptr %38, ptr @zz_hold, align 8, !tbaa !8
  br label %116

101:                                              ; preds = %92
  %102 = load ptr, ptr %98, align 8, !tbaa !5
  store ptr %102, ptr @zz_tmp, align 8, !tbaa !8
  %103 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %103, ptr %98, align 8, !tbaa !5
  %104 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %105 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.LIST, ptr %106, i64 0, i32 1
  store ptr %104, ptr %107, align 8, !tbaa !5
  %108 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %108, ptr %105, align 8, !tbaa !5
  %109 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %110 = getelementptr inbounds %struct.LIST, ptr %108, i64 0, i32 1
  store ptr %109, ptr %110, align 8, !tbaa !5
  %111 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %111, ptr @zz_res, align 8, !tbaa !8
  store ptr %38, ptr @zz_hold, align 8, !tbaa !8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %101
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  br label %116

116:                                              ; preds = %113, %100
  %117 = phi ptr [ %93, %100 ], [ %115, %113 ]
  %118 = phi ptr [ %93, %100 ], [ %111, %113 ]
  %119 = load ptr, ptr %41, align 8, !tbaa !5
  store ptr %119, ptr @zz_tmp, align 8, !tbaa !8
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %118, i64 0, i64 1
  store ptr %117, ptr %41, align 8, !tbaa !5
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1, i32 1
  store ptr %38, ptr %122, align 8, !tbaa !5
  store ptr %119, ptr %120, align 8, !tbaa !5
  %123 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1, i32 1
  store ptr %118, ptr %123, align 8, !tbaa !5
  br label %124

124:                                              ; preds = %101, %116, %19
  %125 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %126 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %127 = sext i32 %1 to i64
  %128 = getelementptr inbounds [2 x i32], ptr %126, i64 0, i64 %127
  store i32 0, ptr %128, align 4, !tbaa !5
  %129 = getelementptr inbounds [2 x i32], ptr %125, i64 0, i64 %127
  store i32 0, ptr %129, align 4, !tbaa !5
  br label %4192

130:                                              ; preds = %3
  %131 = icmp eq i32 %1, 1
  br i1 %131, label %132, label %230

132:                                              ; preds = %130
  %133 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 135), align 1, !tbaa !5
  %134 = zext i8 %133 to i32
  store i32 %134, ptr @zz_size, align 4, !tbaa !10
  %135 = zext i8 %133 to i64
  %136 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %141 = tail call ptr @GetMemory(i32 noundef %134, ptr noundef %140) #8
  store ptr %141, ptr @zz_hold, align 8, !tbaa !8
  br label %144

142:                                              ; preds = %132
  store ptr %137, ptr @zz_hold, align 8, !tbaa !8
  %143 = load ptr, ptr %137, align 8, !tbaa !5
  store ptr %143, ptr %136, align 8, !tbaa !8
  br label %144

144:                                              ; preds = %139, %142
  %145 = phi ptr [ %141, %139 ], [ %137, %142 ]
  %146 = getelementptr inbounds %struct.word_type, ptr %145, i64 0, i32 1
  store i8 -121, ptr %146, align 8, !tbaa !5
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1, i32 1
  store ptr %145, ptr %148, align 8, !tbaa !5
  store ptr %145, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds %struct.LIST, ptr %145, i64 0, i32 1
  store ptr %145, ptr %149, align 8, !tbaa !5
  store ptr %145, ptr %145, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.closure_type, ptr %145, i64 0, i32 5
  store ptr %0, ptr %150, align 8, !tbaa !5
  %151 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %152 = zext i8 %151 to i32
  store i32 %152, ptr @zz_size, align 4, !tbaa !10
  %153 = zext i8 %151 to i64
  %154 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %159 = tail call ptr @GetMemory(i32 noundef %152, ptr noundef %158) #8
  br label %162

160:                                              ; preds = %144
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
  store ptr %145, ptr @zz_hold, align 8, !tbaa !8
  %168 = load ptr, ptr %145, align 8, !tbaa !5
  store ptr %168, ptr @zz_tmp, align 8, !tbaa !8
  %169 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %169, ptr %145, align 8, !tbaa !5
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
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %162
  %180 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !5
  store ptr %181, ptr @zz_tmp, align 8, !tbaa !8
  %182 = getelementptr inbounds [2 x %struct.LIST], ptr %177, i64 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !5
  store ptr %183, ptr %180, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %183, i64 0, i64 1, i32 1
  store ptr %0, ptr %184, align 8, !tbaa !5
  store ptr %181, ptr %182, align 8, !tbaa !5
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %181, i64 0, i64 1, i32 1
  store ptr %177, ptr %185, align 8, !tbaa !5
  br label %186

186:                                              ; preds = %162, %179
  %187 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %188 = zext i8 %187 to i32
  store i32 %188, ptr @zz_size, align 4, !tbaa !10
  %189 = zext i8 %187 to i64
  %190 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %195 = tail call ptr @GetMemory(i32 noundef %188, ptr noundef %194) #8
  store ptr %195, ptr @zz_hold, align 8, !tbaa !8
  br label %198

196:                                              ; preds = %186
  store ptr %191, ptr @zz_hold, align 8, !tbaa !8
  %197 = load ptr, ptr %191, align 8, !tbaa !5
  store ptr %197, ptr %190, align 8, !tbaa !8
  br label %198

198:                                              ; preds = %193, %196
  %199 = phi ptr [ %195, %193 ], [ %191, %196 ]
  %200 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 1
  store i8 0, ptr %200, align 8, !tbaa !5
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1, i32 1
  store ptr %199, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1
  store ptr %199, ptr %202, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  store ptr %199, ptr %203, align 8, !tbaa !5
  store ptr %199, ptr %199, align 8, !tbaa !5
  store ptr %199, ptr @xx_link, align 8, !tbaa !8
  store ptr %199, ptr @zz_res, align 8, !tbaa !8
  %204 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %204, ptr @zz_hold, align 8, !tbaa !8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  store ptr %199, ptr @zz_res, align 8, !tbaa !8
  store ptr %145, ptr @zz_hold, align 8, !tbaa !8
  br label %222

207:                                              ; preds = %198
  %208 = load ptr, ptr %204, align 8, !tbaa !5
  store ptr %208, ptr @zz_tmp, align 8, !tbaa !8
  %209 = load ptr, ptr %199, align 8, !tbaa !5
  store ptr %209, ptr %204, align 8, !tbaa !5
  %210 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %211 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = getelementptr inbounds %struct.LIST, ptr %212, i64 0, i32 1
  store ptr %210, ptr %213, align 8, !tbaa !5
  %214 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %214, ptr %211, align 8, !tbaa !5
  %215 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %216 = getelementptr inbounds %struct.LIST, ptr %214, i64 0, i32 1
  store ptr %215, ptr %216, align 8, !tbaa !5
  %217 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %217, ptr @zz_res, align 8, !tbaa !8
  store ptr %145, ptr @zz_hold, align 8, !tbaa !8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %230, label %219

219:                                              ; preds = %207
  %220 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !5
  br label %222

222:                                              ; preds = %219, %206
  %223 = phi ptr [ %199, %206 ], [ %221, %219 ]
  %224 = phi ptr [ %199, %206 ], [ %217, %219 ]
  %225 = load ptr, ptr %147, align 8, !tbaa !5
  store ptr %225, ptr @zz_tmp, align 8, !tbaa !8
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1
  store ptr %223, ptr %147, align 8, !tbaa !5
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %227, i64 0, i64 1, i32 1
  store ptr %145, ptr %228, align 8, !tbaa !5
  store ptr %225, ptr %226, align 8, !tbaa !5
  %229 = getelementptr inbounds [2 x %struct.LIST], ptr %225, i64 0, i64 1, i32 1
  store ptr %224, ptr %229, align 8, !tbaa !5
  br label %230

230:                                              ; preds = %207, %222, %130
  %231 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %232 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %233 = sext i32 %1 to i64
  %234 = getelementptr inbounds [2 x i32], ptr %232, i64 0, i64 %233
  store i32 0, ptr %234, align 4, !tbaa !5
  %235 = getelementptr inbounds [2 x i32], ptr %231, i64 0, i64 %233
  store i32 0, ptr %235, align 4, !tbaa !5
  br label %4192

236:                                              ; preds = %3
  %237 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %238 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %239 = sext i32 %1 to i64
  %240 = getelementptr inbounds [2 x i32], ptr %238, i64 0, i64 %239
  store i32 0, ptr %240, align 4, !tbaa !5
  %241 = getelementptr inbounds [2 x i32], ptr %237, i64 0, i64 %239
  store i32 0, ptr %241, align 4, !tbaa !5
  br label %4192

242:                                              ; preds = %3
  %243 = icmp eq i32 %1, 1
  br i1 %243, label %244, label %479

244:                                              ; preds = %242
  %245 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 5), align 1, !tbaa !5
  %246 = zext i8 %245 to i32
  store i32 %246, ptr @zz_size, align 4, !tbaa !10
  %247 = zext i8 %245 to i64
  %248 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %253 = tail call ptr @GetMemory(i32 noundef %246, ptr noundef %252) #8
  br label %256

254:                                              ; preds = %244
  store ptr %249, ptr @zz_hold, align 8, !tbaa !8
  %255 = load ptr, ptr %249, align 8, !tbaa !5
  store ptr %255, ptr %248, align 8, !tbaa !8
  br label %256

256:                                              ; preds = %251, %254
  %257 = phi ptr [ %253, %251 ], [ %249, %254 ]
  %258 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1
  store i8 5, ptr %258, align 8, !tbaa !5
  %259 = getelementptr inbounds [2 x %struct.LIST], ptr %257, i64 0, i64 1, i32 1
  store ptr %257, ptr %259, align 8, !tbaa !5
  %260 = getelementptr inbounds [2 x %struct.LIST], ptr %257, i64 0, i64 1
  store ptr %257, ptr %260, align 8, !tbaa !5
  %261 = getelementptr inbounds %struct.LIST, ptr %257, i64 0, i32 1
  store ptr %257, ptr %261, align 8, !tbaa !5
  store ptr %257, ptr %257, align 8, !tbaa !5
  %262 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %263 = load i16, ptr %262, align 2, !tbaa !5
  %264 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1, i32 0, i32 2
  store i16 %263, ptr %264, align 2, !tbaa !5
  %265 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = and i32 %266, 1048575
  %268 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1, i32 0, i32 3
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, -1048576
  %271 = or disjoint i32 %270, %267
  store i32 %271, ptr %268, align 4
  %272 = load i32, ptr %265, align 4
  %273 = and i32 %272, -1048576
  %274 = or disjoint i32 %273, %267
  store i32 %274, ptr %268, align 4
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %276 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !5
  %278 = icmp eq ptr %277, %0
  br i1 %278, label %279, label %280

279:                                              ; preds = %256
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %257, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %288

280:                                              ; preds = %256
  %281 = load ptr, ptr %275, align 8, !tbaa !5
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %277, i64 0, i64 1
  store ptr %281, ptr %282, align 8, !tbaa !5
  %283 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1, i32 1
  store ptr %277, ptr %283, align 8, !tbaa !5
  store ptr %0, ptr %276, align 8, !tbaa !5
  store ptr %0, ptr %275, align 8, !tbaa !5
  store ptr %277, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %257, ptr @zz_res, align 8, !tbaa !8
  store ptr %277, ptr @zz_hold, align 8, !tbaa !8
  %284 = load ptr, ptr %282, align 8, !tbaa !5
  store ptr %284, ptr @zz_tmp, align 8, !tbaa !8
  %285 = load ptr, ptr %260, align 8, !tbaa !5
  store ptr %285, ptr %282, align 8, !tbaa !5
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1, i32 1
  store ptr %277, ptr %286, align 8, !tbaa !5
  store ptr %284, ptr %260, align 8, !tbaa !5
  %287 = getelementptr inbounds [2 x %struct.LIST], ptr %284, i64 0, i64 1, i32 1
  store ptr %257, ptr %287, align 8, !tbaa !5
  br label %288

288:                                              ; preds = %279, %280
  %289 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %290 = load ptr, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds i8, ptr %290, i64 41
  %292 = load i24, ptr %291, align 1
  %293 = and i24 %292, 16384
  %294 = icmp eq i24 %293, 0
  br i1 %294, label %379, label %295

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %297 = load i8, ptr %296, align 8, !tbaa !5
  %298 = zext i8 %297 to i64
  %299 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !5
  %301 = zext i8 %300 to i32
  store i32 %301, ptr @zz_size, align 4, !tbaa !10
  %302 = zext i8 %300 to i64
  %303 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !8
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %295
  %307 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %308 = tail call ptr @GetMemory(i32 noundef %301, ptr noundef %307) #8
  store ptr %308, ptr @zz_hold, align 8, !tbaa !8
  br label %311

309:                                              ; preds = %295
  store ptr %304, ptr @zz_hold, align 8, !tbaa !8
  %310 = load ptr, ptr %304, align 8, !tbaa !5
  store ptr %310, ptr %303, align 8, !tbaa !8
  br label %311

311:                                              ; preds = %306, %309
  %312 = phi ptr [ %308, %306 ], [ %304, %309 ]
  %313 = load i8, ptr %296, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.word_type, ptr %312, i64 0, i32 1
  store i8 %313, ptr %314, align 8, !tbaa !5
  %315 = getelementptr inbounds [2 x %struct.LIST], ptr %312, i64 0, i64 1
  %316 = getelementptr inbounds [2 x %struct.LIST], ptr %312, i64 0, i64 1, i32 1
  store ptr %312, ptr %316, align 8, !tbaa !5
  store ptr %312, ptr %315, align 8, !tbaa !5
  %317 = getelementptr inbounds %struct.LIST, ptr %312, i64 0, i32 1
  store ptr %312, ptr %317, align 8, !tbaa !5
  store ptr %312, ptr %312, align 8, !tbaa !5
  %318 = getelementptr inbounds %struct.closure_type, ptr %312, i64 0, i32 6
  store ptr %257, ptr %318, align 8, !tbaa !5
  %319 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !5
  br label %321

321:                                              ; preds = %321, %311
  %322 = phi ptr [ %320, %311 ], [ %324, %321 ]
  %323 = getelementptr inbounds [2 x %struct.LIST], ptr %322, i64 0, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !5
  %325 = getelementptr inbounds %struct.word_type, ptr %324, i64 0, i32 1
  %326 = load i8, ptr %325, align 8, !tbaa !5
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %321, label %328

328:                                              ; preds = %321
  %329 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !5
  %331 = zext i8 %313 to i32
  %332 = tail call ptr @CrossMake(ptr noundef %330, ptr noundef nonnull %324, i32 noundef %331) #8
  %333 = getelementptr inbounds %struct.closure_type, ptr %312, i64 0, i32 5
  store ptr %332, ptr %333, align 8, !tbaa !5
  %334 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %335 = zext i8 %334 to i32
  store i32 %335, ptr @zz_size, align 4, !tbaa !10
  %336 = zext i8 %334 to i64
  %337 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !8
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %328
  %341 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %342 = tail call ptr @GetMemory(i32 noundef %335, ptr noundef %341) #8
  store ptr %342, ptr @zz_hold, align 8, !tbaa !8
  br label %345

343:                                              ; preds = %328
  store ptr %338, ptr @zz_hold, align 8, !tbaa !8
  %344 = load ptr, ptr %338, align 8, !tbaa !5
  store ptr %344, ptr %337, align 8, !tbaa !8
  br label %345

345:                                              ; preds = %340, %343
  %346 = phi ptr [ %342, %340 ], [ %338, %343 ]
  %347 = getelementptr inbounds %struct.word_type, ptr %346, i64 0, i32 1
  store i8 0, ptr %347, align 8, !tbaa !5
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %346, i64 0, i64 1, i32 1
  store ptr %346, ptr %348, align 8, !tbaa !5
  %349 = getelementptr inbounds [2 x %struct.LIST], ptr %346, i64 0, i64 1
  store ptr %346, ptr %349, align 8, !tbaa !5
  %350 = getelementptr inbounds %struct.LIST, ptr %346, i64 0, i32 1
  store ptr %346, ptr %350, align 8, !tbaa !5
  store ptr %346, ptr %346, align 8, !tbaa !5
  store ptr %346, ptr @xx_link, align 8, !tbaa !8
  store ptr %346, ptr @zz_res, align 8, !tbaa !8
  %351 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %351, ptr @zz_hold, align 8, !tbaa !8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  store ptr %346, ptr @zz_res, align 8, !tbaa !8
  store ptr %312, ptr @zz_hold, align 8, !tbaa !8
  br label %369

354:                                              ; preds = %345
  %355 = load ptr, ptr %351, align 8, !tbaa !5
  store ptr %355, ptr @zz_tmp, align 8, !tbaa !8
  %356 = load ptr, ptr %346, align 8, !tbaa !5
  store ptr %356, ptr %351, align 8, !tbaa !5
  %357 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %358 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %359 = load ptr, ptr %358, align 8, !tbaa !5
  %360 = getelementptr inbounds %struct.LIST, ptr %359, i64 0, i32 1
  store ptr %357, ptr %360, align 8, !tbaa !5
  %361 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %361, ptr %358, align 8, !tbaa !5
  %362 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %363 = getelementptr inbounds %struct.LIST, ptr %361, i64 0, i32 1
  store ptr %362, ptr %363, align 8, !tbaa !5
  %364 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %364, ptr @zz_res, align 8, !tbaa !8
  store ptr %312, ptr @zz_hold, align 8, !tbaa !8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %377, label %366

366:                                              ; preds = %354
  %367 = getelementptr inbounds [2 x %struct.LIST], ptr %364, i64 0, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !5
  br label %369

369:                                              ; preds = %366, %353
  %370 = phi ptr [ %346, %353 ], [ %368, %366 ]
  %371 = phi ptr [ %346, %353 ], [ %364, %366 ]
  %372 = load ptr, ptr %315, align 8, !tbaa !5
  store ptr %372, ptr @zz_tmp, align 8, !tbaa !8
  %373 = getelementptr inbounds [2 x %struct.LIST], ptr %371, i64 0, i64 1
  store ptr %370, ptr %315, align 8, !tbaa !5
  %374 = load ptr, ptr %373, align 8, !tbaa !5
  %375 = getelementptr inbounds [2 x %struct.LIST], ptr %374, i64 0, i64 1, i32 1
  store ptr %312, ptr %375, align 8, !tbaa !5
  store ptr %372, ptr %373, align 8, !tbaa !5
  %376 = getelementptr inbounds [2 x %struct.LIST], ptr %372, i64 0, i64 1, i32 1
  store ptr %371, ptr %376, align 8, !tbaa !5
  br label %377

377:                                              ; preds = %354, %369
  %378 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #8
  br label %476

379:                                              ; preds = %288
  %380 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 120), align 1, !tbaa !5
  %381 = zext i8 %380 to i32
  store i32 %381, ptr @zz_size, align 4, !tbaa !10
  %382 = zext i8 %380 to i64
  %383 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %379
  %387 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %388 = tail call ptr @GetMemory(i32 noundef %381, ptr noundef %387) #8
  store ptr %388, ptr @zz_hold, align 8, !tbaa !8
  br label %391

389:                                              ; preds = %379
  store ptr %384, ptr @zz_hold, align 8, !tbaa !8
  %390 = load ptr, ptr %384, align 8, !tbaa !5
  store ptr %390, ptr %383, align 8, !tbaa !8
  br label %391

391:                                              ; preds = %386, %389
  %392 = phi ptr [ %388, %386 ], [ %384, %389 ]
  %393 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 1
  store i8 120, ptr %393, align 8, !tbaa !5
  %394 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1
  %395 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1, i32 1
  store ptr %392, ptr %395, align 8, !tbaa !5
  store ptr %392, ptr %394, align 8, !tbaa !5
  %396 = getelementptr inbounds %struct.LIST, ptr %392, i64 0, i32 1
  store ptr %392, ptr %396, align 8, !tbaa !5
  store ptr %392, ptr %392, align 8, !tbaa !5
  %397 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %398 = zext i8 %397 to i32
  store i32 %398, ptr @zz_size, align 4, !tbaa !10
  %399 = zext i8 %397 to i64
  %400 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !8
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %391
  %404 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %405 = tail call ptr @GetMemory(i32 noundef %398, ptr noundef %404) #8
  br label %408

406:                                              ; preds = %391
  store ptr %401, ptr @zz_hold, align 8, !tbaa !8
  %407 = load ptr, ptr %401, align 8, !tbaa !5
  store ptr %407, ptr %400, align 8, !tbaa !8
  br label %408

408:                                              ; preds = %403, %406
  %409 = phi ptr [ %405, %403 ], [ %401, %406 ]
  %410 = getelementptr inbounds %struct.word_type, ptr %409, i64 0, i32 1
  store i8 0, ptr %410, align 8, !tbaa !5
  %411 = getelementptr inbounds [2 x %struct.LIST], ptr %409, i64 0, i64 1, i32 1
  store ptr %409, ptr %411, align 8, !tbaa !5
  %412 = getelementptr inbounds [2 x %struct.LIST], ptr %409, i64 0, i64 1
  store ptr %409, ptr %412, align 8, !tbaa !5
  %413 = getelementptr inbounds %struct.LIST, ptr %409, i64 0, i32 1
  store ptr %409, ptr %413, align 8, !tbaa !5
  store ptr %409, ptr %409, align 8, !tbaa !5
  store ptr %409, ptr @xx_link, align 8, !tbaa !8
  store ptr %409, ptr @zz_res, align 8, !tbaa !8
  store ptr %392, ptr @zz_hold, align 8, !tbaa !8
  %414 = load ptr, ptr %392, align 8, !tbaa !5
  store ptr %414, ptr @zz_tmp, align 8, !tbaa !8
  %415 = load ptr, ptr %409, align 8, !tbaa !5
  store ptr %415, ptr %392, align 8, !tbaa !5
  %416 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %417 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %418 = load ptr, ptr %417, align 8, !tbaa !5
  %419 = getelementptr inbounds %struct.LIST, ptr %418, i64 0, i32 1
  store ptr %416, ptr %419, align 8, !tbaa !5
  %420 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %420, ptr %417, align 8, !tbaa !5
  %421 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %422 = getelementptr inbounds %struct.LIST, ptr %420, i64 0, i32 1
  store ptr %421, ptr %422, align 8, !tbaa !5
  %423 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %423, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %424 = icmp eq ptr %423, null
  br i1 %424, label %431, label %425

425:                                              ; preds = %408
  %426 = load ptr, ptr %275, align 8, !tbaa !5
  store ptr %426, ptr @zz_tmp, align 8, !tbaa !8
  %427 = getelementptr inbounds [2 x %struct.LIST], ptr %423, i64 0, i64 1
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  store ptr %428, ptr %275, align 8, !tbaa !5
  %429 = getelementptr inbounds [2 x %struct.LIST], ptr %428, i64 0, i64 1, i32 1
  store ptr %0, ptr %429, align 8, !tbaa !5
  store ptr %426, ptr %427, align 8, !tbaa !5
  %430 = getelementptr inbounds [2 x %struct.LIST], ptr %426, i64 0, i64 1, i32 1
  store ptr %423, ptr %430, align 8, !tbaa !5
  br label %431

431:                                              ; preds = %408, %425
  %432 = getelementptr inbounds %struct.closure_type, ptr %392, i64 0, i32 6
  store ptr %257, ptr %432, align 8, !tbaa !5
  %433 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %434 = zext i8 %433 to i32
  store i32 %434, ptr @zz_size, align 4, !tbaa !10
  %435 = zext i8 %433 to i64
  %436 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !8
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %442

439:                                              ; preds = %431
  %440 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %441 = tail call ptr @GetMemory(i32 noundef %434, ptr noundef %440) #8
  store ptr %441, ptr @zz_hold, align 8, !tbaa !8
  br label %444

442:                                              ; preds = %431
  store ptr %437, ptr @zz_hold, align 8, !tbaa !8
  %443 = load ptr, ptr %437, align 8, !tbaa !5
  store ptr %443, ptr %436, align 8, !tbaa !8
  br label %444

444:                                              ; preds = %439, %442
  %445 = phi ptr [ %441, %439 ], [ %437, %442 ]
  %446 = getelementptr inbounds %struct.word_type, ptr %445, i64 0, i32 1
  store i8 0, ptr %446, align 8, !tbaa !5
  %447 = getelementptr inbounds [2 x %struct.LIST], ptr %445, i64 0, i64 1, i32 1
  store ptr %445, ptr %447, align 8, !tbaa !5
  %448 = getelementptr inbounds [2 x %struct.LIST], ptr %445, i64 0, i64 1
  store ptr %445, ptr %448, align 8, !tbaa !5
  %449 = getelementptr inbounds %struct.LIST, ptr %445, i64 0, i32 1
  store ptr %445, ptr %449, align 8, !tbaa !5
  store ptr %445, ptr %445, align 8, !tbaa !5
  store ptr %445, ptr @xx_link, align 8, !tbaa !8
  store ptr %445, ptr @zz_res, align 8, !tbaa !8
  %450 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %450, ptr @zz_hold, align 8, !tbaa !8
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %453

452:                                              ; preds = %444
  store ptr %445, ptr @zz_res, align 8, !tbaa !8
  store ptr %392, ptr @zz_hold, align 8, !tbaa !8
  br label %468

453:                                              ; preds = %444
  %454 = load ptr, ptr %450, align 8, !tbaa !5
  store ptr %454, ptr @zz_tmp, align 8, !tbaa !8
  %455 = load ptr, ptr %445, align 8, !tbaa !5
  store ptr %455, ptr %450, align 8, !tbaa !5
  %456 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %457 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %458 = load ptr, ptr %457, align 8, !tbaa !5
  %459 = getelementptr inbounds %struct.LIST, ptr %458, i64 0, i32 1
  store ptr %456, ptr %459, align 8, !tbaa !5
  %460 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %460, ptr %457, align 8, !tbaa !5
  %461 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %462 = getelementptr inbounds %struct.LIST, ptr %460, i64 0, i32 1
  store ptr %461, ptr %462, align 8, !tbaa !5
  %463 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %463, ptr @zz_res, align 8, !tbaa !8
  store ptr %392, ptr @zz_hold, align 8, !tbaa !8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %476, label %465

465:                                              ; preds = %453
  %466 = getelementptr inbounds [2 x %struct.LIST], ptr %463, i64 0, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !5
  br label %468

468:                                              ; preds = %465, %452
  %469 = phi ptr [ %445, %452 ], [ %467, %465 ]
  %470 = phi ptr [ %445, %452 ], [ %463, %465 ]
  %471 = load ptr, ptr %394, align 8, !tbaa !5
  store ptr %471, ptr @zz_tmp, align 8, !tbaa !8
  %472 = getelementptr inbounds [2 x %struct.LIST], ptr %470, i64 0, i64 1
  store ptr %469, ptr %394, align 8, !tbaa !5
  %473 = load ptr, ptr %472, align 8, !tbaa !5
  %474 = getelementptr inbounds [2 x %struct.LIST], ptr %473, i64 0, i64 1, i32 1
  store ptr %392, ptr %474, align 8, !tbaa !5
  store ptr %471, ptr %472, align 8, !tbaa !5
  %475 = getelementptr inbounds [2 x %struct.LIST], ptr %471, i64 0, i64 1, i32 1
  store ptr %470, ptr %475, align 8, !tbaa !5
  br label %476

476:                                              ; preds = %453, %468, %377
  %477 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 3
  %478 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 3, i32 1
  store i32 0, ptr %478, align 8, !tbaa !5
  store i32 0, ptr %477, align 8, !tbaa !5
  br label %483

479:                                              ; preds = %242
  %480 = getelementptr inbounds i8, ptr %0, i64 42
  %481 = load i16, ptr %480, align 2
  %482 = and i16 %481, -25
  store i16 %482, ptr %480, align 2
  br label %483

483:                                              ; preds = %479, %476
  %484 = phi ptr [ %257, %476 ], [ %0, %479 ]
  %485 = getelementptr inbounds %struct.word_type, ptr %484, i64 0, i32 3
  %486 = getelementptr inbounds %struct.word_type, ptr %484, i64 0, i32 3, i32 1
  %487 = sext i32 %1 to i64
  %488 = getelementptr inbounds [2 x i32], ptr %486, i64 0, i64 %487
  store i32 0, ptr %488, align 4, !tbaa !5
  %489 = getelementptr inbounds [2 x i32], ptr %485, i64 0, i64 %487
  store i32 0, ptr %489, align 4, !tbaa !5
  br label %4192

490:                                              ; preds = %3
  %491 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %492 = load ptr, ptr %491, align 8, !tbaa !5
  %493 = getelementptr inbounds i8, ptr %492, i64 41
  %494 = load i24, ptr %493, align 1
  %495 = and i24 %494, 64
  %496 = icmp eq i24 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %490
  %498 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %499 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %498, ptr noundef nonnull @.str.6) #8
  br label %500

500:                                              ; preds = %497, %490
  %501 = icmp eq i32 %1, 1
  br i1 %501, label %502, label %638

502:                                              ; preds = %500
  %503 = load ptr, ptr %491, align 8, !tbaa !5
  %504 = getelementptr inbounds i8, ptr %503, i64 41
  %505 = load i24, ptr %504, align 1
  %506 = and i24 %505, 512
  %507 = icmp eq i24 %506, 0
  br i1 %507, label %570, label %508

508:                                              ; preds = %502
  %509 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 121), align 1, !tbaa !5
  %510 = zext i8 %509 to i32
  store i32 %510, ptr @zz_size, align 4, !tbaa !10
  %511 = zext i8 %509 to i64
  %512 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !8
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %518

515:                                              ; preds = %508
  %516 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %517 = tail call ptr @GetMemory(i32 noundef %510, ptr noundef %516) #8
  store ptr %517, ptr @zz_hold, align 8, !tbaa !8
  br label %520

518:                                              ; preds = %508
  store ptr %513, ptr @zz_hold, align 8, !tbaa !8
  %519 = load ptr, ptr %513, align 8, !tbaa !5
  store ptr %519, ptr %512, align 8, !tbaa !8
  br label %520

520:                                              ; preds = %515, %518
  %521 = phi ptr [ %517, %515 ], [ %513, %518 ]
  %522 = getelementptr inbounds %struct.word_type, ptr %521, i64 0, i32 1
  store i8 121, ptr %522, align 8, !tbaa !5
  %523 = getelementptr inbounds [2 x %struct.LIST], ptr %521, i64 0, i64 1
  %524 = getelementptr inbounds [2 x %struct.LIST], ptr %521, i64 0, i64 1, i32 1
  store ptr %521, ptr %524, align 8, !tbaa !5
  store ptr %521, ptr %523, align 8, !tbaa !5
  %525 = getelementptr inbounds %struct.LIST, ptr %521, i64 0, i32 1
  store ptr %521, ptr %525, align 8, !tbaa !5
  store ptr %521, ptr %521, align 8, !tbaa !5
  %526 = getelementptr inbounds %struct.closure_type, ptr %521, i64 0, i32 5
  store ptr %0, ptr %526, align 8, !tbaa !5
  %527 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %528 = zext i8 %527 to i32
  store i32 %528, ptr @zz_size, align 4, !tbaa !10
  %529 = zext i8 %527 to i64
  %530 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !8
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %536

533:                                              ; preds = %520
  %534 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %535 = tail call ptr @GetMemory(i32 noundef %528, ptr noundef %534) #8
  store ptr %535, ptr @zz_hold, align 8, !tbaa !8
  br label %538

536:                                              ; preds = %520
  store ptr %531, ptr @zz_hold, align 8, !tbaa !8
  %537 = load ptr, ptr %531, align 8, !tbaa !5
  store ptr %537, ptr %530, align 8, !tbaa !8
  br label %538

538:                                              ; preds = %533, %536
  %539 = phi ptr [ %535, %533 ], [ %531, %536 ]
  %540 = getelementptr inbounds %struct.word_type, ptr %539, i64 0, i32 1
  store i8 0, ptr %540, align 8, !tbaa !5
  %541 = getelementptr inbounds [2 x %struct.LIST], ptr %539, i64 0, i64 1, i32 1
  store ptr %539, ptr %541, align 8, !tbaa !5
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %539, i64 0, i64 1
  store ptr %539, ptr %542, align 8, !tbaa !5
  %543 = getelementptr inbounds %struct.LIST, ptr %539, i64 0, i32 1
  store ptr %539, ptr %543, align 8, !tbaa !5
  store ptr %539, ptr %539, align 8, !tbaa !5
  store ptr %539, ptr @xx_link, align 8, !tbaa !8
  store ptr %539, ptr @zz_res, align 8, !tbaa !8
  %544 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %544, ptr @zz_hold, align 8, !tbaa !8
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %547

546:                                              ; preds = %538
  store ptr %539, ptr @zz_res, align 8, !tbaa !8
  store ptr %521, ptr @zz_hold, align 8, !tbaa !8
  br label %562

547:                                              ; preds = %538
  %548 = load ptr, ptr %544, align 8, !tbaa !5
  store ptr %548, ptr @zz_tmp, align 8, !tbaa !8
  %549 = load ptr, ptr %539, align 8, !tbaa !5
  store ptr %549, ptr %544, align 8, !tbaa !5
  %550 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %551 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %552 = load ptr, ptr %551, align 8, !tbaa !5
  %553 = getelementptr inbounds %struct.LIST, ptr %552, i64 0, i32 1
  store ptr %550, ptr %553, align 8, !tbaa !5
  %554 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %554, ptr %551, align 8, !tbaa !5
  %555 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %556 = getelementptr inbounds %struct.LIST, ptr %554, i64 0, i32 1
  store ptr %555, ptr %556, align 8, !tbaa !5
  %557 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %557, ptr @zz_res, align 8, !tbaa !8
  store ptr %521, ptr @zz_hold, align 8, !tbaa !8
  %558 = icmp eq ptr %557, null
  br i1 %558, label %642, label %559

559:                                              ; preds = %547
  %560 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1
  %561 = load ptr, ptr %560, align 8, !tbaa !5
  br label %562

562:                                              ; preds = %559, %546
  %563 = phi ptr [ %539, %546 ], [ %561, %559 ]
  %564 = phi ptr [ %539, %546 ], [ %557, %559 ]
  %565 = load ptr, ptr %523, align 8, !tbaa !5
  store ptr %565, ptr @zz_tmp, align 8, !tbaa !8
  %566 = getelementptr inbounds [2 x %struct.LIST], ptr %564, i64 0, i64 1
  store ptr %563, ptr %523, align 8, !tbaa !5
  %567 = load ptr, ptr %566, align 8, !tbaa !5
  %568 = getelementptr inbounds [2 x %struct.LIST], ptr %567, i64 0, i64 1, i32 1
  store ptr %521, ptr %568, align 8, !tbaa !5
  store ptr %565, ptr %566, align 8, !tbaa !5
  %569 = getelementptr inbounds [2 x %struct.LIST], ptr %565, i64 0, i64 1, i32 1
  store ptr %564, ptr %569, align 8, !tbaa !5
  br label %642

570:                                              ; preds = %502
  %571 = and i24 %505, 1024
  %572 = icmp eq i24 %571, 0
  br i1 %572, label %635, label %573

573:                                              ; preds = %570
  %574 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 123), align 1, !tbaa !5
  %575 = zext i8 %574 to i32
  store i32 %575, ptr @zz_size, align 4, !tbaa !10
  %576 = zext i8 %574 to i64
  %577 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %576
  %578 = load ptr, ptr %577, align 8, !tbaa !8
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %583

580:                                              ; preds = %573
  %581 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %582 = tail call ptr @GetMemory(i32 noundef %575, ptr noundef %581) #8
  store ptr %582, ptr @zz_hold, align 8, !tbaa !8
  br label %585

583:                                              ; preds = %573
  store ptr %578, ptr @zz_hold, align 8, !tbaa !8
  %584 = load ptr, ptr %578, align 8, !tbaa !5
  store ptr %584, ptr %577, align 8, !tbaa !8
  br label %585

585:                                              ; preds = %580, %583
  %586 = phi ptr [ %582, %580 ], [ %578, %583 ]
  %587 = getelementptr inbounds %struct.word_type, ptr %586, i64 0, i32 1
  store i8 123, ptr %587, align 8, !tbaa !5
  %588 = getelementptr inbounds [2 x %struct.LIST], ptr %586, i64 0, i64 1
  %589 = getelementptr inbounds [2 x %struct.LIST], ptr %586, i64 0, i64 1, i32 1
  store ptr %586, ptr %589, align 8, !tbaa !5
  store ptr %586, ptr %588, align 8, !tbaa !5
  %590 = getelementptr inbounds %struct.LIST, ptr %586, i64 0, i32 1
  store ptr %586, ptr %590, align 8, !tbaa !5
  store ptr %586, ptr %586, align 8, !tbaa !5
  %591 = getelementptr inbounds %struct.closure_type, ptr %586, i64 0, i32 5
  store ptr %0, ptr %591, align 8, !tbaa !5
  %592 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %593 = zext i8 %592 to i32
  store i32 %593, ptr @zz_size, align 4, !tbaa !10
  %594 = zext i8 %592 to i64
  %595 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !8
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %601

598:                                              ; preds = %585
  %599 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %600 = tail call ptr @GetMemory(i32 noundef %593, ptr noundef %599) #8
  store ptr %600, ptr @zz_hold, align 8, !tbaa !8
  br label %603

601:                                              ; preds = %585
  store ptr %596, ptr @zz_hold, align 8, !tbaa !8
  %602 = load ptr, ptr %596, align 8, !tbaa !5
  store ptr %602, ptr %595, align 8, !tbaa !8
  br label %603

603:                                              ; preds = %598, %601
  %604 = phi ptr [ %600, %598 ], [ %596, %601 ]
  %605 = getelementptr inbounds %struct.word_type, ptr %604, i64 0, i32 1
  store i8 0, ptr %605, align 8, !tbaa !5
  %606 = getelementptr inbounds [2 x %struct.LIST], ptr %604, i64 0, i64 1, i32 1
  store ptr %604, ptr %606, align 8, !tbaa !5
  %607 = getelementptr inbounds [2 x %struct.LIST], ptr %604, i64 0, i64 1
  store ptr %604, ptr %607, align 8, !tbaa !5
  %608 = getelementptr inbounds %struct.LIST, ptr %604, i64 0, i32 1
  store ptr %604, ptr %608, align 8, !tbaa !5
  store ptr %604, ptr %604, align 8, !tbaa !5
  store ptr %604, ptr @xx_link, align 8, !tbaa !8
  store ptr %604, ptr @zz_res, align 8, !tbaa !8
  %609 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %609, ptr @zz_hold, align 8, !tbaa !8
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %612

611:                                              ; preds = %603
  store ptr %604, ptr @zz_res, align 8, !tbaa !8
  store ptr %586, ptr @zz_hold, align 8, !tbaa !8
  br label %627

612:                                              ; preds = %603
  %613 = load ptr, ptr %609, align 8, !tbaa !5
  store ptr %613, ptr @zz_tmp, align 8, !tbaa !8
  %614 = load ptr, ptr %604, align 8, !tbaa !5
  store ptr %614, ptr %609, align 8, !tbaa !5
  %615 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %616 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %617 = load ptr, ptr %616, align 8, !tbaa !5
  %618 = getelementptr inbounds %struct.LIST, ptr %617, i64 0, i32 1
  store ptr %615, ptr %618, align 8, !tbaa !5
  %619 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %619, ptr %616, align 8, !tbaa !5
  %620 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %621 = getelementptr inbounds %struct.LIST, ptr %619, i64 0, i32 1
  store ptr %620, ptr %621, align 8, !tbaa !5
  %622 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %622, ptr @zz_res, align 8, !tbaa !8
  store ptr %586, ptr @zz_hold, align 8, !tbaa !8
  %623 = icmp eq ptr %622, null
  br i1 %623, label %642, label %624

624:                                              ; preds = %612
  %625 = getelementptr inbounds [2 x %struct.LIST], ptr %622, i64 0, i64 1
  %626 = load ptr, ptr %625, align 8, !tbaa !5
  br label %627

627:                                              ; preds = %624, %611
  %628 = phi ptr [ %604, %611 ], [ %626, %624 ]
  %629 = phi ptr [ %604, %611 ], [ %622, %624 ]
  %630 = load ptr, ptr %588, align 8, !tbaa !5
  store ptr %630, ptr @zz_tmp, align 8, !tbaa !8
  %631 = getelementptr inbounds [2 x %struct.LIST], ptr %629, i64 0, i64 1
  store ptr %628, ptr %588, align 8, !tbaa !5
  %632 = load ptr, ptr %631, align 8, !tbaa !5
  %633 = getelementptr inbounds [2 x %struct.LIST], ptr %632, i64 0, i64 1, i32 1
  store ptr %586, ptr %633, align 8, !tbaa !5
  store ptr %630, ptr %631, align 8, !tbaa !5
  %634 = getelementptr inbounds [2 x %struct.LIST], ptr %630, i64 0, i64 1, i32 1
  store ptr %629, ptr %634, align 8, !tbaa !5
  br label %642

635:                                              ; preds = %570
  %636 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %637 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %636, ptr noundef nonnull @.str.7) #8
  br label %642

638:                                              ; preds = %500
  %639 = getelementptr inbounds i8, ptr %0, i64 42
  %640 = load i16, ptr %639, align 2
  %641 = and i16 %640, -25
  store i16 %641, ptr %639, align 2
  br label %642

642:                                              ; preds = %612, %547, %562, %627, %635, %638
  %643 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %644 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %645 = sext i32 %1 to i64
  %646 = getelementptr inbounds [2 x i32], ptr %644, i64 0, i64 %645
  store i32 0, ptr %646, align 4, !tbaa !5
  %647 = getelementptr inbounds [2 x i32], ptr %643, i64 0, i64 %645
  store i32 0, ptr %647, align 4, !tbaa !5
  br label %4192

648:                                              ; preds = %3, %3, %3, %3, %3, %3
  %649 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !5
  br label %651

651:                                              ; preds = %651, %648
  %652 = phi ptr [ %650, %648 ], [ %654, %651 ]
  %653 = getelementptr inbounds [2 x %struct.LIST], ptr %652, i64 0, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !5
  %655 = getelementptr inbounds %struct.word_type, ptr %654, i64 0, i32 1
  %656 = load i8, ptr %655, align 8, !tbaa !5
  %657 = icmp eq i8 %656, 0
  br i1 %657, label %651, label %658

658:                                              ; preds = %651
  %659 = tail call ptr @MinSize(ptr noundef nonnull %654, i32 noundef %1, ptr noundef %2)
  %660 = getelementptr inbounds %struct.word_type, ptr %659, i64 0, i32 3
  %661 = sext i32 %1 to i64
  %662 = getelementptr inbounds [2 x i32], ptr %660, i64 0, i64 %661
  %663 = load i32, ptr %662, align 4, !tbaa !5
  %664 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %665 = getelementptr inbounds [2 x i32], ptr %664, i64 0, i64 %661
  store i32 %663, ptr %665, align 4, !tbaa !5
  %666 = getelementptr inbounds %struct.word_type, ptr %659, i64 0, i32 3, i32 1
  %667 = getelementptr inbounds [2 x i32], ptr %666, i64 0, i64 %661
  %668 = load i32, ptr %667, align 4, !tbaa !5
  %669 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %670 = getelementptr inbounds [2 x i32], ptr %669, i64 0, i64 %661
  store i32 %668, ptr %670, align 4, !tbaa !5
  br label %4192

671:                                              ; preds = %3
  %672 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !5
  br label %674

674:                                              ; preds = %674, %671
  %675 = phi ptr [ %673, %671 ], [ %677, %674 ]
  %676 = getelementptr inbounds [2 x %struct.LIST], ptr %675, i64 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !5
  %678 = getelementptr inbounds %struct.word_type, ptr %677, i64 0, i32 1
  %679 = load i8, ptr %678, align 8, !tbaa !5
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %674, label %681

681:                                              ; preds = %674
  %682 = tail call ptr @MinSize(ptr noundef nonnull %677, i32 noundef %1, ptr noundef %2)
  %683 = load ptr, ptr %0, align 8, !tbaa !5
  br label %684

684:                                              ; preds = %684, %681
  %685 = phi ptr [ %683, %681 ], [ %687, %684 ]
  %686 = getelementptr inbounds [2 x %struct.LIST], ptr %685, i64 0, i64 1
  %687 = load ptr, ptr %686, align 8, !tbaa !5
  %688 = getelementptr inbounds %struct.word_type, ptr %687, i64 0, i32 1
  %689 = load i8, ptr %688, align 8, !tbaa !5
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %684, label %691

691:                                              ; preds = %684
  %692 = tail call ptr @MinSize(ptr noundef nonnull %687, i32 noundef %1, ptr noundef %2)
  %693 = getelementptr inbounds %struct.word_type, ptr %692, i64 0, i32 3
  %694 = sext i32 %1 to i64
  %695 = getelementptr inbounds [2 x i32], ptr %693, i64 0, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !5
  %697 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %698 = getelementptr inbounds [2 x i32], ptr %697, i64 0, i64 %694
  store i32 %696, ptr %698, align 4, !tbaa !5
  %699 = getelementptr inbounds %struct.word_type, ptr %692, i64 0, i32 3, i32 1
  %700 = getelementptr inbounds [2 x i32], ptr %699, i64 0, i64 %694
  %701 = load i32, ptr %700, align 4, !tbaa !5
  %702 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %703 = getelementptr inbounds [2 x i32], ptr %702, i64 0, i64 %694
  store i32 %701, ptr %703, align 4, !tbaa !5
  br label %4192

704:                                              ; preds = %3, %3, %3
  %705 = icmp eq i8 %15, 43
  %706 = icmp eq i32 %1, 0
  %707 = and i1 %706, %705
  br i1 %707, label %710, label %1389

708:                                              ; preds = %3, %3
  %709 = icmp eq i32 %1, 0
  br i1 %709, label %710, label %1389

710:                                              ; preds = %708, %704
  %711 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %712 = load ptr, ptr %711, align 8, !tbaa !5
  br label %713

713:                                              ; preds = %713, %710
  %714 = phi ptr [ %712, %710 ], [ %716, %713 ]
  %715 = getelementptr inbounds [2 x %struct.LIST], ptr %714, i64 0, i64 1
  %716 = load ptr, ptr %715, align 8, !tbaa !5
  %717 = getelementptr inbounds %struct.word_type, ptr %716, i64 0, i32 1
  %718 = load i8, ptr %717, align 8, !tbaa !5
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %713, label %720

720:                                              ; preds = %713
  %721 = getelementptr inbounds [2 x %struct.LIST], ptr %716, i64 0, i64 1
  %722 = getelementptr inbounds [2 x %struct.LIST], ptr %716, i64 0, i64 1, i32 1
  %723 = load ptr, ptr %722, align 8, !tbaa !5
  %724 = load ptr, ptr %721, align 8, !tbaa !5
  %725 = icmp eq ptr %723, %724
  br i1 %725, label %730, label %726

726:                                              ; preds = %720
  %727 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %728 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %727, ptr noundef nonnull @.str.49) #8
  %729 = load ptr, ptr %722, align 8, !tbaa !5
  br label %730

730:                                              ; preds = %726, %720
  %731 = phi ptr [ %729, %726 ], [ %723, %720 ]
  store ptr %731, ptr @xx_link, align 8, !tbaa !8
  %732 = getelementptr inbounds [2 x %struct.LIST], ptr %731, i64 0, i64 1, i32 1
  %733 = load ptr, ptr %732, align 8, !tbaa !5
  %734 = icmp eq ptr %733, %731
  br i1 %734, label %740, label %735

735:                                              ; preds = %730
  store ptr %733, ptr @zz_res, align 8, !tbaa !8
  %736 = getelementptr inbounds [2 x %struct.LIST], ptr %731, i64 0, i64 1
  %737 = load ptr, ptr %736, align 8, !tbaa !5
  %738 = getelementptr inbounds [2 x %struct.LIST], ptr %733, i64 0, i64 1
  store ptr %737, ptr %738, align 8, !tbaa !5
  %739 = getelementptr inbounds [2 x %struct.LIST], ptr %737, i64 0, i64 1, i32 1
  store ptr %733, ptr %739, align 8, !tbaa !5
  store ptr %731, ptr %732, align 8, !tbaa !5
  store ptr %731, ptr %736, align 8, !tbaa !5
  br label %740

740:                                              ; preds = %735, %730
  store ptr %731, ptr @zz_hold, align 8, !tbaa !8
  %741 = getelementptr inbounds %struct.LIST, ptr %731, i64 0, i32 1
  %742 = load ptr, ptr %741, align 8, !tbaa !5
  %743 = icmp eq ptr %742, %731
  br i1 %743, label %752, label %744

744:                                              ; preds = %740
  store ptr %742, ptr @zz_res, align 8, !tbaa !8
  %745 = load ptr, ptr %731, align 8, !tbaa !5
  store ptr %745, ptr %742, align 8, !tbaa !5
  %746 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %747 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %748 = load ptr, ptr %747, align 8, !tbaa !5
  %749 = getelementptr inbounds %struct.LIST, ptr %748, i64 0, i32 1
  store ptr %746, ptr %749, align 8, !tbaa !5
  %750 = getelementptr inbounds %struct.LIST, ptr %747, i64 0, i32 1
  store ptr %747, ptr %750, align 8, !tbaa !5
  store ptr %747, ptr %747, align 8, !tbaa !5
  %751 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %752

752:                                              ; preds = %744, %740
  %753 = phi ptr [ %731, %740 ], [ %751, %744 ]
  store ptr %753, ptr @zz_hold, align 8, !tbaa !8
  %754 = getelementptr inbounds %struct.word_type, ptr %753, i64 0, i32 1
  %755 = load i8, ptr %754, align 8, !tbaa !5
  %756 = add i8 %755, -11
  %757 = icmp ult i8 %756, 2
  %758 = getelementptr inbounds %struct.word_type, ptr %753, i64 0, i32 1, i32 0, i32 1
  %759 = zext i8 %755 to i64
  %760 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %759
  %761 = select i1 %757, ptr %758, ptr %760
  %762 = load i8, ptr %761, align 1, !tbaa !5
  %763 = zext i8 %762 to i32
  store i32 %763, ptr @zz_size, align 4, !tbaa !10
  %764 = zext i8 %762 to i64
  %765 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %764
  %766 = load ptr, ptr %765, align 8, !tbaa !8
  store ptr %766, ptr %753, align 8, !tbaa !5
  %767 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %768 = load i32, ptr @zz_size, align 4, !tbaa !10
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %769
  store ptr %767, ptr %770, align 8, !tbaa !8
  %771 = load i8, ptr %14, align 8, !tbaa !5
  switch i8 %771, label %1036 [
    i8 44, label %772
    i8 42, label %772
  ]

772:                                              ; preds = %752, %752
  %773 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %774 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !5
  br label %776

776:                                              ; preds = %776, %772
  %777 = phi ptr [ %775, %772 ], [ %778, %776 ]
  %778 = load ptr, ptr %777, align 8, !tbaa !5
  %779 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 1
  %780 = load i8, ptr %779, align 8, !tbaa !5
  switch i8 %780, label %781 [
    i8 0, label %776
    i8 16, label %785
  ]

781:                                              ; preds = %776
  %782 = zext i8 %771 to i32
  %783 = tail call ptr @Image(i32 noundef %782) #8
  %784 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 10, ptr noundef nonnull @.str.50, i32 noundef 2, ptr noundef nonnull %14, ptr noundef %783) #8
  br label %1368

785:                                              ; preds = %776
  %786 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 13), align 1, !tbaa !5
  %787 = zext i8 %786 to i32
  store i32 %787, ptr @zz_size, align 4, !tbaa !10
  %788 = zext i8 %786 to i64
  %789 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %788
  %790 = load ptr, ptr %789, align 8, !tbaa !8
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %795

792:                                              ; preds = %785
  %793 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %794 = tail call ptr @GetMemory(i32 noundef %787, ptr noundef %793) #8
  store ptr %794, ptr @zz_hold, align 8, !tbaa !8
  br label %797

795:                                              ; preds = %785
  store ptr %790, ptr @zz_hold, align 8, !tbaa !8
  %796 = load ptr, ptr %790, align 8, !tbaa !5
  store ptr %796, ptr %789, align 8, !tbaa !8
  br label %797

797:                                              ; preds = %795, %792
  %798 = phi ptr [ %794, %792 ], [ %790, %795 ]
  %799 = getelementptr inbounds %struct.word_type, ptr %798, i64 0, i32 1
  store i8 13, ptr %799, align 8, !tbaa !5
  %800 = getelementptr inbounds [2 x %struct.LIST], ptr %798, i64 0, i64 1
  %801 = getelementptr inbounds [2 x %struct.LIST], ptr %798, i64 0, i64 1, i32 1
  store ptr %798, ptr %801, align 8, !tbaa !5
  store ptr %798, ptr %800, align 8, !tbaa !5
  %802 = getelementptr inbounds %struct.LIST, ptr %798, i64 0, i32 1
  store ptr %798, ptr %802, align 8, !tbaa !5
  store ptr %798, ptr %798, align 8, !tbaa !5
  %803 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %804 = load i16, ptr %803, align 2, !tbaa !5
  %805 = getelementptr inbounds %struct.word_type, ptr %798, i64 0, i32 1, i32 0, i32 2
  store i16 %804, ptr %805, align 2, !tbaa !5
  %806 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %807 = load i32, ptr %806, align 4
  %808 = and i32 %807, 1048575
  %809 = getelementptr inbounds %struct.word_type, ptr %798, i64 0, i32 1, i32 0, i32 3
  %810 = load i32, ptr %809, align 4
  %811 = and i32 %810, -1048576
  %812 = or disjoint i32 %811, %808
  store i32 %812, ptr %809, align 4
  %813 = load i32, ptr %806, align 4
  %814 = and i32 %813, -1048576
  %815 = or disjoint i32 %814, %808
  store i32 %815, ptr %809, align 4
  %816 = getelementptr inbounds %struct.word_type, ptr %798, i64 0, i32 2
  %817 = load i32, ptr %816, align 8
  %818 = and i32 %817, -4194305
  store i32 %818, ptr %816, align 8
  %819 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %820 = zext i8 %819 to i32
  store i32 %820, ptr @zz_size, align 4, !tbaa !10
  %821 = zext i8 %819 to i64
  %822 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !8
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %828

825:                                              ; preds = %797
  %826 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %827 = tail call ptr @GetMemory(i32 noundef %820, ptr noundef %826) #8
  br label %830

828:                                              ; preds = %797
  store ptr %823, ptr @zz_hold, align 8, !tbaa !8
  %829 = load ptr, ptr %823, align 8, !tbaa !5
  store ptr %829, ptr %822, align 8, !tbaa !8
  br label %830

830:                                              ; preds = %828, %825
  %831 = phi ptr [ %827, %825 ], [ %823, %828 ]
  %832 = getelementptr inbounds %struct.word_type, ptr %831, i64 0, i32 1
  store i8 0, ptr %832, align 8, !tbaa !5
  %833 = getelementptr inbounds [2 x %struct.LIST], ptr %831, i64 0, i64 1, i32 1
  store ptr %831, ptr %833, align 8, !tbaa !5
  %834 = getelementptr inbounds [2 x %struct.LIST], ptr %831, i64 0, i64 1
  store ptr %831, ptr %834, align 8, !tbaa !5
  %835 = getelementptr inbounds %struct.LIST, ptr %831, i64 0, i32 1
  store ptr %831, ptr %835, align 8, !tbaa !5
  store ptr %831, ptr %831, align 8, !tbaa !5
  store ptr %831, ptr @xx_link, align 8, !tbaa !8
  store ptr %831, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %836 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %836, ptr @zz_tmp, align 8, !tbaa !8
  %837 = load ptr, ptr %831, align 8, !tbaa !5
  store ptr %837, ptr %0, align 8, !tbaa !5
  %838 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %839 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %840 = load ptr, ptr %839, align 8, !tbaa !5
  %841 = getelementptr inbounds %struct.LIST, ptr %840, i64 0, i32 1
  store ptr %838, ptr %841, align 8, !tbaa !5
  %842 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %842, ptr %839, align 8, !tbaa !5
  %843 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %844 = getelementptr inbounds %struct.LIST, ptr %842, i64 0, i32 1
  store ptr %843, ptr %844, align 8, !tbaa !5
  %845 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %845, ptr @zz_res, align 8, !tbaa !8
  store ptr %798, ptr @zz_hold, align 8, !tbaa !8
  %846 = icmp eq ptr %845, null
  br i1 %846, label %853, label %847

847:                                              ; preds = %830
  %848 = load ptr, ptr %800, align 8, !tbaa !5
  store ptr %848, ptr @zz_tmp, align 8, !tbaa !8
  %849 = getelementptr inbounds [2 x %struct.LIST], ptr %845, i64 0, i64 1
  %850 = load ptr, ptr %849, align 8, !tbaa !5
  store ptr %850, ptr %800, align 8, !tbaa !5
  %851 = getelementptr inbounds [2 x %struct.LIST], ptr %850, i64 0, i64 1, i32 1
  store ptr %798, ptr %851, align 8, !tbaa !5
  store ptr %848, ptr %849, align 8, !tbaa !5
  %852 = getelementptr inbounds [2 x %struct.LIST], ptr %848, i64 0, i64 1, i32 1
  store ptr %845, ptr %852, align 8, !tbaa !5
  br label %853

853:                                              ; preds = %847, %830
  %854 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %855 = zext i8 %854 to i32
  store i32 %855, ptr @zz_size, align 4, !tbaa !10
  %856 = zext i8 %854 to i64
  %857 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %856
  %858 = load ptr, ptr %857, align 8, !tbaa !8
  %859 = icmp eq ptr %858, null
  br i1 %859, label %860, label %863

860:                                              ; preds = %853
  %861 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %862 = tail call ptr @GetMemory(i32 noundef %855, ptr noundef %861) #8
  br label %865

863:                                              ; preds = %853
  store ptr %858, ptr @zz_hold, align 8, !tbaa !8
  %864 = load ptr, ptr %858, align 8, !tbaa !5
  store ptr %864, ptr %857, align 8, !tbaa !8
  br label %865

865:                                              ; preds = %863, %860
  %866 = phi ptr [ %862, %860 ], [ %858, %863 ]
  %867 = getelementptr inbounds %struct.word_type, ptr %866, i64 0, i32 1
  store i8 0, ptr %867, align 8, !tbaa !5
  %868 = getelementptr inbounds [2 x %struct.LIST], ptr %866, i64 0, i64 1, i32 1
  store ptr %866, ptr %868, align 8, !tbaa !5
  %869 = getelementptr inbounds [2 x %struct.LIST], ptr %866, i64 0, i64 1
  store ptr %866, ptr %869, align 8, !tbaa !5
  %870 = getelementptr inbounds %struct.LIST, ptr %866, i64 0, i32 1
  store ptr %866, ptr %870, align 8, !tbaa !5
  store ptr %866, ptr %866, align 8, !tbaa !5
  store ptr %866, ptr @xx_link, align 8, !tbaa !8
  store ptr %866, ptr @zz_res, align 8, !tbaa !8
  store ptr %798, ptr @zz_hold, align 8, !tbaa !8
  %871 = load ptr, ptr %798, align 8, !tbaa !5
  store ptr %871, ptr @zz_tmp, align 8, !tbaa !8
  %872 = load ptr, ptr %866, align 8, !tbaa !5
  store ptr %872, ptr %798, align 8, !tbaa !5
  %873 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %874 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %875 = load ptr, ptr %874, align 8, !tbaa !5
  %876 = getelementptr inbounds %struct.LIST, ptr %875, i64 0, i32 1
  store ptr %873, ptr %876, align 8, !tbaa !5
  %877 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %877, ptr %874, align 8, !tbaa !5
  %878 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %879 = getelementptr inbounds %struct.LIST, ptr %877, i64 0, i32 1
  store ptr %878, ptr %879, align 8, !tbaa !5
  %880 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %880, ptr @zz_res, align 8, !tbaa !8
  store ptr %716, ptr @zz_hold, align 8, !tbaa !8
  %881 = icmp eq ptr %716, null
  %882 = icmp eq ptr %880, null
  %883 = select i1 %881, i1 true, i1 %882
  br i1 %883, label %890, label %884

884:                                              ; preds = %865
  %885 = load ptr, ptr %721, align 8, !tbaa !5
  store ptr %885, ptr @zz_tmp, align 8, !tbaa !8
  %886 = getelementptr inbounds [2 x %struct.LIST], ptr %880, i64 0, i64 1
  %887 = load ptr, ptr %886, align 8, !tbaa !5
  store ptr %887, ptr %721, align 8, !tbaa !5
  %888 = getelementptr inbounds [2 x %struct.LIST], ptr %887, i64 0, i64 1, i32 1
  store ptr %716, ptr %888, align 8, !tbaa !5
  store ptr %885, ptr %886, align 8, !tbaa !5
  %889 = getelementptr inbounds [2 x %struct.LIST], ptr %885, i64 0, i64 1, i32 1
  store ptr %880, ptr %889, align 8, !tbaa !5
  br label %890

890:                                              ; preds = %884, %865
  %891 = load ptr, ptr %773, align 8, !tbaa !5
  br label %892

892:                                              ; preds = %892, %890
  %893 = phi ptr [ %891, %890 ], [ %894, %892 ]
  %894 = load ptr, ptr %893, align 8, !tbaa !5
  %895 = getelementptr inbounds %struct.word_type, ptr %894, i64 0, i32 1
  %896 = load i8, ptr %895, align 8, !tbaa !5
  switch i8 %896, label %897 [
    i8 0, label %892
    i8 15, label %908
  ]

897:                                              ; preds = %892
  %898 = getelementptr inbounds %struct.word_type, ptr %894, i64 0, i32 1
  %899 = load i8, ptr %14, align 8, !tbaa !5
  %900 = zext i8 %899 to i32
  %901 = tail call ptr @Image(i32 noundef %900) #8
  %902 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 11, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %14, ptr noundef %901) #8
  %903 = load i8, ptr %898, align 8, !tbaa !5
  %904 = icmp eq i8 %903, 15
  br i1 %904, label %908, label %905

905:                                              ; preds = %897
  %906 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %907 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %906, ptr noundef nonnull @.str.52) #8
  br label %908

908:                                              ; preds = %892, %905, %897
  %909 = load i32, ptr %816, align 8
  %910 = and i32 %909, -532676608
  %911 = or disjoint i32 %910, 1
  store i32 %911, ptr %816, align 8
  %912 = load ptr, ptr %773, align 8, !tbaa !5
  %913 = getelementptr inbounds %struct.LIST, ptr %912, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !5
  %915 = icmp eq ptr %914, %894
  br i1 %915, label %935, label %916

916:                                              ; preds = %908, %931
  %917 = phi ptr [ %932, %931 ], [ %914, %908 ]
  %918 = phi ptr [ %933, %931 ], [ %914, %908 ]
  br label %919

919:                                              ; preds = %919, %916
  %920 = phi ptr [ %922, %919 ], [ %917, %916 ]
  %921 = getelementptr inbounds [2 x %struct.LIST], ptr %920, i64 0, i64 1
  %922 = load ptr, ptr %921, align 8, !tbaa !5
  %923 = getelementptr inbounds %struct.word_type, ptr %922, i64 0, i32 1
  %924 = load i8, ptr %923, align 8, !tbaa !5
  switch i8 %924, label %928 [
    i8 0, label %919
    i8 45, label %925
    i8 44, label %935
    i8 42, label %935
    i8 43, label %935
    i8 46, label %935
  ]

925:                                              ; preds = %919
  %926 = getelementptr inbounds %struct.LIST, ptr %917, i64 0, i32 1
  %927 = load ptr, ptr %926, align 8, !tbaa !5
  br label %931

928:                                              ; preds = %919
  %929 = getelementptr inbounds %struct.LIST, ptr %917, i64 0, i32 1
  %930 = load ptr, ptr %929, align 8, !tbaa !5
  br label %931

931:                                              ; preds = %928, %925
  %932 = phi ptr [ %927, %925 ], [ %930, %928 ]
  %933 = phi ptr [ %927, %925 ], [ %918, %928 ]
  %934 = icmp eq ptr %932, %894
  br i1 %934, label %935, label %916

935:                                              ; preds = %931, %919, %919, %919, %919, %908
  %936 = phi ptr [ %894, %908 ], [ %918, %919 ], [ %918, %919 ], [ %918, %919 ], [ %918, %919 ], [ %933, %931 ]
  %937 = icmp eq ptr %914, %936
  br i1 %937, label %1071, label %938

938:                                              ; preds = %935, %1027
  %939 = phi ptr [ %1034, %1027 ], [ %914, %935 ]
  br label %940

940:                                              ; preds = %940, %938
  %941 = phi ptr [ %943, %940 ], [ %939, %938 ]
  %942 = getelementptr inbounds [2 x %struct.LIST], ptr %941, i64 0, i64 1
  %943 = load ptr, ptr %942, align 8, !tbaa !5
  %944 = getelementptr inbounds %struct.word_type, ptr %943, i64 0, i32 1
  %945 = load i8, ptr %944, align 8, !tbaa !5
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %940, label %947

947:                                              ; preds = %940
  %948 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 45), align 1, !tbaa !5
  %949 = zext i8 %948 to i32
  store i32 %949, ptr @zz_size, align 4, !tbaa !10
  %950 = zext i8 %948 to i64
  %951 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %950
  %952 = load ptr, ptr %951, align 8, !tbaa !8
  %953 = icmp eq ptr %952, null
  br i1 %953, label %954, label %957

954:                                              ; preds = %947
  %955 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %956 = tail call ptr @GetMemory(i32 noundef %949, ptr noundef %955) #8
  br label %959

957:                                              ; preds = %947
  store ptr %952, ptr @zz_hold, align 8, !tbaa !8
  %958 = load ptr, ptr %952, align 8, !tbaa !5
  store ptr %958, ptr %951, align 8, !tbaa !8
  br label %959

959:                                              ; preds = %957, %954
  %960 = phi ptr [ %956, %954 ], [ %952, %957 ]
  %961 = getelementptr inbounds %struct.word_type, ptr %960, i64 0, i32 1
  store i8 45, ptr %961, align 8, !tbaa !5
  %962 = getelementptr inbounds [2 x %struct.LIST], ptr %960, i64 0, i64 1, i32 1
  store ptr %960, ptr %962, align 8, !tbaa !5
  %963 = getelementptr inbounds [2 x %struct.LIST], ptr %960, i64 0, i64 1
  store ptr %960, ptr %963, align 8, !tbaa !5
  %964 = getelementptr inbounds %struct.LIST, ptr %960, i64 0, i32 1
  store ptr %960, ptr %964, align 8, !tbaa !5
  store ptr %960, ptr %960, align 8, !tbaa !5
  %965 = getelementptr inbounds %struct.word_type, ptr %943, i64 0, i32 1, i32 0, i32 2
  %966 = load i16, ptr %965, align 2, !tbaa !5
  %967 = getelementptr inbounds %struct.word_type, ptr %960, i64 0, i32 1, i32 0, i32 2
  store i16 %966, ptr %967, align 2, !tbaa !5
  %968 = getelementptr inbounds %struct.word_type, ptr %943, i64 0, i32 1, i32 0, i32 3
  %969 = load i32, ptr %968, align 4
  %970 = and i32 %969, 1048575
  %971 = getelementptr inbounds %struct.word_type, ptr %960, i64 0, i32 1, i32 0, i32 3
  %972 = load i32, ptr %971, align 4
  %973 = and i32 %972, -1048576
  %974 = or disjoint i32 %973, %970
  store i32 %974, ptr %971, align 4
  %975 = load i32, ptr %968, align 4
  %976 = and i32 %975, -1048576
  %977 = or disjoint i32 %976, %970
  store i32 %977, ptr %971, align 4
  %978 = getelementptr inbounds [2 x %struct.LIST], ptr %943, i64 0, i64 1, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !5
  %980 = icmp eq ptr %979, %943
  br i1 %980, label %990, label %981

981:                                              ; preds = %959
  %982 = getelementptr inbounds [2 x %struct.LIST], ptr %943, i64 0, i64 1
  %983 = load ptr, ptr %982, align 8, !tbaa !5
  %984 = getelementptr inbounds [2 x %struct.LIST], ptr %979, i64 0, i64 1
  store ptr %983, ptr %984, align 8, !tbaa !5
  %985 = getelementptr inbounds [2 x %struct.LIST], ptr %983, i64 0, i64 1, i32 1
  store ptr %979, ptr %985, align 8, !tbaa !5
  store ptr %943, ptr %978, align 8, !tbaa !5
  store ptr %943, ptr %982, align 8, !tbaa !5
  %986 = load ptr, ptr %984, align 8, !tbaa !5
  store ptr %986, ptr @zz_tmp, align 8, !tbaa !8
  %987 = load ptr, ptr %963, align 8, !tbaa !5
  store ptr %987, ptr %984, align 8, !tbaa !5
  %988 = getelementptr inbounds [2 x %struct.LIST], ptr %987, i64 0, i64 1, i32 1
  store ptr %979, ptr %988, align 8, !tbaa !5
  store ptr %986, ptr %963, align 8, !tbaa !5
  %989 = getelementptr inbounds [2 x %struct.LIST], ptr %986, i64 0, i64 1, i32 1
  store ptr %960, ptr %989, align 8, !tbaa !5
  br label %990

990:                                              ; preds = %959, %981
  %991 = phi ptr [ %979, %981 ], [ null, %959 ]
  store ptr %991, ptr @xx_tmp, align 8
  store ptr %960, ptr @zz_res, align 8
  store ptr %991, ptr @zz_hold, align 8
  %992 = tail call i32 @DisposeObject(ptr noundef nonnull %943) #8
  %993 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %994 = zext i8 %993 to i32
  store i32 %994, ptr @zz_size, align 4, !tbaa !10
  %995 = zext i8 %993 to i64
  %996 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !8
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %1002

999:                                              ; preds = %990
  %1000 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1001 = tail call ptr @GetMemory(i32 noundef %994, ptr noundef %1000) #8
  br label %1004

1002:                                             ; preds = %990
  store ptr %997, ptr @zz_hold, align 8, !tbaa !8
  %1003 = load ptr, ptr %997, align 8, !tbaa !5
  store ptr %1003, ptr %996, align 8, !tbaa !8
  br label %1004

1004:                                             ; preds = %1002, %999
  %1005 = phi ptr [ %1001, %999 ], [ %997, %1002 ]
  %1006 = getelementptr inbounds %struct.word_type, ptr %1005, i64 0, i32 1
  store i8 0, ptr %1006, align 8, !tbaa !5
  %1007 = getelementptr inbounds [2 x %struct.LIST], ptr %1005, i64 0, i64 1, i32 1
  store ptr %1005, ptr %1007, align 8, !tbaa !5
  %1008 = getelementptr inbounds [2 x %struct.LIST], ptr %1005, i64 0, i64 1
  store ptr %1005, ptr %1008, align 8, !tbaa !5
  %1009 = getelementptr inbounds %struct.LIST, ptr %1005, i64 0, i32 1
  store ptr %1005, ptr %1009, align 8, !tbaa !5
  store ptr %1005, ptr %1005, align 8, !tbaa !5
  store ptr %1005, ptr @xx_link, align 8, !tbaa !8
  store ptr %1005, ptr @zz_res, align 8, !tbaa !8
  store ptr %960, ptr @zz_hold, align 8, !tbaa !8
  %1010 = load ptr, ptr %960, align 8, !tbaa !5
  store ptr %1010, ptr @zz_tmp, align 8, !tbaa !8
  %1011 = load ptr, ptr %1005, align 8, !tbaa !5
  store ptr %1011, ptr %960, align 8, !tbaa !5
  %1012 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1013 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1014 = load ptr, ptr %1013, align 8, !tbaa !5
  %1015 = getelementptr inbounds %struct.LIST, ptr %1014, i64 0, i32 1
  store ptr %1012, ptr %1015, align 8, !tbaa !5
  %1016 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1016, ptr %1013, align 8, !tbaa !5
  %1017 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1018 = getelementptr inbounds %struct.LIST, ptr %1016, i64 0, i32 1
  store ptr %1017, ptr %1018, align 8, !tbaa !5
  %1019 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1019, ptr @zz_res, align 8, !tbaa !8
  store ptr %798, ptr @zz_hold, align 8, !tbaa !8
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1027, label %1021

1021:                                             ; preds = %1004
  %1022 = load ptr, ptr %800, align 8, !tbaa !5
  store ptr %1022, ptr @zz_tmp, align 8, !tbaa !8
  %1023 = getelementptr inbounds [2 x %struct.LIST], ptr %1019, i64 0, i64 1
  %1024 = load ptr, ptr %1023, align 8, !tbaa !5
  store ptr %1024, ptr %800, align 8, !tbaa !5
  %1025 = getelementptr inbounds [2 x %struct.LIST], ptr %1024, i64 0, i64 1, i32 1
  store ptr %798, ptr %1025, align 8, !tbaa !5
  store ptr %1022, ptr %1023, align 8, !tbaa !5
  %1026 = getelementptr inbounds [2 x %struct.LIST], ptr %1022, i64 0, i64 1, i32 1
  store ptr %1019, ptr %1026, align 8, !tbaa !5
  br label %1027

1027:                                             ; preds = %1021, %1004
  %1028 = load i32, ptr %816, align 8
  %1029 = add i32 %1028, 1
  %1030 = and i32 %1029, 4095
  %1031 = and i32 %1028, -4096
  %1032 = or disjoint i32 %1030, %1031
  store i32 %1032, ptr %816, align 8
  %1033 = getelementptr inbounds %struct.LIST, ptr %939, i64 0, i32 1
  %1034 = load ptr, ptr %1033, align 8, !tbaa !5
  %1035 = icmp eq ptr %1034, %936
  br i1 %1035, label %1071, label %938

1036:                                             ; preds = %752
  %1037 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1038 = zext i8 %1037 to i32
  store i32 %1038, ptr @zz_size, align 4, !tbaa !10
  %1039 = zext i8 %1037 to i64
  %1040 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1039
  %1041 = load ptr, ptr %1040, align 8, !tbaa !8
  %1042 = icmp eq ptr %1041, null
  br i1 %1042, label %1043, label %1046

1043:                                             ; preds = %1036
  %1044 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1045 = tail call ptr @GetMemory(i32 noundef %1038, ptr noundef %1044) #8
  br label %1048

1046:                                             ; preds = %1036
  store ptr %1041, ptr @zz_hold, align 8, !tbaa !8
  %1047 = load ptr, ptr %1041, align 8, !tbaa !5
  store ptr %1047, ptr %1040, align 8, !tbaa !8
  br label %1048

1048:                                             ; preds = %1046, %1043
  %1049 = phi ptr [ %1045, %1043 ], [ %1041, %1046 ]
  %1050 = getelementptr inbounds %struct.word_type, ptr %1049, i64 0, i32 1
  store i8 0, ptr %1050, align 8, !tbaa !5
  %1051 = getelementptr inbounds [2 x %struct.LIST], ptr %1049, i64 0, i64 1, i32 1
  store ptr %1049, ptr %1051, align 8, !tbaa !5
  %1052 = getelementptr inbounds [2 x %struct.LIST], ptr %1049, i64 0, i64 1
  store ptr %1049, ptr %1052, align 8, !tbaa !5
  %1053 = getelementptr inbounds %struct.LIST, ptr %1049, i64 0, i32 1
  store ptr %1049, ptr %1053, align 8, !tbaa !5
  store ptr %1049, ptr %1049, align 8, !tbaa !5
  store ptr %1049, ptr @xx_link, align 8, !tbaa !8
  store ptr %1049, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %1054 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1054, ptr @zz_tmp, align 8, !tbaa !8
  %1055 = load ptr, ptr %1049, align 8, !tbaa !5
  store ptr %1055, ptr %0, align 8, !tbaa !5
  %1056 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1057 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1058 = load ptr, ptr %1057, align 8, !tbaa !5
  %1059 = getelementptr inbounds %struct.LIST, ptr %1058, i64 0, i32 1
  store ptr %1056, ptr %1059, align 8, !tbaa !5
  %1060 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1060, ptr %1057, align 8, !tbaa !5
  %1061 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1062 = getelementptr inbounds %struct.LIST, ptr %1060, i64 0, i32 1
  store ptr %1061, ptr %1062, align 8, !tbaa !5
  %1063 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1063, ptr @zz_res, align 8, !tbaa !8
  store ptr %716, ptr @zz_hold, align 8, !tbaa !8
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1071, label %1065

1065:                                             ; preds = %1048
  %1066 = load ptr, ptr %721, align 8, !tbaa !5
  store ptr %1066, ptr @zz_tmp, align 8, !tbaa !8
  %1067 = getelementptr inbounds [2 x %struct.LIST], ptr %1063, i64 0, i64 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !5
  store ptr %1068, ptr %721, align 8, !tbaa !5
  %1069 = getelementptr inbounds [2 x %struct.LIST], ptr %1068, i64 0, i64 1, i32 1
  store ptr %716, ptr %1069, align 8, !tbaa !5
  store ptr %1066, ptr %1067, align 8, !tbaa !5
  %1070 = getelementptr inbounds [2 x %struct.LIST], ptr %1066, i64 0, i64 1, i32 1
  store ptr %1063, ptr %1070, align 8, !tbaa !5
  br label %1071

1071:                                             ; preds = %1027, %1065, %1048, %935
  %1072 = load i8, ptr %14, align 8, !tbaa !5
  %1073 = add i8 %1072, -43
  %1074 = icmp ult i8 %1073, 2
  br i1 %1074, label %1075, label %1331

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !5
  br label %1078

1078:                                             ; preds = %1078, %1075
  %1079 = phi ptr [ %1077, %1075 ], [ %1080, %1078 ]
  %1080 = load ptr, ptr %1079, align 8, !tbaa !5
  %1081 = getelementptr inbounds %struct.word_type, ptr %1080, i64 0, i32 1
  %1082 = load i8, ptr %1081, align 8, !tbaa !5
  switch i8 %1082, label %1083 [
    i8 0, label %1078
    i8 15, label %1087
  ]

1083:                                             ; preds = %1078
  %1084 = zext nneg i8 %1072 to i32
  %1085 = tail call ptr @Image(i32 noundef %1084) #8
  %1086 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 12, ptr noundef nonnull @.str.53, i32 noundef 2, ptr noundef nonnull %14, ptr noundef %1085) #8
  br label %1368

1087:                                             ; preds = %1078
  %1088 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 14), align 1, !tbaa !5
  %1089 = zext i8 %1088 to i32
  store i32 %1089, ptr @zz_size, align 4, !tbaa !10
  %1090 = zext i8 %1088 to i64
  %1091 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1090
  %1092 = load ptr, ptr %1091, align 8, !tbaa !8
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1094, label %1097

1094:                                             ; preds = %1087
  %1095 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1096 = tail call ptr @GetMemory(i32 noundef %1089, ptr noundef %1095) #8
  store ptr %1096, ptr @zz_hold, align 8, !tbaa !8
  br label %1099

1097:                                             ; preds = %1087
  store ptr %1092, ptr @zz_hold, align 8, !tbaa !8
  %1098 = load ptr, ptr %1092, align 8, !tbaa !5
  store ptr %1098, ptr %1091, align 8, !tbaa !8
  br label %1099

1099:                                             ; preds = %1097, %1094
  %1100 = phi ptr [ %1096, %1094 ], [ %1092, %1097 ]
  %1101 = getelementptr inbounds %struct.word_type, ptr %1100, i64 0, i32 1
  store i8 14, ptr %1101, align 8, !tbaa !5
  %1102 = getelementptr inbounds [2 x %struct.LIST], ptr %1100, i64 0, i64 1
  %1103 = getelementptr inbounds [2 x %struct.LIST], ptr %1100, i64 0, i64 1, i32 1
  store ptr %1100, ptr %1103, align 8, !tbaa !5
  store ptr %1100, ptr %1102, align 8, !tbaa !5
  %1104 = getelementptr inbounds %struct.LIST, ptr %1100, i64 0, i32 1
  store ptr %1100, ptr %1104, align 8, !tbaa !5
  store ptr %1100, ptr %1100, align 8, !tbaa !5
  %1105 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %1106 = load i16, ptr %1105, align 2, !tbaa !5
  %1107 = getelementptr inbounds %struct.word_type, ptr %1100, i64 0, i32 1, i32 0, i32 2
  store i16 %1106, ptr %1107, align 2, !tbaa !5
  %1108 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %1109 = load i32, ptr %1108, align 4
  %1110 = and i32 %1109, 1048575
  %1111 = getelementptr inbounds %struct.word_type, ptr %1100, i64 0, i32 1, i32 0, i32 3
  %1112 = load i32, ptr %1111, align 4
  %1113 = and i32 %1112, -1048576
  %1114 = or disjoint i32 %1113, %1110
  store i32 %1114, ptr %1111, align 4
  %1115 = load i32, ptr %1108, align 4
  %1116 = and i32 %1115, -1048576
  %1117 = or disjoint i32 %1116, %1110
  store i32 %1117, ptr %1111, align 4
  %1118 = getelementptr inbounds %struct.word_type, ptr %1100, i64 0, i32 2
  %1119 = load i32, ptr %1118, align 8
  %1120 = and i32 %1119, -4194305
  store i32 %1120, ptr %1118, align 8
  %1121 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1122 = zext i8 %1121 to i32
  store i32 %1122, ptr @zz_size, align 4, !tbaa !10
  %1123 = zext i8 %1121 to i64
  %1124 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1123
  %1125 = load ptr, ptr %1124, align 8, !tbaa !8
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1127, label %1130

1127:                                             ; preds = %1099
  %1128 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1129 = tail call ptr @GetMemory(i32 noundef %1122, ptr noundef %1128) #8
  br label %1132

1130:                                             ; preds = %1099
  store ptr %1125, ptr @zz_hold, align 8, !tbaa !8
  %1131 = load ptr, ptr %1125, align 8, !tbaa !5
  store ptr %1131, ptr %1124, align 8, !tbaa !8
  br label %1132

1132:                                             ; preds = %1130, %1127
  %1133 = phi ptr [ %1129, %1127 ], [ %1125, %1130 ]
  %1134 = getelementptr inbounds %struct.word_type, ptr %1133, i64 0, i32 1
  store i8 0, ptr %1134, align 8, !tbaa !5
  %1135 = getelementptr inbounds [2 x %struct.LIST], ptr %1133, i64 0, i64 1, i32 1
  store ptr %1133, ptr %1135, align 8, !tbaa !5
  %1136 = getelementptr inbounds [2 x %struct.LIST], ptr %1133, i64 0, i64 1
  store ptr %1133, ptr %1136, align 8, !tbaa !5
  %1137 = getelementptr inbounds %struct.LIST, ptr %1133, i64 0, i32 1
  store ptr %1133, ptr %1137, align 8, !tbaa !5
  store ptr %1133, ptr %1133, align 8, !tbaa !5
  store ptr %1133, ptr @xx_link, align 8, !tbaa !8
  store ptr %1133, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %1138 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1138, ptr @zz_tmp, align 8, !tbaa !8
  %1139 = load ptr, ptr %1133, align 8, !tbaa !5
  store ptr %1139, ptr %0, align 8, !tbaa !5
  %1140 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1141 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1142 = load ptr, ptr %1141, align 8, !tbaa !5
  %1143 = getelementptr inbounds %struct.LIST, ptr %1142, i64 0, i32 1
  store ptr %1140, ptr %1143, align 8, !tbaa !5
  %1144 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1144, ptr %1141, align 8, !tbaa !5
  %1145 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1146 = getelementptr inbounds %struct.LIST, ptr %1144, i64 0, i32 1
  store ptr %1145, ptr %1146, align 8, !tbaa !5
  %1147 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1147, ptr @zz_res, align 8, !tbaa !8
  store ptr %1100, ptr @zz_hold, align 8, !tbaa !8
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1155, label %1149

1149:                                             ; preds = %1132
  %1150 = load ptr, ptr %1102, align 8, !tbaa !5
  store ptr %1150, ptr @zz_tmp, align 8, !tbaa !8
  %1151 = getelementptr inbounds [2 x %struct.LIST], ptr %1147, i64 0, i64 1
  %1152 = load ptr, ptr %1151, align 8, !tbaa !5
  store ptr %1152, ptr %1102, align 8, !tbaa !5
  %1153 = getelementptr inbounds [2 x %struct.LIST], ptr %1152, i64 0, i64 1, i32 1
  store ptr %1100, ptr %1153, align 8, !tbaa !5
  store ptr %1150, ptr %1151, align 8, !tbaa !5
  %1154 = getelementptr inbounds [2 x %struct.LIST], ptr %1150, i64 0, i64 1, i32 1
  store ptr %1147, ptr %1154, align 8, !tbaa !5
  br label %1155

1155:                                             ; preds = %1149, %1132
  %1156 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1157 = zext i8 %1156 to i32
  store i32 %1157, ptr @zz_size, align 4, !tbaa !10
  %1158 = zext i8 %1156 to i64
  %1159 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1158
  %1160 = load ptr, ptr %1159, align 8, !tbaa !8
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1162, label %1165

1162:                                             ; preds = %1155
  %1163 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1164 = tail call ptr @GetMemory(i32 noundef %1157, ptr noundef %1163) #8
  br label %1167

1165:                                             ; preds = %1155
  store ptr %1160, ptr @zz_hold, align 8, !tbaa !8
  %1166 = load ptr, ptr %1160, align 8, !tbaa !5
  store ptr %1166, ptr %1159, align 8, !tbaa !8
  br label %1167

1167:                                             ; preds = %1165, %1162
  %1168 = phi ptr [ %1164, %1162 ], [ %1160, %1165 ]
  %1169 = getelementptr inbounds %struct.word_type, ptr %1168, i64 0, i32 1
  store i8 0, ptr %1169, align 8, !tbaa !5
  %1170 = getelementptr inbounds [2 x %struct.LIST], ptr %1168, i64 0, i64 1, i32 1
  store ptr %1168, ptr %1170, align 8, !tbaa !5
  %1171 = getelementptr inbounds [2 x %struct.LIST], ptr %1168, i64 0, i64 1
  store ptr %1168, ptr %1171, align 8, !tbaa !5
  %1172 = getelementptr inbounds %struct.LIST, ptr %1168, i64 0, i32 1
  store ptr %1168, ptr %1172, align 8, !tbaa !5
  store ptr %1168, ptr %1168, align 8, !tbaa !5
  store ptr %1168, ptr @xx_link, align 8, !tbaa !8
  store ptr %1168, ptr @zz_res, align 8, !tbaa !8
  store ptr %1100, ptr @zz_hold, align 8, !tbaa !8
  %1173 = load ptr, ptr %1100, align 8, !tbaa !5
  store ptr %1173, ptr @zz_tmp, align 8, !tbaa !8
  %1174 = load ptr, ptr %1168, align 8, !tbaa !5
  store ptr %1174, ptr %1100, align 8, !tbaa !5
  %1175 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1176 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1177 = load ptr, ptr %1176, align 8, !tbaa !5
  %1178 = getelementptr inbounds %struct.LIST, ptr %1177, i64 0, i32 1
  store ptr %1175, ptr %1178, align 8, !tbaa !5
  %1179 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1179, ptr %1176, align 8, !tbaa !5
  %1180 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1181 = getelementptr inbounds %struct.LIST, ptr %1179, i64 0, i32 1
  store ptr %1180, ptr %1181, align 8, !tbaa !5
  %1182 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1182, ptr @zz_res, align 8, !tbaa !8
  store ptr %716, ptr @zz_hold, align 8, !tbaa !8
  %1183 = icmp eq ptr %716, null
  %1184 = icmp eq ptr %1182, null
  %1185 = select i1 %1183, i1 true, i1 %1184
  br i1 %1185, label %1192, label %1186

1186:                                             ; preds = %1167
  %1187 = load ptr, ptr %721, align 8, !tbaa !5
  store ptr %1187, ptr @zz_tmp, align 8, !tbaa !8
  %1188 = getelementptr inbounds [2 x %struct.LIST], ptr %1182, i64 0, i64 1
  %1189 = load ptr, ptr %1188, align 8, !tbaa !5
  store ptr %1189, ptr %721, align 8, !tbaa !5
  %1190 = getelementptr inbounds [2 x %struct.LIST], ptr %1189, i64 0, i64 1, i32 1
  store ptr %716, ptr %1190, align 8, !tbaa !5
  store ptr %1187, ptr %1188, align 8, !tbaa !5
  %1191 = getelementptr inbounds [2 x %struct.LIST], ptr %1187, i64 0, i64 1, i32 1
  store ptr %1182, ptr %1191, align 8, !tbaa !5
  br label %1192

1192:                                             ; preds = %1186, %1167
  %1193 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %1194 = load ptr, ptr %1193, align 8, !tbaa !5
  br label %1195

1195:                                             ; preds = %1195, %1192
  %1196 = phi ptr [ %1194, %1192 ], [ %1197, %1195 ]
  %1197 = load ptr, ptr %1196, align 8, !tbaa !5
  %1198 = getelementptr inbounds %struct.word_type, ptr %1197, i64 0, i32 1
  %1199 = load i8, ptr %1198, align 8, !tbaa !5
  switch i8 %1199, label %1200 [
    i8 0, label %1195
    i8 16, label %1203
  ]

1200:                                             ; preds = %1195
  %1201 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1202 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1201, ptr noundef nonnull @.str.52) #8
  br label %1203

1203:                                             ; preds = %1195, %1200
  %1204 = load i32, ptr %1118, align 8
  %1205 = and i32 %1204, -532676608
  %1206 = or disjoint i32 %1205, 1
  store i32 %1206, ptr %1118, align 8
  %1207 = load ptr, ptr %1193, align 8, !tbaa !5
  %1208 = getelementptr inbounds %struct.LIST, ptr %1207, i64 0, i32 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !5
  %1210 = icmp eq ptr %1209, %1197
  br i1 %1210, label %1230, label %1211

1211:                                             ; preds = %1203, %1226
  %1212 = phi ptr [ %1227, %1226 ], [ %1209, %1203 ]
  %1213 = phi ptr [ %1228, %1226 ], [ %1209, %1203 ]
  br label %1214

1214:                                             ; preds = %1214, %1211
  %1215 = phi ptr [ %1217, %1214 ], [ %1212, %1211 ]
  %1216 = getelementptr inbounds [2 x %struct.LIST], ptr %1215, i64 0, i64 1
  %1217 = load ptr, ptr %1216, align 8, !tbaa !5
  %1218 = getelementptr inbounds %struct.word_type, ptr %1217, i64 0, i32 1
  %1219 = load i8, ptr %1218, align 8, !tbaa !5
  switch i8 %1219, label %1223 [
    i8 0, label %1214
    i8 46, label %1220
    i8 44, label %1230
    i8 42, label %1230
    i8 43, label %1230
    i8 45, label %1230
  ]

1220:                                             ; preds = %1214
  %1221 = getelementptr inbounds %struct.LIST, ptr %1212, i64 0, i32 1
  %1222 = load ptr, ptr %1221, align 8, !tbaa !5
  br label %1226

1223:                                             ; preds = %1214
  %1224 = getelementptr inbounds %struct.LIST, ptr %1212, i64 0, i32 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !5
  br label %1226

1226:                                             ; preds = %1223, %1220
  %1227 = phi ptr [ %1222, %1220 ], [ %1225, %1223 ]
  %1228 = phi ptr [ %1222, %1220 ], [ %1213, %1223 ]
  %1229 = icmp eq ptr %1227, %1197
  br i1 %1229, label %1230, label %1211

1230:                                             ; preds = %1226, %1214, %1214, %1214, %1214, %1203
  %1231 = phi ptr [ %1197, %1203 ], [ %1213, %1214 ], [ %1213, %1214 ], [ %1213, %1214 ], [ %1213, %1214 ], [ %1228, %1226 ]
  %1232 = icmp eq ptr %1209, %1231
  br i1 %1232, label %1389, label %1233

1233:                                             ; preds = %1230, %1322
  %1234 = phi ptr [ %1329, %1322 ], [ %1209, %1230 ]
  br label %1235

1235:                                             ; preds = %1235, %1233
  %1236 = phi ptr [ %1238, %1235 ], [ %1234, %1233 ]
  %1237 = getelementptr inbounds [2 x %struct.LIST], ptr %1236, i64 0, i64 1
  %1238 = load ptr, ptr %1237, align 8, !tbaa !5
  %1239 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1
  %1240 = load i8, ptr %1239, align 8, !tbaa !5
  %1241 = icmp eq i8 %1240, 0
  br i1 %1241, label %1235, label %1242

1242:                                             ; preds = %1235
  %1243 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 46), align 1, !tbaa !5
  %1244 = zext i8 %1243 to i32
  store i32 %1244, ptr @zz_size, align 4, !tbaa !10
  %1245 = zext i8 %1243 to i64
  %1246 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1245
  %1247 = load ptr, ptr %1246, align 8, !tbaa !8
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1249, label %1252

1249:                                             ; preds = %1242
  %1250 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1251 = tail call ptr @GetMemory(i32 noundef %1244, ptr noundef %1250) #8
  br label %1254

1252:                                             ; preds = %1242
  store ptr %1247, ptr @zz_hold, align 8, !tbaa !8
  %1253 = load ptr, ptr %1247, align 8, !tbaa !5
  store ptr %1253, ptr %1246, align 8, !tbaa !8
  br label %1254

1254:                                             ; preds = %1252, %1249
  %1255 = phi ptr [ %1251, %1249 ], [ %1247, %1252 ]
  %1256 = getelementptr inbounds %struct.word_type, ptr %1255, i64 0, i32 1
  store i8 46, ptr %1256, align 8, !tbaa !5
  %1257 = getelementptr inbounds [2 x %struct.LIST], ptr %1255, i64 0, i64 1, i32 1
  store ptr %1255, ptr %1257, align 8, !tbaa !5
  %1258 = getelementptr inbounds [2 x %struct.LIST], ptr %1255, i64 0, i64 1
  store ptr %1255, ptr %1258, align 8, !tbaa !5
  %1259 = getelementptr inbounds %struct.LIST, ptr %1255, i64 0, i32 1
  store ptr %1255, ptr %1259, align 8, !tbaa !5
  store ptr %1255, ptr %1255, align 8, !tbaa !5
  %1260 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1, i32 0, i32 2
  %1261 = load i16, ptr %1260, align 2, !tbaa !5
  %1262 = getelementptr inbounds %struct.word_type, ptr %1255, i64 0, i32 1, i32 0, i32 2
  store i16 %1261, ptr %1262, align 2, !tbaa !5
  %1263 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1, i32 0, i32 3
  %1264 = load i32, ptr %1263, align 4
  %1265 = and i32 %1264, 1048575
  %1266 = getelementptr inbounds %struct.word_type, ptr %1255, i64 0, i32 1, i32 0, i32 3
  %1267 = load i32, ptr %1266, align 4
  %1268 = and i32 %1267, -1048576
  %1269 = or disjoint i32 %1268, %1265
  store i32 %1269, ptr %1266, align 4
  %1270 = load i32, ptr %1263, align 4
  %1271 = and i32 %1270, -1048576
  %1272 = or disjoint i32 %1271, %1265
  store i32 %1272, ptr %1266, align 4
  %1273 = getelementptr inbounds [2 x %struct.LIST], ptr %1238, i64 0, i64 1, i32 1
  %1274 = load ptr, ptr %1273, align 8, !tbaa !5
  %1275 = icmp eq ptr %1274, %1238
  br i1 %1275, label %1285, label %1276

1276:                                             ; preds = %1254
  %1277 = getelementptr inbounds [2 x %struct.LIST], ptr %1238, i64 0, i64 1
  %1278 = load ptr, ptr %1277, align 8, !tbaa !5
  %1279 = getelementptr inbounds [2 x %struct.LIST], ptr %1274, i64 0, i64 1
  store ptr %1278, ptr %1279, align 8, !tbaa !5
  %1280 = getelementptr inbounds [2 x %struct.LIST], ptr %1278, i64 0, i64 1, i32 1
  store ptr %1274, ptr %1280, align 8, !tbaa !5
  store ptr %1238, ptr %1273, align 8, !tbaa !5
  store ptr %1238, ptr %1277, align 8, !tbaa !5
  %1281 = load ptr, ptr %1279, align 8, !tbaa !5
  store ptr %1281, ptr @zz_tmp, align 8, !tbaa !8
  %1282 = load ptr, ptr %1258, align 8, !tbaa !5
  store ptr %1282, ptr %1279, align 8, !tbaa !5
  %1283 = getelementptr inbounds [2 x %struct.LIST], ptr %1282, i64 0, i64 1, i32 1
  store ptr %1274, ptr %1283, align 8, !tbaa !5
  store ptr %1281, ptr %1258, align 8, !tbaa !5
  %1284 = getelementptr inbounds [2 x %struct.LIST], ptr %1281, i64 0, i64 1, i32 1
  store ptr %1255, ptr %1284, align 8, !tbaa !5
  br label %1285

1285:                                             ; preds = %1254, %1276
  %1286 = phi ptr [ %1274, %1276 ], [ null, %1254 ]
  store ptr %1286, ptr @xx_tmp, align 8
  store ptr %1255, ptr @zz_res, align 8
  store ptr %1286, ptr @zz_hold, align 8
  %1287 = tail call i32 @DisposeObject(ptr noundef nonnull %1238) #8
  %1288 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1289 = zext i8 %1288 to i32
  store i32 %1289, ptr @zz_size, align 4, !tbaa !10
  %1290 = zext i8 %1288 to i64
  %1291 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1290
  %1292 = load ptr, ptr %1291, align 8, !tbaa !8
  %1293 = icmp eq ptr %1292, null
  br i1 %1293, label %1294, label %1297

1294:                                             ; preds = %1285
  %1295 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1296 = tail call ptr @GetMemory(i32 noundef %1289, ptr noundef %1295) #8
  br label %1299

1297:                                             ; preds = %1285
  store ptr %1292, ptr @zz_hold, align 8, !tbaa !8
  %1298 = load ptr, ptr %1292, align 8, !tbaa !5
  store ptr %1298, ptr %1291, align 8, !tbaa !8
  br label %1299

1299:                                             ; preds = %1297, %1294
  %1300 = phi ptr [ %1296, %1294 ], [ %1292, %1297 ]
  %1301 = getelementptr inbounds %struct.word_type, ptr %1300, i64 0, i32 1
  store i8 0, ptr %1301, align 8, !tbaa !5
  %1302 = getelementptr inbounds [2 x %struct.LIST], ptr %1300, i64 0, i64 1, i32 1
  store ptr %1300, ptr %1302, align 8, !tbaa !5
  %1303 = getelementptr inbounds [2 x %struct.LIST], ptr %1300, i64 0, i64 1
  store ptr %1300, ptr %1303, align 8, !tbaa !5
  %1304 = getelementptr inbounds %struct.LIST, ptr %1300, i64 0, i32 1
  store ptr %1300, ptr %1304, align 8, !tbaa !5
  store ptr %1300, ptr %1300, align 8, !tbaa !5
  store ptr %1300, ptr @xx_link, align 8, !tbaa !8
  store ptr %1300, ptr @zz_res, align 8, !tbaa !8
  store ptr %1255, ptr @zz_hold, align 8, !tbaa !8
  %1305 = load ptr, ptr %1255, align 8, !tbaa !5
  store ptr %1305, ptr @zz_tmp, align 8, !tbaa !8
  %1306 = load ptr, ptr %1300, align 8, !tbaa !5
  store ptr %1306, ptr %1255, align 8, !tbaa !5
  %1307 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1308 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1309 = load ptr, ptr %1308, align 8, !tbaa !5
  %1310 = getelementptr inbounds %struct.LIST, ptr %1309, i64 0, i32 1
  store ptr %1307, ptr %1310, align 8, !tbaa !5
  %1311 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1311, ptr %1308, align 8, !tbaa !5
  %1312 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1313 = getelementptr inbounds %struct.LIST, ptr %1311, i64 0, i32 1
  store ptr %1312, ptr %1313, align 8, !tbaa !5
  %1314 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1314, ptr @zz_res, align 8, !tbaa !8
  store ptr %1100, ptr @zz_hold, align 8, !tbaa !8
  %1315 = icmp eq ptr %1314, null
  br i1 %1315, label %1322, label %1316

1316:                                             ; preds = %1299
  %1317 = load ptr, ptr %1102, align 8, !tbaa !5
  store ptr %1317, ptr @zz_tmp, align 8, !tbaa !8
  %1318 = getelementptr inbounds [2 x %struct.LIST], ptr %1314, i64 0, i64 1
  %1319 = load ptr, ptr %1318, align 8, !tbaa !5
  store ptr %1319, ptr %1102, align 8, !tbaa !5
  %1320 = getelementptr inbounds [2 x %struct.LIST], ptr %1319, i64 0, i64 1, i32 1
  store ptr %1100, ptr %1320, align 8, !tbaa !5
  store ptr %1317, ptr %1318, align 8, !tbaa !5
  %1321 = getelementptr inbounds [2 x %struct.LIST], ptr %1317, i64 0, i64 1, i32 1
  store ptr %1314, ptr %1321, align 8, !tbaa !5
  br label %1322

1322:                                             ; preds = %1316, %1299
  %1323 = load i32, ptr %1118, align 8
  %1324 = add i32 %1323, 1
  %1325 = and i32 %1324, 4095
  %1326 = and i32 %1323, -4096
  %1327 = or disjoint i32 %1325, %1326
  store i32 %1327, ptr %1118, align 8
  %1328 = getelementptr inbounds %struct.LIST, ptr %1234, i64 0, i32 1
  %1329 = load ptr, ptr %1328, align 8, !tbaa !5
  %1330 = icmp eq ptr %1329, %1231
  br i1 %1330, label %1389, label %1233

1331:                                             ; preds = %1071
  %1332 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1333 = zext i8 %1332 to i32
  store i32 %1333, ptr @zz_size, align 4, !tbaa !10
  %1334 = zext i8 %1332 to i64
  %1335 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1334
  %1336 = load ptr, ptr %1335, align 8, !tbaa !8
  %1337 = icmp eq ptr %1336, null
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1331
  %1339 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1340 = tail call ptr @GetMemory(i32 noundef %1333, ptr noundef %1339) #8
  br label %1343

1341:                                             ; preds = %1331
  store ptr %1336, ptr @zz_hold, align 8, !tbaa !8
  %1342 = load ptr, ptr %1336, align 8, !tbaa !5
  store ptr %1342, ptr %1335, align 8, !tbaa !8
  br label %1343

1343:                                             ; preds = %1341, %1338
  %1344 = phi ptr [ %1340, %1338 ], [ %1336, %1341 ]
  %1345 = getelementptr inbounds %struct.word_type, ptr %1344, i64 0, i32 1
  store i8 0, ptr %1345, align 8, !tbaa !5
  %1346 = getelementptr inbounds [2 x %struct.LIST], ptr %1344, i64 0, i64 1, i32 1
  store ptr %1344, ptr %1346, align 8, !tbaa !5
  %1347 = getelementptr inbounds [2 x %struct.LIST], ptr %1344, i64 0, i64 1
  store ptr %1344, ptr %1347, align 8, !tbaa !5
  %1348 = getelementptr inbounds %struct.LIST, ptr %1344, i64 0, i32 1
  store ptr %1344, ptr %1348, align 8, !tbaa !5
  store ptr %1344, ptr %1344, align 8, !tbaa !5
  store ptr %1344, ptr @xx_link, align 8, !tbaa !8
  store ptr %1344, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %1349 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1349, ptr @zz_tmp, align 8, !tbaa !8
  %1350 = load ptr, ptr %1344, align 8, !tbaa !5
  store ptr %1350, ptr %0, align 8, !tbaa !5
  %1351 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1352 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1353 = load ptr, ptr %1352, align 8, !tbaa !5
  %1354 = getelementptr inbounds %struct.LIST, ptr %1353, i64 0, i32 1
  store ptr %1351, ptr %1354, align 8, !tbaa !5
  %1355 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1355, ptr %1352, align 8, !tbaa !5
  %1356 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1357 = getelementptr inbounds %struct.LIST, ptr %1355, i64 0, i32 1
  store ptr %1356, ptr %1357, align 8, !tbaa !5
  %1358 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1358, ptr @zz_res, align 8, !tbaa !8
  store ptr %716, ptr @zz_hold, align 8, !tbaa !8
  %1359 = icmp eq ptr %716, null
  %1360 = icmp eq ptr %1358, null
  %1361 = select i1 %1359, i1 true, i1 %1360
  br i1 %1361, label %1389, label %1362

1362:                                             ; preds = %1343
  %1363 = load ptr, ptr %721, align 8, !tbaa !5
  store ptr %1363, ptr @zz_tmp, align 8, !tbaa !8
  %1364 = getelementptr inbounds [2 x %struct.LIST], ptr %1358, i64 0, i64 1
  %1365 = load ptr, ptr %1364, align 8, !tbaa !5
  store ptr %1365, ptr %721, align 8, !tbaa !5
  %1366 = getelementptr inbounds [2 x %struct.LIST], ptr %1365, i64 0, i64 1, i32 1
  store ptr %716, ptr %1366, align 8, !tbaa !5
  store ptr %1363, ptr %1364, align 8, !tbaa !5
  %1367 = getelementptr inbounds [2 x %struct.LIST], ptr %1363, i64 0, i64 1, i32 1
  store ptr %1358, ptr %1367, align 8, !tbaa !5
  br label %1389

1368:                                             ; preds = %1083, %781
  %1369 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #8
  %1370 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %1371 = load ptr, ptr %1370, align 8, !tbaa !5
  %1372 = icmp eq ptr %1371, %0
  br i1 %1372, label %1373, label %1374

1373:                                             ; preds = %1368
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1369, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %1386

1374:                                             ; preds = %1368
  %1375 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %1376 = load ptr, ptr %1375, align 8, !tbaa !5
  %1377 = getelementptr inbounds [2 x %struct.LIST], ptr %1371, i64 0, i64 1
  store ptr %1376, ptr %1377, align 8, !tbaa !5
  %1378 = getelementptr inbounds [2 x %struct.LIST], ptr %1376, i64 0, i64 1, i32 1
  store ptr %1371, ptr %1378, align 8, !tbaa !5
  store ptr %0, ptr %1370, align 8, !tbaa !5
  store ptr %0, ptr %1375, align 8, !tbaa !5
  store ptr %1371, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1369, ptr @zz_res, align 8, !tbaa !8
  store ptr %1371, ptr @zz_hold, align 8, !tbaa !8
  %1379 = icmp eq ptr %1369, null
  br i1 %1379, label %1386, label %1380

1380:                                             ; preds = %1374
  %1381 = load ptr, ptr %1377, align 8, !tbaa !5
  store ptr %1381, ptr @zz_tmp, align 8, !tbaa !8
  %1382 = getelementptr inbounds [2 x %struct.LIST], ptr %1369, i64 0, i64 1
  %1383 = load ptr, ptr %1382, align 8, !tbaa !5
  store ptr %1383, ptr %1377, align 8, !tbaa !5
  %1384 = getelementptr inbounds [2 x %struct.LIST], ptr %1383, i64 0, i64 1, i32 1
  store ptr %1371, ptr %1384, align 8, !tbaa !5
  store ptr %1381, ptr %1382, align 8, !tbaa !5
  %1385 = getelementptr inbounds [2 x %struct.LIST], ptr %1381, i64 0, i64 1, i32 1
  store ptr %1369, ptr %1385, align 8, !tbaa !5
  br label %1386

1386:                                             ; preds = %1373, %1374, %1380
  %1387 = getelementptr inbounds %struct.word_type, ptr %1369, i64 0, i32 3
  %1388 = getelementptr inbounds %struct.word_type, ptr %1369, i64 0, i32 3, i32 1
  store i32 0, ptr %1388, align 8, !tbaa !5
  store i32 0, ptr %1387, align 8, !tbaa !5
  br label %4192

1389:                                             ; preds = %1322, %1230, %1362, %1343, %708, %704
  %1390 = load i8, ptr %14, align 8, !tbaa !5
  %1391 = icmp eq i8 %1390, 44
  br i1 %1391, label %1396, label %1392

1392:                                             ; preds = %1389
  %1393 = icmp eq i8 %1390, 42
  %1394 = icmp eq i32 %1, 1
  %1395 = and i1 %1394, %1393
  br i1 %1395, label %1398, label %1420

1396:                                             ; preds = %1389
  %1397 = icmp eq i32 %1, 1
  br i1 %1397, label %1398, label %1420

1398:                                             ; preds = %1392, %1396
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  %1399 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1400 = load ptr, ptr %1399, align 8, !tbaa !5
  br label %1401

1401:                                             ; preds = %1401, %1398
  %1402 = phi ptr [ %1400, %1398 ], [ %1404, %1401 ]
  %1403 = getelementptr inbounds [2 x %struct.LIST], ptr %1402, i64 0, i64 1
  %1404 = load ptr, ptr %1403, align 8, !tbaa !5
  %1405 = getelementptr inbounds %struct.word_type, ptr %1404, i64 0, i32 1
  %1406 = load i8, ptr %1405, align 8, !tbaa !5
  switch i8 %1406, label %1407 [
    i8 0, label %1401
    i8 13, label %1410
  ]

1407:                                             ; preds = %1401
  %1408 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1409 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1408, ptr noundef nonnull @.str.9) #8
  br label %1410

1410:                                             ; preds = %1401, %1407
  call void @SpannerAvailableSpace(ptr noundef nonnull %1404, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store i32 8388607, ptr %13, align 4, !tbaa !12
  %1411 = load i32, ptr %5, align 4, !tbaa !10
  %1412 = load i32, ptr %6, align 4, !tbaa !10
  %1413 = add nsw i32 %1412, %1411
  %1414 = getelementptr inbounds %struct.CONSTRAINT, ptr %13, i64 0, i32 1
  store i32 %1413, ptr %1414, align 4, !tbaa !14
  %1415 = getelementptr inbounds %struct.CONSTRAINT, ptr %13, i64 0, i32 2
  store i32 8388607, ptr %1415, align 4, !tbaa !15
  %1416 = call ptr @BreakObject(ptr noundef nonnull %1404, ptr noundef nonnull %13) #8
  %1417 = getelementptr inbounds %struct.word_type, ptr %1416, i64 0, i32 2
  %1418 = load i32, ptr %1417, align 8
  %1419 = or i32 %1418, 4194304
  store i32 %1419, ptr %1417, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  br label %1420

1420:                                             ; preds = %1410, %1396, %1392
  %1421 = icmp eq i32 %1, 0
  %1422 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1423 = select i1 %1421, ptr %1422, ptr %0
  %1424 = load ptr, ptr %1423, align 8, !tbaa !5
  br label %1425

1425:                                             ; preds = %1425, %1420
  %1426 = phi ptr [ %1424, %1420 ], [ %1428, %1425 ]
  %1427 = getelementptr inbounds [2 x %struct.LIST], ptr %1426, i64 0, i64 1
  %1428 = load ptr, ptr %1427, align 8, !tbaa !5
  %1429 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 1
  %1430 = load i8, ptr %1429, align 8, !tbaa !5
  %1431 = icmp eq i8 %1430, 0
  br i1 %1431, label %1425, label %1432

1432:                                             ; preds = %1425
  %1433 = load i8, ptr %14, align 8, !tbaa !5
  %1434 = icmp ne i8 %1433, 45
  %1435 = icmp eq i8 %1430, 13
  %1436 = or i1 %1435, %1434
  br i1 %1436, label %1437, label %1441

1437:                                             ; preds = %1432
  %1438 = icmp eq i8 %1433, 46
  %1439 = icmp ne i8 %1430, 14
  %1440 = and i1 %1439, %1438
  br i1 %1440, label %1441, label %1452

1441:                                             ; preds = %1437, %1432
  br i1 %1421, label %1442, label %1446

1442:                                             ; preds = %1441
  %1443 = zext nneg i8 %1433 to i32
  %1444 = call ptr @Image(i32 noundef %1443) #8
  %1445 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 15, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef nonnull %14, ptr noundef %1444) #8
  br label %1446

1446:                                             ; preds = %1442, %1441
  %1447 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1448 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1449 = sext i32 %1 to i64
  %1450 = getelementptr inbounds [2 x i32], ptr %1448, i64 0, i64 %1449
  store i32 0, ptr %1450, align 4, !tbaa !5
  %1451 = getelementptr inbounds [2 x i32], ptr %1447, i64 0, i64 %1449
  store i32 0, ptr %1451, align 4, !tbaa !5
  br label %4192

1452:                                             ; preds = %1437
  %1453 = icmp eq i8 %1433, 45
  %1454 = icmp eq i32 %1, 1
  %1455 = and i1 %1454, %1453
  %1456 = and i1 %1421, %1438
  %1457 = or i1 %1455, %1456
  br i1 %1457, label %1458, label %1464

1458:                                             ; preds = %1452
  %1459 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1460 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1461 = zext nneg i32 %1 to i64
  %1462 = getelementptr inbounds [2 x i32], ptr %1460, i64 0, i64 %1461
  store i32 0, ptr %1462, align 4, !tbaa !5
  %1463 = getelementptr inbounds [2 x i32], ptr %1459, i64 0, i64 %1461
  store i32 0, ptr %1463, align 4, !tbaa !5
  br label %4192

1464:                                             ; preds = %1452
  %1465 = add i8 %1430, -13
  %1466 = icmp ult i8 %1465, 2
  br i1 %1466, label %1480, label %1467

1467:                                             ; preds = %1464
  %1468 = call ptr @MinSize(ptr noundef nonnull %1428, i32 noundef %1, ptr noundef %2)
  %1469 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 3
  %1470 = sext i32 %1 to i64
  %1471 = getelementptr inbounds [2 x i32], ptr %1469, i64 0, i64 %1470
  %1472 = load i32, ptr %1471, align 4, !tbaa !5
  %1473 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1474 = getelementptr inbounds [2 x i32], ptr %1473, i64 0, i64 %1470
  store i32 %1472, ptr %1474, align 4, !tbaa !5
  %1475 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 3, i32 1
  %1476 = getelementptr inbounds [2 x i32], ptr %1475, i64 0, i64 %1470
  %1477 = load i32, ptr %1476, align 4, !tbaa !5
  %1478 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1479 = getelementptr inbounds [2 x i32], ptr %1478, i64 0, i64 %1470
  store i32 %1477, ptr %1479, align 4, !tbaa !5
  br label %4192

1480:                                             ; preds = %1464
  %1481 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 2
  %1482 = load i32, ptr %1481, align 8
  %1483 = lshr i32 %1482, 12
  %1484 = add nuw nsw i32 %1483, 1
  %1485 = and i32 %1484, 1023
  %1486 = shl nuw nsw i32 %1485, 12
  %1487 = and i32 %1482, -4190209
  %1488 = or disjoint i32 %1486, %1487
  store i32 %1488, ptr %1481, align 8
  %1489 = and i32 %1482, 4095
  %1490 = icmp eq i32 %1485, %1489
  br i1 %1490, label %1497, label %1491

1491:                                             ; preds = %1480
  %1492 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1493 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1494 = sext i32 %1 to i64
  %1495 = getelementptr inbounds [2 x i32], ptr %1493, i64 0, i64 %1494
  store i32 0, ptr %1495, align 4, !tbaa !5
  %1496 = getelementptr inbounds [2 x i32], ptr %1492, i64 0, i64 %1494
  store i32 0, ptr %1496, align 4, !tbaa !5
  br label %4192

1497:                                             ; preds = %1480
  %1498 = call ptr @MinSize(ptr noundef nonnull %1428, i32 noundef %1, ptr noundef %2)
  call void @SpannerAvailableSpace(ptr noundef nonnull %1428, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %1499 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1500 = sext i32 %1 to i64
  %1501 = getelementptr inbounds [2 x i32], ptr %1499, i64 0, i64 %1500
  store i32 0, ptr %1501, align 4, !tbaa !5
  %1502 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 3
  %1503 = getelementptr inbounds [2 x i32], ptr %1502, i64 0, i64 %1500
  %1504 = load i32, ptr %1503, align 4, !tbaa !5
  %1505 = getelementptr inbounds %struct.word_type, ptr %1428, i64 0, i32 3, i32 1
  %1506 = getelementptr inbounds [2 x i32], ptr %1505, i64 0, i64 %1500
  %1507 = load i32, ptr %1506, align 4, !tbaa !5
  %1508 = add nsw i32 %1507, %1504
  %1509 = load i32, ptr %5, align 4, !tbaa !10
  %1510 = sub i32 %1508, %1509
  %1511 = call i32 @llvm.smax.i32(i32 %1510, i32 0)
  %1512 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1513 = getelementptr inbounds [2 x i32], ptr %1512, i64 0, i64 %1500
  store i32 %1511, ptr %1513, align 4, !tbaa !5
  br label %4192

1514:                                             ; preds = %3, %3
  %1515 = icmp eq i8 %15, 13
  %1516 = icmp ne i32 %1, 0
  %1517 = xor i1 %1516, %1515
  br i1 %1517, label %1521, label %1518

1518:                                             ; preds = %1514
  %1519 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1520 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1519, ptr noundef nonnull @.str.11) #8
  br label %1521

1521:                                             ; preds = %1518, %1514
  %1522 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1523 = load ptr, ptr %1522, align 8, !tbaa !5
  br label %1524

1524:                                             ; preds = %1524, %1521
  %1525 = phi ptr [ %1523, %1521 ], [ %1527, %1524 ]
  %1526 = getelementptr inbounds [2 x %struct.LIST], ptr %1525, i64 0, i64 1
  %1527 = load ptr, ptr %1526, align 8, !tbaa !5
  %1528 = getelementptr inbounds %struct.word_type, ptr %1527, i64 0, i32 1
  %1529 = load i8, ptr %1528, align 8, !tbaa !5
  %1530 = icmp eq i8 %1529, 0
  br i1 %1530, label %1524, label %1531

1531:                                             ; preds = %1524
  %1532 = tail call ptr @MinSize(ptr noundef nonnull %1527, i32 noundef %1, ptr noundef %2)
  %1533 = getelementptr inbounds %struct.word_type, ptr %1532, i64 0, i32 3
  %1534 = sext i32 %1 to i64
  %1535 = getelementptr inbounds [2 x i32], ptr %1533, i64 0, i64 %1534
  %1536 = load i32, ptr %1535, align 4, !tbaa !5
  %1537 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1538 = getelementptr inbounds [2 x i32], ptr %1537, i64 0, i64 %1534
  store i32 %1536, ptr %1538, align 4, !tbaa !5
  %1539 = getelementptr inbounds %struct.word_type, ptr %1532, i64 0, i32 3, i32 1
  %1540 = getelementptr inbounds [2 x i32], ptr %1539, i64 0, i64 %1534
  %1541 = load i32, ptr %1540, align 4, !tbaa !5
  %1542 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1543 = getelementptr inbounds [2 x i32], ptr %1542, i64 0, i64 %1534
  store i32 %1541, ptr %1543, align 4, !tbaa !5
  br label %4192

1544:                                             ; preds = %3, %3
  %1545 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1546 = load ptr, ptr %1545, align 8, !tbaa !5
  br label %1547

1547:                                             ; preds = %1547, %1544
  %1548 = phi ptr [ %1546, %1544 ], [ %1550, %1547 ]
  %1549 = getelementptr inbounds [2 x %struct.LIST], ptr %1548, i64 0, i64 1
  %1550 = load ptr, ptr %1549, align 8, !tbaa !5
  %1551 = getelementptr inbounds %struct.word_type, ptr %1550, i64 0, i32 1
  %1552 = load i8, ptr %1551, align 8, !tbaa !5
  %1553 = icmp eq i8 %1552, 0
  br i1 %1553, label %1547, label %1554

1554:                                             ; preds = %1547
  %1555 = tail call ptr @MinSize(ptr noundef nonnull %1550, i32 noundef %1, ptr noundef %2)
  %1556 = getelementptr inbounds %struct.word_type, ptr %1555, i64 0, i32 3
  %1557 = sext i32 %1 to i64
  %1558 = getelementptr inbounds [2 x i32], ptr %1556, i64 0, i64 %1557
  %1559 = load i32, ptr %1558, align 4, !tbaa !5
  %1560 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1561 = getelementptr inbounds [2 x i32], ptr %1560, i64 0, i64 %1557
  store i32 %1559, ptr %1561, align 4, !tbaa !5
  %1562 = getelementptr inbounds %struct.word_type, ptr %1555, i64 0, i32 3, i32 1
  %1563 = getelementptr inbounds [2 x i32], ptr %1562, i64 0, i64 %1557
  %1564 = load i32, ptr %1563, align 4, !tbaa !5
  %1565 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1566 = getelementptr inbounds [2 x i32], ptr %1565, i64 0, i64 %1557
  store i32 %1564, ptr %1566, align 4, !tbaa !5
  %1567 = icmp eq i32 %1, 1
  br i1 %1567, label %1568, label %4192

1568:                                             ; preds = %1554
  %1569 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 138), align 1, !tbaa !5
  %1570 = zext i8 %1569 to i32
  store i32 %1570, ptr @zz_size, align 4, !tbaa !10
  %1571 = zext i8 %1569 to i64
  %1572 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1571
  %1573 = load ptr, ptr %1572, align 8, !tbaa !8
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1575, label %1578

1575:                                             ; preds = %1568
  %1576 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1577 = tail call ptr @GetMemory(i32 noundef %1570, ptr noundef %1576) #8
  store ptr %1577, ptr @zz_hold, align 8, !tbaa !8
  br label %1580

1578:                                             ; preds = %1568
  store ptr %1573, ptr @zz_hold, align 8, !tbaa !8
  %1579 = load ptr, ptr %1573, align 8, !tbaa !5
  store ptr %1579, ptr %1572, align 8, !tbaa !8
  br label %1580

1580:                                             ; preds = %1575, %1578
  %1581 = phi ptr [ %1577, %1575 ], [ %1573, %1578 ]
  %1582 = getelementptr inbounds %struct.word_type, ptr %1581, i64 0, i32 1
  store i8 -118, ptr %1582, align 8, !tbaa !5
  %1583 = getelementptr inbounds [2 x %struct.LIST], ptr %1581, i64 0, i64 1
  %1584 = getelementptr inbounds [2 x %struct.LIST], ptr %1581, i64 0, i64 1, i32 1
  store ptr %1581, ptr %1584, align 8, !tbaa !5
  store ptr %1581, ptr %1583, align 8, !tbaa !5
  %1585 = getelementptr inbounds %struct.LIST, ptr %1581, i64 0, i32 1
  store ptr %1581, ptr %1585, align 8, !tbaa !5
  store ptr %1581, ptr %1581, align 8, !tbaa !5
  %1586 = getelementptr inbounds %struct.closure_type, ptr %1581, i64 0, i32 5
  store ptr %0, ptr %1586, align 8, !tbaa !5
  %1587 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1588 = zext i8 %1587 to i32
  store i32 %1588, ptr @zz_size, align 4, !tbaa !10
  %1589 = zext i8 %1587 to i64
  %1590 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1589
  %1591 = load ptr, ptr %1590, align 8, !tbaa !8
  %1592 = icmp eq ptr %1591, null
  br i1 %1592, label %1593, label %1596

1593:                                             ; preds = %1580
  %1594 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1595 = tail call ptr @GetMemory(i32 noundef %1588, ptr noundef %1594) #8
  store ptr %1595, ptr @zz_hold, align 8, !tbaa !8
  br label %1598

1596:                                             ; preds = %1580
  store ptr %1591, ptr @zz_hold, align 8, !tbaa !8
  %1597 = load ptr, ptr %1591, align 8, !tbaa !5
  store ptr %1597, ptr %1590, align 8, !tbaa !8
  br label %1598

1598:                                             ; preds = %1593, %1596
  %1599 = phi ptr [ %1595, %1593 ], [ %1591, %1596 ]
  %1600 = getelementptr inbounds %struct.word_type, ptr %1599, i64 0, i32 1
  store i8 0, ptr %1600, align 8, !tbaa !5
  %1601 = getelementptr inbounds [2 x %struct.LIST], ptr %1599, i64 0, i64 1, i32 1
  store ptr %1599, ptr %1601, align 8, !tbaa !5
  %1602 = getelementptr inbounds [2 x %struct.LIST], ptr %1599, i64 0, i64 1
  store ptr %1599, ptr %1602, align 8, !tbaa !5
  %1603 = getelementptr inbounds %struct.LIST, ptr %1599, i64 0, i32 1
  store ptr %1599, ptr %1603, align 8, !tbaa !5
  store ptr %1599, ptr %1599, align 8, !tbaa !5
  store ptr %1599, ptr @xx_link, align 8, !tbaa !8
  store ptr %1599, ptr @zz_res, align 8, !tbaa !8
  %1604 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %1604, ptr @zz_hold, align 8, !tbaa !8
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1606, label %1607

1606:                                             ; preds = %1598
  store ptr %1599, ptr @zz_res, align 8, !tbaa !8
  store ptr %1581, ptr @zz_hold, align 8, !tbaa !8
  br label %1622

1607:                                             ; preds = %1598
  %1608 = load ptr, ptr %1604, align 8, !tbaa !5
  store ptr %1608, ptr @zz_tmp, align 8, !tbaa !8
  %1609 = load ptr, ptr %1599, align 8, !tbaa !5
  store ptr %1609, ptr %1604, align 8, !tbaa !5
  %1610 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1611 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1612 = load ptr, ptr %1611, align 8, !tbaa !5
  %1613 = getelementptr inbounds %struct.LIST, ptr %1612, i64 0, i32 1
  store ptr %1610, ptr %1613, align 8, !tbaa !5
  %1614 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1614, ptr %1611, align 8, !tbaa !5
  %1615 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1616 = getelementptr inbounds %struct.LIST, ptr %1614, i64 0, i32 1
  store ptr %1615, ptr %1616, align 8, !tbaa !5
  %1617 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1617, ptr @zz_res, align 8, !tbaa !8
  store ptr %1581, ptr @zz_hold, align 8, !tbaa !8
  %1618 = icmp eq ptr %1617, null
  br i1 %1618, label %4192, label %1619

1619:                                             ; preds = %1607
  %1620 = getelementptr inbounds [2 x %struct.LIST], ptr %1617, i64 0, i64 1
  %1621 = load ptr, ptr %1620, align 8, !tbaa !5
  br label %1622

1622:                                             ; preds = %1619, %1606
  %1623 = phi ptr [ %1599, %1606 ], [ %1621, %1619 ]
  %1624 = phi ptr [ %1599, %1606 ], [ %1617, %1619 ]
  %1625 = load ptr, ptr %1583, align 8, !tbaa !5
  store ptr %1625, ptr @zz_tmp, align 8, !tbaa !8
  %1626 = getelementptr inbounds [2 x %struct.LIST], ptr %1624, i64 0, i64 1
  store ptr %1623, ptr %1583, align 8, !tbaa !5
  %1627 = load ptr, ptr %1626, align 8, !tbaa !5
  %1628 = getelementptr inbounds [2 x %struct.LIST], ptr %1627, i64 0, i64 1, i32 1
  store ptr %1581, ptr %1628, align 8, !tbaa !5
  store ptr %1625, ptr %1626, align 8, !tbaa !5
  %1629 = getelementptr inbounds [2 x %struct.LIST], ptr %1625, i64 0, i64 1, i32 1
  store ptr %1624, ptr %1629, align 8, !tbaa !5
  br label %4192

1630:                                             ; preds = %3, %3
  %1631 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1632 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1633 = sext i32 %1 to i64
  %1634 = getelementptr inbounds [2 x i32], ptr %1632, i64 0, i64 %1633
  store i32 0, ptr %1634, align 4, !tbaa !5
  %1635 = getelementptr inbounds [2 x i32], ptr %1631, i64 0, i64 %1633
  store i32 0, ptr %1635, align 4, !tbaa !5
  %1636 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1637 = load ptr, ptr %1636, align 8, !tbaa !5
  br label %1638

1638:                                             ; preds = %1638, %1630
  %1639 = phi ptr [ %1637, %1630 ], [ %1641, %1638 ]
  %1640 = getelementptr inbounds [2 x %struct.LIST], ptr %1639, i64 0, i64 1
  %1641 = load ptr, ptr %1640, align 8, !tbaa !5
  %1642 = getelementptr inbounds %struct.word_type, ptr %1641, i64 0, i32 1
  %1643 = load i8, ptr %1642, align 8, !tbaa !5
  %1644 = icmp eq i8 %1643, 0
  br i1 %1644, label %1638, label %1645

1645:                                             ; preds = %1638
  %1646 = getelementptr inbounds %struct.word_type, ptr %1641, i64 0, i32 3
  %1647 = getelementptr inbounds %struct.word_type, ptr %1641, i64 0, i32 3, i32 1
  %1648 = getelementptr inbounds [2 x i32], ptr %1647, i64 0, i64 %1633
  store i32 0, ptr %1648, align 4, !tbaa !5
  %1649 = getelementptr inbounds [2 x i32], ptr %1646, i64 0, i64 %1633
  store i32 0, ptr %1649, align 4, !tbaa !5
  br label %4192

1650:                                             ; preds = %3, %3
  %1651 = load ptr, ptr %0, align 8, !tbaa !5
  br label %1652

1652:                                             ; preds = %1652, %1650
  %1653 = phi ptr [ %1651, %1650 ], [ %1655, %1652 ]
  %1654 = getelementptr inbounds [2 x %struct.LIST], ptr %1653, i64 0, i64 1
  %1655 = load ptr, ptr %1654, align 8, !tbaa !5
  %1656 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 1
  %1657 = load i8, ptr %1656, align 8, !tbaa !5
  %1658 = icmp eq i8 %1657, 0
  br i1 %1658, label %1652, label %1659

1659:                                             ; preds = %1652
  %1660 = tail call ptr @MinSize(ptr noundef nonnull %1655, i32 noundef %1, ptr noundef %2)
  %1661 = getelementptr inbounds %struct.word_type, ptr %1660, i64 0, i32 3
  %1662 = sext i32 %1 to i64
  %1663 = getelementptr inbounds [2 x i32], ptr %1661, i64 0, i64 %1662
  %1664 = load i32, ptr %1663, align 4, !tbaa !5
  %1665 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1666 = getelementptr inbounds [2 x i32], ptr %1665, i64 0, i64 %1662
  store i32 %1664, ptr %1666, align 4, !tbaa !5
  %1667 = getelementptr inbounds %struct.word_type, ptr %1660, i64 0, i32 3, i32 1
  %1668 = getelementptr inbounds [2 x i32], ptr %1667, i64 0, i64 %1662
  %1669 = load i32, ptr %1668, align 4, !tbaa !5
  %1670 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1671 = getelementptr inbounds [2 x i32], ptr %1670, i64 0, i64 %1662
  store i32 %1669, ptr %1671, align 4, !tbaa !5
  br label %4192

1672:                                             ; preds = %3, %3, %3, %3
  %1673 = load ptr, ptr %0, align 8, !tbaa !5
  br label %1674

1674:                                             ; preds = %1674, %1672
  %1675 = phi ptr [ %1673, %1672 ], [ %1677, %1674 ]
  %1676 = getelementptr inbounds [2 x %struct.LIST], ptr %1675, i64 0, i64 1
  %1677 = load ptr, ptr %1676, align 8, !tbaa !5
  %1678 = getelementptr inbounds %struct.word_type, ptr %1677, i64 0, i32 1
  %1679 = load i8, ptr %1678, align 8, !tbaa !5
  %1680 = icmp eq i8 %1679, 0
  br i1 %1680, label %1674, label %1681

1681:                                             ; preds = %1674
  %1682 = tail call ptr @MinSize(ptr noundef nonnull %1677, i32 noundef %1, ptr noundef %2)
  %1683 = getelementptr inbounds %struct.word_type, ptr %1682, i64 0, i32 3
  %1684 = sext i32 %1 to i64
  %1685 = getelementptr inbounds [2 x i32], ptr %1683, i64 0, i64 %1684
  %1686 = load i32, ptr %1685, align 4, !tbaa !5
  %1687 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1688 = getelementptr inbounds [2 x i32], ptr %1687, i64 0, i64 %1684
  store i32 %1686, ptr %1688, align 4, !tbaa !5
  %1689 = getelementptr inbounds %struct.word_type, ptr %1682, i64 0, i32 3, i32 1
  %1690 = getelementptr inbounds [2 x i32], ptr %1689, i64 0, i64 %1684
  %1691 = load i32, ptr %1690, align 4, !tbaa !5
  %1692 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1693 = getelementptr inbounds [2 x i32], ptr %1692, i64 0, i64 %1684
  store i32 %1691, ptr %1693, align 4, !tbaa !5
  br label %4192

1694:                                             ; preds = %3, %3
  %1695 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1696 = load ptr, ptr %1695, align 8, !tbaa !5
  br label %1697

1697:                                             ; preds = %1697, %1694
  %1698 = phi ptr [ %1696, %1694 ], [ %1700, %1697 ]
  %1699 = getelementptr inbounds [2 x %struct.LIST], ptr %1698, i64 0, i64 1
  %1700 = load ptr, ptr %1699, align 8, !tbaa !5
  %1701 = getelementptr inbounds %struct.word_type, ptr %1700, i64 0, i32 1
  %1702 = load i8, ptr %1701, align 8, !tbaa !5
  %1703 = icmp eq i8 %1702, 0
  br i1 %1703, label %1697, label %1704

1704:                                             ; preds = %1697
  %1705 = tail call ptr @MinSize(ptr noundef nonnull %1700, i32 noundef %1, ptr noundef %2)
  %1706 = icmp eq i32 %1, 0
  %1707 = load i8, ptr %14, align 8, !tbaa !5
  %1708 = icmp ne i8 %1707, 32
  %1709 = xor i1 %1706, %1708
  br i1 %1709, label %1710, label %1716

1710:                                             ; preds = %1704
  %1711 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1712 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1713 = sext i32 %1 to i64
  %1714 = getelementptr inbounds [2 x i32], ptr %1712, i64 0, i64 %1713
  store i32 0, ptr %1714, align 4, !tbaa !5
  %1715 = getelementptr inbounds [2 x i32], ptr %1711, i64 0, i64 %1713
  store i32 0, ptr %1715, align 4, !tbaa !5
  br label %1728

1716:                                             ; preds = %1704
  %1717 = getelementptr inbounds %struct.word_type, ptr %1705, i64 0, i32 3
  %1718 = sext i32 %1 to i64
  %1719 = getelementptr inbounds [2 x i32], ptr %1717, i64 0, i64 %1718
  %1720 = load i32, ptr %1719, align 4, !tbaa !5
  %1721 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1722 = getelementptr inbounds [2 x i32], ptr %1721, i64 0, i64 %1718
  store i32 %1720, ptr %1722, align 4, !tbaa !5
  %1723 = getelementptr inbounds %struct.word_type, ptr %1705, i64 0, i32 3, i32 1
  %1724 = getelementptr inbounds [2 x i32], ptr %1723, i64 0, i64 %1718
  %1725 = load i32, ptr %1724, align 4, !tbaa !5
  %1726 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1727 = getelementptr inbounds [2 x i32], ptr %1726, i64 0, i64 %1718
  store i32 %1725, ptr %1727, align 4, !tbaa !5
  br label %1728

1728:                                             ; preds = %1716, %1710
  %1729 = icmp eq i32 %1, 1
  br i1 %1729, label %1730, label %4192

1730:                                             ; preds = %1728
  %1731 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 137), align 1, !tbaa !5
  %1732 = zext i8 %1731 to i32
  store i32 %1732, ptr @zz_size, align 4, !tbaa !10
  %1733 = zext i8 %1731 to i64
  %1734 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1733
  %1735 = load ptr, ptr %1734, align 8, !tbaa !8
  %1736 = icmp eq ptr %1735, null
  br i1 %1736, label %1737, label %1740

1737:                                             ; preds = %1730
  %1738 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1739 = tail call ptr @GetMemory(i32 noundef %1732, ptr noundef %1738) #8
  store ptr %1739, ptr @zz_hold, align 8, !tbaa !8
  br label %1742

1740:                                             ; preds = %1730
  store ptr %1735, ptr @zz_hold, align 8, !tbaa !8
  %1741 = load ptr, ptr %1735, align 8, !tbaa !5
  store ptr %1741, ptr %1734, align 8, !tbaa !8
  br label %1742

1742:                                             ; preds = %1737, %1740
  %1743 = phi ptr [ %1739, %1737 ], [ %1735, %1740 ]
  %1744 = getelementptr inbounds %struct.word_type, ptr %1743, i64 0, i32 1
  store i8 -119, ptr %1744, align 8, !tbaa !5
  %1745 = getelementptr inbounds [2 x %struct.LIST], ptr %1743, i64 0, i64 1
  %1746 = getelementptr inbounds [2 x %struct.LIST], ptr %1743, i64 0, i64 1, i32 1
  store ptr %1743, ptr %1746, align 8, !tbaa !5
  store ptr %1743, ptr %1745, align 8, !tbaa !5
  %1747 = getelementptr inbounds %struct.LIST, ptr %1743, i64 0, i32 1
  store ptr %1743, ptr %1747, align 8, !tbaa !5
  store ptr %1743, ptr %1743, align 8, !tbaa !5
  %1748 = getelementptr inbounds %struct.closure_type, ptr %1743, i64 0, i32 5
  store ptr %0, ptr %1748, align 8, !tbaa !5
  %1749 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1750 = zext i8 %1749 to i32
  store i32 %1750, ptr @zz_size, align 4, !tbaa !10
  %1751 = zext i8 %1749 to i64
  %1752 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1751
  %1753 = load ptr, ptr %1752, align 8, !tbaa !8
  %1754 = icmp eq ptr %1753, null
  br i1 %1754, label %1755, label %1758

1755:                                             ; preds = %1742
  %1756 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1757 = tail call ptr @GetMemory(i32 noundef %1750, ptr noundef %1756) #8
  store ptr %1757, ptr @zz_hold, align 8, !tbaa !8
  br label %1760

1758:                                             ; preds = %1742
  store ptr %1753, ptr @zz_hold, align 8, !tbaa !8
  %1759 = load ptr, ptr %1753, align 8, !tbaa !5
  store ptr %1759, ptr %1752, align 8, !tbaa !8
  br label %1760

1760:                                             ; preds = %1755, %1758
  %1761 = phi ptr [ %1757, %1755 ], [ %1753, %1758 ]
  %1762 = getelementptr inbounds %struct.word_type, ptr %1761, i64 0, i32 1
  store i8 0, ptr %1762, align 8, !tbaa !5
  %1763 = getelementptr inbounds [2 x %struct.LIST], ptr %1761, i64 0, i64 1, i32 1
  store ptr %1761, ptr %1763, align 8, !tbaa !5
  %1764 = getelementptr inbounds [2 x %struct.LIST], ptr %1761, i64 0, i64 1
  store ptr %1761, ptr %1764, align 8, !tbaa !5
  %1765 = getelementptr inbounds %struct.LIST, ptr %1761, i64 0, i32 1
  store ptr %1761, ptr %1765, align 8, !tbaa !5
  store ptr %1761, ptr %1761, align 8, !tbaa !5
  store ptr %1761, ptr @xx_link, align 8, !tbaa !8
  store ptr %1761, ptr @zz_res, align 8, !tbaa !8
  %1766 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %1766, ptr @zz_hold, align 8, !tbaa !8
  %1767 = icmp eq ptr %1766, null
  br i1 %1767, label %1768, label %1769

1768:                                             ; preds = %1760
  store ptr %1761, ptr @zz_res, align 8, !tbaa !8
  store ptr %1743, ptr @zz_hold, align 8, !tbaa !8
  br label %1784

1769:                                             ; preds = %1760
  %1770 = load ptr, ptr %1766, align 8, !tbaa !5
  store ptr %1770, ptr @zz_tmp, align 8, !tbaa !8
  %1771 = load ptr, ptr %1761, align 8, !tbaa !5
  store ptr %1771, ptr %1766, align 8, !tbaa !5
  %1772 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1773 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1774 = load ptr, ptr %1773, align 8, !tbaa !5
  %1775 = getelementptr inbounds %struct.LIST, ptr %1774, i64 0, i32 1
  store ptr %1772, ptr %1775, align 8, !tbaa !5
  %1776 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1776, ptr %1773, align 8, !tbaa !5
  %1777 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1778 = getelementptr inbounds %struct.LIST, ptr %1776, i64 0, i32 1
  store ptr %1777, ptr %1778, align 8, !tbaa !5
  %1779 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1779, ptr @zz_res, align 8, !tbaa !8
  store ptr %1743, ptr @zz_hold, align 8, !tbaa !8
  %1780 = icmp eq ptr %1779, null
  br i1 %1780, label %4192, label %1781

1781:                                             ; preds = %1769
  %1782 = getelementptr inbounds [2 x %struct.LIST], ptr %1779, i64 0, i64 1
  %1783 = load ptr, ptr %1782, align 8, !tbaa !5
  br label %1784

1784:                                             ; preds = %1781, %1768
  %1785 = phi ptr [ %1761, %1768 ], [ %1783, %1781 ]
  %1786 = phi ptr [ %1761, %1768 ], [ %1779, %1781 ]
  %1787 = load ptr, ptr %1745, align 8, !tbaa !5
  store ptr %1787, ptr @zz_tmp, align 8, !tbaa !8
  %1788 = getelementptr inbounds [2 x %struct.LIST], ptr %1786, i64 0, i64 1
  store ptr %1785, ptr %1745, align 8, !tbaa !5
  %1789 = load ptr, ptr %1788, align 8, !tbaa !5
  %1790 = getelementptr inbounds [2 x %struct.LIST], ptr %1789, i64 0, i64 1, i32 1
  store ptr %1743, ptr %1790, align 8, !tbaa !5
  store ptr %1787, ptr %1788, align 8, !tbaa !5
  %1791 = getelementptr inbounds [2 x %struct.LIST], ptr %1787, i64 0, i64 1, i32 1
  store ptr %1786, ptr %1791, align 8, !tbaa !5
  br label %4192

1792:                                             ; preds = %3, %3
  %1793 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1794 = load ptr, ptr %1793, align 8, !tbaa !5
  br label %1795

1795:                                             ; preds = %1795, %1792
  %1796 = phi ptr [ %1794, %1792 ], [ %1798, %1795 ]
  %1797 = getelementptr inbounds [2 x %struct.LIST], ptr %1796, i64 0, i64 1
  %1798 = load ptr, ptr %1797, align 8, !tbaa !5
  %1799 = getelementptr inbounds %struct.word_type, ptr %1798, i64 0, i32 1
  %1800 = load i8, ptr %1799, align 8, !tbaa !5
  %1801 = icmp eq i8 %1800, 0
  br i1 %1801, label %1795, label %1802

1802:                                             ; preds = %1795
  %1803 = tail call ptr @MinSize(ptr noundef nonnull %1798, i32 noundef %1, ptr noundef %2)
  %1804 = icmp eq i32 %1, 0
  %1805 = load i8, ptr %14, align 8, !tbaa !5
  %1806 = icmp ne i8 %1805, 30
  %1807 = xor i1 %1804, %1806
  br i1 %1807, label %1808, label %1814

1808:                                             ; preds = %1802
  %1809 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1810 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1811 = sext i32 %1 to i64
  %1812 = getelementptr inbounds [2 x i32], ptr %1810, i64 0, i64 %1811
  store i32 0, ptr %1812, align 4, !tbaa !5
  %1813 = getelementptr inbounds [2 x i32], ptr %1809, i64 0, i64 %1811
  store i32 0, ptr %1813, align 4, !tbaa !5
  br label %4192

1814:                                             ; preds = %1802
  %1815 = getelementptr inbounds %struct.word_type, ptr %1803, i64 0, i32 3
  %1816 = sext i32 %1 to i64
  %1817 = getelementptr inbounds [2 x i32], ptr %1815, i64 0, i64 %1816
  %1818 = load i32, ptr %1817, align 4, !tbaa !5
  %1819 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1820 = getelementptr inbounds [2 x i32], ptr %1819, i64 0, i64 %1816
  store i32 %1818, ptr %1820, align 4, !tbaa !5
  %1821 = getelementptr inbounds %struct.word_type, ptr %1803, i64 0, i32 3, i32 1
  %1822 = getelementptr inbounds [2 x i32], ptr %1821, i64 0, i64 %1816
  %1823 = load i32, ptr %1822, align 4, !tbaa !5
  %1824 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1825 = getelementptr inbounds [2 x i32], ptr %1824, i64 0, i64 %1816
  store i32 %1823, ptr %1825, align 4, !tbaa !5
  br label %4192

1826:                                             ; preds = %3
  %1827 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !5
  br label %1829

1829:                                             ; preds = %1829, %1826
  %1830 = phi ptr [ %1828, %1826 ], [ %1832, %1829 ]
  %1831 = getelementptr inbounds [2 x %struct.LIST], ptr %1830, i64 0, i64 1
  %1832 = load ptr, ptr %1831, align 8, !tbaa !5
  %1833 = getelementptr inbounds %struct.word_type, ptr %1832, i64 0, i32 1
  %1834 = load i8, ptr %1833, align 8, !tbaa !5
  %1835 = icmp eq i8 %1834, 0
  br i1 %1835, label %1829, label %1836

1836:                                             ; preds = %1829
  %1837 = icmp eq i32 %1, 0
  br i1 %1837, label %1838, label %1865

1838:                                             ; preds = %1836
  %1839 = tail call ptr @MinSize(ptr noundef nonnull %1832, i32 noundef 0, ptr noundef %2)
  %1840 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1841 = zext i8 %1840 to i32
  store i32 %1841, ptr @zz_size, align 4, !tbaa !10
  %1842 = zext i8 %1840 to i64
  %1843 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1842
  %1844 = load ptr, ptr %1843, align 8, !tbaa !8
  %1845 = icmp eq ptr %1844, null
  br i1 %1845, label %1846, label %1849

1846:                                             ; preds = %1838
  %1847 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1848 = tail call ptr @GetMemory(i32 noundef %1841, ptr noundef %1847) #8
  store ptr %1848, ptr @zz_hold, align 8, !tbaa !8
  br label %1851

1849:                                             ; preds = %1838
  store ptr %1844, ptr @zz_hold, align 8, !tbaa !8
  %1850 = load ptr, ptr %1844, align 8, !tbaa !5
  store ptr %1850, ptr %1843, align 8, !tbaa !8
  br label %1851

1851:                                             ; preds = %1846, %1849
  %1852 = phi ptr [ %1848, %1846 ], [ %1844, %1849 ]
  %1853 = getelementptr inbounds %struct.word_type, ptr %1852, i64 0, i32 1
  store i8 17, ptr %1853, align 8, !tbaa !5
  %1854 = getelementptr inbounds [2 x %struct.LIST], ptr %1852, i64 0, i64 1, i32 1
  store ptr %1852, ptr %1854, align 8, !tbaa !5
  %1855 = getelementptr inbounds [2 x %struct.LIST], ptr %1852, i64 0, i64 1
  store ptr %1852, ptr %1855, align 8, !tbaa !5
  %1856 = getelementptr inbounds %struct.LIST, ptr %1852, i64 0, i32 1
  store ptr %1852, ptr %1856, align 8, !tbaa !5
  store ptr %1852, ptr %1852, align 8, !tbaa !5
  %1857 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store ptr %1852, ptr %1857, align 8, !tbaa !5
  %1858 = tail call ptr @MinSize(ptr noundef %1839, i32 noundef 1, ptr noundef nonnull %1857)
  %1859 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1860 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %1861 = getelementptr inbounds i8, ptr %0, i64 52
  %1862 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %1863 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %1864 = load i32, ptr %1863, align 4, !tbaa !5
  tail call void @RotateSize(ptr noundef nonnull %1859, ptr noundef nonnull %1860, ptr noundef nonnull %1861, ptr noundef nonnull %1862, ptr noundef %1858, i32 noundef %1864) #8
  br label %4192

1865:                                             ; preds = %1836
  %1866 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %1867 = load ptr, ptr %1866, align 8, !tbaa !5
  %1868 = getelementptr inbounds %struct.LIST, ptr %1867, i64 0, i32 1
  %1869 = load ptr, ptr %1868, align 8, !tbaa !5
  %1870 = load ptr, ptr %2, align 8, !tbaa !8
  %1871 = icmp eq ptr %1869, %1867
  br i1 %1871, label %1900, label %1872

1872:                                             ; preds = %1865
  %1873 = getelementptr inbounds %struct.word_type, ptr %1869, i64 0, i32 1
  %1874 = load i8, ptr %1873, align 8, !tbaa !5
  %1875 = icmp eq i8 %1874, 0
  br i1 %1875, label %1879, label %1876

1876:                                             ; preds = %1872
  %1877 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1878 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1877, ptr noundef nonnull @.str.12) #8
  br label %1879

1879:                                             ; preds = %1876, %1872
  store ptr %1869, ptr @zz_res, align 8, !tbaa !8
  store ptr %1867, ptr @zz_hold, align 8, !tbaa !8
  %1880 = load ptr, ptr %1867, align 8, !tbaa !5
  store ptr %1880, ptr @zz_tmp, align 8, !tbaa !8
  %1881 = load ptr, ptr %1869, align 8, !tbaa !5
  store ptr %1881, ptr %1867, align 8, !tbaa !5
  %1882 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1883 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1884 = load ptr, ptr %1883, align 8, !tbaa !5
  %1885 = getelementptr inbounds %struct.LIST, ptr %1884, i64 0, i32 1
  store ptr %1882, ptr %1885, align 8, !tbaa !5
  %1886 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1886, ptr %1883, align 8, !tbaa !5
  %1887 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1888 = getelementptr inbounds %struct.LIST, ptr %1886, i64 0, i32 1
  store ptr %1887, ptr %1888, align 8, !tbaa !5
  store ptr %1869, ptr @zz_res, align 8, !tbaa !8
  store ptr %1870, ptr @zz_hold, align 8, !tbaa !8
  %1889 = icmp eq ptr %1870, null
  br i1 %1889, label %1900, label %1890

1890:                                             ; preds = %1879
  %1891 = load ptr, ptr %1870, align 8, !tbaa !5
  store ptr %1891, ptr @zz_tmp, align 8, !tbaa !8
  %1892 = load ptr, ptr %1869, align 8, !tbaa !5
  store ptr %1892, ptr %1870, align 8, !tbaa !5
  %1893 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1894 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1895 = load ptr, ptr %1894, align 8, !tbaa !5
  %1896 = getelementptr inbounds %struct.LIST, ptr %1895, i64 0, i32 1
  store ptr %1893, ptr %1896, align 8, !tbaa !5
  %1897 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1897, ptr %1894, align 8, !tbaa !5
  %1898 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1899 = getelementptr inbounds %struct.LIST, ptr %1897, i64 0, i32 1
  store ptr %1898, ptr %1899, align 8, !tbaa !5
  br label %1900

1900:                                             ; preds = %1879, %1890, %1865
  %1901 = load ptr, ptr %1866, align 8, !tbaa !5
  store ptr %1901, ptr @zz_hold, align 8, !tbaa !8
  %1902 = getelementptr inbounds %struct.word_type, ptr %1901, i64 0, i32 1
  %1903 = load i8, ptr %1902, align 8, !tbaa !5
  %1904 = add i8 %1903, -11
  %1905 = icmp ult i8 %1904, 2
  %1906 = getelementptr inbounds %struct.word_type, ptr %1901, i64 0, i32 1, i32 0, i32 1
  %1907 = zext i8 %1903 to i64
  %1908 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1907
  %1909 = select i1 %1905, ptr %1906, ptr %1908
  %1910 = load i8, ptr %1909, align 1, !tbaa !5
  %1911 = zext i8 %1910 to i32
  store i32 %1911, ptr @zz_size, align 4, !tbaa !10
  %1912 = zext i8 %1910 to i64
  %1913 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1912
  %1914 = load ptr, ptr %1913, align 8, !tbaa !8
  store ptr %1914, ptr %1901, align 8, !tbaa !5
  %1915 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1916 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1917 = sext i32 %1916 to i64
  %1918 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1917
  store ptr %1915, ptr %1918, align 8, !tbaa !8
  br label %4192

1919:                                             ; preds = %3
  %1920 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1921 = load ptr, ptr %1920, align 8, !tbaa !5
  br label %1922

1922:                                             ; preds = %1922, %1919
  %1923 = phi ptr [ %1921, %1919 ], [ %1925, %1922 ]
  %1924 = getelementptr inbounds [2 x %struct.LIST], ptr %1923, i64 0, i64 1
  %1925 = load ptr, ptr %1924, align 8, !tbaa !5
  %1926 = getelementptr inbounds %struct.word_type, ptr %1925, i64 0, i32 1
  %1927 = load i8, ptr %1926, align 8, !tbaa !5
  %1928 = icmp eq i8 %1927, 0
  br i1 %1928, label %1922, label %1929

1929:                                             ; preds = %1922
  %1930 = tail call ptr @MinSize(ptr noundef nonnull %1925, i32 noundef %1, ptr noundef %2)
  %1931 = icmp eq i32 %1, 0
  %1932 = getelementptr inbounds %struct.word_type, ptr %1930, i64 0, i32 3
  br i1 %1931, label %1933, label %2012

1933:                                             ; preds = %1929
  %1934 = load i32, ptr %1932, align 4, !tbaa !5
  %1935 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %1936 = load i32, ptr %1935, align 8, !tbaa !5
  %1937 = mul nsw i32 %1936, %1934
  %1938 = sdiv i32 %1937, 128
  %1939 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %1938, ptr %1939, align 4, !tbaa !5
  %1940 = getelementptr inbounds %struct.word_type, ptr %1930, i64 0, i32 3, i32 1
  %1941 = load i32, ptr %1940, align 4, !tbaa !5
  %1942 = mul nsw i32 %1941, %1936
  %1943 = sdiv i32 %1942, 128
  %1944 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %1943, ptr %1944, align 4, !tbaa !5
  %1945 = icmp eq i32 %1936, 0
  br i1 %1945, label %1946, label %4192

1946:                                             ; preds = %1933
  %1947 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 136), align 1, !tbaa !5
  %1948 = zext i8 %1947 to i32
  store i32 %1948, ptr @zz_size, align 4, !tbaa !10
  %1949 = zext i8 %1947 to i64
  %1950 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1949
  %1951 = load ptr, ptr %1950, align 8, !tbaa !8
  %1952 = icmp eq ptr %1951, null
  br i1 %1952, label %1953, label %1956

1953:                                             ; preds = %1946
  %1954 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1955 = tail call ptr @GetMemory(i32 noundef %1948, ptr noundef %1954) #8
  store ptr %1955, ptr @zz_hold, align 8, !tbaa !8
  br label %1958

1956:                                             ; preds = %1946
  store ptr %1951, ptr @zz_hold, align 8, !tbaa !8
  %1957 = load ptr, ptr %1951, align 8, !tbaa !5
  store ptr %1957, ptr %1950, align 8, !tbaa !8
  br label %1958

1958:                                             ; preds = %1953, %1956
  %1959 = phi ptr [ %1955, %1953 ], [ %1951, %1956 ]
  %1960 = getelementptr inbounds %struct.word_type, ptr %1959, i64 0, i32 1
  store i8 -120, ptr %1960, align 8, !tbaa !5
  %1961 = getelementptr inbounds [2 x %struct.LIST], ptr %1959, i64 0, i64 1
  %1962 = getelementptr inbounds [2 x %struct.LIST], ptr %1959, i64 0, i64 1, i32 1
  store ptr %1959, ptr %1962, align 8, !tbaa !5
  store ptr %1959, ptr %1961, align 8, !tbaa !5
  %1963 = getelementptr inbounds %struct.LIST, ptr %1959, i64 0, i32 1
  store ptr %1959, ptr %1963, align 8, !tbaa !5
  store ptr %1959, ptr %1959, align 8, !tbaa !5
  %1964 = getelementptr inbounds %struct.closure_type, ptr %1959, i64 0, i32 5
  store ptr %0, ptr %1964, align 8, !tbaa !5
  %1965 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1966 = zext i8 %1965 to i32
  store i32 %1966, ptr @zz_size, align 4, !tbaa !10
  %1967 = zext i8 %1965 to i64
  %1968 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1967
  %1969 = load ptr, ptr %1968, align 8, !tbaa !8
  %1970 = icmp eq ptr %1969, null
  br i1 %1970, label %1971, label %1974

1971:                                             ; preds = %1958
  %1972 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1973 = tail call ptr @GetMemory(i32 noundef %1966, ptr noundef %1972) #8
  store ptr %1973, ptr @zz_hold, align 8, !tbaa !8
  br label %1976

1974:                                             ; preds = %1958
  store ptr %1969, ptr @zz_hold, align 8, !tbaa !8
  %1975 = load ptr, ptr %1969, align 8, !tbaa !5
  store ptr %1975, ptr %1968, align 8, !tbaa !8
  br label %1976

1976:                                             ; preds = %1971, %1974
  %1977 = phi ptr [ %1973, %1971 ], [ %1969, %1974 ]
  %1978 = getelementptr inbounds %struct.word_type, ptr %1977, i64 0, i32 1
  store i8 0, ptr %1978, align 8, !tbaa !5
  %1979 = getelementptr inbounds [2 x %struct.LIST], ptr %1977, i64 0, i64 1, i32 1
  store ptr %1977, ptr %1979, align 8, !tbaa !5
  %1980 = getelementptr inbounds [2 x %struct.LIST], ptr %1977, i64 0, i64 1
  store ptr %1977, ptr %1980, align 8, !tbaa !5
  %1981 = getelementptr inbounds %struct.LIST, ptr %1977, i64 0, i32 1
  store ptr %1977, ptr %1981, align 8, !tbaa !5
  store ptr %1977, ptr %1977, align 8, !tbaa !5
  store ptr %1977, ptr @xx_link, align 8, !tbaa !8
  store ptr %1977, ptr @zz_res, align 8, !tbaa !8
  %1982 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %1982, ptr @zz_hold, align 8, !tbaa !8
  %1983 = icmp eq ptr %1982, null
  br i1 %1983, label %1984, label %1985

1984:                                             ; preds = %1976
  store ptr %1977, ptr @zz_res, align 8, !tbaa !8
  store ptr %1959, ptr @zz_hold, align 8, !tbaa !8
  br label %2000

1985:                                             ; preds = %1976
  %1986 = load ptr, ptr %1982, align 8, !tbaa !5
  store ptr %1986, ptr @zz_tmp, align 8, !tbaa !8
  %1987 = load ptr, ptr %1977, align 8, !tbaa !5
  store ptr %1987, ptr %1982, align 8, !tbaa !5
  %1988 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1989 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1990 = load ptr, ptr %1989, align 8, !tbaa !5
  %1991 = getelementptr inbounds %struct.LIST, ptr %1990, i64 0, i32 1
  store ptr %1988, ptr %1991, align 8, !tbaa !5
  %1992 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1992, ptr %1989, align 8, !tbaa !5
  %1993 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1994 = getelementptr inbounds %struct.LIST, ptr %1992, i64 0, i32 1
  store ptr %1993, ptr %1994, align 8, !tbaa !5
  %1995 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1995, ptr @zz_res, align 8, !tbaa !8
  store ptr %1959, ptr @zz_hold, align 8, !tbaa !8
  %1996 = icmp eq ptr %1995, null
  br i1 %1996, label %2008, label %1997

1997:                                             ; preds = %1985
  %1998 = getelementptr inbounds [2 x %struct.LIST], ptr %1995, i64 0, i64 1
  %1999 = load ptr, ptr %1998, align 8, !tbaa !5
  br label %2000

2000:                                             ; preds = %1997, %1984
  %2001 = phi ptr [ %1977, %1984 ], [ %1999, %1997 ]
  %2002 = phi ptr [ %1977, %1984 ], [ %1995, %1997 ]
  %2003 = load ptr, ptr %1961, align 8, !tbaa !5
  store ptr %2003, ptr @zz_tmp, align 8, !tbaa !8
  %2004 = getelementptr inbounds [2 x %struct.LIST], ptr %2002, i64 0, i64 1
  store ptr %2001, ptr %1961, align 8, !tbaa !5
  %2005 = load ptr, ptr %2004, align 8, !tbaa !5
  %2006 = getelementptr inbounds [2 x %struct.LIST], ptr %2005, i64 0, i64 1, i32 1
  store ptr %1959, ptr %2006, align 8, !tbaa !5
  store ptr %2003, ptr %2004, align 8, !tbaa !5
  %2007 = getelementptr inbounds [2 x %struct.LIST], ptr %2003, i64 0, i64 1, i32 1
  store ptr %2002, ptr %2007, align 8, !tbaa !5
  br label %2008

2008:                                             ; preds = %1985, %2000
  %2009 = getelementptr inbounds i8, ptr %0, i64 42
  %2010 = load i16, ptr %2009, align 2
  %2011 = and i16 %2010, -2
  store i16 %2011, ptr %2009, align 2
  br label %4192

2012:                                             ; preds = %1929
  %2013 = sext i32 %1 to i64
  %2014 = getelementptr inbounds [2 x i32], ptr %1932, i64 0, i64 %2013
  %2015 = load i32, ptr %2014, align 4, !tbaa !5
  %2016 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %2017 = load i32, ptr %2016, align 8, !tbaa !5
  %2018 = mul nsw i32 %2017, %2015
  %2019 = sdiv i32 %2018, 128
  %2020 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2021 = getelementptr inbounds [2 x i32], ptr %2020, i64 0, i64 %2013
  store i32 %2019, ptr %2021, align 4, !tbaa !5
  %2022 = getelementptr inbounds %struct.word_type, ptr %1930, i64 0, i32 3, i32 1
  %2023 = getelementptr inbounds [2 x i32], ptr %2022, i64 0, i64 %2013
  %2024 = load i32, ptr %2023, align 4, !tbaa !5
  %2025 = load i32, ptr %2016, align 8, !tbaa !5
  %2026 = mul nsw i32 %2025, %2024
  %2027 = sdiv i32 %2026, 128
  %2028 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2029 = getelementptr inbounds [2 x i32], ptr %2028, i64 0, i64 %2013
  store i32 %2027, ptr %2029, align 4, !tbaa !5
  %2030 = getelementptr inbounds i8, ptr %0, i64 42
  %2031 = load i16, ptr %2030, align 2
  %2032 = or i16 %2031, 1
  store i16 %2032, ptr %2030, align 2
  br label %4192

2033:                                             ; preds = %3
  %2034 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2035

2035:                                             ; preds = %2035, %2033
  %2036 = phi ptr [ %2034, %2033 ], [ %2038, %2035 ]
  %2037 = getelementptr inbounds [2 x %struct.LIST], ptr %2036, i64 0, i64 1
  %2038 = load ptr, ptr %2037, align 8, !tbaa !5
  %2039 = getelementptr inbounds %struct.word_type, ptr %2038, i64 0, i32 1
  %2040 = load i8, ptr %2039, align 8, !tbaa !5
  %2041 = icmp eq i8 %2040, 0
  br i1 %2041, label %2035, label %2042

2042:                                             ; preds = %2035
  %2043 = tail call ptr @MinSize(ptr noundef nonnull %2038, i32 noundef %1, ptr noundef %2)
  %2044 = icmp eq i32 %1, 0
  %2045 = getelementptr inbounds %struct.word_type, ptr %2043, i64 0, i32 3
  br i1 %2044, label %2046, label %2114

2046:                                             ; preds = %2042
  %2047 = load i32, ptr %2045, align 4, !tbaa !5
  %2048 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %2047, ptr %2048, align 4, !tbaa !5
  %2049 = getelementptr inbounds %struct.word_type, ptr %2043, i64 0, i32 3, i32 1
  %2050 = load i32, ptr %2049, align 4, !tbaa !5
  %2051 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %2050, ptr %2051, align 4, !tbaa !5
  %2052 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2053 = load ptr, ptr %2052, align 8, !tbaa !5
  br label %2054

2054:                                             ; preds = %2054, %2046
  %2055 = phi ptr [ %2053, %2046 ], [ %2057, %2054 ]
  %2056 = getelementptr inbounds [2 x %struct.LIST], ptr %2055, i64 0, i64 1
  %2057 = load ptr, ptr %2056, align 8, !tbaa !5
  %2058 = getelementptr inbounds %struct.word_type, ptr %2057, i64 0, i32 1
  %2059 = load i8, ptr %2058, align 8, !tbaa !5
  %2060 = icmp eq i8 %2059, 0
  br i1 %2060, label %2054, label %2061

2061:                                             ; preds = %2067, %2054
  %2062 = phi i8 [ %2059, %2054 ], [ %2072, %2067 ]
  %2063 = phi ptr [ %2057, %2054 ], [ %2070, %2067 ]
  switch i8 %2062, label %2077 [
    i8 17, label %2064
    i8 11, label %2074
    i8 12, label %2074
  ]

2064:                                             ; preds = %2061
  %2065 = getelementptr inbounds %struct.LIST, ptr %2063, i64 0, i32 1
  %2066 = load ptr, ptr %2065, align 8, !tbaa !5
  br label %2067

2067:                                             ; preds = %2067, %2064
  %2068 = phi ptr [ %2066, %2064 ], [ %2070, %2067 ]
  %2069 = getelementptr inbounds [2 x %struct.LIST], ptr %2068, i64 0, i64 1
  %2070 = load ptr, ptr %2069, align 8, !tbaa !5
  %2071 = getelementptr inbounds %struct.word_type, ptr %2070, i64 0, i32 1
  %2072 = load i8, ptr %2071, align 8, !tbaa !5
  %2073 = icmp eq i8 %2072, 0
  br i1 %2073, label %2067, label %2061

2074:                                             ; preds = %2061, %2061
  %2075 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 4
  %2076 = load i8, ptr %2075, align 8, !tbaa !5
  br label %2077

2077:                                             ; preds = %2061, %2074
  %2078 = phi i8 [ %2076, %2074 ], [ 0, %2061 ]
  %2079 = load ptr, ptr %0, align 8, !tbaa !5
  br label %2080

2080:                                             ; preds = %2080, %2077
  %2081 = phi ptr [ %2079, %2077 ], [ %2083, %2080 ]
  %2082 = getelementptr inbounds [2 x %struct.LIST], ptr %2081, i64 0, i64 1
  %2083 = load ptr, ptr %2082, align 8, !tbaa !5
  %2084 = getelementptr inbounds %struct.word_type, ptr %2083, i64 0, i32 1
  %2085 = load i8, ptr %2084, align 8, !tbaa !5
  %2086 = icmp eq i8 %2085, 0
  br i1 %2086, label %2080, label %2087

2087:                                             ; preds = %2092, %2080
  %2088 = phi i8 [ %2085, %2080 ], [ %2097, %2092 ]
  %2089 = phi ptr [ %2083, %2080 ], [ %2095, %2092 ]
  switch i8 %2088, label %4192 [
    i8 17, label %2090
    i8 11, label %2099
    i8 12, label %2099
  ]

2090:                                             ; preds = %2087
  %2091 = load ptr, ptr %2089, align 8, !tbaa !5
  br label %2092

2092:                                             ; preds = %2092, %2090
  %2093 = phi ptr [ %2091, %2090 ], [ %2095, %2092 ]
  %2094 = getelementptr inbounds [2 x %struct.LIST], ptr %2093, i64 0, i64 1
  %2095 = load ptr, ptr %2094, align 8, !tbaa !5
  %2096 = getelementptr inbounds %struct.word_type, ptr %2095, i64 0, i32 1
  %2097 = load i8, ptr %2096, align 8, !tbaa !5
  %2098 = icmp eq i8 %2097, 0
  br i1 %2098, label %2092, label %2087

2099:                                             ; preds = %2087, %2087
  %2100 = getelementptr inbounds %struct.word_type, ptr %2089, i64 0, i32 4
  %2101 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2100) #9
  %2102 = add i64 %2101, -1
  %2103 = getelementptr inbounds %struct.word_type, ptr %2089, i64 0, i32 4, i64 %2102
  %2104 = load i8, ptr %2103, align 1, !tbaa !5
  %2105 = icmp ne i8 %2104, 0
  %2106 = icmp ne i8 %2078, 0
  %2107 = select i1 %2105, i1 %2106, i1 false
  br i1 %2107, label %2108, label %4192

2108:                                             ; preds = %2099
  %2109 = getelementptr inbounds %struct.word_type, ptr %2089, i64 0, i32 2
  %2110 = load i32, ptr %2109, align 8
  %2111 = and i32 %2110, 4095
  %2112 = tail call fastcc i32 @KernLength(i32 noundef %2111, i8 noundef zeroext %2104, i8 noundef zeroext %2078), !range !16
  %2113 = add nsw i32 %2112, %2050
  store i32 %2113, ptr %2051, align 4, !tbaa !5
  br label %4192

2114:                                             ; preds = %2042
  %2115 = sext i32 %1 to i64
  %2116 = getelementptr inbounds [2 x i32], ptr %2045, i64 0, i64 %2115
  %2117 = load i32, ptr %2116, align 4, !tbaa !5
  %2118 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2119 = getelementptr inbounds [2 x i32], ptr %2118, i64 0, i64 %2115
  store i32 %2117, ptr %2119, align 4, !tbaa !5
  %2120 = getelementptr inbounds %struct.word_type, ptr %2043, i64 0, i32 3, i32 1
  %2121 = getelementptr inbounds [2 x i32], ptr %2120, i64 0, i64 %2115
  %2122 = load i32, ptr %2121, align 4, !tbaa !5
  %2123 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2124 = getelementptr inbounds [2 x i32], ptr %2123, i64 0, i64 %2115
  store i32 %2122, ptr %2124, align 4, !tbaa !5
  br label %4192

2125:                                             ; preds = %3
  %2126 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2127 = load ptr, ptr %2126, align 8, !tbaa !5
  br label %2128

2128:                                             ; preds = %2128, %2125
  %2129 = phi ptr [ %2127, %2125 ], [ %2131, %2128 ]
  %2130 = getelementptr inbounds [2 x %struct.LIST], ptr %2129, i64 0, i64 1
  %2131 = load ptr, ptr %2130, align 8, !tbaa !5
  %2132 = getelementptr inbounds %struct.word_type, ptr %2131, i64 0, i32 1
  %2133 = load i8, ptr %2132, align 8, !tbaa !5
  %2134 = icmp eq i8 %2133, 0
  br i1 %2134, label %2128, label %2135

2135:                                             ; preds = %2128
  %2136 = tail call ptr @MinSize(ptr noundef nonnull %2131, i32 noundef %1, ptr noundef %2)
  %2137 = icmp eq i32 %1, 0
  br i1 %2137, label %2138, label %2166

2138:                                             ; preds = %2135
  %2139 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %2140 = tail call ptr @BreakObject(ptr noundef %2136, ptr noundef nonnull %2139) #8
  %2141 = getelementptr inbounds %struct.word_type, ptr %2140, i64 0, i32 3
  %2142 = load i32, ptr %2141, align 4, !tbaa !5
  %2143 = load i32, ptr %2139, align 8, !tbaa !5
  %2144 = icmp sgt i32 %2142, %2143
  br i1 %2144, label %2156, label %2145

2145:                                             ; preds = %2138
  %2146 = getelementptr inbounds %struct.word_type, ptr %2140, i64 0, i32 3, i32 1
  %2147 = load i32, ptr %2146, align 4, !tbaa !5
  %2148 = add nsw i32 %2147, %2142
  %2149 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %2150 = load i32, ptr %2149, align 4, !tbaa !5
  %2151 = icmp sgt i32 %2148, %2150
  br i1 %2151, label %2156, label %2152

2152:                                             ; preds = %2145
  %2153 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %2154 = load i32, ptr %2153, align 8, !tbaa !5
  %2155 = icmp sgt i32 %2147, %2154
  br i1 %2155, label %2156, label %2160

2156:                                             ; preds = %2152, %2145, %2138
  %2157 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2158 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2157, ptr noundef nonnull @.str.13) #8
  %2159 = load i32, ptr %2141, align 4, !tbaa !5
  br label %2160

2160:                                             ; preds = %2156, %2152
  %2161 = phi i32 [ %2159, %2156 ], [ %2142, %2152 ]
  %2162 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %2161, ptr %2162, align 4, !tbaa !5
  %2163 = getelementptr inbounds %struct.word_type, ptr %2140, i64 0, i32 3, i32 1
  %2164 = load i32, ptr %2163, align 4, !tbaa !5
  %2165 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %2164, ptr %2165, align 4, !tbaa !5
  tail call void @EnlargeToConstraint(ptr noundef nonnull %2162, ptr noundef nonnull %2165, ptr noundef nonnull %2139) #8
  br label %4192

2166:                                             ; preds = %2135
  %2167 = getelementptr inbounds %struct.word_type, ptr %2136, i64 0, i32 3
  %2168 = sext i32 %1 to i64
  %2169 = getelementptr inbounds [2 x i32], ptr %2167, i64 0, i64 %2168
  %2170 = load i32, ptr %2169, align 4, !tbaa !5
  %2171 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2172 = getelementptr inbounds [2 x i32], ptr %2171, i64 0, i64 %2168
  store i32 %2170, ptr %2172, align 4, !tbaa !5
  %2173 = getelementptr inbounds %struct.word_type, ptr %2136, i64 0, i32 3, i32 1
  %2174 = getelementptr inbounds [2 x i32], ptr %2173, i64 0, i64 %2168
  %2175 = load i32, ptr %2174, align 4, !tbaa !5
  %2176 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2177 = getelementptr inbounds [2 x i32], ptr %2176, i64 0, i64 %2168
  store i32 %2175, ptr %2177, align 4, !tbaa !5
  br label %4192

2178:                                             ; preds = %3
  %2179 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2180 = load ptr, ptr %2179, align 8, !tbaa !5
  br label %2181

2181:                                             ; preds = %2181, %2178
  %2182 = phi ptr [ %2180, %2178 ], [ %2184, %2181 ]
  %2183 = getelementptr inbounds [2 x %struct.LIST], ptr %2182, i64 0, i64 1
  %2184 = load ptr, ptr %2183, align 8, !tbaa !5
  %2185 = getelementptr inbounds %struct.word_type, ptr %2184, i64 0, i32 1
  %2186 = load i8, ptr %2185, align 8, !tbaa !5
  %2187 = icmp eq i8 %2186, 0
  br i1 %2187, label %2181, label %2188

2188:                                             ; preds = %2181
  %2189 = tail call ptr @MinSize(ptr noundef nonnull %2184, i32 noundef %1, ptr noundef %2)
  %2190 = icmp eq i32 %1, 1
  br i1 %2190, label %2191, label %2232

2191:                                             ; preds = %2188
  %2192 = getelementptr inbounds i8, ptr %2189, i64 52
  %2193 = load i32, ptr %2192, align 4, !tbaa !5
  %2194 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %2195 = load i32, ptr %2194, align 8, !tbaa !5
  %2196 = icmp sgt i32 %2193, %2195
  br i1 %2196, label %2197, label %2200

2197:                                             ; preds = %2191
  %2198 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %2199 = load i32, ptr %2198, align 4, !tbaa !5
  br label %2211

2200:                                             ; preds = %2191
  %2201 = getelementptr inbounds %struct.word_type, ptr %2189, i64 0, i32 3, i32 1, i64 4
  %2202 = load i32, ptr %2201, align 4, !tbaa !5
  %2203 = add nsw i32 %2202, %2193
  %2204 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %2205 = load i32, ptr %2204, align 4, !tbaa !5
  %2206 = icmp sgt i32 %2203, %2205
  br i1 %2206, label %2211, label %2207

2207:                                             ; preds = %2200
  %2208 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %2209 = load i32, ptr %2208, align 8, !tbaa !5
  %2210 = icmp sgt i32 %2202, %2209
  br i1 %2210, label %2211, label %2226

2211:                                             ; preds = %2197, %2207, %2200
  %2212 = phi i32 [ %2199, %2197 ], [ %2205, %2207 ], [ %2205, %2200 ]
  %2213 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %2214 = tail call ptr @EchoLength(i32 noundef %2212) #8
  %2215 = load i32, ptr %2192, align 4, !tbaa !5
  %2216 = getelementptr inbounds %struct.word_type, ptr %2189, i64 0, i32 3, i32 1, i64 4
  %2217 = load i32, ptr %2216, align 4, !tbaa !5
  %2218 = add nsw i32 %2217, %2215
  %2219 = tail call ptr @EchoLength(i32 noundef %2218) #8
  %2220 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull @.str.15, ptr noundef %2214, ptr noundef %2219) #8
  store i32 8388607, ptr %2194, align 8, !tbaa !5
  %2221 = load i32, ptr %2192, align 4, !tbaa !5
  %2222 = load i32, ptr %2216, align 4, !tbaa !5
  %2223 = add nsw i32 %2222, %2221
  store i32 %2223, ptr %2213, align 4, !tbaa !5
  %2224 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %2224, align 8, !tbaa !5
  %2225 = load i32, ptr %2192, align 4, !tbaa !5
  br label %2226

2226:                                             ; preds = %2211, %2207
  %2227 = phi i32 [ %2225, %2211 ], [ %2193, %2207 ]
  %2228 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %2227, ptr %2228, align 4, !tbaa !5
  %2229 = getelementptr inbounds %struct.word_type, ptr %2189, i64 0, i32 3, i32 1, i64 4
  %2230 = load i32, ptr %2229, align 4, !tbaa !5
  %2231 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  store i32 %2230, ptr %2231, align 4, !tbaa !5
  tail call void @EnlargeToConstraint(ptr noundef nonnull %2228, ptr noundef nonnull %2231, ptr noundef nonnull %2194) #8
  br label %4192

2232:                                             ; preds = %2188
  %2233 = getelementptr inbounds %struct.word_type, ptr %2189, i64 0, i32 3
  %2234 = sext i32 %1 to i64
  %2235 = getelementptr inbounds [2 x i32], ptr %2233, i64 0, i64 %2234
  %2236 = load i32, ptr %2235, align 4, !tbaa !5
  %2237 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2238 = getelementptr inbounds [2 x i32], ptr %2237, i64 0, i64 %2234
  store i32 %2236, ptr %2238, align 4, !tbaa !5
  %2239 = getelementptr inbounds %struct.word_type, ptr %2189, i64 0, i32 3, i32 1
  %2240 = getelementptr inbounds [2 x i32], ptr %2239, i64 0, i64 %2234
  %2241 = load i32, ptr %2240, align 4, !tbaa !5
  %2242 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2243 = getelementptr inbounds [2 x i32], ptr %2242, i64 0, i64 %2234
  store i32 %2241, ptr %2243, align 4, !tbaa !5
  br label %4192

2244:                                             ; preds = %3, %3
  %2245 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2246 = load ptr, ptr %2245, align 8, !tbaa !5
  br label %2247

2247:                                             ; preds = %2247, %2244
  %2248 = phi ptr [ %2246, %2244 ], [ %2250, %2247 ]
  %2249 = getelementptr inbounds [2 x %struct.LIST], ptr %2248, i64 0, i64 1
  %2250 = load ptr, ptr %2249, align 8, !tbaa !5
  %2251 = getelementptr inbounds %struct.word_type, ptr %2250, i64 0, i32 1
  %2252 = load i8, ptr %2251, align 8, !tbaa !5
  %2253 = icmp eq i8 %2252, 0
  br i1 %2253, label %2247, label %2254

2254:                                             ; preds = %2247
  %2255 = tail call ptr @MinSize(ptr noundef nonnull %2250, i32 noundef %1, ptr noundef %2)
  %2256 = icmp eq i32 %1, 0
  %2257 = load i8, ptr %14, align 8, !tbaa !5
  %2258 = icmp ne i8 %2257, 28
  %2259 = xor i1 %2256, %2258
  br i1 %2259, label %2260, label %2279

2260:                                             ; preds = %2254
  %2261 = tail call i32 @FindShift(ptr noundef nonnull %0, ptr noundef %2255, i32 noundef %1) #8
  store i32 %2261, ptr %6, align 4, !tbaa !10
  %2262 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 3
  %2263 = sext i32 %1 to i64
  %2264 = getelementptr inbounds [2 x i32], ptr %2262, i64 0, i64 %2263
  %2265 = load i32, ptr %2264, align 4, !tbaa !5
  %2266 = add nsw i32 %2265, %2261
  %2267 = tail call i32 @llvm.smax.i32(i32 %2266, i32 0)
  %2268 = tail call i32 @llvm.smin.i32(i32 %2267, i32 8388607)
  %2269 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2270 = getelementptr inbounds [2 x i32], ptr %2269, i64 0, i64 %2263
  store i32 %2268, ptr %2270, align 4, !tbaa !5
  %2271 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 3, i32 1
  %2272 = getelementptr inbounds [2 x i32], ptr %2271, i64 0, i64 %2263
  %2273 = load i32, ptr %2272, align 4, !tbaa !5
  %2274 = sub nsw i32 %2273, %2261
  %2275 = tail call i32 @llvm.smax.i32(i32 %2274, i32 0)
  %2276 = tail call i32 @llvm.smin.i32(i32 %2275, i32 8388607)
  %2277 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2278 = getelementptr inbounds [2 x i32], ptr %2277, i64 0, i64 %2263
  store i32 %2276, ptr %2278, align 4, !tbaa !5
  br label %4192

2279:                                             ; preds = %2254
  %2280 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 3
  %2281 = sext i32 %1 to i64
  %2282 = getelementptr inbounds [2 x i32], ptr %2280, i64 0, i64 %2281
  %2283 = load i32, ptr %2282, align 4, !tbaa !5
  %2284 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2285 = getelementptr inbounds [2 x i32], ptr %2284, i64 0, i64 %2281
  store i32 %2283, ptr %2285, align 4, !tbaa !5
  %2286 = getelementptr inbounds %struct.word_type, ptr %2255, i64 0, i32 3, i32 1
  %2287 = getelementptr inbounds [2 x i32], ptr %2286, i64 0, i64 %2281
  %2288 = load i32, ptr %2287, align 4, !tbaa !5
  %2289 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2290 = getelementptr inbounds [2 x i32], ptr %2289, i64 0, i64 %2281
  store i32 %2288, ptr %2290, align 4, !tbaa !5
  br label %4192

2291:                                             ; preds = %3
  %2292 = icmp eq i32 %1, 0
  %2293 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2294 = select i1 %2292, ptr %2293, ptr %0
  %2295 = load ptr, ptr %2294, align 8, !tbaa !5
  br label %2296

2296:                                             ; preds = %2296, %2291
  %2297 = phi ptr [ %2295, %2291 ], [ %2299, %2296 ]
  %2298 = getelementptr inbounds [2 x %struct.LIST], ptr %2297, i64 0, i64 1
  %2299 = load ptr, ptr %2298, align 8, !tbaa !5
  %2300 = getelementptr inbounds %struct.word_type, ptr %2299, i64 0, i32 1
  %2301 = load i8, ptr %2300, align 8, !tbaa !5
  %2302 = icmp eq i8 %2301, 0
  br i1 %2302, label %2296, label %2303

2303:                                             ; preds = %2296
  %2304 = tail call ptr @MinSize(ptr noundef nonnull %2299, i32 noundef %1, ptr noundef %2)
  %2305 = getelementptr inbounds %struct.word_type, ptr %2304, i64 0, i32 3
  %2306 = sext i32 %1 to i64
  %2307 = getelementptr inbounds [2 x i32], ptr %2305, i64 0, i64 %2306
  %2308 = load i32, ptr %2307, align 4, !tbaa !5
  %2309 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2310 = getelementptr inbounds [2 x i32], ptr %2309, i64 0, i64 %2306
  store i32 %2308, ptr %2310, align 4, !tbaa !5
  %2311 = getelementptr inbounds %struct.word_type, ptr %2304, i64 0, i32 3, i32 1
  %2312 = getelementptr inbounds [2 x i32], ptr %2311, i64 0, i64 %2306
  %2313 = load i32, ptr %2312, align 4, !tbaa !5
  %2314 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2315 = getelementptr inbounds [2 x i32], ptr %2314, i64 0, i64 %2306
  store i32 %2313, ptr %2315, align 4, !tbaa !5
  br label %4192

2316:                                             ; preds = %3
  %2317 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %2318 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %2319 = load i8, ptr %2318, align 4
  %2320 = and i8 %2319, 12
  %2321 = icmp eq i8 %2320, 4
  br i1 %2321, label %2322, label %3048

2322:                                             ; preds = %2316
  %2323 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %2324 = load ptr, ptr %2323, align 8, !tbaa !5
  %2325 = icmp eq ptr %2324, %0
  br i1 %2325, label %3048, label %2326

2326:                                             ; preds = %2322, %2418
  %2327 = phi ptr [ %2423, %2418 ], [ %2324, %2322 ]
  %2328 = phi ptr [ %2421, %2418 ], [ %0, %2322 ]
  br label %2329

2329:                                             ; preds = %2326, %2329
  %2330 = phi ptr [ %2332, %2329 ], [ %2327, %2326 ]
  %2331 = getelementptr inbounds [2 x %struct.LIST], ptr %2330, i64 0, i64 1
  %2332 = load ptr, ptr %2331, align 8, !tbaa !5
  %2333 = getelementptr inbounds %struct.word_type, ptr %2332, i64 0, i32 1
  %2334 = load i8, ptr %2333, align 8, !tbaa !5
  switch i8 %2334, label %2418 [
    i8 0, label %2329
    i8 17, label %2335
  ]

2335:                                             ; preds = %2329
  %2336 = getelementptr inbounds %struct.LIST, ptr %2332, i64 0, i32 1
  %2337 = load ptr, ptr %2336, align 8, !tbaa !5
  %2338 = icmp eq ptr %2337, %2332
  br i1 %2338, label %2367, label %2339

2339:                                             ; preds = %2335
  %2340 = getelementptr inbounds %struct.word_type, ptr %2337, i64 0, i32 1
  %2341 = load i8, ptr %2340, align 8, !tbaa !5
  %2342 = icmp eq i8 %2341, 0
  br i1 %2342, label %2346, label %2343

2343:                                             ; preds = %2339
  %2344 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2345 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2344, ptr noundef nonnull @.str.12) #8
  br label %2346

2346:                                             ; preds = %2343, %2339
  store ptr %2337, ptr @zz_res, align 8, !tbaa !8
  store ptr %2332, ptr @zz_hold, align 8, !tbaa !8
  %2347 = load ptr, ptr %2332, align 8, !tbaa !5
  store ptr %2347, ptr @zz_tmp, align 8, !tbaa !8
  %2348 = load ptr, ptr %2337, align 8, !tbaa !5
  store ptr %2348, ptr %2332, align 8, !tbaa !5
  %2349 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2350 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2351 = load ptr, ptr %2350, align 8, !tbaa !5
  %2352 = getelementptr inbounds %struct.LIST, ptr %2351, i64 0, i32 1
  store ptr %2349, ptr %2352, align 8, !tbaa !5
  %2353 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2353, ptr %2350, align 8, !tbaa !5
  %2354 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2355 = getelementptr inbounds %struct.LIST, ptr %2353, i64 0, i32 1
  store ptr %2354, ptr %2355, align 8, !tbaa !5
  store ptr %2337, ptr @zz_res, align 8, !tbaa !8
  store ptr %2327, ptr @zz_hold, align 8, !tbaa !8
  %2356 = icmp eq ptr %2327, null
  br i1 %2356, label %2367, label %2357

2357:                                             ; preds = %2346
  %2358 = load ptr, ptr %2327, align 8, !tbaa !5
  store ptr %2358, ptr @zz_tmp, align 8, !tbaa !8
  %2359 = load ptr, ptr %2337, align 8, !tbaa !5
  store ptr %2359, ptr %2327, align 8, !tbaa !5
  %2360 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2361 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2362 = load ptr, ptr %2361, align 8, !tbaa !5
  %2363 = getelementptr inbounds %struct.LIST, ptr %2362, i64 0, i32 1
  store ptr %2360, ptr %2363, align 8, !tbaa !5
  %2364 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2364, ptr %2361, align 8, !tbaa !5
  %2365 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2366 = getelementptr inbounds %struct.LIST, ptr %2364, i64 0, i32 1
  store ptr %2365, ptr %2366, align 8, !tbaa !5
  br label %2367

2367:                                             ; preds = %2346, %2357, %2335
  %2368 = getelementptr inbounds [2 x %struct.LIST], ptr %2332, i64 0, i64 1, i32 1
  %2369 = load ptr, ptr %2368, align 8, !tbaa !5
  store ptr %2369, ptr @xx_link, align 8, !tbaa !8
  %2370 = getelementptr inbounds [2 x %struct.LIST], ptr %2369, i64 0, i64 1, i32 1
  %2371 = load ptr, ptr %2370, align 8, !tbaa !5
  %2372 = icmp eq ptr %2371, %2369
  br i1 %2372, label %2378, label %2373

2373:                                             ; preds = %2367
  store ptr %2371, ptr @zz_res, align 8, !tbaa !8
  %2374 = getelementptr inbounds [2 x %struct.LIST], ptr %2369, i64 0, i64 1
  %2375 = load ptr, ptr %2374, align 8, !tbaa !5
  %2376 = getelementptr inbounds [2 x %struct.LIST], ptr %2371, i64 0, i64 1
  store ptr %2375, ptr %2376, align 8, !tbaa !5
  %2377 = getelementptr inbounds [2 x %struct.LIST], ptr %2375, i64 0, i64 1, i32 1
  store ptr %2371, ptr %2377, align 8, !tbaa !5
  store ptr %2369, ptr %2370, align 8, !tbaa !5
  store ptr %2369, ptr %2374, align 8, !tbaa !5
  br label %2378

2378:                                             ; preds = %2367, %2373
  %2379 = phi ptr [ %2371, %2373 ], [ null, %2367 ]
  store ptr %2379, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2369, ptr @zz_hold, align 8, !tbaa !8
  %2380 = getelementptr inbounds %struct.LIST, ptr %2369, i64 0, i32 1
  %2381 = load ptr, ptr %2380, align 8, !tbaa !5
  %2382 = icmp eq ptr %2381, %2369
  br i1 %2382, label %2391, label %2383

2383:                                             ; preds = %2378
  store ptr %2381, ptr @zz_res, align 8, !tbaa !8
  %2384 = load ptr, ptr %2369, align 8, !tbaa !5
  store ptr %2384, ptr %2381, align 8, !tbaa !5
  %2385 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2386 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2387 = load ptr, ptr %2386, align 8, !tbaa !5
  %2388 = getelementptr inbounds %struct.LIST, ptr %2387, i64 0, i32 1
  store ptr %2385, ptr %2388, align 8, !tbaa !5
  %2389 = getelementptr inbounds %struct.LIST, ptr %2386, i64 0, i32 1
  store ptr %2386, ptr %2389, align 8, !tbaa !5
  store ptr %2386, ptr %2386, align 8, !tbaa !5
  %2390 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2391

2391:                                             ; preds = %2378, %2383
  %2392 = phi ptr [ %2369, %2378 ], [ %2390, %2383 ]
  store ptr %2392, ptr @zz_hold, align 8, !tbaa !8
  %2393 = getelementptr inbounds %struct.word_type, ptr %2392, i64 0, i32 1
  %2394 = load i8, ptr %2393, align 8, !tbaa !5
  %2395 = add i8 %2394, -11
  %2396 = icmp ult i8 %2395, 2
  %2397 = getelementptr inbounds %struct.word_type, ptr %2392, i64 0, i32 1, i32 0, i32 1
  %2398 = zext i8 %2394 to i64
  %2399 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2398
  %2400 = select i1 %2396, ptr %2397, ptr %2399
  %2401 = load i8, ptr %2400, align 1, !tbaa !5
  %2402 = zext i8 %2401 to i32
  store i32 %2402, ptr @zz_size, align 4, !tbaa !10
  %2403 = zext i8 %2401 to i64
  %2404 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2403
  %2405 = load ptr, ptr %2404, align 8, !tbaa !8
  store ptr %2405, ptr %2392, align 8, !tbaa !5
  %2406 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2407 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2408 = sext i32 %2407 to i64
  %2409 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2408
  store ptr %2406, ptr %2409, align 8, !tbaa !8
  %2410 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2411 = getelementptr inbounds [2 x %struct.LIST], ptr %2410, i64 0, i64 1, i32 1
  %2412 = load ptr, ptr %2411, align 8, !tbaa !5
  %2413 = icmp eq ptr %2412, %2410
  br i1 %2413, label %2414, label %2416

2414:                                             ; preds = %2391
  %2415 = tail call i32 @DisposeObject(ptr noundef nonnull %2410) #8
  br label %2416

2416:                                             ; preds = %2414, %2391
  %2417 = load ptr, ptr %2328, align 8, !tbaa !5
  br label %2418

2418:                                             ; preds = %2329, %2416
  %2419 = phi ptr [ %2417, %2416 ], [ %2328, %2329 ]
  %2420 = getelementptr inbounds %struct.LIST, ptr %2419, i64 0, i32 1
  %2421 = load ptr, ptr %2420, align 8, !tbaa !5
  %2422 = getelementptr inbounds %struct.LIST, ptr %2421, i64 0, i32 1
  %2423 = load ptr, ptr %2422, align 8, !tbaa !5
  %2424 = icmp eq ptr %2423, %0
  br i1 %2424, label %2425, label %2326

2425:                                             ; preds = %2418
  %2426 = load ptr, ptr %2323, align 8, !tbaa !5
  %2427 = icmp eq ptr %2426, %0
  br i1 %2427, label %3048, label %2428

2428:                                             ; preds = %2425, %2442
  %2429 = phi ptr [ %2444, %2442 ], [ %2426, %2425 ]
  br label %2430

2430:                                             ; preds = %2428, %2430
  %2431 = phi ptr [ %2433, %2430 ], [ %2429, %2428 ]
  %2432 = getelementptr inbounds [2 x %struct.LIST], ptr %2431, i64 0, i64 1
  %2433 = load ptr, ptr %2432, align 8, !tbaa !5
  %2434 = getelementptr inbounds %struct.word_type, ptr %2433, i64 0, i32 1
  %2435 = load i8, ptr %2434, align 8, !tbaa !5
  switch i8 %2435, label %2439 [
    i8 0, label %2430
    i8 1, label %2442
    i8 9, label %2436
  ]

2436:                                             ; preds = %2430
  %2437 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2433) #8
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2442, label %2446

2439:                                             ; preds = %2430
  %2440 = add i8 %2435, -9
  %2441 = icmp ult i8 %2440, 91
  br i1 %2441, label %2446, label %2442

2442:                                             ; preds = %2430, %2439, %2436
  %2443 = getelementptr inbounds %struct.LIST, ptr %2429, i64 0, i32 1
  %2444 = load ptr, ptr %2443, align 8, !tbaa !5
  %2445 = icmp eq ptr %2444, %0
  br i1 %2445, label %3048, label %2428

2446:                                             ; preds = %2436, %2439
  %2447 = getelementptr inbounds %struct.LIST, ptr %2429, i64 0, i32 1
  %2448 = load ptr, ptr %2447, align 8, !tbaa !5
  %2449 = icmp eq ptr %2448, %0
  br i1 %2449, label %3048, label %2450

2450:                                             ; preds = %2446, %2470
  %2451 = phi ptr [ %2473, %2470 ], [ %2448, %2446 ]
  %2452 = phi ptr [ %2471, %2470 ], [ null, %2446 ]
  br label %2453

2453:                                             ; preds = %2450, %2453
  %2454 = phi ptr [ %2456, %2453 ], [ %2451, %2450 ]
  %2455 = getelementptr inbounds [2 x %struct.LIST], ptr %2454, i64 0, i64 1
  %2456 = load ptr, ptr %2455, align 8, !tbaa !5
  %2457 = getelementptr inbounds %struct.word_type, ptr %2456, i64 0, i32 1
  %2458 = load i8, ptr %2457, align 8, !tbaa !5
  switch i8 %2458, label %2462 [
    i8 0, label %2453
    i8 1, label %2470
    i8 9, label %2459
  ]

2459:                                             ; preds = %2453
  %2460 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2456) #8
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2470, label %2465

2462:                                             ; preds = %2453
  %2463 = add i8 %2458, -9
  %2464 = icmp ult i8 %2463, 91
  br i1 %2464, label %2465, label %2470

2465:                                             ; preds = %2462, %2459
  %2466 = icmp eq ptr %2452, null
  br i1 %2466, label %2467, label %2475

2467:                                             ; preds = %2465
  %2468 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2469 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2468, ptr noundef nonnull @.str.16) #8
  br label %2475

2470:                                             ; preds = %2453, %2462, %2459
  %2471 = phi ptr [ %2452, %2459 ], [ %2452, %2462 ], [ %2456, %2453 ]
  %2472 = getelementptr inbounds %struct.LIST, ptr %2451, i64 0, i32 1
  %2473 = load ptr, ptr %2472, align 8, !tbaa !5
  %2474 = icmp eq ptr %2473, %0
  br i1 %2474, label %3048, label %2450

2475:                                             ; preds = %2465, %2467
  %2476 = icmp eq ptr %2451, %0
  br i1 %2476, label %3048, label %2477

2477:                                             ; preds = %2475
  %2478 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %2479 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %2480 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %2483 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %2484 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 3
  br label %2485

2485:                                             ; preds = %2477, %3006
  %2486 = phi ptr [ %2451, %2477 ], [ %2982, %3006 ]
  %2487 = phi ptr [ null, %2477 ], [ %2977, %3006 ]
  %2488 = phi ptr [ %2452, %2477 ], [ %2983, %3006 ]
  %2489 = getelementptr inbounds %struct.gapobj_type, ptr %2488, i64 0, i32 3
  %2490 = load i16, ptr %2489, align 4
  %2491 = icmp ult i16 %2490, 8192
  br i1 %2491, label %2976, label %2492

2492:                                             ; preds = %2485
  %2493 = getelementptr inbounds i8, ptr %2488, i64 42
  %2494 = load i8, ptr %2493, align 2, !tbaa !5
  %2495 = icmp eq i8 %2494, 0
  br i1 %2495, label %2496, label %2503

2496:                                             ; preds = %2492
  %2497 = and i16 %2490, 7168
  %2498 = icmp eq i16 %2497, 2048
  br i1 %2498, label %2499, label %2976

2499:                                             ; preds = %2496
  %2500 = getelementptr inbounds %struct.gapobj_type, ptr %2488, i64 0, i32 3, i32 1
  %2501 = load i16, ptr %2500, align 2, !tbaa !5
  %2502 = icmp sgt i16 %2501, 4096
  br i1 %2502, label %2503, label %2976

2503:                                             ; preds = %2499, %2492
  %2504 = icmp eq ptr %2487, null
  br i1 %2504, label %2505, label %2537

2505:                                             ; preds = %2503
  %2506 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 19), align 1, !tbaa !5
  %2507 = zext i8 %2506 to i32
  store i32 %2507, ptr @zz_size, align 4, !tbaa !10
  %2508 = zext i8 %2506 to i64
  %2509 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2508
  %2510 = load ptr, ptr %2509, align 8, !tbaa !8
  %2511 = icmp eq ptr %2510, null
  br i1 %2511, label %2512, label %2515

2512:                                             ; preds = %2505
  %2513 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2514 = tail call ptr @GetMemory(i32 noundef %2507, ptr noundef %2513) #8
  br label %2517

2515:                                             ; preds = %2505
  store ptr %2510, ptr @zz_hold, align 8, !tbaa !8
  %2516 = load ptr, ptr %2510, align 8, !tbaa !5
  store ptr %2516, ptr %2509, align 8, !tbaa !8
  br label %2517

2517:                                             ; preds = %2512, %2515
  %2518 = phi ptr [ %2514, %2512 ], [ %2510, %2515 ]
  %2519 = getelementptr inbounds %struct.word_type, ptr %2518, i64 0, i32 1
  store i8 19, ptr %2519, align 8, !tbaa !5
  %2520 = getelementptr inbounds [2 x %struct.LIST], ptr %2518, i64 0, i64 1, i32 1
  store ptr %2518, ptr %2520, align 8, !tbaa !5
  %2521 = getelementptr inbounds [2 x %struct.LIST], ptr %2518, i64 0, i64 1
  store ptr %2518, ptr %2521, align 8, !tbaa !5
  %2522 = getelementptr inbounds %struct.LIST, ptr %2518, i64 0, i32 1
  store ptr %2518, ptr %2522, align 8, !tbaa !5
  store ptr %2518, ptr %2518, align 8, !tbaa !5
  %2523 = getelementptr inbounds i8, ptr %2518, i64 42
  %2524 = load i16, ptr %2523, align 2
  %2525 = and i16 %2524, -2049
  store i16 %2525, ptr %2523, align 2
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %2526 = load ptr, ptr %2478, align 8, !tbaa !5
  %2527 = icmp eq ptr %2526, %0
  br i1 %2527, label %2528, label %2529

2528:                                             ; preds = %2517
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2518, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %2537

2529:                                             ; preds = %2517
  %2530 = load ptr, ptr %2479, align 8, !tbaa !5
  %2531 = getelementptr inbounds [2 x %struct.LIST], ptr %2526, i64 0, i64 1
  store ptr %2530, ptr %2531, align 8, !tbaa !5
  %2532 = getelementptr inbounds [2 x %struct.LIST], ptr %2530, i64 0, i64 1, i32 1
  store ptr %2526, ptr %2532, align 8, !tbaa !5
  store ptr %0, ptr %2478, align 8, !tbaa !5
  store ptr %0, ptr %2479, align 8, !tbaa !5
  store ptr %2526, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2518, ptr @zz_res, align 8, !tbaa !8
  store ptr %2526, ptr @zz_hold, align 8, !tbaa !8
  %2533 = load ptr, ptr %2531, align 8, !tbaa !5
  store ptr %2533, ptr @zz_tmp, align 8, !tbaa !8
  %2534 = load ptr, ptr %2521, align 8, !tbaa !5
  store ptr %2534, ptr %2531, align 8, !tbaa !5
  %2535 = getelementptr inbounds [2 x %struct.LIST], ptr %2534, i64 0, i64 1, i32 1
  store ptr %2526, ptr %2535, align 8, !tbaa !5
  store ptr %2533, ptr %2521, align 8, !tbaa !5
  %2536 = getelementptr inbounds [2 x %struct.LIST], ptr %2533, i64 0, i64 1, i32 1
  store ptr %2518, ptr %2536, align 8, !tbaa !5
  br label %2537

2537:                                             ; preds = %2528, %2529, %2503
  %2538 = phi ptr [ %2518, %2529 ], [ %2487, %2503 ], [ %2518, %2528 ]
  %2539 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %2540 = zext i8 %2539 to i32
  store i32 %2540, ptr @zz_size, align 4, !tbaa !10
  %2541 = zext i8 %2539 to i64
  %2542 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2541
  %2543 = load ptr, ptr %2542, align 8, !tbaa !8
  %2544 = icmp eq ptr %2543, null
  br i1 %2544, label %2545, label %2548

2545:                                             ; preds = %2537
  %2546 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2547 = tail call ptr @GetMemory(i32 noundef %2540, ptr noundef %2546) #8
  store ptr %2547, ptr @zz_hold, align 8, !tbaa !8
  br label %2552

2548:                                             ; preds = %2537
  store ptr %2543, ptr @zz_hold, align 8, !tbaa !8
  %2549 = load ptr, ptr %2543, align 8, !tbaa !5
  %2550 = zext i8 %2539 to i64
  %2551 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2550
  store ptr %2549, ptr %2551, align 8, !tbaa !8
  br label %2552

2552:                                             ; preds = %2545, %2548
  %2553 = phi ptr [ %2547, %2545 ], [ %2543, %2548 ]
  %2554 = getelementptr inbounds %struct.word_type, ptr %2553, i64 0, i32 1
  store i8 17, ptr %2554, align 8, !tbaa !5
  %2555 = getelementptr inbounds [2 x %struct.LIST], ptr %2553, i64 0, i64 1
  %2556 = getelementptr inbounds [2 x %struct.LIST], ptr %2553, i64 0, i64 1, i32 1
  store ptr %2553, ptr %2556, align 8, !tbaa !5
  store ptr %2553, ptr %2555, align 8, !tbaa !5
  %2557 = getelementptr inbounds %struct.LIST, ptr %2553, i64 0, i32 1
  store ptr %2553, ptr %2557, align 8, !tbaa !5
  store ptr %2553, ptr %2553, align 8, !tbaa !5
  %2558 = load ptr, ptr %2323, align 8, !tbaa !5
  %2559 = getelementptr inbounds [2 x %struct.LIST], ptr %2488, i64 0, i64 1, i32 1
  %2560 = load ptr, ptr %2559, align 8, !tbaa !5
  %2561 = icmp eq ptr %2558, %2560
  br i1 %2561, label %2591, label %2562

2562:                                             ; preds = %2552
  %2563 = getelementptr inbounds %struct.word_type, ptr %2558, i64 0, i32 1
  %2564 = load i8, ptr %2563, align 8, !tbaa !5
  %2565 = icmp eq i8 %2564, 0
  br i1 %2565, label %2569, label %2566

2566:                                             ; preds = %2562
  %2567 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2568 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2567, ptr noundef nonnull @.str.12) #8
  br label %2569

2569:                                             ; preds = %2566, %2562
  store ptr %2558, ptr @zz_res, align 8, !tbaa !8
  store ptr %2560, ptr @zz_hold, align 8, !tbaa !8
  %2570 = icmp eq ptr %2560, null
  br i1 %2570, label %2581, label %2571

2571:                                             ; preds = %2569
  %2572 = load ptr, ptr %2560, align 8, !tbaa !5
  store ptr %2572, ptr @zz_tmp, align 8, !tbaa !8
  %2573 = load ptr, ptr %2558, align 8, !tbaa !5
  store ptr %2573, ptr %2560, align 8, !tbaa !5
  %2574 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2575 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2576 = load ptr, ptr %2575, align 8, !tbaa !5
  %2577 = getelementptr inbounds %struct.LIST, ptr %2576, i64 0, i32 1
  store ptr %2574, ptr %2577, align 8, !tbaa !5
  %2578 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2578, ptr %2575, align 8, !tbaa !5
  %2579 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2580 = getelementptr inbounds %struct.LIST, ptr %2578, i64 0, i32 1
  store ptr %2579, ptr %2580, align 8, !tbaa !5
  br label %2581

2581:                                             ; preds = %2571, %2569
  store ptr %2558, ptr @zz_res, align 8, !tbaa !8
  store ptr %2553, ptr @zz_hold, align 8, !tbaa !8
  %2582 = load ptr, ptr %2553, align 8, !tbaa !5
  store ptr %2582, ptr @zz_tmp, align 8, !tbaa !8
  %2583 = load ptr, ptr %2558, align 8, !tbaa !5
  store ptr %2583, ptr %2553, align 8, !tbaa !5
  %2584 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2585 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2586 = load ptr, ptr %2585, align 8, !tbaa !5
  %2587 = getelementptr inbounds %struct.LIST, ptr %2586, i64 0, i32 1
  store ptr %2584, ptr %2587, align 8, !tbaa !5
  %2588 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2588, ptr %2585, align 8, !tbaa !5
  %2589 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2590 = getelementptr inbounds %struct.LIST, ptr %2588, i64 0, i32 1
  store ptr %2589, ptr %2590, align 8, !tbaa !5
  br label %2591

2591:                                             ; preds = %2581, %2552
  %2592 = load i16, ptr %2317, align 8
  %2593 = and i16 %2592, 128
  %2594 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4
  %2595 = load i16, ptr %2594, align 8
  %2596 = and i16 %2595, -129
  %2597 = or disjoint i16 %2596, %2593
  store i16 %2597, ptr %2594, align 8
  %2598 = load i16, ptr %2317, align 8
  %2599 = and i16 %2598, 256
  %2600 = and i16 %2597, -257
  %2601 = or disjoint i16 %2600, %2599
  store i16 %2601, ptr %2594, align 8
  %2602 = load i16, ptr %2317, align 8
  %2603 = and i16 %2602, 512
  %2604 = and i16 %2601, -513
  %2605 = or disjoint i16 %2604, %2603
  store i16 %2605, ptr %2594, align 8
  %2606 = load i16, ptr %2317, align 8
  %2607 = and i16 %2606, 7168
  %2608 = and i16 %2605, -7169
  %2609 = or disjoint i16 %2608, %2607
  store i16 %2609, ptr %2594, align 8
  %2610 = load i16, ptr %2317, align 8
  %2611 = and i16 %2610, -8192
  %2612 = and i16 %2609, 8191
  %2613 = or disjoint i16 %2612, %2611
  store i16 %2613, ptr %2594, align 8
  %2614 = load i16, ptr %2480, align 2, !tbaa !5
  %2615 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %2614, ptr %2615, align 2, !tbaa !5
  %2616 = load i8, ptr %2318, align 4
  %2617 = and i8 %2616, 3
  %2618 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 1
  %2619 = load i8, ptr %2618, align 4
  %2620 = and i8 %2619, -4
  %2621 = or disjoint i8 %2620, %2617
  store i8 %2621, ptr %2618, align 4
  %2622 = load i8, ptr %2318, align 4
  %2623 = and i8 %2622, 12
  %2624 = and i8 %2621, -13
  %2625 = or disjoint i8 %2624, %2623
  store i8 %2625, ptr %2618, align 4
  %2626 = load i8, ptr %2318, align 4
  %2627 = and i8 %2626, 112
  %2628 = and i8 %2625, -113
  %2629 = or disjoint i8 %2628, %2627
  store i8 %2629, ptr %2618, align 4
  %2630 = load i8, ptr %2317, align 8
  %2631 = and i8 %2630, 8
  %2632 = trunc i16 %2597 to i8
  %2633 = and i8 %2632, -9
  %2634 = or disjoint i8 %2633, %2631
  store i8 %2634, ptr %2594, align 8
  %2635 = load i16, ptr %2318, align 4
  %2636 = and i16 %2635, 128
  %2637 = load i16, ptr %2618, align 4
  %2638 = and i16 %2637, -129
  %2639 = or disjoint i16 %2638, %2636
  store i16 %2639, ptr %2618, align 4
  %2640 = load i16, ptr %2318, align 4
  %2641 = and i16 %2640, 256
  %2642 = and i16 %2639, -257
  %2643 = or disjoint i16 %2642, %2641
  store i16 %2643, ptr %2618, align 4
  %2644 = load i16, ptr %2318, align 4
  %2645 = and i16 %2644, 512
  %2646 = and i16 %2643, -513
  %2647 = or disjoint i16 %2646, %2645
  store i16 %2647, ptr %2618, align 4
  %2648 = load i16, ptr %2318, align 4
  %2649 = and i16 %2648, 7168
  %2650 = and i16 %2647, -7169
  %2651 = or disjoint i16 %2650, %2649
  store i16 %2651, ptr %2618, align 4
  %2652 = load i16, ptr %2318, align 4
  %2653 = and i16 %2652, -8192
  %2654 = and i16 %2651, 8191
  %2655 = or disjoint i16 %2654, %2653
  store i16 %2655, ptr %2618, align 4
  %2656 = load i16, ptr %2481, align 2, !tbaa !5
  %2657 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %2656, ptr %2657, align 2, !tbaa !5
  %2658 = load i32, ptr %2482, align 4
  %2659 = and i32 %2658, 4095
  %2660 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 4
  %2661 = load i32, ptr %2660, align 4
  %2662 = and i32 %2661, -4096
  %2663 = or disjoint i32 %2662, %2659
  store i32 %2663, ptr %2660, align 4
  %2664 = load i32, ptr %2482, align 4
  %2665 = and i32 %2664, 4190208
  %2666 = and i32 %2663, -4190209
  %2667 = or disjoint i32 %2666, %2665
  store i32 %2667, ptr %2660, align 4
  %2668 = load i32, ptr %2482, align 4
  %2669 = and i32 %2668, 12582912
  %2670 = and i32 %2667, -12582913
  %2671 = or disjoint i32 %2670, %2669
  store i32 %2671, ptr %2660, align 4
  %2672 = load i32, ptr %2482, align 4
  %2673 = and i32 %2672, 1056964608
  %2674 = and i32 %2671, -1056964609
  %2675 = or disjoint i32 %2674, %2673
  store i32 %2675, ptr %2660, align 4
  %2676 = load i32, ptr %2482, align 4
  %2677 = and i32 %2676, -2147483648
  %2678 = and i32 %2675, 2147483647
  %2679 = or disjoint i32 %2678, %2677
  store i32 %2679, ptr %2660, align 4
  %2680 = load i32, ptr %2482, align 4
  %2681 = and i32 %2680, 1073741824
  %2682 = and i32 %2679, -1073741825
  %2683 = or disjoint i32 %2682, %2681
  store i32 %2683, ptr %2660, align 4
  %2684 = load i8, ptr %2317, align 8
  %2685 = and i8 %2684, 1
  %2686 = and i8 %2634, -2
  %2687 = or disjoint i8 %2685, %2686
  store i8 %2687, ptr %2594, align 8
  %2688 = load i8, ptr %2317, align 8
  %2689 = and i8 %2688, 2
  %2690 = and i8 %2687, -3
  %2691 = or disjoint i8 %2690, %2689
  store i8 %2691, ptr %2594, align 8
  %2692 = load i8, ptr %2317, align 8
  %2693 = and i8 %2692, 4
  %2694 = and i8 %2691, -5
  %2695 = or disjoint i8 %2694, %2693
  store i8 %2695, ptr %2594, align 8
  %2696 = load i8, ptr %2317, align 8
  %2697 = and i8 %2696, 112
  %2698 = and i8 %2695, -113
  %2699 = or disjoint i8 %2698, %2697
  store i8 %2699, ptr %2594, align 8
  %2700 = load i16, ptr %2483, align 8, !tbaa !5
  %2701 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 2
  store i16 %2700, ptr %2701, align 8, !tbaa !5
  %2702 = load i16, ptr %2484, align 2, !tbaa !5
  %2703 = getelementptr inbounds %struct.closure_type, ptr %2553, i64 0, i32 4, i32 0, i32 3
  store i16 %2702, ptr %2703, align 2, !tbaa !5
  %2704 = load i8, ptr %2317, align 8
  %2705 = lshr i8 %2704, 2
  %2706 = getelementptr inbounds i8, ptr %2553, i64 42
  %2707 = load i16, ptr %2706, align 2
  %2708 = and i8 %2705, 1
  %2709 = zext nneg i8 %2708 to i16
  %2710 = shl nuw nsw i16 %2709, 11
  %2711 = and i16 %2707, -2049
  %2712 = or disjoint i16 %2710, %2711
  store i16 %2712, ptr %2706, align 2
  %2713 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2714 = zext i8 %2713 to i32
  store i32 %2714, ptr @zz_size, align 4, !tbaa !10
  %2715 = zext i8 %2713 to i64
  %2716 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2715
  %2717 = load ptr, ptr %2716, align 8, !tbaa !8
  %2718 = icmp eq ptr %2717, null
  br i1 %2718, label %2719, label %2722

2719:                                             ; preds = %2591
  %2720 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2721 = tail call ptr @GetMemory(i32 noundef %2714, ptr noundef %2720) #8
  br label %2726

2722:                                             ; preds = %2591
  store ptr %2717, ptr @zz_hold, align 8, !tbaa !8
  %2723 = load ptr, ptr %2717, align 8, !tbaa !5
  %2724 = zext i8 %2713 to i64
  %2725 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2724
  store ptr %2723, ptr %2725, align 8, !tbaa !8
  br label %2726

2726:                                             ; preds = %2719, %2722
  %2727 = phi ptr [ %2721, %2719 ], [ %2717, %2722 ]
  %2728 = getelementptr inbounds %struct.word_type, ptr %2727, i64 0, i32 1
  store i8 0, ptr %2728, align 8, !tbaa !5
  %2729 = getelementptr inbounds [2 x %struct.LIST], ptr %2727, i64 0, i64 1, i32 1
  store ptr %2727, ptr %2729, align 8, !tbaa !5
  %2730 = getelementptr inbounds [2 x %struct.LIST], ptr %2727, i64 0, i64 1
  store ptr %2727, ptr %2730, align 8, !tbaa !5
  %2731 = getelementptr inbounds %struct.LIST, ptr %2727, i64 0, i32 1
  store ptr %2727, ptr %2731, align 8, !tbaa !5
  store ptr %2727, ptr %2727, align 8, !tbaa !5
  store ptr %2727, ptr @xx_link, align 8, !tbaa !8
  store ptr %2727, ptr @zz_res, align 8, !tbaa !8
  store ptr %2538, ptr @zz_hold, align 8, !tbaa !8
  %2732 = load ptr, ptr %2538, align 8, !tbaa !5
  store ptr %2732, ptr @zz_tmp, align 8, !tbaa !8
  %2733 = load ptr, ptr %2727, align 8, !tbaa !5
  store ptr %2733, ptr %2538, align 8, !tbaa !5
  %2734 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2735 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2736 = load ptr, ptr %2735, align 8, !tbaa !5
  %2737 = getelementptr inbounds %struct.LIST, ptr %2736, i64 0, i32 1
  store ptr %2734, ptr %2737, align 8, !tbaa !5
  %2738 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2738, ptr %2735, align 8, !tbaa !5
  %2739 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2740 = getelementptr inbounds %struct.LIST, ptr %2738, i64 0, i32 1
  store ptr %2739, ptr %2740, align 8, !tbaa !5
  %2741 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2741, ptr @zz_res, align 8, !tbaa !8
  store ptr %2553, ptr @zz_hold, align 8, !tbaa !8
  %2742 = icmp eq ptr %2741, null
  br i1 %2742, label %2749, label %2743

2743:                                             ; preds = %2726
  %2744 = load ptr, ptr %2555, align 8, !tbaa !5
  store ptr %2744, ptr @zz_tmp, align 8, !tbaa !8
  %2745 = getelementptr inbounds [2 x %struct.LIST], ptr %2741, i64 0, i64 1
  %2746 = load ptr, ptr %2745, align 8, !tbaa !5
  store ptr %2746, ptr %2555, align 8, !tbaa !5
  %2747 = getelementptr inbounds [2 x %struct.LIST], ptr %2746, i64 0, i64 1, i32 1
  store ptr %2553, ptr %2747, align 8, !tbaa !5
  store ptr %2744, ptr %2745, align 8, !tbaa !5
  %2748 = getelementptr inbounds [2 x %struct.LIST], ptr %2744, i64 0, i64 1, i32 1
  store ptr %2741, ptr %2748, align 8, !tbaa !5
  br label %2749

2749:                                             ; preds = %2726, %2743
  %2750 = getelementptr inbounds i8, ptr %2488, i64 41
  %2751 = load i8, ptr %2750, align 1, !tbaa !5
  %2752 = icmp eq i8 %2751, 0
  br i1 %2752, label %2922, label %2753

2753:                                             ; preds = %2749
  %2754 = getelementptr inbounds %struct.word_type, ptr %2488, i64 0, i32 1
  %2755 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %2754) #8
  %2756 = load i32, ptr %2482, align 4
  %2757 = and i32 %2756, 4095
  %2758 = getelementptr inbounds %struct.word_type, ptr %2755, i64 0, i32 2
  %2759 = load i32, ptr %2758, align 8
  %2760 = and i32 %2759, -4096
  %2761 = or disjoint i32 %2760, %2757
  store i32 %2761, ptr %2758, align 8
  %2762 = load i32, ptr %2482, align 4
  %2763 = and i32 %2762, 4190208
  %2764 = and i32 %2761, -4190209
  %2765 = or disjoint i32 %2764, %2763
  store i32 %2765, ptr %2758, align 8
  %2766 = load i32, ptr %2482, align 4
  %2767 = and i32 %2766, 4194304
  %2768 = and i32 %2765, -4194305
  %2769 = or disjoint i32 %2768, %2767
  store i32 %2769, ptr %2758, align 8
  %2770 = load i32, ptr %2482, align 4
  %2771 = lshr i32 %2770, 1
  %2772 = and i32 %2771, 528482304
  %2773 = and i32 %2769, -528482305
  %2774 = or disjoint i32 %2772, %2773
  store i32 %2774, ptr %2758, align 8
  %2775 = load i8, ptr %2318, align 4
  %2776 = and i8 %2775, 3
  %2777 = icmp eq i8 %2776, 2
  %2778 = select i1 %2777, i32 -2147483648, i32 0
  %2779 = and i32 %2774, 536870911
  %2780 = or disjoint i32 %2779, %2778
  %2781 = or disjoint i32 %2780, 536870912
  store i32 %2781, ptr %2758, align 8
  %2782 = getelementptr inbounds %struct.word_type, ptr %2755, i64 0, i32 3
  %2783 = getelementptr inbounds %struct.word_type, ptr %2755, i64 0, i32 3, i32 1
  store i32 0, ptr %2783, align 8, !tbaa !5
  store i32 0, ptr %2782, align 8, !tbaa !5
  %2784 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2785 = zext i8 %2784 to i32
  store i32 %2785, ptr @zz_size, align 4, !tbaa !10
  %2786 = zext i8 %2784 to i64
  %2787 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2786
  %2788 = load ptr, ptr %2787, align 8, !tbaa !8
  %2789 = icmp eq ptr %2788, null
  br i1 %2789, label %2790, label %2793

2790:                                             ; preds = %2753
  %2791 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2792 = tail call ptr @GetMemory(i32 noundef %2785, ptr noundef %2791) #8
  br label %2797

2793:                                             ; preds = %2753
  store ptr %2788, ptr @zz_hold, align 8, !tbaa !8
  %2794 = load ptr, ptr %2788, align 8, !tbaa !5
  %2795 = zext i8 %2784 to i64
  %2796 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2795
  store ptr %2794, ptr %2796, align 8, !tbaa !8
  br label %2797

2797:                                             ; preds = %2790, %2793
  %2798 = phi ptr [ %2792, %2790 ], [ %2788, %2793 ]
  %2799 = getelementptr inbounds %struct.word_type, ptr %2798, i64 0, i32 1
  store i8 0, ptr %2799, align 8, !tbaa !5
  %2800 = getelementptr inbounds [2 x %struct.LIST], ptr %2798, i64 0, i64 1, i32 1
  store ptr %2798, ptr %2800, align 8, !tbaa !5
  %2801 = getelementptr inbounds [2 x %struct.LIST], ptr %2798, i64 0, i64 1
  store ptr %2798, ptr %2801, align 8, !tbaa !5
  %2802 = getelementptr inbounds %struct.LIST, ptr %2798, i64 0, i32 1
  store ptr %2798, ptr %2802, align 8, !tbaa !5
  store ptr %2798, ptr %2798, align 8, !tbaa !5
  store ptr %2798, ptr @xx_link, align 8, !tbaa !8
  store ptr %2798, ptr @zz_res, align 8, !tbaa !8
  %2803 = load ptr, ptr %2323, align 8, !tbaa !5
  store ptr %2803, ptr @zz_hold, align 8, !tbaa !8
  %2804 = icmp eq ptr %2803, null
  br i1 %2804, label %2805, label %2806

2805:                                             ; preds = %2797
  store ptr %2755, ptr @zz_hold, align 8, !tbaa !8
  br label %2818

2806:                                             ; preds = %2797
  %2807 = load ptr, ptr %2803, align 8, !tbaa !5
  store ptr %2807, ptr @zz_tmp, align 8, !tbaa !8
  %2808 = load ptr, ptr %2798, align 8, !tbaa !5
  store ptr %2808, ptr %2803, align 8, !tbaa !5
  %2809 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2810 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2811 = load ptr, ptr %2810, align 8, !tbaa !5
  %2812 = getelementptr inbounds %struct.LIST, ptr %2811, i64 0, i32 1
  store ptr %2809, ptr %2812, align 8, !tbaa !5
  %2813 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2813, ptr %2810, align 8, !tbaa !5
  %2814 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2815 = getelementptr inbounds %struct.LIST, ptr %2813, i64 0, i32 1
  store ptr %2814, ptr %2815, align 8, !tbaa !5
  %2816 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2816, ptr @zz_res, align 8, !tbaa !8
  store ptr %2755, ptr @zz_hold, align 8, !tbaa !8
  %2817 = icmp eq ptr %2816, null
  br i1 %2817, label %2826, label %2818

2818:                                             ; preds = %2805, %2806
  %2819 = phi ptr [ %2798, %2805 ], [ %2816, %2806 ]
  %2820 = getelementptr inbounds [2 x %struct.LIST], ptr %2755, i64 0, i64 1
  %2821 = load ptr, ptr %2820, align 8, !tbaa !5
  store ptr %2821, ptr @zz_tmp, align 8, !tbaa !8
  %2822 = getelementptr inbounds [2 x %struct.LIST], ptr %2819, i64 0, i64 1
  %2823 = load ptr, ptr %2822, align 8, !tbaa !5
  store ptr %2823, ptr %2820, align 8, !tbaa !5
  %2824 = getelementptr inbounds [2 x %struct.LIST], ptr %2823, i64 0, i64 1, i32 1
  store ptr %2755, ptr %2824, align 8, !tbaa !5
  store ptr %2821, ptr %2822, align 8, !tbaa !5
  %2825 = getelementptr inbounds [2 x %struct.LIST], ptr %2821, i64 0, i64 1, i32 1
  store ptr %2819, ptr %2825, align 8, !tbaa !5
  br label %2826

2826:                                             ; preds = %2806, %2818
  %2827 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %2828 = zext i8 %2827 to i32
  store i32 %2828, ptr @zz_size, align 4, !tbaa !10
  %2829 = zext i8 %2827 to i64
  %2830 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2829
  %2831 = load ptr, ptr %2830, align 8, !tbaa !8
  %2832 = icmp eq ptr %2831, null
  br i1 %2832, label %2833, label %2836

2833:                                             ; preds = %2826
  %2834 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2835 = tail call ptr @GetMemory(i32 noundef %2828, ptr noundef %2834) #8
  store ptr %2835, ptr @zz_hold, align 8, !tbaa !8
  br label %2840

2836:                                             ; preds = %2826
  store ptr %2831, ptr @zz_hold, align 8, !tbaa !8
  %2837 = load ptr, ptr %2831, align 8, !tbaa !5
  %2838 = zext i8 %2827 to i64
  %2839 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2838
  store ptr %2837, ptr %2839, align 8, !tbaa !8
  br label %2840

2840:                                             ; preds = %2833, %2836
  %2841 = phi ptr [ %2835, %2833 ], [ %2831, %2836 ]
  %2842 = getelementptr inbounds %struct.word_type, ptr %2841, i64 0, i32 1
  store i8 1, ptr %2842, align 8, !tbaa !5
  %2843 = getelementptr inbounds [2 x %struct.LIST], ptr %2841, i64 0, i64 1
  %2844 = getelementptr inbounds [2 x %struct.LIST], ptr %2841, i64 0, i64 1, i32 1
  store ptr %2841, ptr %2844, align 8, !tbaa !5
  store ptr %2841, ptr %2843, align 8, !tbaa !5
  %2845 = getelementptr inbounds %struct.LIST, ptr %2841, i64 0, i32 1
  store ptr %2841, ptr %2845, align 8, !tbaa !5
  store ptr %2841, ptr %2841, align 8, !tbaa !5
  %2846 = load i8, ptr %2750, align 1, !tbaa !5
  %2847 = getelementptr inbounds %struct.word_type, ptr %2841, i64 0, i32 2
  %2848 = getelementptr inbounds i8, ptr %2841, i64 41
  store i8 %2846, ptr %2848, align 1, !tbaa !5
  %2849 = getelementptr inbounds i8, ptr %2841, i64 42
  store i8 0, ptr %2849, align 2, !tbaa !5
  %2850 = load i32, ptr %2847, align 8
  %2851 = and i32 %2850, -1610612737
  %2852 = or disjoint i32 %2851, 536870912
  store i32 %2852, ptr %2847, align 8
  %2853 = load i16, ptr %2318, align 4
  %2854 = and i16 %2853, 128
  %2855 = getelementptr inbounds %struct.gapobj_type, ptr %2841, i64 0, i32 3
  %2856 = load i16, ptr %2855, align 4
  %2857 = and i16 %2856, -129
  %2858 = or disjoint i16 %2857, %2854
  store i16 %2858, ptr %2855, align 4
  %2859 = load i16, ptr %2318, align 4
  %2860 = and i16 %2859, 256
  %2861 = and i16 %2858, -257
  %2862 = or disjoint i16 %2861, %2860
  store i16 %2862, ptr %2855, align 4
  %2863 = load i16, ptr %2318, align 4
  %2864 = and i16 %2863, 512
  %2865 = and i16 %2862, -513
  %2866 = or disjoint i16 %2865, %2864
  store i16 %2866, ptr %2855, align 4
  %2867 = load i16, ptr %2318, align 4
  %2868 = and i16 %2867, 7168
  %2869 = and i16 %2866, -7169
  %2870 = or disjoint i16 %2869, %2868
  store i16 %2870, ptr %2855, align 4
  %2871 = load i16, ptr %2318, align 4
  %2872 = and i16 %2871, -8192
  %2873 = and i16 %2870, 8191
  %2874 = or disjoint i16 %2873, %2872
  store i16 %2874, ptr %2855, align 4
  %2875 = load i16, ptr %2481, align 2, !tbaa !5
  %2876 = getelementptr inbounds %struct.gapobj_type, ptr %2841, i64 0, i32 3, i32 1
  %2877 = trunc i32 %2850 to i16
  %2878 = lshr i16 %2877, 8
  %2879 = mul i16 %2875, %2878
  store i16 %2879, ptr %2876, align 2, !tbaa !5
  %2880 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2881 = zext i8 %2880 to i32
  store i32 %2881, ptr @zz_size, align 4, !tbaa !10
  %2882 = zext i8 %2880 to i64
  %2883 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2882
  %2884 = load ptr, ptr %2883, align 8, !tbaa !8
  %2885 = icmp eq ptr %2884, null
  br i1 %2885, label %2886, label %2889

2886:                                             ; preds = %2840
  %2887 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2888 = tail call ptr @GetMemory(i32 noundef %2881, ptr noundef %2887) #8
  br label %2893

2889:                                             ; preds = %2840
  store ptr %2884, ptr @zz_hold, align 8, !tbaa !8
  %2890 = load ptr, ptr %2884, align 8, !tbaa !5
  %2891 = zext i8 %2880 to i64
  %2892 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2891
  store ptr %2890, ptr %2892, align 8, !tbaa !8
  br label %2893

2893:                                             ; preds = %2886, %2889
  %2894 = phi ptr [ %2888, %2886 ], [ %2884, %2889 ]
  %2895 = getelementptr inbounds %struct.word_type, ptr %2894, i64 0, i32 1
  store i8 0, ptr %2895, align 8, !tbaa !5
  %2896 = getelementptr inbounds [2 x %struct.LIST], ptr %2894, i64 0, i64 1, i32 1
  store ptr %2894, ptr %2896, align 8, !tbaa !5
  %2897 = getelementptr inbounds [2 x %struct.LIST], ptr %2894, i64 0, i64 1
  store ptr %2894, ptr %2897, align 8, !tbaa !5
  %2898 = getelementptr inbounds %struct.LIST, ptr %2894, i64 0, i32 1
  store ptr %2894, ptr %2898, align 8, !tbaa !5
  store ptr %2894, ptr %2894, align 8, !tbaa !5
  store ptr %2894, ptr @xx_link, align 8, !tbaa !8
  store ptr %2894, ptr @zz_res, align 8, !tbaa !8
  %2899 = load ptr, ptr %2323, align 8, !tbaa !5
  %2900 = getelementptr inbounds %struct.LIST, ptr %2899, i64 0, i32 1
  %2901 = load ptr, ptr %2900, align 8, !tbaa !5
  store ptr %2901, ptr @zz_hold, align 8, !tbaa !8
  %2902 = icmp eq ptr %2901, null
  br i1 %2902, label %2915, label %2903

2903:                                             ; preds = %2893
  %2904 = load ptr, ptr %2901, align 8, !tbaa !5
  store ptr %2904, ptr @zz_tmp, align 8, !tbaa !8
  %2905 = load ptr, ptr %2894, align 8, !tbaa !5
  store ptr %2905, ptr %2901, align 8, !tbaa !5
  %2906 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2907 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2908 = load ptr, ptr %2907, align 8, !tbaa !5
  %2909 = getelementptr inbounds %struct.LIST, ptr %2908, i64 0, i32 1
  store ptr %2906, ptr %2909, align 8, !tbaa !5
  %2910 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2910, ptr %2907, align 8, !tbaa !5
  %2911 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2912 = getelementptr inbounds %struct.LIST, ptr %2910, i64 0, i32 1
  store ptr %2911, ptr %2912, align 8, !tbaa !5
  %2913 = load ptr, ptr @xx_link, align 8, !tbaa !8
  %2914 = icmp eq ptr %2913, null
  br i1 %2914, label %2922, label %2915

2915:                                             ; preds = %2893, %2903
  %2916 = phi ptr [ %2913, %2903 ], [ %2894, %2893 ]
  %2917 = load ptr, ptr %2843, align 8, !tbaa !5
  store ptr %2917, ptr @zz_tmp, align 8, !tbaa !8
  %2918 = getelementptr inbounds [2 x %struct.LIST], ptr %2916, i64 0, i64 1
  %2919 = load ptr, ptr %2918, align 8, !tbaa !5
  store ptr %2919, ptr %2843, align 8, !tbaa !5
  %2920 = getelementptr inbounds [2 x %struct.LIST], ptr %2919, i64 0, i64 1, i32 1
  store ptr %2841, ptr %2920, align 8, !tbaa !5
  store ptr %2917, ptr %2918, align 8, !tbaa !5
  %2921 = getelementptr inbounds [2 x %struct.LIST], ptr %2917, i64 0, i64 1, i32 1
  store ptr %2916, ptr %2921, align 8, !tbaa !5
  br label %2922

2922:                                             ; preds = %2903, %2915, %2749
  %2923 = load ptr, ptr %2559, align 8, !tbaa !5
  store ptr %2923, ptr @xx_link, align 8, !tbaa !8
  store ptr %2923, ptr @zz_hold, align 8, !tbaa !8
  %2924 = getelementptr inbounds %struct.LIST, ptr %2923, i64 0, i32 1
  %2925 = load ptr, ptr %2924, align 8, !tbaa !5
  %2926 = icmp eq ptr %2925, %2923
  br i1 %2926, label %2927, label %2928

2927:                                             ; preds = %2922
  store ptr %2923, ptr @zz_res, align 8, !tbaa !8
  store ptr %2538, ptr @zz_hold, align 8, !tbaa !8
  br label %2937

2928:                                             ; preds = %2922
  store ptr %2925, ptr @zz_res, align 8, !tbaa !8
  %2929 = load ptr, ptr %2923, align 8, !tbaa !5
  store ptr %2929, ptr %2925, align 8, !tbaa !5
  %2930 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2931 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2932 = load ptr, ptr %2931, align 8, !tbaa !5
  %2933 = getelementptr inbounds %struct.LIST, ptr %2932, i64 0, i32 1
  store ptr %2930, ptr %2933, align 8, !tbaa !5
  %2934 = getelementptr inbounds %struct.LIST, ptr %2931, i64 0, i32 1
  store ptr %2931, ptr %2934, align 8, !tbaa !5
  store ptr %2931, ptr %2931, align 8, !tbaa !5
  %2935 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2935, ptr @zz_res, align 8, !tbaa !8
  store ptr %2538, ptr @zz_hold, align 8, !tbaa !8
  %2936 = icmp eq ptr %2935, null
  br i1 %2936, label %2948, label %2937

2937:                                             ; preds = %2927, %2928
  %2938 = phi ptr [ %2923, %2927 ], [ %2935, %2928 ]
  %2939 = load ptr, ptr %2538, align 8, !tbaa !5
  store ptr %2939, ptr @zz_tmp, align 8, !tbaa !8
  %2940 = load ptr, ptr %2938, align 8, !tbaa !5
  store ptr %2940, ptr %2538, align 8, !tbaa !5
  %2941 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2942 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2943 = load ptr, ptr %2942, align 8, !tbaa !5
  %2944 = getelementptr inbounds %struct.LIST, ptr %2943, i64 0, i32 1
  store ptr %2941, ptr %2944, align 8, !tbaa !5
  %2945 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2945, ptr %2942, align 8, !tbaa !5
  %2946 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2947 = getelementptr inbounds %struct.LIST, ptr %2945, i64 0, i32 1
  store ptr %2946, ptr %2947, align 8, !tbaa !5
  br label %2948

2948:                                             ; preds = %2928, %2937
  %2949 = load i16, ptr %2317, align 8
  %2950 = and i16 %2949, 128
  %2951 = load i16, ptr %2489, align 4
  %2952 = and i16 %2951, -129
  %2953 = or disjoint i16 %2952, %2950
  store i16 %2953, ptr %2489, align 4
  %2954 = load i16, ptr %2317, align 8
  %2955 = and i16 %2954, 256
  %2956 = and i16 %2953, -257
  %2957 = or disjoint i16 %2956, %2955
  store i16 %2957, ptr %2489, align 4
  %2958 = load i16, ptr %2317, align 8
  %2959 = and i16 %2958, 512
  %2960 = and i16 %2957, -513
  %2961 = or disjoint i16 %2960, %2959
  store i16 %2961, ptr %2489, align 4
  %2962 = load i16, ptr %2317, align 8
  %2963 = and i16 %2962, 7168
  %2964 = and i16 %2961, -7169
  %2965 = or disjoint i16 %2964, %2963
  store i16 %2965, ptr %2489, align 4
  %2966 = load i16, ptr %2317, align 8
  %2967 = and i16 %2966, -8192
  %2968 = and i16 %2965, 8191
  %2969 = or disjoint i16 %2968, %2967
  store i16 %2969, ptr %2489, align 4
  %2970 = load i16, ptr %2480, align 2, !tbaa !5
  %2971 = getelementptr inbounds %struct.gapobj_type, ptr %2488, i64 0, i32 3, i32 1
  %2972 = load i8, ptr %2493, align 2, !tbaa !5
  %2973 = tail call i8 @llvm.umax.i8(i8 %2972, i8 1)
  %2974 = zext i8 %2973 to i16
  %2975 = mul i16 %2970, %2974
  store i16 %2975, ptr %2971, align 2, !tbaa !5
  br label %2976

2976:                                             ; preds = %2948, %2499, %2496, %2485
  %2977 = phi ptr [ %2538, %2948 ], [ %2487, %2499 ], [ %2487, %2496 ], [ %2487, %2485 ]
  %2978 = getelementptr inbounds %struct.LIST, ptr %2486, i64 0, i32 1
  %2979 = load ptr, ptr %2978, align 8, !tbaa !5
  %2980 = icmp eq ptr %2979, %0
  br i1 %2980, label %3008, label %2981

2981:                                             ; preds = %2976, %3001
  %2982 = phi ptr [ %3004, %3001 ], [ %2979, %2976 ]
  %2983 = phi ptr [ %3002, %3001 ], [ null, %2976 ]
  br label %2984

2984:                                             ; preds = %2981, %2984
  %2985 = phi ptr [ %2987, %2984 ], [ %2982, %2981 ]
  %2986 = getelementptr inbounds [2 x %struct.LIST], ptr %2985, i64 0, i64 1
  %2987 = load ptr, ptr %2986, align 8, !tbaa !5
  %2988 = getelementptr inbounds %struct.word_type, ptr %2987, i64 0, i32 1
  %2989 = load i8, ptr %2988, align 8, !tbaa !5
  switch i8 %2989, label %2993 [
    i8 0, label %2984
    i8 1, label %3001
    i8 9, label %2990
  ]

2990:                                             ; preds = %2984
  %2991 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2987) #8
  %2992 = icmp eq i32 %2991, 0
  br i1 %2992, label %3001, label %2996

2993:                                             ; preds = %2984
  %2994 = add i8 %2989, -9
  %2995 = icmp ult i8 %2994, 91
  br i1 %2995, label %2996, label %3001

2996:                                             ; preds = %2993, %2990
  %2997 = icmp eq ptr %2983, null
  br i1 %2997, label %2998, label %3006

2998:                                             ; preds = %2996
  %2999 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3000 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2999, ptr noundef nonnull @.str.16) #8
  br label %3006

3001:                                             ; preds = %2984, %2993, %2990
  %3002 = phi ptr [ %2983, %2990 ], [ %2983, %2993 ], [ %2987, %2984 ]
  %3003 = getelementptr inbounds %struct.LIST, ptr %2982, i64 0, i32 1
  %3004 = load ptr, ptr %3003, align 8, !tbaa !5
  %3005 = icmp eq ptr %3004, %0
  br i1 %3005, label %3008, label %2981

3006:                                             ; preds = %2996, %2998
  %3007 = icmp eq ptr %2982, %0
  br i1 %3007, label %3008, label %2485

3008:                                             ; preds = %2976, %3006, %3001
  %3009 = icmp eq ptr %2977, null
  br i1 %3009, label %3048, label %3010

3010:                                             ; preds = %3008
  %3011 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3012 = zext i8 %3011 to i32
  store i32 %3012, ptr @zz_size, align 4, !tbaa !10
  %3013 = zext i8 %3011 to i64
  %3014 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3013
  %3015 = load ptr, ptr %3014, align 8, !tbaa !8
  %3016 = icmp eq ptr %3015, null
  br i1 %3016, label %3017, label %3020

3017:                                             ; preds = %3010
  %3018 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3019 = tail call ptr @GetMemory(i32 noundef %3012, ptr noundef %3018) #8
  br label %3022

3020:                                             ; preds = %3010
  store ptr %3015, ptr @zz_hold, align 8, !tbaa !8
  %3021 = load ptr, ptr %3015, align 8, !tbaa !5
  store ptr %3021, ptr %3014, align 8, !tbaa !8
  br label %3022

3022:                                             ; preds = %3017, %3020
  %3023 = phi ptr [ %3019, %3017 ], [ %3015, %3020 ]
  %3024 = getelementptr inbounds %struct.word_type, ptr %3023, i64 0, i32 1
  store i8 0, ptr %3024, align 8, !tbaa !5
  %3025 = getelementptr inbounds [2 x %struct.LIST], ptr %3023, i64 0, i64 1, i32 1
  store ptr %3023, ptr %3025, align 8, !tbaa !5
  %3026 = getelementptr inbounds [2 x %struct.LIST], ptr %3023, i64 0, i64 1
  store ptr %3023, ptr %3026, align 8, !tbaa !5
  %3027 = getelementptr inbounds %struct.LIST, ptr %3023, i64 0, i32 1
  store ptr %3023, ptr %3027, align 8, !tbaa !5
  store ptr %3023, ptr %3023, align 8, !tbaa !5
  store ptr %3023, ptr @xx_link, align 8, !tbaa !8
  store ptr %3023, ptr @zz_res, align 8, !tbaa !8
  store ptr %2977, ptr @zz_hold, align 8, !tbaa !8
  %3028 = load ptr, ptr %2977, align 8, !tbaa !5
  store ptr %3028, ptr @zz_tmp, align 8, !tbaa !8
  %3029 = load ptr, ptr %3023, align 8, !tbaa !5
  store ptr %3029, ptr %2977, align 8, !tbaa !5
  %3030 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3031 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3032 = load ptr, ptr %3031, align 8, !tbaa !5
  %3033 = getelementptr inbounds %struct.LIST, ptr %3032, i64 0, i32 1
  store ptr %3030, ptr %3033, align 8, !tbaa !5
  %3034 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3034, ptr %3031, align 8, !tbaa !5
  %3035 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3036 = getelementptr inbounds %struct.LIST, ptr %3034, i64 0, i32 1
  store ptr %3035, ptr %3036, align 8, !tbaa !5
  %3037 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3037, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %3038 = icmp eq ptr %0, null
  %3039 = icmp eq ptr %3037, null
  %3040 = select i1 %3038, i1 true, i1 %3039
  br i1 %3040, label %3048, label %3041

3041:                                             ; preds = %3022
  %3042 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %3043 = load ptr, ptr %3042, align 8, !tbaa !5
  store ptr %3043, ptr @zz_tmp, align 8, !tbaa !8
  %3044 = getelementptr inbounds [2 x %struct.LIST], ptr %3037, i64 0, i64 1
  %3045 = load ptr, ptr %3044, align 8, !tbaa !5
  store ptr %3045, ptr %3042, align 8, !tbaa !5
  %3046 = getelementptr inbounds [2 x %struct.LIST], ptr %3045, i64 0, i64 1, i32 1
  store ptr %0, ptr %3046, align 8, !tbaa !5
  store ptr %3043, ptr %3044, align 8, !tbaa !5
  %3047 = getelementptr inbounds [2 x %struct.LIST], ptr %3043, i64 0, i64 1, i32 1
  store ptr %3037, ptr %3047, align 8, !tbaa !5
  br label %3048

3048:                                             ; preds = %2442, %2470, %2446, %2475, %2322, %2425, %3, %3, %3008, %3022, %3041, %2316
  %3049 = phi ptr [ %0, %3 ], [ %0, %3 ], [ %0, %2316 ], [ %0, %3008 ], [ %2977, %3022 ], [ %2977, %3041 ], [ %0, %2425 ], [ %0, %2322 ], [ %0, %2475 ], [ %0, %2446 ], [ %0, %2470 ], [ %0, %2442 ]
  %3050 = icmp eq i32 %1, 1
  %3051 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 1
  %3052 = load i8, ptr %3051, align 8, !tbaa !5
  %3053 = icmp ne i8 %3052, 19
  %3054 = xor i1 %3050, %3053
  br i1 %3054, label %3073, label %3055

3055:                                             ; preds = %3048
  %3056 = getelementptr inbounds %struct.LIST, ptr %3049, i64 0, i32 1
  %3057 = load ptr, ptr %3056, align 8, !tbaa !5
  %3058 = icmp eq ptr %3057, %3049
  br i1 %3058, label %3059, label %3062

3059:                                             ; preds = %3055
  %3060 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3061 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3060, ptr noundef nonnull @.str.23) #8
  br label %3840

3062:                                             ; preds = %3055
  %3063 = load i32, ptr %6, align 4
  %3064 = load i32, ptr %5, align 4
  %3065 = icmp eq i32 %1, 0
  %3066 = sext i32 %1 to i64
  br label %3067

3067:                                             ; preds = %3813, %3062
  %3068 = phi ptr [ %3817, %3813 ], [ %3057, %3062 ]
  %3069 = phi i32 [ %3815, %3813 ], [ 0, %3062 ]
  %3070 = phi i1 [ false, %3813 ], [ true, %3062 ]
  %3071 = phi i32 [ %3643, %3813 ], [ %3064, %3062 ]
  %3072 = phi i32 [ %3644, %3813 ], [ %3063, %3062 ]
  br label %3640

3073:                                             ; preds = %3048
  %3074 = getelementptr inbounds i8, ptr %3049, i64 42
  %3075 = load i16, ptr %3074, align 2
  %3076 = and i16 %3075, -129
  store i16 %3076, ptr %3074, align 2
  %3077 = getelementptr inbounds %struct.LIST, ptr %3049, i64 0, i32 1
  %3078 = load ptr, ptr %3077, align 8, !tbaa !5
  %3079 = icmp eq ptr %3078, %3049
  br i1 %3079, label %3613, label %3080

3080:                                             ; preds = %3073
  %3081 = icmp eq i32 %1, 0
  %3082 = sext i32 %1 to i64
  br label %3083

3083:                                             ; preds = %3080, %3602
  %3084 = phi ptr [ %3078, %3080 ], [ %3608, %3602 ]
  %3085 = phi ptr [ null, %3080 ], [ %3605, %3602 ]
  %3086 = phi ptr [ null, %3080 ], [ %3604, %3602 ]
  %3087 = phi i32 [ 0, %3080 ], [ %3603, %3602 ]
  br label %3088

3088:                                             ; preds = %3083, %3088
  %3089 = phi ptr [ %3091, %3088 ], [ %3084, %3083 ]
  %3090 = getelementptr inbounds [2 x %struct.LIST], ptr %3089, i64 0, i64 1
  %3091 = load ptr, ptr %3090, align 8, !tbaa !5
  %3092 = getelementptr inbounds %struct.word_type, ptr %3091, i64 0, i32 1
  %3093 = load i8, ptr %3092, align 8, !tbaa !5
  %3094 = icmp eq i8 %3093, 0
  br i1 %3094, label %3088, label %3095

3095:                                             ; preds = %3088
  %3096 = getelementptr inbounds %struct.word_type, ptr %3091, i64 0, i32 1
  %3097 = add i8 %3093, -119
  %3098 = icmp ult i8 %3097, 20
  br i1 %3098, label %3099, label %3131

3099:                                             ; preds = %3095
  br i1 %3050, label %3100, label %3602

3100:                                             ; preds = %3099
  %3101 = load ptr, ptr %3084, align 8, !tbaa !5
  %3102 = getelementptr inbounds %struct.LIST, ptr %3101, i64 0, i32 1
  %3103 = load ptr, ptr %3102, align 8, !tbaa !5
  store ptr %3103, ptr @xx_link, align 8, !tbaa !8
  store ptr %3103, ptr @zz_hold, align 8, !tbaa !8
  %3104 = getelementptr inbounds %struct.LIST, ptr %3103, i64 0, i32 1
  %3105 = load ptr, ptr %3104, align 8, !tbaa !5
  %3106 = icmp eq ptr %3105, %3103
  br i1 %3106, label %3115, label %3107

3107:                                             ; preds = %3100
  store ptr %3105, ptr @zz_res, align 8, !tbaa !8
  %3108 = load ptr, ptr %3103, align 8, !tbaa !5
  store ptr %3108, ptr %3105, align 8, !tbaa !5
  %3109 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3110 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3111 = load ptr, ptr %3110, align 8, !tbaa !5
  %3112 = getelementptr inbounds %struct.LIST, ptr %3111, i64 0, i32 1
  store ptr %3109, ptr %3112, align 8, !tbaa !5
  %3113 = getelementptr inbounds %struct.LIST, ptr %3110, i64 0, i32 1
  store ptr %3110, ptr %3113, align 8, !tbaa !5
  store ptr %3110, ptr %3110, align 8, !tbaa !5
  %3114 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3115

3115:                                             ; preds = %3100, %3107
  %3116 = phi ptr [ %3103, %3100 ], [ %3114, %3107 ]
  store ptr %3116, ptr @zz_res, align 8, !tbaa !8
  %3117 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %3117, ptr @zz_hold, align 8, !tbaa !8
  %3118 = icmp eq ptr %3117, null
  %3119 = icmp eq ptr %3116, null
  %3120 = select i1 %3118, i1 true, i1 %3119
  br i1 %3120, label %3602, label %3121

3121:                                             ; preds = %3115
  %3122 = load ptr, ptr %3117, align 8, !tbaa !5
  store ptr %3122, ptr @zz_tmp, align 8, !tbaa !8
  %3123 = load ptr, ptr %3116, align 8, !tbaa !5
  store ptr %3123, ptr %3117, align 8, !tbaa !5
  %3124 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3125 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3126 = load ptr, ptr %3125, align 8, !tbaa !5
  %3127 = getelementptr inbounds %struct.LIST, ptr %3126, i64 0, i32 1
  store ptr %3124, ptr %3127, align 8, !tbaa !5
  %3128 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3128, ptr %3125, align 8, !tbaa !5
  %3129 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3130 = getelementptr inbounds %struct.LIST, ptr %3128, i64 0, i32 1
  store ptr %3129, ptr %3130, align 8, !tbaa !5
  br label %3602

3131:                                             ; preds = %3095
  %3132 = load i8, ptr %3051, align 8, !tbaa !5
  %3133 = icmp eq i8 %3093, %3132
  br i1 %3133, label %3134, label %3218

3134:                                             ; preds = %3131
  %3135 = load ptr, ptr %3084, align 8, !tbaa !5
  %3136 = getelementptr inbounds %struct.LIST, ptr %3091, i64 0, i32 1
  %3137 = load ptr, ptr %3136, align 8, !tbaa !5
  %3138 = getelementptr inbounds %struct.LIST, ptr %3135, i64 0, i32 1
  %3139 = load ptr, ptr %3138, align 8, !tbaa !5
  %3140 = icmp eq ptr %3137, %3091
  br i1 %3140, label %3169, label %3141

3141:                                             ; preds = %3134
  %3142 = getelementptr inbounds %struct.word_type, ptr %3137, i64 0, i32 1
  %3143 = load i8, ptr %3142, align 8, !tbaa !5
  %3144 = icmp eq i8 %3143, 0
  br i1 %3144, label %3148, label %3145

3145:                                             ; preds = %3141
  %3146 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3147 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3146, ptr noundef nonnull @.str.12) #8
  br label %3148

3148:                                             ; preds = %3145, %3141
  store ptr %3137, ptr @zz_res, align 8, !tbaa !8
  store ptr %3091, ptr @zz_hold, align 8, !tbaa !8
  %3149 = load ptr, ptr %3091, align 8, !tbaa !5
  store ptr %3149, ptr @zz_tmp, align 8, !tbaa !8
  %3150 = load ptr, ptr %3137, align 8, !tbaa !5
  store ptr %3150, ptr %3091, align 8, !tbaa !5
  %3151 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3152 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3153 = load ptr, ptr %3152, align 8, !tbaa !5
  %3154 = getelementptr inbounds %struct.LIST, ptr %3153, i64 0, i32 1
  store ptr %3151, ptr %3154, align 8, !tbaa !5
  %3155 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3155, ptr %3152, align 8, !tbaa !5
  %3156 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3157 = getelementptr inbounds %struct.LIST, ptr %3155, i64 0, i32 1
  store ptr %3156, ptr %3157, align 8, !tbaa !5
  store ptr %3137, ptr @zz_res, align 8, !tbaa !8
  store ptr %3139, ptr @zz_hold, align 8, !tbaa !8
  %3158 = icmp eq ptr %3139, null
  br i1 %3158, label %3169, label %3159

3159:                                             ; preds = %3148
  %3160 = load ptr, ptr %3139, align 8, !tbaa !5
  store ptr %3160, ptr @zz_tmp, align 8, !tbaa !8
  %3161 = load ptr, ptr %3137, align 8, !tbaa !5
  store ptr %3161, ptr %3139, align 8, !tbaa !5
  %3162 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3163 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3164 = load ptr, ptr %3163, align 8, !tbaa !5
  %3165 = getelementptr inbounds %struct.LIST, ptr %3164, i64 0, i32 1
  store ptr %3162, ptr %3165, align 8, !tbaa !5
  %3166 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3166, ptr %3163, align 8, !tbaa !5
  %3167 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3168 = getelementptr inbounds %struct.LIST, ptr %3166, i64 0, i32 1
  store ptr %3167, ptr %3168, align 8, !tbaa !5
  br label %3169

3169:                                             ; preds = %3148, %3159, %3134
  %3170 = getelementptr inbounds [2 x %struct.LIST], ptr %3091, i64 0, i64 1, i32 1
  %3171 = load ptr, ptr %3170, align 8, !tbaa !5
  store ptr %3171, ptr @xx_link, align 8, !tbaa !8
  %3172 = getelementptr inbounds [2 x %struct.LIST], ptr %3171, i64 0, i64 1, i32 1
  %3173 = load ptr, ptr %3172, align 8, !tbaa !5
  %3174 = icmp eq ptr %3173, %3171
  br i1 %3174, label %3180, label %3175

3175:                                             ; preds = %3169
  store ptr %3173, ptr @zz_res, align 8, !tbaa !8
  %3176 = getelementptr inbounds [2 x %struct.LIST], ptr %3171, i64 0, i64 1
  %3177 = load ptr, ptr %3176, align 8, !tbaa !5
  %3178 = getelementptr inbounds [2 x %struct.LIST], ptr %3173, i64 0, i64 1
  store ptr %3177, ptr %3178, align 8, !tbaa !5
  %3179 = getelementptr inbounds [2 x %struct.LIST], ptr %3177, i64 0, i64 1, i32 1
  store ptr %3173, ptr %3179, align 8, !tbaa !5
  store ptr %3171, ptr %3172, align 8, !tbaa !5
  store ptr %3171, ptr %3176, align 8, !tbaa !5
  br label %3180

3180:                                             ; preds = %3169, %3175
  %3181 = phi ptr [ %3173, %3175 ], [ null, %3169 ]
  store ptr %3181, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3171, ptr @zz_hold, align 8, !tbaa !8
  %3182 = getelementptr inbounds %struct.LIST, ptr %3171, i64 0, i32 1
  %3183 = load ptr, ptr %3182, align 8, !tbaa !5
  %3184 = icmp eq ptr %3183, %3171
  br i1 %3184, label %3193, label %3185

3185:                                             ; preds = %3180
  store ptr %3183, ptr @zz_res, align 8, !tbaa !8
  %3186 = load ptr, ptr %3171, align 8, !tbaa !5
  store ptr %3186, ptr %3183, align 8, !tbaa !5
  %3187 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3188 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3189 = load ptr, ptr %3188, align 8, !tbaa !5
  %3190 = getelementptr inbounds %struct.LIST, ptr %3189, i64 0, i32 1
  store ptr %3187, ptr %3190, align 8, !tbaa !5
  %3191 = getelementptr inbounds %struct.LIST, ptr %3188, i64 0, i32 1
  store ptr %3188, ptr %3191, align 8, !tbaa !5
  store ptr %3188, ptr %3188, align 8, !tbaa !5
  %3192 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3193

3193:                                             ; preds = %3180, %3185
  %3194 = phi ptr [ %3171, %3180 ], [ %3192, %3185 ]
  store ptr %3194, ptr @zz_hold, align 8, !tbaa !8
  %3195 = getelementptr inbounds %struct.word_type, ptr %3194, i64 0, i32 1
  %3196 = load i8, ptr %3195, align 8, !tbaa !5
  %3197 = add i8 %3196, -11
  %3198 = icmp ult i8 %3197, 2
  %3199 = getelementptr inbounds %struct.word_type, ptr %3194, i64 0, i32 1, i32 0, i32 1
  %3200 = zext i8 %3196 to i64
  %3201 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3200
  %3202 = select i1 %3198, ptr %3199, ptr %3201
  %3203 = load i8, ptr %3202, align 1, !tbaa !5
  %3204 = zext i8 %3203 to i32
  store i32 %3204, ptr @zz_size, align 4, !tbaa !10
  %3205 = zext i8 %3203 to i64
  %3206 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3205
  %3207 = load ptr, ptr %3206, align 8, !tbaa !8
  store ptr %3207, ptr %3194, align 8, !tbaa !5
  %3208 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3209 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3210 = sext i32 %3209 to i64
  %3211 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3210
  store ptr %3208, ptr %3211, align 8, !tbaa !8
  %3212 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3213 = getelementptr inbounds [2 x %struct.LIST], ptr %3212, i64 0, i64 1, i32 1
  %3214 = load ptr, ptr %3213, align 8, !tbaa !5
  %3215 = icmp eq ptr %3214, %3212
  br i1 %3215, label %3216, label %3602

3216:                                             ; preds = %3193
  %3217 = tail call i32 @DisposeObject(ptr noundef nonnull %3212) #8
  br label %3602

3218:                                             ; preds = %3131
  switch i8 %3093, label %3503 [
    i8 1, label %3602
    i8 11, label %3219
    i8 12, label %3219
  ]

3219:                                             ; preds = %3218, %3218
  br i1 %3081, label %3220, label %3505

3220:                                             ; preds = %3219
  %3221 = icmp eq ptr %3085, null
  br i1 %3221, label %3502, label %3222

3222:                                             ; preds = %3220
  %3223 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3, i32 1
  %3224 = load i16, ptr %3223, align 2, !tbaa !5
  %3225 = icmp eq i16 %3224, 0
  br i1 %3225, label %3226, label %3502

3226:                                             ; preds = %3222
  %3227 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3
  %3228 = load i16, ptr %3227, align 4
  %3229 = and i16 %3228, 128
  %3230 = icmp ne i16 %3229, 0
  %3231 = icmp eq i8 %3132, 17
  %3232 = and i1 %3231, %3230
  br i1 %3232, label %3233, label %3502

3233:                                             ; preds = %3226
  %3234 = getelementptr inbounds %struct.word_type, ptr %3085, i64 0, i32 1
  %3235 = load i8, ptr %3234, align 8, !tbaa !5
  %3236 = add i8 %3235, -11
  %3237 = icmp ult i8 %3236, 2
  br i1 %3237, label %3238, label %3502

3238:                                             ; preds = %3233
  %3239 = getelementptr inbounds i8, ptr %3086, i64 42
  %3240 = load i8, ptr %3239, align 2, !tbaa !5
  %3241 = zext i8 %3240 to i32
  %3242 = getelementptr inbounds i8, ptr %3086, i64 41
  %3243 = load i8, ptr %3242, align 1, !tbaa !5
  %3244 = zext i8 %3243 to i32
  %3245 = sub nsw i32 0, %3244
  %3246 = icmp eq i32 %3241, %3245
  %3247 = and i16 %3228, -768
  %3248 = icmp eq i16 %3247, 9216
  %3249 = and i1 %3248, %3246
  br i1 %3249, label %3250, label %3502

3250:                                             ; preds = %3238
  %3251 = getelementptr inbounds %struct.word_type, ptr %3085, i64 0, i32 2
  %3252 = load i32, ptr %3251, align 8
  %3253 = getelementptr inbounds %struct.word_type, ptr %3091, i64 0, i32 2
  %3254 = load i32, ptr %3253, align 8
  %3255 = xor i32 %3254, %3252
  %3256 = and i32 %3255, 2147483647
  %3257 = icmp eq i32 %3256, 0
  br i1 %3257, label %3258, label %3502

3258:                                             ; preds = %3250
  %3259 = getelementptr inbounds [2 x %struct.LIST], ptr %3085, i64 0, i64 1, i32 1
  %3260 = load ptr, ptr %3259, align 8, !tbaa !5
  %3261 = getelementptr inbounds %struct.LIST, ptr %3260, i64 0, i32 1
  %3262 = load ptr, ptr %3261, align 8, !tbaa !5
  %3263 = getelementptr inbounds %struct.LIST, ptr %3262, i64 0, i32 1
  %3264 = load ptr, ptr %3263, align 8, !tbaa !5
  %3265 = icmp eq ptr %3264, %3084
  br i1 %3265, label %3266, label %3502

3266:                                             ; preds = %3258
  %3267 = getelementptr inbounds %struct.word_type, ptr %3085, i64 0, i32 4
  %3268 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3267) #9
  %3269 = getelementptr inbounds %struct.word_type, ptr %3091, i64 0, i32 4
  %3270 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3269) #9
  %3271 = add i64 %3270, %3268
  %3272 = icmp ugt i64 %3271, 511
  br i1 %3272, label %3273, label %3276

3273:                                             ; preds = %3266
  %3274 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %3234, ptr noundef nonnull %3267, ptr noundef nonnull %3269) #8
  %3275 = load i8, ptr %3234, align 8, !tbaa !5
  br label %3276

3276:                                             ; preds = %3273, %3266
  %3277 = phi i8 [ %3275, %3273 ], [ %3235, %3266 ]
  %3278 = icmp eq i8 %3277, 12
  br i1 %3278, label %3283, label %3279

3279:                                             ; preds = %3276
  %3280 = load i8, ptr %3096, align 8, !tbaa !5
  %3281 = freeze i8 %3280
  %3282 = icmp eq i8 %3281, 12
  br i1 %3282, label %3283, label %3284

3283:                                             ; preds = %3276, %3279
  br label %3284

3284:                                             ; preds = %3279, %3283
  %3285 = phi i32 [ 12, %3283 ], [ 11, %3279 ]
  %3286 = tail call ptr @MakeWordTwo(i32 noundef %3285, ptr noundef nonnull %3267, ptr noundef nonnull %3269, ptr noundef nonnull %3234) #8
  %3287 = load i32, ptr %3251, align 8
  %3288 = and i32 %3287, 4095
  %3289 = getelementptr inbounds %struct.word_type, ptr %3286, i64 0, i32 2
  %3290 = load i32, ptr %3289, align 8
  %3291 = and i32 %3290, -4096
  %3292 = or disjoint i32 %3291, %3288
  store i32 %3292, ptr %3289, align 8
  %3293 = load i32, ptr %3251, align 8
  %3294 = and i32 %3293, 4190208
  %3295 = and i32 %3292, -4190209
  %3296 = or disjoint i32 %3295, %3294
  store i32 %3296, ptr %3289, align 8
  %3297 = load i32, ptr %3251, align 8
  %3298 = and i32 %3297, 4194304
  %3299 = and i32 %3296, -4194305
  %3300 = or disjoint i32 %3299, %3298
  store i32 %3300, ptr %3289, align 8
  %3301 = load i32, ptr %3251, align 8
  %3302 = and i32 %3301, 528482304
  %3303 = and i32 %3300, -528482305
  %3304 = or disjoint i32 %3303, %3302
  store i32 %3304, ptr %3289, align 8
  %3305 = load i32, ptr %3251, align 8
  %3306 = and i32 %3305, -2147483648
  %3307 = and i32 %3304, 2147483647
  %3308 = or disjoint i32 %3307, %3306
  store i32 %3308, ptr %3289, align 8
  %3309 = load i32, ptr %3251, align 8
  %3310 = and i32 %3309, 1610612736
  %3311 = and i32 %3308, -1610612737
  %3312 = or disjoint i32 %3311, %3310
  store i32 %3312, ptr %3289, align 8
  tail call void @FontWordSize(ptr noundef %3286) #8
  %3313 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %3314 = zext i8 %3313 to i32
  store i32 %3314, ptr @zz_size, align 4, !tbaa !10
  %3315 = zext i8 %3313 to i64
  %3316 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3315
  %3317 = load ptr, ptr %3316, align 8, !tbaa !8
  %3318 = icmp eq ptr %3317, null
  br i1 %3318, label %3319, label %3322

3319:                                             ; preds = %3284
  %3320 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3321 = tail call ptr @GetMemory(i32 noundef %3314, ptr noundef %3320) #8
  br label %3326

3322:                                             ; preds = %3284
  store ptr %3317, ptr @zz_hold, align 8, !tbaa !8
  %3323 = load ptr, ptr %3317, align 8, !tbaa !5
  %3324 = zext i8 %3313 to i64
  %3325 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3324
  store ptr %3323, ptr %3325, align 8, !tbaa !8
  br label %3326

3326:                                             ; preds = %3319, %3322
  %3327 = phi ptr [ %3321, %3319 ], [ %3317, %3322 ]
  %3328 = getelementptr inbounds %struct.word_type, ptr %3327, i64 0, i32 1
  store i8 0, ptr %3328, align 8, !tbaa !5
  %3329 = getelementptr inbounds [2 x %struct.LIST], ptr %3327, i64 0, i64 1, i32 1
  store ptr %3327, ptr %3329, align 8, !tbaa !5
  %3330 = getelementptr inbounds [2 x %struct.LIST], ptr %3327, i64 0, i64 1
  store ptr %3327, ptr %3330, align 8, !tbaa !5
  %3331 = getelementptr inbounds %struct.LIST, ptr %3327, i64 0, i32 1
  store ptr %3327, ptr %3331, align 8, !tbaa !5
  store ptr %3327, ptr %3327, align 8, !tbaa !5
  store ptr %3327, ptr @xx_link, align 8, !tbaa !8
  store ptr %3327, ptr @zz_res, align 8, !tbaa !8
  %3332 = load ptr, ptr %3259, align 8, !tbaa !5
  store ptr %3332, ptr @zz_hold, align 8, !tbaa !8
  %3333 = icmp eq ptr %3332, null
  br i1 %3333, label %3334, label %3335

3334:                                             ; preds = %3326
  store ptr %3286, ptr @zz_hold, align 8, !tbaa !8
  br label %3347

3335:                                             ; preds = %3326
  %3336 = load ptr, ptr %3332, align 8, !tbaa !5
  store ptr %3336, ptr @zz_tmp, align 8, !tbaa !8
  %3337 = load ptr, ptr %3327, align 8, !tbaa !5
  store ptr %3337, ptr %3332, align 8, !tbaa !5
  %3338 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3339 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3340 = load ptr, ptr %3339, align 8, !tbaa !5
  %3341 = getelementptr inbounds %struct.LIST, ptr %3340, i64 0, i32 1
  store ptr %3338, ptr %3341, align 8, !tbaa !5
  %3342 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3342, ptr %3339, align 8, !tbaa !5
  %3343 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3344 = getelementptr inbounds %struct.LIST, ptr %3342, i64 0, i32 1
  store ptr %3343, ptr %3344, align 8, !tbaa !5
  %3345 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %3345, ptr @zz_res, align 8, !tbaa !8
  %3346 = icmp eq ptr %3345, null
  br i1 %3346, label %3355, label %3347

3347:                                             ; preds = %3334, %3335
  %3348 = phi ptr [ %3327, %3334 ], [ %3345, %3335 ]
  %3349 = getelementptr inbounds [2 x %struct.LIST], ptr %3286, i64 0, i64 1
  %3350 = load ptr, ptr %3349, align 8, !tbaa !5
  store ptr %3350, ptr @zz_tmp, align 8, !tbaa !8
  %3351 = getelementptr inbounds [2 x %struct.LIST], ptr %3348, i64 0, i64 1
  %3352 = load ptr, ptr %3351, align 8, !tbaa !5
  store ptr %3352, ptr %3349, align 8, !tbaa !5
  %3353 = getelementptr inbounds [2 x %struct.LIST], ptr %3352, i64 0, i64 1, i32 1
  store ptr %3286, ptr %3353, align 8, !tbaa !5
  store ptr %3350, ptr %3351, align 8, !tbaa !5
  %3354 = getelementptr inbounds [2 x %struct.LIST], ptr %3350, i64 0, i64 1, i32 1
  store ptr %3348, ptr %3354, align 8, !tbaa !5
  br label %3355

3355:                                             ; preds = %3335, %3347
  %3356 = load ptr, ptr %3259, align 8, !tbaa !5
  store ptr %3356, ptr @xx_link, align 8, !tbaa !8
  %3357 = getelementptr inbounds [2 x %struct.LIST], ptr %3356, i64 0, i64 1, i32 1
  %3358 = load ptr, ptr %3357, align 8, !tbaa !5
  %3359 = icmp eq ptr %3358, %3356
  br i1 %3359, label %3365, label %3360

3360:                                             ; preds = %3355
  store ptr %3358, ptr @zz_res, align 8, !tbaa !8
  %3361 = getelementptr inbounds [2 x %struct.LIST], ptr %3356, i64 0, i64 1
  %3362 = load ptr, ptr %3361, align 8, !tbaa !5
  %3363 = getelementptr inbounds [2 x %struct.LIST], ptr %3358, i64 0, i64 1
  store ptr %3362, ptr %3363, align 8, !tbaa !5
  %3364 = getelementptr inbounds [2 x %struct.LIST], ptr %3362, i64 0, i64 1, i32 1
  store ptr %3358, ptr %3364, align 8, !tbaa !5
  store ptr %3356, ptr %3357, align 8, !tbaa !5
  store ptr %3356, ptr %3361, align 8, !tbaa !5
  br label %3365

3365:                                             ; preds = %3355, %3360
  %3366 = phi ptr [ %3358, %3360 ], [ null, %3355 ]
  store ptr %3366, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3356, ptr @zz_hold, align 8, !tbaa !8
  %3367 = getelementptr inbounds %struct.LIST, ptr %3356, i64 0, i32 1
  %3368 = load ptr, ptr %3367, align 8, !tbaa !5
  %3369 = icmp eq ptr %3368, %3356
  br i1 %3369, label %3378, label %3370

3370:                                             ; preds = %3365
  store ptr %3368, ptr @zz_res, align 8, !tbaa !8
  %3371 = load ptr, ptr %3356, align 8, !tbaa !5
  store ptr %3371, ptr %3368, align 8, !tbaa !5
  %3372 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3373 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3374 = load ptr, ptr %3373, align 8, !tbaa !5
  %3375 = getelementptr inbounds %struct.LIST, ptr %3374, i64 0, i32 1
  store ptr %3372, ptr %3375, align 8, !tbaa !5
  %3376 = getelementptr inbounds %struct.LIST, ptr %3373, i64 0, i32 1
  store ptr %3373, ptr %3376, align 8, !tbaa !5
  store ptr %3373, ptr %3373, align 8, !tbaa !5
  %3377 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3378

3378:                                             ; preds = %3365, %3370
  %3379 = phi ptr [ %3356, %3365 ], [ %3377, %3370 ]
  store ptr %3379, ptr @zz_hold, align 8, !tbaa !8
  %3380 = getelementptr inbounds %struct.word_type, ptr %3379, i64 0, i32 1
  %3381 = load i8, ptr %3380, align 8, !tbaa !5
  %3382 = add i8 %3381, -11
  %3383 = icmp ult i8 %3382, 2
  %3384 = getelementptr inbounds %struct.word_type, ptr %3379, i64 0, i32 1, i32 0, i32 1
  %3385 = zext i8 %3381 to i64
  %3386 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3385
  %3387 = select i1 %3383, ptr %3384, ptr %3386
  %3388 = load i8, ptr %3387, align 1, !tbaa !5
  %3389 = zext i8 %3388 to i32
  store i32 %3389, ptr @zz_size, align 4, !tbaa !10
  %3390 = zext i8 %3388 to i64
  %3391 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3390
  %3392 = load ptr, ptr %3391, align 8, !tbaa !8
  store ptr %3392, ptr %3379, align 8, !tbaa !5
  %3393 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3394 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3395 = sext i32 %3394 to i64
  %3396 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3395
  store ptr %3393, ptr %3396, align 8, !tbaa !8
  %3397 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3398 = getelementptr inbounds [2 x %struct.LIST], ptr %3397, i64 0, i64 1, i32 1
  %3399 = load ptr, ptr %3398, align 8, !tbaa !5
  %3400 = icmp eq ptr %3399, %3397
  br i1 %3400, label %3401, label %3403

3401:                                             ; preds = %3378
  %3402 = tail call i32 @DisposeObject(ptr noundef nonnull %3397) #8
  br label %3403

3403:                                             ; preds = %3401, %3378
  %3404 = getelementptr inbounds [2 x %struct.LIST], ptr %3086, i64 0, i64 1, i32 1
  %3405 = load ptr, ptr %3404, align 8, !tbaa !5
  store ptr %3405, ptr @xx_link, align 8, !tbaa !8
  %3406 = getelementptr inbounds [2 x %struct.LIST], ptr %3405, i64 0, i64 1, i32 1
  %3407 = load ptr, ptr %3406, align 8, !tbaa !5
  %3408 = icmp eq ptr %3407, %3405
  br i1 %3408, label %3414, label %3409

3409:                                             ; preds = %3403
  store ptr %3407, ptr @zz_res, align 8, !tbaa !8
  %3410 = getelementptr inbounds [2 x %struct.LIST], ptr %3405, i64 0, i64 1
  %3411 = load ptr, ptr %3410, align 8, !tbaa !5
  %3412 = getelementptr inbounds [2 x %struct.LIST], ptr %3407, i64 0, i64 1
  store ptr %3411, ptr %3412, align 8, !tbaa !5
  %3413 = getelementptr inbounds [2 x %struct.LIST], ptr %3411, i64 0, i64 1, i32 1
  store ptr %3407, ptr %3413, align 8, !tbaa !5
  store ptr %3405, ptr %3406, align 8, !tbaa !5
  store ptr %3405, ptr %3410, align 8, !tbaa !5
  br label %3414

3414:                                             ; preds = %3403, %3409
  %3415 = phi ptr [ %3407, %3409 ], [ null, %3403 ]
  store ptr %3415, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3405, ptr @zz_hold, align 8, !tbaa !8
  %3416 = getelementptr inbounds %struct.LIST, ptr %3405, i64 0, i32 1
  %3417 = load ptr, ptr %3416, align 8, !tbaa !5
  %3418 = icmp eq ptr %3417, %3405
  br i1 %3418, label %3427, label %3419

3419:                                             ; preds = %3414
  store ptr %3417, ptr @zz_res, align 8, !tbaa !8
  %3420 = load ptr, ptr %3405, align 8, !tbaa !5
  store ptr %3420, ptr %3417, align 8, !tbaa !5
  %3421 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3422 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3423 = load ptr, ptr %3422, align 8, !tbaa !5
  %3424 = getelementptr inbounds %struct.LIST, ptr %3423, i64 0, i32 1
  store ptr %3421, ptr %3424, align 8, !tbaa !5
  %3425 = getelementptr inbounds %struct.LIST, ptr %3422, i64 0, i32 1
  store ptr %3422, ptr %3425, align 8, !tbaa !5
  store ptr %3422, ptr %3422, align 8, !tbaa !5
  %3426 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3427

3427:                                             ; preds = %3414, %3419
  %3428 = phi ptr [ %3405, %3414 ], [ %3426, %3419 ]
  store ptr %3428, ptr @zz_hold, align 8, !tbaa !8
  %3429 = getelementptr inbounds %struct.word_type, ptr %3428, i64 0, i32 1
  %3430 = load i8, ptr %3429, align 8, !tbaa !5
  %3431 = add i8 %3430, -11
  %3432 = icmp ult i8 %3431, 2
  %3433 = getelementptr inbounds %struct.word_type, ptr %3428, i64 0, i32 1, i32 0, i32 1
  %3434 = zext i8 %3430 to i64
  %3435 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3434
  %3436 = select i1 %3432, ptr %3433, ptr %3435
  %3437 = load i8, ptr %3436, align 1, !tbaa !5
  %3438 = zext i8 %3437 to i32
  store i32 %3438, ptr @zz_size, align 4, !tbaa !10
  %3439 = zext i8 %3437 to i64
  %3440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3439
  %3441 = load ptr, ptr %3440, align 8, !tbaa !8
  store ptr %3441, ptr %3428, align 8, !tbaa !5
  %3442 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3443 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3444 = sext i32 %3443 to i64
  %3445 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3444
  store ptr %3442, ptr %3445, align 8, !tbaa !8
  %3446 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3447 = getelementptr inbounds [2 x %struct.LIST], ptr %3446, i64 0, i64 1, i32 1
  %3448 = load ptr, ptr %3447, align 8, !tbaa !5
  %3449 = icmp eq ptr %3448, %3446
  br i1 %3449, label %3450, label %3452

3450:                                             ; preds = %3427
  %3451 = tail call i32 @DisposeObject(ptr noundef nonnull %3446) #8
  br label %3452

3452:                                             ; preds = %3450, %3427
  store ptr %3084, ptr @xx_link, align 8, !tbaa !8
  %3453 = getelementptr inbounds [2 x %struct.LIST], ptr %3084, i64 0, i64 1, i32 1
  %3454 = load ptr, ptr %3453, align 8, !tbaa !5
  %3455 = icmp eq ptr %3454, %3084
  br i1 %3455, label %3461, label %3456

3456:                                             ; preds = %3452
  store ptr %3454, ptr @zz_res, align 8, !tbaa !8
  %3457 = getelementptr inbounds [2 x %struct.LIST], ptr %3084, i64 0, i64 1
  %3458 = load ptr, ptr %3457, align 8, !tbaa !5
  %3459 = getelementptr inbounds [2 x %struct.LIST], ptr %3454, i64 0, i64 1
  store ptr %3458, ptr %3459, align 8, !tbaa !5
  %3460 = getelementptr inbounds [2 x %struct.LIST], ptr %3458, i64 0, i64 1, i32 1
  store ptr %3454, ptr %3460, align 8, !tbaa !5
  store ptr %3084, ptr %3453, align 8, !tbaa !5
  store ptr %3084, ptr %3457, align 8, !tbaa !5
  br label %3461

3461:                                             ; preds = %3452, %3456
  %3462 = phi ptr [ %3454, %3456 ], [ null, %3452 ]
  store ptr %3462, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3084, ptr @zz_hold, align 8, !tbaa !8
  %3463 = getelementptr inbounds %struct.LIST, ptr %3084, i64 0, i32 1
  %3464 = load ptr, ptr %3463, align 8, !tbaa !5
  %3465 = icmp eq ptr %3464, %3084
  br i1 %3465, label %3474, label %3466

3466:                                             ; preds = %3461
  store ptr %3464, ptr @zz_res, align 8, !tbaa !8
  %3467 = load ptr, ptr %3084, align 8, !tbaa !5
  store ptr %3467, ptr %3464, align 8, !tbaa !5
  %3468 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3469 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3470 = load ptr, ptr %3469, align 8, !tbaa !5
  %3471 = getelementptr inbounds %struct.LIST, ptr %3470, i64 0, i32 1
  store ptr %3468, ptr %3471, align 8, !tbaa !5
  %3472 = getelementptr inbounds %struct.LIST, ptr %3469, i64 0, i32 1
  store ptr %3469, ptr %3472, align 8, !tbaa !5
  store ptr %3469, ptr %3469, align 8, !tbaa !5
  %3473 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3474

3474:                                             ; preds = %3461, %3466
  %3475 = phi ptr [ %3084, %3461 ], [ %3473, %3466 ]
  store ptr %3475, ptr @zz_hold, align 8, !tbaa !8
  %3476 = getelementptr inbounds %struct.word_type, ptr %3475, i64 0, i32 1
  %3477 = load i8, ptr %3476, align 8, !tbaa !5
  %3478 = add i8 %3477, -11
  %3479 = icmp ult i8 %3478, 2
  %3480 = getelementptr inbounds %struct.word_type, ptr %3475, i64 0, i32 1, i32 0, i32 1
  %3481 = zext i8 %3477 to i64
  %3482 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3481
  %3483 = select i1 %3479, ptr %3480, ptr %3482
  %3484 = load i8, ptr %3483, align 1, !tbaa !5
  %3485 = zext i8 %3484 to i32
  store i32 %3485, ptr @zz_size, align 4, !tbaa !10
  %3486 = zext i8 %3484 to i64
  %3487 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3486
  %3488 = load ptr, ptr %3487, align 8, !tbaa !8
  store ptr %3488, ptr %3475, align 8, !tbaa !5
  %3489 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3490 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3491 = sext i32 %3490 to i64
  %3492 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3491
  store ptr %3489, ptr %3492, align 8, !tbaa !8
  %3493 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3494 = getelementptr inbounds [2 x %struct.LIST], ptr %3493, i64 0, i64 1, i32 1
  %3495 = load ptr, ptr %3494, align 8, !tbaa !5
  %3496 = icmp eq ptr %3495, %3493
  br i1 %3496, label %3497, label %3499

3497:                                             ; preds = %3474
  %3498 = tail call i32 @DisposeObject(ptr noundef nonnull %3493) #8
  br label %3499

3499:                                             ; preds = %3497, %3474
  %3500 = getelementptr inbounds [2 x %struct.LIST], ptr %3286, i64 0, i64 1, i32 1
  %3501 = load ptr, ptr %3500, align 8, !tbaa !5
  br label %3602

3502:                                             ; preds = %3233, %3258, %3250, %3238, %3226, %3222, %3220
  tail call void @FontWordSize(ptr noundef nonnull %3091) #8
  br label %3505

3503:                                             ; preds = %3218
  %3504 = tail call ptr @MinSize(ptr noundef nonnull %3091, i32 noundef %1, ptr noundef %2)
  br label %3505

3505:                                             ; preds = %3219, %3502, %3503
  %3506 = phi ptr [ %3091, %3502 ], [ %3091, %3219 ], [ %3504, %3503 ]
  %3507 = getelementptr inbounds %struct.word_type, ptr %3506, i64 0, i32 1
  %3508 = load i8, ptr %3507, align 8, !tbaa !5
  %3509 = add i8 %3508, -2
  %3510 = icmp ult i8 %3509, 7
  br i1 %3510, label %3511, label %3532

3511:                                             ; preds = %3505
  %3512 = icmp eq ptr %3086, null
  br i1 %3512, label %3602, label %3513

3513:                                             ; preds = %3511
  %3514 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3
  %3515 = load i16, ptr %3514, align 4
  %3516 = and i16 %3515, 256
  %3517 = icmp eq i16 %3516, 0
  br i1 %3517, label %3522, label %3518

3518:                                             ; preds = %3513
  %3519 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %3507) #8
  %3520 = load i16, ptr %3514, align 4
  %3521 = and i16 %3520, -257
  store i16 %3521, ptr %3514, align 4
  br label %3522

3522:                                             ; preds = %3513, %3518
  %3523 = phi i16 [ %3515, %3513 ], [ %3521, %3518 ]
  %3524 = and i16 %3523, 7168
  %3525 = icmp eq i16 %3524, 5120
  br i1 %3525, label %3526, label %3602

3526:                                             ; preds = %3522
  %3527 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %3507, i32 noundef 119) #8
  %3528 = load i16, ptr %3514, align 4
  %3529 = and i16 %3528, -7169
  %3530 = or disjoint i16 %3529, 1024
  store i16 %3530, ptr %3514, align 4
  %3531 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3, i32 1
  store i16 0, ptr %3531, align 2, !tbaa !5
  br label %3602

3532:                                             ; preds = %3505
  %3533 = icmp eq ptr %3085, null
  br i1 %3533, label %3534, label %3538

3534:                                             ; preds = %3532
  %3535 = getelementptr inbounds %struct.word_type, ptr %3506, i64 0, i32 3
  %3536 = getelementptr inbounds [2 x i32], ptr %3535, i64 0, i64 %3082
  %3537 = load i32, ptr %3536, align 4, !tbaa !5
  store i32 %3537, ptr %5, align 4, !tbaa !10
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %3602

3538:                                             ; preds = %3532
  %3539 = getelementptr inbounds %struct.word_type, ptr %3085, i64 0, i32 3, i32 1
  %3540 = getelementptr inbounds [2 x i32], ptr %3539, i64 0, i64 %3082
  %3541 = load i32, ptr %3540, align 4, !tbaa !5
  %3542 = getelementptr inbounds %struct.word_type, ptr %3506, i64 0, i32 3
  %3543 = getelementptr inbounds [2 x i32], ptr %3542, i64 0, i64 %3082
  %3544 = load i32, ptr %3543, align 4, !tbaa !5
  %3545 = getelementptr inbounds %struct.word_type, ptr %3506, i64 0, i32 3, i32 1
  %3546 = getelementptr inbounds [2 x i32], ptr %3545, i64 0, i64 %3082
  %3547 = load i32, ptr %3546, align 4, !tbaa !5
  %3548 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3
  %3549 = tail call i32 @MinGap(i32 noundef %3541, i32 noundef %3544, i32 noundef %3547, ptr noundef nonnull %3548) #8
  %3550 = icmp eq ptr %3086, null
  br i1 %3550, label %3554, label %3551

3551:                                             ; preds = %3538
  %3552 = load i16, ptr %3548, align 4
  %3553 = icmp ult i16 %3552, 8192
  br i1 %3553, label %3554, label %3558

3554:                                             ; preds = %3551, %3538
  %3555 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3556 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3555, ptr noundef nonnull @.str.20) #8
  %3557 = load i16, ptr %3548, align 4
  br label %3558

3558:                                             ; preds = %3554, %3551
  %3559 = phi i16 [ %3557, %3554 ], [ %3552, %3551 ]
  %3560 = and i16 %3559, -1024
  %3561 = icmp eq i16 %3560, -15360
  br i1 %3561, label %3562, label %3571

3562:                                             ; preds = %3558
  %3563 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3, i32 1
  %3564 = load i16, ptr %3563, align 2, !tbaa !5
  %3565 = sext i16 %3564 to i32
  %3566 = load i32, ptr %3543, align 4, !tbaa !5
  %3567 = add nsw i32 %3566, %3565
  %3568 = load i32, ptr %6, align 4, !tbaa !10
  %3569 = add nsw i32 %3568, %3549
  %3570 = tail call i32 @llvm.smax.i32(i32 %3567, i32 %3569)
  br label %3574

3571:                                             ; preds = %3558
  %3572 = load i32, ptr %6, align 4, !tbaa !10
  %3573 = add nsw i32 %3572, %3549
  br label %3574

3574:                                             ; preds = %3571, %3562
  %3575 = phi i32 [ %3573, %3571 ], [ %3570, %3562 ]
  store i32 %3575, ptr %6, align 4, !tbaa !10
  %3576 = and i16 %3559, 7168
  %3577 = icmp eq i16 %3576, 2048
  br i1 %3577, label %3578, label %3583

3578:                                             ; preds = %3574
  %3579 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3, i32 1
  %3580 = load i16, ptr %3579, align 2, !tbaa !5
  %3581 = icmp sgt i16 %3580, 4096
  %3582 = select i1 %3581, i32 1, i32 %3087
  br label %3594

3583:                                             ; preds = %3574
  %3584 = and i16 %3559, 7424
  %3585 = icmp eq i16 %3584, 3328
  br i1 %3585, label %3586, label %3594

3586:                                             ; preds = %3583
  %3587 = getelementptr inbounds %struct.gapobj_type, ptr %3086, i64 0, i32 3, i32 1
  %3588 = load i16, ptr %3587, align 2, !tbaa !5
  %3589 = icmp sgt i16 %3588, 0
  br i1 %3589, label %3590, label %3594

3590:                                             ; preds = %3586
  %3591 = getelementptr inbounds %struct.word_type, ptr %3086, i64 0, i32 1
  %3592 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %3591) #8
  %3593 = load i16, ptr %3548, align 4
  br label %3594

3594:                                             ; preds = %3578, %3590, %3586, %3583
  %3595 = phi i16 [ %3559, %3578 ], [ %3593, %3590 ], [ %3559, %3586 ], [ %3559, %3583 ]
  %3596 = phi i32 [ %3582, %3578 ], [ %3087, %3590 ], [ %3087, %3586 ], [ %3087, %3583 ]
  %3597 = and i16 %3595, 256
  %3598 = icmp eq i16 %3597, 0
  br i1 %3598, label %3602, label %3599

3599:                                             ; preds = %3594
  %3600 = load i32, ptr %5, align 4, !tbaa !10
  %3601 = add nsw i32 %3600, %3575
  store i32 %3601, ptr %5, align 4, !tbaa !10
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %3602

3602:                                             ; preds = %3511, %3534, %3599, %3594, %3218, %3115, %3522, %3526, %3193, %3216, %3099, %3121, %3499
  %3603 = phi i32 [ %3087, %3121 ], [ %3087, %3099 ], [ %3087, %3216 ], [ %3087, %3193 ], [ %3087, %3526 ], [ %3087, %3522 ], [ %3087, %3499 ], [ %3087, %3115 ], [ %3087, %3218 ], [ %3087, %3534 ], [ %3596, %3599 ], [ %3596, %3594 ], [ %3087, %3511 ]
  %3604 = phi ptr [ %3086, %3121 ], [ %3086, %3099 ], [ %3086, %3216 ], [ %3086, %3193 ], [ %3086, %3526 ], [ %3086, %3522 ], [ %3086, %3499 ], [ %3086, %3115 ], [ %3091, %3218 ], [ %3086, %3534 ], [ %3086, %3599 ], [ %3086, %3594 ], [ null, %3511 ]
  %3605 = phi ptr [ %3085, %3121 ], [ %3085, %3099 ], [ %3085, %3216 ], [ %3085, %3193 ], [ %3085, %3526 ], [ %3085, %3522 ], [ %3286, %3499 ], [ %3085, %3115 ], [ %3085, %3218 ], [ %3506, %3534 ], [ %3506, %3599 ], [ %3506, %3594 ], [ %3085, %3511 ]
  %3606 = phi ptr [ %3101, %3121 ], [ %3084, %3099 ], [ %3135, %3216 ], [ %3135, %3193 ], [ %3084, %3526 ], [ %3084, %3522 ], [ %3501, %3499 ], [ %3101, %3115 ], [ %3084, %3218 ], [ %3084, %3534 ], [ %3084, %3599 ], [ %3084, %3594 ], [ %3084, %3511 ]
  %3607 = getelementptr inbounds %struct.LIST, ptr %3606, i64 0, i32 1
  %3608 = load ptr, ptr %3607, align 8, !tbaa !5
  %3609 = icmp eq ptr %3608, %3049
  br i1 %3609, label %3610, label %3083

3610:                                             ; preds = %3602
  %3611 = icmp ne i32 %3603, 0
  %3612 = icmp eq ptr %3605, null
  br i1 %3612, label %3613, label %3616

3613:                                             ; preds = %3073, %3610
  %3614 = phi i1 [ %3611, %3610 ], [ false, %3073 ]
  store i32 0, ptr %5, align 4, !tbaa !10
  %3615 = sext i32 %1 to i64
  br label %3624

3616:                                             ; preds = %3610
  %3617 = getelementptr inbounds %struct.word_type, ptr %3605, i64 0, i32 3, i32 1
  %3618 = sext i32 %1 to i64
  %3619 = getelementptr inbounds [2 x i32], ptr %3617, i64 0, i64 %3618
  %3620 = load i32, ptr %3619, align 4, !tbaa !5
  %3621 = load i32, ptr %6, align 4, !tbaa !10
  %3622 = add nsw i32 %3621, %3620
  %3623 = load i32, ptr %5, align 4
  br label %3624

3624:                                             ; preds = %3616, %3613
  %3625 = phi i1 [ %3611, %3616 ], [ %3614, %3613 ]
  %3626 = phi i64 [ %3618, %3616 ], [ %3615, %3613 ]
  %3627 = phi i32 [ %3623, %3616 ], [ 0, %3613 ]
  %3628 = phi i32 [ %3622, %3616 ], [ 0, %3613 ]
  store i32 %3628, ptr %6, align 4
  %3629 = tail call i32 @llvm.smin.i32(i32 %3627, i32 8388607)
  %3630 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3
  %3631 = getelementptr inbounds [2 x i32], ptr %3630, i64 0, i64 %3626
  store i32 %3629, ptr %3631, align 4, !tbaa !5
  %3632 = load i32, ptr %6, align 4
  %3633 = tail call i32 @llvm.smin.i32(i32 %3632, i32 8388607)
  %3634 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3, i32 1
  %3635 = getelementptr inbounds [2 x i32], ptr %3634, i64 0, i64 %3626
  store i32 %3633, ptr %3635, align 4, !tbaa !5
  %3636 = load i8, ptr %3051, align 8, !tbaa !5
  %3637 = icmp eq i8 %3636, 17
  %3638 = select i1 %3637, i1 %3625, i1 false
  br i1 %3638, label %3639, label %4192

3639:                                             ; preds = %3624
  store i32 8388607, ptr %3634, align 8, !tbaa !5
  br label %4192

3640:                                             ; preds = %3067, %3805
  %3641 = phi ptr [ %3811, %3805 ], [ %3068, %3067 ]
  %3642 = phi i32 [ %3808, %3805 ], [ 0, %3067 ]
  %3643 = phi i32 [ %3807, %3805 ], [ %3071, %3067 ]
  %3644 = phi i32 [ %3806, %3805 ], [ %3072, %3067 ]
  br label %3645

3645:                                             ; preds = %3640, %3645
  %3646 = phi ptr [ %3648, %3645 ], [ %3641, %3640 ]
  %3647 = getelementptr inbounds [2 x %struct.LIST], ptr %3646, i64 0, i64 1
  %3648 = load ptr, ptr %3647, align 8, !tbaa !5
  %3649 = getelementptr inbounds %struct.word_type, ptr %3648, i64 0, i32 1
  %3650 = load i8, ptr %3649, align 8, !tbaa !5
  %3651 = icmp eq i8 %3650, 0
  br i1 %3651, label %3645, label %3652

3652:                                             ; preds = %3645
  %3653 = add i8 %3650, -119
  %3654 = icmp ult i8 %3653, 20
  br i1 %3654, label %3655, label %3687

3655:                                             ; preds = %3652
  br i1 %3050, label %3656, label %3805

3656:                                             ; preds = %3655
  %3657 = load ptr, ptr %3641, align 8, !tbaa !5
  %3658 = getelementptr inbounds %struct.LIST, ptr %3657, i64 0, i32 1
  %3659 = load ptr, ptr %3658, align 8, !tbaa !5
  store ptr %3659, ptr @xx_link, align 8, !tbaa !8
  store ptr %3659, ptr @zz_hold, align 8, !tbaa !8
  %3660 = getelementptr inbounds %struct.LIST, ptr %3659, i64 0, i32 1
  %3661 = load ptr, ptr %3660, align 8, !tbaa !5
  %3662 = icmp eq ptr %3661, %3659
  br i1 %3662, label %3671, label %3663

3663:                                             ; preds = %3656
  store ptr %3661, ptr @zz_res, align 8, !tbaa !8
  %3664 = load ptr, ptr %3659, align 8, !tbaa !5
  store ptr %3664, ptr %3661, align 8, !tbaa !5
  %3665 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3666 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3667 = load ptr, ptr %3666, align 8, !tbaa !5
  %3668 = getelementptr inbounds %struct.LIST, ptr %3667, i64 0, i32 1
  store ptr %3665, ptr %3668, align 8, !tbaa !5
  %3669 = getelementptr inbounds %struct.LIST, ptr %3666, i64 0, i32 1
  store ptr %3666, ptr %3669, align 8, !tbaa !5
  store ptr %3666, ptr %3666, align 8, !tbaa !5
  %3670 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3671

3671:                                             ; preds = %3656, %3663
  %3672 = phi ptr [ %3659, %3656 ], [ %3670, %3663 ]
  store ptr %3672, ptr @zz_res, align 8, !tbaa !8
  %3673 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %3673, ptr @zz_hold, align 8, !tbaa !8
  %3674 = icmp eq ptr %3673, null
  %3675 = icmp eq ptr %3672, null
  %3676 = select i1 %3674, i1 true, i1 %3675
  br i1 %3676, label %3805, label %3677

3677:                                             ; preds = %3671
  %3678 = load ptr, ptr %3673, align 8, !tbaa !5
  store ptr %3678, ptr @zz_tmp, align 8, !tbaa !8
  %3679 = load ptr, ptr %3672, align 8, !tbaa !5
  store ptr %3679, ptr %3673, align 8, !tbaa !5
  %3680 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3681 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3682 = load ptr, ptr %3681, align 8, !tbaa !5
  %3683 = getelementptr inbounds %struct.LIST, ptr %3682, i64 0, i32 1
  store ptr %3680, ptr %3683, align 8, !tbaa !5
  %3684 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3684, ptr %3681, align 8, !tbaa !5
  %3685 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3686 = getelementptr inbounds %struct.LIST, ptr %3684, i64 0, i32 1
  store ptr %3685, ptr %3686, align 8, !tbaa !5
  br label %3805

3687:                                             ; preds = %3652
  %3688 = load i8, ptr %3051, align 8, !tbaa !5
  %3689 = icmp eq i8 %3650, %3688
  br i1 %3689, label %3690, label %3774

3690:                                             ; preds = %3687
  %3691 = load ptr, ptr %3641, align 8, !tbaa !5
  %3692 = getelementptr inbounds %struct.LIST, ptr %3648, i64 0, i32 1
  %3693 = load ptr, ptr %3692, align 8, !tbaa !5
  %3694 = getelementptr inbounds %struct.LIST, ptr %3691, i64 0, i32 1
  %3695 = load ptr, ptr %3694, align 8, !tbaa !5
  %3696 = icmp eq ptr %3693, %3648
  br i1 %3696, label %3725, label %3697

3697:                                             ; preds = %3690
  %3698 = getelementptr inbounds %struct.word_type, ptr %3693, i64 0, i32 1
  %3699 = load i8, ptr %3698, align 8, !tbaa !5
  %3700 = icmp eq i8 %3699, 0
  br i1 %3700, label %3704, label %3701

3701:                                             ; preds = %3697
  %3702 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3703 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3702, ptr noundef nonnull @.str.12) #8
  br label %3704

3704:                                             ; preds = %3701, %3697
  store ptr %3693, ptr @zz_res, align 8, !tbaa !8
  store ptr %3648, ptr @zz_hold, align 8, !tbaa !8
  %3705 = load ptr, ptr %3648, align 8, !tbaa !5
  store ptr %3705, ptr @zz_tmp, align 8, !tbaa !8
  %3706 = load ptr, ptr %3693, align 8, !tbaa !5
  store ptr %3706, ptr %3648, align 8, !tbaa !5
  %3707 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3708 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3709 = load ptr, ptr %3708, align 8, !tbaa !5
  %3710 = getelementptr inbounds %struct.LIST, ptr %3709, i64 0, i32 1
  store ptr %3707, ptr %3710, align 8, !tbaa !5
  %3711 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3711, ptr %3708, align 8, !tbaa !5
  %3712 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3713 = getelementptr inbounds %struct.LIST, ptr %3711, i64 0, i32 1
  store ptr %3712, ptr %3713, align 8, !tbaa !5
  store ptr %3693, ptr @zz_res, align 8, !tbaa !8
  store ptr %3695, ptr @zz_hold, align 8, !tbaa !8
  %3714 = icmp eq ptr %3695, null
  br i1 %3714, label %3725, label %3715

3715:                                             ; preds = %3704
  %3716 = load ptr, ptr %3695, align 8, !tbaa !5
  store ptr %3716, ptr @zz_tmp, align 8, !tbaa !8
  %3717 = load ptr, ptr %3693, align 8, !tbaa !5
  store ptr %3717, ptr %3695, align 8, !tbaa !5
  %3718 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3719 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3720 = load ptr, ptr %3719, align 8, !tbaa !5
  %3721 = getelementptr inbounds %struct.LIST, ptr %3720, i64 0, i32 1
  store ptr %3718, ptr %3721, align 8, !tbaa !5
  %3722 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %3722, ptr %3719, align 8, !tbaa !5
  %3723 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3724 = getelementptr inbounds %struct.LIST, ptr %3722, i64 0, i32 1
  store ptr %3723, ptr %3724, align 8, !tbaa !5
  br label %3725

3725:                                             ; preds = %3704, %3715, %3690
  %3726 = getelementptr inbounds [2 x %struct.LIST], ptr %3648, i64 0, i64 1, i32 1
  %3727 = load ptr, ptr %3726, align 8, !tbaa !5
  store ptr %3727, ptr @xx_link, align 8, !tbaa !8
  %3728 = getelementptr inbounds [2 x %struct.LIST], ptr %3727, i64 0, i64 1, i32 1
  %3729 = load ptr, ptr %3728, align 8, !tbaa !5
  %3730 = icmp eq ptr %3729, %3727
  br i1 %3730, label %3736, label %3731

3731:                                             ; preds = %3725
  store ptr %3729, ptr @zz_res, align 8, !tbaa !8
  %3732 = getelementptr inbounds [2 x %struct.LIST], ptr %3727, i64 0, i64 1
  %3733 = load ptr, ptr %3732, align 8, !tbaa !5
  %3734 = getelementptr inbounds [2 x %struct.LIST], ptr %3729, i64 0, i64 1
  store ptr %3733, ptr %3734, align 8, !tbaa !5
  %3735 = getelementptr inbounds [2 x %struct.LIST], ptr %3733, i64 0, i64 1, i32 1
  store ptr %3729, ptr %3735, align 8, !tbaa !5
  store ptr %3727, ptr %3728, align 8, !tbaa !5
  store ptr %3727, ptr %3732, align 8, !tbaa !5
  br label %3736

3736:                                             ; preds = %3725, %3731
  %3737 = phi ptr [ %3729, %3731 ], [ null, %3725 ]
  store ptr %3737, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %3727, ptr @zz_hold, align 8, !tbaa !8
  %3738 = getelementptr inbounds %struct.LIST, ptr %3727, i64 0, i32 1
  %3739 = load ptr, ptr %3738, align 8, !tbaa !5
  %3740 = icmp eq ptr %3739, %3727
  br i1 %3740, label %3749, label %3741

3741:                                             ; preds = %3736
  store ptr %3739, ptr @zz_res, align 8, !tbaa !8
  %3742 = load ptr, ptr %3727, align 8, !tbaa !5
  store ptr %3742, ptr %3739, align 8, !tbaa !5
  %3743 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %3744 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3745 = load ptr, ptr %3744, align 8, !tbaa !5
  %3746 = getelementptr inbounds %struct.LIST, ptr %3745, i64 0, i32 1
  store ptr %3743, ptr %3746, align 8, !tbaa !5
  %3747 = getelementptr inbounds %struct.LIST, ptr %3744, i64 0, i32 1
  store ptr %3744, ptr %3747, align 8, !tbaa !5
  store ptr %3744, ptr %3744, align 8, !tbaa !5
  %3748 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %3749

3749:                                             ; preds = %3736, %3741
  %3750 = phi ptr [ %3727, %3736 ], [ %3748, %3741 ]
  store ptr %3750, ptr @zz_hold, align 8, !tbaa !8
  %3751 = getelementptr inbounds %struct.word_type, ptr %3750, i64 0, i32 1
  %3752 = load i8, ptr %3751, align 8, !tbaa !5
  %3753 = add i8 %3752, -11
  %3754 = icmp ult i8 %3753, 2
  %3755 = getelementptr inbounds %struct.word_type, ptr %3750, i64 0, i32 1, i32 0, i32 1
  %3756 = zext i8 %3752 to i64
  %3757 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %3756
  %3758 = select i1 %3754, ptr %3755, ptr %3757
  %3759 = load i8, ptr %3758, align 1, !tbaa !5
  %3760 = zext i8 %3759 to i32
  store i32 %3760, ptr @zz_size, align 4, !tbaa !10
  %3761 = zext i8 %3759 to i64
  %3762 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3761
  %3763 = load ptr, ptr %3762, align 8, !tbaa !8
  store ptr %3763, ptr %3750, align 8, !tbaa !5
  %3764 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %3765 = load i32, ptr @zz_size, align 4, !tbaa !10
  %3766 = sext i32 %3765 to i64
  %3767 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3766
  store ptr %3764, ptr %3767, align 8, !tbaa !8
  %3768 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %3769 = getelementptr inbounds [2 x %struct.LIST], ptr %3768, i64 0, i64 1, i32 1
  %3770 = load ptr, ptr %3769, align 8, !tbaa !5
  %3771 = icmp eq ptr %3770, %3768
  br i1 %3771, label %3772, label %3805

3772:                                             ; preds = %3749
  %3773 = tail call i32 @DisposeObject(ptr noundef nonnull %3768) #8
  br label %3805

3774:                                             ; preds = %3687
  switch i8 %3650, label %3787 [
    i8 1, label %3775
    i8 11, label %3785
    i8 12, label %3785
  ]

3775:                                             ; preds = %3774
  %3776 = icmp eq i32 %3642, 0
  br i1 %3776, label %3777, label %3780

3777:                                             ; preds = %3775
  %3778 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3779 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3778, ptr noundef nonnull @.str.22) #8
  br label %3780

3780:                                             ; preds = %3777, %3775
  %3781 = getelementptr inbounds %struct.gapobj_type, ptr %3648, i64 0, i32 3
  %3782 = load i16, ptr %3781, align 4
  %3783 = and i16 %3782, 512
  %3784 = icmp eq i16 %3783, 0
  br i1 %3784, label %3813, label %3805

3785:                                             ; preds = %3774, %3774
  br i1 %3065, label %3786, label %3789

3786:                                             ; preds = %3785
  tail call void @FontWordSize(ptr noundef nonnull %3648) #8
  br label %3789

3787:                                             ; preds = %3774
  %3788 = tail call ptr @MinSize(ptr noundef nonnull %3648, i32 noundef %1, ptr noundef %2)
  br label %3789

3789:                                             ; preds = %3785, %3786, %3787
  %3790 = phi ptr [ %3648, %3786 ], [ %3648, %3785 ], [ %3788, %3787 ]
  %3791 = icmp eq i32 %3642, 0
  %3792 = getelementptr inbounds %struct.word_type, ptr %3790, i64 0, i32 3
  %3793 = getelementptr inbounds [2 x i32], ptr %3792, i64 0, i64 %3066
  %3794 = load i32, ptr %3793, align 4, !tbaa !5
  br i1 %3791, label %3801, label %3795

3795:                                             ; preds = %3789
  %3796 = tail call i32 @llvm.smax.i32(i32 %3643, i32 %3794)
  store i32 %3796, ptr %5, align 4, !tbaa !10
  %3797 = getelementptr inbounds %struct.word_type, ptr %3790, i64 0, i32 3, i32 1
  %3798 = getelementptr inbounds [2 x i32], ptr %3797, i64 0, i64 %3066
  %3799 = load i32, ptr %3798, align 4, !tbaa !5
  %3800 = tail call i32 @llvm.smax.i32(i32 %3644, i32 %3799)
  store i32 %3800, ptr %6, align 4, !tbaa !10
  br label %3805

3801:                                             ; preds = %3789
  store i32 %3794, ptr %5, align 4, !tbaa !10
  %3802 = getelementptr inbounds %struct.word_type, ptr %3790, i64 0, i32 3, i32 1
  %3803 = getelementptr inbounds [2 x i32], ptr %3802, i64 0, i64 %3066
  %3804 = load i32, ptr %3803, align 4, !tbaa !5
  store i32 %3804, ptr %6, align 4, !tbaa !10
  br label %3805

3805:                                             ; preds = %3671, %3780, %3801, %3795, %3749, %3772, %3655, %3677
  %3806 = phi i32 [ %3644, %3677 ], [ %3644, %3655 ], [ %3644, %3772 ], [ %3644, %3749 ], [ %3644, %3780 ], [ %3800, %3795 ], [ %3804, %3801 ], [ %3644, %3671 ]
  %3807 = phi i32 [ %3643, %3677 ], [ %3643, %3655 ], [ %3643, %3772 ], [ %3643, %3749 ], [ %3643, %3780 ], [ %3796, %3795 ], [ %3794, %3801 ], [ %3643, %3671 ]
  %3808 = phi i32 [ %3642, %3677 ], [ %3642, %3655 ], [ %3642, %3772 ], [ %3642, %3749 ], [ %3642, %3780 ], [ 1, %3795 ], [ 1, %3801 ], [ %3642, %3671 ]
  %3809 = phi ptr [ %3657, %3677 ], [ %3641, %3655 ], [ %3691, %3772 ], [ %3691, %3749 ], [ %3641, %3780 ], [ %3641, %3795 ], [ %3641, %3801 ], [ %3657, %3671 ]
  %3810 = getelementptr inbounds %struct.LIST, ptr %3809, i64 0, i32 1
  %3811 = load ptr, ptr %3810, align 8, !tbaa !5
  %3812 = icmp eq ptr %3811, %3049
  br i1 %3812, label %3822, label %3640

3813:                                             ; preds = %3780
  %3814 = add nsw i32 %3644, %3643
  %3815 = tail call i32 @llvm.smax.i32(i32 %3069, i32 %3814)
  %3816 = getelementptr inbounds %struct.LIST, ptr %3641, i64 0, i32 1
  %3817 = load ptr, ptr %3816, align 8, !tbaa !5
  %3818 = icmp eq ptr %3817, %3049
  br i1 %3818, label %3819, label %3067

3819:                                             ; preds = %3813
  %3820 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3821 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3820, ptr noundef nonnull @.str.23) #8
  br label %3828

3822:                                             ; preds = %3805
  %3823 = icmp eq i32 %3808, 0
  br i1 %3823, label %3824, label %3827

3824:                                             ; preds = %3822
  %3825 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3826 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3825, ptr noundef nonnull @.str.23) #8
  br i1 %3070, label %3840, label %3828

3827:                                             ; preds = %3822
  br i1 %3070, label %3840, label %3828

3828:                                             ; preds = %3819, %3824, %3827
  %3829 = phi i32 [ %3069, %3824 ], [ %3069, %3827 ], [ %3815, %3819 ]
  %3830 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3
  %3831 = sext i32 %1 to i64
  %3832 = getelementptr inbounds [2 x i32], ptr %3830, i64 0, i64 %3831
  store i32 0, ptr %3832, align 4, !tbaa !5
  %3833 = load i32, ptr %5, align 4
  %3834 = load i32, ptr %6, align 4
  %3835 = add nsw i32 %3834, %3833
  %3836 = tail call i32 @llvm.smax.i32(i32 %3829, i32 %3835)
  %3837 = tail call i32 @llvm.smin.i32(i32 %3836, i32 8388607)
  %3838 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3, i32 1
  %3839 = getelementptr inbounds [2 x i32], ptr %3838, i64 0, i64 %3831
  store i32 %3837, ptr %3839, align 4, !tbaa !5
  br label %4192

3840:                                             ; preds = %3059, %3824, %3827
  %3841 = load i32, ptr %5, align 4, !tbaa !10
  %3842 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3
  %3843 = sext i32 %1 to i64
  %3844 = getelementptr inbounds [2 x i32], ptr %3842, i64 0, i64 %3843
  store i32 %3841, ptr %3844, align 4, !tbaa !5
  %3845 = load i32, ptr %6, align 4, !tbaa !10
  %3846 = getelementptr inbounds %struct.word_type, ptr %3049, i64 0, i32 3, i32 1
  %3847 = getelementptr inbounds [2 x i32], ptr %3846, i64 0, i64 %3843
  store i32 %3845, ptr %3847, align 4, !tbaa !5
  br label %4192

3848:                                             ; preds = %3
  %3849 = icmp eq i32 %1, 0
  br i1 %3849, label %3853, label %3850

3850:                                             ; preds = %3848
  %3851 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3852 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3851, ptr noundef nonnull @.str.24) #8
  br label %3853

3853:                                             ; preds = %3850, %3848
  %3854 = getelementptr inbounds i8, ptr %0, i64 41
  %3855 = load i8, ptr %3854, align 1, !tbaa !5
  %3856 = icmp eq i8 %3855, 0
  br i1 %3856, label %3857, label %4192

3857:                                             ; preds = %3853
  %3858 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3859 = load ptr, ptr %3858, align 8, !tbaa !5
  %3860 = icmp eq ptr %3859, %0
  br i1 %3860, label %3861, label %3865

3861:                                             ; preds = %3857
  %3862 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3863 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3862, ptr noundef nonnull @.str.25) #8
  %3864 = load ptr, ptr %3858, align 8, !tbaa !5
  br label %3865

3865:                                             ; preds = %3861, %3857
  %3866 = phi ptr [ %3864, %3861 ], [ %3859, %3857 ]
  %3867 = icmp eq ptr %3866, %0
  %3868 = sext i32 %1 to i64
  br i1 %3867, label %3902, label %3869

3869:                                             ; preds = %3865, %3896
  %3870 = phi ptr [ %3900, %3896 ], [ %3866, %3865 ]
  %3871 = phi i32 [ %3898, %3896 ], [ 0, %3865 ]
  %3872 = phi i32 [ %3897, %3896 ], [ 0, %3865 ]
  br label %3873

3873:                                             ; preds = %3869, %3873
  %3874 = phi ptr [ %3876, %3873 ], [ %3870, %3869 ]
  %3875 = getelementptr inbounds [2 x %struct.LIST], ptr %3874, i64 0, i64 1
  %3876 = load ptr, ptr %3875, align 8, !tbaa !5
  %3877 = getelementptr inbounds %struct.word_type, ptr %3876, i64 0, i32 1
  %3878 = load i8, ptr %3877, align 8, !tbaa !5
  switch i8 %3878, label %3884 [
    i8 0, label %3873
    i8 1, label %3879
  ]

3879:                                             ; preds = %3873
  %3880 = getelementptr inbounds %struct.word_type, ptr %3876, i64 0, i32 1
  %3881 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3882 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3881, ptr noundef nonnull @.str.26) #8
  %3883 = load i8, ptr %3880, align 8, !tbaa !5
  br label %3884

3884:                                             ; preds = %3873, %3879
  %3885 = phi i8 [ %3883, %3879 ], [ %3878, %3873 ]
  switch i8 %3885, label %3886 [
    i8 44, label %3896
    i8 42, label %3896
    i8 45, label %3896
    i8 46, label %3896
  ]

3886:                                             ; preds = %3884
  %3887 = tail call ptr @MinSize(ptr noundef nonnull %3876, i32 noundef %1, ptr noundef %2)
  %3888 = getelementptr inbounds %struct.word_type, ptr %3887, i64 0, i32 3
  %3889 = getelementptr inbounds [2 x i32], ptr %3888, i64 0, i64 %3868
  %3890 = load i32, ptr %3889, align 4, !tbaa !5
  %3891 = tail call i32 @llvm.smax.i32(i32 %3871, i32 %3890)
  %3892 = getelementptr inbounds %struct.word_type, ptr %3887, i64 0, i32 3, i32 1
  %3893 = getelementptr inbounds [2 x i32], ptr %3892, i64 0, i64 %3868
  %3894 = load i32, ptr %3893, align 4, !tbaa !5
  %3895 = tail call i32 @llvm.smax.i32(i32 %3872, i32 %3894)
  br label %3896

3896:                                             ; preds = %3884, %3884, %3884, %3884, %3886
  %3897 = phi i32 [ %3872, %3884 ], [ %3872, %3884 ], [ %3872, %3884 ], [ %3872, %3884 ], [ %3895, %3886 ]
  %3898 = phi i32 [ %3871, %3884 ], [ %3871, %3884 ], [ %3871, %3884 ], [ %3871, %3884 ], [ %3891, %3886 ]
  %3899 = getelementptr inbounds %struct.LIST, ptr %3870, i64 0, i32 1
  %3900 = load ptr, ptr %3899, align 8, !tbaa !5
  %3901 = icmp eq ptr %3900, %0
  br i1 %3901, label %3902, label %3869

3902:                                             ; preds = %3896, %3865
  %3903 = phi i32 [ 0, %3865 ], [ %3897, %3896 ]
  %3904 = phi i32 [ 0, %3865 ], [ %3898, %3896 ]
  %3905 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %3906 = getelementptr inbounds [2 x i32], ptr %3905, i64 0, i64 %3868
  store i32 %3904, ptr %3906, align 4, !tbaa !5
  %3907 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %3908 = getelementptr inbounds [2 x i32], ptr %3907, i64 0, i64 %3868
  store i32 %3903, ptr %3908, align 4, !tbaa !5
  store i8 1, ptr %3854, align 1, !tbaa !5
  %3909 = load ptr, ptr %3858, align 8, !tbaa !5
  %3910 = icmp eq ptr %3909, %0
  br i1 %3910, label %3944, label %3911

3911:                                             ; preds = %3902, %3938
  %3912 = phi ptr [ %3942, %3938 ], [ %3909, %3902 ]
  %3913 = phi i32 [ %3940, %3938 ], [ %3904, %3902 ]
  %3914 = phi i32 [ %3939, %3938 ], [ %3903, %3902 ]
  br label %3915

3915:                                             ; preds = %3911, %3915
  %3916 = phi ptr [ %3918, %3915 ], [ %3912, %3911 ]
  %3917 = getelementptr inbounds [2 x %struct.LIST], ptr %3916, i64 0, i64 1
  %3918 = load ptr, ptr %3917, align 8, !tbaa !5
  %3919 = getelementptr inbounds %struct.word_type, ptr %3918, i64 0, i32 1
  %3920 = load i8, ptr %3919, align 8, !tbaa !5
  switch i8 %3920, label %3926 [
    i8 0, label %3915
    i8 1, label %3921
  ]

3921:                                             ; preds = %3915
  %3922 = getelementptr inbounds %struct.word_type, ptr %3918, i64 0, i32 1
  %3923 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3924 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3923, ptr noundef nonnull @.str.26) #8
  %3925 = load i8, ptr %3922, align 8, !tbaa !5
  br label %3926

3926:                                             ; preds = %3915, %3921
  %3927 = phi i8 [ %3925, %3921 ], [ %3920, %3915 ]
  switch i8 %3927, label %3938 [
    i8 44, label %3928
    i8 42, label %3928
    i8 45, label %3928
    i8 46, label %3928
  ]

3928:                                             ; preds = %3926, %3926, %3926, %3926
  %3929 = tail call ptr @MinSize(ptr noundef nonnull %3918, i32 noundef %1, ptr noundef %2)
  %3930 = getelementptr inbounds %struct.word_type, ptr %3929, i64 0, i32 3
  %3931 = getelementptr inbounds [2 x i32], ptr %3930, i64 0, i64 %3868
  %3932 = load i32, ptr %3931, align 4, !tbaa !5
  %3933 = tail call i32 @llvm.smax.i32(i32 %3913, i32 %3932)
  %3934 = getelementptr inbounds %struct.word_type, ptr %3929, i64 0, i32 3, i32 1
  %3935 = getelementptr inbounds [2 x i32], ptr %3934, i64 0, i64 %3868
  %3936 = load i32, ptr %3935, align 4, !tbaa !5
  %3937 = tail call i32 @llvm.smax.i32(i32 %3914, i32 %3936)
  br label %3938

3938:                                             ; preds = %3926, %3928
  %3939 = phi i32 [ %3914, %3926 ], [ %3937, %3928 ]
  %3940 = phi i32 [ %3913, %3926 ], [ %3933, %3928 ]
  %3941 = getelementptr inbounds %struct.LIST, ptr %3912, i64 0, i32 1
  %3942 = load ptr, ptr %3941, align 8, !tbaa !5
  %3943 = icmp eq ptr %3942, %0
  br i1 %3943, label %3944, label %3911

3944:                                             ; preds = %3938, %3902
  %3945 = phi i32 [ %3903, %3902 ], [ %3939, %3938 ]
  %3946 = phi i32 [ %3904, %3902 ], [ %3940, %3938 ]
  store i32 %3946, ptr %5, align 4, !tbaa !10
  store i32 %3945, ptr %6, align 4, !tbaa !10
  store i32 %3946, ptr %3906, align 4, !tbaa !5
  store i32 %3945, ptr %3908, align 4, !tbaa !5
  br label %4192

3947:                                             ; preds = %3
  %3948 = icmp eq i32 %1, 1
  br i1 %3948, label %3952, label %3949

3949:                                             ; preds = %3947
  %3950 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3951 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3950, ptr noundef nonnull @.str.27) #8
  br label %3952

3952:                                             ; preds = %3949, %3947
  %3953 = getelementptr inbounds i8, ptr %0, i64 41
  %3954 = load i8, ptr %3953, align 1, !tbaa !5
  %3955 = icmp eq i8 %3954, 0
  br i1 %3955, label %3956, label %4192

3956:                                             ; preds = %3952
  %3957 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %3958 = load ptr, ptr %3957, align 8, !tbaa !5
  %3959 = icmp eq ptr %3958, %0
  br i1 %3959, label %3960, label %3964

3960:                                             ; preds = %3956
  %3961 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3962 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3961, ptr noundef nonnull @.str.28) #8
  %3963 = load ptr, ptr %3957, align 8, !tbaa !5
  br label %3964

3964:                                             ; preds = %3960, %3956
  %3965 = phi ptr [ %3963, %3960 ], [ %3958, %3956 ]
  %3966 = icmp eq ptr %3965, %0
  %3967 = sext i32 %1 to i64
  br i1 %3966, label %4003, label %3968

3968:                                             ; preds = %3964, %3997
  %3969 = phi ptr [ %4001, %3997 ], [ %3965, %3964 ]
  %3970 = phi i32 [ %3999, %3997 ], [ 0, %3964 ]
  %3971 = phi i32 [ %3998, %3997 ], [ 0, %3964 ]
  br label %3972

3972:                                             ; preds = %3968, %3972
  %3973 = phi ptr [ %3975, %3972 ], [ %3969, %3968 ]
  %3974 = getelementptr inbounds [2 x %struct.LIST], ptr %3973, i64 0, i64 1
  %3975 = load ptr, ptr %3974, align 8, !tbaa !5
  %3976 = getelementptr inbounds %struct.word_type, ptr %3975, i64 0, i32 1
  %3977 = load i8, ptr %3976, align 8, !tbaa !5
  switch i8 %3977, label %3983 [
    i8 0, label %3972
    i8 1, label %3978
  ]

3978:                                             ; preds = %3972
  %3979 = getelementptr inbounds %struct.word_type, ptr %3975, i64 0, i32 1
  %3980 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %3981 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3980, ptr noundef nonnull @.str.29) #8
  %3982 = load i8, ptr %3979, align 8, !tbaa !5
  br label %3983

3983:                                             ; preds = %3972, %3978
  %3984 = phi i8 [ %3982, %3978 ], [ %3977, %3972 ]
  %3985 = add i8 %3984, -43
  %3986 = icmp ult i8 %3985, 4
  br i1 %3986, label %3997, label %3987

3987:                                             ; preds = %3983
  %3988 = tail call ptr @MinSize(ptr noundef nonnull %3975, i32 noundef %1, ptr noundef %2)
  %3989 = getelementptr inbounds %struct.word_type, ptr %3988, i64 0, i32 3
  %3990 = getelementptr inbounds [2 x i32], ptr %3989, i64 0, i64 %3967
  %3991 = load i32, ptr %3990, align 4, !tbaa !5
  %3992 = tail call i32 @llvm.smax.i32(i32 %3970, i32 %3991)
  %3993 = getelementptr inbounds %struct.word_type, ptr %3988, i64 0, i32 3, i32 1
  %3994 = getelementptr inbounds [2 x i32], ptr %3993, i64 0, i64 %3967
  %3995 = load i32, ptr %3994, align 4, !tbaa !5
  %3996 = tail call i32 @llvm.smax.i32(i32 %3971, i32 %3995)
  br label %3997

3997:                                             ; preds = %3983, %3987
  %3998 = phi i32 [ %3971, %3983 ], [ %3996, %3987 ]
  %3999 = phi i32 [ %3970, %3983 ], [ %3992, %3987 ]
  %4000 = getelementptr inbounds %struct.LIST, ptr %3969, i64 0, i32 1
  %4001 = load ptr, ptr %4000, align 8, !tbaa !5
  %4002 = icmp eq ptr %4001, %0
  br i1 %4002, label %4003, label %3968

4003:                                             ; preds = %3997, %3964
  %4004 = phi i32 [ 0, %3964 ], [ %3998, %3997 ]
  %4005 = phi i32 [ 0, %3964 ], [ %3999, %3997 ]
  store i32 %4005, ptr %5, align 4, !tbaa !10
  store i32 %4004, ptr %6, align 4, !tbaa !10
  %4006 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %4007 = getelementptr inbounds [2 x i32], ptr %4006, i64 0, i64 %3967
  store i32 %4005, ptr %4007, align 4, !tbaa !5
  %4008 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %4009 = getelementptr inbounds [2 x i32], ptr %4008, i64 0, i64 %3967
  store i32 %4004, ptr %4009, align 4, !tbaa !5
  store i8 1, ptr %3953, align 1, !tbaa !5
  %4010 = load ptr, ptr %3957, align 8, !tbaa !5
  %4011 = icmp eq ptr %4010, %0
  br i1 %4011, label %4192, label %4012

4012:                                             ; preds = %4003, %4041
  %4013 = phi ptr [ %4043, %4041 ], [ %4010, %4003 ]
  br label %4014

4014:                                             ; preds = %4012, %4014
  %4015 = phi ptr [ %4017, %4014 ], [ %4013, %4012 ]
  %4016 = getelementptr inbounds [2 x %struct.LIST], ptr %4015, i64 0, i64 1
  %4017 = load ptr, ptr %4016, align 8, !tbaa !5
  %4018 = getelementptr inbounds %struct.word_type, ptr %4017, i64 0, i32 1
  %4019 = load i8, ptr %4018, align 8, !tbaa !5
  switch i8 %4019, label %4025 [
    i8 0, label %4014
    i8 1, label %4020
  ]

4020:                                             ; preds = %4014
  %4021 = getelementptr inbounds %struct.word_type, ptr %4017, i64 0, i32 1
  %4022 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4023 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4022, ptr noundef nonnull @.str.29) #8
  %4024 = load i8, ptr %4021, align 8, !tbaa !5
  br label %4025

4025:                                             ; preds = %4014, %4020
  %4026 = phi i8 [ %4024, %4020 ], [ %4019, %4014 ]
  %4027 = add i8 %4026, -43
  %4028 = icmp ult i8 %4027, 4
  br i1 %4028, label %4029, label %4041

4029:                                             ; preds = %4025
  %4030 = tail call ptr @MinSize(ptr noundef nonnull %4017, i32 noundef %1, ptr noundef %2)
  %4031 = load i32, ptr %4007, align 4, !tbaa !5
  %4032 = getelementptr inbounds %struct.word_type, ptr %4030, i64 0, i32 3
  %4033 = getelementptr inbounds [2 x i32], ptr %4032, i64 0, i64 %3967
  %4034 = load i32, ptr %4033, align 4, !tbaa !5
  %4035 = tail call i32 @llvm.smax.i32(i32 %4031, i32 %4034)
  store i32 %4035, ptr %4007, align 4, !tbaa !5
  %4036 = load i32, ptr %4009, align 4, !tbaa !5
  %4037 = getelementptr inbounds %struct.word_type, ptr %4030, i64 0, i32 3, i32 1
  %4038 = getelementptr inbounds [2 x i32], ptr %4037, i64 0, i64 %3967
  %4039 = load i32, ptr %4038, align 4, !tbaa !5
  %4040 = tail call i32 @llvm.smax.i32(i32 %4036, i32 %4039)
  store i32 %4040, ptr %4009, align 4, !tbaa !5
  br label %4041

4041:                                             ; preds = %4025, %4029
  %4042 = getelementptr inbounds %struct.LIST, ptr %4013, i64 0, i32 1
  %4043 = load ptr, ptr %4042, align 8, !tbaa !5
  %4044 = icmp eq ptr %4043, %0
  br i1 %4044, label %4192, label %4012

4045:                                             ; preds = %3, %3
  %4046 = icmp eq i32 %1, 1
  br i1 %4046, label %4192, label %4047

4047:                                             ; preds = %4045
  %4048 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4049 = load ptr, ptr %4048, align 8, !tbaa !5
  br label %4050

4050:                                             ; preds = %4050, %4047
  %4051 = phi ptr [ %4049, %4047 ], [ %4053, %4050 ]
  %4052 = getelementptr inbounds [2 x %struct.LIST], ptr %4051, i64 0, i64 1
  %4053 = load ptr, ptr %4052, align 8, !tbaa !5
  %4054 = getelementptr inbounds %struct.word_type, ptr %4053, i64 0, i32 1
  %4055 = load i8, ptr %4054, align 8, !tbaa !5
  %4056 = icmp eq i8 %4055, 0
  br i1 %4056, label %4050, label %4057

4057:                                             ; preds = %4050
  %4058 = getelementptr inbounds %struct.word_type, ptr %4053, i64 0, i32 1
  %4059 = getelementptr inbounds %struct.word_type, ptr %4053, i64 0, i32 4
  %4060 = call ptr @OpenIncGraphicFile(ptr noundef nonnull %4059, i8 noundef zeroext %15, ptr noundef nonnull %4, ptr noundef nonnull %4058, ptr noundef nonnull %11) #8
  %4061 = icmp eq ptr %4060, null
  %4062 = zext i1 %4061 to i32
  br label %4063

4063:                                             ; preds = %4093, %4057
  %4064 = phi i1 [ true, %4093 ], [ false, %4057 ]
  %4065 = phi i32 [ 4, %4093 ], [ %4062, %4057 ]
  %4066 = phi <4 x i32> [ %4102, %4093 ], [ undef, %4057 ]
  br label %4067

4067:                                             ; preds = %4090, %4063
  %4068 = phi i1 [ %4064, %4063 ], [ %4091, %4090 ]
  %4069 = phi i32 [ %4065, %4063 ], [ %4092, %4090 ]
  switch i32 %4069, label %4183 [
    i32 0, label %4070
    i32 1, label %4103
    i32 2, label %4127
    i32 3, label %4141
    i32 4, label %4156
  ]

4070:                                             ; preds = %4067
  %4071 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %4060, ptr noundef nonnull @.str.30, ptr noundef nonnull %12) #8
  %4072 = add i32 %4071, 1
  %4073 = icmp ult i32 %4072, 2
  br i1 %4073, label %4112, label %4074

4074:                                             ; preds = %4070
  br i1 %4068, label %4078, label %4075

4075:                                             ; preds = %4074
  %4076 = call i32 @StringBeginsWith(ptr noundef nonnull %12, ptr noundef nonnull @.str.31) #8
  %4077 = icmp eq i32 %4076, 0
  br i1 %4077, label %4090, label %4078

4078:                                             ; preds = %4075, %4074
  %4079 = load i8, ptr %12, align 16, !tbaa !5
  %4080 = icmp eq i8 %4079, 37
  br i1 %4080, label %4081, label %4090

4081:                                             ; preds = %4078
  %4082 = call i32 @StringBeginsWith(ptr noundef nonnull %12, ptr noundef nonnull @.str.32) #8
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4090, label %4084

4084:                                             ; preds = %4081
  %4085 = call i32 @StringContains(ptr noundef nonnull %12, ptr noundef nonnull @.str.33) #8
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4087, label %4090

4087:                                             ; preds = %4084
  %4088 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %12, ptr noundef nonnull @.str.34, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %4089 = icmp eq i32 %4088, 4
  br i1 %4089, label %4093, label %4090

4090:                                             ; preds = %4087, %4075, %4078, %4081, %4084
  %4091 = phi i1 [ true, %4084 ], [ true, %4081 ], [ true, %4078 ], [ false, %4075 ], [ true, %4087 ]
  %4092 = phi i32 [ 0, %4084 ], [ 0, %4081 ], [ 0, %4078 ], [ 2, %4075 ], [ 3, %4087 ]
  br label %4067

4093:                                             ; preds = %4087
  %4094 = load float, ptr %7, align 4, !tbaa !17
  %4095 = load float, ptr %8, align 4, !tbaa !17
  %4096 = load float, ptr %9, align 4, !tbaa !17
  %4097 = load float, ptr %10, align 4, !tbaa !17
  %4098 = insertelement <4 x float> poison, float %4094, i64 0
  %4099 = insertelement <4 x float> %4098, float %4095, i64 1
  %4100 = insertelement <4 x float> %4099, float %4096, i64 2
  %4101 = insertelement <4 x float> %4100, float %4097, i64 3
  %4102 = fptosi <4 x float> %4101 to <4 x i32>
  br label %4063

4103:                                             ; preds = %4067
  %4104 = load i8, ptr %14, align 8, !tbaa !5
  %4105 = icmp eq i8 %4104, 94
  %4106 = select i1 %4105, ptr @.str.36, ptr @.str.37
  %4107 = load ptr, ptr %4, align 8, !tbaa !8
  %4108 = getelementptr inbounds %struct.word_type, ptr %4107, i64 0, i32 4
  %4109 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 5, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull %4106, ptr noundef nonnull %4108) #8
  %4110 = getelementptr inbounds i8, ptr %0, i64 41
  store i8 0, ptr %4110, align 1, !tbaa !5
  %4111 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4111, i8 0, i64 16, i1 false)
  br label %4184

4112:                                             ; preds = %4070
  %4113 = load i8, ptr %14, align 8, !tbaa !5
  %4114 = icmp eq i8 %4113, 94
  %4115 = select i1 %4114, ptr @.str.36, ptr @.str.37
  %4116 = load ptr, ptr %4, align 8, !tbaa !8
  %4117 = getelementptr inbounds %struct.word_type, ptr %4116, i64 0, i32 4
  %4118 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 6, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull %4115, ptr noundef nonnull %4117) #8
  %4119 = getelementptr inbounds %struct.word_type, ptr %4053, i64 0, i32 3
  %4120 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4119, i8 0, i64 16, i1 false)
  %4121 = getelementptr inbounds i8, ptr %0, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4120, i8 0, i64 16, i1 false)
  store i8 1, ptr %4121, align 1, !tbaa !5
  %4122 = call i32 @fclose(ptr noundef %4060)
  %4123 = load i32, ptr %11, align 4, !tbaa !10
  %4124 = icmp eq i32 %4123, 0
  br i1 %4124, label %4184, label %4125

4125:                                             ; preds = %4112
  %4126 = call i32 @remove(ptr noundef nonnull @.str.39) #8
  br label %4184

4127:                                             ; preds = %4067
  %4128 = load i8, ptr %14, align 8, !tbaa !5
  %4129 = icmp eq i8 %4128, 94
  %4130 = select i1 %4129, ptr @.str.36, ptr @.str.37
  %4131 = load ptr, ptr %4, align 8, !tbaa !8
  %4132 = getelementptr inbounds %struct.word_type, ptr %4131, i64 0, i32 4
  %4133 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 7, ptr noundef nonnull @.str.40, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull %4130, ptr noundef nonnull %4132) #8
  %4134 = getelementptr inbounds i8, ptr %0, i64 41
  store i8 0, ptr %4134, align 1, !tbaa !5
  %4135 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4135, i8 0, i64 16, i1 false)
  %4136 = call i32 @fclose(ptr noundef %4060)
  %4137 = load i32, ptr %11, align 4, !tbaa !10
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4184, label %4139

4139:                                             ; preds = %4127
  %4140 = call i32 @remove(ptr noundef nonnull @.str.39) #8
  br label %4184

4141:                                             ; preds = %4067
  %4142 = load i8, ptr %14, align 8, !tbaa !5
  %4143 = icmp eq i8 %4142, 94
  %4144 = select i1 %4143, ptr @.str.36, ptr @.str.37
  %4145 = load ptr, ptr %4, align 8, !tbaa !8
  %4146 = getelementptr inbounds %struct.word_type, ptr %4145, i64 0, i32 4
  %4147 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 8, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull %4144, ptr noundef nonnull %4146) #8
  %4148 = getelementptr inbounds %struct.word_type, ptr %4053, i64 0, i32 3
  %4149 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4148, i8 0, i64 16, i1 false)
  %4150 = getelementptr inbounds i8, ptr %0, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4149, i8 0, i64 16, i1 false)
  store i8 1, ptr %4150, align 1, !tbaa !5
  %4151 = call i32 @fclose(ptr noundef %4060)
  %4152 = load i32, ptr %11, align 4, !tbaa !10
  %4153 = icmp eq i32 %4152, 0
  br i1 %4153, label %4184, label %4154

4154:                                             ; preds = %4141
  %4155 = call i32 @remove(ptr noundef nonnull @.str.39) #8
  br label %4184

4156:                                             ; preds = %4067
  %4157 = load ptr, ptr %4048, align 8, !tbaa !5
  br label %4158

4158:                                             ; preds = %4158, %4156
  %4159 = phi ptr [ %4157, %4156 ], [ %4161, %4158 ]
  %4160 = getelementptr inbounds [2 x %struct.LIST], ptr %4159, i64 0, i64 1
  %4161 = load ptr, ptr %4160, align 8, !tbaa !5
  %4162 = getelementptr inbounds %struct.word_type, ptr %4161, i64 0, i32 1
  %4163 = load i8, ptr %4162, align 8, !tbaa !5
  %4164 = icmp eq i8 %4163, 0
  br i1 %4164, label %4158, label %4165

4165:                                             ; preds = %4158
  %4166 = getelementptr inbounds %struct.word_type, ptr %4161, i64 0, i32 3
  store <4 x i32> %4066, ptr %4166, align 8, !tbaa !5
  %4167 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %4168 = shufflevector <4 x i32> %4066, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %4169 = shufflevector <4 x i32> %4066, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %4170 = sub nsw <2 x i32> %4168, %4169
  %4171 = mul nsw <2 x i32> %4170, <i32 20, i32 20>
  %4172 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %4171, <2 x i32> zeroinitializer)
  %4173 = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %4172, <2 x i32> <i32 8388607, i32 8388607>)
  %4174 = extractelement <2 x i32> %4173, i64 1
  store i32 %4174, ptr %5, align 4, !tbaa !10
  %4175 = lshr <2 x i32> %4173, <i32 1, i32 1>
  %4176 = shufflevector <2 x i32> %4175, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %4176, ptr %4167, align 8, !tbaa !5
  %4177 = getelementptr inbounds i8, ptr %0, i64 41
  store i8 1, ptr %4177, align 1, !tbaa !5
  %4178 = call i32 @fclose(ptr noundef %4060)
  %4179 = load i32, ptr %11, align 4, !tbaa !10
  %4180 = icmp eq i32 %4179, 0
  br i1 %4180, label %4184, label %4181

4181:                                             ; preds = %4165
  %4182 = call i32 @remove(ptr noundef nonnull @.str.39) #8
  br label %4184

4183:                                             ; preds = %4067
  unreachable

4184:                                             ; preds = %4165, %4181, %4141, %4154, %4127, %4139, %4112, %4125, %4103
  %4185 = load ptr, ptr %4, align 8, !tbaa !8
  %4186 = call i32 @DisposeObject(ptr noundef %4185) #8
  br label %4192

4187:                                             ; preds = %3
  %4188 = zext i8 %15 to i32
  %4189 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4190 = tail call ptr @Image(i32 noundef %4188) #8
  %4191 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef %4189, ptr noundef nonnull @.str.43, ptr noundef %4190) #8
  br label %4192

4192:                                             ; preds = %2087, %4041, %4003, %2099, %2108, %1769, %1607, %4045, %3952, %3853, %3944, %3639, %3624, %3840, %3828, %2260, %2279, %2226, %2232, %2160, %2166, %2114, %2012, %2008, %1933, %1851, %1900, %1808, %1814, %1728, %1784, %1554, %1622, %1458, %1491, %1497, %1467, %16, %18, %4187, %4184, %2303, %1681, %1659, %1645, %1531, %1446, %1386, %691, %658, %642, %483, %236, %230, %124
  %4193 = phi ptr [ %0, %4187 ], [ %0, %4045 ], [ %0, %4184 ], [ %0, %3952 ], [ %0, %3944 ], [ %0, %3853 ], [ %3049, %3639 ], [ %3049, %3624 ], [ %3049, %3828 ], [ %3049, %3840 ], [ %0, %2303 ], [ %0, %2260 ], [ %0, %2279 ], [ %0, %2226 ], [ %0, %2232 ], [ %0, %2160 ], [ %0, %2166 ], [ %0, %2114 ], [ %0, %2008 ], [ %0, %1933 ], [ %0, %2012 ], [ %0, %1851 ], [ %0, %1900 ], [ %0, %1808 ], [ %0, %1814 ], [ %0, %1784 ], [ %0, %1728 ], [ %0, %1681 ], [ %0, %1659 ], [ %0, %1645 ], [ %0, %1622 ], [ %0, %1554 ], [ %0, %1531 ], [ %0, %1446 ], [ %0, %1458 ], [ %0, %1467 ], [ %0, %1491 ], [ %0, %1497 ], [ %1369, %1386 ], [ %0, %691 ], [ %0, %658 ], [ %0, %642 ], [ %484, %483 ], [ %0, %236 ], [ %0, %230 ], [ %0, %124 ], [ %0, %18 ], [ %0, %16 ], [ %0, %1607 ], [ %0, %1769 ], [ %0, %2108 ], [ %0, %2099 ], [ %0, %4003 ], [ %0, %4041 ], [ %0, %2087 ]
  %4194 = getelementptr inbounds %struct.word_type, ptr %4193, i64 0, i32 3
  %4195 = sext i32 %1 to i64
  %4196 = getelementptr inbounds [2 x i32], ptr %4194, i64 0, i64 %4195
  %4197 = load i32, ptr %4196, align 4, !tbaa !5
  %4198 = icmp sgt i32 %4197, -1
  br i1 %4198, label %4202, label %4199

4199:                                             ; preds = %4192
  %4200 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4201 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4200, ptr noundef nonnull @.str.44) #8
  br label %4202

4202:                                             ; preds = %4199, %4192
  %4203 = getelementptr inbounds %struct.word_type, ptr %4193, i64 0, i32 3, i32 1
  %4204 = getelementptr inbounds [2 x i32], ptr %4203, i64 0, i64 %4195
  %4205 = load i32, ptr %4204, align 4, !tbaa !5
  %4206 = icmp sgt i32 %4205, -1
  br i1 %4206, label %4210, label %4207

4207:                                             ; preds = %4202
  %4208 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %4209 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4208, ptr noundef nonnull @.str.45) #8
  br label %4210

4210:                                             ; preds = %4207, %4202
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %4193
}

declare void @FontWordSize(ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CrossMake(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BreakObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RotateSize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @KernLength(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = load ptr, ptr @finfo, align 8, !tbaa !8
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds %struct.font_rec, ptr %4, i64 %5, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 3, i32 1, i64 4
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 127
  %11 = zext nneg i8 %10 to i64
  %12 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.mapvec, ptr %13, i64 0, i32 7, i64 2
  %15 = zext i8 %1 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %2 to i64
  %19 = getelementptr inbounds i8, ptr %14, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = getelementptr inbounds %struct.font_rec, ptr %4, i64 %5, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = zext i8 %17 to i64
  %24 = getelementptr inbounds i16, ptr %22, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !23
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.font_rec, ptr %4, i64 %5, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = zext i16 %25 to i64
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i64 [ %36, %31 ], [ %30, %27 ]
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = icmp ugt i8 %34, %20
  %36 = add nuw i64 %32, 1
  br i1 %35, label %31, label %37

37:                                               ; preds = %31
  %38 = icmp eq i8 %34, %20
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.font_rec, ptr %4, i64 %5, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.font_rec, ptr %4, i64 %5, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = getelementptr inbounds i8, ptr %43, i64 %32
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i16, ptr %41, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !23
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %39, %37, %3
  %51 = phi i32 [ 0, %3 ], [ %49, %39 ], [ 0, %37 ]
  ret i32 %51
}

declare void @EnlargeToConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare i32 @FindShift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OpenIncGraphicFile(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @StringContains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!14 = !{!13, !11, i64 4}
!15 = !{!13, !11, i64 8}
!16 = !{i32 -32768, i32 32768}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{!20, !9, i64 40}
!20 = !{!"font_rec", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32, !9, i64 40, !9, i64 48, !21, i64 56, !21, i64 58, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!21 = !{!"short", !6, i64 0}
!22 = !{!20, !9, i64 64}
!23 = !{!21, !21, i64 0}
!24 = !{!20, !9, i64 72}
!25 = !{!20, !9, i64 88}
!26 = !{!20, !9, i64 80}

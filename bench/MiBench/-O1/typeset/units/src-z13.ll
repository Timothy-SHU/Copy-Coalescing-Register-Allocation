; ModuleID = 'src/z13.c'
source_filename = "src/z13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
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
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [63 x i8] c"replacing with empty object: negative size constraint %s,%s,%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"%s object scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s deleted (too wide; cannot break %s)\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"word %s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"word %s deleted (too wide)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%s deleted (too wide)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"BreakObject: downs!\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"column mark of unbroken paragraph moved left\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"column mark of paragraph moved left before breaking\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"BreakObject:\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"BreakObject: back(x, COLM) < 0!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"BreakObject: fwd(x, COLM) < 0!\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"BreakTable: GAP_OBJ!\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"BreakTable: index!\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"BreakTable: GAP_OBJ is last!\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"reducing column gaps to 0i (object is too wide)\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"BreakTable: type(y) == GAP_OBJ!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"BreakTable: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"BreakTable: mside\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"failed to break column to fit into its available space\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"BreakVcat: Down(x) == x!\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"BreakVcat: start_group == nilobj!\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"BreakVcat: start_group == nilobj (2)!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BreakObject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CONSTRAINT, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = load i32, ptr %1, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %44, label %15

15:                                               ; preds = %11, %7, %2
  %16 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %17 = tail call ptr @EchoLength(i32 noundef %5) #4
  %18 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !10
  %20 = tail call ptr @EchoLength(i32 noundef %19) #4
  %21 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = tail call ptr @EchoLength(i32 noundef %22) #4
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 11, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull %16, ptr noundef %17, ptr noundef %20, ptr noundef %23) #4
  %25 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef nonnull %16) #4
  %26 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 3
  %27 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 3, i32 1
  store i32 0, ptr %27, align 8, !tbaa !12
  store i32 0, ptr %26, align 8, !tbaa !12
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %41, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !12
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1, i32 1
  store ptr %29, ptr %35, align 8, !tbaa !12
  store ptr %0, ptr %28, align 8, !tbaa !12
  store ptr %0, ptr %32, align 8, !tbaa !12
  %36 = load ptr, ptr %34, align 8, !tbaa !12
  store ptr %36, ptr @zz_tmp, align 8, !tbaa !13
  %37 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  store ptr %38, ptr %34, align 8, !tbaa !12
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  store ptr %29, ptr %39, align 8, !tbaa !12
  store ptr %36, ptr %37, align 8, !tbaa !12
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  store ptr %25, ptr %40, align 8, !tbaa !12
  br label %41

41:                                               ; preds = %15, %31
  %42 = phi ptr [ %29, %31 ], [ null, %15 ]
  store ptr %42, ptr @xx_tmp, align 8
  store ptr %25, ptr @zz_res, align 8
  store ptr %42, ptr @zz_hold, align 8
  %43 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #4
  br label %635

44:                                               ; preds = %11
  %45 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !12
  %47 = icmp sgt i32 %46, %5
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !12
  %51 = add nsw i32 %50, %46
  %52 = icmp sgt i32 %51, %9
  %53 = icmp sgt i32 %50, %13
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %635

55:                                               ; preds = %48, %44
  %56 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %57 = load i8, ptr %56, align 8, !tbaa !12
  switch i8 %57, label %615 [
    i8 50, label %58
    i8 34, label %104
    i8 35, label %128
    i8 11, label %144
    i8 12, label %144
    i8 26, label %325
    i8 94, label %343
    i8 95, label %343
    i8 27, label %396
    i8 31, label %396
    i8 33, label %396
    i8 29, label %396
    i8 36, label %396
    i8 37, label %396
    i8 38, label %396
    i8 39, label %396
    i8 40, label %396
    i8 41, label %396
    i8 24, label %396
    i8 25, label %396
    i8 13, label %396
    i8 51, label %421
    i8 44, label %448
    i8 42, label %448
    i8 43, label %448
    i8 45, label %448
    i8 46, label %448
    i8 28, label %469
    i8 21, label %620
    i8 23, label %620
    i8 20, label %503
    i8 22, label %503
    i8 96, label %519
    i8 97, label %519
    i8 98, label %519
    i8 99, label %519
    i8 9, label %535
    i8 17, label %552
    i8 18, label %606
    i8 16, label %608
    i8 19, label %613
  ]

58:                                               ; preds = %55
  %59 = load ptr, ptr @BackEnd, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.back_end_rec, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %58
  %64 = tail call i32 @InsertScale(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !12
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %68, %66 ], [ %71, %69 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.word_type, ptr %71, i64 0, i32 1
  %73 = load i8, ptr %72, align 8, !tbaa !12
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %69, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.word_type, ptr %71, i64 0, i32 1
  %77 = getelementptr inbounds %struct.closure_type, ptr %71, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !12
  %79 = sitofp i32 %78 to float
  %80 = fmul float %79, 7.812500e-03
  %81 = fpext float %80 to double
  %82 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %76, ptr noundef nonnull @.str.3, double noundef %81) #4
  br label %620

83:                                               ; preds = %63, %58
  %84 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 2, ptr noundef nonnull %56, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #4
  %85 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef nonnull %56) #4
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 3
  %87 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 3, i32 1
  store i32 0, ptr %87, align 8, !tbaa !12
  store i32 0, ptr %86, align 8, !tbaa !12
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !12
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %101, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !12
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1
  store ptr %93, ptr %94, align 8, !tbaa !12
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1, i32 1
  store ptr %89, ptr %95, align 8, !tbaa !12
  store ptr %0, ptr %88, align 8, !tbaa !12
  store ptr %0, ptr %92, align 8, !tbaa !12
  %96 = load ptr, ptr %94, align 8, !tbaa !12
  store ptr %96, ptr @zz_tmp, align 8, !tbaa !13
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !12
  store ptr %98, ptr %94, align 8, !tbaa !12
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %89, ptr %99, align 8, !tbaa !12
  store ptr %96, ptr %97, align 8, !tbaa !12
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1, i32 1
  store ptr %85, ptr %100, align 8, !tbaa !12
  br label %101

101:                                              ; preds = %83, %91
  %102 = phi ptr [ %89, %91 ], [ null, %83 ]
  store ptr %102, ptr @xx_tmp, align 8
  store ptr %85, ptr @zz_res, align 8
  store ptr %102, ptr @zz_hold, align 8
  %103 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #4
  br label %620

104:                                              ; preds = %55
  %105 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %106 = load i32, ptr %105, align 8, !tbaa !12
  call void @InvScaleConstraint(ptr noundef nonnull %3, i32 noundef %106, ptr noundef nonnull %1) #4
  %107 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  br label %109

109:                                              ; preds = %109, %104
  %110 = phi ptr [ %108, %104 ], [ %112, %109 ]
  %111 = getelementptr inbounds [2 x %struct.LIST], ptr %110, i64 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !12
  %113 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 1
  %114 = load i8, ptr %113, align 8, !tbaa !12
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %109, label %116

116:                                              ; preds = %109
  %117 = call ptr @BreakObject(ptr noundef nonnull %112, ptr noundef nonnull %3)
  %118 = getelementptr inbounds %struct.word_type, ptr %117, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !12
  %120 = load i32, ptr %105, align 8, !tbaa !12
  %121 = mul nsw i32 %120, %119
  %122 = sdiv i32 %121, 128
  store i32 %122, ptr %45, align 8, !tbaa !12
  %123 = getelementptr inbounds %struct.word_type, ptr %117, i64 0, i32 3, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !12
  %125 = mul nsw i32 %124, %120
  %126 = sdiv i32 %125, 128
  %127 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %126, ptr %127, align 8, !tbaa !12
  br label %620

128:                                              ; preds = %55
  %129 = load ptr, ptr %0, align 8, !tbaa !12
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi ptr [ %129, %128 ], [ %133, %130 ]
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !12
  %134 = getelementptr inbounds %struct.word_type, ptr %133, i64 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !12
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %130, label %137

137:                                              ; preds = %130
  %138 = tail call ptr @BreakObject(ptr noundef nonnull %133, ptr noundef nonnull %1)
  %139 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !12
  store i32 %140, ptr %45, align 8, !tbaa !12
  %141 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 3, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !12
  %143 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %142, ptr %143, align 8, !tbaa !12
  br label %620

144:                                              ; preds = %55, %55
  %145 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %277, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !12
  %150 = zext i8 %149 to i32
  store i32 %150, ptr @zz_size, align 4, !tbaa !17
  %151 = zext i8 %149 to i64
  %152 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !13
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %157 = tail call ptr @GetMemory(i32 noundef %150, ptr noundef %156) #4
  store ptr %157, ptr @zz_hold, align 8, !tbaa !13
  br label %160

158:                                              ; preds = %148
  store ptr %153, ptr @zz_hold, align 8, !tbaa !13
  %159 = load ptr, ptr %153, align 8, !tbaa !12
  store ptr %159, ptr %152, align 8, !tbaa !13
  br label %160

160:                                              ; preds = %155, %158
  %161 = phi ptr [ %157, %155 ], [ %153, %158 ]
  %162 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1
  store i8 17, ptr %162, align 8, !tbaa !12
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1, i32 1
  store ptr %161, ptr %163, align 8, !tbaa !12
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1
  store ptr %161, ptr %164, align 8, !tbaa !12
  %165 = getelementptr inbounds %struct.LIST, ptr %161, i64 0, i32 1
  store ptr %161, ptr %165, align 8, !tbaa !12
  store ptr %161, ptr %161, align 8, !tbaa !12
  %166 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %167 = load i16, ptr %166, align 2, !tbaa !12
  %168 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1, i32 0, i32 2
  store i16 %167, ptr %168, align 2, !tbaa !12
  %169 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 1048575
  %172 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1, i32 0, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, -1048576
  %175 = or disjoint i32 %174, %171
  store i32 %175, ptr %172, align 4
  %176 = load i32, ptr %169, align 4
  %177 = and i32 %176, -1048576
  %178 = or disjoint i32 %177, %171
  store i32 %178, ptr %172, align 4
  %179 = load i32, ptr %45, align 8, !tbaa !12
  %180 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 3
  store i32 %179, ptr %180, align 8, !tbaa !12
  %181 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !12
  %183 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 3, i32 1
  store i32 %182, ptr %183, align 8, !tbaa !12
  %184 = getelementptr inbounds i8, ptr %0, i64 52
  %185 = load i32, ptr %184, align 4, !tbaa !12
  %186 = getelementptr inbounds i8, ptr %161, i64 52
  store i32 %185, ptr %186, align 4, !tbaa !12
  %187 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %188 = load i32, ptr %187, align 4, !tbaa !12
  %189 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 3, i32 1, i64 4
  store i32 %188, ptr %189, align 4, !tbaa !12
  %190 = getelementptr inbounds %struct.closure_type, ptr %161, i64 0, i32 4
  %191 = load i16, ptr %190, align 8
  %192 = and i16 %191, 127
  %193 = or disjoint i16 %192, 25600
  store i16 %193, ptr %190, align 8
  %194 = load i32, ptr %145, align 8
  %195 = and i32 %194, 4095
  %196 = tail call i32 @FontSize(i32 noundef %195, ptr noundef nonnull %0) #4
  %197 = sitofp i32 %196 to double
  %198 = fmul double %197, 1.100000e+00
  %199 = fptosi double %198 to i16
  %200 = getelementptr inbounds %struct.closure_type, ptr %161, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %199, ptr %200, align 2, !tbaa !12
  %201 = getelementptr inbounds %struct.closure_type, ptr %161, i64 0, i32 4, i32 0, i32 1
  %202 = load i16, ptr %201, align 4
  %203 = and i16 %202, 127
  %204 = or disjoint i16 %203, 9728
  store i16 %204, ptr %201, align 4
  %205 = getelementptr inbounds %struct.closure_type, ptr %161, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 0, ptr %205, align 2, !tbaa !12
  store i8 74, ptr %201, align 4
  %206 = load i8, ptr %190, align 8
  %207 = and i8 %206, -9
  store i8 %207, ptr %190, align 8
  %208 = load i32, ptr %145, align 8
  %209 = and i32 %208, 4095
  %210 = getelementptr inbounds %struct.closure_type, ptr %161, i64 0, i32 4, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, -4096
  %213 = or disjoint i32 %212, %209
  store i32 %213, ptr %210, align 4
  %214 = load i32, ptr %145, align 8
  %215 = and i32 %214, 4190208
  %216 = and i32 %213, -4190209
  %217 = or disjoint i32 %216, %215
  store i32 %217, ptr %210, align 4
  %218 = load i32, ptr %145, align 8
  %219 = and i32 %218, 4194304
  %220 = and i32 %217, -12582913
  %221 = or disjoint i32 %220, %219
  store i32 %221, ptr %210, align 4
  %222 = load i32, ptr %145, align 8
  %223 = shl i32 %222, 1
  %224 = and i32 %223, 1056964608
  %225 = and i32 %221, -1065353217
  %226 = or disjoint i32 %224, %225
  store i32 %226, ptr %210, align 4
  %227 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !12
  %230 = icmp eq ptr %229, %0
  br i1 %230, label %231, label %232

231:                                              ; preds = %160
  store ptr null, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %161, ptr @zz_res, align 8, !tbaa !13
  store ptr null, ptr @zz_hold, align 8, !tbaa !13
  br label %240

232:                                              ; preds = %160
  %233 = load ptr, ptr %227, align 8, !tbaa !12
  %234 = getelementptr inbounds [2 x %struct.LIST], ptr %229, i64 0, i64 1
  store ptr %233, ptr %234, align 8, !tbaa !12
  %235 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1, i32 1
  store ptr %229, ptr %235, align 8, !tbaa !12
  store ptr %0, ptr %228, align 8, !tbaa !12
  store ptr %0, ptr %227, align 8, !tbaa !12
  store ptr %229, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %161, ptr @zz_res, align 8, !tbaa !13
  store ptr %229, ptr @zz_hold, align 8, !tbaa !13
  %236 = load ptr, ptr %234, align 8, !tbaa !12
  store ptr %236, ptr @zz_tmp, align 8, !tbaa !13
  %237 = load ptr, ptr %164, align 8, !tbaa !12
  store ptr %237, ptr %234, align 8, !tbaa !12
  %238 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %229, ptr %238, align 8, !tbaa !12
  store ptr %236, ptr %164, align 8, !tbaa !12
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1, i32 1
  store ptr %161, ptr %239, align 8, !tbaa !12
  br label %240

240:                                              ; preds = %231, %232
  %241 = load i8, ptr @zz_lengths, align 1, !tbaa !12
  %242 = zext i8 %241 to i32
  store i32 %242, ptr @zz_size, align 4, !tbaa !17
  %243 = zext i8 %241 to i64
  %244 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !13
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %249 = tail call ptr @GetMemory(i32 noundef %242, ptr noundef %248) #4
  br label %252

250:                                              ; preds = %240
  store ptr %245, ptr @zz_hold, align 8, !tbaa !13
  %251 = load ptr, ptr %245, align 8, !tbaa !12
  store ptr %251, ptr %244, align 8, !tbaa !13
  br label %252

252:                                              ; preds = %247, %250
  %253 = phi ptr [ %249, %247 ], [ %245, %250 ]
  %254 = getelementptr inbounds %struct.word_type, ptr %253, i64 0, i32 1
  store i8 0, ptr %254, align 8, !tbaa !12
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1, i32 1
  store ptr %253, ptr %255, align 8, !tbaa !12
  %256 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1
  store ptr %253, ptr %256, align 8, !tbaa !12
  %257 = getelementptr inbounds %struct.LIST, ptr %253, i64 0, i32 1
  store ptr %253, ptr %257, align 8, !tbaa !12
  store ptr %253, ptr %253, align 8, !tbaa !12
  store ptr %253, ptr @xx_link, align 8, !tbaa !13
  store ptr %253, ptr @zz_res, align 8, !tbaa !13
  store ptr %161, ptr @zz_hold, align 8, !tbaa !13
  %258 = load ptr, ptr %161, align 8, !tbaa !12
  store ptr %258, ptr @zz_tmp, align 8, !tbaa !13
  %259 = load ptr, ptr %253, align 8, !tbaa !12
  store ptr %259, ptr %161, align 8, !tbaa !12
  %260 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %261 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %262 = load ptr, ptr %261, align 8, !tbaa !12
  %263 = getelementptr inbounds %struct.LIST, ptr %262, i64 0, i32 1
  store ptr %260, ptr %263, align 8, !tbaa !12
  %264 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %264, ptr %261, align 8, !tbaa !12
  %265 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %266 = getelementptr inbounds %struct.LIST, ptr %264, i64 0, i32 1
  store ptr %265, ptr %266, align 8, !tbaa !12
  %267 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %267, ptr @zz_res, align 8, !tbaa !13
  store ptr %0, ptr @zz_hold, align 8, !tbaa !13
  %268 = icmp eq ptr %267, null
  br i1 %268, label %275, label %269

269:                                              ; preds = %252
  %270 = load ptr, ptr %227, align 8, !tbaa !12
  store ptr %270, ptr @zz_tmp, align 8, !tbaa !13
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !12
  store ptr %272, ptr %227, align 8, !tbaa !12
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %272, i64 0, i64 1, i32 1
  store ptr %0, ptr %273, align 8, !tbaa !12
  store ptr %270, ptr %271, align 8, !tbaa !12
  %274 = getelementptr inbounds [2 x %struct.LIST], ptr %270, i64 0, i64 1, i32 1
  store ptr %267, ptr %274, align 8, !tbaa !12
  br label %275

275:                                              ; preds = %252, %269
  %276 = tail call ptr @BreakObject(ptr noundef nonnull %161, ptr noundef nonnull %1)
  br label %620

277:                                              ; preds = %144
  %278 = load ptr, ptr @BackEnd, align 8, !tbaa !13
  %279 = getelementptr inbounds %struct.back_end_rec, ptr %278, i64 0, i32 2
  %280 = load i32, ptr %279, align 8, !tbaa !15
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %303, label %282

282:                                              ; preds = %277
  %283 = tail call i32 @InsertScale(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %303, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !12
  br label %288

288:                                              ; preds = %288, %285
  %289 = phi ptr [ %287, %285 ], [ %290, %288 ]
  %290 = load ptr, ptr %289, align 8, !tbaa !12
  %291 = getelementptr inbounds %struct.word_type, ptr %290, i64 0, i32 1
  %292 = load i8, ptr %291, align 8, !tbaa !12
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %288, label %294

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.word_type, ptr %290, i64 0, i32 1
  %296 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %297 = getelementptr inbounds %struct.closure_type, ptr %290, i64 0, i32 4
  %298 = load i32, ptr %297, align 8, !tbaa !12
  %299 = sitofp i32 %298 to float
  %300 = fmul float %299, 7.812500e-03
  %301 = fpext float %300 to double
  %302 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %295, ptr noundef nonnull %296, double noundef %301) #4
  br label %620

303:                                              ; preds = %282, %277
  %304 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %305 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 6, ptr noundef nonnull @.str.7, i32 noundef 2, ptr noundef nonnull %56, ptr noundef nonnull %304) #4
  %306 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef nonnull %56) #4
  %307 = getelementptr inbounds %struct.word_type, ptr %306, i64 0, i32 3
  %308 = getelementptr inbounds %struct.word_type, ptr %306, i64 0, i32 3, i32 1
  store i32 0, ptr %308, align 8, !tbaa !12
  store i32 0, ptr %307, align 8, !tbaa !12
  %309 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !12
  %311 = icmp eq ptr %310, %0
  br i1 %311, label %322, label %312

312:                                              ; preds = %303
  %313 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !12
  %315 = getelementptr inbounds [2 x %struct.LIST], ptr %310, i64 0, i64 1
  store ptr %314, ptr %315, align 8, !tbaa !12
  %316 = getelementptr inbounds [2 x %struct.LIST], ptr %314, i64 0, i64 1, i32 1
  store ptr %310, ptr %316, align 8, !tbaa !12
  store ptr %0, ptr %309, align 8, !tbaa !12
  store ptr %0, ptr %313, align 8, !tbaa !12
  %317 = load ptr, ptr %315, align 8, !tbaa !12
  store ptr %317, ptr @zz_tmp, align 8, !tbaa !13
  %318 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !12
  store ptr %319, ptr %315, align 8, !tbaa !12
  %320 = getelementptr inbounds [2 x %struct.LIST], ptr %319, i64 0, i64 1, i32 1
  store ptr %310, ptr %320, align 8, !tbaa !12
  store ptr %317, ptr %318, align 8, !tbaa !12
  %321 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1, i32 1
  store ptr %306, ptr %321, align 8, !tbaa !12
  br label %322

322:                                              ; preds = %303, %312
  %323 = phi ptr [ %310, %312 ], [ null, %303 ]
  store ptr %323, ptr @xx_tmp, align 8
  store ptr %306, ptr @zz_res, align 8
  store ptr %323, ptr @zz_hold, align 8
  %324 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #4
  br label %620

325:                                              ; preds = %55
  %326 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  tail call void @MinConstraint(ptr noundef nonnull %326, ptr noundef nonnull %1) #4
  %327 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !12
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi ptr [ %328, %325 ], [ %332, %329 ]
  %331 = getelementptr inbounds [2 x %struct.LIST], ptr %330, i64 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !12
  %333 = getelementptr inbounds %struct.word_type, ptr %332, i64 0, i32 1
  %334 = load i8, ptr %333, align 8, !tbaa !12
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %329, label %336

336:                                              ; preds = %329
  %337 = tail call ptr @BreakObject(ptr noundef nonnull %332, ptr noundef nonnull %326)
  %338 = getelementptr inbounds %struct.word_type, ptr %337, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !12
  store i32 %339, ptr %45, align 8, !tbaa !12
  %340 = getelementptr inbounds %struct.word_type, ptr %337, i64 0, i32 3, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !12
  %342 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %341, ptr %342, align 8, !tbaa !12
  tail call void @EnlargeToConstraint(ptr noundef nonnull %45, ptr noundef nonnull %342, ptr noundef nonnull %326) #4
  br label %620

343:                                              ; preds = %55, %55
  %344 = load ptr, ptr @BackEnd, align 8, !tbaa !13
  %345 = getelementptr inbounds %struct.back_end_rec, ptr %344, i64 0, i32 2
  %346 = load i32, ptr %345, align 8, !tbaa !15
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %372, label %348

348:                                              ; preds = %343
  %349 = tail call i32 @InsertScale(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load i8, ptr %56, align 8, !tbaa !12
  br label %372

353:                                              ; preds = %348
  %354 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !12
  br label %356

356:                                              ; preds = %356, %353
  %357 = phi ptr [ %355, %353 ], [ %358, %356 ]
  %358 = load ptr, ptr %357, align 8, !tbaa !12
  %359 = getelementptr inbounds %struct.word_type, ptr %358, i64 0, i32 1
  %360 = load i8, ptr %359, align 8, !tbaa !12
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %356, label %362

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.word_type, ptr %358, i64 0, i32 1
  %364 = icmp eq i8 %360, 94
  %365 = select i1 %364, ptr @.str.9, ptr @.str.10
  %366 = getelementptr inbounds %struct.closure_type, ptr %358, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !12
  %368 = sitofp i32 %367 to float
  %369 = fmul float %368, 7.812500e-03
  %370 = fpext float %369 to double
  %371 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef nonnull %363, ptr noundef nonnull %365, double noundef %370) #4
  br label %620

372:                                              ; preds = %351, %343
  %373 = phi i8 [ %352, %351 ], [ %57, %343 ]
  %374 = icmp eq i8 %373, 94
  %375 = select i1 %374, ptr @.str.9, ptr @.str.10
  %376 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %56, ptr noundef nonnull %375) #4
  %377 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef nonnull %56) #4
  %378 = getelementptr inbounds %struct.word_type, ptr %377, i64 0, i32 3
  %379 = getelementptr inbounds %struct.word_type, ptr %377, i64 0, i32 3, i32 1
  store i32 0, ptr %379, align 8, !tbaa !12
  store i32 0, ptr %378, align 8, !tbaa !12
  %380 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !12
  %382 = icmp eq ptr %381, %0
  br i1 %382, label %393, label %383

383:                                              ; preds = %372
  %384 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !12
  %386 = getelementptr inbounds [2 x %struct.LIST], ptr %381, i64 0, i64 1
  store ptr %385, ptr %386, align 8, !tbaa !12
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %385, i64 0, i64 1, i32 1
  store ptr %381, ptr %387, align 8, !tbaa !12
  store ptr %0, ptr %380, align 8, !tbaa !12
  store ptr %0, ptr %384, align 8, !tbaa !12
  %388 = load ptr, ptr %386, align 8, !tbaa !12
  store ptr %388, ptr @zz_tmp, align 8, !tbaa !13
  %389 = getelementptr inbounds [2 x %struct.LIST], ptr %377, i64 0, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !12
  store ptr %390, ptr %386, align 8, !tbaa !12
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %390, i64 0, i64 1, i32 1
  store ptr %381, ptr %391, align 8, !tbaa !12
  store ptr %388, ptr %389, align 8, !tbaa !12
  %392 = getelementptr inbounds [2 x %struct.LIST], ptr %388, i64 0, i64 1, i32 1
  store ptr %377, ptr %392, align 8, !tbaa !12
  br label %393

393:                                              ; preds = %372, %383
  %394 = phi ptr [ %381, %383 ], [ null, %372 ]
  store ptr %394, ptr @xx_tmp, align 8
  store ptr %377, ptr @zz_res, align 8
  store ptr %394, ptr @zz_hold, align 8
  %395 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #4
  br label %620

396:                                              ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %397 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !12
  %399 = load ptr, ptr %0, align 8, !tbaa !12
  %400 = icmp eq ptr %398, %399
  br i1 %400, label %405, label %401

401:                                              ; preds = %396
  %402 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %403 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %402, ptr noundef nonnull @.str.13) #4
  %404 = load ptr, ptr %397, align 8, !tbaa !12
  br label %405

405:                                              ; preds = %401, %396
  %406 = phi ptr [ %398, %396 ], [ %404, %401 ]
  br label %407

407:                                              ; preds = %405, %407
  %408 = phi ptr [ %410, %407 ], [ %406, %405 ]
  %409 = getelementptr inbounds [2 x %struct.LIST], ptr %408, i64 0, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !12
  %411 = getelementptr inbounds %struct.word_type, ptr %410, i64 0, i32 1
  %412 = load i8, ptr %411, align 8, !tbaa !12
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %407, label %414

414:                                              ; preds = %407
  %415 = tail call ptr @BreakObject(ptr noundef nonnull %410, ptr noundef nonnull %1)
  %416 = getelementptr inbounds %struct.word_type, ptr %415, i64 0, i32 3
  %417 = load i32, ptr %416, align 8, !tbaa !12
  store i32 %417, ptr %45, align 8, !tbaa !12
  %418 = getelementptr inbounds %struct.word_type, ptr %415, i64 0, i32 3, i32 1
  %419 = load i32, ptr %418, align 8, !tbaa !12
  %420 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %419, ptr %420, align 8, !tbaa !12
  br label %620

421:                                              ; preds = %55
  %422 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !12
  br label %424

424:                                              ; preds = %424, %421
  %425 = phi ptr [ %423, %421 ], [ %427, %424 ]
  %426 = getelementptr inbounds [2 x %struct.LIST], ptr %425, i64 0, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !12
  %428 = getelementptr inbounds %struct.word_type, ptr %427, i64 0, i32 1
  %429 = load i8, ptr %428, align 8, !tbaa !12
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %424, label %431

431:                                              ; preds = %424
  %432 = tail call ptr @BreakObject(ptr noundef nonnull %427, ptr noundef nonnull %1)
  %433 = load ptr, ptr %0, align 8, !tbaa !12
  br label %434

434:                                              ; preds = %434, %431
  %435 = phi ptr [ %433, %431 ], [ %437, %434 ]
  %436 = getelementptr inbounds [2 x %struct.LIST], ptr %435, i64 0, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !12
  %438 = getelementptr inbounds %struct.word_type, ptr %437, i64 0, i32 1
  %439 = load i8, ptr %438, align 8, !tbaa !12
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %434, label %441

441:                                              ; preds = %434
  %442 = tail call ptr @BreakObject(ptr noundef nonnull %437, ptr noundef nonnull %1)
  %443 = getelementptr inbounds %struct.word_type, ptr %442, i64 0, i32 3
  %444 = load i32, ptr %443, align 8, !tbaa !12
  store i32 %444, ptr %45, align 8, !tbaa !12
  %445 = getelementptr inbounds %struct.word_type, ptr %442, i64 0, i32 3, i32 1
  %446 = load i32, ptr %445, align 8, !tbaa !12
  %447 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %446, ptr %447, align 8, !tbaa !12
  br label %620

448:                                              ; preds = %55, %55, %55, %55, %55
  %449 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !12
  br label %451

451:                                              ; preds = %451, %448
  %452 = phi ptr [ %450, %448 ], [ %454, %451 ]
  %453 = getelementptr inbounds [2 x %struct.LIST], ptr %452, i64 0, i64 1
  %454 = load ptr, ptr %453, align 8, !tbaa !12
  %455 = getelementptr inbounds %struct.word_type, ptr %454, i64 0, i32 1
  %456 = load i8, ptr %455, align 8, !tbaa !12
  switch i8 %456, label %457 [
    i8 0, label %451
    i8 13, label %464
  ]

457:                                              ; preds = %451
  %458 = tail call ptr @BreakObject(ptr noundef nonnull %454, ptr noundef nonnull %1)
  %459 = getelementptr inbounds %struct.word_type, ptr %458, i64 0, i32 3
  %460 = load i32, ptr %459, align 8, !tbaa !12
  store i32 %460, ptr %45, align 8, !tbaa !12
  %461 = getelementptr inbounds %struct.word_type, ptr %458, i64 0, i32 3, i32 1
  %462 = load i32, ptr %461, align 8, !tbaa !12
  %463 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %462, ptr %463, align 8, !tbaa !12
  br label %620

464:                                              ; preds = %451
  store i32 0, ptr %45, align 8, !tbaa !12
  %465 = load i32, ptr %8, align 4, !tbaa !10
  %466 = load i32, ptr %12, align 4, !tbaa !11
  %467 = tail call i32 @llvm.smin.i32(i32 %465, i32 %466)
  %468 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %467, ptr %468, align 8, !tbaa !12
  br label %620

469:                                              ; preds = %55
  %470 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !12
  br label %472

472:                                              ; preds = %472, %469
  %473 = phi ptr [ %471, %469 ], [ %475, %472 ]
  %474 = getelementptr inbounds [2 x %struct.LIST], ptr %473, i64 0, i64 1
  %475 = load ptr, ptr %474, align 8, !tbaa !12
  %476 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 1
  %477 = load i8, ptr %476, align 8, !tbaa !12
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %472, label %479

479:                                              ; preds = %472
  %480 = tail call i32 @FindShift(ptr noundef %0, ptr noundef nonnull %475, i32 noundef 0) #4
  %481 = load i32, ptr %1, align 4, !tbaa !5
  %482 = load i32, ptr %8, align 4, !tbaa !10
  %483 = tail call i32 @llvm.smin.i32(i32 %481, i32 %482)
  %484 = sub nsw i32 %483, %480
  store i32 %484, ptr %3, align 4, !tbaa !5
  %485 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  store i32 %482, ptr %485, align 4, !tbaa !10
  %486 = load i32, ptr %12, align 4, !tbaa !11
  %487 = tail call i32 @llvm.smin.i32(i32 %486, i32 %482)
  %488 = add nsw i32 %487, %480
  %489 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  store i32 %488, ptr %489, align 4, !tbaa !11
  %490 = call ptr @BreakObject(ptr noundef nonnull %475, ptr noundef nonnull %3)
  %491 = call i32 @FindShift(ptr noundef %0, ptr noundef nonnull %475, i32 noundef 0) #4
  %492 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 3
  %493 = load i32, ptr %492, align 8, !tbaa !12
  %494 = add nsw i32 %493, %491
  %495 = call i32 @llvm.smax.i32(i32 %494, i32 0)
  %496 = call i32 @llvm.smin.i32(i32 %495, i32 8388607)
  store i32 %496, ptr %45, align 8, !tbaa !12
  %497 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 3, i32 1
  %498 = load i32, ptr %497, align 8, !tbaa !12
  %499 = sub nsw i32 %498, %491
  %500 = call i32 @llvm.smax.i32(i32 %499, i32 0)
  %501 = call i32 @llvm.smin.i32(i32 %500, i32 8388607)
  %502 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %501, ptr %502, align 8, !tbaa !12
  br label %620

503:                                              ; preds = %55, %55
  %504 = load ptr, ptr %0, align 8, !tbaa !12
  br label %505

505:                                              ; preds = %505, %503
  %506 = phi ptr [ %504, %503 ], [ %508, %505 ]
  %507 = getelementptr inbounds [2 x %struct.LIST], ptr %506, i64 0, i64 1
  %508 = load ptr, ptr %507, align 8, !tbaa !12
  %509 = getelementptr inbounds %struct.word_type, ptr %508, i64 0, i32 1
  %510 = load i8, ptr %509, align 8, !tbaa !12
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %505, label %512

512:                                              ; preds = %505
  %513 = tail call ptr @BreakObject(ptr noundef nonnull %508, ptr noundef nonnull %1)
  %514 = getelementptr inbounds %struct.word_type, ptr %513, i64 0, i32 3
  %515 = load i32, ptr %514, align 8, !tbaa !12
  store i32 %515, ptr %45, align 8, !tbaa !12
  %516 = getelementptr inbounds %struct.word_type, ptr %513, i64 0, i32 3, i32 1
  %517 = load i32, ptr %516, align 8, !tbaa !12
  %518 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %517, ptr %518, align 8, !tbaa !12
  br label %620

519:                                              ; preds = %55, %55, %55, %55
  %520 = load ptr, ptr %0, align 8, !tbaa !12
  br label %521

521:                                              ; preds = %521, %519
  %522 = phi ptr [ %520, %519 ], [ %524, %521 ]
  %523 = getelementptr inbounds [2 x %struct.LIST], ptr %522, i64 0, i64 1
  %524 = load ptr, ptr %523, align 8, !tbaa !12
  %525 = getelementptr inbounds %struct.word_type, ptr %524, i64 0, i32 1
  %526 = load i8, ptr %525, align 8, !tbaa !12
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %521, label %528

528:                                              ; preds = %521
  %529 = tail call ptr @BreakObject(ptr noundef nonnull %524, ptr noundef nonnull %1)
  %530 = getelementptr inbounds %struct.word_type, ptr %529, i64 0, i32 3
  %531 = load i32, ptr %530, align 8, !tbaa !12
  store i32 %531, ptr %45, align 8, !tbaa !12
  %532 = getelementptr inbounds %struct.word_type, ptr %529, i64 0, i32 3, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !12
  %534 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %533, ptr %534, align 8, !tbaa !12
  br label %620

535:                                              ; preds = %55
  %536 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !12
  br label %538

538:                                              ; preds = %538, %535
  %539 = phi ptr [ %537, %535 ], [ %541, %538 ]
  %540 = getelementptr inbounds [2 x %struct.LIST], ptr %539, i64 0, i64 1
  %541 = load ptr, ptr %540, align 8, !tbaa !12
  %542 = getelementptr inbounds %struct.word_type, ptr %541, i64 0, i32 1
  %543 = load i8, ptr %542, align 8, !tbaa !12
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %538, label %545

545:                                              ; preds = %538
  %546 = tail call ptr @BreakObject(ptr noundef nonnull %541, ptr noundef nonnull %1)
  %547 = getelementptr inbounds %struct.word_type, ptr %546, i64 0, i32 3
  %548 = load i32, ptr %547, align 8, !tbaa !12
  store i32 %548, ptr %45, align 8, !tbaa !12
  %549 = getelementptr inbounds %struct.word_type, ptr %546, i64 0, i32 3, i32 1
  %550 = load i32, ptr %549, align 8, !tbaa !12
  %551 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %550, ptr %551, align 8, !tbaa !12
  br label %620

552:                                              ; preds = %55
  %553 = icmp sgt i32 %46, 0
  br i1 %553, label %554, label %604

554:                                              ; preds = %552
  %555 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %556 = load i32, ptr %555, align 8, !tbaa !12
  %557 = add nsw i32 %556, %46
  %558 = tail call i32 @llvm.smin.i32(i32 %557, i32 8388607)
  store i32 %558, ptr %555, align 8, !tbaa !12
  store i32 0, ptr %45, align 8, !tbaa !12
  %559 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !12
  %561 = icmp eq ptr %560, %0
  br i1 %561, label %585, label %562

562:                                              ; preds = %554, %578
  %563 = phi ptr [ %581, %578 ], [ %560, %554 ]
  %564 = phi ptr [ %579, %578 ], [ %0, %554 ]
  br label %565

565:                                              ; preds = %562, %565
  %566 = phi ptr [ %568, %565 ], [ %563, %562 ]
  %567 = getelementptr inbounds [2 x %struct.LIST], ptr %566, i64 0, i64 1
  %568 = load ptr, ptr %567, align 8, !tbaa !12
  %569 = getelementptr inbounds %struct.word_type, ptr %568, i64 0, i32 1
  %570 = load i8, ptr %569, align 8, !tbaa !12
  switch i8 %570, label %578 [
    i8 0, label %565
    i8 1, label %571
  ]

571:                                              ; preds = %565
  %572 = getelementptr inbounds %struct.gapobj_type, ptr %568, i64 0, i32 3
  %573 = load i16, ptr %572, align 4
  %574 = and i16 %573, 256
  %575 = icmp eq i16 %574, 0
  br i1 %575, label %578, label %576

576:                                              ; preds = %571
  %577 = and i16 %573, -257
  store i16 %577, ptr %572, align 4
  br label %578

578:                                              ; preds = %565, %571, %576
  %579 = phi ptr [ %568, %576 ], [ %564, %571 ], [ %564, %565 ]
  %580 = getelementptr inbounds %struct.LIST, ptr %563, i64 0, i32 1
  %581 = load ptr, ptr %580, align 8, !tbaa !12
  %582 = icmp eq ptr %581, %0
  br i1 %582, label %583, label %562

583:                                              ; preds = %578
  %584 = load i32, ptr %45, align 8, !tbaa !12
  br label %585

585:                                              ; preds = %583, %554
  %586 = phi i32 [ 0, %554 ], [ %584, %583 ]
  %587 = phi ptr [ %0, %554 ], [ %579, %583 ]
  %588 = load i32, ptr %1, align 4, !tbaa !5
  %589 = icmp sgt i32 %586, %588
  br i1 %589, label %598, label %590

590:                                              ; preds = %585
  %591 = load i32, ptr %555, align 8, !tbaa !12
  %592 = add nsw i32 %591, %586
  %593 = load i32, ptr %8, align 4, !tbaa !10
  %594 = icmp sgt i32 %592, %593
  br i1 %594, label %598, label %595

595:                                              ; preds = %590
  %596 = load i32, ptr %12, align 4, !tbaa !11
  %597 = icmp sgt i32 %591, %596
  br i1 %597, label %598, label %601

598:                                              ; preds = %585, %590, %595
  %599 = getelementptr inbounds %struct.word_type, ptr %587, i64 0, i32 1
  %600 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 10, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %599) #4
  br label %604

601:                                              ; preds = %595
  %602 = getelementptr inbounds %struct.word_type, ptr %587, i64 0, i32 1
  %603 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef 2, ptr noundef nonnull %602) #4
  br label %620

604:                                              ; preds = %598, %552
  %605 = call ptr @FillObject(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #4
  br label %620

606:                                              ; preds = %55
  %607 = tail call fastcc ptr @BreakTable(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %620

608:                                              ; preds = %55
  %609 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !12
  %611 = load ptr, ptr %0, align 8, !tbaa !12
  %612 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  tail call fastcc void @BreakJoinedGroup(ptr noundef %610, ptr noundef %611, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef nonnull %612)
  br label %620

613:                                              ; preds = %55
  %614 = tail call fastcc ptr @BreakVcat(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %620

615:                                              ; preds = %55
  %616 = zext i8 %57 to i32
  %617 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %618 = tail call ptr @Image(i32 noundef %616) #4
  %619 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef %617, ptr noundef nonnull @.str.17, ptr noundef %618) #4
  br label %620

620:                                              ; preds = %601, %55, %55, %457, %464, %362, %393, %275, %322, %294, %75, %101, %615, %613, %608, %606, %604, %545, %528, %512, %479, %441, %414, %336, %137, %116
  %621 = phi ptr [ %0, %615 ], [ %0, %613 ], [ %0, %608 ], [ %0, %606 ], [ %0, %601 ], [ %605, %604 ], [ %0, %545 ], [ %0, %528 ], [ %0, %512 ], [ %0, %55 ], [ %0, %55 ], [ %0, %479 ], [ %0, %457 ], [ %0, %464 ], [ %0, %441 ], [ %0, %414 ], [ %358, %362 ], [ %377, %393 ], [ %0, %336 ], [ %276, %275 ], [ %290, %294 ], [ %306, %322 ], [ %0, %137 ], [ %0, %116 ], [ %71, %75 ], [ %85, %101 ]
  %622 = getelementptr inbounds %struct.word_type, ptr %621, i64 0, i32 3
  %623 = load i32, ptr %622, align 8, !tbaa !12
  %624 = icmp sgt i32 %623, -1
  br i1 %624, label %628, label %625

625:                                              ; preds = %620
  %626 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %627 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %626, ptr noundef nonnull @.str.18) #4
  br label %628

628:                                              ; preds = %625, %620
  %629 = getelementptr inbounds %struct.word_type, ptr %621, i64 0, i32 3, i32 1
  %630 = load i32, ptr %629, align 8, !tbaa !12
  %631 = icmp sgt i32 %630, -1
  br i1 %631, label %635, label %632

632:                                              ; preds = %628
  %633 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %634 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %633, ptr noundef nonnull @.str.19) #4
  br label %635

635:                                              ; preds = %628, %632, %48, %41
  %636 = phi ptr [ %25, %41 ], [ %0, %48 ], [ %621, %632 ], [ %621, %628 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  ret ptr %636
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare i32 @InsertScale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @InvScaleConstraint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FontSize(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @MinConstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EnlargeToConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FindShift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @FillObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @BreakTable(ptr noundef returned %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CONSTRAINT, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %9 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi ptr [ %10, %2 ], [ %14, %11 ]
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !12
  switch i8 %16, label %22 [
    i8 0, label %11
    i8 1, label %17
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.20) #4
  %21 = load i8, ptr %18, align 8, !tbaa !12
  br label %24

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %18, %17 ], [ %23, %22 ]
  %26 = phi i8 [ %21, %17 ], [ %16, %22 ]
  %27 = add i8 %26, -119
  %28 = icmp ult i8 %27, 20
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %31 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %30, ptr noundef nonnull @.str.21) #4
  %32 = load i8, ptr %25, align 8, !tbaa !12
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i8 [ %32, %29 ], [ %26, %24 ]
  %35 = add i8 %34, -2
  %36 = icmp ult i8 %35, 7
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds i8, ptr %14, i64 52
  store i32 %37, ptr %38, align 4, !tbaa !12
  %39 = xor i1 %36, true
  %40 = zext i1 %39 to i32
  %41 = load ptr, ptr %9, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %127, label %45

45:                                               ; preds = %33
  %46 = select i1 %36, ptr null, ptr %14
  br label %47

47:                                               ; preds = %45, %117
  %48 = phi ptr [ %125, %117 ], [ %43, %45 ]
  %49 = phi i32 [ %122, %117 ], [ 0, %45 ]
  %50 = phi ptr [ %121, %117 ], [ %46, %45 ]
  %51 = phi i32 [ %120, %117 ], [ 0, %45 ]
  %52 = phi i32 [ %119, %117 ], [ 0, %45 ]
  %53 = phi i32 [ %118, %117 ], [ %40, %45 ]
  br label %54

54:                                               ; preds = %47, %54
  %55 = phi ptr [ %57, %54 ], [ %48, %47 ]
  %56 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !12
  switch i8 %59, label %60 [
    i8 0, label %54
    i8 1, label %63
  ]

60:                                               ; preds = %54
  %61 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %62 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %61, ptr noundef nonnull @.str.20) #4
  br label %63

63:                                               ; preds = %54, %60
  %64 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !12
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %69 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %68, ptr noundef nonnull @.str.22) #4
  %70 = load ptr, ptr %64, align 8, !tbaa !12
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi ptr [ %65, %63 ], [ %70, %67 ]
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %76, %73 ], [ %72, %71 ]
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %74, i64 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct.word_type, ptr %76, i64 0, i32 1
  %78 = load i8, ptr %77, align 8, !tbaa !12
  switch i8 %78, label %84 [
    i8 0, label %73
    i8 1, label %79
  ]

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.word_type, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %82 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %81, ptr noundef nonnull @.str.20) #4
  %83 = load i8, ptr %80, align 8, !tbaa !12
  br label %86

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.word_type, ptr %76, i64 0, i32 1
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi ptr [ %80, %79 ], [ %85, %84 ]
  %88 = phi i8 [ %83, %79 ], [ %78, %84 ]
  %89 = add i8 %88, -119
  %90 = icmp ult i8 %89, 20
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %93 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %92, ptr noundef nonnull @.str.21) #4
  %94 = load i8, ptr %87, align 8, !tbaa !12
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i8 [ %94, %91 ], [ %88, %86 ]
  %97 = add i8 %96, -2
  %98 = icmp ult i8 %97, 7
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds i8, ptr %76, i64 52
  store i32 %99, ptr %100, align 4, !tbaa !12
  br i1 %98, label %117, label %101

101:                                              ; preds = %95
  %102 = icmp eq ptr %50, null
  br i1 %102, label %117, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.gapobj_type, ptr %57, i64 0, i32 3
  %105 = load i16, ptr %104, align 4
  %106 = and i16 %105, 256
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = add nsw i32 %52, %53
  %110 = tail call i32 @MinGap(i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %104) #4
  %111 = add i32 %49, %51
  %112 = add i32 %111, %110
  br label %117

113:                                              ; preds = %103
  %114 = tail call i32 @MinGap(i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %104) #4
  %115 = add nsw i32 %114, %51
  %116 = add nsw i32 %53, 1
  br label %117

117:                                              ; preds = %113, %108, %101, %95
  %118 = phi i32 [ %53, %95 ], [ 1, %108 ], [ %116, %113 ], [ 1, %101 ]
  %119 = phi i32 [ %52, %95 ], [ %109, %108 ], [ %52, %113 ], [ %52, %101 ]
  %120 = phi i32 [ %51, %95 ], [ 0, %108 ], [ %115, %113 ], [ %51, %101 ]
  %121 = phi ptr [ %50, %95 ], [ %76, %108 ], [ %76, %113 ], [ %76, %101 ]
  %122 = phi i32 [ %49, %95 ], [ %112, %108 ], [ %49, %113 ], [ %49, %101 ]
  %123 = load ptr, ptr %64, align 8, !tbaa !12
  %124 = getelementptr inbounds %struct.LIST, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !12
  %126 = icmp eq ptr %125, %0
  br i1 %126, label %127, label %47

127:                                              ; preds = %117, %33
  %128 = phi i32 [ %40, %33 ], [ %118, %117 ]
  %129 = phi i32 [ 0, %33 ], [ %119, %117 ]
  %130 = phi i32 [ 0, %33 ], [ %120, %117 ]
  %131 = phi i32 [ 0, %33 ], [ %122, %117 ]
  %132 = load i32, ptr %1, align 4, !tbaa !5
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %143, label %134

134:                                              ; preds = %127
  %135 = add nsw i32 %131, %130
  %136 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !10
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !11
  %142 = icmp sgt i32 %130, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %139, %134, %127
  %144 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %145 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef nonnull %144) #4
  %146 = load ptr, ptr %9, align 8, !tbaa !12
  %147 = icmp eq ptr %146, %0
  br i1 %147, label %166, label %148

148:                                              ; preds = %143, %162
  %149 = phi ptr [ %164, %162 ], [ %146, %143 ]
  br label %150

150:                                              ; preds = %148, %150
  %151 = phi ptr [ %153, %150 ], [ %149, %148 ]
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !12
  %154 = getelementptr inbounds %struct.word_type, ptr %153, i64 0, i32 1
  %155 = load i8, ptr %154, align 8, !tbaa !12
  switch i8 %155, label %162 [
    i8 0, label %150
    i8 1, label %156
  ]

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.gapobj_type, ptr %153, i64 0, i32 3
  %158 = load i16, ptr %157, align 4
  %159 = and i16 %158, 1023
  %160 = or disjoint i16 %159, 9216
  store i16 %160, ptr %157, align 4
  %161 = getelementptr inbounds %struct.gapobj_type, ptr %153, i64 0, i32 3, i32 1
  store i16 0, ptr %161, align 2, !tbaa !12
  br label %162

162:                                              ; preds = %150, %156
  %163 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !12
  %165 = icmp eq ptr %164, %0
  br i1 %165, label %166, label %148

166:                                              ; preds = %162, %143, %139
  %167 = phi i32 [ %130, %139 ], [ 0, %143 ], [ 0, %162 ]
  %168 = phi i32 [ %131, %139 ], [ 0, %143 ], [ 0, %162 ]
  %169 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %170 = add nsw i32 %129, %128
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %432

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %174 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %175 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %176 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %177 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  br label %178

178:                                              ; preds = %172, %425
  %179 = phi i32 [ %170, %172 ], [ %430, %425 ]
  %180 = phi i32 [ %168, %172 ], [ %429, %425 ]
  %181 = phi i32 [ 0, %172 ], [ %352, %425 ]
  %182 = phi i32 [ undef, %172 ], [ %352, %425 ]
  %183 = phi i32 [ %167, %172 ], [ %428, %425 ]
  %184 = phi i32 [ %129, %172 ], [ %427, %425 ]
  %185 = phi i32 [ %128, %172 ], [ %426, %425 ]
  %186 = phi ptr [ undef, %172 ], [ %235, %425 ]
  %187 = phi i32 [ undef, %172 ], [ %233, %425 ]
  %188 = load i32, ptr %1, align 4, !tbaa !5
  %189 = icmp sgt i32 %180, %188
  br i1 %189, label %432, label %190

190:                                              ; preds = %178
  %191 = add nsw i32 %180, %183
  %192 = load i32, ptr %173, align 4, !tbaa !10
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %432, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %169, align 4, !tbaa !11
  %196 = icmp sgt i32 %183, %195
  br i1 %196, label %432, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %174, align 8, !tbaa !12
  %199 = load i32, ptr %175, align 8, !tbaa !12
  %200 = add nsw i32 %199, %198
  br label %201

201:                                              ; preds = %248, %197
  %202 = phi ptr [ null, %197 ], [ %232, %248 ]
  %203 = phi i32 [ %187, %197 ], [ %253, %248 ]
  %204 = phi i32 [ %200, %197 ], [ %234, %248 ]
  %205 = phi ptr [ %186, %197 ], [ %235, %248 ]
  %206 = phi ptr [ %9, %197 ], [ %254, %248 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !12
  br label %208

208:                                              ; preds = %208, %201
  %209 = phi ptr [ %207, %201 ], [ %211, %208 ]
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !12
  %212 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !12
  switch i8 %213, label %217 [
    i8 0, label %208
    i8 1, label %214
  ]

214:                                              ; preds = %208
  %215 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %216 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %215, ptr noundef nonnull @.str.24) #4
  br label %217

217:                                              ; preds = %208, %214
  %218 = getelementptr inbounds i8, ptr %211, i64 52
  %219 = load i32, ptr %218, align 4, !tbaa !12
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !12
  %224 = getelementptr inbounds %struct.word_type, ptr %211, i64 0, i32 3, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !12
  %226 = add nsw i32 %225, %223
  %227 = icmp slt i32 %226, %204
  %228 = icmp eq ptr %202, null
  %229 = select i1 %227, i1 true, i1 %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %221, %230, %217
  %232 = phi ptr [ %202, %217 ], [ %211, %230 ], [ %202, %221 ]
  %233 = phi i32 [ %203, %217 ], [ 0, %230 ], [ %203, %221 ]
  %234 = phi i32 [ %204, %217 ], [ %226, %230 ], [ %204, %221 ]
  %235 = phi ptr [ %205, %217 ], [ %207, %230 ], [ %205, %221 ]
  %236 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !12
  %238 = icmp eq ptr %237, %0
  br i1 %238, label %255, label %239

239:                                              ; preds = %231, %239
  %240 = phi ptr [ %242, %239 ], [ %237, %231 ]
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !12
  %243 = getelementptr inbounds %struct.word_type, ptr %242, i64 0, i32 1
  %244 = load i8, ptr %243, align 8, !tbaa !12
  switch i8 %244, label %245 [
    i8 0, label %239
    i8 1, label %248
  ]

245:                                              ; preds = %239
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %247 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %246, ptr noundef nonnull @.str.25) #4
  br label %248

248:                                              ; preds = %239, %245
  %249 = getelementptr inbounds %struct.gapobj_type, ptr %242, i64 0, i32 3
  %250 = load i16, ptr %249, align 4
  %251 = and i16 %250, 256
  %252 = icmp eq i16 %251, 0
  %253 = select i1 %252, i32 %233, i32 1
  %254 = getelementptr inbounds %struct.LIST, ptr %237, i64 0, i32 1
  br label %201

255:                                              ; preds = %231
  call void @SetNeighbours(ptr noundef %235, i32 noundef %233, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %3) #4
  %256 = load ptr, ptr %5, align 8, !tbaa !13
  %257 = icmp eq ptr %256, null
  br i1 %257, label %270, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr %6, align 8, !tbaa !13
  %260 = getelementptr inbounds i8, ptr %259, i64 52
  %261 = load i32, ptr %260, align 4, !tbaa !12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.word_type, ptr %259, i64 0, i32 3, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !12
  br label %266

266:                                              ; preds = %258, %263
  %267 = phi i32 [ %265, %263 ], [ 0, %258 ]
  %268 = getelementptr inbounds %struct.gapobj_type, ptr %256, i64 0, i32 3
  %269 = call i32 @ExtraGap(i32 noundef %267, i32 noundef 0, ptr noundef nonnull %268, i32 noundef 151) #4
  br label %270

270:                                              ; preds = %255, %266
  %271 = phi i32 [ %269, %266 ], [ 0, %255 ]
  %272 = load ptr, ptr %7, align 8, !tbaa !13
  %273 = icmp eq ptr %272, null
  br i1 %273, label %286, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr %8, align 8, !tbaa !13
  %276 = getelementptr inbounds i8, ptr %275, i64 52
  %277 = load i32, ptr %276, align 4, !tbaa !12
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.word_type, ptr %275, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !12
  br label %282

282:                                              ; preds = %274, %279
  %283 = phi i32 [ %281, %279 ], [ 0, %274 ]
  %284 = getelementptr inbounds %struct.gapobj_type, ptr %272, i64 0, i32 3
  %285 = call i32 @ExtraGap(i32 noundef 0, i32 noundef %283, ptr noundef nonnull %284, i32 noundef 153) #4
  br label %286

286:                                              ; preds = %270, %282
  %287 = phi i32 [ %285, %282 ], [ 0, %270 ]
  %288 = load i32, ptr %173, align 4, !tbaa !10
  %289 = sub i32 %288, %191
  %290 = sdiv i32 %289, %179
  %291 = load i32, ptr %3, align 4, !tbaa !17
  switch i32 %291, label %348 [
    i32 151, label %292
    i32 152, label %310
    i32 153, label %330
  ]

292:                                              ; preds = %286
  %293 = load i32, ptr %1, align 4, !tbaa !5
  %294 = mul nsw i32 %290, %184
  %295 = add nsw i32 %294, %180
  %296 = call i32 @llvm.smin.i32(i32 %293, i32 %295)
  %297 = sub nsw i32 %296, %180
  %298 = sdiv i32 %297, %184
  %299 = icmp sgt i32 %298, %181
  %300 = sub nsw i32 %298, %181
  %301 = icmp slt i32 %300, 20
  %302 = select i1 %299, i1 %301, i1 false
  %303 = select i1 %302, i32 %181, i32 %298
  %304 = add nsw i32 %303, %271
  %305 = call i32 @llvm.smin.i32(i32 %304, i32 8388607)
  store i32 %305, ptr %4, align 4, !tbaa !5
  %306 = add nsw i32 %304, %287
  %307 = call i32 @llvm.smin.i32(i32 %306, i32 8388607)
  store i32 %307, ptr %176, align 4, !tbaa !10
  %308 = add nsw i32 %303, %287
  %309 = call i32 @llvm.smin.i32(i32 %308, i32 8388607)
  store i32 %309, ptr %177, align 4, !tbaa !11
  br label %351

310:                                              ; preds = %286
  %311 = load i32, ptr %169, align 4, !tbaa !11
  %312 = mul nsw i32 %290, %185
  %313 = add nsw i32 %312, %183
  %314 = call i32 @llvm.smin.i32(i32 %311, i32 %313)
  %315 = sub nsw i32 %314, %183
  %316 = sdiv i32 %315, %185
  %317 = icmp sgt i32 %316, %181
  %318 = sub nsw i32 %316, %181
  %319 = icmp slt i32 %318, 20
  %320 = select i1 %317, i1 %319, i1 false
  %321 = select i1 %320, i32 %181, i32 %316
  %322 = getelementptr inbounds %struct.word_type, ptr %232, i64 0, i32 3
  %323 = load i32, ptr %322, align 8, !tbaa !12
  %324 = add nsw i32 %323, %271
  %325 = call i32 @llvm.smin.i32(i32 %324, i32 8388607)
  store i32 %325, ptr %4, align 4, !tbaa !5
  %326 = add i32 %321, %287
  %327 = add i32 %326, %324
  %328 = call i32 @llvm.smin.i32(i32 %327, i32 8388607)
  store i32 %328, ptr %176, align 4, !tbaa !10
  %329 = call i32 @llvm.smin.i32(i32 %326, i32 8388607)
  store i32 %329, ptr %177, align 4, !tbaa !11
  br label %351

330:                                              ; preds = %286
  %331 = load i32, ptr %169, align 4, !tbaa !11
  %332 = mul nsw i32 %290, %185
  %333 = add nsw i32 %332, %183
  %334 = call i32 @llvm.smin.i32(i32 %331, i32 %333)
  %335 = sub nsw i32 %334, %183
  %336 = sdiv i32 %335, %185
  %337 = icmp sgt i32 %336, %181
  %338 = sub nsw i32 %336, %181
  %339 = icmp slt i32 %338, 20
  %340 = select i1 %337, i1 %339, i1 false
  %341 = select i1 %340, i32 %181, i32 %336
  %342 = add nsw i32 %341, %271
  %343 = call i32 @llvm.smin.i32(i32 %342, i32 8388607)
  store i32 %343, ptr %4, align 4, !tbaa !5
  %344 = add nsw i32 %342, %287
  %345 = call i32 @llvm.smin.i32(i32 %344, i32 8388607)
  store i32 %345, ptr %176, align 4, !tbaa !10
  %346 = add nsw i32 %341, %287
  %347 = call i32 @llvm.smin.i32(i32 %346, i32 8388607)
  store i32 %347, ptr %177, align 4, !tbaa !11
  br label %351

348:                                              ; preds = %286
  %349 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %350 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %349, ptr noundef nonnull @.str.26) #4
  br label %351

351:                                              ; preds = %348, %330, %310, %292
  %352 = phi i32 [ %182, %348 ], [ %341, %330 ], [ %321, %310 ], [ %303, %292 ]
  %353 = call ptr @BreakObject(ptr noundef %232, ptr noundef nonnull %4)
  %354 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 3
  %355 = getelementptr inbounds i8, ptr %353, i64 52
  store i32 1, ptr %355, align 4, !tbaa !12
  %356 = load ptr, ptr %5, align 8, !tbaa !13
  %357 = icmp eq ptr %356, null
  br i1 %357, label %377, label %358

358:                                              ; preds = %351
  %359 = load ptr, ptr %6, align 8, !tbaa !13
  %360 = getelementptr inbounds i8, ptr %359, i64 52
  %361 = load i32, ptr %360, align 4, !tbaa !12
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.word_type, ptr %359, i64 0, i32 3, i32 1
  %365 = load i32, ptr %364, align 8, !tbaa !12
  br label %366

366:                                              ; preds = %358, %363
  %367 = phi i32 [ %365, %363 ], [ 0, %358 ]
  %368 = load i32, ptr %354, align 8, !tbaa !12
  %369 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 3, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !12
  %371 = getelementptr inbounds %struct.gapobj_type, ptr %356, i64 0, i32 3
  %372 = call i32 @MinGap(i32 noundef %367, i32 noundef %368, i32 noundef %370, ptr noundef nonnull %371) #4
  %373 = load ptr, ptr %5, align 8, !tbaa !13
  %374 = getelementptr inbounds %struct.gapobj_type, ptr %373, i64 0, i32 3
  %375 = call i32 @MinGap(i32 noundef %367, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %374) #4
  %376 = sub nsw i32 %372, %375
  br label %379

377:                                              ; preds = %351
  %378 = load i32, ptr %354, align 8, !tbaa !12
  br label %379

379:                                              ; preds = %377, %366
  %380 = phi i32 [ %376, %366 ], [ %378, %377 ]
  %381 = load ptr, ptr %7, align 8, !tbaa !13
  %382 = icmp eq ptr %381, null
  br i1 %382, label %404, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %8, align 8, !tbaa !13
  %385 = getelementptr inbounds i8, ptr %384, i64 52
  %386 = load i32, ptr %385, align 4, !tbaa !12
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.word_type, ptr %384, i64 0, i32 3
  %390 = load i32, ptr %389, align 8, !tbaa !12
  %391 = getelementptr inbounds %struct.word_type, ptr %384, i64 0, i32 3, i32 1
  %392 = load i32, ptr %391, align 8, !tbaa !12
  br label %393

393:                                              ; preds = %383, %388
  %394 = phi i32 [ %390, %388 ], [ 0, %383 ]
  %395 = phi i32 [ %392, %388 ], [ 0, %383 ]
  %396 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 3, i32 1
  %397 = load i32, ptr %396, align 8, !tbaa !12
  %398 = getelementptr inbounds %struct.gapobj_type, ptr %381, i64 0, i32 3
  %399 = call i32 @MinGap(i32 noundef %397, i32 noundef %394, i32 noundef %395, ptr noundef nonnull %398) #4
  %400 = load ptr, ptr %7, align 8, !tbaa !13
  %401 = getelementptr inbounds %struct.gapobj_type, ptr %400, i64 0, i32 3
  %402 = call i32 @MinGap(i32 noundef 0, i32 noundef %394, i32 noundef %395, ptr noundef nonnull %401) #4
  %403 = sub nsw i32 %399, %402
  br label %407

404:                                              ; preds = %379
  %405 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 3, i32 1
  %406 = load i32, ptr %405, align 8, !tbaa !12
  br label %407

407:                                              ; preds = %404, %393
  %408 = phi i32 [ %403, %393 ], [ %406, %404 ]
  %409 = load i32, ptr %3, align 4, !tbaa !17
  switch i32 %409, label %422 [
    i32 151, label %410
    i32 152, label %414
    i32 153, label %418
  ]

410:                                              ; preds = %407
  %411 = add i32 %380, %180
  %412 = add i32 %411, %408
  %413 = add nsw i32 %184, -1
  br label %425

414:                                              ; preds = %407
  %415 = add nsw i32 %380, %180
  %416 = add nsw i32 %408, %183
  %417 = add nsw i32 %185, -1
  br label %425

418:                                              ; preds = %407
  %419 = add i32 %380, %183
  %420 = add i32 %419, %408
  %421 = add nsw i32 %185, -1
  br label %425

422:                                              ; preds = %407
  %423 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %424 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %423, ptr noundef nonnull @.str.26) #4
  br label %425

425:                                              ; preds = %422, %418, %414, %410
  %426 = phi i32 [ %185, %422 ], [ %421, %418 ], [ %417, %414 ], [ %185, %410 ]
  %427 = phi i32 [ %184, %422 ], [ %184, %418 ], [ %184, %414 ], [ %413, %410 ]
  %428 = phi i32 [ %183, %422 ], [ %420, %418 ], [ %416, %414 ], [ %183, %410 ]
  %429 = phi i32 [ %180, %422 ], [ %180, %418 ], [ %415, %414 ], [ %412, %410 ]
  %430 = add nsw i32 %427, %426
  %431 = icmp sgt i32 %430, 0
  br i1 %431, label %178, label %432

432:                                              ; preds = %194, %178, %190, %425, %166
  %433 = phi i32 [ %167, %166 ], [ %428, %425 ], [ %183, %190 ], [ %183, %178 ], [ %183, %194 ]
  %434 = phi i32 [ %168, %166 ], [ %429, %425 ], [ %180, %190 ], [ %180, %178 ], [ %180, %194 ]
  %435 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %434, ptr %435, align 8, !tbaa !12
  %436 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %433, ptr %436, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BreakJoinedGroup(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  %8 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6, %28
  %12 = phi i32 [ %29, %28 ], [ 0, %6 ]
  %13 = phi ptr [ %31, %28 ], [ %0, %6 ]
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %13, %11 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %14, label %21

21:                                               ; preds = %14
  %22 = add i8 %19, -9
  %23 = icmp ult i8 %22, 91
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !12
  %27 = tail call i32 @llvm.smax.i32(i32 %12, i32 %26)
  br label %28

28:                                               ; preds = %21, %24
  %29 = phi i32 [ %27, %24 ], [ %12, %21 ]
  %30 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %33, label %11

33:                                               ; preds = %28, %6
  %34 = phi ptr [ undef, %6 ], [ %17, %28 ]
  %35 = phi i32 [ 0, %6 ], [ %29, %28 ]
  %36 = load i32, ptr %3, align 4, !tbaa !5
  %37 = icmp sgt i32 %35, %36
  %38 = select i1 %37, i32 0, i32 %35
  %39 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !10
  %41 = tail call i32 @llvm.smin.i32(i32 %36, i32 %40)
  store i32 %41, ptr %7, align 4, !tbaa !5
  %42 = getelementptr inbounds %struct.CONSTRAINT, ptr %7, i64 0, i32 1
  store i32 %40, ptr %42, align 4, !tbaa !10
  %43 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !11
  %45 = sub nsw i32 %40, %38
  %46 = tail call i32 @llvm.smin.i32(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.CONSTRAINT, ptr %7, i64 0, i32 2
  store i32 %46, ptr %47, align 4, !tbaa !11
  %48 = icmp eq ptr %2, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %33
  %50 = call ptr @BreakObject(ptr noundef nonnull %2, ptr noundef nonnull %7)
  %51 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !12
  %53 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 3, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !12
  %55 = load i32, ptr %7, align 4
  %56 = load i32, ptr %42, align 4
  %57 = sub nsw i32 %56, %54
  %58 = call i32 @llvm.smin.i32(i32 %55, i32 %57)
  store i32 %58, ptr %7, align 4, !tbaa !5
  %59 = load i32, ptr %47, align 4
  %60 = sub nsw i32 %56, %52
  %61 = call i32 @llvm.smin.i32(i32 %59, i32 %60)
  store i32 %61, ptr %47, align 4, !tbaa !11
  %62 = load ptr, ptr %8, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %33, %49
  %64 = phi ptr [ %62, %49 ], [ %9, %33 ]
  %65 = phi ptr [ %50, %49 ], [ null, %33 ]
  %66 = phi i32 [ %52, %49 ], [ 0, %33 ]
  %67 = phi i32 [ %54, %49 ], [ 0, %33 ]
  %68 = icmp eq ptr %64, %0
  br i1 %68, label %110, label %69

69:                                               ; preds = %63, %102
  %70 = phi ptr [ %103, %102 ], [ %64, %63 ]
  %71 = phi i32 [ %106, %102 ], [ %67, %63 ]
  %72 = phi i32 [ %105, %102 ], [ %66, %63 ]
  %73 = phi ptr [ %108, %102 ], [ %0, %63 ]
  br label %74

74:                                               ; preds = %69, %74
  %75 = phi ptr [ %77, %74 ], [ %73, %69 ]
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = getelementptr inbounds %struct.word_type, ptr %77, i64 0, i32 1
  %79 = load i8, ptr %78, align 8, !tbaa !12
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %74, label %81

81:                                               ; preds = %74
  %82 = add i8 %79, -100
  %83 = icmp ult i8 %82, -91
  %84 = icmp eq ptr %77, %65
  %85 = or i1 %84, %83
  br i1 %85, label %102, label %86

86:                                               ; preds = %81
  %87 = call ptr @BreakObject(ptr noundef nonnull %77, ptr noundef nonnull %7)
  %88 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !12
  %90 = call i32 @llvm.smax.i32(i32 %72, i32 %89)
  %91 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 3, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !12
  %93 = call i32 @llvm.smax.i32(i32 %71, i32 %92)
  %94 = load i32, ptr %7, align 4
  %95 = load i32, ptr %42, align 4
  %96 = sub nsw i32 %95, %93
  %97 = call i32 @llvm.smin.i32(i32 %94, i32 %96)
  store i32 %97, ptr %7, align 4, !tbaa !5
  %98 = load i32, ptr %47, align 4
  %99 = sub nsw i32 %95, %90
  %100 = call i32 @llvm.smin.i32(i32 %98, i32 %99)
  store i32 %100, ptr %47, align 4, !tbaa !11
  %101 = load ptr, ptr %8, align 8, !tbaa !12
  br label %102

102:                                              ; preds = %81, %86
  %103 = phi ptr [ %101, %86 ], [ %70, %81 ]
  %104 = phi ptr [ %87, %86 ], [ %77, %81 ]
  %105 = phi i32 [ %90, %86 ], [ %72, %81 ]
  %106 = phi i32 [ %93, %86 ], [ %71, %81 ]
  %107 = getelementptr inbounds %struct.LIST, ptr %73, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  %109 = icmp eq ptr %108, %103
  br i1 %109, label %110, label %69

110:                                              ; preds = %102, %63
  %111 = phi ptr [ %34, %63 ], [ %104, %102 ]
  %112 = phi i32 [ %66, %63 ], [ %105, %102 ]
  %113 = phi i32 [ %67, %63 ], [ %106, %102 ]
  %114 = load i32, ptr %3, align 4, !tbaa !5
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = add nsw i32 %113, %112
  %118 = load i32, ptr %39, align 4, !tbaa !10
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %43, align 4, !tbaa !11
  %122 = icmp sgt i32 %113, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %120, %116, %110
  %124 = icmp eq ptr %65, null
  %125 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1
  %126 = icmp eq ptr %111, null
  %127 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1
  %128 = load ptr, ptr @no_fpos, align 8
  %129 = select i1 %126, ptr %128, ptr %127
  %130 = select i1 %124, ptr %129, ptr %125
  %131 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 13, i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef %130) #4
  br label %132

132:                                              ; preds = %123, %120
  store i32 %112, ptr %4, align 4, !tbaa !17
  store i32 %113, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @BreakVcat(ptr noundef returned %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.28) #4
  %12 = load ptr, ptr %6, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %12, %9 ], [ %7, %2 ]
  store i32 8388607, ptr %5, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !10
  %17 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = tail call i32 @llvm.smin.i32(i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.CONSTRAINT, ptr %5, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !10
  %21 = getelementptr inbounds %struct.CONSTRAINT, ptr %5, i64 0, i32 2
  store i32 8388607, ptr %21, align 4, !tbaa !11
  %22 = icmp eq ptr %14, %0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.30) #4
  unreachable

26:                                               ; preds = %13, %107
  %27 = phi i32 [ %108, %107 ], [ undef, %13 ]
  %28 = phi i32 [ %109, %107 ], [ undef, %13 ]
  %29 = phi ptr [ %113, %107 ], [ %14, %13 ]
  %30 = phi i1 [ false, %107 ], [ true, %13 ]
  %31 = phi i32 [ %111, %107 ], [ 0, %13 ]
  %32 = phi ptr [ %43, %107 ], [ undef, %13 ]
  %33 = load i32, ptr %3, align 4, !tbaa !17
  %34 = load i32, ptr %4, align 4, !tbaa !17
  br label %35

35:                                               ; preds = %26, %95
  %36 = phi i32 [ %96, %95 ], [ %34, %26 ]
  %37 = phi i32 [ %97, %95 ], [ %33, %26 ]
  %38 = phi i32 [ %98, %95 ], [ %27, %26 ]
  %39 = phi i32 [ %99, %95 ], [ %28, %26 ]
  %40 = phi i32 [ %100, %95 ], [ %27, %26 ]
  %41 = phi i32 [ %101, %95 ], [ %28, %26 ]
  %42 = phi ptr [ %105, %95 ], [ %29, %26 ]
  %43 = phi ptr [ %103, %95 ], [ %32, %26 ]
  %44 = phi ptr [ %102, %95 ], [ null, %26 ]
  br label %45

45:                                               ; preds = %35, %45
  %46 = phi ptr [ %48, %45 ], [ %42, %35 ]
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %45, label %52

52:                                               ; preds = %45
  %53 = add i8 %50, -119
  %54 = icmp ult i8 %53, 20
  br i1 %54, label %95, label %55

55:                                               ; preds = %52
  %56 = icmp eq i8 %50, 1
  %57 = icmp eq ptr %44, null
  br i1 %56, label %58, label %80

58:                                               ; preds = %55
  br i1 %57, label %59, label %62

59:                                               ; preds = %58
  %60 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %61 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %60, ptr noundef nonnull @.str.29) #4
  br label %62

62:                                               ; preds = %59, %58
  %63 = getelementptr inbounds %struct.gapobj_type, ptr %48, i64 0, i32 3
  %64 = load i16, ptr %63, align 4
  %65 = and i16 %64, 512
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  store i32 %37, ptr %3, align 4, !tbaa !17
  store i32 %36, ptr %4, align 4, !tbaa !17
  %68 = load i32, ptr %5, align 4, !tbaa !5
  %69 = icmp sgt i32 %41, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = add nsw i32 %40, %41
  %72 = load i32, ptr %20, align 4, !tbaa !10
  %73 = icmp sgt i32 %71, %72
  %74 = load i32, ptr %21, align 4
  %75 = icmp sgt i32 %40, %74
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %70, %67
  call fastcc void @BreakJoinedGroup(ptr noundef %44, ptr noundef %42, ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %78 = load i32, ptr %3, align 4
  %79 = load i32, ptr %4, align 4
  br label %107

80:                                               ; preds = %55
  %81 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !12
  br i1 %57, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 3, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !12
  br label %95

86:                                               ; preds = %80
  %87 = tail call i32 @llvm.smax.i32(i32 %41, i32 %82)
  %88 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 3, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !12
  %90 = tail call i32 @llvm.smax.i32(i32 %40, i32 %89)
  %91 = getelementptr inbounds %struct.word_type, ptr %43, i64 0, i32 3, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !12
  %93 = icmp sgt i32 %89, %92
  %94 = select i1 %93, ptr %48, ptr %43
  br label %95

95:                                               ; preds = %86, %52, %62, %83
  %96 = phi i32 [ %36, %62 ], [ %85, %83 ], [ %36, %52 ], [ %90, %86 ]
  %97 = phi i32 [ %37, %62 ], [ %82, %83 ], [ %37, %52 ], [ %87, %86 ]
  %98 = phi i32 [ %38, %62 ], [ %85, %83 ], [ %38, %52 ], [ %90, %86 ]
  %99 = phi i32 [ %39, %62 ], [ %82, %83 ], [ %39, %52 ], [ %87, %86 ]
  %100 = phi i32 [ %40, %62 ], [ %85, %83 ], [ %40, %52 ], [ %90, %86 ]
  %101 = phi i32 [ %41, %62 ], [ %82, %83 ], [ %41, %52 ], [ %87, %86 ]
  %102 = phi ptr [ %44, %62 ], [ %42, %83 ], [ %44, %52 ], [ %44, %86 ]
  %103 = phi ptr [ %43, %62 ], [ %48, %83 ], [ %43, %52 ], [ %94, %86 ]
  %104 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %118, label %35

107:                                              ; preds = %77, %70
  %108 = phi i32 [ %38, %70 ], [ %79, %77 ]
  %109 = phi i32 [ %39, %70 ], [ %78, %77 ]
  %110 = add nsw i32 %108, %109
  %111 = tail call i32 @llvm.smax.i32(i32 %31, i32 %110)
  %112 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !12
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %115, label %26

115:                                              ; preds = %107
  %116 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %117 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %116, ptr noundef nonnull @.str.30) #4
  br label %124

118:                                              ; preds = %95
  store i32 %97, ptr %3, align 4, !tbaa !17
  store i32 %96, ptr %4, align 4, !tbaa !17
  %119 = icmp eq ptr %102, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %122 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %121, ptr noundef nonnull @.str.30) #4
  br i1 %30, label %149, label %124

123:                                              ; preds = %118
  br i1 %30, label %149, label %124

124:                                              ; preds = %115, %120, %123
  %125 = phi i32 [ %98, %120 ], [ %98, %123 ], [ %108, %115 ]
  %126 = phi i32 [ %99, %120 ], [ %99, %123 ], [ %109, %115 ]
  %127 = phi ptr [ null, %120 ], [ %102, %123 ], [ null, %115 ]
  %128 = phi ptr [ %103, %120 ], [ %103, %123 ], [ %43, %115 ]
  %129 = phi i32 [ %31, %120 ], [ %31, %123 ], [ %111, %115 ]
  %130 = load i32, ptr %5, align 4, !tbaa !5
  %131 = icmp sgt i32 %126, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = add nsw i32 %125, %126
  %134 = load i32, ptr %20, align 4, !tbaa !10
  %135 = icmp sgt i32 %133, %134
  %136 = load i32, ptr %21, align 4
  %137 = icmp sgt i32 %125, %136
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132, %124
  %140 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @BreakJoinedGroup(ptr noundef %127, ptr noundef %140, ptr noundef %128, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %141 = load i32, ptr %3, align 4
  %142 = load i32, ptr %4, align 4
  %143 = add nsw i32 %142, %141
  br label %144

144:                                              ; preds = %132, %139
  %145 = phi i32 [ %133, %132 ], [ %143, %139 ]
  %146 = tail call i32 @llvm.smax.i32(i32 %129, i32 %145)
  %147 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 0, ptr %147, align 8, !tbaa !12
  %148 = tail call i32 @llvm.smin.i32(i32 %146, i32 8388607)
  br label %155

149:                                              ; preds = %120, %123
  %150 = phi ptr [ null, %120 ], [ %102, %123 ]
  %151 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @BreakJoinedGroup(ptr noundef %150, ptr noundef %151, ptr noundef %103, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %152 = load i32, ptr %3, align 4, !tbaa !17
  %153 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %152, ptr %153, align 8, !tbaa !12
  %154 = load i32, ptr %4, align 4, !tbaa !17
  br label %155

155:                                              ; preds = %149, %144
  %156 = phi i32 [ %154, %149 ], [ %148, %144 ]
  %157 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %156, ptr %157, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret ptr %0
}

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @SetNeighbours(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ExtraGap(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!16, !7, i64 16}
!16 = !{!"back_end_rec", !7, i64 0, !14, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224}
!17 = !{!7, !7, i64 0}

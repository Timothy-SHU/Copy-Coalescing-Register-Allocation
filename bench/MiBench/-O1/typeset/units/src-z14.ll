; ModuleID = 'src/z14.c'
source_filename = "src/z14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@FillObject.hyph_word = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"FillObject: type(x) != ACAT!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"FillObject: initial size!\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"paragraph deleted (assigned width %s is too narrow)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"FillObject/extend_unbreakable:  link == x!\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"hyphen or nohyphen option missing\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"MoveRightToGap: newg!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SIB: glink!\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"SetIntervalBadness: badness < 0!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"IntervalShiftRightEnd: AT_END!\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"IntervalShiftRightEnd: type(g)!\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"IntervalShiftRightEnd: rlink == x!\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"IntervalShiftLeftEnd: llink == x!\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"IntervalShiftLeftEnd: tab_count <= 0!\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"FillObject: IntervalClass(I)\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"almost empty paragraph!\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"FillObject: last word!\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"FillObject: last gap_obj!\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (a)!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (b)!\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"FillObject: empty paragraph!\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"FillObject: last line is empty!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @FillObject(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i8 %9, 17
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.1) #5
  br label %14

14:                                               ; preds = %11, %7
  store i32 0, ptr %6, align 4, !tbaa !10
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %99

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 96
  %25 = icmp eq i8 %24, 32
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 4095
  %30 = tail call i32 @FontSize(i32 noundef %29, ptr noundef nonnull %0) #5
  %31 = shl nsw i32 %30, 1
  %32 = sub nsw i32 %21, %31
  br label %33

33:                                               ; preds = %16, %26
  %34 = phi i32 [ %32, %26 ], [ %21, %16 ]
  %35 = phi i32 [ %31, %26 ], [ undef, %16 ]
  %36 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !5
  %40 = add nsw i32 %39, %37
  %41 = icmp sgt i32 %40, %21
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %43, ptr noundef nonnull @.str.2) #5
  br label %45

45:                                               ; preds = %42, %33
  %46 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 4095
  %49 = tail call i32 @FontSize(i32 noundef %48, ptr noundef nonnull %0) #5
  %50 = shl nsw i32 %49, 1
  %51 = icmp sgt i32 %21, %50
  br i1 %51, label %99, label %52

52:                                               ; preds = %45
  %53 = tail call ptr @EchoLength(i32 noundef %21) #5
  %54 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 14, i32 noundef 6, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %8, ptr noundef %53) #5
  %55 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #5
  %56 = load i32, ptr %46, align 4
  %57 = and i32 %56, 4095
  %58 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, -4096
  %61 = or disjoint i32 %60, %57
  store i32 %61, ptr %58, align 8
  %62 = load i32, ptr %46, align 4
  %63 = and i32 %62, 4190208
  %64 = and i32 %61, -4190209
  %65 = or disjoint i32 %64, %63
  store i32 %65, ptr %58, align 8
  %66 = load i32, ptr %46, align 4
  %67 = and i32 %66, 4194304
  %68 = and i32 %65, -4194305
  %69 = or disjoint i32 %68, %67
  store i32 %69, ptr %58, align 8
  %70 = load i32, ptr %46, align 4
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 528482304
  %73 = and i32 %69, -528482305
  %74 = or disjoint i32 %72, %73
  store i32 %74, ptr %58, align 8
  %75 = load i8, ptr %22, align 4
  %76 = and i8 %75, 3
  %77 = icmp eq i8 %76, 2
  %78 = select i1 %77, i32 -2147483648, i32 0
  %79 = and i32 %74, 2147483647
  %80 = or disjoint i32 %78, %79
  store i32 %80, ptr %58, align 8
  %81 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 3
  %82 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 3, i32 1
  store i32 0, ptr %82, align 8, !tbaa !5
  store i32 0, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %96, label %86

86:                                               ; preds = %52
  store ptr %84, ptr @zz_res, align 8, !tbaa !8
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  store ptr %88, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1, i32 1
  store ptr %84, ptr %90, align 8, !tbaa !5
  store ptr %0, ptr %83, align 8, !tbaa !5
  store ptr %0, ptr %87, align 8, !tbaa !5
  %91 = load ptr, ptr %89, align 8, !tbaa !5
  store ptr %91, ptr @zz_tmp, align 8, !tbaa !8
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  store ptr %93, ptr %89, align 8, !tbaa !5
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %93, i64 0, i64 1, i32 1
  store ptr %84, ptr %94, align 8, !tbaa !5
  store ptr %91, ptr %92, align 8, !tbaa !5
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %91, i64 0, i64 1, i32 1
  store ptr %55, ptr %95, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %52, %86
  %97 = phi ptr [ %84, %86 ], [ null, %52 ]
  store ptr %97, ptr @xx_tmp, align 8
  store ptr %55, ptr @zz_res, align 8
  store ptr %97, ptr @zz_hold, align 8
  %98 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #5
  br label %2861

99:                                               ; preds = %14, %45
  %100 = phi i32 [ %21, %45 ], [ 0, %14 ]
  %101 = phi i32 [ %34, %45 ], [ 0, %14 ]
  %102 = phi i32 [ %35, %45 ], [ undef, %14 ]
  %103 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %104 = zext i8 %103 to i32
  store i32 %104, ptr @zz_size, align 4, !tbaa !10
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %111 = tail call ptr @GetMemory(i32 noundef %104, ptr noundef %110) #5
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  br label %116

112:                                              ; preds = %99
  store ptr %107, ptr @zz_hold, align 8, !tbaa !8
  %113 = load ptr, ptr %107, align 8, !tbaa !5
  %114 = zext i8 %103 to i64
  %115 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %114
  store ptr %113, ptr %115, align 8, !tbaa !8
  br label %116

116:                                              ; preds = %109, %112
  %117 = phi ptr [ %111, %109 ], [ %107, %112 ]
  %118 = getelementptr inbounds %struct.word_type, ptr %117, i64 0, i32 1
  store i8 1, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %117, i64 0, i64 1
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %117, i64 0, i64 1, i32 1
  store ptr %117, ptr %120, align 8, !tbaa !5
  store ptr %117, ptr %119, align 8, !tbaa !5
  %121 = getelementptr inbounds %struct.LIST, ptr %117, i64 0, i32 1
  store ptr %117, ptr %121, align 8, !tbaa !5
  store ptr %117, ptr %117, align 8, !tbaa !5
  %122 = getelementptr inbounds i8, ptr %117, i64 41
  store i8 1, ptr %122, align 1, !tbaa !5
  %123 = getelementptr inbounds i8, ptr %117, i64 42
  store i8 0, ptr %123, align 2, !tbaa !5
  %124 = getelementptr inbounds %struct.gapobj_type, ptr %117, i64 0, i32 3
  %125 = load i16, ptr %124, align 4
  %126 = and i16 %125, 127
  %127 = or disjoint i16 %126, -12800
  store i16 %127, ptr %124, align 4
  %128 = getelementptr inbounds %struct.gapobj_type, ptr %117, i64 0, i32 3, i32 1
  store i16 4096, ptr %128, align 2, !tbaa !5
  %129 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #5
  %130 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %131 = zext i8 %130 to i32
  store i32 %131, ptr @zz_size, align 4, !tbaa !10
  %132 = zext i8 %130 to i64
  %133 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %116
  %137 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %138 = tail call ptr @GetMemory(i32 noundef %131, ptr noundef %137) #5
  br label %143

139:                                              ; preds = %116
  store ptr %134, ptr @zz_hold, align 8, !tbaa !8
  %140 = load ptr, ptr %134, align 8, !tbaa !5
  %141 = zext i8 %130 to i64
  %142 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %141
  store ptr %140, ptr %142, align 8, !tbaa !8
  br label %143

143:                                              ; preds = %136, %139
  %144 = phi ptr [ %138, %136 ], [ %134, %139 ]
  %145 = getelementptr inbounds %struct.word_type, ptr %144, i64 0, i32 1
  store i8 0, ptr %145, align 8, !tbaa !5
  %146 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1, i32 1
  store ptr %144, ptr %146, align 8, !tbaa !5
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %144, i64 0, i64 1
  store ptr %144, ptr %147, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  store ptr %144, ptr %148, align 8, !tbaa !5
  store ptr %144, ptr %144, align 8, !tbaa !5
  store ptr %144, ptr @xx_link, align 8, !tbaa !8
  store ptr %144, ptr @zz_res, align 8, !tbaa !8
  store ptr %117, ptr @zz_hold, align 8, !tbaa !8
  %149 = load ptr, ptr %117, align 8, !tbaa !5
  store ptr %149, ptr @zz_tmp, align 8, !tbaa !8
  %150 = load ptr, ptr %144, align 8, !tbaa !5
  store ptr %150, ptr %117, align 8, !tbaa !5
  %151 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %152 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.LIST, ptr %153, i64 0, i32 1
  store ptr %151, ptr %154, align 8, !tbaa !5
  %155 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %155, ptr %152, align 8, !tbaa !5
  %156 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %157 = getelementptr inbounds %struct.LIST, ptr %155, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !5
  %158 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %158, ptr @zz_res, align 8, !tbaa !8
  store ptr %129, ptr @zz_hold, align 8, !tbaa !8
  %159 = icmp eq ptr %129, null
  %160 = icmp eq ptr %158, null
  %161 = select i1 %159, i1 true, i1 %160
  br i1 %161, label %169, label %162

162:                                              ; preds = %143
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %164, ptr @zz_tmp, align 8, !tbaa !8
  %165 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  store ptr %166, ptr %163, align 8, !tbaa !5
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1, i32 1
  store ptr %129, ptr %167, align 8, !tbaa !5
  store ptr %164, ptr %165, align 8, !tbaa !5
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %164, i64 0, i64 1, i32 1
  store ptr %158, ptr %168, align 8, !tbaa !5
  br label %169

169:                                              ; preds = %143, %162
  %170 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %171 = zext i8 %170 to i32
  store i32 %171, ptr @zz_size, align 4, !tbaa !10
  %172 = zext i8 %170 to i64
  %173 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %178 = tail call ptr @GetMemory(i32 noundef %171, ptr noundef %177) #5
  br label %183

179:                                              ; preds = %169
  store ptr %174, ptr @zz_hold, align 8, !tbaa !8
  %180 = load ptr, ptr %174, align 8, !tbaa !5
  %181 = zext i8 %170 to i64
  %182 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %181
  store ptr %180, ptr %182, align 8, !tbaa !8
  br label %183

183:                                              ; preds = %176, %179
  %184 = phi ptr [ %178, %176 ], [ %174, %179 ]
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
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %189 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %189, ptr @zz_tmp, align 8, !tbaa !8
  %190 = load ptr, ptr %184, align 8, !tbaa !5
  store ptr %190, ptr %0, align 8, !tbaa !5
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
  store ptr %117, ptr @zz_hold, align 8, !tbaa !8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %183
  %201 = load ptr, ptr %119, align 8, !tbaa !5
  store ptr %201, ptr @zz_tmp, align 8, !tbaa !8
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  store ptr %203, ptr %119, align 8, !tbaa !5
  %204 = getelementptr inbounds [2 x %struct.LIST], ptr %203, i64 0, i64 1, i32 1
  store ptr %117, ptr %204, align 8, !tbaa !5
  store ptr %201, ptr %202, align 8, !tbaa !5
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1, i32 1
  store ptr %198, ptr %205, align 8, !tbaa !5
  br label %206

206:                                              ; preds = %183, %200
  %207 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #5
  %208 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 3
  %209 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %208, i8 0, i64 16, i1 false)
  store i32 536870912, ptr %209, align 8
  %210 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  store i32 %211, ptr @zz_size, align 4, !tbaa !10
  %212 = zext i8 %210 to i64
  %213 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %206
  %217 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %218 = tail call ptr @GetMemory(i32 noundef %211, ptr noundef %217) #5
  br label %221

219:                                              ; preds = %206
  store ptr %214, ptr @zz_hold, align 8, !tbaa !8
  %220 = load ptr, ptr %214, align 8, !tbaa !5
  store ptr %220, ptr %213, align 8, !tbaa !8
  br label %221

221:                                              ; preds = %216, %219
  %222 = phi ptr [ %218, %216 ], [ %214, %219 ]
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
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %227 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %227, ptr @zz_tmp, align 8, !tbaa !8
  %228 = load ptr, ptr %222, align 8, !tbaa !5
  store ptr %228, ptr %0, align 8, !tbaa !5
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
  store ptr %207, ptr @zz_hold, align 8, !tbaa !8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %245, label %238

238:                                              ; preds = %221
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %240, ptr @zz_tmp, align 8, !tbaa !8
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  store ptr %242, ptr %239, align 8, !tbaa !5
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1, i32 1
  store ptr %207, ptr %243, align 8, !tbaa !5
  store ptr %240, ptr %241, align 8, !tbaa !5
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1, i32 1
  store ptr %236, ptr %244, align 8, !tbaa !5
  br label %245

245:                                              ; preds = %221, %238
  %246 = icmp eq i32 %5, 0
  br i1 %246, label %370, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  %250 = icmp eq ptr %249, %0
  br i1 %250, label %269, label %251

251:                                              ; preds = %247, %265
  %252 = phi ptr [ %267, %265 ], [ %249, %247 ]
  br label %253

253:                                              ; preds = %251, %253
  %254 = phi ptr [ %256, %253 ], [ %252, %251 ]
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %254, i64 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !5
  %257 = getelementptr inbounds %struct.word_type, ptr %256, i64 0, i32 1
  %258 = load i8, ptr %257, align 8, !tbaa !5
  switch i8 %258, label %262 [
    i8 0, label %253
    i8 1, label %265
    i8 9, label %259
  ]

259:                                              ; preds = %253
  %260 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %256) #5
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %273

262:                                              ; preds = %253
  %263 = add i8 %258, -9
  %264 = icmp ult i8 %263, 91
  br i1 %264, label %273, label %265

265:                                              ; preds = %253, %262, %259
  %266 = getelementptr inbounds %struct.LIST, ptr %252, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  %268 = icmp eq ptr %267, %0
  br i1 %268, label %269, label %251

269:                                              ; preds = %265, %247
  %270 = phi ptr [ undef, %247 ], [ %256, %265 ]
  %271 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %272 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %271, ptr noundef nonnull @.str.7) #5
  br label %273

273:                                              ; preds = %259, %262, %269
  %274 = phi ptr [ %0, %269 ], [ %252, %262 ], [ %252, %259 ]
  %275 = phi ptr [ %270, %269 ], [ %256, %262 ], [ %256, %259 ]
  %276 = getelementptr inbounds %struct.word_type, ptr %275, i64 0, i32 3
  %277 = load i32, ptr %276, align 8, !tbaa !5
  %278 = getelementptr inbounds %struct.word_type, ptr %275, i64 0, i32 3, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !5
  %280 = add nsw i32 %279, %277
  %281 = getelementptr inbounds %struct.LIST, ptr %274, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  %283 = icmp eq ptr %282, %0
  br i1 %283, label %370, label %284

284:                                              ; preds = %273, %304
  %285 = phi ptr [ %307, %304 ], [ %282, %273 ]
  %286 = phi ptr [ %305, %304 ], [ null, %273 ]
  br label %287

287:                                              ; preds = %284, %287
  %288 = phi ptr [ %290, %287 ], [ %285, %284 ]
  %289 = getelementptr inbounds [2 x %struct.LIST], ptr %288, i64 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds %struct.word_type, ptr %290, i64 0, i32 1
  %292 = load i8, ptr %291, align 8, !tbaa !5
  switch i8 %292, label %296 [
    i8 0, label %287
    i8 1, label %304
    i8 9, label %293
  ]

293:                                              ; preds = %287
  %294 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %290) #5
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %299

296:                                              ; preds = %287
  %297 = add i8 %292, -9
  %298 = icmp ult i8 %297, 91
  br i1 %298, label %299, label %304

299:                                              ; preds = %296, %293
  %300 = icmp eq ptr %286, null
  br i1 %300, label %301, label %309

301:                                              ; preds = %299
  %302 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %303 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %302, ptr noundef nonnull @.str.8) #5
  br label %309

304:                                              ; preds = %287, %296, %293
  %305 = phi ptr [ %286, %293 ], [ %286, %296 ], [ %290, %287 ]
  %306 = getelementptr inbounds %struct.LIST, ptr %285, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !5
  %308 = icmp eq ptr %307, %0
  br i1 %308, label %370, label %284

309:                                              ; preds = %299, %301
  %310 = icmp eq ptr %285, %0
  br i1 %310, label %370, label %311

311:                                              ; preds = %309, %368
  %312 = phi ptr [ %345, %368 ], [ %286, %309 ]
  %313 = phi i32 [ %339, %368 ], [ %280, %309 ]
  %314 = phi i32 [ %330, %368 ], [ %280, %309 ]
  %315 = phi ptr [ %317, %368 ], [ %275, %309 ]
  %316 = phi ptr [ %344, %368 ], [ %285, %309 ]
  %317 = phi ptr [ %349, %368 ], [ %290, %309 ]
  %318 = getelementptr inbounds %struct.word_type, ptr %315, i64 0, i32 3, i32 1
  %319 = load i32, ptr %318, align 8, !tbaa !5
  %320 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 3
  %321 = load i32, ptr %320, align 8, !tbaa !5
  %322 = getelementptr inbounds %struct.word_type, ptr %317, i64 0, i32 3, i32 1
  %323 = load i32, ptr %322, align 8, !tbaa !5
  %324 = getelementptr inbounds %struct.gapobj_type, ptr %312, i64 0, i32 3
  %325 = tail call i32 @MinGap(i32 noundef %319, i32 noundef %321, i32 noundef %323, ptr noundef nonnull %324) #5
  %326 = load i32, ptr %318, align 8, !tbaa !5
  %327 = load i32, ptr %320, align 8, !tbaa !5
  %328 = add i32 %325, %314
  %329 = sub i32 %328, %326
  %330 = add i32 %329, %327
  %331 = icmp slt i32 %330, %313
  br i1 %331, label %332, label %338

332:                                              ; preds = %311
  %333 = load i16, ptr %324, align 4
  %334 = and i16 %333, 7168
  %335 = icmp eq i16 %334, 1024
  br i1 %335, label %336, label %338

336:                                              ; preds = %332
  %337 = or i16 %333, 128
  store i16 %337, ptr %324, align 4
  br label %338

338:                                              ; preds = %311, %332, %336
  %339 = phi i32 [ %313, %336 ], [ %313, %332 ], [ %330, %311 ]
  %340 = getelementptr inbounds %struct.LIST, ptr %316, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !5
  %342 = icmp eq ptr %341, %0
  br i1 %342, label %370, label %343

343:                                              ; preds = %338, %363
  %344 = phi ptr [ %366, %363 ], [ %341, %338 ]
  %345 = phi ptr [ %364, %363 ], [ null, %338 ]
  br label %346

346:                                              ; preds = %343, %346
  %347 = phi ptr [ %349, %346 ], [ %344, %343 ]
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %347, i64 0, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !5
  %350 = getelementptr inbounds %struct.word_type, ptr %349, i64 0, i32 1
  %351 = load i8, ptr %350, align 8, !tbaa !5
  switch i8 %351, label %355 [
    i8 0, label %346
    i8 1, label %363
    i8 9, label %352
  ]

352:                                              ; preds = %346
  %353 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %349) #5
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %363, label %358

355:                                              ; preds = %346
  %356 = add i8 %351, -9
  %357 = icmp ult i8 %356, 91
  br i1 %357, label %358, label %363

358:                                              ; preds = %355, %352
  %359 = icmp eq ptr %345, null
  br i1 %359, label %360, label %368

360:                                              ; preds = %358
  %361 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %362 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %361, ptr noundef nonnull @.str.8) #5
  br label %368

363:                                              ; preds = %346, %355, %352
  %364 = phi ptr [ %345, %352 ], [ %345, %355 ], [ %349, %346 ]
  %365 = getelementptr inbounds %struct.LIST, ptr %344, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !5
  %367 = icmp eq ptr %366, %0
  br i1 %367, label %370, label %343

368:                                              ; preds = %358, %360
  %369 = icmp eq ptr %344, %0
  br i1 %369, label %370, label %311

370:                                              ; preds = %304, %338, %368, %363, %273, %309, %245
  %371 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %372 = load i8, ptr %371, align 4
  %373 = and i8 %372, 3
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 14, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %8) #5
  br label %377

377:                                              ; preds = %375, %370
  %378 = getelementptr inbounds %struct.LIST, ptr %2, i64 0, i32 1
  %379 = icmp ne i32 %4, 0
  br label %380

380:                                              ; preds = %1381, %377
  %381 = phi i32 [ undef, %377 ], [ %664, %1381 ]
  %382 = phi i32 [ undef, %377 ], [ %665, %1381 ]
  %383 = phi i8 [ undef, %377 ], [ %666, %1381 ]
  %384 = phi i32 [ undef, %377 ], [ %668, %1381 ]
  %385 = phi i32 [ undef, %377 ], [ %669, %1381 ]
  %386 = phi i32 [ undef, %377 ], [ %670, %1381 ]
  %387 = phi ptr [ undef, %377 ], [ %671, %1381 ]
  %388 = phi i32 [ %101, %377 ], [ %675, %1381 ]
  %389 = phi i1 [ true, %377 ], [ false, %1381 ]
  %390 = phi ptr [ undef, %377 ], [ %677, %1381 ]
  %391 = phi ptr [ undef, %377 ], [ %679, %1381 ]
  %392 = phi i32 [ %3, %377 ], [ 0, %1381 ]
  %393 = phi ptr [ %0, %377 ], [ %1382, %1381 ]
  %394 = getelementptr inbounds %struct.LIST, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !5
  %396 = icmp eq ptr %395, %393
  br i1 %396, label %648, label %397

397:                                              ; preds = %380, %411
  %398 = phi ptr [ %413, %411 ], [ %395, %380 ]
  br label %399

399:                                              ; preds = %397, %399
  %400 = phi ptr [ %402, %399 ], [ %398, %397 ]
  %401 = getelementptr inbounds [2 x %struct.LIST], ptr %400, i64 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !5
  %403 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 1
  %404 = load i8, ptr %403, align 8, !tbaa !5
  switch i8 %404, label %408 [
    i8 0, label %399
    i8 1, label %411
    i8 9, label %405
  ]

405:                                              ; preds = %399
  %406 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %402) #5
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %411, label %415

408:                                              ; preds = %399
  %409 = add i8 %404, -9
  %410 = icmp ult i8 %409, 91
  br i1 %410, label %415, label %411

411:                                              ; preds = %399, %408, %405
  %412 = getelementptr inbounds %struct.LIST, ptr %398, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !5
  %414 = icmp eq ptr %413, %393
  br i1 %414, label %648, label %397

415:                                              ; preds = %408, %405
  %416 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 1
  br i1 %15, label %426, label %417

417:                                              ; preds = %415
  %418 = load ptr, ptr %378, align 8, !tbaa !5
  br label %419

419:                                              ; preds = %419, %417
  %420 = phi ptr [ %418, %417 ], [ %422, %419 ]
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %420, i64 0, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !5
  %423 = getelementptr inbounds %struct.word_type, ptr %422, i64 0, i32 1
  %424 = load i8, ptr %423, align 8, !tbaa !5
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %419, label %426

426:                                              ; preds = %419, %415
  %427 = phi ptr [ null, %415 ], [ %422, %419 ]
  %428 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 3
  %429 = load i32, ptr %428, align 8, !tbaa !5
  %430 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 3, i32 1
  %431 = load i32, ptr %430, align 8, !tbaa !5
  br label %432

432:                                              ; preds = %432, %426
  %433 = phi ptr [ %398, %426 ], [ %435, %432 ]
  %434 = getelementptr inbounds [2 x %struct.LIST], ptr %433, i64 0, i64 1
  %435 = load ptr, ptr %434, align 8, !tbaa !5
  %436 = getelementptr inbounds %struct.word_type, ptr %435, i64 0, i32 1
  %437 = load i8, ptr %436, align 8, !tbaa !5
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %432, label %439

439:                                              ; preds = %432
  %440 = add nsw i32 %431, %429
  %441 = getelementptr inbounds %struct.LIST, ptr %398, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !5
  %443 = icmp eq ptr %442, %393
  br i1 %443, label %604, label %444

444:                                              ; preds = %439, %464
  %445 = phi ptr [ %467, %464 ], [ %442, %439 ]
  %446 = phi ptr [ %465, %464 ], [ null, %439 ]
  br label %447

447:                                              ; preds = %444, %447
  %448 = phi ptr [ %450, %447 ], [ %445, %444 ]
  %449 = getelementptr inbounds [2 x %struct.LIST], ptr %448, i64 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !5
  %451 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 1
  %452 = load i8, ptr %451, align 8, !tbaa !5
  switch i8 %452, label %456 [
    i8 0, label %447
    i8 1, label %464
    i8 9, label %453
  ]

453:                                              ; preds = %447
  %454 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %450) #5
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %464, label %459

456:                                              ; preds = %447
  %457 = add i8 %452, -9
  %458 = icmp ult i8 %457, 91
  br i1 %458, label %459, label %464

459:                                              ; preds = %456, %453
  %460 = icmp eq ptr %446, null
  br i1 %460, label %461, label %469

461:                                              ; preds = %459
  %462 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %463 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %462, ptr noundef nonnull @.str.8) #5
  br label %469

464:                                              ; preds = %447, %456, %453
  %465 = phi ptr [ %446, %453 ], [ %446, %456 ], [ %450, %447 ]
  %466 = getelementptr inbounds %struct.LIST, ptr %445, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !5
  %468 = icmp eq ptr %467, %393
  br i1 %468, label %604, label %444

469:                                              ; preds = %461, %459
  %470 = getelementptr inbounds [2 x %struct.LIST], ptr %446, i64 0, i64 1
  %471 = getelementptr inbounds [2 x %struct.LIST], ptr %446, i64 0, i64 1, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !5
  %473 = load ptr, ptr %470, align 8, !tbaa !5
  %474 = icmp eq ptr %472, %473
  br i1 %474, label %478, label %475

475:                                              ; preds = %469
  %476 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %477 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %476, ptr noundef nonnull @.str.10) #5
  br label %478

478:                                              ; preds = %475, %469
  %479 = icmp eq ptr %427, null
  br i1 %479, label %483, label %480

480:                                              ; preds = %478
  %481 = getelementptr inbounds %struct.closure_type, ptr %427, i64 0, i32 4, i32 0, i32 1
  %482 = load i32, ptr %481, align 4, !tbaa !5
  br label %483

483:                                              ; preds = %480, %478
  %484 = phi i32 [ %482, %480 ], [ %388, %478 ]
  %485 = getelementptr inbounds %struct.gapobj_type, ptr %446, i64 0, i32 3
  %486 = load i16, ptr %485, align 4
  %487 = and i16 %486, -8192
  %488 = icmp eq i16 %487, -16384
  br i1 %488, label %489, label %497

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 3
  %491 = load i32, ptr %490, align 8, !tbaa !5
  %492 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 3, i32 1
  %493 = load i32, ptr %492, align 8, !tbaa !5
  %494 = tail call i32 @ActualGap(i32 noundef 0, i32 noundef %491, i32 noundef %493, ptr noundef nonnull %485, i32 noundef %484, i32 noundef 0) #5
  %495 = load i32, ptr %490, align 8, !tbaa !5
  %496 = sub nsw i32 %494, %495
  br label %509

497:                                              ; preds = %483
  %498 = load i32, ptr %430, align 8, !tbaa !5
  %499 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 3
  %500 = load i32, ptr %499, align 8, !tbaa !5
  %501 = getelementptr inbounds %struct.word_type, ptr %450, i64 0, i32 3, i32 1
  %502 = load i32, ptr %501, align 8, !tbaa !5
  %503 = sub nsw i32 %440, %498
  %504 = tail call i32 @ActualGap(i32 noundef %498, i32 noundef %500, i32 noundef %502, ptr noundef nonnull %485, i32 noundef %484, i32 noundef %503) #5
  %505 = load i32, ptr %499, align 8, !tbaa !5
  %506 = load i32, ptr %430, align 8, !tbaa !5
  %507 = add i32 %505, %506
  %508 = sub i32 %504, %507
  br label %509

509:                                              ; preds = %497, %489
  %510 = phi i32 [ %496, %489 ], [ %508, %497 ]
  %511 = trunc i32 %510 to i16
  %512 = getelementptr inbounds %struct.gapobj_type, ptr %446, i64 0, i32 5
  store i16 %511, ptr %512, align 4
  %513 = load i16, ptr %485, align 4
  %514 = lshr i16 %513, 13
  switch i16 %514, label %596 [
    i16 2, label %515
    i16 7, label %515
  ]

515:                                              ; preds = %509, %509
  br i1 %389, label %600, label %516

516:                                              ; preds = %515
  %517 = load i8, ptr %416, align 8, !tbaa !5
  %518 = add i8 %517, -11
  %519 = icmp ult i8 %518, 2
  br i1 %519, label %520, label %600

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 4
  %522 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %521) #6
  %523 = add i64 %522, -1
  %524 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 4, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !5
  %526 = icmp eq i8 %525, 45
  br i1 %526, label %600, label %527

527:                                              ; preds = %520
  %528 = load ptr, ptr @FillObject.hyph_word, align 8, !tbaa !8
  %529 = icmp eq ptr %528, null
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.word_type, ptr %528, i64 0, i32 2
  %532 = load i32, ptr %531, align 8
  br label %560

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1
  %535 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.11, ptr noundef nonnull %534) #5
  store ptr %535, ptr @FillObject.hyph_word, align 8, !tbaa !8
  %536 = getelementptr inbounds %struct.word_type, ptr %535, i64 0, i32 2
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, -4096
  store i32 %538, ptr %536, align 8
  %539 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 4
  %540 = load i32, ptr %539, align 4
  %541 = and i32 %540, 4190208
  %542 = and i32 %537, -4194304
  %543 = or disjoint i32 %541, %542
  store i32 %543, ptr %536, align 8
  %544 = load i32, ptr %539, align 4
  %545 = and i32 %544, 4194304
  %546 = and i32 %543, -4198400
  %547 = or disjoint i32 %546, %545
  store i32 %547, ptr %536, align 8
  %548 = load i32, ptr %539, align 4
  %549 = lshr i32 %548, 1
  %550 = and i32 %549, 528482304
  %551 = and i32 %547, -528486400
  %552 = or disjoint i32 %550, %551
  store i32 %552, ptr %536, align 8
  %553 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 1
  %554 = load i8, ptr %553, align 4
  %555 = and i8 %554, 3
  %556 = icmp eq i8 %555, 2
  %557 = select i1 %556, i32 -2147483648, i32 0
  %558 = and i32 %552, 2147479552
  %559 = or disjoint i32 %557, %558
  store i32 %559, ptr %536, align 8
  br label %560

560:                                              ; preds = %530, %533
  %561 = phi i32 [ %559, %533 ], [ %532, %530 ]
  %562 = phi ptr [ %535, %533 ], [ %528, %530 ]
  %563 = and i32 %561, 4095
  %564 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 4
  %565 = load i32, ptr %564, align 4
  %566 = and i32 %565, 4095
  %567 = icmp eq i32 %563, %566
  br i1 %567, label %586, label %568

568:                                              ; preds = %560
  %569 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 2
  %570 = and i32 %561, -4096
  %571 = or disjoint i32 %566, %570
  store i32 %571, ptr %569, align 8
  %572 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1, i32 0, i32 2
  %573 = load i16, ptr %572, align 2, !tbaa !5
  %574 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 1, i32 0, i32 2
  store i16 %573, ptr %574, align 2, !tbaa !5
  %575 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1, i32 0, i32 3
  %576 = load i32, ptr %575, align 4
  %577 = and i32 %576, 1048575
  %578 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 1, i32 0, i32 3
  %579 = load i32, ptr %578, align 4
  %580 = and i32 %579, -1048576
  %581 = or disjoint i32 %580, %577
  store i32 %581, ptr %578, align 4
  %582 = load i32, ptr %575, align 4
  %583 = and i32 %582, -1048576
  %584 = or disjoint i32 %583, %577
  store i32 %584, ptr %578, align 4
  tail call void @FontWordSize(ptr noundef nonnull %562) #5
  %585 = load ptr, ptr @FillObject.hyph_word, align 8, !tbaa !8
  br label %586

586:                                              ; preds = %568, %560
  %587 = phi ptr [ %585, %568 ], [ %562, %560 ]
  %588 = load i16, ptr %485, align 4
  %589 = or i16 %588, -8192
  store i16 %589, ptr %485, align 4
  %590 = getelementptr inbounds %struct.word_type, ptr %587, i64 0, i32 3
  %591 = load i32, ptr %590, align 8, !tbaa !5
  %592 = getelementptr inbounds %struct.word_type, ptr %587, i64 0, i32 3, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !5
  %594 = add i32 %591, %440
  %595 = add i32 %594, %593
  br label %600

596:                                              ; preds = %509
  %597 = lshr i16 %513, 7
  %598 = and i16 %597, 1
  %599 = zext nneg i16 %598 to i32
  br label %600

600:                                              ; preds = %596, %516, %515, %586, %520
  %601 = phi i32 [ %440, %520 ], [ %595, %586 ], [ %440, %516 ], [ %440, %515 ], [ %440, %596 ]
  %602 = phi i32 [ 0, %520 ], [ 0, %586 ], [ 0, %516 ], [ 1, %515 ], [ %599, %596 ]
  %603 = load ptr, ptr %471, align 8, !tbaa !5
  br label %604

604:                                              ; preds = %464, %439, %600
  %605 = phi ptr [ %446, %600 ], [ null, %439 ], [ %465, %464 ]
  %606 = phi i32 [ %601, %600 ], [ %440, %439 ], [ %440, %464 ]
  %607 = phi ptr [ %603, %600 ], [ %393, %439 ], [ %393, %464 ]
  %608 = phi i32 [ %484, %600 ], [ %388, %439 ], [ %388, %464 ]
  %609 = phi i32 [ %602, %600 ], [ 0, %439 ], [ 0, %464 ]
  %610 = icmp eq ptr %427, null
  br i1 %610, label %614, label %611

611:                                              ; preds = %604
  %612 = getelementptr inbounds %struct.closure_type, ptr %427, i64 0, i32 4, i32 0, i32 1
  %613 = load i32, ptr %612, align 4, !tbaa !5
  br label %614

614:                                              ; preds = %604, %611
  %615 = phi i32 [ %613, %611 ], [ %100, %604 ]
  %616 = icmp slt i32 %615, 1
  br i1 %616, label %635, label %617

617:                                              ; preds = %614
  %618 = sub nsw i32 %615, %606
  %619 = icmp sgt i32 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %617
  %621 = shl nsw i32 %618, 9
  %622 = udiv i32 %621, %615
  %623 = mul nsw i32 %622, %622
  br label %630

624:                                              ; preds = %617
  %625 = icmp sgt i32 %606, %615
  br i1 %625, label %630, label %626

626:                                              ; preds = %624
  %627 = shl nsw i32 %618, 7
  %628 = sdiv i32 %627, %615
  %629 = mul nsw i32 %628, %628
  br label %630

630:                                              ; preds = %620, %626, %624
  %631 = phi i8 [ 3, %624 ], [ 1, %626 ], [ 0, %620 ]
  %632 = phi i32 [ 1048576, %624 ], [ %629, %626 ], [ %623, %620 ]
  %633 = icmp eq i32 %609, 0
  %634 = select i1 %633, i8 %631, i8 7
  br label %648

635:                                              ; preds = %614
  %636 = icmp eq i32 %606, 0
  %637 = select i1 %636, i8 0, i8 2
  %638 = select i1 %636, i32 0, i32 1048576
  %639 = icmp ne i32 %609, 0
  %640 = select i1 %639, i1 true, i1 %636
  %641 = select i1 %639, i8 7, i8 %637
  br i1 %640, label %648, label %642

642:                                              ; preds = %635
  %643 = getelementptr inbounds %struct.gapobj_type, ptr %605, i64 0, i32 3
  %644 = load i16, ptr %643, align 4
  %645 = and i16 %644, -8192
  %646 = icmp eq i16 %645, -16384
  %647 = select i1 %646, i8 3, i8 2
  br label %648

648:                                              ; preds = %411, %380, %630, %642, %635
  %649 = phi i8 [ 0, %635 ], [ 0, %642 ], [ 0, %630 ], [ %383, %380 ], [ %383, %411 ]
  %650 = phi i8 [ %641, %635 ], [ %647, %642 ], [ %634, %630 ], [ 5, %380 ], [ 5, %411 ]
  %651 = phi i32 [ %638, %635 ], [ 1048576, %642 ], [ %632, %630 ], [ %384, %380 ], [ %384, %411 ]
  %652 = phi i32 [ 0, %635 ], [ 0, %642 ], [ 0, %630 ], [ %385, %380 ], [ %385, %411 ]
  %653 = phi i32 [ %606, %635 ], [ %606, %642 ], [ %606, %630 ], [ %386, %380 ], [ %386, %411 ]
  %654 = phi ptr [ %427, %635 ], [ %427, %642 ], [ %427, %630 ], [ %387, %380 ], [ %387, %411 ]
  %655 = phi ptr [ %607, %635 ], [ %607, %642 ], [ %607, %630 ], [ %393, %380 ], [ %393, %411 ]
  %656 = phi i32 [ %608, %635 ], [ %608, %642 ], [ %608, %630 ], [ %388, %380 ], [ %388, %411 ]
  %657 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1
  %658 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 4
  %659 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 1
  %660 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1, i32 0, i32 2
  %661 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1, i32 0, i32 3
  br label %662

662:                                              ; preds = %1085, %648
  %663 = phi i8 [ %650, %648 ], [ %1086, %1085 ]
  %664 = phi i32 [ %381, %648 ], [ %1087, %1085 ]
  %665 = phi i32 [ %382, %648 ], [ %1088, %1085 ]
  %666 = phi i8 [ %649, %648 ], [ %1089, %1085 ]
  %667 = phi i8 [ %650, %648 ], [ %1090, %1085 ]
  %668 = phi i32 [ %651, %648 ], [ %1091, %1085 ]
  %669 = phi i32 [ %652, %648 ], [ %1092, %1085 ]
  %670 = phi i32 [ %653, %648 ], [ %1093, %1085 ]
  %671 = phi ptr [ %654, %648 ], [ %1094, %1085 ]
  %672 = phi ptr [ %655, %648 ], [ %1095, %1085 ]
  %673 = phi ptr [ %393, %648 ], [ %1096, %1085 ]
  %674 = phi i32 [ %651, %648 ], [ %1097, %1085 ]
  %675 = phi i32 [ %656, %648 ], [ %1098, %1085 ]
  %676 = phi i8 [ %649, %648 ], [ %1099, %1085 ]
  %677 = phi ptr [ %390, %648 ], [ %1100, %1085 ]
  %678 = phi i32 [ %382, %648 ], [ %1101, %1085 ]
  %679 = phi ptr [ %391, %648 ], [ %1102, %1085 ]
  %680 = phi i32 [ %381, %648 ], [ %1103, %1085 ]
  %681 = phi ptr [ %393, %648 ], [ %1104, %1085 ]
  %682 = phi ptr [ %655, %648 ], [ %1105, %1085 ]
  %683 = phi ptr [ %654, %648 ], [ %1106, %1085 ]
  %684 = phi i32 [ %653, %648 ], [ %1107, %1085 ]
  %685 = phi i32 [ %652, %648 ], [ %1108, %1085 ]
  switch i8 %667, label %1374 [
    i8 5, label %1377
    i8 4, label %1112
    i8 6, label %1112
    i8 7, label %693
    i8 1, label %1109
    i8 2, label %1109
    i8 3, label %1109
    i8 8, label %688
    i8 0, label %686
  ]

686:                                              ; preds = %662
  %687 = icmp sgt i32 %674, %668
  br i1 %687, label %693, label %688

688:                                              ; preds = %686, %662
  %689 = icmp eq i8 %663, 5
  br i1 %689, label %690, label %693

690:                                              ; preds = %688
  %691 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %692 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %691, ptr noundef nonnull @.str.14) #5
  br label %693

693:                                              ; preds = %662, %686, %690, %688
  %694 = phi ptr [ %681, %690 ], [ %681, %688 ], [ %673, %686 ], [ %673, %662 ]
  %695 = phi ptr [ %682, %690 ], [ %682, %688 ], [ %672, %686 ], [ %672, %662 ]
  %696 = phi ptr [ %683, %690 ], [ %683, %688 ], [ %671, %686 ], [ %671, %662 ]
  %697 = phi i32 [ %684, %690 ], [ %684, %688 ], [ %670, %686 ], [ %670, %662 ]
  %698 = phi i32 [ %685, %690 ], [ %685, %688 ], [ %669, %686 ], [ %669, %662 ]
  %699 = phi i32 [ %674, %690 ], [ %674, %688 ], [ %668, %686 ], [ %668, %662 ]
  %700 = phi i8 [ %676, %690 ], [ %676, %688 ], [ %666, %686 ], [ %666, %662 ]
  %701 = phi i32 [ %678, %690 ], [ %678, %688 ], [ %665, %686 ], [ %665, %662 ]
  %702 = phi i32 [ %680, %690 ], [ %680, %688 ], [ %664, %686 ], [ %664, %662 ]
  %703 = icmp eq ptr %695, %393
  br i1 %703, label %1085, label %704

704:                                              ; preds = %693, %704
  %705 = phi ptr [ %707, %704 ], [ %695, %693 ]
  %706 = getelementptr inbounds [2 x %struct.LIST], ptr %705, i64 0, i64 1
  %707 = load ptr, ptr %706, align 8, !tbaa !5
  %708 = getelementptr inbounds %struct.word_type, ptr %707, i64 0, i32 1
  %709 = load i8, ptr %708, align 8, !tbaa !5
  switch i8 %709, label %710 [
    i8 0, label %704
    i8 1, label %713
  ]

710:                                              ; preds = %704
  %711 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %712 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %711, ptr noundef nonnull @.str.15) #5
  br label %713

713:                                              ; preds = %704, %710
  %714 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 4
  store i32 %699, ptr %714, align 8, !tbaa !5
  %715 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 7
  store ptr %694, ptr %715, align 8, !tbaa !5
  %716 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 8
  store ptr %696, ptr %716, align 8, !tbaa !5
  %717 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 3
  %718 = load i16, ptr %717, align 4
  %719 = icmp ugt i16 %718, -8193
  br i1 %719, label %720, label %729

720:                                              ; preds = %713
  %721 = load ptr, ptr @FillObject.hyph_word, align 8, !tbaa !8
  %722 = getelementptr inbounds %struct.word_type, ptr %721, i64 0, i32 3
  %723 = load i32, ptr %722, align 8, !tbaa !5
  %724 = getelementptr inbounds %struct.word_type, ptr %721, i64 0, i32 3, i32 1
  %725 = load i32, ptr %724, align 8, !tbaa !5
  %726 = add i32 %723, %725
  %727 = sub i32 %697, %726
  %728 = add nsw i32 %699, 16
  store i32 %728, ptr %714, align 8, !tbaa !5
  br label %729

729:                                              ; preds = %720, %713
  %730 = phi i32 [ %727, %720 ], [ %697, %713 ]
  %731 = getelementptr inbounds %struct.LIST, ptr %695, i64 0, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !5
  %733 = icmp eq ptr %732, %393
  br i1 %733, label %752, label %734

734:                                              ; preds = %729, %748
  %735 = phi ptr [ %750, %748 ], [ %732, %729 ]
  br label %736

736:                                              ; preds = %734, %736
  %737 = phi ptr [ %739, %736 ], [ %735, %734 ]
  %738 = getelementptr inbounds [2 x %struct.LIST], ptr %737, i64 0, i64 1
  %739 = load ptr, ptr %738, align 8, !tbaa !5
  %740 = getelementptr inbounds %struct.word_type, ptr %739, i64 0, i32 1
  %741 = load i8, ptr %740, align 8, !tbaa !5
  switch i8 %741, label %745 [
    i8 0, label %736
    i8 9, label %742
  ]

742:                                              ; preds = %736
  %743 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %739) #5
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %748, label %756

745:                                              ; preds = %736
  %746 = add i8 %741, -9
  %747 = icmp ult i8 %746, 91
  br i1 %747, label %756, label %748

748:                                              ; preds = %742, %745
  %749 = getelementptr inbounds %struct.LIST, ptr %735, i64 0, i32 1
  %750 = load ptr, ptr %749, align 8, !tbaa !5
  %751 = icmp eq ptr %750, %393
  br i1 %751, label %752, label %734

752:                                              ; preds = %748, %729
  %753 = phi ptr [ %677, %729 ], [ %739, %748 ]
  %754 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %755 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %754, ptr noundef nonnull @.str.16) #5
  br label %756

756:                                              ; preds = %742, %745, %752
  %757 = phi ptr [ %393, %752 ], [ %735, %745 ], [ %735, %742 ]
  %758 = phi ptr [ %753, %752 ], [ %739, %745 ], [ %739, %742 ]
  %759 = load i16, ptr %717, align 4
  %760 = and i16 %759, -8192
  %761 = icmp eq i16 %760, -16384
  br i1 %761, label %762, label %773

762:                                              ; preds = %756
  %763 = add i8 %700, 1
  %764 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 5
  %765 = load i16, ptr %764, align 4, !tbaa !5
  %766 = sext i16 %765 to i32
  %767 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 3
  %768 = load i32, ptr %767, align 8, !tbaa !5
  %769 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 3, i32 1
  %770 = load i32, ptr %769, align 8, !tbaa !5
  %771 = add i32 %768, %766
  %772 = add i32 %771, %770
  br label %785

773:                                              ; preds = %756
  %774 = getelementptr inbounds %struct.gapobj_type, ptr %707, i64 0, i32 5
  %775 = load i16, ptr %774, align 4, !tbaa !5
  %776 = sext i16 %775 to i32
  %777 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 3
  %778 = load i32, ptr %777, align 8, !tbaa !5
  %779 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 3, i32 1
  %780 = load i32, ptr %779, align 8, !tbaa !5
  %781 = add i32 %778, %730
  %782 = add i32 %781, %776
  %783 = add i32 %782, %780
  %784 = add nsw i32 %698, %776
  br label %785

785:                                              ; preds = %773, %762
  %786 = phi i32 [ %730, %762 ], [ %702, %773 ]
  %787 = phi i32 [ %766, %762 ], [ %701, %773 ]
  %788 = phi i8 [ %763, %762 ], [ %700, %773 ]
  %789 = phi i32 [ 0, %762 ], [ %784, %773 ]
  %790 = phi i32 [ %772, %762 ], [ %783, %773 ]
  br label %791

791:                                              ; preds = %791, %785
  %792 = phi ptr [ %757, %785 ], [ %794, %791 ]
  %793 = getelementptr inbounds [2 x %struct.LIST], ptr %792, i64 0, i64 1
  %794 = load ptr, ptr %793, align 8, !tbaa !5
  %795 = getelementptr inbounds %struct.word_type, ptr %794, i64 0, i32 1
  %796 = load i8, ptr %795, align 8, !tbaa !5
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %791, label %798

798:                                              ; preds = %791
  %799 = getelementptr inbounds %struct.LIST, ptr %757, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !5
  %801 = icmp eq ptr %800, %393
  br i1 %801, label %958, label %802

802:                                              ; preds = %798, %822
  %803 = phi ptr [ %825, %822 ], [ %800, %798 ]
  %804 = phi ptr [ %823, %822 ], [ null, %798 ]
  br label %805

805:                                              ; preds = %802, %805
  %806 = phi ptr [ %808, %805 ], [ %803, %802 ]
  %807 = getelementptr inbounds [2 x %struct.LIST], ptr %806, i64 0, i64 1
  %808 = load ptr, ptr %807, align 8, !tbaa !5
  %809 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 1
  %810 = load i8, ptr %809, align 8, !tbaa !5
  switch i8 %810, label %814 [
    i8 0, label %805
    i8 1, label %822
    i8 9, label %811
  ]

811:                                              ; preds = %805
  %812 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %808) #5
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %822, label %817

814:                                              ; preds = %805
  %815 = add i8 %810, -9
  %816 = icmp ult i8 %815, 91
  br i1 %816, label %817, label %822

817:                                              ; preds = %814, %811
  %818 = icmp eq ptr %804, null
  br i1 %818, label %819, label %827

819:                                              ; preds = %817
  %820 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %821 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %820, ptr noundef nonnull @.str.8) #5
  br label %827

822:                                              ; preds = %805, %814, %811
  %823 = phi ptr [ %804, %811 ], [ %804, %814 ], [ %808, %805 ]
  %824 = getelementptr inbounds %struct.LIST, ptr %803, i64 0, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !5
  %826 = icmp eq ptr %825, %393
  br i1 %826, label %958, label %802

827:                                              ; preds = %819, %817
  %828 = getelementptr inbounds [2 x %struct.LIST], ptr %804, i64 0, i64 1
  %829 = getelementptr inbounds [2 x %struct.LIST], ptr %804, i64 0, i64 1, i32 1
  %830 = load ptr, ptr %829, align 8, !tbaa !5
  %831 = load ptr, ptr %828, align 8, !tbaa !5
  %832 = icmp eq ptr %830, %831
  br i1 %832, label %836, label %833

833:                                              ; preds = %827
  %834 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %835 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %834, ptr noundef nonnull @.str.10) #5
  br label %836

836:                                              ; preds = %833, %827
  %837 = icmp eq ptr %696, null
  br i1 %837, label %841, label %838

838:                                              ; preds = %836
  %839 = getelementptr inbounds %struct.closure_type, ptr %696, i64 0, i32 4, i32 0, i32 1
  %840 = load i32, ptr %839, align 4, !tbaa !5
  br label %841

841:                                              ; preds = %838, %836
  %842 = phi i32 [ %840, %838 ], [ %675, %836 ]
  %843 = getelementptr inbounds %struct.gapobj_type, ptr %804, i64 0, i32 3
  %844 = load i16, ptr %843, align 4
  %845 = and i16 %844, -8192
  %846 = icmp eq i16 %845, -16384
  br i1 %846, label %847, label %855

847:                                              ; preds = %841
  %848 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 3
  %849 = load i32, ptr %848, align 8, !tbaa !5
  %850 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 3, i32 1
  %851 = load i32, ptr %850, align 8, !tbaa !5
  %852 = tail call i32 @ActualGap(i32 noundef 0, i32 noundef %849, i32 noundef %851, ptr noundef nonnull %843, i32 noundef %842, i32 noundef 0) #5
  %853 = load i32, ptr %848, align 8, !tbaa !5
  %854 = sub nsw i32 %852, %853
  br label %868

855:                                              ; preds = %841
  %856 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 3, i32 1
  %857 = load i32, ptr %856, align 8, !tbaa !5
  %858 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 3
  %859 = load i32, ptr %858, align 8, !tbaa !5
  %860 = getelementptr inbounds %struct.word_type, ptr %808, i64 0, i32 3, i32 1
  %861 = load i32, ptr %860, align 8, !tbaa !5
  %862 = sub nsw i32 %790, %857
  %863 = tail call i32 @ActualGap(i32 noundef %857, i32 noundef %859, i32 noundef %861, ptr noundef nonnull %843, i32 noundef %842, i32 noundef %862) #5
  %864 = load i32, ptr %858, align 8, !tbaa !5
  %865 = load i32, ptr %856, align 8, !tbaa !5
  %866 = add i32 %864, %865
  %867 = sub i32 %863, %866
  br label %868

868:                                              ; preds = %855, %847
  %869 = phi i32 [ %854, %847 ], [ %867, %855 ]
  %870 = trunc i32 %869 to i16
  %871 = getelementptr inbounds %struct.gapobj_type, ptr %804, i64 0, i32 5
  store i16 %870, ptr %871, align 4
  %872 = load i16, ptr %843, align 4
  %873 = lshr i16 %872, 13
  switch i16 %873, label %950 [
    i16 2, label %874
    i16 7, label %874
  ]

874:                                              ; preds = %868, %868
  br i1 %389, label %954, label %875

875:                                              ; preds = %874
  %876 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 1
  %877 = load i8, ptr %876, align 8, !tbaa !5
  %878 = add i8 %877, -11
  %879 = icmp ult i8 %878, 2
  br i1 %879, label %880, label %954

880:                                              ; preds = %875
  %881 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 4
  %882 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %881) #6
  %883 = add i64 %882, -1
  %884 = getelementptr inbounds %struct.word_type, ptr %758, i64 0, i32 4, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !5
  %886 = icmp eq i8 %885, 45
  br i1 %886, label %954, label %887

887:                                              ; preds = %880
  %888 = load ptr, ptr @FillObject.hyph_word, align 8, !tbaa !8
  %889 = icmp eq ptr %888, null
  br i1 %889, label %893, label %890

890:                                              ; preds = %887
  %891 = getelementptr inbounds %struct.word_type, ptr %888, i64 0, i32 2
  %892 = load i32, ptr %891, align 8
  br label %917

893:                                              ; preds = %887
  %894 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.11, ptr noundef nonnull %657) #5
  store ptr %894, ptr @FillObject.hyph_word, align 8, !tbaa !8
  %895 = getelementptr inbounds %struct.word_type, ptr %894, i64 0, i32 2
  %896 = load i32, ptr %895, align 8
  %897 = and i32 %896, -4096
  store i32 %897, ptr %895, align 8
  %898 = load i32, ptr %658, align 4
  %899 = and i32 %898, 4190208
  %900 = and i32 %896, -4194304
  %901 = or disjoint i32 %899, %900
  store i32 %901, ptr %895, align 8
  %902 = load i32, ptr %658, align 4
  %903 = and i32 %902, 4194304
  %904 = and i32 %901, -4198400
  %905 = or disjoint i32 %904, %903
  store i32 %905, ptr %895, align 8
  %906 = load i32, ptr %658, align 4
  %907 = lshr i32 %906, 1
  %908 = and i32 %907, 528482304
  %909 = and i32 %905, -528486400
  %910 = or disjoint i32 %908, %909
  store i32 %910, ptr %895, align 8
  %911 = load i8, ptr %659, align 4
  %912 = and i8 %911, 3
  %913 = icmp eq i8 %912, 2
  %914 = select i1 %913, i32 -2147483648, i32 0
  %915 = and i32 %910, 2147479552
  %916 = or disjoint i32 %914, %915
  store i32 %916, ptr %895, align 8
  br label %917

917:                                              ; preds = %890, %893
  %918 = phi i32 [ %916, %893 ], [ %892, %890 ]
  %919 = phi ptr [ %894, %893 ], [ %888, %890 ]
  %920 = and i32 %918, 4095
  %921 = load i32, ptr %658, align 4
  %922 = and i32 %921, 4095
  %923 = icmp eq i32 %920, %922
  br i1 %923, label %940, label %924

924:                                              ; preds = %917
  %925 = getelementptr inbounds %struct.word_type, ptr %919, i64 0, i32 2
  %926 = and i32 %918, -4096
  %927 = or disjoint i32 %922, %926
  store i32 %927, ptr %925, align 8
  %928 = load i16, ptr %660, align 2, !tbaa !5
  %929 = getelementptr inbounds %struct.word_type, ptr %919, i64 0, i32 1, i32 0, i32 2
  store i16 %928, ptr %929, align 2, !tbaa !5
  %930 = load i32, ptr %661, align 4
  %931 = and i32 %930, 1048575
  %932 = getelementptr inbounds %struct.word_type, ptr %919, i64 0, i32 1, i32 0, i32 3
  %933 = load i32, ptr %932, align 4
  %934 = and i32 %933, -1048576
  %935 = or disjoint i32 %934, %931
  store i32 %935, ptr %932, align 4
  %936 = load i32, ptr %661, align 4
  %937 = and i32 %936, -1048576
  %938 = or disjoint i32 %937, %931
  store i32 %938, ptr %932, align 4
  tail call void @FontWordSize(ptr noundef nonnull %919) #5
  %939 = load ptr, ptr @FillObject.hyph_word, align 8, !tbaa !8
  br label %940

940:                                              ; preds = %924, %917
  %941 = phi ptr [ %939, %924 ], [ %919, %917 ]
  %942 = load i16, ptr %843, align 4
  %943 = or i16 %942, -8192
  store i16 %943, ptr %843, align 4
  %944 = getelementptr inbounds %struct.word_type, ptr %941, i64 0, i32 3
  %945 = load i32, ptr %944, align 8, !tbaa !5
  %946 = getelementptr inbounds %struct.word_type, ptr %941, i64 0, i32 3, i32 1
  %947 = load i32, ptr %946, align 8, !tbaa !5
  %948 = add i32 %945, %790
  %949 = add i32 %948, %947
  br label %954

950:                                              ; preds = %868
  %951 = lshr i16 %872, 7
  %952 = and i16 %951, 1
  %953 = zext nneg i16 %952 to i32
  br label %954

954:                                              ; preds = %950, %875, %874, %940, %880
  %955 = phi i32 [ %790, %880 ], [ %949, %940 ], [ %790, %875 ], [ %790, %874 ], [ %790, %950 ]
  %956 = phi i32 [ 0, %880 ], [ 0, %940 ], [ 0, %875 ], [ 1, %874 ], [ %953, %950 ]
  %957 = load ptr, ptr %829, align 8, !tbaa !5
  br label %958

958:                                              ; preds = %822, %798, %954
  %959 = phi ptr [ %804, %954 ], [ null, %798 ], [ %823, %822 ]
  %960 = phi i32 [ %955, %954 ], [ %790, %798 ], [ %790, %822 ]
  %961 = phi ptr [ %957, %954 ], [ %393, %798 ], [ %393, %822 ]
  %962 = phi i32 [ %842, %954 ], [ %675, %798 ], [ %675, %822 ]
  %963 = phi i32 [ %956, %954 ], [ 0, %798 ], [ 0, %822 ]
  %964 = icmp eq ptr %694, %393
  %965 = icmp eq ptr %696, null
  br i1 %964, label %966, label %970

966:                                              ; preds = %958
  br i1 %965, label %986, label %967

967:                                              ; preds = %966
  %968 = getelementptr inbounds %struct.closure_type, ptr %696, i64 0, i32 4, i32 0, i32 1
  %969 = load i32, ptr %968, align 4, !tbaa !5
  br label %986

970:                                              ; preds = %958
  br i1 %965, label %974, label %971

971:                                              ; preds = %970
  %972 = getelementptr inbounds %struct.closure_type, ptr %696, i64 0, i32 4, i32 0, i32 1
  %973 = load i32, ptr %972, align 4, !tbaa !5
  br label %974

974:                                              ; preds = %970, %971
  %975 = phi i32 [ %973, %971 ], [ %962, %970 ]
  br label %976

976:                                              ; preds = %976, %974
  %977 = phi ptr [ %694, %974 ], [ %979, %976 ]
  %978 = getelementptr inbounds [2 x %struct.LIST], ptr %977, i64 0, i64 1
  %979 = load ptr, ptr %978, align 8, !tbaa !5
  %980 = getelementptr inbounds %struct.word_type, ptr %979, i64 0, i32 1
  %981 = load i8, ptr %980, align 8, !tbaa !5
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %976, label %983

983:                                              ; preds = %976
  %984 = getelementptr inbounds %struct.gapobj_type, ptr %979, i64 0, i32 4
  %985 = load i32, ptr %984, align 8, !tbaa !5
  br label %986

986:                                              ; preds = %967, %966, %983
  %987 = phi ptr [ %696, %983 ], [ null, %966 ], [ %696, %967 ]
  %988 = phi i32 [ %985, %983 ], [ 0, %966 ], [ 0, %967 ]
  %989 = phi i32 [ %975, %983 ], [ %100, %966 ], [ %969, %967 ]
  %990 = icmp ne i8 %788, 0
  br i1 %990, label %991, label %1020

991:                                              ; preds = %986
  %992 = getelementptr inbounds %struct.LIST, ptr %694, i64 0, i32 1
  %993 = load ptr, ptr %992, align 8, !tbaa !5
  %994 = getelementptr inbounds %struct.LIST, ptr %993, i64 0, i32 1
  %995 = load ptr, ptr %994, align 8, !tbaa !5
  %996 = getelementptr inbounds %struct.word_type, ptr %995, i64 0, i32 1
  %997 = load i8, ptr %996, align 8, !tbaa !5
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %1002, label %999

999:                                              ; preds = %991
  %1000 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1001 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1000, ptr noundef nonnull @.str.12) #5
  br label %1002

1002:                                             ; preds = %999, %991
  br label %1003

1003:                                             ; preds = %1002, %1003
  %1004 = phi ptr [ %1006, %1003 ], [ %995, %1002 ]
  %1005 = getelementptr inbounds [2 x %struct.LIST], ptr %1004, i64 0, i64 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !5
  %1007 = getelementptr inbounds %struct.word_type, ptr %1006, i64 0, i32 1
  %1008 = load i8, ptr %1007, align 8, !tbaa !5
  switch i8 %1008, label %1020 [
    i8 0, label %1003
    i8 1, label %1009
  ]

1009:                                             ; preds = %1003
  %1010 = getelementptr inbounds %struct.gapobj_type, ptr %1006, i64 0, i32 3
  %1011 = load i16, ptr %1010, align 4
  %1012 = and i16 %1011, -1024
  %1013 = icmp eq i16 %1012, -13312
  br i1 %1013, label %1014, label %1020

1014:                                             ; preds = %1009
  %1015 = getelementptr inbounds %struct.gapobj_type, ptr %1006, i64 0, i32 3, i32 1
  %1016 = load i16, ptr %1015, align 2, !tbaa !5
  %1017 = icmp eq i16 %1016, 4096
  %1018 = add nsw i32 %988, 128
  %1019 = select i1 %1017, i32 %1018, i32 %988
  br label %1020

1020:                                             ; preds = %1003, %1014, %1009, %986
  %1021 = phi i32 [ %988, %986 ], [ %988, %1009 ], [ %1019, %1014 ], [ %988, %1003 ]
  %1022 = icmp slt i32 %989, 1
  br i1 %1022, label %1023, label %1028

1023:                                             ; preds = %1020
  %1024 = icmp eq i32 %960, 0
  %1025 = add nsw i32 %1021, 1048576
  %1026 = select i1 %1024, i8 0, i8 2
  %1027 = select i1 %1024, i32 %1021, i32 %1025
  br label %1067

1028:                                             ; preds = %1020
  %1029 = icmp sgt i32 %786, %787
  %1030 = select i1 %990, i1 %1029, i1 false
  br i1 %1030, label %1031, label %1033

1031:                                             ; preds = %1028
  %1032 = add nsw i32 %1021, 1048576
  br label %1067

1033:                                             ; preds = %1028
  %1034 = sub nsw i32 %989, %960
  %1035 = shl nsw i32 %789, 1
  %1036 = icmp sgt i32 %1034, %1035
  br i1 %1036, label %1037, label %1043

1037:                                             ; preds = %1033
  %1038 = zext i1 %990 to i8
  %1039 = shl nsw i32 %1034, 9
  %1040 = sdiv i32 %1039, %989
  %1041 = mul nsw i32 %1040, %1040
  %1042 = add nsw i32 %1041, %1021
  br label %1067

1043:                                             ; preds = %1033
  %1044 = icmp sgt i32 %960, %989
  br i1 %1044, label %1050, label %1045

1045:                                             ; preds = %1043
  %1046 = shl nsw i32 %1034, 7
  %1047 = sdiv i32 %1046, %989
  %1048 = mul nsw i32 %1047, %1047
  %1049 = add nsw i32 %1048, %1021
  br label %1067

1050:                                             ; preds = %1043
  %1051 = load ptr, ptr @BackEnd, align 8, !tbaa !8
  %1052 = getelementptr inbounds %struct.back_end_rec, ptr %1051, i64 0, i32 7
  %1053 = load i32, ptr %1052, align 4, !tbaa !15
  %1054 = icmp ne i32 %1053, 0
  %1055 = and i1 %379, %1054
  br i1 %1055, label %1056, label %1065

1056:                                             ; preds = %1050
  %1057 = sub nsw i32 %960, %989
  %1058 = shl nsw i32 %1057, 2
  %1059 = icmp sgt i32 %1058, %789
  br i1 %1059, label %1065, label %1060

1060:                                             ; preds = %1056
  %1061 = shl nsw i32 %1034, 7
  %1062 = sdiv i32 %1061, %989
  %1063 = mul nsw i32 %1062, %1062
  %1064 = add nsw i32 %1063, %1021
  br label %1067

1065:                                             ; preds = %1056, %1050
  %1066 = add nsw i32 %1021, 1048576
  br label %1067

1067:                                             ; preds = %1023, %1031, %1045, %1065, %1060, %1037
  %1068 = phi i8 [ 4, %1031 ], [ %1038, %1037 ], [ 1, %1045 ], [ 2, %1060 ], [ 3, %1065 ], [ %1026, %1023 ]
  %1069 = phi i32 [ %1032, %1031 ], [ %1042, %1037 ], [ %1049, %1045 ], [ %1064, %1060 ], [ %1066, %1065 ], [ %1027, %1023 ]
  %1070 = icmp sgt i32 %1069, -1
  br i1 %1070, label %1074, label %1071

1071:                                             ; preds = %1067
  %1072 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1073 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1072, ptr noundef nonnull @.str.13) #5
  br label %1074

1074:                                             ; preds = %1071, %1067
  %1075 = icmp eq i32 %963, 0
  br i1 %1075, label %1076, label %1085

1076:                                             ; preds = %1074
  %1077 = icmp eq i8 %1068, 2
  br i1 %1077, label %1078, label %1085

1078:                                             ; preds = %1076
  %1079 = getelementptr inbounds %struct.gapobj_type, ptr %959, i64 0, i32 3
  %1080 = load i16, ptr %1079, align 4
  %1081 = and i16 %1080, -8192
  %1082 = icmp eq i16 %1081, -16384
  %1083 = select i1 %1082, i8 3, i8 2
  %1084 = select i1 %1082, i32 1048576, i32 %1069
  br label %1085

1085:                                             ; preds = %1078, %1373, %1370, %1228, %1371, %693, %1074, %1076, %1374
  %1086 = phi i8 [ %663, %1374 ], [ 5, %693 ], [ %1068, %1076 ], [ 7, %1074 ], [ %1083, %1078 ], [ %1113, %1371 ], [ %1113, %1228 ], [ %1113, %1370 ], [ %1113, %1373 ]
  %1087 = phi i32 [ %664, %1374 ], [ %702, %693 ], [ %786, %1076 ], [ %786, %1074 ], [ %786, %1078 ], [ %1229, %1371 ], [ %1229, %1228 ], [ %1229, %1370 ], [ %1229, %1373 ]
  %1088 = phi i32 [ %665, %1374 ], [ %701, %693 ], [ %787, %1076 ], [ %787, %1074 ], [ %787, %1078 ], [ %665, %1371 ], [ %665, %1228 ], [ %665, %1370 ], [ %665, %1373 ]
  %1089 = phi i8 [ %666, %1374 ], [ %700, %693 ], [ %788, %1076 ], [ %788, %1074 ], [ %788, %1078 ], [ %1230, %1371 ], [ %1230, %1228 ], [ %1230, %1370 ], [ %1230, %1373 ]
  %1090 = phi i8 [ %667, %1374 ], [ 5, %693 ], [ %1068, %1076 ], [ 7, %1074 ], [ %1083, %1078 ], [ %1360, %1371 ], [ 8, %1228 ], [ %1360, %1370 ], [ 6, %1373 ]
  %1091 = phi i32 [ %668, %1374 ], [ %699, %693 ], [ %1069, %1076 ], [ %1069, %1074 ], [ %1084, %1078 ], [ %1361, %1371 ], [ 1048577, %1228 ], [ %1361, %1370 ], [ %1361, %1373 ]
  %1092 = phi i32 [ %669, %1374 ], [ %698, %693 ], [ %789, %1076 ], [ %789, %1074 ], [ %789, %1078 ], [ %1231, %1371 ], [ %1231, %1228 ], [ %1231, %1370 ], [ %1231, %1373 ]
  %1093 = phi i32 [ %670, %1374 ], [ %697, %693 ], [ %960, %1076 ], [ %960, %1074 ], [ %960, %1078 ], [ %1232, %1371 ], [ %1232, %1228 ], [ %1232, %1370 ], [ %1232, %1373 ]
  %1094 = phi ptr [ %671, %1374 ], [ %696, %693 ], [ %987, %1076 ], [ %987, %1074 ], [ %987, %1078 ], [ %1256, %1371 ], [ %671, %1228 ], [ %1256, %1370 ], [ %1256, %1373 ]
  %1095 = phi ptr [ %672, %1374 ], [ %393, %693 ], [ %961, %1076 ], [ %961, %1074 ], [ %961, %1078 ], [ %672, %1371 ], [ %672, %1228 ], [ %672, %1370 ], [ %672, %1373 ]
  %1096 = phi ptr [ %673, %1374 ], [ %694, %693 ], [ %694, %1076 ], [ %694, %1074 ], [ %694, %1078 ], [ %1234, %1371 ], [ %672, %1228 ], [ %1234, %1370 ], [ %1234, %1373 ]
  %1097 = phi i32 [ %674, %1374 ], [ %699, %693 ], [ %1069, %1076 ], [ %1069, %1074 ], [ %1084, %1078 ], [ %1114, %1371 ], [ %1114, %1228 ], [ %1114, %1370 ], [ %1114, %1373 ]
  %1098 = phi i32 [ %675, %1374 ], [ %675, %693 ], [ %962, %1076 ], [ %962, %1074 ], [ %962, %1078 ], [ %675, %1371 ], [ %675, %1228 ], [ %675, %1370 ], [ %675, %1373 ]
  %1099 = phi i8 [ %676, %1374 ], [ %700, %693 ], [ %788, %1076 ], [ %788, %1074 ], [ %788, %1078 ], [ %1115, %1371 ], [ %1115, %1228 ], [ %1115, %1370 ], [ %1115, %1373 ]
  %1100 = phi ptr [ %677, %1374 ], [ %677, %693 ], [ %758, %1076 ], [ %758, %1074 ], [ %758, %1078 ], [ %677, %1371 ], [ %677, %1228 ], [ %677, %1370 ], [ %677, %1373 ]
  %1101 = phi i32 [ %678, %1374 ], [ %701, %693 ], [ %787, %1076 ], [ %787, %1074 ], [ %787, %1078 ], [ %1116, %1371 ], [ %1116, %1228 ], [ %1116, %1370 ], [ %1116, %1373 ]
  %1102 = phi ptr [ %679, %1374 ], [ %679, %693 ], [ %679, %1076 ], [ %679, %1074 ], [ %679, %1078 ], [ %1150, %1371 ], [ %1150, %1228 ], [ %1150, %1370 ], [ %1150, %1373 ]
  %1103 = phi i32 [ %680, %1374 ], [ %702, %693 ], [ %786, %1076 ], [ %786, %1074 ], [ %786, %1078 ], [ %1117, %1371 ], [ %1117, %1228 ], [ %1117, %1370 ], [ %1117, %1373 ]
  %1104 = phi ptr [ %681, %1374 ], [ %694, %693 ], [ %694, %1076 ], [ %694, %1074 ], [ %694, %1078 ], [ %1118, %1371 ], [ %1118, %1228 ], [ %1118, %1370 ], [ %1118, %1373 ]
  %1105 = phi ptr [ %682, %1374 ], [ %393, %693 ], [ %961, %1076 ], [ %961, %1074 ], [ %961, %1078 ], [ %1119, %1371 ], [ %1119, %1228 ], [ %1119, %1370 ], [ %1119, %1373 ]
  %1106 = phi ptr [ %683, %1374 ], [ %696, %693 ], [ %987, %1076 ], [ %987, %1074 ], [ %987, %1078 ], [ %1120, %1371 ], [ %1120, %1228 ], [ %1120, %1370 ], [ %1120, %1373 ]
  %1107 = phi i32 [ %684, %1374 ], [ %697, %693 ], [ %960, %1076 ], [ %960, %1074 ], [ %960, %1078 ], [ %1121, %1371 ], [ %1121, %1228 ], [ %1121, %1370 ], [ %1121, %1373 ]
  %1108 = phi i32 [ %685, %1374 ], [ %698, %693 ], [ %789, %1076 ], [ %789, %1074 ], [ %789, %1078 ], [ %1122, %1371 ], [ %1122, %1228 ], [ %1122, %1370 ], [ %1122, %1373 ]
  br label %662

1109:                                             ; preds = %662, %662, %662
  %1110 = icmp slt i32 %668, %674
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1109
  br label %1112

1112:                                             ; preds = %1111, %1109, %662, %662
  %1113 = phi i8 [ %667, %1111 ], [ %663, %1109 ], [ %663, %662 ], [ %663, %662 ]
  %1114 = phi i32 [ %668, %1111 ], [ %674, %1109 ], [ %674, %662 ], [ %674, %662 ]
  %1115 = phi i8 [ %666, %1111 ], [ %676, %1109 ], [ %676, %662 ], [ %676, %662 ]
  %1116 = phi i32 [ %665, %1111 ], [ %678, %1109 ], [ %678, %662 ], [ %678, %662 ]
  %1117 = phi i32 [ %664, %1111 ], [ %680, %1109 ], [ %680, %662 ], [ %680, %662 ]
  %1118 = phi ptr [ %673, %1111 ], [ %681, %1109 ], [ %681, %662 ], [ %681, %662 ]
  %1119 = phi ptr [ %672, %1111 ], [ %682, %1109 ], [ %682, %662 ], [ %682, %662 ]
  %1120 = phi ptr [ %671, %1111 ], [ %683, %1109 ], [ %683, %662 ], [ %683, %662 ]
  %1121 = phi i32 [ %670, %1111 ], [ %684, %1109 ], [ %684, %662 ], [ %684, %662 ]
  %1122 = phi i32 [ %669, %1111 ], [ %685, %1109 ], [ %685, %662 ], [ %685, %662 ]
  %1123 = getelementptr inbounds %struct.LIST, ptr %673, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !5
  %1125 = icmp eq ptr %1124, %393
  br i1 %1125, label %1144, label %1126

1126:                                             ; preds = %1112, %1140
  %1127 = phi ptr [ %1142, %1140 ], [ %1124, %1112 ]
  br label %1128

1128:                                             ; preds = %1126, %1128
  %1129 = phi ptr [ %1131, %1128 ], [ %1127, %1126 ]
  %1130 = getelementptr inbounds [2 x %struct.LIST], ptr %1129, i64 0, i64 1
  %1131 = load ptr, ptr %1130, align 8, !tbaa !5
  %1132 = getelementptr inbounds %struct.word_type, ptr %1131, i64 0, i32 1
  %1133 = load i8, ptr %1132, align 8, !tbaa !5
  switch i8 %1133, label %1137 [
    i8 0, label %1128
    i8 9, label %1134
  ]

1134:                                             ; preds = %1128
  %1135 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1131) #5
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1140, label %1148

1137:                                             ; preds = %1128
  %1138 = add i8 %1133, -9
  %1139 = icmp ult i8 %1138, 91
  br i1 %1139, label %1148, label %1140

1140:                                             ; preds = %1134, %1137
  %1141 = getelementptr inbounds %struct.LIST, ptr %1127, i64 0, i32 1
  %1142 = load ptr, ptr %1141, align 8, !tbaa !5
  %1143 = icmp eq ptr %1142, %393
  br i1 %1143, label %1144, label %1126

1144:                                             ; preds = %1140, %1112
  %1145 = phi ptr [ %679, %1112 ], [ %1131, %1140 ]
  %1146 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1147 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1146, ptr noundef nonnull @.str.18) #5
  br label %1148

1148:                                             ; preds = %1134, %1137, %1144
  %1149 = phi ptr [ %393, %1144 ], [ %1127, %1137 ], [ %1127, %1134 ]
  %1150 = phi ptr [ %1145, %1144 ], [ %1131, %1137 ], [ %1131, %1134 ]
  %1151 = getelementptr inbounds %struct.LIST, ptr %1149, i64 0, i32 1
  %1152 = load ptr, ptr %1151, align 8, !tbaa !5
  %1153 = icmp eq ptr %1152, %393
  br i1 %1153, label %1176, label %1154

1154:                                             ; preds = %1148, %1171
  %1155 = phi ptr [ %1174, %1171 ], [ %1152, %1148 ]
  %1156 = phi ptr [ %1172, %1171 ], [ null, %1148 ]
  br label %1157

1157:                                             ; preds = %1154, %1157
  %1158 = phi ptr [ %1160, %1157 ], [ %1155, %1154 ]
  %1159 = getelementptr inbounds [2 x %struct.LIST], ptr %1158, i64 0, i64 1
  %1160 = load ptr, ptr %1159, align 8, !tbaa !5
  %1161 = getelementptr inbounds %struct.word_type, ptr %1160, i64 0, i32 1
  %1162 = load i8, ptr %1161, align 8, !tbaa !5
  switch i8 %1162, label %1166 [
    i8 0, label %1157
    i8 1, label %1171
    i8 9, label %1163
  ]

1163:                                             ; preds = %1157
  %1164 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1160) #5
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1171, label %1169

1166:                                             ; preds = %1157
  %1167 = add i8 %1162, -9
  %1168 = icmp ult i8 %1167, 91
  br i1 %1168, label %1169, label %1171

1169:                                             ; preds = %1166, %1163
  %1170 = icmp eq ptr %1156, null
  br i1 %1170, label %1176, label %1181

1171:                                             ; preds = %1157, %1166, %1163
  %1172 = phi ptr [ %1156, %1163 ], [ %1156, %1166 ], [ %1160, %1157 ]
  %1173 = getelementptr inbounds %struct.LIST, ptr %1155, i64 0, i32 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !5
  %1175 = icmp eq ptr %1174, %393
  br i1 %1175, label %1176, label %1154

1176:                                             ; preds = %1171, %1148, %1169
  %1177 = phi ptr [ @.str.8, %1169 ], [ @.str.18, %1148 ], [ @.str.18, %1171 ]
  %1178 = phi ptr [ null, %1169 ], [ null, %1148 ], [ %1172, %1171 ]
  %1179 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1180 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1179, ptr noundef nonnull %1177) #5
  br label %1181

1181:                                             ; preds = %1176, %1169
  %1182 = phi ptr [ %1156, %1169 ], [ %1178, %1176 ]
  %1183 = getelementptr inbounds %struct.gapobj_type, ptr %1182, i64 0, i32 3
  %1184 = load i16, ptr %1183, align 4
  %1185 = and i16 %1184, -8192
  %1186 = icmp eq i16 %1185, -16384
  br i1 %1186, label %1187, label %1204

1187:                                             ; preds = %1181
  %1188 = icmp eq i8 %666, 0
  br i1 %1188, label %1189, label %1196

1189:                                             ; preds = %1187
  %1190 = getelementptr inbounds [2 x %struct.LIST], ptr %1182, i64 0, i64 1, i32 1
  %1191 = load ptr, ptr %1190, align 8, !tbaa !5
  %1192 = icmp eq ptr %1191, %672
  br i1 %1192, label %1228, label %1193

1193:                                             ; preds = %1189
  %1194 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1195 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1194, ptr noundef nonnull @.str.19) #5
  br label %1228

1196:                                             ; preds = %1187
  %1197 = add i8 %666, -1
  %1198 = icmp eq i8 %1197, 0
  br i1 %1198, label %1199, label %1228

1199:                                             ; preds = %1196
  %1200 = getelementptr inbounds %struct.gapobj_type, ptr %1182, i64 0, i32 5
  %1201 = load i16, ptr %1200, align 4, !tbaa !5
  %1202 = sext i16 %1201 to i32
  %1203 = sub nsw i32 %670, %1202
  br label %1228

1204:                                             ; preds = %1181
  switch i8 %666, label %1228 [
    i8 0, label %1205
    i8 1, label %1217
  ]

1205:                                             ; preds = %1204
  %1206 = getelementptr inbounds %struct.gapobj_type, ptr %1182, i64 0, i32 5
  %1207 = load i16, ptr %1206, align 4, !tbaa !5
  %1208 = sext i16 %1207 to i32
  %1209 = getelementptr inbounds %struct.word_type, ptr %1150, i64 0, i32 3
  %1210 = load i32, ptr %1209, align 8, !tbaa !5
  %1211 = getelementptr inbounds %struct.word_type, ptr %1150, i64 0, i32 3, i32 1
  %1212 = load i32, ptr %1211, align 8, !tbaa !5
  %1213 = add i32 %1210, %1208
  %1214 = add i32 %1213, %1212
  %1215 = sub i32 %670, %1214
  %1216 = sub nsw i32 %669, %1208
  br label %1228

1217:                                             ; preds = %1204
  %1218 = getelementptr inbounds %struct.gapobj_type, ptr %1182, i64 0, i32 5
  %1219 = load i16, ptr %1218, align 4, !tbaa !5
  %1220 = sext i16 %1219 to i32
  %1221 = getelementptr inbounds %struct.word_type, ptr %1150, i64 0, i32 3
  %1222 = load i32, ptr %1221, align 8, !tbaa !5
  %1223 = getelementptr inbounds %struct.word_type, ptr %1150, i64 0, i32 3, i32 1
  %1224 = load i32, ptr %1223, align 8, !tbaa !5
  %1225 = add i32 %1222, %1220
  %1226 = add i32 %1225, %1224
  %1227 = sub i32 %664, %1226
  br label %1228

1228:                                             ; preds = %1189, %1193, %1204, %1205, %1217, %1196, %1199
  %1229 = phi i32 [ %664, %1199 ], [ %664, %1196 ], [ %664, %1205 ], [ %1227, %1217 ], [ %664, %1204 ], [ %664, %1193 ], [ %664, %1189 ]
  %1230 = phi i8 [ 0, %1199 ], [ %1197, %1196 ], [ 0, %1205 ], [ 1, %1217 ], [ %666, %1204 ], [ -1, %1193 ], [ -1, %1189 ]
  %1231 = phi i32 [ %669, %1199 ], [ %669, %1196 ], [ %1216, %1205 ], [ %669, %1217 ], [ %669, %1204 ], [ %669, %1193 ], [ %669, %1189 ]
  %1232 = phi i32 [ %1203, %1199 ], [ %670, %1196 ], [ %1215, %1205 ], [ %670, %1217 ], [ %670, %1204 ], [ %670, %1193 ], [ %670, %1189 ]
  %1233 = getelementptr inbounds [2 x %struct.LIST], ptr %1182, i64 0, i64 1, i32 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !5
  %1235 = icmp eq ptr %1234, %672
  br i1 %1235, label %1085, label %1236

1236:                                             ; preds = %1228
  %1237 = getelementptr inbounds %struct.gapobj_type, ptr %1182, i64 0, i32 8
  %1238 = load ptr, ptr %1237, align 8, !tbaa !5
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1255, label %1240

1240:                                             ; preds = %1236
  %1241 = getelementptr inbounds [2 x %struct.LIST], ptr %1238, i64 0, i64 1, i32 1
  %1242 = load ptr, ptr %1241, align 8, !tbaa !5
  %1243 = getelementptr inbounds %struct.LIST, ptr %1242, i64 0, i32 1
  %1244 = load ptr, ptr %1243, align 8, !tbaa !5
  %1245 = getelementptr inbounds %struct.word_type, ptr %1244, i64 0, i32 1
  %1246 = load i8, ptr %1245, align 8, !tbaa !5
  %1247 = icmp eq i8 %1246, 17
  br i1 %1247, label %1255, label %1248

1248:                                             ; preds = %1240, %1248
  %1249 = phi ptr [ %1251, %1248 ], [ %1244, %1240 ]
  %1250 = getelementptr inbounds [2 x %struct.LIST], ptr %1249, i64 0, i64 1
  %1251 = load ptr, ptr %1250, align 8, !tbaa !5
  %1252 = getelementptr inbounds %struct.word_type, ptr %1251, i64 0, i32 1
  %1253 = load i8, ptr %1252, align 8, !tbaa !5
  %1254 = icmp eq i8 %1253, 0
  br i1 %1254, label %1248, label %1255

1255:                                             ; preds = %1248, %1240, %1236
  %1256 = phi ptr [ %671, %1236 ], [ %1238, %1240 ], [ %1251, %1248 ]
  %1257 = icmp eq ptr %1234, %393
  %1258 = icmp eq ptr %1256, null
  br i1 %1257, label %1259, label %1263

1259:                                             ; preds = %1255
  br i1 %1258, label %1279, label %1260

1260:                                             ; preds = %1259
  %1261 = getelementptr inbounds %struct.closure_type, ptr %1256, i64 0, i32 4, i32 0, i32 1
  %1262 = load i32, ptr %1261, align 4, !tbaa !5
  br label %1279

1263:                                             ; preds = %1255
  br i1 %1258, label %1267, label %1264

1264:                                             ; preds = %1263
  %1265 = getelementptr inbounds %struct.closure_type, ptr %1256, i64 0, i32 4, i32 0, i32 1
  %1266 = load i32, ptr %1265, align 4, !tbaa !5
  br label %1267

1267:                                             ; preds = %1263, %1264
  %1268 = phi i32 [ %1266, %1264 ], [ %675, %1263 ]
  br label %1269

1269:                                             ; preds = %1269, %1267
  %1270 = phi ptr [ %1234, %1267 ], [ %1272, %1269 ]
  %1271 = getelementptr inbounds [2 x %struct.LIST], ptr %1270, i64 0, i64 1
  %1272 = load ptr, ptr %1271, align 8, !tbaa !5
  %1273 = getelementptr inbounds %struct.word_type, ptr %1272, i64 0, i32 1
  %1274 = load i8, ptr %1273, align 8, !tbaa !5
  %1275 = icmp eq i8 %1274, 0
  br i1 %1275, label %1269, label %1276

1276:                                             ; preds = %1269
  %1277 = getelementptr inbounds %struct.gapobj_type, ptr %1272, i64 0, i32 4
  %1278 = load i32, ptr %1277, align 8, !tbaa !5
  br label %1279

1279:                                             ; preds = %1260, %1259, %1276
  %1280 = phi i32 [ %1278, %1276 ], [ 0, %1259 ], [ 0, %1260 ]
  %1281 = phi i32 [ %1268, %1276 ], [ %100, %1259 ], [ %1262, %1260 ]
  %1282 = icmp ne i8 %1230, 0
  br i1 %1282, label %1283, label %1312

1283:                                             ; preds = %1279
  %1284 = getelementptr inbounds %struct.LIST, ptr %1234, i64 0, i32 1
  %1285 = load ptr, ptr %1284, align 8, !tbaa !5
  %1286 = getelementptr inbounds %struct.LIST, ptr %1285, i64 0, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !5
  %1288 = getelementptr inbounds %struct.word_type, ptr %1287, i64 0, i32 1
  %1289 = load i8, ptr %1288, align 8, !tbaa !5
  %1290 = icmp eq i8 %1289, 0
  br i1 %1290, label %1294, label %1291

1291:                                             ; preds = %1283
  %1292 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1293 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1292, ptr noundef nonnull @.str.12) #5
  br label %1294

1294:                                             ; preds = %1291, %1283
  br label %1295

1295:                                             ; preds = %1294, %1295
  %1296 = phi ptr [ %1298, %1295 ], [ %1287, %1294 ]
  %1297 = getelementptr inbounds [2 x %struct.LIST], ptr %1296, i64 0, i64 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !5
  %1299 = getelementptr inbounds %struct.word_type, ptr %1298, i64 0, i32 1
  %1300 = load i8, ptr %1299, align 8, !tbaa !5
  switch i8 %1300, label %1312 [
    i8 0, label %1295
    i8 1, label %1301
  ]

1301:                                             ; preds = %1295
  %1302 = getelementptr inbounds %struct.gapobj_type, ptr %1298, i64 0, i32 3
  %1303 = load i16, ptr %1302, align 4
  %1304 = and i16 %1303, -1024
  %1305 = icmp eq i16 %1304, -13312
  br i1 %1305, label %1306, label %1312

1306:                                             ; preds = %1301
  %1307 = getelementptr inbounds %struct.gapobj_type, ptr %1298, i64 0, i32 3, i32 1
  %1308 = load i16, ptr %1307, align 2, !tbaa !5
  %1309 = icmp eq i16 %1308, 4096
  %1310 = add nsw i32 %1280, 128
  %1311 = select i1 %1309, i32 %1310, i32 %1280
  br label %1312

1312:                                             ; preds = %1295, %1306, %1301, %1279
  %1313 = phi i32 [ %1280, %1279 ], [ %1280, %1301 ], [ %1311, %1306 ], [ %1280, %1295 ]
  %1314 = icmp slt i32 %1281, 1
  br i1 %1314, label %1315, label %1320

1315:                                             ; preds = %1312
  %1316 = icmp eq i32 %1232, 0
  %1317 = add nsw i32 %1313, 1048576
  %1318 = select i1 %1316, i8 0, i8 2
  %1319 = select i1 %1316, i32 %1313, i32 %1317
  br label %1359

1320:                                             ; preds = %1312
  %1321 = icmp sgt i32 %1229, %665
  %1322 = select i1 %1282, i1 %1321, i1 false
  br i1 %1322, label %1323, label %1325

1323:                                             ; preds = %1320
  %1324 = add nsw i32 %1313, 1048576
  br label %1359

1325:                                             ; preds = %1320
  %1326 = sub nsw i32 %1281, %1232
  %1327 = shl nsw i32 %1231, 1
  %1328 = icmp sgt i32 %1326, %1327
  br i1 %1328, label %1329, label %1335

1329:                                             ; preds = %1325
  %1330 = zext i1 %1282 to i8
  %1331 = shl nsw i32 %1326, 9
  %1332 = sdiv i32 %1331, %1281
  %1333 = mul nsw i32 %1332, %1332
  %1334 = add nsw i32 %1333, %1313
  br label %1359

1335:                                             ; preds = %1325
  %1336 = icmp sgt i32 %1232, %1281
  br i1 %1336, label %1342, label %1337

1337:                                             ; preds = %1335
  %1338 = shl nsw i32 %1326, 7
  %1339 = sdiv i32 %1338, %1281
  %1340 = mul nsw i32 %1339, %1339
  %1341 = add nsw i32 %1340, %1313
  br label %1359

1342:                                             ; preds = %1335
  %1343 = load ptr, ptr @BackEnd, align 8, !tbaa !8
  %1344 = getelementptr inbounds %struct.back_end_rec, ptr %1343, i64 0, i32 7
  %1345 = load i32, ptr %1344, align 4, !tbaa !15
  %1346 = icmp ne i32 %1345, 0
  %1347 = and i1 %379, %1346
  br i1 %1347, label %1348, label %1357

1348:                                             ; preds = %1342
  %1349 = sub nsw i32 %1232, %1281
  %1350 = shl nsw i32 %1349, 2
  %1351 = icmp sgt i32 %1350, %1231
  br i1 %1351, label %1357, label %1352

1352:                                             ; preds = %1348
  %1353 = shl nsw i32 %1326, 7
  %1354 = sdiv i32 %1353, %1281
  %1355 = mul nsw i32 %1354, %1354
  %1356 = add nsw i32 %1355, %1313
  br label %1359

1357:                                             ; preds = %1348, %1342
  %1358 = add nsw i32 %1313, 1048576
  br label %1359

1359:                                             ; preds = %1315, %1323, %1337, %1357, %1352, %1329
  %1360 = phi i8 [ 4, %1323 ], [ %1330, %1329 ], [ 1, %1337 ], [ 2, %1352 ], [ 3, %1357 ], [ %1318, %1315 ]
  %1361 = phi i32 [ %1324, %1323 ], [ %1334, %1329 ], [ %1341, %1337 ], [ %1356, %1352 ], [ %1358, %1357 ], [ %1319, %1315 ]
  %1362 = icmp sgt i32 %1361, -1
  br i1 %1362, label %1366, label %1363

1363:                                             ; preds = %1359
  %1364 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1365 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1364, ptr noundef nonnull @.str.13) #5
  br label %1366

1366:                                             ; preds = %1363, %1359
  %1367 = load i16, ptr %1183, align 4
  %1368 = and i16 %1367, 128
  %1369 = icmp eq i16 %1368, 0
  br i1 %1369, label %1370, label %1373

1370:                                             ; preds = %1366
  br i1 %389, label %1371, label %1085

1371:                                             ; preds = %1370
  %1372 = lshr i16 %1367, 13
  switch i16 %1372, label %1085 [
    i16 2, label %1373
    i16 7, label %1373
  ]

1373:                                             ; preds = %1371, %1371, %1366
  br label %1085

1374:                                             ; preds = %662
  %1375 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1376 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1375, ptr noundef nonnull @.str.20) #5
  br label %1085

1377:                                             ; preds = %662
  %1378 = icmp ne i32 %392, 0
  %1379 = icmp sgt i32 %674, 128
  %1380 = select i1 %1378, i1 %1379, i1 false
  br i1 %1380, label %1381, label %1383

1381:                                             ; preds = %1377
  %1382 = tail call ptr @Hyphenate(ptr noundef %393) #5
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %380

1383:                                             ; preds = %1377
  %1384 = icmp eq ptr %673, %393
  br i1 %1384, label %1385, label %1458

1385:                                             ; preds = %1383
  br i1 %15, label %1386, label %1389

1386:                                             ; preds = %1385
  %1387 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 3
  store i32 0, ptr %1387, align 8, !tbaa !5
  %1388 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 3, i32 1
  store i32 %100, ptr %1388, align 8, !tbaa !5
  br label %2631

1389:                                             ; preds = %1385
  %1390 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 19), align 1, !tbaa !5
  %1391 = zext i8 %1390 to i32
  store i32 %1391, ptr @zz_size, align 4, !tbaa !10
  %1392 = zext i8 %1390 to i64
  %1393 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1392
  %1394 = load ptr, ptr %1393, align 8, !tbaa !8
  %1395 = icmp eq ptr %1394, null
  br i1 %1395, label %1396, label %1399

1396:                                             ; preds = %1389
  %1397 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1398 = tail call ptr @GetMemory(i32 noundef %1391, ptr noundef %1397) #5
  br label %1401

1399:                                             ; preds = %1389
  store ptr %1394, ptr @zz_hold, align 8, !tbaa !8
  %1400 = load ptr, ptr %1394, align 8, !tbaa !5
  store ptr %1400, ptr %1393, align 8, !tbaa !8
  br label %1401

1401:                                             ; preds = %1396, %1399
  %1402 = phi ptr [ %1398, %1396 ], [ %1394, %1399 ]
  %1403 = getelementptr inbounds %struct.word_type, ptr %1402, i64 0, i32 1
  store i8 19, ptr %1403, align 8, !tbaa !5
  %1404 = getelementptr inbounds [2 x %struct.LIST], ptr %1402, i64 0, i64 1, i32 1
  store ptr %1402, ptr %1404, align 8, !tbaa !5
  %1405 = getelementptr inbounds [2 x %struct.LIST], ptr %1402, i64 0, i64 1
  store ptr %1402, ptr %1405, align 8, !tbaa !5
  %1406 = getelementptr inbounds %struct.LIST, ptr %1402, i64 0, i32 1
  store ptr %1402, ptr %1406, align 8, !tbaa !5
  store ptr %1402, ptr %1402, align 8, !tbaa !5
  %1407 = getelementptr inbounds i8, ptr %1402, i64 42
  %1408 = load i16, ptr %1407, align 2
  %1409 = and i16 %1408, -2049
  store i16 %1409, ptr %1407, align 2
  %1410 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1
  %1411 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1, i32 1
  %1412 = load ptr, ptr %1411, align 8, !tbaa !5
  %1413 = icmp eq ptr %1412, %393
  br i1 %1413, label %1414, label %1415

1414:                                             ; preds = %1401
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1402, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %1423

1415:                                             ; preds = %1401
  %1416 = load ptr, ptr %1410, align 8, !tbaa !5
  %1417 = getelementptr inbounds [2 x %struct.LIST], ptr %1412, i64 0, i64 1
  store ptr %1416, ptr %1417, align 8, !tbaa !5
  %1418 = getelementptr inbounds [2 x %struct.LIST], ptr %1416, i64 0, i64 1, i32 1
  store ptr %1412, ptr %1418, align 8, !tbaa !5
  store ptr %393, ptr %1411, align 8, !tbaa !5
  store ptr %393, ptr %1410, align 8, !tbaa !5
  store ptr %1412, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1402, ptr @zz_res, align 8, !tbaa !8
  store ptr %1412, ptr @zz_hold, align 8, !tbaa !8
  %1419 = load ptr, ptr %1417, align 8, !tbaa !5
  store ptr %1419, ptr @zz_tmp, align 8, !tbaa !8
  %1420 = load ptr, ptr %1405, align 8, !tbaa !5
  store ptr %1420, ptr %1417, align 8, !tbaa !5
  %1421 = getelementptr inbounds [2 x %struct.LIST], ptr %1420, i64 0, i64 1, i32 1
  store ptr %1412, ptr %1421, align 8, !tbaa !5
  store ptr %1419, ptr %1405, align 8, !tbaa !5
  %1422 = getelementptr inbounds [2 x %struct.LIST], ptr %1419, i64 0, i64 1, i32 1
  store ptr %1402, ptr %1422, align 8, !tbaa !5
  br label %1423

1423:                                             ; preds = %1414, %1415
  %1424 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1425 = zext i8 %1424 to i32
  store i32 %1425, ptr @zz_size, align 4, !tbaa !10
  %1426 = zext i8 %1424 to i64
  %1427 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1426
  %1428 = load ptr, ptr %1427, align 8, !tbaa !8
  %1429 = icmp eq ptr %1428, null
  br i1 %1429, label %1430, label %1433

1430:                                             ; preds = %1423
  %1431 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1432 = tail call ptr @GetMemory(i32 noundef %1425, ptr noundef %1431) #5
  br label %1435

1433:                                             ; preds = %1423
  store ptr %1428, ptr @zz_hold, align 8, !tbaa !8
  %1434 = load ptr, ptr %1428, align 8, !tbaa !5
  store ptr %1434, ptr %1427, align 8, !tbaa !8
  br label %1435

1435:                                             ; preds = %1430, %1433
  %1436 = phi ptr [ %1432, %1430 ], [ %1428, %1433 ]
  %1437 = getelementptr inbounds %struct.word_type, ptr %1436, i64 0, i32 1
  store i8 0, ptr %1437, align 8, !tbaa !5
  %1438 = getelementptr inbounds [2 x %struct.LIST], ptr %1436, i64 0, i64 1, i32 1
  store ptr %1436, ptr %1438, align 8, !tbaa !5
  %1439 = getelementptr inbounds [2 x %struct.LIST], ptr %1436, i64 0, i64 1
  store ptr %1436, ptr %1439, align 8, !tbaa !5
  %1440 = getelementptr inbounds %struct.LIST, ptr %1436, i64 0, i32 1
  store ptr %1436, ptr %1440, align 8, !tbaa !5
  store ptr %1436, ptr %1436, align 8, !tbaa !5
  store ptr %1436, ptr @xx_link, align 8, !tbaa !8
  store ptr %1436, ptr @zz_res, align 8, !tbaa !8
  store ptr %1402, ptr @zz_hold, align 8, !tbaa !8
  %1441 = load ptr, ptr %1402, align 8, !tbaa !5
  store ptr %1441, ptr @zz_tmp, align 8, !tbaa !8
  %1442 = load ptr, ptr %1436, align 8, !tbaa !5
  store ptr %1442, ptr %1402, align 8, !tbaa !5
  %1443 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1444 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1445 = load ptr, ptr %1444, align 8, !tbaa !5
  %1446 = getelementptr inbounds %struct.LIST, ptr %1445, i64 0, i32 1
  store ptr %1443, ptr %1446, align 8, !tbaa !5
  %1447 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1447, ptr %1444, align 8, !tbaa !5
  %1448 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1449 = getelementptr inbounds %struct.LIST, ptr %1447, i64 0, i32 1
  store ptr %1448, ptr %1449, align 8, !tbaa !5
  %1450 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1450, ptr @zz_res, align 8, !tbaa !8
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %2631, label %1452

1452:                                             ; preds = %1435
  %1453 = load ptr, ptr %1410, align 8, !tbaa !5
  store ptr %1453, ptr @zz_tmp, align 8, !tbaa !8
  %1454 = getelementptr inbounds [2 x %struct.LIST], ptr %1450, i64 0, i64 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !5
  store ptr %1455, ptr %1410, align 8, !tbaa !5
  %1456 = getelementptr inbounds [2 x %struct.LIST], ptr %1455, i64 0, i64 1, i32 1
  store ptr %393, ptr %1456, align 8, !tbaa !5
  store ptr %1453, ptr %1454, align 8, !tbaa !5
  %1457 = getelementptr inbounds [2 x %struct.LIST], ptr %1453, i64 0, i64 1, i32 1
  store ptr %1450, ptr %1457, align 8, !tbaa !5
  br label %2631

1458:                                             ; preds = %1383
  %1459 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 19), align 1, !tbaa !5
  %1460 = zext i8 %1459 to i32
  store i32 %1460, ptr @zz_size, align 4, !tbaa !10
  %1461 = zext i8 %1459 to i64
  %1462 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1461
  %1463 = load ptr, ptr %1462, align 8, !tbaa !8
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %1465, label %1468

1465:                                             ; preds = %1458
  %1466 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1467 = tail call ptr @GetMemory(i32 noundef %1460, ptr noundef %1466) #5
  br label %1470

1468:                                             ; preds = %1458
  store ptr %1463, ptr @zz_hold, align 8, !tbaa !8
  %1469 = load ptr, ptr %1463, align 8, !tbaa !5
  store ptr %1469, ptr %1462, align 8, !tbaa !8
  br label %1470

1470:                                             ; preds = %1465, %1468
  %1471 = phi ptr [ %1467, %1465 ], [ %1463, %1468 ]
  %1472 = getelementptr inbounds %struct.word_type, ptr %1471, i64 0, i32 1
  store i8 19, ptr %1472, align 8, !tbaa !5
  %1473 = getelementptr inbounds [2 x %struct.LIST], ptr %1471, i64 0, i64 1, i32 1
  store ptr %1471, ptr %1473, align 8, !tbaa !5
  %1474 = getelementptr inbounds [2 x %struct.LIST], ptr %1471, i64 0, i64 1
  store ptr %1471, ptr %1474, align 8, !tbaa !5
  %1475 = getelementptr inbounds %struct.LIST, ptr %1471, i64 0, i32 1
  store ptr %1471, ptr %1475, align 8, !tbaa !5
  store ptr %1471, ptr %1471, align 8, !tbaa !5
  %1476 = getelementptr inbounds i8, ptr %1471, i64 42
  %1477 = load i16, ptr %1476, align 2
  %1478 = and i16 %1477, -2049
  store i16 %1478, ptr %1476, align 2
  %1479 = getelementptr inbounds %struct.word_type, ptr %1471, i64 0, i32 3
  store i32 0, ptr %1479, align 8, !tbaa !5
  %1480 = getelementptr inbounds %struct.word_type, ptr %1471, i64 0, i32 3, i32 1
  store i32 %100, ptr %1480, align 8, !tbaa !5
  %1481 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1
  %1482 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1, i32 1
  %1483 = load ptr, ptr %1482, align 8, !tbaa !5
  %1484 = icmp eq ptr %1483, %393
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1470
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1471, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %1494

1486:                                             ; preds = %1470
  %1487 = load ptr, ptr %1481, align 8, !tbaa !5
  %1488 = getelementptr inbounds [2 x %struct.LIST], ptr %1483, i64 0, i64 1
  store ptr %1487, ptr %1488, align 8, !tbaa !5
  %1489 = getelementptr inbounds [2 x %struct.LIST], ptr %1487, i64 0, i64 1, i32 1
  store ptr %1483, ptr %1489, align 8, !tbaa !5
  store ptr %393, ptr %1482, align 8, !tbaa !5
  store ptr %393, ptr %1481, align 8, !tbaa !5
  store ptr %1483, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1471, ptr @zz_res, align 8, !tbaa !8
  store ptr %1483, ptr @zz_hold, align 8, !tbaa !8
  %1490 = load ptr, ptr %1488, align 8, !tbaa !5
  store ptr %1490, ptr @zz_tmp, align 8, !tbaa !8
  %1491 = load ptr, ptr %1474, align 8, !tbaa !5
  store ptr %1491, ptr %1488, align 8, !tbaa !5
  %1492 = getelementptr inbounds [2 x %struct.LIST], ptr %1491, i64 0, i64 1, i32 1
  store ptr %1483, ptr %1492, align 8, !tbaa !5
  store ptr %1490, ptr %1474, align 8, !tbaa !5
  %1493 = getelementptr inbounds [2 x %struct.LIST], ptr %1490, i64 0, i64 1, i32 1
  store ptr %1471, ptr %1493, align 8, !tbaa !5
  br label %1494

1494:                                             ; preds = %1486, %1485
  %1495 = getelementptr inbounds i8, ptr %393, i64 42
  %1496 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4
  %1497 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 2
  %1500 = getelementptr inbounds %struct.closure_type, ptr %393, i64 0, i32 4, i32 0, i32 3
  br label %1501

1501:                                             ; preds = %1494, %2150
  %1502 = phi ptr [ %673, %1494 ], [ %2152, %2150 ]
  %1503 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1504 = zext i8 %1503 to i32
  store i32 %1504, ptr @zz_size, align 4, !tbaa !10
  %1505 = zext i8 %1503 to i64
  %1506 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1505
  %1507 = load ptr, ptr %1506, align 8, !tbaa !8
  %1508 = icmp eq ptr %1507, null
  br i1 %1508, label %1509, label %1512

1509:                                             ; preds = %1501
  %1510 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1511 = tail call ptr @GetMemory(i32 noundef %1504, ptr noundef %1510) #5
  store ptr %1511, ptr @zz_hold, align 8, !tbaa !8
  br label %1514

1512:                                             ; preds = %1501
  store ptr %1507, ptr @zz_hold, align 8, !tbaa !8
  %1513 = load ptr, ptr %1507, align 8, !tbaa !5
  store ptr %1513, ptr %1506, align 8, !tbaa !8
  br label %1514

1514:                                             ; preds = %1509, %1512
  %1515 = phi ptr [ %1511, %1509 ], [ %1507, %1512 ]
  %1516 = getelementptr inbounds %struct.word_type, ptr %1515, i64 0, i32 1
  store i8 17, ptr %1516, align 8, !tbaa !5
  %1517 = getelementptr inbounds [2 x %struct.LIST], ptr %1515, i64 0, i64 1
  %1518 = getelementptr inbounds [2 x %struct.LIST], ptr %1515, i64 0, i64 1, i32 1
  store ptr %1515, ptr %1518, align 8, !tbaa !5
  store ptr %1515, ptr %1517, align 8, !tbaa !5
  %1519 = getelementptr inbounds %struct.LIST, ptr %1515, i64 0, i32 1
  store ptr %1515, ptr %1519, align 8, !tbaa !5
  store ptr %1515, ptr %1515, align 8, !tbaa !5
  %1520 = load i16, ptr %1495, align 2
  %1521 = and i16 %1520, 2048
  %1522 = getelementptr inbounds i8, ptr %1515, i64 42
  %1523 = load i16, ptr %1522, align 2
  %1524 = and i16 %1523, -2049
  %1525 = or disjoint i16 %1524, %1521
  store i16 %1525, ptr %1522, align 2
  %1526 = load i16, ptr %660, align 2, !tbaa !5
  %1527 = getelementptr inbounds %struct.word_type, ptr %1515, i64 0, i32 1, i32 0, i32 2
  store i16 %1526, ptr %1527, align 2, !tbaa !5
  %1528 = load i32, ptr %661, align 4
  %1529 = and i32 %1528, 1048575
  %1530 = getelementptr inbounds %struct.word_type, ptr %1515, i64 0, i32 1, i32 0, i32 3
  %1531 = load i32, ptr %1530, align 4
  %1532 = and i32 %1531, -1048576
  %1533 = or disjoint i32 %1532, %1529
  store i32 %1533, ptr %1530, align 4
  %1534 = load i32, ptr %661, align 4
  %1535 = and i32 %1534, -1048576
  %1536 = or disjoint i32 %1535, %1529
  store i32 %1536, ptr %1530, align 4
  %1537 = load i16, ptr %1496, align 8
  %1538 = and i16 %1537, 128
  %1539 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4
  %1540 = load i16, ptr %1539, align 8
  %1541 = and i16 %1540, -129
  %1542 = or disjoint i16 %1541, %1538
  store i16 %1542, ptr %1539, align 8
  %1543 = load i16, ptr %1496, align 8
  %1544 = and i16 %1543, 256
  %1545 = and i16 %1542, -257
  %1546 = or disjoint i16 %1545, %1544
  store i16 %1546, ptr %1539, align 8
  %1547 = load i16, ptr %1496, align 8
  %1548 = and i16 %1547, 512
  %1549 = and i16 %1546, -513
  %1550 = or disjoint i16 %1549, %1548
  store i16 %1550, ptr %1539, align 8
  %1551 = load i16, ptr %1496, align 8
  %1552 = and i16 %1551, 7168
  %1553 = and i16 %1550, -7169
  %1554 = or disjoint i16 %1553, %1552
  store i16 %1554, ptr %1539, align 8
  %1555 = load i16, ptr %1496, align 8
  %1556 = and i16 %1555, -8192
  %1557 = and i16 %1554, 8191
  %1558 = or disjoint i16 %1557, %1556
  store i16 %1558, ptr %1539, align 8
  %1559 = load i16, ptr %1497, align 2, !tbaa !5
  %1560 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %1559, ptr %1560, align 2, !tbaa !5
  %1561 = load i8, ptr %659, align 4
  %1562 = and i8 %1561, 3
  %1563 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 1
  %1564 = load i8, ptr %1563, align 4
  %1565 = and i8 %1564, -4
  %1566 = or disjoint i8 %1565, %1562
  store i8 %1566, ptr %1563, align 4
  %1567 = load i8, ptr %659, align 4
  %1568 = and i8 %1567, 12
  %1569 = and i8 %1566, -13
  %1570 = or disjoint i8 %1569, %1568
  store i8 %1570, ptr %1563, align 4
  %1571 = load i8, ptr %659, align 4
  %1572 = and i8 %1571, 112
  %1573 = and i8 %1570, -113
  %1574 = or disjoint i8 %1573, %1572
  store i8 %1574, ptr %1563, align 4
  %1575 = load i8, ptr %1496, align 8
  %1576 = and i8 %1575, 8
  %1577 = trunc i16 %1542 to i8
  %1578 = and i8 %1577, -9
  %1579 = or disjoint i8 %1578, %1576
  store i8 %1579, ptr %1539, align 8
  %1580 = load i16, ptr %659, align 4
  %1581 = and i16 %1580, 128
  %1582 = load i16, ptr %1563, align 4
  %1583 = and i16 %1582, -129
  %1584 = or disjoint i16 %1583, %1581
  store i16 %1584, ptr %1563, align 4
  %1585 = load i16, ptr %659, align 4
  %1586 = and i16 %1585, 256
  %1587 = and i16 %1584, -257
  %1588 = or disjoint i16 %1587, %1586
  store i16 %1588, ptr %1563, align 4
  %1589 = load i16, ptr %659, align 4
  %1590 = and i16 %1589, 512
  %1591 = and i16 %1588, -513
  %1592 = or disjoint i16 %1591, %1590
  store i16 %1592, ptr %1563, align 4
  %1593 = load i16, ptr %659, align 4
  %1594 = and i16 %1593, 7168
  %1595 = and i16 %1592, -7169
  %1596 = or disjoint i16 %1595, %1594
  store i16 %1596, ptr %1563, align 4
  %1597 = load i16, ptr %659, align 4
  %1598 = and i16 %1597, -8192
  %1599 = and i16 %1596, 8191
  %1600 = or disjoint i16 %1599, %1598
  store i16 %1600, ptr %1563, align 4
  %1601 = load i16, ptr %1498, align 2, !tbaa !5
  %1602 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %1601, ptr %1602, align 2, !tbaa !5
  %1603 = load i32, ptr %658, align 4
  %1604 = and i32 %1603, 4095
  %1605 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 4
  %1606 = load i32, ptr %1605, align 4
  %1607 = and i32 %1606, -4096
  %1608 = or disjoint i32 %1607, %1604
  store i32 %1608, ptr %1605, align 4
  %1609 = load i32, ptr %658, align 4
  %1610 = and i32 %1609, 4190208
  %1611 = and i32 %1608, -4190209
  %1612 = or disjoint i32 %1611, %1610
  store i32 %1612, ptr %1605, align 4
  %1613 = load i32, ptr %658, align 4
  %1614 = and i32 %1613, 12582912
  %1615 = and i32 %1612, -12582913
  %1616 = or disjoint i32 %1615, %1614
  store i32 %1616, ptr %1605, align 4
  %1617 = load i32, ptr %658, align 4
  %1618 = and i32 %1617, 1056964608
  %1619 = and i32 %1616, -1056964609
  %1620 = or disjoint i32 %1619, %1618
  store i32 %1620, ptr %1605, align 4
  %1621 = load i32, ptr %658, align 4
  %1622 = and i32 %1621, -2147483648
  %1623 = and i32 %1620, 2147483647
  %1624 = or disjoint i32 %1623, %1622
  store i32 %1624, ptr %1605, align 4
  %1625 = load i32, ptr %658, align 4
  %1626 = and i32 %1625, 1073741824
  %1627 = and i32 %1624, -1073741825
  %1628 = or disjoint i32 %1627, %1626
  store i32 %1628, ptr %1605, align 4
  %1629 = load i8, ptr %1496, align 8
  %1630 = and i8 %1629, 1
  %1631 = and i8 %1579, -2
  %1632 = or disjoint i8 %1630, %1631
  store i8 %1632, ptr %1539, align 8
  %1633 = load i8, ptr %1496, align 8
  %1634 = and i8 %1633, 2
  %1635 = and i8 %1632, -3
  %1636 = or disjoint i8 %1635, %1634
  store i8 %1636, ptr %1539, align 8
  %1637 = load i8, ptr %1496, align 8
  %1638 = and i8 %1637, 4
  %1639 = and i8 %1636, -5
  %1640 = or disjoint i8 %1639, %1638
  store i8 %1640, ptr %1539, align 8
  %1641 = load i8, ptr %1496, align 8
  %1642 = and i8 %1641, 112
  %1643 = and i8 %1640, -113
  %1644 = or disjoint i8 %1643, %1642
  store i8 %1644, ptr %1539, align 8
  %1645 = load i16, ptr %1499, align 8, !tbaa !5
  %1646 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 2
  store i16 %1645, ptr %1646, align 8, !tbaa !5
  %1647 = load i16, ptr %1500, align 2, !tbaa !5
  %1648 = getelementptr inbounds %struct.closure_type, ptr %1515, i64 0, i32 4, i32 0, i32 3
  store i16 %1647, ptr %1648, align 2, !tbaa !5
  %1649 = load ptr, ptr %1475, align 8, !tbaa !5
  %1650 = icmp eq ptr %1649, %1471
  %1651 = trunc i16 %1584 to i8
  br i1 %1650, label %1659, label %1652

1652:                                             ; preds = %1514
  %1653 = lshr i8 %1651, 4
  %1654 = and i8 %1653, 7
  %1655 = add nsw i8 %1654, -1
  %1656 = icmp ult i8 %1655, 2
  br i1 %1656, label %1657, label %1659

1657:                                             ; preds = %1652
  %1658 = or i8 %1651, 112
  store i8 %1658, ptr %1563, align 4
  br label %1659

1659:                                             ; preds = %1652, %1657, %1514
  %1660 = getelementptr inbounds %struct.word_type, ptr %1515, i64 0, i32 3
  store i32 0, ptr %1660, align 8, !tbaa !5
  %1661 = getelementptr inbounds %struct.word_type, ptr %1515, i64 0, i32 3, i32 1
  store i32 %100, ptr %1661, align 8, !tbaa !5
  %1662 = load i8, ptr %659, align 4
  %1663 = and i8 %1662, 96
  %1664 = icmp eq i8 %1663, 32
  br i1 %1664, label %1665, label %1824

1665:                                             ; preds = %1659
  %1666 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.4, ptr noundef nonnull %657) #5
  %1667 = getelementptr inbounds %struct.word_type, ptr %1666, i64 0, i32 3
  %1668 = getelementptr inbounds %struct.word_type, ptr %1666, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1667, i8 0, i64 16, i1 false)
  store i32 536870912, ptr %1668, align 8
  %1669 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 26), align 1, !tbaa !5
  %1670 = zext i8 %1669 to i32
  store i32 %1670, ptr @zz_size, align 4, !tbaa !10
  %1671 = zext i8 %1669 to i64
  %1672 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1671
  %1673 = load ptr, ptr %1672, align 8, !tbaa !8
  %1674 = icmp eq ptr %1673, null
  br i1 %1674, label %1675, label %1678

1675:                                             ; preds = %1665
  %1676 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1677 = tail call ptr @GetMemory(i32 noundef %1670, ptr noundef %1676) #5
  store ptr %1677, ptr @zz_hold, align 8, !tbaa !8
  br label %1680

1678:                                             ; preds = %1665
  store ptr %1673, ptr @zz_hold, align 8, !tbaa !8
  %1679 = load ptr, ptr %1673, align 8, !tbaa !5
  store ptr %1679, ptr %1672, align 8, !tbaa !8
  br label %1680

1680:                                             ; preds = %1675, %1678
  %1681 = phi ptr [ %1677, %1675 ], [ %1673, %1678 ]
  %1682 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 1
  store i8 26, ptr %1682, align 8, !tbaa !5
  %1683 = getelementptr inbounds [2 x %struct.LIST], ptr %1681, i64 0, i64 1
  %1684 = getelementptr inbounds [2 x %struct.LIST], ptr %1681, i64 0, i64 1, i32 1
  store ptr %1681, ptr %1684, align 8, !tbaa !5
  store ptr %1681, ptr %1683, align 8, !tbaa !5
  %1685 = getelementptr inbounds %struct.LIST, ptr %1681, i64 0, i32 1
  store ptr %1681, ptr %1685, align 8, !tbaa !5
  store ptr %1681, ptr %1681, align 8, !tbaa !5
  %1686 = getelementptr inbounds %struct.closure_type, ptr %1681, i64 0, i32 4
  store i32 8388607, ptr %1686, align 8, !tbaa !5
  %1687 = getelementptr inbounds %struct.closure_type, ptr %1681, i64 0, i32 4, i32 0, i32 1
  store i32 %102, ptr %1687, align 4, !tbaa !5
  %1688 = getelementptr inbounds %struct.closure_type, ptr %1681, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %1688, align 8, !tbaa !5
  %1689 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 3
  store i32 0, ptr %1689, align 8, !tbaa !5
  %1690 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 3, i32 1
  store i32 %102, ptr %1690, align 8, !tbaa !5
  %1691 = getelementptr inbounds %struct.word_type, ptr %1681, i64 0, i32 2
  %1692 = load i32, ptr %1691, align 8
  %1693 = and i32 %1692, -1610612737
  %1694 = or disjoint i32 %1693, 536870912
  store i32 %1694, ptr %1691, align 8
  %1695 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1696 = zext i8 %1695 to i32
  store i32 %1696, ptr @zz_size, align 4, !tbaa !10
  %1697 = zext i8 %1695 to i64
  %1698 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1697
  %1699 = load ptr, ptr %1698, align 8, !tbaa !8
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %1701, label %1704

1701:                                             ; preds = %1680
  %1702 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1703 = tail call ptr @GetMemory(i32 noundef %1696, ptr noundef %1702) #5
  br label %1706

1704:                                             ; preds = %1680
  store ptr %1699, ptr @zz_hold, align 8, !tbaa !8
  %1705 = load ptr, ptr %1699, align 8, !tbaa !5
  store ptr %1705, ptr %1698, align 8, !tbaa !8
  br label %1706

1706:                                             ; preds = %1701, %1704
  %1707 = phi ptr [ %1703, %1701 ], [ %1699, %1704 ]
  %1708 = getelementptr inbounds %struct.word_type, ptr %1707, i64 0, i32 1
  store i8 0, ptr %1708, align 8, !tbaa !5
  %1709 = getelementptr inbounds [2 x %struct.LIST], ptr %1707, i64 0, i64 1, i32 1
  store ptr %1707, ptr %1709, align 8, !tbaa !5
  %1710 = getelementptr inbounds [2 x %struct.LIST], ptr %1707, i64 0, i64 1
  store ptr %1707, ptr %1710, align 8, !tbaa !5
  %1711 = getelementptr inbounds %struct.LIST, ptr %1707, i64 0, i32 1
  store ptr %1707, ptr %1711, align 8, !tbaa !5
  store ptr %1707, ptr %1707, align 8, !tbaa !5
  store ptr %1707, ptr @xx_link, align 8, !tbaa !8
  store ptr %1707, ptr @zz_res, align 8, !tbaa !8
  store ptr %1681, ptr @zz_hold, align 8, !tbaa !8
  %1712 = load ptr, ptr %1681, align 8, !tbaa !5
  store ptr %1712, ptr @zz_tmp, align 8, !tbaa !8
  %1713 = load ptr, ptr %1707, align 8, !tbaa !5
  store ptr %1713, ptr %1681, align 8, !tbaa !5
  %1714 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1715 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1716 = load ptr, ptr %1715, align 8, !tbaa !5
  %1717 = getelementptr inbounds %struct.LIST, ptr %1716, i64 0, i32 1
  store ptr %1714, ptr %1717, align 8, !tbaa !5
  %1718 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1718, ptr %1715, align 8, !tbaa !5
  %1719 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1720 = getelementptr inbounds %struct.LIST, ptr %1718, i64 0, i32 1
  store ptr %1719, ptr %1720, align 8, !tbaa !5
  %1721 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1721, ptr @zz_res, align 8, !tbaa !8
  store ptr %1666, ptr @zz_hold, align 8, !tbaa !8
  %1722 = icmp eq ptr %1721, null
  br i1 %1722, label %1730, label %1723

1723:                                             ; preds = %1706
  %1724 = getelementptr inbounds [2 x %struct.LIST], ptr %1666, i64 0, i64 1
  %1725 = load ptr, ptr %1724, align 8, !tbaa !5
  store ptr %1725, ptr @zz_tmp, align 8, !tbaa !8
  %1726 = getelementptr inbounds [2 x %struct.LIST], ptr %1721, i64 0, i64 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !5
  store ptr %1727, ptr %1724, align 8, !tbaa !5
  %1728 = getelementptr inbounds [2 x %struct.LIST], ptr %1727, i64 0, i64 1, i32 1
  store ptr %1666, ptr %1728, align 8, !tbaa !5
  store ptr %1725, ptr %1726, align 8, !tbaa !5
  %1729 = getelementptr inbounds [2 x %struct.LIST], ptr %1725, i64 0, i64 1, i32 1
  store ptr %1721, ptr %1729, align 8, !tbaa !5
  br label %1730

1730:                                             ; preds = %1706, %1723
  %1731 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1732 = zext i8 %1731 to i32
  store i32 %1732, ptr @zz_size, align 4, !tbaa !10
  %1733 = zext i8 %1731 to i64
  %1734 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1733
  %1735 = load ptr, ptr %1734, align 8, !tbaa !8
  %1736 = icmp eq ptr %1735, null
  br i1 %1736, label %1737, label %1740

1737:                                             ; preds = %1730
  %1738 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1739 = tail call ptr @GetMemory(i32 noundef %1732, ptr noundef %1738) #5
  br label %1742

1740:                                             ; preds = %1730
  store ptr %1735, ptr @zz_hold, align 8, !tbaa !8
  %1741 = load ptr, ptr %1735, align 8, !tbaa !5
  store ptr %1741, ptr %1734, align 8, !tbaa !8
  br label %1742

1742:                                             ; preds = %1737, %1740
  %1743 = phi ptr [ %1739, %1737 ], [ %1735, %1740 ]
  %1744 = getelementptr inbounds %struct.word_type, ptr %1743, i64 0, i32 1
  store i8 0, ptr %1744, align 8, !tbaa !5
  %1745 = getelementptr inbounds [2 x %struct.LIST], ptr %1743, i64 0, i64 1, i32 1
  store ptr %1743, ptr %1745, align 8, !tbaa !5
  %1746 = getelementptr inbounds [2 x %struct.LIST], ptr %1743, i64 0, i64 1
  store ptr %1743, ptr %1746, align 8, !tbaa !5
  %1747 = getelementptr inbounds %struct.LIST, ptr %1743, i64 0, i32 1
  store ptr %1743, ptr %1747, align 8, !tbaa !5
  store ptr %1743, ptr %1743, align 8, !tbaa !5
  store ptr %1743, ptr @xx_link, align 8, !tbaa !8
  store ptr %1743, ptr @zz_res, align 8, !tbaa !8
  store ptr %1515, ptr @zz_hold, align 8, !tbaa !8
  %1748 = load ptr, ptr %1515, align 8, !tbaa !5
  store ptr %1748, ptr @zz_tmp, align 8, !tbaa !8
  %1749 = load ptr, ptr %1743, align 8, !tbaa !5
  store ptr %1749, ptr %1515, align 8, !tbaa !5
  %1750 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1751 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1752 = load ptr, ptr %1751, align 8, !tbaa !5
  %1753 = getelementptr inbounds %struct.LIST, ptr %1752, i64 0, i32 1
  store ptr %1750, ptr %1753, align 8, !tbaa !5
  %1754 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1754, ptr %1751, align 8, !tbaa !5
  %1755 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1756 = getelementptr inbounds %struct.LIST, ptr %1754, i64 0, i32 1
  store ptr %1755, ptr %1756, align 8, !tbaa !5
  %1757 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1757, ptr @zz_res, align 8, !tbaa !8
  store ptr %1681, ptr @zz_hold, align 8, !tbaa !8
  %1758 = icmp eq ptr %1757, null
  br i1 %1758, label %1765, label %1759

1759:                                             ; preds = %1742
  %1760 = load ptr, ptr %1683, align 8, !tbaa !5
  store ptr %1760, ptr @zz_tmp, align 8, !tbaa !8
  %1761 = getelementptr inbounds [2 x %struct.LIST], ptr %1757, i64 0, i64 1
  %1762 = load ptr, ptr %1761, align 8, !tbaa !5
  store ptr %1762, ptr %1683, align 8, !tbaa !5
  %1763 = getelementptr inbounds [2 x %struct.LIST], ptr %1762, i64 0, i64 1, i32 1
  store ptr %1681, ptr %1763, align 8, !tbaa !5
  store ptr %1760, ptr %1761, align 8, !tbaa !5
  %1764 = getelementptr inbounds [2 x %struct.LIST], ptr %1760, i64 0, i64 1, i32 1
  store ptr %1757, ptr %1764, align 8, !tbaa !5
  br label %1765

1765:                                             ; preds = %1742, %1759
  %1766 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %1767 = zext i8 %1766 to i32
  store i32 %1767, ptr @zz_size, align 4, !tbaa !10
  %1768 = zext i8 %1766 to i64
  %1769 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1768
  %1770 = load ptr, ptr %1769, align 8, !tbaa !8
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1772, label %1775

1772:                                             ; preds = %1765
  %1773 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1774 = tail call ptr @GetMemory(i32 noundef %1767, ptr noundef %1773) #5
  store ptr %1774, ptr @zz_hold, align 8, !tbaa !8
  br label %1777

1775:                                             ; preds = %1765
  store ptr %1770, ptr @zz_hold, align 8, !tbaa !8
  %1776 = load ptr, ptr %1770, align 8, !tbaa !5
  store ptr %1776, ptr %1769, align 8, !tbaa !8
  br label %1777

1777:                                             ; preds = %1772, %1775
  %1778 = phi ptr [ %1774, %1772 ], [ %1770, %1775 ]
  %1779 = getelementptr inbounds %struct.word_type, ptr %1778, i64 0, i32 1
  store i8 1, ptr %1779, align 8, !tbaa !5
  %1780 = getelementptr inbounds [2 x %struct.LIST], ptr %1778, i64 0, i64 1
  %1781 = getelementptr inbounds [2 x %struct.LIST], ptr %1778, i64 0, i64 1, i32 1
  store ptr %1778, ptr %1781, align 8, !tbaa !5
  store ptr %1778, ptr %1780, align 8, !tbaa !5
  %1782 = getelementptr inbounds %struct.LIST, ptr %1778, i64 0, i32 1
  store ptr %1778, ptr %1782, align 8, !tbaa !5
  store ptr %1778, ptr %1778, align 8, !tbaa !5
  %1783 = getelementptr inbounds i8, ptr %1778, i64 42
  store i8 0, ptr %1783, align 2, !tbaa !5
  %1784 = getelementptr inbounds i8, ptr %1778, i64 41
  store i8 0, ptr %1784, align 1, !tbaa !5
  %1785 = getelementptr inbounds %struct.gapobj_type, ptr %1778, i64 0, i32 3
  %1786 = load i16, ptr %1785, align 4
  %1787 = and i16 %1786, 127
  %1788 = or disjoint i16 %1787, 9856
  store i16 %1788, ptr %1785, align 4
  %1789 = getelementptr inbounds %struct.gapobj_type, ptr %1778, i64 0, i32 3, i32 1
  store i16 0, ptr %1789, align 2, !tbaa !5
  %1790 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1791 = zext i8 %1790 to i32
  store i32 %1791, ptr @zz_size, align 4, !tbaa !10
  %1792 = zext i8 %1790 to i64
  %1793 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1792
  %1794 = load ptr, ptr %1793, align 8, !tbaa !8
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1796, label %1799

1796:                                             ; preds = %1777
  %1797 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1798 = tail call ptr @GetMemory(i32 noundef %1791, ptr noundef %1797) #5
  br label %1801

1799:                                             ; preds = %1777
  store ptr %1794, ptr @zz_hold, align 8, !tbaa !8
  %1800 = load ptr, ptr %1794, align 8, !tbaa !5
  store ptr %1800, ptr %1793, align 8, !tbaa !8
  br label %1801

1801:                                             ; preds = %1796, %1799
  %1802 = phi ptr [ %1798, %1796 ], [ %1794, %1799 ]
  %1803 = getelementptr inbounds %struct.word_type, ptr %1802, i64 0, i32 1
  store i8 0, ptr %1803, align 8, !tbaa !5
  %1804 = getelementptr inbounds [2 x %struct.LIST], ptr %1802, i64 0, i64 1, i32 1
  store ptr %1802, ptr %1804, align 8, !tbaa !5
  %1805 = getelementptr inbounds [2 x %struct.LIST], ptr %1802, i64 0, i64 1
  store ptr %1802, ptr %1805, align 8, !tbaa !5
  %1806 = getelementptr inbounds %struct.LIST, ptr %1802, i64 0, i32 1
  store ptr %1802, ptr %1806, align 8, !tbaa !5
  store ptr %1802, ptr %1802, align 8, !tbaa !5
  store ptr %1802, ptr @xx_link, align 8, !tbaa !8
  store ptr %1802, ptr @zz_res, align 8, !tbaa !8
  store ptr %1515, ptr @zz_hold, align 8, !tbaa !8
  %1807 = load ptr, ptr %1515, align 8, !tbaa !5
  store ptr %1807, ptr @zz_tmp, align 8, !tbaa !8
  %1808 = load ptr, ptr %1802, align 8, !tbaa !5
  store ptr %1808, ptr %1515, align 8, !tbaa !5
  %1809 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1810 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1811 = load ptr, ptr %1810, align 8, !tbaa !5
  %1812 = getelementptr inbounds %struct.LIST, ptr %1811, i64 0, i32 1
  store ptr %1809, ptr %1812, align 8, !tbaa !5
  %1813 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1813, ptr %1810, align 8, !tbaa !5
  %1814 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1815 = getelementptr inbounds %struct.LIST, ptr %1813, i64 0, i32 1
  store ptr %1814, ptr %1815, align 8, !tbaa !5
  %1816 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1816, ptr @zz_res, align 8, !tbaa !8
  store ptr %1778, ptr @zz_hold, align 8, !tbaa !8
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1824, label %1818

1818:                                             ; preds = %1801
  %1819 = load ptr, ptr %1780, align 8, !tbaa !5
  store ptr %1819, ptr @zz_tmp, align 8, !tbaa !8
  %1820 = getelementptr inbounds [2 x %struct.LIST], ptr %1816, i64 0, i64 1
  %1821 = load ptr, ptr %1820, align 8, !tbaa !5
  store ptr %1821, ptr %1780, align 8, !tbaa !5
  %1822 = getelementptr inbounds [2 x %struct.LIST], ptr %1821, i64 0, i64 1, i32 1
  store ptr %1778, ptr %1822, align 8, !tbaa !5
  store ptr %1819, ptr %1820, align 8, !tbaa !5
  %1823 = getelementptr inbounds [2 x %struct.LIST], ptr %1819, i64 0, i64 1, i32 1
  store ptr %1816, ptr %1823, align 8, !tbaa !5
  br label %1824

1824:                                             ; preds = %1659, %1818, %1801
  %1825 = getelementptr inbounds %struct.LIST, ptr %1502, i64 0, i32 1
  %1826 = load ptr, ptr %1825, align 8, !tbaa !5
  %1827 = icmp eq ptr %1826, %393
  br i1 %1827, label %1854, label %1828

1828:                                             ; preds = %1824
  %1829 = getelementptr inbounds %struct.word_type, ptr %1826, i64 0, i32 1
  %1830 = load i8, ptr %1829, align 8, !tbaa !5
  %1831 = icmp eq i8 %1830, 0
  br i1 %1831, label %1835, label %1832

1832:                                             ; preds = %1828
  %1833 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1834 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1833, ptr noundef nonnull @.str.21) #5
  br label %1835

1835:                                             ; preds = %1832, %1828
  store ptr %1826, ptr @zz_res, align 8, !tbaa !8
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %1836 = load ptr, ptr %393, align 8, !tbaa !5
  store ptr %1836, ptr @zz_tmp, align 8, !tbaa !8
  %1837 = load ptr, ptr %1826, align 8, !tbaa !5
  store ptr %1837, ptr %393, align 8, !tbaa !5
  %1838 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1839 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1840 = load ptr, ptr %1839, align 8, !tbaa !5
  %1841 = getelementptr inbounds %struct.LIST, ptr %1840, i64 0, i32 1
  store ptr %1838, ptr %1841, align 8, !tbaa !5
  %1842 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1842, ptr %1839, align 8, !tbaa !5
  %1843 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1844 = getelementptr inbounds %struct.LIST, ptr %1842, i64 0, i32 1
  store ptr %1843, ptr %1844, align 8, !tbaa !5
  store ptr %1826, ptr @zz_res, align 8, !tbaa !8
  store ptr %1515, ptr @zz_hold, align 8, !tbaa !8
  %1845 = load ptr, ptr %1515, align 8, !tbaa !5
  store ptr %1845, ptr @zz_tmp, align 8, !tbaa !8
  %1846 = load ptr, ptr %1826, align 8, !tbaa !5
  store ptr %1846, ptr %1515, align 8, !tbaa !5
  %1847 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1848 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1849 = load ptr, ptr %1848, align 8, !tbaa !5
  %1850 = getelementptr inbounds %struct.LIST, ptr %1849, i64 0, i32 1
  store ptr %1847, ptr %1850, align 8, !tbaa !5
  %1851 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1851, ptr %1848, align 8, !tbaa !5
  %1852 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1853 = getelementptr inbounds %struct.LIST, ptr %1851, i64 0, i32 1
  store ptr %1852, ptr %1853, align 8, !tbaa !5
  br label %1854

1854:                                             ; preds = %1835, %1824
  br label %1855

1855:                                             ; preds = %1854, %1855
  %1856 = phi ptr [ %1858, %1855 ], [ %1502, %1854 ]
  %1857 = getelementptr inbounds [2 x %struct.LIST], ptr %1856, i64 0, i64 1
  %1858 = load ptr, ptr %1857, align 8, !tbaa !5
  %1859 = getelementptr inbounds %struct.word_type, ptr %1858, i64 0, i32 1
  %1860 = load i8, ptr %1859, align 8, !tbaa !5
  %1861 = icmp eq i8 %1860, 0
  br i1 %1861, label %1855, label %1862

1862:                                             ; preds = %1855
  %1863 = getelementptr inbounds %struct.gapobj_type, ptr %1858, i64 0, i32 3
  %1864 = load i16, ptr %1863, align 4
  %1865 = icmp ugt i16 %1864, -8193
  br i1 %1865, label %1866, label %2004

1866:                                             ; preds = %1862
  %1867 = load ptr, ptr %393, align 8, !tbaa !5
  br label %1868

1868:                                             ; preds = %1868, %1866
  %1869 = phi ptr [ %1867, %1866 ], [ %1871, %1868 ]
  %1870 = getelementptr inbounds [2 x %struct.LIST], ptr %1869, i64 0, i64 1
  %1871 = load ptr, ptr %1870, align 8, !tbaa !5
  %1872 = getelementptr inbounds %struct.word_type, ptr %1871, i64 0, i32 1
  %1873 = load i8, ptr %1872, align 8, !tbaa !5
  %1874 = icmp eq i8 %1873, 0
  br i1 %1874, label %1868, label %1875

1875:                                             ; preds = %1868
  %1876 = getelementptr inbounds %struct.word_type, ptr %1871, i64 0, i32 2
  %1877 = load i32, ptr %1876, align 8
  %1878 = and i32 %1877, 1610612736
  %1879 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %1880 = zext i8 %1879 to i32
  store i32 %1880, ptr @zz_size, align 4, !tbaa !10
  %1881 = zext i8 %1879 to i64
  %1882 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1881
  %1883 = load ptr, ptr %1882, align 8, !tbaa !8
  %1884 = icmp eq ptr %1883, null
  br i1 %1884, label %1885, label %1888

1885:                                             ; preds = %1875
  %1886 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1887 = tail call ptr @GetMemory(i32 noundef %1880, ptr noundef %1886) #5
  store ptr %1887, ptr @zz_hold, align 8, !tbaa !8
  br label %1890

1888:                                             ; preds = %1875
  store ptr %1883, ptr @zz_hold, align 8, !tbaa !8
  %1889 = load ptr, ptr %1883, align 8, !tbaa !5
  store ptr %1889, ptr %1882, align 8, !tbaa !8
  br label %1890

1890:                                             ; preds = %1885, %1888
  %1891 = phi ptr [ %1887, %1885 ], [ %1883, %1888 ]
  %1892 = getelementptr inbounds %struct.word_type, ptr %1891, i64 0, i32 1
  store i8 1, ptr %1892, align 8, !tbaa !5
  %1893 = getelementptr inbounds [2 x %struct.LIST], ptr %1891, i64 0, i64 1
  %1894 = getelementptr inbounds [2 x %struct.LIST], ptr %1891, i64 0, i64 1, i32 1
  store ptr %1891, ptr %1894, align 8, !tbaa !5
  store ptr %1891, ptr %1893, align 8, !tbaa !5
  %1895 = getelementptr inbounds %struct.LIST, ptr %1891, i64 0, i32 1
  store ptr %1891, ptr %1895, align 8, !tbaa !5
  store ptr %1891, ptr %1891, align 8, !tbaa !5
  %1896 = getelementptr inbounds %struct.word_type, ptr %1891, i64 0, i32 2
  %1897 = getelementptr inbounds i8, ptr %1891, i64 42
  store i8 0, ptr %1897, align 2, !tbaa !5
  %1898 = getelementptr inbounds i8, ptr %1891, i64 41
  store i8 0, ptr %1898, align 1, !tbaa !5
  %1899 = load i32, ptr %1896, align 8
  %1900 = and i32 %1899, -1610612737
  %1901 = or disjoint i32 %1900, %1878
  store i32 %1901, ptr %1896, align 8
  %1902 = getelementptr inbounds %struct.gapobj_type, ptr %1891, i64 0, i32 3
  %1903 = load i16, ptr %1902, align 4
  %1904 = and i16 %1903, 127
  %1905 = or disjoint i16 %1904, 9856
  store i16 %1905, ptr %1902, align 4
  %1906 = getelementptr inbounds %struct.gapobj_type, ptr %1891, i64 0, i32 3, i32 1
  store i16 0, ptr %1906, align 2, !tbaa !5
  %1907 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1908 = zext i8 %1907 to i32
  store i32 %1908, ptr @zz_size, align 4, !tbaa !10
  %1909 = zext i8 %1907 to i64
  %1910 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1909
  %1911 = load ptr, ptr %1910, align 8, !tbaa !8
  %1912 = icmp eq ptr %1911, null
  br i1 %1912, label %1913, label %1916

1913:                                             ; preds = %1890
  %1914 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1915 = tail call ptr @GetMemory(i32 noundef %1908, ptr noundef %1914) #5
  br label %1918

1916:                                             ; preds = %1890
  store ptr %1911, ptr @zz_hold, align 8, !tbaa !8
  %1917 = load ptr, ptr %1911, align 8, !tbaa !5
  store ptr %1917, ptr %1910, align 8, !tbaa !8
  br label %1918

1918:                                             ; preds = %1913, %1916
  %1919 = phi ptr [ %1915, %1913 ], [ %1911, %1916 ]
  %1920 = getelementptr inbounds %struct.word_type, ptr %1919, i64 0, i32 1
  store i8 0, ptr %1920, align 8, !tbaa !5
  %1921 = getelementptr inbounds [2 x %struct.LIST], ptr %1919, i64 0, i64 1, i32 1
  store ptr %1919, ptr %1921, align 8, !tbaa !5
  %1922 = getelementptr inbounds [2 x %struct.LIST], ptr %1919, i64 0, i64 1
  store ptr %1919, ptr %1922, align 8, !tbaa !5
  %1923 = getelementptr inbounds %struct.LIST, ptr %1919, i64 0, i32 1
  store ptr %1919, ptr %1923, align 8, !tbaa !5
  store ptr %1919, ptr %1919, align 8, !tbaa !5
  store ptr %1919, ptr @xx_link, align 8, !tbaa !8
  store ptr %1919, ptr @zz_res, align 8, !tbaa !8
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %1924 = load ptr, ptr %393, align 8, !tbaa !5
  store ptr %1924, ptr @zz_tmp, align 8, !tbaa !8
  %1925 = load ptr, ptr %1919, align 8, !tbaa !5
  store ptr %1925, ptr %393, align 8, !tbaa !5
  %1926 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1927 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1928 = load ptr, ptr %1927, align 8, !tbaa !5
  %1929 = getelementptr inbounds %struct.LIST, ptr %1928, i64 0, i32 1
  store ptr %1926, ptr %1929, align 8, !tbaa !5
  %1930 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1930, ptr %1927, align 8, !tbaa !5
  %1931 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1932 = getelementptr inbounds %struct.LIST, ptr %1930, i64 0, i32 1
  store ptr %1931, ptr %1932, align 8, !tbaa !5
  %1933 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1933, ptr @zz_res, align 8, !tbaa !8
  store ptr %1891, ptr @zz_hold, align 8, !tbaa !8
  %1934 = icmp eq ptr %1933, null
  br i1 %1934, label %1941, label %1935

1935:                                             ; preds = %1918
  %1936 = load ptr, ptr %1893, align 8, !tbaa !5
  store ptr %1936, ptr @zz_tmp, align 8, !tbaa !8
  %1937 = getelementptr inbounds [2 x %struct.LIST], ptr %1933, i64 0, i64 1
  %1938 = load ptr, ptr %1937, align 8, !tbaa !5
  store ptr %1938, ptr %1893, align 8, !tbaa !5
  %1939 = getelementptr inbounds [2 x %struct.LIST], ptr %1938, i64 0, i64 1, i32 1
  store ptr %1891, ptr %1939, align 8, !tbaa !5
  store ptr %1936, ptr %1937, align 8, !tbaa !5
  %1940 = getelementptr inbounds [2 x %struct.LIST], ptr %1936, i64 0, i64 1, i32 1
  store ptr %1933, ptr %1940, align 8, !tbaa !5
  br label %1941

1941:                                             ; preds = %1918, %1935
  %1942 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.11, ptr noundef nonnull %1516) #5
  %1943 = load i32, ptr %658, align 4
  %1944 = and i32 %1943, 4095
  %1945 = getelementptr inbounds %struct.word_type, ptr %1942, i64 0, i32 2
  %1946 = load i32, ptr %1945, align 8
  %1947 = and i32 %1946, -4096
  %1948 = or disjoint i32 %1947, %1944
  store i32 %1948, ptr %1945, align 8
  %1949 = load i32, ptr %658, align 4
  %1950 = and i32 %1949, 4190208
  %1951 = and i32 %1948, -4190209
  %1952 = or disjoint i32 %1951, %1950
  store i32 %1952, ptr %1945, align 8
  %1953 = load i32, ptr %658, align 4
  %1954 = and i32 %1953, 4194304
  %1955 = and i32 %1952, -4194305
  %1956 = or disjoint i32 %1955, %1954
  store i32 %1956, ptr %1945, align 8
  %1957 = load i32, ptr %658, align 4
  %1958 = lshr i32 %1957, 1
  %1959 = and i32 %1958, 528482304
  %1960 = and i32 %1956, -528482305
  %1961 = or disjoint i32 %1959, %1960
  store i32 %1961, ptr %1945, align 8
  %1962 = load i8, ptr %659, align 4
  %1963 = and i8 %1962, 3
  %1964 = icmp eq i8 %1963, 2
  %1965 = select i1 %1964, i32 -2147483648, i32 0
  %1966 = and i32 %1961, 536870911
  %1967 = or disjoint i32 %1966, %1965
  %1968 = or disjoint i32 %1967, %1878
  store i32 %1968, ptr %1945, align 8
  tail call void @FontWordSize(ptr noundef %1942) #5
  %1969 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1970 = zext i8 %1969 to i32
  store i32 %1970, ptr @zz_size, align 4, !tbaa !10
  %1971 = zext i8 %1969 to i64
  %1972 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1971
  %1973 = load ptr, ptr %1972, align 8, !tbaa !8
  %1974 = icmp eq ptr %1973, null
  br i1 %1974, label %1975, label %1978

1975:                                             ; preds = %1941
  %1976 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1977 = tail call ptr @GetMemory(i32 noundef %1970, ptr noundef %1976) #5
  br label %1980

1978:                                             ; preds = %1941
  store ptr %1973, ptr @zz_hold, align 8, !tbaa !8
  %1979 = load ptr, ptr %1973, align 8, !tbaa !5
  store ptr %1979, ptr %1972, align 8, !tbaa !8
  br label %1980

1980:                                             ; preds = %1975, %1978
  %1981 = phi ptr [ %1977, %1975 ], [ %1973, %1978 ]
  %1982 = getelementptr inbounds %struct.word_type, ptr %1981, i64 0, i32 1
  store i8 0, ptr %1982, align 8, !tbaa !5
  %1983 = getelementptr inbounds [2 x %struct.LIST], ptr %1981, i64 0, i64 1, i32 1
  store ptr %1981, ptr %1983, align 8, !tbaa !5
  %1984 = getelementptr inbounds [2 x %struct.LIST], ptr %1981, i64 0, i64 1
  store ptr %1981, ptr %1984, align 8, !tbaa !5
  %1985 = getelementptr inbounds %struct.LIST, ptr %1981, i64 0, i32 1
  store ptr %1981, ptr %1985, align 8, !tbaa !5
  store ptr %1981, ptr %1981, align 8, !tbaa !5
  store ptr %1981, ptr @xx_link, align 8, !tbaa !8
  store ptr %1981, ptr @zz_res, align 8, !tbaa !8
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %1986 = load ptr, ptr %393, align 8, !tbaa !5
  store ptr %1986, ptr @zz_tmp, align 8, !tbaa !8
  %1987 = load ptr, ptr %1981, align 8, !tbaa !5
  store ptr %1987, ptr %393, align 8, !tbaa !5
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
  store ptr %1942, ptr @zz_hold, align 8, !tbaa !8
  %1996 = icmp eq ptr %1995, null
  br i1 %1996, label %2004, label %1997

1997:                                             ; preds = %1980
  %1998 = getelementptr inbounds [2 x %struct.LIST], ptr %1942, i64 0, i64 1
  %1999 = load ptr, ptr %1998, align 8, !tbaa !5
  store ptr %1999, ptr @zz_tmp, align 8, !tbaa !8
  %2000 = getelementptr inbounds [2 x %struct.LIST], ptr %1995, i64 0, i64 1
  %2001 = load ptr, ptr %2000, align 8, !tbaa !5
  store ptr %2001, ptr %1998, align 8, !tbaa !5
  %2002 = getelementptr inbounds [2 x %struct.LIST], ptr %2001, i64 0, i64 1, i32 1
  store ptr %1942, ptr %2002, align 8, !tbaa !5
  store ptr %1999, ptr %2000, align 8, !tbaa !5
  %2003 = getelementptr inbounds [2 x %struct.LIST], ptr %1999, i64 0, i64 1, i32 1
  store ptr %1995, ptr %2003, align 8, !tbaa !5
  br label %2004

2004:                                             ; preds = %1997, %1980, %1862
  %2005 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2006 = zext i8 %2005 to i32
  store i32 %2006, ptr @zz_size, align 4, !tbaa !10
  %2007 = zext i8 %2005 to i64
  %2008 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2007
  %2009 = load ptr, ptr %2008, align 8, !tbaa !8
  %2010 = icmp eq ptr %2009, null
  br i1 %2010, label %2011, label %2014

2011:                                             ; preds = %2004
  %2012 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2013 = tail call ptr @GetMemory(i32 noundef %2006, ptr noundef %2012) #5
  br label %2016

2014:                                             ; preds = %2004
  store ptr %2009, ptr @zz_hold, align 8, !tbaa !8
  %2015 = load ptr, ptr %2009, align 8, !tbaa !5
  store ptr %2015, ptr %2008, align 8, !tbaa !8
  br label %2016

2016:                                             ; preds = %2011, %2014
  %2017 = phi ptr [ %2013, %2011 ], [ %2009, %2014 ]
  %2018 = getelementptr inbounds %struct.word_type, ptr %2017, i64 0, i32 1
  store i8 0, ptr %2018, align 8, !tbaa !5
  %2019 = getelementptr inbounds [2 x %struct.LIST], ptr %2017, i64 0, i64 1, i32 1
  store ptr %2017, ptr %2019, align 8, !tbaa !5
  %2020 = getelementptr inbounds [2 x %struct.LIST], ptr %2017, i64 0, i64 1
  store ptr %2017, ptr %2020, align 8, !tbaa !5
  %2021 = getelementptr inbounds %struct.LIST, ptr %2017, i64 0, i32 1
  store ptr %2017, ptr %2021, align 8, !tbaa !5
  store ptr %2017, ptr %2017, align 8, !tbaa !5
  store ptr %2017, ptr @xx_link, align 8, !tbaa !8
  store ptr %2017, ptr @zz_res, align 8, !tbaa !8
  %2022 = load ptr, ptr %1475, align 8, !tbaa !5
  store ptr %2022, ptr @zz_hold, align 8, !tbaa !8
  %2023 = icmp eq ptr %2022, null
  br i1 %2023, label %2039, label %2024

2024:                                             ; preds = %2016
  %2025 = load ptr, ptr %2022, align 8, !tbaa !5
  store ptr %2025, ptr @zz_tmp, align 8, !tbaa !8
  %2026 = load ptr, ptr %2017, align 8, !tbaa !5
  store ptr %2026, ptr %2022, align 8, !tbaa !5
  %2027 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2028 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2029 = load ptr, ptr %2028, align 8, !tbaa !5
  %2030 = getelementptr inbounds %struct.LIST, ptr %2029, i64 0, i32 1
  store ptr %2027, ptr %2030, align 8, !tbaa !5
  %2031 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2031, ptr %2028, align 8, !tbaa !5
  %2032 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2033 = getelementptr inbounds %struct.LIST, ptr %2031, i64 0, i32 1
  store ptr %2032, ptr %2033, align 8, !tbaa !5
  %2034 = load ptr, ptr @xx_link, align 8, !tbaa !8
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2047, label %2036

2036:                                             ; preds = %2024
  %2037 = getelementptr inbounds [2 x %struct.LIST], ptr %2034, i64 0, i64 1
  %2038 = load ptr, ptr %2037, align 8, !tbaa !5
  br label %2039

2039:                                             ; preds = %2016, %2036
  %2040 = phi ptr [ %2038, %2036 ], [ %2017, %2016 ]
  %2041 = phi ptr [ %2034, %2036 ], [ %2017, %2016 ]
  %2042 = load ptr, ptr %1517, align 8, !tbaa !5
  store ptr %2042, ptr @zz_tmp, align 8, !tbaa !8
  %2043 = getelementptr inbounds [2 x %struct.LIST], ptr %2041, i64 0, i64 1
  store ptr %2040, ptr %1517, align 8, !tbaa !5
  %2044 = load ptr, ptr %2043, align 8, !tbaa !5
  %2045 = getelementptr inbounds [2 x %struct.LIST], ptr %2044, i64 0, i64 1, i32 1
  store ptr %1515, ptr %2045, align 8, !tbaa !5
  store ptr %2042, ptr %2043, align 8, !tbaa !5
  %2046 = getelementptr inbounds [2 x %struct.LIST], ptr %2042, i64 0, i64 1, i32 1
  store ptr %2041, ptr %2046, align 8, !tbaa !5
  br label %2047

2047:                                             ; preds = %2024, %2039
  store ptr %1502, ptr @xx_link, align 8, !tbaa !8
  store ptr %1502, ptr @zz_hold, align 8, !tbaa !8
  %2048 = load ptr, ptr %1825, align 8, !tbaa !5
  %2049 = icmp eq ptr %2048, %1502
  br i1 %2049, label %2058, label %2050

2050:                                             ; preds = %2047
  store ptr %2048, ptr @zz_res, align 8, !tbaa !8
  %2051 = load ptr, ptr %1502, align 8, !tbaa !5
  store ptr %2051, ptr %2048, align 8, !tbaa !5
  %2052 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2053 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2054 = load ptr, ptr %2053, align 8, !tbaa !5
  %2055 = getelementptr inbounds %struct.LIST, ptr %2054, i64 0, i32 1
  store ptr %2052, ptr %2055, align 8, !tbaa !5
  %2056 = getelementptr inbounds %struct.LIST, ptr %2053, i64 0, i32 1
  store ptr %2053, ptr %2056, align 8, !tbaa !5
  store ptr %2053, ptr %2053, align 8, !tbaa !5
  %2057 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2058

2058:                                             ; preds = %2047, %2050
  %2059 = phi ptr [ %1502, %2047 ], [ %2057, %2050 ]
  store ptr %2059, ptr @zz_res, align 8, !tbaa !8
  %2060 = load ptr, ptr %1475, align 8, !tbaa !5
  store ptr %2060, ptr @zz_hold, align 8, !tbaa !8
  %2061 = icmp eq ptr %2060, null
  %2062 = icmp eq ptr %2059, null
  %2063 = select i1 %2061, i1 true, i1 %2062
  br i1 %2063, label %2074, label %2064

2064:                                             ; preds = %2058
  %2065 = load ptr, ptr %2060, align 8, !tbaa !5
  store ptr %2065, ptr @zz_tmp, align 8, !tbaa !8
  %2066 = load ptr, ptr %2059, align 8, !tbaa !5
  store ptr %2066, ptr %2060, align 8, !tbaa !5
  %2067 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2068 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2069 = load ptr, ptr %2068, align 8, !tbaa !5
  %2070 = getelementptr inbounds %struct.LIST, ptr %2069, i64 0, i32 1
  store ptr %2067, ptr %2070, align 8, !tbaa !5
  %2071 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2071, ptr %2068, align 8, !tbaa !5
  %2072 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2073 = getelementptr inbounds %struct.LIST, ptr %2071, i64 0, i32 1
  store ptr %2072, ptr %2073, align 8, !tbaa !5
  br label %2074

2074:                                             ; preds = %2058, %2064
  %2075 = getelementptr inbounds i8, ptr %1858, i64 41
  store i8 0, ptr %2075, align 1, !tbaa !5
  %2076 = getelementptr inbounds i8, ptr %1858, i64 42
  store i8 1, ptr %2076, align 2, !tbaa !5
  %2077 = load i16, ptr %1496, align 8
  %2078 = and i16 %2077, 128
  %2079 = load i16, ptr %1863, align 4
  %2080 = and i16 %2079, -129
  %2081 = or disjoint i16 %2080, %2078
  store i16 %2081, ptr %1863, align 4
  %2082 = load i16, ptr %1496, align 8
  %2083 = and i16 %2082, 256
  %2084 = and i16 %2081, -257
  %2085 = or disjoint i16 %2084, %2083
  store i16 %2085, ptr %1863, align 4
  %2086 = load i16, ptr %1496, align 8
  %2087 = and i16 %2086, 512
  %2088 = and i16 %2085, -513
  %2089 = or disjoint i16 %2088, %2087
  store i16 %2089, ptr %1863, align 4
  %2090 = load i16, ptr %1496, align 8
  %2091 = and i16 %2090, 7168
  %2092 = and i16 %2089, -7169
  %2093 = or disjoint i16 %2092, %2091
  store i16 %2093, ptr %1863, align 4
  %2094 = load i16, ptr %1496, align 8
  %2095 = and i16 %2094, -8192
  %2096 = and i16 %2093, 8191
  %2097 = or disjoint i16 %2096, %2095
  store i16 %2097, ptr %1863, align 4
  %2098 = load i16, ptr %1497, align 2, !tbaa !5
  %2099 = getelementptr inbounds %struct.gapobj_type, ptr %1858, i64 0, i32 3, i32 1
  store i16 %2098, ptr %2099, align 2, !tbaa !5
  %2100 = getelementptr inbounds %struct.LIST, ptr %1858, i64 0, i32 1
  %2101 = load ptr, ptr %2100, align 8, !tbaa !5
  %2102 = icmp eq ptr %2101, %1858
  br i1 %2102, label %2150, label %2103

2103:                                             ; preds = %2074
  store ptr %2101, ptr @xx_link, align 8, !tbaa !8
  %2104 = getelementptr inbounds [2 x %struct.LIST], ptr %2101, i64 0, i64 1, i32 1
  %2105 = load ptr, ptr %2104, align 8, !tbaa !5
  %2106 = icmp eq ptr %2105, %2101
  br i1 %2106, label %2112, label %2107

2107:                                             ; preds = %2103
  store ptr %2105, ptr @zz_res, align 8, !tbaa !8
  %2108 = getelementptr inbounds [2 x %struct.LIST], ptr %2101, i64 0, i64 1
  %2109 = load ptr, ptr %2108, align 8, !tbaa !5
  %2110 = getelementptr inbounds [2 x %struct.LIST], ptr %2105, i64 0, i64 1
  store ptr %2109, ptr %2110, align 8, !tbaa !5
  %2111 = getelementptr inbounds [2 x %struct.LIST], ptr %2109, i64 0, i64 1, i32 1
  store ptr %2105, ptr %2111, align 8, !tbaa !5
  store ptr %2101, ptr %2104, align 8, !tbaa !5
  store ptr %2101, ptr %2108, align 8, !tbaa !5
  br label %2112

2112:                                             ; preds = %2103, %2107
  %2113 = phi ptr [ %2105, %2107 ], [ null, %2103 ]
  store ptr %2113, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2101, ptr @zz_hold, align 8, !tbaa !8
  %2114 = getelementptr inbounds %struct.LIST, ptr %2101, i64 0, i32 1
  %2115 = load ptr, ptr %2114, align 8, !tbaa !5
  %2116 = icmp eq ptr %2115, %2101
  br i1 %2116, label %2125, label %2117

2117:                                             ; preds = %2112
  store ptr %2115, ptr @zz_res, align 8, !tbaa !8
  %2118 = load ptr, ptr %2101, align 8, !tbaa !5
  store ptr %2118, ptr %2115, align 8, !tbaa !5
  %2119 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2120 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2121 = load ptr, ptr %2120, align 8, !tbaa !5
  %2122 = getelementptr inbounds %struct.LIST, ptr %2121, i64 0, i32 1
  store ptr %2119, ptr %2122, align 8, !tbaa !5
  %2123 = getelementptr inbounds %struct.LIST, ptr %2120, i64 0, i32 1
  store ptr %2120, ptr %2123, align 8, !tbaa !5
  store ptr %2120, ptr %2120, align 8, !tbaa !5
  %2124 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2125

2125:                                             ; preds = %2112, %2117
  %2126 = phi ptr [ %2101, %2112 ], [ %2124, %2117 ]
  store ptr %2126, ptr @zz_hold, align 8, !tbaa !8
  %2127 = getelementptr inbounds %struct.word_type, ptr %2126, i64 0, i32 1
  %2128 = load i8, ptr %2127, align 8, !tbaa !5
  %2129 = add i8 %2128, -11
  %2130 = icmp ult i8 %2129, 2
  %2131 = getelementptr inbounds %struct.word_type, ptr %2126, i64 0, i32 1, i32 0, i32 1
  %2132 = zext i8 %2128 to i64
  %2133 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2132
  %2134 = select i1 %2130, ptr %2131, ptr %2133
  %2135 = load i8, ptr %2134, align 1, !tbaa !5
  %2136 = zext i8 %2135 to i32
  store i32 %2136, ptr @zz_size, align 4, !tbaa !10
  %2137 = zext i8 %2135 to i64
  %2138 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2137
  %2139 = load ptr, ptr %2138, align 8, !tbaa !8
  store ptr %2139, ptr %2126, align 8, !tbaa !5
  %2140 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2141 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2142 = sext i32 %2141 to i64
  %2143 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2142
  store ptr %2140, ptr %2143, align 8, !tbaa !8
  %2144 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2145 = getelementptr inbounds [2 x %struct.LIST], ptr %2144, i64 0, i64 1, i32 1
  %2146 = load ptr, ptr %2145, align 8, !tbaa !5
  %2147 = icmp eq ptr %2146, %2144
  br i1 %2147, label %2148, label %2150

2148:                                             ; preds = %2125
  %2149 = tail call i32 @DisposeObject(ptr noundef nonnull %2144) #5
  br label %2150

2150:                                             ; preds = %2125, %2148, %2074
  %2151 = getelementptr inbounds %struct.gapobj_type, ptr %1858, i64 0, i32 7
  %2152 = load ptr, ptr %2151, align 8, !tbaa !5
  %2153 = icmp eq ptr %2152, %393
  br i1 %2153, label %2154, label %1501

2154:                                             ; preds = %2150
  %2155 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2156 = zext i8 %2155 to i32
  store i32 %2156, ptr @zz_size, align 4, !tbaa !10
  %2157 = zext i8 %2155 to i64
  %2158 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2157
  %2159 = load ptr, ptr %2158, align 8, !tbaa !8
  %2160 = icmp eq ptr %2159, null
  br i1 %2160, label %2161, label %2164

2161:                                             ; preds = %2154
  %2162 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2163 = tail call ptr @GetMemory(i32 noundef %2156, ptr noundef %2162) #5
  br label %2166

2164:                                             ; preds = %2154
  store ptr %2159, ptr @zz_hold, align 8, !tbaa !8
  %2165 = load ptr, ptr %2159, align 8, !tbaa !5
  store ptr %2165, ptr %2158, align 8, !tbaa !8
  br label %2166

2166:                                             ; preds = %2161, %2164
  %2167 = phi ptr [ %2163, %2161 ], [ %2159, %2164 ]
  %2168 = getelementptr inbounds %struct.word_type, ptr %2167, i64 0, i32 1
  store i8 0, ptr %2168, align 8, !tbaa !5
  %2169 = getelementptr inbounds [2 x %struct.LIST], ptr %2167, i64 0, i64 1, i32 1
  store ptr %2167, ptr %2169, align 8, !tbaa !5
  %2170 = getelementptr inbounds [2 x %struct.LIST], ptr %2167, i64 0, i64 1
  store ptr %2167, ptr %2170, align 8, !tbaa !5
  %2171 = getelementptr inbounds %struct.LIST, ptr %2167, i64 0, i32 1
  store ptr %2167, ptr %2171, align 8, !tbaa !5
  store ptr %2167, ptr %2167, align 8, !tbaa !5
  store ptr %2167, ptr @xx_link, align 8, !tbaa !8
  store ptr %2167, ptr @zz_res, align 8, !tbaa !8
  %2172 = load ptr, ptr %1475, align 8, !tbaa !5
  store ptr %2172, ptr @zz_hold, align 8, !tbaa !8
  %2173 = icmp eq ptr %2172, null
  br i1 %2173, label %2174, label %2175

2174:                                             ; preds = %2166
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  br label %2187

2175:                                             ; preds = %2166
  %2176 = load ptr, ptr %2172, align 8, !tbaa !5
  store ptr %2176, ptr @zz_tmp, align 8, !tbaa !8
  %2177 = load ptr, ptr %2167, align 8, !tbaa !5
  store ptr %2177, ptr %2172, align 8, !tbaa !5
  %2178 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2179 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2180 = load ptr, ptr %2179, align 8, !tbaa !5
  %2181 = getelementptr inbounds %struct.LIST, ptr %2180, i64 0, i32 1
  store ptr %2178, ptr %2181, align 8, !tbaa !5
  %2182 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2182, ptr %2179, align 8, !tbaa !5
  %2183 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2184 = getelementptr inbounds %struct.LIST, ptr %2182, i64 0, i32 1
  store ptr %2183, ptr %2184, align 8, !tbaa !5
  %2185 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2185, ptr @zz_res, align 8, !tbaa !8
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %2186 = icmp eq ptr %2185, null
  br i1 %2186, label %2194, label %2187

2187:                                             ; preds = %2174, %2175
  %2188 = phi ptr [ %2167, %2174 ], [ %2185, %2175 ]
  %2189 = load ptr, ptr %1481, align 8, !tbaa !5
  store ptr %2189, ptr @zz_tmp, align 8, !tbaa !8
  %2190 = getelementptr inbounds [2 x %struct.LIST], ptr %2188, i64 0, i64 1
  %2191 = load ptr, ptr %2190, align 8, !tbaa !5
  store ptr %2191, ptr %1481, align 8, !tbaa !5
  %2192 = getelementptr inbounds [2 x %struct.LIST], ptr %2191, i64 0, i64 1, i32 1
  store ptr %393, ptr %2192, align 8, !tbaa !5
  store ptr %2189, ptr %2190, align 8, !tbaa !5
  %2193 = getelementptr inbounds [2 x %struct.LIST], ptr %2189, i64 0, i64 1, i32 1
  store ptr %2188, ptr %2193, align 8, !tbaa !5
  br label %2194

2194:                                             ; preds = %2175, %2187
  %2195 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 3
  store i32 0, ptr %2195, align 8, !tbaa !5
  %2196 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 3, i32 1
  store i32 %100, ptr %2196, align 8, !tbaa !5
  %2197 = load i8, ptr %659, align 4
  %2198 = lshr i8 %2197, 4
  %2199 = and i8 %2198, 7
  %2200 = add nsw i8 %2199, -1
  %2201 = icmp ult i8 %2200, 2
  br i1 %2201, label %2202, label %2204

2202:                                             ; preds = %2194
  %2203 = or i8 %2197, 112
  store i8 %2203, ptr %659, align 4
  br label %2204

2204:                                             ; preds = %2194, %2202
  %2205 = load ptr, ptr %1471, align 8, !tbaa !5
  br label %2206

2206:                                             ; preds = %2206, %2204
  %2207 = phi ptr [ %2205, %2204 ], [ %2209, %2206 ]
  %2208 = getelementptr inbounds [2 x %struct.LIST], ptr %2207, i64 0, i64 1
  %2209 = load ptr, ptr %2208, align 8, !tbaa !5
  %2210 = getelementptr inbounds %struct.word_type, ptr %2209, i64 0, i32 1
  %2211 = load i8, ptr %2210, align 8, !tbaa !5
  %2212 = icmp eq i8 %2211, 0
  br i1 %2212, label %2206, label %2213

2213:                                             ; preds = %2206
  %2214 = getelementptr inbounds %struct.LIST, ptr %2209, i64 0, i32 1
  %2215 = load ptr, ptr %2214, align 8, !tbaa !5
  %2216 = load ptr, ptr %2209, align 8, !tbaa !5
  %2217 = icmp eq ptr %2215, %2216
  br i1 %2217, label %2218, label %2319

2218:                                             ; preds = %2213
  store ptr %2205, ptr @xx_link, align 8, !tbaa !8
  %2219 = getelementptr inbounds [2 x %struct.LIST], ptr %2205, i64 0, i64 1, i32 1
  %2220 = load ptr, ptr %2219, align 8, !tbaa !5
  %2221 = icmp eq ptr %2220, %2205
  br i1 %2221, label %2227, label %2222

2222:                                             ; preds = %2218
  store ptr %2220, ptr @zz_res, align 8, !tbaa !8
  %2223 = getelementptr inbounds [2 x %struct.LIST], ptr %2205, i64 0, i64 1
  %2224 = load ptr, ptr %2223, align 8, !tbaa !5
  %2225 = getelementptr inbounds [2 x %struct.LIST], ptr %2220, i64 0, i64 1
  store ptr %2224, ptr %2225, align 8, !tbaa !5
  %2226 = getelementptr inbounds [2 x %struct.LIST], ptr %2224, i64 0, i64 1, i32 1
  store ptr %2220, ptr %2226, align 8, !tbaa !5
  store ptr %2205, ptr %2219, align 8, !tbaa !5
  store ptr %2205, ptr %2223, align 8, !tbaa !5
  br label %2227

2227:                                             ; preds = %2218, %2222
  %2228 = phi ptr [ %2220, %2222 ], [ null, %2218 ]
  store ptr %2228, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2205, ptr @zz_hold, align 8, !tbaa !8
  %2229 = getelementptr inbounds %struct.LIST, ptr %2205, i64 0, i32 1
  %2230 = load ptr, ptr %2229, align 8, !tbaa !5
  %2231 = icmp eq ptr %2230, %2205
  br i1 %2231, label %2240, label %2232

2232:                                             ; preds = %2227
  store ptr %2230, ptr @zz_res, align 8, !tbaa !8
  %2233 = load ptr, ptr %2205, align 8, !tbaa !5
  store ptr %2233, ptr %2230, align 8, !tbaa !5
  %2234 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2235 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2236 = load ptr, ptr %2235, align 8, !tbaa !5
  %2237 = getelementptr inbounds %struct.LIST, ptr %2236, i64 0, i32 1
  store ptr %2234, ptr %2237, align 8, !tbaa !5
  %2238 = getelementptr inbounds %struct.LIST, ptr %2235, i64 0, i32 1
  store ptr %2235, ptr %2238, align 8, !tbaa !5
  store ptr %2235, ptr %2235, align 8, !tbaa !5
  %2239 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2240

2240:                                             ; preds = %2227, %2232
  %2241 = phi ptr [ %2205, %2227 ], [ %2239, %2232 ]
  store ptr %2241, ptr @zz_hold, align 8, !tbaa !8
  %2242 = getelementptr inbounds %struct.word_type, ptr %2241, i64 0, i32 1
  %2243 = load i8, ptr %2242, align 8, !tbaa !5
  %2244 = add i8 %2243, -11
  %2245 = icmp ult i8 %2244, 2
  %2246 = getelementptr inbounds %struct.word_type, ptr %2241, i64 0, i32 1, i32 0, i32 1
  %2247 = zext i8 %2243 to i64
  %2248 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2247
  %2249 = select i1 %2245, ptr %2246, ptr %2248
  %2250 = load i8, ptr %2249, align 1, !tbaa !5
  %2251 = zext i8 %2250 to i32
  store i32 %2251, ptr @zz_size, align 4, !tbaa !10
  %2252 = zext i8 %2250 to i64
  %2253 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2252
  %2254 = load ptr, ptr %2253, align 8, !tbaa !8
  store ptr %2254, ptr %2241, align 8, !tbaa !5
  %2255 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2256 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2257 = sext i32 %2256 to i64
  %2258 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2257
  store ptr %2255, ptr %2258, align 8, !tbaa !8
  %2259 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2260 = getelementptr inbounds [2 x %struct.LIST], ptr %2259, i64 0, i64 1, i32 1
  %2261 = load ptr, ptr %2260, align 8, !tbaa !5
  %2262 = icmp eq ptr %2261, %2259
  br i1 %2262, label %2263, label %2265

2263:                                             ; preds = %2240
  %2264 = tail call i32 @DisposeObject(ptr noundef nonnull %2259) #5
  br label %2265

2265:                                             ; preds = %2263, %2240
  %2266 = load ptr, ptr %1475, align 8, !tbaa !5
  %2267 = load ptr, ptr %1471, align 8, !tbaa !5
  %2268 = icmp eq ptr %2266, %2267
  br i1 %2268, label %2269, label %2273

2269:                                             ; preds = %2265
  %2270 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2271 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2270, ptr noundef nonnull @.str.22) #5
  %2272 = load ptr, ptr %1471, align 8, !tbaa !5
  br label %2273

2273:                                             ; preds = %2269, %2265
  %2274 = phi ptr [ %2272, %2269 ], [ %2267, %2265 ]
  store ptr %2274, ptr @xx_link, align 8, !tbaa !8
  %2275 = getelementptr inbounds [2 x %struct.LIST], ptr %2274, i64 0, i64 1, i32 1
  %2276 = load ptr, ptr %2275, align 8, !tbaa !5
  %2277 = icmp eq ptr %2276, %2274
  br i1 %2277, label %2283, label %2278

2278:                                             ; preds = %2273
  store ptr %2276, ptr @zz_res, align 8, !tbaa !8
  %2279 = getelementptr inbounds [2 x %struct.LIST], ptr %2274, i64 0, i64 1
  %2280 = load ptr, ptr %2279, align 8, !tbaa !5
  %2281 = getelementptr inbounds [2 x %struct.LIST], ptr %2276, i64 0, i64 1
  store ptr %2280, ptr %2281, align 8, !tbaa !5
  %2282 = getelementptr inbounds [2 x %struct.LIST], ptr %2280, i64 0, i64 1, i32 1
  store ptr %2276, ptr %2282, align 8, !tbaa !5
  store ptr %2274, ptr %2275, align 8, !tbaa !5
  store ptr %2274, ptr %2279, align 8, !tbaa !5
  br label %2283

2283:                                             ; preds = %2273, %2278
  %2284 = phi ptr [ %2276, %2278 ], [ null, %2273 ]
  store ptr %2284, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2274, ptr @zz_hold, align 8, !tbaa !8
  %2285 = getelementptr inbounds %struct.LIST, ptr %2274, i64 0, i32 1
  %2286 = load ptr, ptr %2285, align 8, !tbaa !5
  %2287 = icmp eq ptr %2286, %2274
  br i1 %2287, label %2296, label %2288

2288:                                             ; preds = %2283
  store ptr %2286, ptr @zz_res, align 8, !tbaa !8
  %2289 = load ptr, ptr %2274, align 8, !tbaa !5
  store ptr %2289, ptr %2286, align 8, !tbaa !5
  %2290 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2291 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2292 = load ptr, ptr %2291, align 8, !tbaa !5
  %2293 = getelementptr inbounds %struct.LIST, ptr %2292, i64 0, i32 1
  store ptr %2290, ptr %2293, align 8, !tbaa !5
  %2294 = getelementptr inbounds %struct.LIST, ptr %2291, i64 0, i32 1
  store ptr %2291, ptr %2294, align 8, !tbaa !5
  store ptr %2291, ptr %2291, align 8, !tbaa !5
  %2295 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2296

2296:                                             ; preds = %2283, %2288
  %2297 = phi ptr [ %2274, %2283 ], [ %2295, %2288 ]
  store ptr %2297, ptr @zz_hold, align 8, !tbaa !8
  %2298 = getelementptr inbounds %struct.word_type, ptr %2297, i64 0, i32 1
  %2299 = load i8, ptr %2298, align 8, !tbaa !5
  %2300 = add i8 %2299, -11
  %2301 = icmp ult i8 %2300, 2
  %2302 = getelementptr inbounds %struct.word_type, ptr %2297, i64 0, i32 1, i32 0, i32 1
  %2303 = zext i8 %2299 to i64
  %2304 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2303
  %2305 = select i1 %2301, ptr %2302, ptr %2304
  %2306 = load i8, ptr %2305, align 1, !tbaa !5
  %2307 = zext i8 %2306 to i32
  store i32 %2307, ptr @zz_size, align 4, !tbaa !10
  %2308 = zext i8 %2306 to i64
  %2309 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2308
  %2310 = load ptr, ptr %2309, align 8, !tbaa !8
  store ptr %2310, ptr %2297, align 8, !tbaa !5
  %2311 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2312 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2313 = sext i32 %2312 to i64
  %2314 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2313
  store ptr %2311, ptr %2314, align 8, !tbaa !8
  %2315 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2316 = getelementptr inbounds [2 x %struct.LIST], ptr %2315, i64 0, i64 1, i32 1
  %2317 = load ptr, ptr %2316, align 8, !tbaa !5
  %2318 = icmp eq ptr %2317, %2315
  br i1 %2318, label %2439, label %2443

2319:                                             ; preds = %2213, %2319
  %2320 = phi ptr [ %2322, %2319 ], [ %2216, %2213 ]
  %2321 = getelementptr inbounds [2 x %struct.LIST], ptr %2320, i64 0, i64 1
  %2322 = load ptr, ptr %2321, align 8, !tbaa !5
  %2323 = getelementptr inbounds %struct.word_type, ptr %2322, i64 0, i32 1
  %2324 = load i8, ptr %2323, align 8, !tbaa !5
  switch i8 %2324, label %2329 [
    i8 0, label %2319
    i8 11, label %2325
  ]

2325:                                             ; preds = %2319
  %2326 = getelementptr inbounds %struct.word_type, ptr %2322, i64 0, i32 4
  %2327 = load i8, ptr %2326, align 8, !tbaa !5
  %2328 = icmp eq i8 %2327, 0
  br i1 %2328, label %2333, label %2329

2329:                                             ; preds = %2319, %2325
  %2330 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2331 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2330, ptr noundef nonnull @.str.23) #5
  %2332 = load ptr, ptr %2209, align 8, !tbaa !5
  br label %2333

2333:                                             ; preds = %2329, %2325
  %2334 = phi ptr [ %2332, %2329 ], [ %2216, %2325 ]
  store ptr %2334, ptr @xx_link, align 8, !tbaa !8
  %2335 = getelementptr inbounds [2 x %struct.LIST], ptr %2334, i64 0, i64 1, i32 1
  %2336 = load ptr, ptr %2335, align 8, !tbaa !5
  %2337 = icmp eq ptr %2336, %2334
  br i1 %2337, label %2343, label %2338

2338:                                             ; preds = %2333
  store ptr %2336, ptr @zz_res, align 8, !tbaa !8
  %2339 = getelementptr inbounds [2 x %struct.LIST], ptr %2334, i64 0, i64 1
  %2340 = load ptr, ptr %2339, align 8, !tbaa !5
  %2341 = getelementptr inbounds [2 x %struct.LIST], ptr %2336, i64 0, i64 1
  store ptr %2340, ptr %2341, align 8, !tbaa !5
  %2342 = getelementptr inbounds [2 x %struct.LIST], ptr %2340, i64 0, i64 1, i32 1
  store ptr %2336, ptr %2342, align 8, !tbaa !5
  store ptr %2334, ptr %2335, align 8, !tbaa !5
  store ptr %2334, ptr %2339, align 8, !tbaa !5
  br label %2343

2343:                                             ; preds = %2333, %2338
  %2344 = phi ptr [ %2336, %2338 ], [ null, %2333 ]
  store ptr %2344, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2334, ptr @zz_hold, align 8, !tbaa !8
  %2345 = getelementptr inbounds %struct.LIST, ptr %2334, i64 0, i32 1
  %2346 = load ptr, ptr %2345, align 8, !tbaa !5
  %2347 = icmp eq ptr %2346, %2334
  br i1 %2347, label %2356, label %2348

2348:                                             ; preds = %2343
  store ptr %2346, ptr @zz_res, align 8, !tbaa !8
  %2349 = load ptr, ptr %2334, align 8, !tbaa !5
  store ptr %2349, ptr %2346, align 8, !tbaa !5
  %2350 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2351 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2352 = load ptr, ptr %2351, align 8, !tbaa !5
  %2353 = getelementptr inbounds %struct.LIST, ptr %2352, i64 0, i32 1
  store ptr %2350, ptr %2353, align 8, !tbaa !5
  %2354 = getelementptr inbounds %struct.LIST, ptr %2351, i64 0, i32 1
  store ptr %2351, ptr %2354, align 8, !tbaa !5
  store ptr %2351, ptr %2351, align 8, !tbaa !5
  %2355 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2356

2356:                                             ; preds = %2343, %2348
  %2357 = phi ptr [ %2334, %2343 ], [ %2355, %2348 ]
  store ptr %2357, ptr @zz_hold, align 8, !tbaa !8
  %2358 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 1
  %2359 = load i8, ptr %2358, align 8, !tbaa !5
  %2360 = add i8 %2359, -11
  %2361 = icmp ult i8 %2360, 2
  %2362 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 1, i32 0, i32 1
  %2363 = zext i8 %2359 to i64
  %2364 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2363
  %2365 = select i1 %2361, ptr %2362, ptr %2364
  %2366 = load i8, ptr %2365, align 1, !tbaa !5
  %2367 = zext i8 %2366 to i32
  store i32 %2367, ptr @zz_size, align 4, !tbaa !10
  %2368 = zext i8 %2366 to i64
  %2369 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2368
  %2370 = load ptr, ptr %2369, align 8, !tbaa !8
  store ptr %2370, ptr %2357, align 8, !tbaa !5
  %2371 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2372 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2373
  store ptr %2371, ptr %2374, align 8, !tbaa !8
  %2375 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2376 = getelementptr inbounds [2 x %struct.LIST], ptr %2375, i64 0, i64 1, i32 1
  %2377 = load ptr, ptr %2376, align 8, !tbaa !5
  %2378 = icmp eq ptr %2377, %2375
  br i1 %2378, label %2379, label %2381

2379:                                             ; preds = %2356
  %2380 = tail call i32 @DisposeObject(ptr noundef nonnull %2375) #5
  br label %2381

2381:                                             ; preds = %2379, %2356
  %2382 = load ptr, ptr %2209, align 8, !tbaa !5
  br label %2383

2383:                                             ; preds = %2383, %2381
  %2384 = phi ptr [ %2382, %2381 ], [ %2386, %2383 ]
  %2385 = getelementptr inbounds [2 x %struct.LIST], ptr %2384, i64 0, i64 1
  %2386 = load ptr, ptr %2385, align 8, !tbaa !5
  %2387 = getelementptr inbounds %struct.word_type, ptr %2386, i64 0, i32 1
  %2388 = load i8, ptr %2387, align 8, !tbaa !5
  switch i8 %2388, label %2389 [
    i8 0, label %2383
    i8 1, label %2393
  ]

2389:                                             ; preds = %2383
  %2390 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2391 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2390, ptr noundef nonnull @.str.24) #5
  %2392 = load ptr, ptr %2209, align 8, !tbaa !5
  br label %2393

2393:                                             ; preds = %2383, %2389
  %2394 = phi ptr [ %2392, %2389 ], [ %2382, %2383 ]
  store ptr %2394, ptr @xx_link, align 8, !tbaa !8
  %2395 = getelementptr inbounds [2 x %struct.LIST], ptr %2394, i64 0, i64 1, i32 1
  %2396 = load ptr, ptr %2395, align 8, !tbaa !5
  %2397 = icmp eq ptr %2396, %2394
  br i1 %2397, label %2403, label %2398

2398:                                             ; preds = %2393
  store ptr %2396, ptr @zz_res, align 8, !tbaa !8
  %2399 = getelementptr inbounds [2 x %struct.LIST], ptr %2394, i64 0, i64 1
  %2400 = load ptr, ptr %2399, align 8, !tbaa !5
  %2401 = getelementptr inbounds [2 x %struct.LIST], ptr %2396, i64 0, i64 1
  store ptr %2400, ptr %2401, align 8, !tbaa !5
  %2402 = getelementptr inbounds [2 x %struct.LIST], ptr %2400, i64 0, i64 1, i32 1
  store ptr %2396, ptr %2402, align 8, !tbaa !5
  store ptr %2394, ptr %2395, align 8, !tbaa !5
  store ptr %2394, ptr %2399, align 8, !tbaa !5
  br label %2403

2403:                                             ; preds = %2393, %2398
  %2404 = phi ptr [ %2396, %2398 ], [ null, %2393 ]
  store ptr %2404, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2394, ptr @zz_hold, align 8, !tbaa !8
  %2405 = getelementptr inbounds %struct.LIST, ptr %2394, i64 0, i32 1
  %2406 = load ptr, ptr %2405, align 8, !tbaa !5
  %2407 = icmp eq ptr %2406, %2394
  br i1 %2407, label %2416, label %2408

2408:                                             ; preds = %2403
  store ptr %2406, ptr @zz_res, align 8, !tbaa !8
  %2409 = load ptr, ptr %2394, align 8, !tbaa !5
  store ptr %2409, ptr %2406, align 8, !tbaa !5
  %2410 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2411 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2412 = load ptr, ptr %2411, align 8, !tbaa !5
  %2413 = getelementptr inbounds %struct.LIST, ptr %2412, i64 0, i32 1
  store ptr %2410, ptr %2413, align 8, !tbaa !5
  %2414 = getelementptr inbounds %struct.LIST, ptr %2411, i64 0, i32 1
  store ptr %2411, ptr %2414, align 8, !tbaa !5
  store ptr %2411, ptr %2411, align 8, !tbaa !5
  %2415 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2416

2416:                                             ; preds = %2403, %2408
  %2417 = phi ptr [ %2394, %2403 ], [ %2415, %2408 ]
  store ptr %2417, ptr @zz_hold, align 8, !tbaa !8
  %2418 = getelementptr inbounds %struct.word_type, ptr %2417, i64 0, i32 1
  %2419 = load i8, ptr %2418, align 8, !tbaa !5
  %2420 = add i8 %2419, -11
  %2421 = icmp ult i8 %2420, 2
  %2422 = getelementptr inbounds %struct.word_type, ptr %2417, i64 0, i32 1, i32 0, i32 1
  %2423 = zext i8 %2419 to i64
  %2424 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2423
  %2425 = select i1 %2421, ptr %2422, ptr %2424
  %2426 = load i8, ptr %2425, align 1, !tbaa !5
  %2427 = zext i8 %2426 to i32
  store i32 %2427, ptr @zz_size, align 4, !tbaa !10
  %2428 = zext i8 %2426 to i64
  %2429 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2428
  %2430 = load ptr, ptr %2429, align 8, !tbaa !8
  store ptr %2430, ptr %2417, align 8, !tbaa !5
  %2431 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2432 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2433 = sext i32 %2432 to i64
  %2434 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2433
  store ptr %2431, ptr %2434, align 8, !tbaa !8
  %2435 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2436 = getelementptr inbounds [2 x %struct.LIST], ptr %2435, i64 0, i64 1, i32 1
  %2437 = load ptr, ptr %2436, align 8, !tbaa !5
  %2438 = icmp eq ptr %2437, %2435
  br i1 %2438, label %2439, label %2443

2439:                                             ; preds = %2416, %2296
  %2440 = phi ptr [ %2315, %2296 ], [ %2435, %2416 ]
  %2441 = phi ptr [ undef, %2296 ], [ %2386, %2416 ]
  %2442 = tail call i32 @DisposeObject(ptr noundef nonnull %2440) #5
  br label %2443

2443:                                             ; preds = %2439, %2416, %2296
  %2444 = phi ptr [ undef, %2296 ], [ %2386, %2416 ], [ %2441, %2439 ]
  %2445 = load i32, ptr %658, align 4
  %2446 = icmp sgt i32 %2445, -1
  %2447 = load ptr, ptr %1471, align 8, !tbaa !5
  br i1 %2446, label %2469, label %2448

2448:                                             ; preds = %2443
  %2449 = load ptr, ptr %1475, align 8, !tbaa !5
  %2450 = icmp eq ptr %2449, %2447
  br i1 %2450, label %2469, label %2451

2451:                                             ; preds = %2448
  %2452 = getelementptr inbounds %struct.LIST, ptr %2449, i64 0, i32 1
  %2453 = load ptr, ptr %2452, align 8, !tbaa !5
  br label %2454

2454:                                             ; preds = %2454, %2451
  %2455 = phi ptr [ %2453, %2451 ], [ %2457, %2454 ]
  %2456 = getelementptr inbounds [2 x %struct.LIST], ptr %2455, i64 0, i64 1
  %2457 = load ptr, ptr %2456, align 8, !tbaa !5
  %2458 = getelementptr inbounds %struct.word_type, ptr %2457, i64 0, i32 1
  %2459 = load i8, ptr %2458, align 8, !tbaa !5
  switch i8 %2459, label %2460 [
    i8 0, label %2454
    i8 1, label %2463
  ]

2460:                                             ; preds = %2454
  %2461 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2462 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2461, ptr noundef nonnull @.str.25) #5
  br label %2463

2463:                                             ; preds = %2454, %2460
  %2464 = getelementptr inbounds %struct.gapobj_type, ptr %2457, i64 0, i32 3
  %2465 = load i16, ptr %2464, align 4
  %2466 = or i16 %2465, 128
  store i16 %2466, ptr %2464, align 4
  %2467 = load i32, ptr %658, align 4
  %2468 = load ptr, ptr %1471, align 8, !tbaa !5
  br label %2469

2469:                                             ; preds = %2463, %2448, %2443
  %2470 = phi ptr [ %2468, %2463 ], [ %2447, %2448 ], [ %2447, %2443 ]
  %2471 = phi i32 [ %2467, %2463 ], [ %2445, %2448 ], [ %2445, %2443 ]
  %2472 = and i32 %2471, 1073741824
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2493, label %2474

2474:                                             ; preds = %2469
  %2475 = load ptr, ptr %1475, align 8, !tbaa !5
  %2476 = icmp eq ptr %2475, %2470
  br i1 %2476, label %2493, label %2477

2477:                                             ; preds = %2474
  %2478 = load ptr, ptr %2470, align 8, !tbaa !5
  br label %2479

2479:                                             ; preds = %2479, %2477
  %2480 = phi ptr [ %2478, %2477 ], [ %2482, %2479 ]
  %2481 = getelementptr inbounds [2 x %struct.LIST], ptr %2480, i64 0, i64 1
  %2482 = load ptr, ptr %2481, align 8, !tbaa !5
  %2483 = getelementptr inbounds %struct.word_type, ptr %2482, i64 0, i32 1
  %2484 = load i8, ptr %2483, align 8, !tbaa !5
  switch i8 %2484, label %2485 [
    i8 0, label %2479
    i8 1, label %2488
  ]

2485:                                             ; preds = %2479
  %2486 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2487 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2486, ptr noundef nonnull @.str.26) #5
  br label %2488

2488:                                             ; preds = %2479, %2485
  %2489 = getelementptr inbounds %struct.gapobj_type, ptr %2482, i64 0, i32 3
  %2490 = load i16, ptr %2489, align 4
  %2491 = or i16 %2490, 128
  store i16 %2491, ptr %2489, align 4
  %2492 = load ptr, ptr %1471, align 8, !tbaa !5
  br label %2493

2493:                                             ; preds = %2488, %2474, %2469
  %2494 = phi ptr [ %2492, %2488 ], [ %2470, %2474 ], [ %2470, %2469 ]
  %2495 = icmp eq ptr %2494, %1471
  br i1 %2495, label %2496, label %2500

2496:                                             ; preds = %2493
  %2497 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2498 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2497, ptr noundef nonnull @.str.27) #5
  %2499 = load ptr, ptr %1471, align 8, !tbaa !5
  br label %2500

2500:                                             ; preds = %2496, %2493
  %2501 = phi ptr [ %2494, %2493 ], [ %2499, %2496 ]
  br label %2502

2502:                                             ; preds = %2500, %2502
  %2503 = phi ptr [ %2505, %2502 ], [ %2501, %2500 ]
  %2504 = getelementptr inbounds [2 x %struct.LIST], ptr %2503, i64 0, i64 1
  %2505 = load ptr, ptr %2504, align 8, !tbaa !5
  %2506 = getelementptr inbounds %struct.word_type, ptr %2505, i64 0, i32 1
  %2507 = load i8, ptr %2506, align 8, !tbaa !5
  %2508 = icmp eq i8 %2507, 0
  br i1 %2508, label %2502, label %2509

2509:                                             ; preds = %2502
  %2510 = getelementptr inbounds %struct.LIST, ptr %2505, i64 0, i32 1
  %2511 = load ptr, ptr %2510, align 8, !tbaa !5
  %2512 = icmp eq ptr %2511, %2505
  br i1 %2512, label %2531, label %2513

2513:                                             ; preds = %2509, %2527
  %2514 = phi ptr [ %2529, %2527 ], [ %2511, %2509 ]
  br label %2515

2515:                                             ; preds = %2513, %2515
  %2516 = phi ptr [ %2518, %2515 ], [ %2514, %2513 ]
  %2517 = getelementptr inbounds [2 x %struct.LIST], ptr %2516, i64 0, i64 1
  %2518 = load ptr, ptr %2517, align 8, !tbaa !5
  %2519 = getelementptr inbounds %struct.word_type, ptr %2518, i64 0, i32 1
  %2520 = load i8, ptr %2519, align 8, !tbaa !5
  switch i8 %2520, label %2524 [
    i8 0, label %2515
    i8 1, label %2527
    i8 9, label %2521
  ]

2521:                                             ; preds = %2515
  %2522 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2518) #5
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2527, label %2535

2524:                                             ; preds = %2515
  %2525 = add i8 %2520, -9
  %2526 = icmp ult i8 %2525, 91
  br i1 %2526, label %2535, label %2527

2527:                                             ; preds = %2515, %2524, %2521
  %2528 = getelementptr inbounds %struct.LIST, ptr %2514, i64 0, i32 1
  %2529 = load ptr, ptr %2528, align 8, !tbaa !5
  %2530 = icmp eq ptr %2529, %2505
  br i1 %2530, label %2531, label %2513

2531:                                             ; preds = %2527, %2509
  %2532 = phi ptr [ %2444, %2509 ], [ %2518, %2527 ]
  %2533 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2534 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2533, ptr noundef nonnull @.str.28) #5
  br label %2535

2535:                                             ; preds = %2521, %2524, %2531
  %2536 = phi ptr [ %2505, %2531 ], [ %2514, %2524 ], [ %2514, %2521 ]
  %2537 = phi ptr [ %2532, %2531 ], [ %2518, %2524 ], [ %2518, %2521 ]
  %2538 = getelementptr inbounds %struct.word_type, ptr %2537, i64 0, i32 3
  %2539 = load i32, ptr %2538, align 8, !tbaa !5
  %2540 = getelementptr inbounds %struct.LIST, ptr %2536, i64 0, i32 1
  %2541 = load ptr, ptr %2540, align 8, !tbaa !5
  %2542 = icmp eq ptr %2541, %2505
  br i1 %2542, label %2615, label %2543

2543:                                             ; preds = %2535, %2563
  %2544 = phi ptr [ %2566, %2563 ], [ %2541, %2535 ]
  %2545 = phi ptr [ %2564, %2563 ], [ null, %2535 ]
  br label %2546

2546:                                             ; preds = %2543, %2546
  %2547 = phi ptr [ %2549, %2546 ], [ %2544, %2543 ]
  %2548 = getelementptr inbounds [2 x %struct.LIST], ptr %2547, i64 0, i64 1
  %2549 = load ptr, ptr %2548, align 8, !tbaa !5
  %2550 = getelementptr inbounds %struct.word_type, ptr %2549, i64 0, i32 1
  %2551 = load i8, ptr %2550, align 8, !tbaa !5
  switch i8 %2551, label %2555 [
    i8 0, label %2546
    i8 1, label %2563
    i8 9, label %2552
  ]

2552:                                             ; preds = %2546
  %2553 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2549) #5
  %2554 = icmp eq i32 %2553, 0
  br i1 %2554, label %2563, label %2558

2555:                                             ; preds = %2546
  %2556 = add i8 %2551, -9
  %2557 = icmp ult i8 %2556, 91
  br i1 %2557, label %2558, label %2563

2558:                                             ; preds = %2555, %2552
  %2559 = icmp eq ptr %2545, null
  br i1 %2559, label %2560, label %2568

2560:                                             ; preds = %2558
  %2561 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2562 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2561, ptr noundef nonnull @.str.8) #5
  br label %2568

2563:                                             ; preds = %2546, %2555, %2552
  %2564 = phi ptr [ %2545, %2552 ], [ %2545, %2555 ], [ %2549, %2546 ]
  %2565 = getelementptr inbounds %struct.LIST, ptr %2544, i64 0, i32 1
  %2566 = load ptr, ptr %2565, align 8, !tbaa !5
  %2567 = icmp eq ptr %2566, %2505
  br i1 %2567, label %2615, label %2543

2568:                                             ; preds = %2558, %2560
  %2569 = icmp eq ptr %2544, %2505
  br i1 %2569, label %2615, label %2570

2570:                                             ; preds = %2568, %2613
  %2571 = phi i32 [ %2584, %2613 ], [ %2539, %2568 ]
  %2572 = phi ptr [ %2574, %2613 ], [ %2537, %2568 ]
  %2573 = phi ptr [ %2589, %2613 ], [ %2544, %2568 ]
  %2574 = phi ptr [ %2594, %2613 ], [ %2549, %2568 ]
  %2575 = phi ptr [ %2590, %2613 ], [ %2545, %2568 ]
  %2576 = getelementptr inbounds %struct.word_type, ptr %2572, i64 0, i32 3, i32 1
  %2577 = load i32, ptr %2576, align 8, !tbaa !5
  %2578 = getelementptr inbounds %struct.word_type, ptr %2574, i64 0, i32 3
  %2579 = load i32, ptr %2578, align 8, !tbaa !5
  %2580 = getelementptr inbounds %struct.word_type, ptr %2574, i64 0, i32 3, i32 1
  %2581 = load i32, ptr %2580, align 8, !tbaa !5
  %2582 = getelementptr inbounds %struct.gapobj_type, ptr %2575, i64 0, i32 3
  %2583 = tail call i32 @MinGap(i32 noundef %2577, i32 noundef %2579, i32 noundef %2581, ptr noundef nonnull %2582) #5
  %2584 = add nsw i32 %2583, %2571
  %2585 = getelementptr inbounds %struct.LIST, ptr %2573, i64 0, i32 1
  %2586 = load ptr, ptr %2585, align 8, !tbaa !5
  %2587 = icmp eq ptr %2586, %2505
  br i1 %2587, label %2615, label %2588

2588:                                             ; preds = %2570, %2608
  %2589 = phi ptr [ %2611, %2608 ], [ %2586, %2570 ]
  %2590 = phi ptr [ %2609, %2608 ], [ null, %2570 ]
  br label %2591

2591:                                             ; preds = %2588, %2591
  %2592 = phi ptr [ %2594, %2591 ], [ %2589, %2588 ]
  %2593 = getelementptr inbounds [2 x %struct.LIST], ptr %2592, i64 0, i64 1
  %2594 = load ptr, ptr %2593, align 8, !tbaa !5
  %2595 = getelementptr inbounds %struct.word_type, ptr %2594, i64 0, i32 1
  %2596 = load i8, ptr %2595, align 8, !tbaa !5
  switch i8 %2596, label %2600 [
    i8 0, label %2591
    i8 1, label %2608
    i8 9, label %2597
  ]

2597:                                             ; preds = %2591
  %2598 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2594) #5
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2608, label %2603

2600:                                             ; preds = %2591
  %2601 = add i8 %2596, -9
  %2602 = icmp ult i8 %2601, 91
  br i1 %2602, label %2603, label %2608

2603:                                             ; preds = %2600, %2597
  %2604 = icmp eq ptr %2590, null
  br i1 %2604, label %2605, label %2613

2605:                                             ; preds = %2603
  %2606 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2607 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2606, ptr noundef nonnull @.str.8) #5
  br label %2613

2608:                                             ; preds = %2591, %2600, %2597
  %2609 = phi ptr [ %2590, %2597 ], [ %2590, %2600 ], [ %2594, %2591 ]
  %2610 = getelementptr inbounds %struct.LIST, ptr %2589, i64 0, i32 1
  %2611 = load ptr, ptr %2610, align 8, !tbaa !5
  %2612 = icmp eq ptr %2611, %2505
  br i1 %2612, label %2615, label %2588

2613:                                             ; preds = %2603, %2605
  %2614 = icmp eq ptr %2589, %2505
  br i1 %2614, label %2615, label %2570

2615:                                             ; preds = %2563, %2570, %2613, %2608, %2535, %2568
  %2616 = phi ptr [ %2537, %2568 ], [ %2537, %2535 ], [ %2574, %2608 ], [ %2574, %2613 ], [ %2574, %2570 ], [ %2537, %2563 ]
  %2617 = phi i32 [ %2539, %2568 ], [ %2539, %2535 ], [ %2584, %2608 ], [ %2584, %2613 ], [ %2584, %2570 ], [ %2539, %2563 ]
  %2618 = getelementptr inbounds %struct.word_type, ptr %2616, i64 0, i32 3, i32 1
  %2619 = load i32, ptr %2618, align 8, !tbaa !5
  %2620 = add nsw i32 %2619, %2617
  %2621 = tail call i32 @llvm.smin.i32(i32 %2620, i32 8388607)
  %2622 = getelementptr inbounds %struct.word_type, ptr %2505, i64 0, i32 3
  %2623 = getelementptr inbounds %struct.word_type, ptr %2505, i64 0, i32 3, i32 1
  store i32 %2621, ptr %2623, align 8, !tbaa !5
  %2624 = load i32, ptr %2622, align 8, !tbaa !5
  %2625 = add nsw i32 %2624, %2621
  %2626 = icmp sgt i32 %2625, %100
  br i1 %2626, label %2627, label %2631

2627:                                             ; preds = %2615
  %2628 = getelementptr inbounds %struct.closure_type, ptr %2505, i64 0, i32 4, i32 0, i32 1
  %2629 = load i8, ptr %2628, align 4
  %2630 = or i8 %2629, 112
  store i8 %2630, ptr %2628, align 4
  br label %2631

2631:                                             ; preds = %2615, %2627, %1435, %1452, %1386
  %2632 = phi ptr [ %393, %1386 ], [ %1402, %1452 ], [ %1402, %1435 ], [ %1471, %2627 ], [ %1471, %2615 ]
  %2633 = load i32, ptr %6, align 4, !tbaa !10
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2861, label %2635

2635:                                             ; preds = %2631
  %2636 = getelementptr inbounds %struct.word_type, ptr %2632, i64 0, i32 1
  %2637 = load i8, ptr %2636, align 8, !tbaa !5
  %2638 = icmp eq i8 %2637, 19
  br i1 %2638, label %2639, label %2861

2639:                                             ; preds = %2635
  %2640 = getelementptr inbounds %struct.LIST, ptr %2632, i64 0, i32 1
  %2641 = load ptr, ptr %2640, align 8, !tbaa !5
  %2642 = icmp eq ptr %2641, %2632
  br i1 %2642, label %2861, label %2643

2643:                                             ; preds = %2639, %2857
  %2644 = phi ptr [ %2859, %2857 ], [ %2641, %2639 ]
  br label %2645

2645:                                             ; preds = %2643, %2645
  %2646 = phi ptr [ %2648, %2645 ], [ %2644, %2643 ]
  %2647 = getelementptr inbounds [2 x %struct.LIST], ptr %2646, i64 0, i64 1
  %2648 = load ptr, ptr %2647, align 8, !tbaa !5
  %2649 = getelementptr inbounds %struct.word_type, ptr %2648, i64 0, i32 1
  %2650 = load i8, ptr %2649, align 8, !tbaa !5
  switch i8 %2650, label %2857 [
    i8 0, label %2645
    i8 17, label %2651
  ]

2651:                                             ; preds = %2645
  %2652 = getelementptr inbounds %struct.LIST, ptr %2648, i64 0, i32 1
  %2653 = load ptr, ptr %2652, align 8, !tbaa !5
  %2654 = icmp eq ptr %2653, %2648
  br i1 %2654, label %2857, label %2655

2655:                                             ; preds = %2651, %2853
  %2656 = phi ptr [ %2855, %2853 ], [ %2653, %2651 ]
  br label %2657

2657:                                             ; preds = %2655, %2657
  %2658 = phi ptr [ %2660, %2657 ], [ %2656, %2655 ]
  %2659 = getelementptr inbounds [2 x %struct.LIST], ptr %2658, i64 0, i64 1
  %2660 = load ptr, ptr %2659, align 8, !tbaa !5
  %2661 = getelementptr inbounds %struct.word_type, ptr %2660, i64 0, i32 1
  %2662 = load i8, ptr %2661, align 8, !tbaa !5
  switch i8 %2662, label %2853 [
    i8 0, label %2657
    i8 1, label %2663
  ]

2663:                                             ; preds = %2657
  %2664 = getelementptr inbounds %struct.gapobj_type, ptr %2660, i64 0, i32 3, i32 1
  %2665 = load i16, ptr %2664, align 2, !tbaa !5
  %2666 = icmp eq i16 %2665, 0
  br i1 %2666, label %2667, label %2853

2667:                                             ; preds = %2663
  %2668 = getelementptr inbounds %struct.gapobj_type, ptr %2660, i64 0, i32 3
  %2669 = load i16, ptr %2668, align 4
  %2670 = icmp ugt i16 %2669, -8193
  br i1 %2670, label %2671, label %2853

2671:                                             ; preds = %2667
  %2672 = load ptr, ptr %2656, align 8, !tbaa !5
  br label %2673

2673:                                             ; preds = %2673, %2671
  %2674 = phi ptr [ %2672, %2671 ], [ %2676, %2673 ]
  %2675 = getelementptr inbounds [2 x %struct.LIST], ptr %2674, i64 0, i64 1
  %2676 = load ptr, ptr %2675, align 8, !tbaa !5
  %2677 = getelementptr inbounds %struct.word_type, ptr %2676, i64 0, i32 1
  %2678 = load i8, ptr %2677, align 8, !tbaa !5
  %2679 = icmp eq i8 %2678, 0
  br i1 %2679, label %2673, label %2680

2680:                                             ; preds = %2673
  %2681 = getelementptr inbounds %struct.word_type, ptr %2676, i64 0, i32 1
  %2682 = getelementptr inbounds %struct.LIST, ptr %2656, i64 0, i32 1
  %2683 = load ptr, ptr %2682, align 8, !tbaa !5
  br label %2684

2684:                                             ; preds = %2684, %2680
  %2685 = phi ptr [ %2683, %2680 ], [ %2687, %2684 ]
  %2686 = getelementptr inbounds [2 x %struct.LIST], ptr %2685, i64 0, i64 1
  %2687 = load ptr, ptr %2686, align 8, !tbaa !5
  %2688 = getelementptr inbounds %struct.word_type, ptr %2687, i64 0, i32 1
  %2689 = load i8, ptr %2688, align 8, !tbaa !5
  %2690 = freeze i8 %2689
  %2691 = icmp eq i8 %2690, 0
  br i1 %2691, label %2684, label %2692

2692:                                             ; preds = %2684
  %2693 = add i8 %2678, -11
  %2694 = add i8 %2690, -11
  %2695 = or i8 %2694, %2693
  %2696 = icmp ult i8 %2695, 2
  br i1 %2696, label %2697, label %2853

2697:                                             ; preds = %2692
  %2698 = getelementptr inbounds %struct.word_type, ptr %2676, i64 0, i32 2
  %2699 = load i32, ptr %2698, align 8
  %2700 = getelementptr inbounds %struct.word_type, ptr %2687, i64 0, i32 2
  %2701 = load i32, ptr %2700, align 8
  %2702 = xor i32 %2701, %2699
  %2703 = and i32 %2702, 2147483647
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2705, label %2853

2705:                                             ; preds = %2697
  %2706 = icmp eq i8 %2678, 12
  %2707 = icmp eq i8 %2690, 12
  %2708 = or i1 %2706, %2707
  %2709 = select i1 %2708, i32 12, i32 11
  %2710 = getelementptr inbounds %struct.word_type, ptr %2676, i64 0, i32 4
  %2711 = getelementptr inbounds %struct.word_type, ptr %2687, i64 0, i32 4
  %2712 = tail call ptr @MakeWordTwo(i32 noundef %2709, ptr noundef nonnull %2710, ptr noundef nonnull %2711, ptr noundef nonnull %2681) #5
  %2713 = load i32, ptr %2698, align 8
  %2714 = and i32 %2713, 4095
  %2715 = getelementptr inbounds %struct.word_type, ptr %2712, i64 0, i32 2
  %2716 = load i32, ptr %2715, align 8
  %2717 = and i32 %2716, -4096
  %2718 = or disjoint i32 %2717, %2714
  store i32 %2718, ptr %2715, align 8
  %2719 = load i32, ptr %2698, align 8
  %2720 = and i32 %2719, 4190208
  %2721 = and i32 %2718, -4190209
  %2722 = or disjoint i32 %2721, %2720
  store i32 %2722, ptr %2715, align 8
  %2723 = load i32, ptr %2698, align 8
  %2724 = and i32 %2723, 4194304
  %2725 = and i32 %2722, -4194305
  %2726 = or disjoint i32 %2725, %2724
  store i32 %2726, ptr %2715, align 8
  %2727 = load i32, ptr %2698, align 8
  %2728 = and i32 %2727, 528482304
  %2729 = and i32 %2726, -528482305
  %2730 = or disjoint i32 %2729, %2728
  store i32 %2730, ptr %2715, align 8
  %2731 = load i32, ptr %2698, align 8
  %2732 = and i32 %2731, -2147483648
  %2733 = and i32 %2730, 2147483647
  %2734 = or disjoint i32 %2733, %2732
  store i32 %2734, ptr %2715, align 8
  tail call void @FontWordSize(ptr noundef %2712) #5
  %2735 = load i32, ptr %2698, align 8
  %2736 = and i32 %2735, 1610612736
  %2737 = load i32, ptr %2715, align 8
  %2738 = and i32 %2737, -1610612737
  %2739 = or disjoint i32 %2738, %2736
  store i32 %2739, ptr %2715, align 8
  store ptr %2656, ptr @zz_hold, align 8, !tbaa !8
  %2740 = getelementptr inbounds [2 x %struct.LIST], ptr %2656, i64 0, i64 1, i32 1
  %2741 = load ptr, ptr %2740, align 8, !tbaa !5
  %2742 = icmp eq ptr %2741, %2656
  %2743 = getelementptr inbounds [2 x %struct.LIST], ptr %2656, i64 0, i64 1
  %2744 = load ptr, ptr %2743, align 8, !tbaa !5
  br i1 %2742, label %2748, label %2745

2745:                                             ; preds = %2705
  %2746 = getelementptr inbounds [2 x %struct.LIST], ptr %2741, i64 0, i64 1
  store ptr %2744, ptr %2746, align 8, !tbaa !5
  %2747 = getelementptr inbounds [2 x %struct.LIST], ptr %2744, i64 0, i64 1, i32 1
  store ptr %2741, ptr %2747, align 8, !tbaa !5
  store ptr %2656, ptr %2740, align 8, !tbaa !5
  store ptr %2656, ptr %2743, align 8, !tbaa !5
  br label %2748

2748:                                             ; preds = %2705, %2745
  %2749 = phi ptr [ %2656, %2745 ], [ %2744, %2705 ]
  store ptr %2656, ptr @zz_res, align 8, !tbaa !8
  %2750 = getelementptr inbounds [2 x %struct.LIST], ptr %2712, i64 0, i64 1
  %2751 = load ptr, ptr %2750, align 8, !tbaa !5
  store ptr %2751, ptr @zz_tmp, align 8, !tbaa !8
  %2752 = getelementptr inbounds [2 x %struct.LIST], ptr %2656, i64 0, i64 1
  store ptr %2749, ptr %2750, align 8, !tbaa !5
  %2753 = load ptr, ptr %2752, align 8, !tbaa !5
  %2754 = getelementptr inbounds [2 x %struct.LIST], ptr %2753, i64 0, i64 1, i32 1
  store ptr %2712, ptr %2754, align 8, !tbaa !5
  store ptr %2751, ptr %2752, align 8, !tbaa !5
  %2755 = getelementptr inbounds [2 x %struct.LIST], ptr %2751, i64 0, i64 1, i32 1
  store ptr %2656, ptr %2755, align 8, !tbaa !5
  %2756 = getelementptr inbounds [2 x %struct.LIST], ptr %2676, i64 0, i64 1, i32 1
  %2757 = load ptr, ptr %2756, align 8, !tbaa !5
  store ptr %2757, ptr @xx_link, align 8, !tbaa !8
  %2758 = getelementptr inbounds [2 x %struct.LIST], ptr %2757, i64 0, i64 1, i32 1
  %2759 = load ptr, ptr %2758, align 8, !tbaa !5
  %2760 = icmp eq ptr %2759, %2757
  br i1 %2760, label %2766, label %2761

2761:                                             ; preds = %2748
  store ptr %2759, ptr @zz_res, align 8, !tbaa !8
  %2762 = getelementptr inbounds [2 x %struct.LIST], ptr %2757, i64 0, i64 1
  %2763 = load ptr, ptr %2762, align 8, !tbaa !5
  %2764 = getelementptr inbounds [2 x %struct.LIST], ptr %2759, i64 0, i64 1
  store ptr %2763, ptr %2764, align 8, !tbaa !5
  %2765 = getelementptr inbounds [2 x %struct.LIST], ptr %2763, i64 0, i64 1, i32 1
  store ptr %2759, ptr %2765, align 8, !tbaa !5
  store ptr %2757, ptr %2758, align 8, !tbaa !5
  store ptr %2757, ptr %2762, align 8, !tbaa !5
  br label %2766

2766:                                             ; preds = %2748, %2761
  %2767 = phi ptr [ %2759, %2761 ], [ null, %2748 ]
  store ptr %2767, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2757, ptr @zz_hold, align 8, !tbaa !8
  %2768 = getelementptr inbounds %struct.LIST, ptr %2757, i64 0, i32 1
  %2769 = load ptr, ptr %2768, align 8, !tbaa !5
  %2770 = icmp eq ptr %2769, %2757
  br i1 %2770, label %2779, label %2771

2771:                                             ; preds = %2766
  store ptr %2769, ptr @zz_res, align 8, !tbaa !8
  %2772 = load ptr, ptr %2757, align 8, !tbaa !5
  store ptr %2772, ptr %2769, align 8, !tbaa !5
  %2773 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2774 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2775 = load ptr, ptr %2774, align 8, !tbaa !5
  %2776 = getelementptr inbounds %struct.LIST, ptr %2775, i64 0, i32 1
  store ptr %2773, ptr %2776, align 8, !tbaa !5
  %2777 = getelementptr inbounds %struct.LIST, ptr %2774, i64 0, i32 1
  store ptr %2774, ptr %2777, align 8, !tbaa !5
  store ptr %2774, ptr %2774, align 8, !tbaa !5
  %2778 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2779

2779:                                             ; preds = %2766, %2771
  %2780 = phi ptr [ %2757, %2766 ], [ %2778, %2771 ]
  store ptr %2780, ptr @zz_hold, align 8, !tbaa !8
  %2781 = getelementptr inbounds %struct.word_type, ptr %2780, i64 0, i32 1
  %2782 = load i8, ptr %2781, align 8, !tbaa !5
  %2783 = add i8 %2782, -11
  %2784 = icmp ult i8 %2783, 2
  %2785 = getelementptr inbounds %struct.word_type, ptr %2780, i64 0, i32 1, i32 0, i32 1
  %2786 = zext i8 %2782 to i64
  %2787 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2786
  %2788 = select i1 %2784, ptr %2785, ptr %2787
  %2789 = load i8, ptr %2788, align 1, !tbaa !5
  %2790 = zext i8 %2789 to i32
  store i32 %2790, ptr @zz_size, align 4, !tbaa !10
  %2791 = zext i8 %2789 to i64
  %2792 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2791
  %2793 = load ptr, ptr %2792, align 8, !tbaa !8
  store ptr %2793, ptr %2780, align 8, !tbaa !5
  %2794 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2795 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2796 = sext i32 %2795 to i64
  %2797 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2796
  store ptr %2794, ptr %2797, align 8, !tbaa !8
  %2798 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2799 = getelementptr inbounds [2 x %struct.LIST], ptr %2798, i64 0, i64 1, i32 1
  %2800 = load ptr, ptr %2799, align 8, !tbaa !5
  %2801 = icmp eq ptr %2800, %2798
  br i1 %2801, label %2802, label %2804

2802:                                             ; preds = %2779
  %2803 = tail call i32 @DisposeObject(ptr noundef nonnull %2798) #5
  br label %2804

2804:                                             ; preds = %2802, %2779
  %2805 = getelementptr inbounds [2 x %struct.LIST], ptr %2687, i64 0, i64 1, i32 1
  %2806 = load ptr, ptr %2805, align 8, !tbaa !5
  store ptr %2806, ptr @xx_link, align 8, !tbaa !8
  %2807 = getelementptr inbounds [2 x %struct.LIST], ptr %2806, i64 0, i64 1, i32 1
  %2808 = load ptr, ptr %2807, align 8, !tbaa !5
  %2809 = icmp eq ptr %2808, %2806
  br i1 %2809, label %2815, label %2810

2810:                                             ; preds = %2804
  store ptr %2808, ptr @zz_res, align 8, !tbaa !8
  %2811 = getelementptr inbounds [2 x %struct.LIST], ptr %2806, i64 0, i64 1
  %2812 = load ptr, ptr %2811, align 8, !tbaa !5
  %2813 = getelementptr inbounds [2 x %struct.LIST], ptr %2808, i64 0, i64 1
  store ptr %2812, ptr %2813, align 8, !tbaa !5
  %2814 = getelementptr inbounds [2 x %struct.LIST], ptr %2812, i64 0, i64 1, i32 1
  store ptr %2808, ptr %2814, align 8, !tbaa !5
  store ptr %2806, ptr %2807, align 8, !tbaa !5
  store ptr %2806, ptr %2811, align 8, !tbaa !5
  br label %2815

2815:                                             ; preds = %2804, %2810
  %2816 = phi ptr [ %2808, %2810 ], [ null, %2804 ]
  store ptr %2816, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2806, ptr @zz_hold, align 8, !tbaa !8
  %2817 = getelementptr inbounds %struct.LIST, ptr %2806, i64 0, i32 1
  %2818 = load ptr, ptr %2817, align 8, !tbaa !5
  %2819 = icmp eq ptr %2818, %2806
  br i1 %2819, label %2828, label %2820

2820:                                             ; preds = %2815
  store ptr %2818, ptr @zz_res, align 8, !tbaa !8
  %2821 = load ptr, ptr %2806, align 8, !tbaa !5
  store ptr %2821, ptr %2818, align 8, !tbaa !5
  %2822 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2823 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2824 = load ptr, ptr %2823, align 8, !tbaa !5
  %2825 = getelementptr inbounds %struct.LIST, ptr %2824, i64 0, i32 1
  store ptr %2822, ptr %2825, align 8, !tbaa !5
  %2826 = getelementptr inbounds %struct.LIST, ptr %2823, i64 0, i32 1
  store ptr %2823, ptr %2826, align 8, !tbaa !5
  store ptr %2823, ptr %2823, align 8, !tbaa !5
  %2827 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2828

2828:                                             ; preds = %2815, %2820
  %2829 = phi ptr [ %2806, %2815 ], [ %2827, %2820 ]
  store ptr %2829, ptr @zz_hold, align 8, !tbaa !8
  %2830 = getelementptr inbounds %struct.word_type, ptr %2829, i64 0, i32 1
  %2831 = load i8, ptr %2830, align 8, !tbaa !5
  %2832 = add i8 %2831, -11
  %2833 = icmp ult i8 %2832, 2
  %2834 = getelementptr inbounds %struct.word_type, ptr %2829, i64 0, i32 1, i32 0, i32 1
  %2835 = zext i8 %2831 to i64
  %2836 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2835
  %2837 = select i1 %2833, ptr %2834, ptr %2836
  %2838 = load i8, ptr %2837, align 1, !tbaa !5
  %2839 = zext i8 %2838 to i32
  store i32 %2839, ptr @zz_size, align 4, !tbaa !10
  %2840 = zext i8 %2838 to i64
  %2841 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2840
  %2842 = load ptr, ptr %2841, align 8, !tbaa !8
  store ptr %2842, ptr %2829, align 8, !tbaa !5
  %2843 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2844 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2845 = sext i32 %2844 to i64
  %2846 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2845
  store ptr %2843, ptr %2846, align 8, !tbaa !8
  %2847 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2848 = getelementptr inbounds [2 x %struct.LIST], ptr %2847, i64 0, i64 1, i32 1
  %2849 = load ptr, ptr %2848, align 8, !tbaa !5
  %2850 = icmp eq ptr %2849, %2847
  br i1 %2850, label %2851, label %2853

2851:                                             ; preds = %2828
  %2852 = tail call i32 @DisposeObject(ptr noundef nonnull %2847) #5
  br label %2853

2853:                                             ; preds = %2657, %2692, %2663, %2667, %2828, %2851, %2697
  %2854 = getelementptr inbounds %struct.LIST, ptr %2656, i64 0, i32 1
  %2855 = load ptr, ptr %2854, align 8, !tbaa !5
  %2856 = icmp eq ptr %2855, %2648
  br i1 %2856, label %2857, label %2655

2857:                                             ; preds = %2645, %2853, %2651
  %2858 = getelementptr inbounds %struct.LIST, ptr %2644, i64 0, i32 1
  %2859 = load ptr, ptr %2858, align 8, !tbaa !5
  %2860 = icmp eq ptr %2859, %2632
  br i1 %2860, label %2861, label %2643

2861:                                             ; preds = %2857, %2639, %2631, %2635, %96
  %2862 = phi ptr [ %55, %96 ], [ %2632, %2635 ], [ %2632, %2631 ], [ %2632, %2639 ], [ %2632, %2857 ]
  ret ptr %2862
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @FontSize(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #1

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #1

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ActualGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare void @FontWordSize(ptr noundef) local_unnamed_addr #1

declare ptr @Hyphenate(ptr noundef) local_unnamed_addr #1

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !11, i64 8}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!14 = !{!13, !11, i64 4}
!15 = !{!16, !11, i64 36}
!16 = !{!"back_end_rec", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224}

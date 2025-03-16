; ModuleID = 'src/z23.c'
source_filename = "src/z23.c"
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"FAPO HSPAN/VSPAN!\00", align 1
@finfo = external local_unnamed_addr global ptr, align 8
@font_curr_page = external local_unnamed_addr global i32, align 4
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"object deleted (it cannot be scaled vertically)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"object deleted (it cannot be scaled horizontally)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FAPO: horizontal scale factor!\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"FAPO: vertical scale factor!\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"FAPO: final start_group!\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"word %s horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s object horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"oversize object has size 0 or less\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"word %s deleted (too wide for %s paragraph)\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s object deleted (too wide for %s paragraph)\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"FAPO: adjustable_gaps!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"FixAndPrint: underline(prev)!\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"FixAndPrintObject: thr!\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"FixAndPrintObject: link or uplink!\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"FAPO: THR!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s symbol ignored (out of place)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"FixAndPrintObject:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @FixAndPrintObject(ptr noundef returned %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.CONSTRAINT, align 4
  %14 = alloca %struct.CONSTRAINT, align 4
  %15 = alloca %struct.CONSTRAINT, align 4
  %16 = alloca %struct.CONSTRAINT, align 4
  %17 = alloca %struct.CONSTRAINT, align 4
  %18 = alloca %struct.CONSTRAINT, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  %22 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !5
  switch i8 %23, label %2567 [
    i8 2, label %24
    i8 5, label %24
    i8 4, label %24
    i8 6, label %24
    i8 7, label %24
    i8 44, label %25
    i8 42, label %25
    i8 43, label %25
    i8 45, label %105
    i8 46, label %105
    i8 11, label %169
    i8 12, label %169
    i8 26, label %202
    i8 27, label %202
    i8 28, label %229
    i8 29, label %229
    i8 36, label %264
    i8 37, label %264
    i8 24, label %291
    i8 25, label %291
    i8 38, label %291
    i8 39, label %291
    i8 40, label %291
    i8 41, label %291
    i8 31, label %313
    i8 30, label %381
    i8 34, label %473
    i8 35, label %556
    i8 51, label %581
    i8 50, label %614
    i8 96, label %694
    i8 97, label %774
    i8 98, label %879
    i8 99, label %879
    i8 94, label %926
    i8 95, label %926
    i8 9, label %973
    i8 19, label %998
    i8 18, label %998
    i8 17, label %1600
    i8 16, label %2435
    i8 15, label %2435
    i8 20, label %2561
    i8 21, label %2561
    i8 22, label %2561
    i8 23, label %2561
  ]

24:                                               ; preds = %10, %10, %10, %10, %10
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

25:                                               ; preds = %10, %10, %10
  %26 = icmp eq i32 %4, 0
  %27 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %28 = select i1 %26, ptr %27, ptr %0
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %37, %25
  %31 = phi ptr [ %29, %25 ], [ %34, %37 ]
  %32 = phi i32 [ 1, %25 ], [ %38, %37 ]
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !5
  switch i8 %36, label %103 [
    i8 0, label %37
    i8 13, label %39
    i8 14, label %39
  ]

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %32, 1
  br label %30

39:                                               ; preds = %30, %30
  %40 = getelementptr inbounds %struct.LIST, ptr %34, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %45, %42 ]
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !5
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %52 = select i1 %26, ptr %50, ptr %51
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %53, %49 ], [ %56, %54 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %54, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 3
  %62 = sext i32 %4 to i64
  %63 = getelementptr inbounds [2 x i32], ptr %61, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = sub nsw i32 %1, %64
  %66 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 3
  %67 = getelementptr inbounds [2 x i32], ptr %66, i64 0, i64 %62
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = add nsw i32 %65, %68
  %70 = getelementptr inbounds %struct.closure_type, ptr %34, i64 0, i32 6
  store i32 %69, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 23
  %74 = add nuw nsw i32 %73, 1
  %75 = and i32 %74, 63
  %76 = shl nuw nsw i32 %75, 23
  %77 = and i32 %72, -528482305
  %78 = or disjoint i32 %76, %77
  store i32 %78, ptr %71, align 8
  %79 = and i32 %72, 4095
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %60
  %82 = add nsw i32 %3, %1
  %83 = sub i32 %82, %69
  %84 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 3, i32 1
  %85 = getelementptr inbounds [2 x i32], ptr %84, i64 0, i64 %62
  %86 = load i32, ptr %85, align 4, !tbaa !5
  %87 = tail call i32 @llvm.smax.i32(i32 %83, i32 %86)
  %88 = getelementptr inbounds %struct.closure_type, ptr %34, i64 0, i32 4, i32 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = load i32, ptr %67, align 4, !tbaa !5
  %91 = sub nsw i32 %89, %90
  %92 = tail call i32 @llvm.smax.i32(i32 %87, i32 %91)
  %93 = call ptr @FixAndPrintObject(ptr noundef nonnull %45, i32 noundef %69, i32 noundef %90, i32 noundef %92, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef 1, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %94 = load i32, ptr %71, align 8
  %95 = and i32 %94, -528482305
  store i32 %95, ptr %71, align 8
  br label %96

96:                                               ; preds = %81, %60
  %97 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %98 = getelementptr inbounds [2 x i32], ptr %97, i64 0, i64 %62
  %99 = load i32, ptr %98, align 4, !tbaa !5
  store i32 %99, ptr %8, align 4, !tbaa !8
  %100 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %101 = getelementptr inbounds [2 x i32], ptr %100, i64 0, i64 %62
  %102 = load i32, ptr %101, align 4, !tbaa !5
  store i32 %102, ptr %9, align 4, !tbaa !8
  br label %2572

103:                                              ; preds = %30
  %104 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %34, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %32, ptr noundef %8, ptr noundef %9)
  br label %2572

105:                                              ; preds = %10, %10
  %106 = icmp eq i32 %4, 0
  %107 = icmp ne i8 %23, 45
  %108 = xor i1 %106, %107
  br i1 %108, label %109, label %2572

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %111 = select i1 %106, ptr %110, ptr %0
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  br label %113

113:                                              ; preds = %113, %109
  %114 = phi ptr [ %112, %109 ], [ %116, %113 ]
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %114, i64 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.word_type, ptr %116, i64 0, i32 1
  %118 = load i8, ptr %117, align 8, !tbaa !5
  switch i8 %118, label %119 [
    i8 0, label %113
    i8 13, label %122
    i8 14, label %122
  ]

119:                                              ; preds = %113
  %120 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %121 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %120, ptr noundef nonnull @.str.1) #5
  br label %122

122:                                              ; preds = %113, %113, %119
  %123 = getelementptr inbounds %struct.word_type, ptr %116, i64 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 23
  %126 = add nuw nsw i32 %125, 1
  %127 = and i32 %126, 63
  %128 = shl nuw nsw i32 %127, 23
  %129 = and i32 %124, -528482305
  %130 = or disjoint i32 %128, %129
  store i32 %130, ptr %123, align 8
  %131 = and i32 %124, 4095
  %132 = icmp eq i32 %127, %131
  br i1 %132, label %133, label %2572

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.LIST, ptr %116, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  br label %136

136:                                              ; preds = %136, %133
  %137 = phi ptr [ %135, %133 ], [ %139, %136 ]
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.word_type, ptr %139, i64 0, i32 1
  %141 = load i8, ptr %140, align 8, !tbaa !5
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %136, label %143

143:                                              ; preds = %136
  %144 = add nsw i32 %3, %1
  %145 = getelementptr inbounds %struct.closure_type, ptr %116, i64 0, i32 6
  %146 = load i32, ptr %145, align 8, !tbaa !5
  %147 = sub i32 %144, %146
  %148 = getelementptr inbounds %struct.word_type, ptr %139, i64 0, i32 3
  %149 = getelementptr inbounds %struct.word_type, ptr %139, i64 0, i32 3, i32 1
  %150 = sext i32 %4 to i64
  %151 = getelementptr inbounds [2 x i32], ptr %149, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !5
  %153 = tail call i32 @llvm.smax.i32(i32 %147, i32 %152)
  %154 = getelementptr inbounds %struct.closure_type, ptr %116, i64 0, i32 4, i32 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !5
  %156 = getelementptr inbounds [2 x i32], ptr %148, i64 0, i64 %150
  %157 = load i32, ptr %156, align 4, !tbaa !5
  %158 = sub nsw i32 %155, %157
  %159 = tail call i32 @llvm.smax.i32(i32 %153, i32 %158)
  %160 = call ptr @FixAndPrintObject(ptr noundef nonnull %139, i32 noundef %146, i32 noundef %157, i32 noundef %159, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef 1, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %161 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %162 = getelementptr inbounds [2 x i32], ptr %161, i64 0, i64 %150
  %163 = load i32, ptr %162, align 4, !tbaa !5
  store i32 %163, ptr %8, align 4, !tbaa !8
  %164 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %165 = getelementptr inbounds [2 x i32], ptr %164, i64 0, i64 %150
  %166 = load i32, ptr %165, align 4, !tbaa !5
  store i32 %166, ptr %9, align 4, !tbaa !8
  %167 = load i32, ptr %123, align 8
  %168 = and i32 %167, -528482305
  store i32 %168, ptr %123, align 8
  br label %2572

169:                                              ; preds = %10, %10
  %170 = icmp eq i32 %4, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  store i32 %1, ptr %172, align 4, !tbaa !5
  %173 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %174 = load i8, ptr %173, align 8, !tbaa !5
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %201, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr @finfo, align 8, !tbaa !10
  %178 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 4095
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds %struct.font_rec, ptr %177, i64 %181, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !12
  %184 = getelementptr inbounds i8, ptr %183, i64 42
  %185 = load i16, ptr %184, align 2, !tbaa !5
  %186 = zext i16 %185 to i32
  %187 = load i32, ptr @font_curr_page, align 4, !tbaa !8
  %188 = icmp sgt i32 %187, %186
  br i1 %188, label %189, label %201

189:                                              ; preds = %176
  tail call void @FontPageUsed(ptr noundef nonnull %183) #5
  br label %201

190:                                              ; preds = %169
  %191 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %192 = load i8, ptr %191, align 8, !tbaa !5
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %196 = getelementptr inbounds %struct.back_end_rec, ptr %195, i64 0, i32 18
  %197 = load ptr, ptr %196, align 8, !tbaa !15
  %198 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %199 = load i32, ptr %198, align 4, !tbaa !5
  %200 = sub nsw i32 %6, %1
  tail call void %197(ptr noundef nonnull %0, i32 noundef %199, i32 noundef %200) #5
  br label %201

201:                                              ; preds = %190, %194, %171, %189, %176
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

202:                                              ; preds = %10, %10
  %203 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  br label %205

205:                                              ; preds = %205, %202
  %206 = phi ptr [ %204, %202 ], [ %209, %205 ]
  %207 = phi i32 [ 1, %202 ], [ %213, %205 ]
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %206, i64 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !5
  %210 = getelementptr inbounds %struct.word_type, ptr %209, i64 0, i32 1
  %211 = load i8, ptr %210, align 8, !tbaa !5
  %212 = icmp eq i8 %211, 0
  %213 = add nuw nsw i32 %207, 1
  br i1 %212, label %205, label %214

214:                                              ; preds = %205
  %215 = icmp eq i32 %4, 0
  %216 = icmp ne i8 %23, 26
  %217 = xor i1 %215, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !5
  %221 = getelementptr inbounds %struct.word_type, ptr %209, i64 0, i32 3
  %222 = sext i32 %4 to i64
  %223 = getelementptr inbounds [2 x i32], ptr %221, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !5
  %225 = sub nsw i32 %220, %224
  %226 = call ptr @FixAndPrintObject(ptr noundef nonnull %209, i32 noundef %1, i32 noundef %224, i32 noundef %225, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %207, ptr noundef nonnull %11, ptr noundef nonnull %12)
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

227:                                              ; preds = %214
  %228 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %209, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %207, ptr noundef %8, ptr noundef %9)
  br label %2572

229:                                              ; preds = %10, %10
  %230 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  br label %232

232:                                              ; preds = %232, %229
  %233 = phi ptr [ %231, %229 ], [ %236, %232 ]
  %234 = phi i32 [ 1, %229 ], [ %240, %232 ]
  %235 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = getelementptr inbounds %struct.word_type, ptr %236, i64 0, i32 1
  %238 = load i8, ptr %237, align 8, !tbaa !5
  %239 = icmp eq i8 %238, 0
  %240 = add nuw nsw i32 %234, 1
  br i1 %239, label %232, label %241

241:                                              ; preds = %232
  %242 = icmp eq i32 %4, 0
  %243 = icmp ne i8 %23, 28
  %244 = xor i1 %242, %243
  br i1 %244, label %245, label %262

245:                                              ; preds = %241
  %246 = tail call i32 @FindShift(ptr noundef %0, ptr noundef nonnull %236, i32 noundef %4) #5
  %247 = sub nsw i32 %1, %246
  %248 = sub nsw i32 %2, %246
  %249 = tail call i32 @llvm.smax.i32(i32 %248, i32 0)
  %250 = add nsw i32 %246, %3
  %251 = tail call i32 @llvm.smax.i32(i32 %250, i32 0)
  %252 = call ptr @FixAndPrintObject(ptr noundef nonnull %236, i32 noundef %247, i32 noundef %249, i32 noundef %251, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %234, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %253 = call i32 @FindShift(ptr noundef %0, ptr noundef nonnull %236, i32 noundef %4) #5
  %254 = load i32, ptr %11, align 4
  %255 = add nsw i32 %254, %253
  %256 = call i32 @llvm.smax.i32(i32 %255, i32 0)
  %257 = call i32 @llvm.smin.i32(i32 %256, i32 8388607)
  store i32 %257, ptr %8, align 4, !tbaa !8
  %258 = load i32, ptr %12, align 4
  %259 = sub nsw i32 %258, %253
  %260 = call i32 @llvm.smax.i32(i32 %259, i32 0)
  %261 = call i32 @llvm.smin.i32(i32 %260, i32 8388607)
  store i32 %261, ptr %9, align 4, !tbaa !8
  br label %2572

262:                                              ; preds = %241
  %263 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %236, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %234, ptr noundef %8, ptr noundef %9)
  br label %2572

264:                                              ; preds = %10, %10
  %265 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !5
  br label %267

267:                                              ; preds = %267, %264
  %268 = phi ptr [ %266, %264 ], [ %271, %267 ]
  %269 = phi i32 [ 1, %264 ], [ %275, %267 ]
  %270 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1
  %271 = load ptr, ptr %270, align 8, !tbaa !5
  %272 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1
  %273 = load i8, ptr %272, align 8, !tbaa !5
  %274 = icmp eq i8 %273, 0
  %275 = add nuw nsw i32 %269, 1
  br i1 %274, label %267, label %276

276:                                              ; preds = %267
  %277 = icmp eq i32 %4, 0
  %278 = icmp ne i8 %23, 36
  %279 = xor i1 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 3
  %282 = sext i32 %4 to i64
  %283 = getelementptr inbounds [2 x i32], ptr %281, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 3, i32 1
  %286 = getelementptr inbounds [2 x i32], ptr %285, i64 0, i64 %282
  %287 = load i32, ptr %286, align 4, !tbaa !5
  %288 = call ptr @FixAndPrintObject(ptr noundef nonnull %271, i32 noundef %1, i32 noundef %284, i32 noundef %287, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %269, ptr noundef nonnull %11, ptr noundef nonnull %12)
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

289:                                              ; preds = %276
  %290 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %271, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %269, ptr noundef %8, ptr noundef %9)
  br label %2572

291:                                              ; preds = %10, %10, %10, %10, %10, %10
  %292 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  br label %294

294:                                              ; preds = %294, %291
  %295 = phi ptr [ %293, %291 ], [ %298, %294 ]
  %296 = phi i32 [ 1, %291 ], [ %302, %294 ]
  %297 = getelementptr inbounds [2 x %struct.LIST], ptr %295, i64 0, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = getelementptr inbounds %struct.word_type, ptr %298, i64 0, i32 1
  %300 = load i8, ptr %299, align 8, !tbaa !5
  %301 = icmp eq i8 %300, 0
  %302 = add nuw nsw i32 %296, 1
  br i1 %301, label %294, label %303

303:                                              ; preds = %294
  %304 = icmp eq i8 %23, 24
  %305 = icmp eq i8 %23, 40
  %306 = or i1 %304, %305
  %307 = icmp ne i32 %4, 0
  %308 = xor i1 %307, %306
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = call ptr @FixAndPrintObject(ptr noundef nonnull %298, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %296, ptr noundef nonnull %11, ptr noundef nonnull %12)
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

311:                                              ; preds = %303
  %312 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %298, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %296, ptr noundef %8, ptr noundef %9)
  br label %2572

313:                                              ; preds = %10
  %314 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  br label %316

316:                                              ; preds = %316, %313
  %317 = phi ptr [ %315, %313 ], [ %320, %316 ]
  %318 = phi i32 [ 1, %313 ], [ %324, %316 ]
  %319 = getelementptr inbounds [2 x %struct.LIST], ptr %317, i64 0, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !5
  %321 = getelementptr inbounds %struct.word_type, ptr %320, i64 0, i32 1
  %322 = load i8, ptr %321, align 8, !tbaa !5
  %323 = icmp eq i8 %322, 0
  %324 = add nuw nsw i32 %318, 1
  br i1 %323, label %316, label %325

325:                                              ; preds = %316
  %326 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %327 = getelementptr inbounds %struct.back_end_rec, ptr %326, i64 0, i32 2
  %328 = load i32, ptr %327, align 8, !tbaa !17
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %380, label %330

330:                                              ; preds = %325
  %331 = icmp eq i32 %4, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %330
  %333 = call ptr @FixAndPrintObject(ptr noundef nonnull %320, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %318, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %380

334:                                              ; preds = %330
  %335 = add nsw i32 %3, %2
  %336 = getelementptr inbounds i8, ptr %320, i64 52
  %337 = load i32, ptr %336, align 4, !tbaa !5
  %338 = getelementptr inbounds %struct.word_type, ptr %320, i64 0, i32 3, i32 1, i64 4
  %339 = load i32, ptr %338, align 4, !tbaa !5
  %340 = add nsw i32 %339, %337
  %341 = icmp slt i32 %335, 1
  %342 = icmp slt i32 %340, 1
  %343 = or i1 %341, %342
  %344 = sitofp i32 %335 to float
  %345 = sitofp i32 %340 to float
  %346 = fdiv float %344, %345
  %347 = select i1 %343, float 0.000000e+00, float %346
  %348 = fcmp ogt float %347, 0.000000e+00
  br i1 %348, label %349, label %371

349:                                              ; preds = %334
  %350 = getelementptr inbounds %struct.back_end_rec, ptr %326, i64 0, i32 24
  %351 = load ptr, ptr %350, align 8, !tbaa !18
  tail call void %351(ptr noundef nonnull %320) #5
  %352 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %353 = getelementptr inbounds %struct.back_end_rec, ptr %352, i64 0, i32 21
  %354 = load ptr, ptr %353, align 8, !tbaa !19
  %355 = load i32, ptr %336, align 4, !tbaa !5
  %356 = sitofp i32 %355 to float
  %357 = fmul float %347, %356
  %358 = fptosi float %357 to i32
  %359 = add i32 %2, %6
  %360 = add i32 %358, %1
  %361 = sub i32 %359, %360
  tail call void %354(i32 noundef 0, i32 noundef %361) #5
  %362 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %363 = getelementptr inbounds %struct.back_end_rec, ptr %362, i64 0, i32 23
  %364 = load ptr, ptr %363, align 8, !tbaa !20
  tail call void %364(float noundef 1.000000e+00, float noundef %347) #5
  %365 = load i32, ptr %336, align 4, !tbaa !5
  %366 = load i32, ptr %338, align 4, !tbaa !5
  %367 = call ptr @FixAndPrintObject(ptr noundef nonnull %320, i32 noundef 0, i32 noundef %365, i32 noundef %366, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %318, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %368 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %369 = getelementptr inbounds %struct.back_end_rec, ptr %368, i64 0, i32 25
  %370 = load ptr, ptr %369, align 8, !tbaa !21
  call void %370() #5
  br label %380

371:                                              ; preds = %334
  %372 = add i8 %322, -11
  %373 = icmp ult i8 %372, 2
  br i1 %373, label %374, label %378

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.word_type, ptr %320, i64 0, i32 4
  %376 = load i8, ptr %375, align 8, !tbaa !5
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %371, %374
  %379 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %22) #5
  br label %380

380:                                              ; preds = %332, %374, %378, %349, %325
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

381:                                              ; preds = %10
  %382 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !5
  br label %384

384:                                              ; preds = %384, %381
  %385 = phi ptr [ %383, %381 ], [ %388, %384 ]
  %386 = phi i32 [ 1, %381 ], [ %392, %384 ]
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %385, i64 0, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !5
  %389 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 1
  %390 = load i8, ptr %389, align 8, !tbaa !5
  %391 = icmp eq i8 %390, 0
  %392 = add nuw nsw i32 %386, 1
  br i1 %391, label %384, label %393

393:                                              ; preds = %384
  %394 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 1
  %395 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %396 = getelementptr inbounds %struct.back_end_rec, ptr %395, i64 0, i32 2
  %397 = load i32, ptr %396, align 8, !tbaa !17
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %472, label %399

399:                                              ; preds = %393
  %400 = icmp eq i32 %4, 0
  br i1 %400, label %401, label %431

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %1, ptr %402, align 8, !tbaa !5
  %403 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  store i32 %2, ptr %403, align 8, !tbaa !5
  %404 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 %3, ptr %404, align 8, !tbaa !5
  %405 = add nsw i32 %3, %2
  %406 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 3
  %407 = load i32, ptr %406, align 8, !tbaa !5
  %408 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 3, i32 1
  %409 = load i32, ptr %408, align 8, !tbaa !5
  %410 = add nsw i32 %409, %407
  %411 = icmp slt i32 %405, 1
  %412 = icmp slt i32 %410, 1
  %413 = or i1 %411, %412
  %414 = sitofp i32 %405 to float
  %415 = sitofp i32 %410 to float
  %416 = fdiv float %414, %415
  %417 = select i1 %413, float 0.000000e+00, float %416
  %418 = fcmp ogt float %417, 0.000000e+00
  br i1 %418, label %419, label %421

419:                                              ; preds = %401
  %420 = call ptr @FixAndPrintObject(ptr noundef nonnull %388, i32 noundef 0, i32 noundef %407, i32 noundef %409, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %386, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %472

421:                                              ; preds = %401
  %422 = load i8, ptr %394, align 8, !tbaa !5
  %423 = add i8 %422, -11
  %424 = icmp ult i8 %423, 2
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 4
  %427 = load i8, ptr %426, align 8, !tbaa !5
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %472, label %429

429:                                              ; preds = %421, %425
  %430 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %394) #5
  br label %472

431:                                              ; preds = %399
  %432 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %433 = load i32, ptr %432, align 8, !tbaa !5
  %434 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %435 = load i32, ptr %434, align 8, !tbaa !5
  %436 = add nsw i32 %435, %433
  %437 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 3
  %438 = load i32, ptr %437, align 8, !tbaa !5
  %439 = getelementptr inbounds %struct.word_type, ptr %388, i64 0, i32 3, i32 1
  %440 = load i32, ptr %439, align 8, !tbaa !5
  %441 = add nsw i32 %440, %438
  %442 = icmp slt i32 %436, 1
  %443 = icmp slt i32 %441, 1
  %444 = or i1 %442, %443
  %445 = sitofp i32 %436 to float
  %446 = sitofp i32 %441 to float
  %447 = fdiv float %445, %446
  %448 = select i1 %444, float 0.000000e+00, float %447
  %449 = fcmp ogt float %448, 0.000000e+00
  br i1 %449, label %450, label %472

450:                                              ; preds = %431
  %451 = getelementptr inbounds %struct.back_end_rec, ptr %395, i64 0, i32 24
  %452 = load ptr, ptr %451, align 8, !tbaa !18
  tail call void %452(ptr noundef nonnull %388) #5
  %453 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %454 = getelementptr inbounds %struct.back_end_rec, ptr %453, i64 0, i32 21
  %455 = load ptr, ptr %454, align 8, !tbaa !19
  %456 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %457 = load i32, ptr %456, align 8, !tbaa !5
  %458 = load i32, ptr %432, align 8, !tbaa !5
  %459 = sub i32 %457, %458
  %460 = load i32, ptr %437, align 8, !tbaa !5
  %461 = sitofp i32 %460 to float
  %462 = fmul float %448, %461
  %463 = fptosi float %462 to i32
  %464 = add nsw i32 %459, %463
  tail call void %455(i32 noundef %464, i32 noundef 0) #5
  %465 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %466 = getelementptr inbounds %struct.back_end_rec, ptr %465, i64 0, i32 23
  %467 = load ptr, ptr %466, align 8, !tbaa !20
  tail call void %467(float noundef %448, float noundef 1.000000e+00) #5
  %468 = call ptr @FixAndPrintObject(ptr noundef nonnull %388, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %386, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %469 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %470 = getelementptr inbounds %struct.back_end_rec, ptr %469, i64 0, i32 25
  %471 = load ptr, ptr %470, align 8, !tbaa !21
  call void %471() #5
  br label %472

472:                                              ; preds = %425, %429, %419, %450, %431, %393
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

473:                                              ; preds = %10
  %474 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !5
  br label %476

476:                                              ; preds = %476, %473
  %477 = phi ptr [ %475, %473 ], [ %480, %476 ]
  %478 = phi i32 [ 1, %473 ], [ %484, %476 ]
  %479 = getelementptr inbounds [2 x %struct.LIST], ptr %477, i64 0, i64 1
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  %481 = getelementptr inbounds %struct.word_type, ptr %480, i64 0, i32 1
  %482 = load i8, ptr %481, align 8, !tbaa !5
  %483 = icmp eq i8 %482, 0
  %484 = add nuw nsw i32 %478, 1
  br i1 %483, label %476, label %485

485:                                              ; preds = %476
  %486 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %487 = getelementptr inbounds %struct.back_end_rec, ptr %486, i64 0, i32 2
  %488 = load i32, ptr %487, align 8, !tbaa !17
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %545, label %490

490:                                              ; preds = %485
  %491 = icmp eq i32 %4, 0
  %492 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  br i1 %491, label %493, label %508

493:                                              ; preds = %490
  %494 = load i32, ptr %492, align 8, !tbaa !5
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %500, label %496

496:                                              ; preds = %493
  %497 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %498 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %497, ptr noundef nonnull @.str.4) #5
  %499 = load i32, ptr %492, align 8, !tbaa !5
  br label %500

500:                                              ; preds = %496, %493
  %501 = phi i32 [ %499, %496 ], [ %494, %493 ]
  %502 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %1, ptr %502, align 8, !tbaa !5
  %503 = shl nsw i32 %2, 7
  %504 = sdiv i32 %503, %501
  %505 = shl nsw i32 %3, 7
  %506 = sdiv i32 %505, %501
  %507 = call ptr @FixAndPrintObject(ptr noundef nonnull %480, i32 noundef 0, i32 noundef %504, i32 noundef %506, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %478, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %555

508:                                              ; preds = %490
  %509 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %510 = load i32, ptr %509, align 8, !tbaa !5
  %511 = icmp sgt i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %514 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %513, ptr noundef nonnull @.str.5) #5
  %515 = load i32, ptr %509, align 8, !tbaa !5
  %516 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  br label %517

517:                                              ; preds = %512, %508
  %518 = phi ptr [ %516, %512 ], [ %486, %508 ]
  %519 = phi i32 [ %515, %512 ], [ %510, %508 ]
  %520 = shl nsw i32 %2, 7
  %521 = sdiv i32 %520, %519
  %522 = shl nsw i32 %3, 7
  %523 = sdiv i32 %522, %519
  %524 = getelementptr inbounds %struct.back_end_rec, ptr %518, i64 0, i32 24
  %525 = load ptr, ptr %524, align 8, !tbaa !18
  tail call void %525(ptr noundef nonnull %480) #5
  %526 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %527 = getelementptr inbounds %struct.back_end_rec, ptr %526, i64 0, i32 21
  %528 = load ptr, ptr %527, align 8, !tbaa !19
  %529 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %530 = load i32, ptr %529, align 8, !tbaa !5
  %531 = sub nsw i32 %6, %1
  tail call void %528(i32 noundef %530, i32 noundef %531) #5
  %532 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %533 = getelementptr inbounds %struct.back_end_rec, ptr %532, i64 0, i32 23
  %534 = load ptr, ptr %533, align 8, !tbaa !20
  %535 = load i32, ptr %492, align 8, !tbaa !5
  %536 = sitofp i32 %535 to float
  %537 = fmul float %536, 7.812500e-03
  %538 = load i32, ptr %509, align 8, !tbaa !5
  %539 = sitofp i32 %538 to float
  %540 = fmul float %539, 7.812500e-03
  tail call void %534(float noundef %537, float noundef %540) #5
  %541 = call ptr @FixAndPrintObject(ptr noundef nonnull %480, i32 noundef 0, i32 noundef %521, i32 noundef %523, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %478, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %542 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %543 = getelementptr inbounds %struct.back_end_rec, ptr %542, i64 0, i32 25
  %544 = load ptr, ptr %543, align 8, !tbaa !21
  call void %544() #5
  br label %555

545:                                              ; preds = %485
  %546 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %547 = load i32, ptr %546, align 8, !tbaa !5
  %548 = icmp eq i32 %547, 128
  br i1 %548, label %549, label %555

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  %551 = load i32, ptr %550, align 8, !tbaa !5
  %552 = icmp eq i32 %551, 128
  br i1 %552, label %553, label %555

553:                                              ; preds = %549
  %554 = call ptr @FixAndPrintObject(ptr noundef nonnull %480, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %478, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %555

555:                                              ; preds = %545, %549, %553, %500, %517
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

556:                                              ; preds = %10
  %557 = load ptr, ptr %0, align 8, !tbaa !5
  br label %558

558:                                              ; preds = %558, %556
  %559 = phi ptr [ %557, %556 ], [ %562, %558 ]
  %560 = phi i32 [ 1, %556 ], [ %566, %558 ]
  %561 = getelementptr inbounds [2 x %struct.LIST], ptr %559, i64 0, i64 1
  %562 = load ptr, ptr %561, align 8, !tbaa !5
  %563 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 1
  %564 = load i8, ptr %563, align 8, !tbaa !5
  %565 = icmp eq i8 %564, 0
  %566 = add nuw nsw i32 %560, 1
  br i1 %565, label %558, label %567

567:                                              ; preds = %558
  %568 = icmp eq i32 %4, 0
  br i1 %568, label %569, label %579

569:                                              ; preds = %567
  %570 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 3
  %571 = load i32, ptr %570, align 4, !tbaa !5
  %572 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 3, i32 1
  %573 = load i32, ptr %572, align 4, !tbaa !5
  %574 = call ptr @FixAndPrintObject(ptr noundef nonnull %562, i32 noundef %1, i32 noundef %571, i32 noundef %573, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %560, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %575 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %576 = load i32, ptr %575, align 4, !tbaa !5
  store i32 %576, ptr %8, align 4, !tbaa !8
  %577 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %578 = load i32, ptr %577, align 4, !tbaa !5
  store i32 %578, ptr %9, align 4, !tbaa !8
  br label %2572

579:                                              ; preds = %567
  %580 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %562, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %560, ptr noundef %8, ptr noundef %9)
  br label %2572

581:                                              ; preds = %10
  %582 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !5
  br label %584

584:                                              ; preds = %584, %581
  %585 = phi ptr [ %583, %581 ], [ %588, %584 ]
  %586 = phi i32 [ 1, %581 ], [ %592, %584 ]
  %587 = getelementptr inbounds [2 x %struct.LIST], ptr %585, i64 0, i64 1
  %588 = load ptr, ptr %587, align 8, !tbaa !5
  %589 = getelementptr inbounds %struct.word_type, ptr %588, i64 0, i32 1
  %590 = load i8, ptr %589, align 8, !tbaa !5
  %591 = icmp eq i8 %590, 0
  %592 = add nuw nsw i32 %586, 1
  br i1 %591, label %584, label %593

593:                                              ; preds = %584
  %594 = call ptr @FixAndPrintObject(ptr noundef nonnull %588, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %586, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %595 = load ptr, ptr %0, align 8, !tbaa !5
  br label %596

596:                                              ; preds = %596, %593
  %597 = phi ptr [ %595, %593 ], [ %600, %596 ]
  %598 = phi i32 [ 1, %593 ], [ %604, %596 ]
  %599 = getelementptr inbounds [2 x %struct.LIST], ptr %597, i64 0, i64 1
  %600 = load ptr, ptr %599, align 8, !tbaa !5
  %601 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1
  %602 = load i8, ptr %601, align 8, !tbaa !5
  %603 = icmp eq i8 %602, 0
  %604 = add nuw nsw i32 %598, 1
  br i1 %603, label %596, label %605

605:                                              ; preds = %596
  %606 = call ptr @FixAndPrintObject(ptr noundef nonnull %600, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %598, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %607 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %608 = sext i32 %4 to i64
  %609 = getelementptr inbounds [2 x i32], ptr %607, i64 0, i64 %608
  %610 = load i32, ptr %609, align 4, !tbaa !5
  store i32 %610, ptr %8, align 4, !tbaa !8
  %611 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %612 = getelementptr inbounds [2 x i32], ptr %611, i64 0, i64 %608
  %613 = load i32, ptr %612, align 4, !tbaa !5
  store i32 %613, ptr %9, align 4, !tbaa !8
  br label %2572

614:                                              ; preds = %10
  %615 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %616 = load ptr, ptr %615, align 8, !tbaa !5
  br label %617

617:                                              ; preds = %617, %614
  %618 = phi ptr [ %616, %614 ], [ %621, %617 ]
  %619 = phi i32 [ 1, %614 ], [ %625, %617 ]
  %620 = getelementptr inbounds [2 x %struct.LIST], ptr %618, i64 0, i64 1
  %621 = load ptr, ptr %620, align 8, !tbaa !5
  %622 = getelementptr inbounds %struct.word_type, ptr %621, i64 0, i32 1
  %623 = load i8, ptr %622, align 8, !tbaa !5
  %624 = icmp eq i8 %623, 0
  %625 = add nuw nsw i32 %619, 1
  br i1 %624, label %617, label %626

626:                                              ; preds = %617
  %627 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %628 = getelementptr inbounds %struct.back_end_rec, ptr %627, i64 0, i32 3
  %629 = load i32, ptr %628, align 4, !tbaa !22
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %687, label %631

631:                                              ; preds = %626
  %632 = icmp eq i32 %4, 0
  br i1 %632, label %633, label %653

633:                                              ; preds = %631
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #5
  %634 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %1, ptr %634, align 8, !tbaa !5
  %635 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %636 = load i32, ptr %635, align 8, !tbaa !5
  store i32 %636, ptr %13, align 4, !tbaa !23
  %637 = getelementptr inbounds %struct.CONSTRAINT, ptr %13, i64 0, i32 1
  store i32 8388607, ptr %637, align 4, !tbaa !25
  %638 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %639 = load i32, ptr %638, align 8, !tbaa !5
  %640 = getelementptr inbounds %struct.CONSTRAINT, ptr %13, i64 0, i32 2
  store i32 %639, ptr %640, align 4, !tbaa !26
  %641 = getelementptr inbounds i8, ptr %0, i64 52
  %642 = load i32, ptr %641, align 4, !tbaa !5
  store i32 %642, ptr %14, align 4, !tbaa !23
  %643 = getelementptr inbounds %struct.CONSTRAINT, ptr %14, i64 0, i32 1
  store i32 8388607, ptr %643, align 4, !tbaa !25
  %644 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %645 = load i32, ptr %644, align 4, !tbaa !5
  %646 = getelementptr inbounds %struct.CONSTRAINT, ptr %14, i64 0, i32 2
  store i32 %645, ptr %646, align 4, !tbaa !26
  %647 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %648 = load i32, ptr %647, align 4, !tbaa !5
  call void @RotateConstraint(ptr noundef nonnull %15, ptr noundef nonnull %621, i32 noundef %648, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 0) #5
  %649 = load i32, ptr %15, align 4, !tbaa !23
  %650 = getelementptr inbounds %struct.CONSTRAINT, ptr %15, i64 0, i32 2
  %651 = load i32, ptr %650, align 4, !tbaa !26
  %652 = call ptr @FixAndPrintObject(ptr noundef nonnull %621, i32 noundef 0, i32 noundef %649, i32 noundef %651, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %619, ptr noundef nonnull %11, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #5
  br label %693

653:                                              ; preds = %631
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #5
  %654 = getelementptr inbounds %struct.back_end_rec, ptr %627, i64 0, i32 24
  %655 = load ptr, ptr %654, align 8, !tbaa !18
  tail call void %655(ptr noundef nonnull %621) #5
  %656 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %657 = getelementptr inbounds %struct.back_end_rec, ptr %656, i64 0, i32 21
  %658 = load ptr, ptr %657, align 8, !tbaa !19
  %659 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %660 = load i32, ptr %659, align 8, !tbaa !5
  %661 = sub nsw i32 %6, %1
  tail call void %658(i32 noundef %660, i32 noundef %661) #5
  %662 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %663 = getelementptr inbounds %struct.back_end_rec, ptr %662, i64 0, i32 22
  %664 = load ptr, ptr %663, align 8, !tbaa !27
  %665 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %666 = load i32, ptr %665, align 4, !tbaa !5
  tail call void %664(i32 noundef %666) #5
  %667 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %668 = load i32, ptr %667, align 8, !tbaa !5
  store i32 %668, ptr %16, align 4, !tbaa !23
  %669 = getelementptr inbounds %struct.CONSTRAINT, ptr %16, i64 0, i32 1
  store i32 8388607, ptr %669, align 4, !tbaa !25
  %670 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %671 = load i32, ptr %670, align 8, !tbaa !5
  %672 = getelementptr inbounds %struct.CONSTRAINT, ptr %16, i64 0, i32 2
  store i32 %671, ptr %672, align 4, !tbaa !26
  %673 = getelementptr inbounds i8, ptr %0, i64 52
  %674 = load i32, ptr %673, align 4, !tbaa !5
  store i32 %674, ptr %17, align 4, !tbaa !23
  %675 = getelementptr inbounds %struct.CONSTRAINT, ptr %17, i64 0, i32 1
  store i32 8388607, ptr %675, align 4, !tbaa !25
  %676 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %677 = load i32, ptr %676, align 4, !tbaa !5
  %678 = getelementptr inbounds %struct.CONSTRAINT, ptr %17, i64 0, i32 2
  store i32 %677, ptr %678, align 4, !tbaa !26
  %679 = load i32, ptr %665, align 4, !tbaa !5
  call void @RotateConstraint(ptr noundef nonnull %18, ptr noundef nonnull %621, i32 noundef %679, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef 1) #5
  %680 = load i32, ptr %18, align 4, !tbaa !23
  %681 = getelementptr inbounds %struct.CONSTRAINT, ptr %18, i64 0, i32 2
  %682 = load i32, ptr %681, align 4, !tbaa !26
  %683 = call ptr @FixAndPrintObject(ptr noundef nonnull %621, i32 noundef 0, i32 noundef %680, i32 noundef %682, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %619, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %684 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %685 = getelementptr inbounds %struct.back_end_rec, ptr %684, i64 0, i32 25
  %686 = load ptr, ptr %685, align 8, !tbaa !21
  call void %686() #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #5
  br label %693

687:                                              ; preds = %626
  %688 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %689 = load i32, ptr %688, align 4, !tbaa !5
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %693

691:                                              ; preds = %687
  %692 = call ptr @FixAndPrintObject(ptr noundef nonnull %621, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %619, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %693

693:                                              ; preds = %687, %691, %633, %653
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

694:                                              ; preds = %10
  %695 = load ptr, ptr %0, align 8, !tbaa !5
  br label %696

696:                                              ; preds = %696, %694
  %697 = phi ptr [ %695, %694 ], [ %700, %696 ]
  %698 = phi i32 [ 1, %694 ], [ %704, %696 ]
  %699 = getelementptr inbounds [2 x %struct.LIST], ptr %697, i64 0, i64 1
  %700 = load ptr, ptr %699, align 8, !tbaa !5
  %701 = getelementptr inbounds %struct.word_type, ptr %700, i64 0, i32 1
  %702 = load i8, ptr %701, align 8, !tbaa !5
  %703 = icmp eq i8 %702, 0
  %704 = add nuw nsw i32 %698, 1
  br i1 %703, label %696, label %705

705:                                              ; preds = %696
  %706 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %707 = getelementptr inbounds %struct.back_end_rec, ptr %706, i64 0, i32 6
  %708 = load i32, ptr %707, align 8, !tbaa !28
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %771, label %710

710:                                              ; preds = %705
  %711 = icmp eq i32 %4, 0
  br i1 %711, label %712, label %718

712:                                              ; preds = %710
  %713 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %2, ptr %713, align 4, !tbaa !5
  %714 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %3, ptr %714, align 4, !tbaa !5
  %715 = sub nsw i32 %1, %2
  %716 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %715, ptr %716, align 8, !tbaa !5
  %717 = call ptr @FixAndPrintObject(ptr noundef nonnull %700, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %698, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %773

718:                                              ; preds = %710
  %719 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !5
  br label %721

721:                                              ; preds = %721, %718
  %722 = phi ptr [ %720, %718 ], [ %724, %721 ]
  %723 = getelementptr inbounds [2 x %struct.LIST], ptr %722, i64 0, i64 1
  %724 = load ptr, ptr %723, align 8, !tbaa !5
  %725 = getelementptr inbounds %struct.word_type, ptr %724, i64 0, i32 1
  %726 = load i8, ptr %725, align 8, !tbaa !5
  switch i8 %726, label %746 [
    i8 0, label %721
    i8 19, label %727
  ]

727:                                              ; preds = %721
  %728 = getelementptr inbounds %struct.LIST, ptr %724, i64 0, i32 1
  %729 = load ptr, ptr %728, align 8, !tbaa !5
  br label %730

730:                                              ; preds = %730, %727
  %731 = phi ptr [ %729, %727 ], [ %733, %730 ]
  %732 = getelementptr inbounds [2 x %struct.LIST], ptr %731, i64 0, i64 1
  %733 = load ptr, ptr %732, align 8, !tbaa !5
  %734 = getelementptr inbounds %struct.word_type, ptr %733, i64 0, i32 1
  %735 = load i8, ptr %734, align 8, !tbaa !5
  %736 = icmp eq i8 %735, 0
  br i1 %736, label %730, label %737

737:                                              ; preds = %730
  %738 = load ptr, ptr %724, align 8, !tbaa !5
  br label %739

739:                                              ; preds = %739, %737
  %740 = phi ptr [ %738, %737 ], [ %742, %739 ]
  %741 = getelementptr inbounds [2 x %struct.LIST], ptr %740, i64 0, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !5
  %743 = getelementptr inbounds %struct.word_type, ptr %742, i64 0, i32 1
  %744 = load i8, ptr %743, align 8, !tbaa !5
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %739, label %746

746:                                              ; preds = %721, %739
  %747 = phi ptr [ %733, %739 ], [ %724, %721 ]
  %748 = phi ptr [ %742, %739 ], [ null, %721 ]
  %749 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %750 = sext i32 %4 to i64
  %751 = getelementptr inbounds [2 x i32], ptr %749, i64 0, i64 %750
  store i32 %2, ptr %751, align 4, !tbaa !5
  %752 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %753 = getelementptr inbounds [2 x i32], ptr %752, i64 0, i64 %750
  store i32 %3, ptr %753, align 4, !tbaa !5
  %754 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %755 = getelementptr inbounds %struct.back_end_rec, ptr %754, i64 0, i32 19
  %756 = load ptr, ptr %755, align 8, !tbaa !29
  %757 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %758 = load i32, ptr %757, align 8, !tbaa !5
  %759 = sub i32 %2, %1
  %760 = add i32 %759, %6
  tail call void %756(ptr noundef %747, i32 noundef %758, i32 noundef %760, ptr noundef %0) #5
  %761 = call ptr @FixAndPrintObject(ptr noundef %700, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %698, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %762 = icmp eq ptr %748, null
  br i1 %762, label %773, label %763

763:                                              ; preds = %746
  %764 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %765 = getelementptr inbounds %struct.back_end_rec, ptr %764, i64 0, i32 19
  %766 = load ptr, ptr %765, align 8, !tbaa !29
  %767 = load i32, ptr %757, align 8, !tbaa !5
  %768 = load i32, ptr %751, align 4, !tbaa !5
  %769 = sub i32 %6, %1
  %770 = add i32 %769, %768
  call void %766(ptr noundef nonnull %748, i32 noundef %767, i32 noundef %770, ptr noundef nonnull %0) #5
  br label %773

771:                                              ; preds = %705
  %772 = call ptr @FixAndPrintObject(ptr noundef nonnull %700, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %698, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %773

773:                                              ; preds = %746, %763, %712, %771
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

774:                                              ; preds = %10
  %775 = load ptr, ptr %0, align 8, !tbaa !5
  br label %776

776:                                              ; preds = %776, %774
  %777 = phi ptr [ %775, %774 ], [ %780, %776 ]
  %778 = phi i32 [ 1, %774 ], [ %784, %776 ]
  %779 = getelementptr inbounds [2 x %struct.LIST], ptr %777, i64 0, i64 1
  %780 = load ptr, ptr %779, align 8, !tbaa !5
  %781 = getelementptr inbounds %struct.word_type, ptr %780, i64 0, i32 1
  %782 = load i8, ptr %781, align 8, !tbaa !5
  %783 = icmp eq i8 %782, 0
  %784 = add nuw nsw i32 %778, 1
  br i1 %783, label %776, label %785

785:                                              ; preds = %776
  %786 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %787 = getelementptr inbounds %struct.back_end_rec, ptr %786, i64 0, i32 4
  %788 = load i32, ptr %787, align 8, !tbaa !30
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %876, label %790

790:                                              ; preds = %785
  %791 = icmp eq i32 %4, 0
  br i1 %791, label %792, label %814

792:                                              ; preds = %790
  %793 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %794 = load i32, ptr %793, align 4
  %795 = and i32 %794, 4095
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %808, label %797

797:                                              ; preds = %792
  %798 = load ptr, ptr @finfo, align 8, !tbaa !10
  %799 = zext nneg i32 %795 to i64
  %800 = getelementptr inbounds %struct.font_rec, ptr %798, i64 %799, i32 6
  %801 = load ptr, ptr %800, align 8, !tbaa !12
  %802 = getelementptr inbounds i8, ptr %801, i64 42
  %803 = load i16, ptr %802, align 2, !tbaa !5
  %804 = zext i16 %803 to i32
  %805 = load i32, ptr @font_curr_page, align 4, !tbaa !8
  %806 = icmp sgt i32 %805, %804
  br i1 %806, label %807, label %808

807:                                              ; preds = %797
  tail call void @FontPageUsed(ptr noundef nonnull %801) #5
  br label %808

808:                                              ; preds = %797, %807, %792
  %809 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %2, ptr %809, align 4, !tbaa !5
  %810 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %3, ptr %810, align 4, !tbaa !5
  %811 = sub nsw i32 %1, %2
  %812 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %811, ptr %812, align 8, !tbaa !5
  %813 = call ptr @FixAndPrintObject(ptr noundef nonnull %780, i32 noundef %2, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %778, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %878

814:                                              ; preds = %790
  %815 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !5
  br label %817

817:                                              ; preds = %817, %814
  %818 = phi ptr [ %816, %814 ], [ %820, %817 ]
  %819 = getelementptr inbounds [2 x %struct.LIST], ptr %818, i64 0, i64 1
  %820 = load ptr, ptr %819, align 8, !tbaa !5
  %821 = getelementptr inbounds %struct.word_type, ptr %820, i64 0, i32 1
  %822 = load i8, ptr %821, align 8, !tbaa !5
  switch i8 %822, label %842 [
    i8 0, label %817
    i8 19, label %823
  ]

823:                                              ; preds = %817
  %824 = getelementptr inbounds %struct.LIST, ptr %820, i64 0, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !5
  br label %826

826:                                              ; preds = %826, %823
  %827 = phi ptr [ %825, %823 ], [ %829, %826 ]
  %828 = getelementptr inbounds [2 x %struct.LIST], ptr %827, i64 0, i64 1
  %829 = load ptr, ptr %828, align 8, !tbaa !5
  %830 = getelementptr inbounds %struct.word_type, ptr %829, i64 0, i32 1
  %831 = load i8, ptr %830, align 8, !tbaa !5
  %832 = icmp eq i8 %831, 0
  br i1 %832, label %826, label %833

833:                                              ; preds = %826
  %834 = load ptr, ptr %820, align 8, !tbaa !5
  br label %835

835:                                              ; preds = %835, %833
  %836 = phi ptr [ %834, %833 ], [ %838, %835 ]
  %837 = getelementptr inbounds [2 x %struct.LIST], ptr %836, i64 0, i64 1
  %838 = load ptr, ptr %837, align 8, !tbaa !5
  %839 = getelementptr inbounds %struct.word_type, ptr %838, i64 0, i32 1
  %840 = load i8, ptr %839, align 8, !tbaa !5
  %841 = icmp eq i8 %840, 0
  br i1 %841, label %835, label %842

842:                                              ; preds = %817, %835
  %843 = phi ptr [ %829, %835 ], [ %820, %817 ]
  %844 = phi ptr [ %838, %835 ], [ null, %817 ]
  %845 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %846 = sext i32 %4 to i64
  %847 = getelementptr inbounds [2 x i32], ptr %845, i64 0, i64 %846
  store i32 %2, ptr %847, align 4, !tbaa !5
  %848 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %849 = getelementptr inbounds [2 x i32], ptr %848, i64 0, i64 %846
  store i32 %3, ptr %849, align 4, !tbaa !5
  %850 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %851 = getelementptr inbounds %struct.back_end_rec, ptr %850, i64 0, i32 28
  %852 = load ptr, ptr %851, align 8, !tbaa !31
  %853 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %854 = load i32, ptr %853, align 8, !tbaa !5
  %855 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %856 = load i32, ptr %855, align 4, !tbaa !5
  %857 = add i32 %856, %1
  %858 = sub i32 %6, %857
  tail call void %852(ptr noundef %0, i32 noundef %854, i32 noundef %858) #5
  %859 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %860 = getelementptr inbounds %struct.back_end_rec, ptr %859, i64 0, i32 26
  %861 = load ptr, ptr %860, align 8, !tbaa !32
  tail call void %861(ptr noundef %843) #5
  %862 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %863 = getelementptr inbounds %struct.back_end_rec, ptr %862, i64 0, i32 25
  %864 = load ptr, ptr %863, align 8, !tbaa !21
  tail call void %864() #5
  %865 = add nsw i32 %3, %2
  %866 = call ptr @FixAndPrintObject(ptr noundef %780, i32 noundef %2, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %865, i32 noundef %778, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %867 = icmp eq ptr %844, null
  br i1 %867, label %872, label %868

868:                                              ; preds = %842
  %869 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %870 = getelementptr inbounds %struct.back_end_rec, ptr %869, i64 0, i32 26
  %871 = load ptr, ptr %870, align 8, !tbaa !32
  call void %871(ptr noundef nonnull %844) #5
  br label %872

872:                                              ; preds = %868, %842
  %873 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %874 = getelementptr inbounds %struct.back_end_rec, ptr %873, i64 0, i32 25
  %875 = load ptr, ptr %874, align 8, !tbaa !21
  call void %875() #5
  br label %878

876:                                              ; preds = %785
  %877 = call ptr @FixAndPrintObject(ptr noundef nonnull %780, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %778, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %878

878:                                              ; preds = %808, %872, %876
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

879:                                              ; preds = %10, %10
  %880 = load ptr, ptr %0, align 8, !tbaa !5
  br label %881

881:                                              ; preds = %881, %879
  %882 = phi ptr [ %880, %879 ], [ %885, %881 ]
  %883 = phi i32 [ 1, %879 ], [ %889, %881 ]
  %884 = getelementptr inbounds [2 x %struct.LIST], ptr %882, i64 0, i64 1
  %885 = load ptr, ptr %884, align 8, !tbaa !5
  %886 = getelementptr inbounds %struct.word_type, ptr %885, i64 0, i32 1
  %887 = load i8, ptr %886, align 8, !tbaa !5
  %888 = icmp eq i8 %887, 0
  %889 = add nuw nsw i32 %883, 1
  br i1 %888, label %881, label %890

890:                                              ; preds = %881
  %891 = icmp eq i32 %4, 0
  br i1 %891, label %892, label %894

892:                                              ; preds = %890
  %893 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %1, ptr %893, align 8, !tbaa !5
  br label %924

894:                                              ; preds = %890
  %895 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %896 = load ptr, ptr %895, align 8, !tbaa !5
  br label %897

897:                                              ; preds = %897, %894
  %898 = phi ptr [ %896, %894 ], [ %900, %897 ]
  %899 = getelementptr inbounds [2 x %struct.LIST], ptr %898, i64 0, i64 1
  %900 = load ptr, ptr %899, align 8, !tbaa !5
  %901 = getelementptr inbounds %struct.word_type, ptr %900, i64 0, i32 1
  %902 = load i8, ptr %901, align 8, !tbaa !5
  %903 = icmp eq i8 %902, 0
  br i1 %903, label %897, label %904

904:                                              ; preds = %897
  %905 = icmp eq i8 %23, 98
  %906 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %907 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %908 = load i32, ptr %907, align 8, !tbaa !5
  %909 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %910 = load i32, ptr %909, align 8, !tbaa !5
  %911 = sub nsw i32 %908, %910
  %912 = sub nsw i32 %6, %1
  %913 = sub nsw i32 %912, %3
  %914 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %915 = load i32, ptr %914, align 8, !tbaa !5
  %916 = add nsw i32 %915, %908
  %917 = add nsw i32 %912, %2
  br i1 %905, label %918, label %921

918:                                              ; preds = %904
  %919 = getelementptr inbounds %struct.back_end_rec, ptr %906, i64 0, i32 30
  %920 = load ptr, ptr %919, align 8, !tbaa !33
  tail call void %920(ptr noundef nonnull %900, i32 noundef %911, i32 noundef %913, i32 noundef %916, i32 noundef %917) #5
  br label %924

921:                                              ; preds = %904
  %922 = getelementptr inbounds %struct.back_end_rec, ptr %906, i64 0, i32 31
  %923 = load ptr, ptr %922, align 8, !tbaa !34
  tail call void %923(ptr noundef nonnull %900, i32 noundef %911, i32 noundef %913, i32 noundef %916, i32 noundef %917) #5
  br label %924

924:                                              ; preds = %918, %921, %892
  %925 = call ptr @FixAndPrintObject(ptr noundef %885, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %883, ptr noundef nonnull %11, ptr noundef nonnull %12)
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

926:                                              ; preds = %10, %10
  %927 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %928 = load ptr, ptr %927, align 8, !tbaa !5
  br label %929

929:                                              ; preds = %929, %926
  %930 = phi ptr [ %928, %926 ], [ %932, %929 ]
  %931 = getelementptr inbounds [2 x %struct.LIST], ptr %930, i64 0, i64 1
  %932 = load ptr, ptr %931, align 8, !tbaa !5
  %933 = getelementptr inbounds %struct.word_type, ptr %932, i64 0, i32 1
  %934 = load i8, ptr %933, align 8, !tbaa !5
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %929, label %936

936:                                              ; preds = %929
  %937 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %938 = getelementptr inbounds %struct.back_end_rec, ptr %937, i64 0, i32 5
  %939 = load i32, ptr %938, align 4, !tbaa !35
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %972, label %941

941:                                              ; preds = %936
  %942 = icmp eq i32 %4, 0
  br i1 %942, label %943, label %962

943:                                              ; preds = %941
  %944 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store i32 %1, ptr %944, align 8, !tbaa !5
  %945 = getelementptr inbounds i8, ptr %0, i64 41
  %946 = load i8, ptr %945, align 1, !tbaa !5
  %947 = icmp eq i8 %946, 0
  br i1 %947, label %972, label %948

948:                                              ; preds = %943
  %949 = load ptr, ptr @finfo, align 8, !tbaa !10
  %950 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %951 = load i32, ptr %950, align 4
  %952 = and i32 %951, 4095
  %953 = zext nneg i32 %952 to i64
  %954 = getelementptr inbounds %struct.font_rec, ptr %949, i64 %953, i32 6
  %955 = load ptr, ptr %954, align 8, !tbaa !12
  %956 = getelementptr inbounds i8, ptr %955, i64 42
  %957 = load i16, ptr %956, align 2, !tbaa !5
  %958 = zext i16 %957 to i32
  %959 = load i32, ptr @font_curr_page, align 4, !tbaa !8
  %960 = icmp sgt i32 %959, %958
  br i1 %960, label %961, label %972

961:                                              ; preds = %948
  tail call void @FontPageUsed(ptr noundef nonnull %955) #5
  br label %972

962:                                              ; preds = %941
  %963 = getelementptr inbounds i8, ptr %0, i64 41
  %964 = load i8, ptr %963, align 1, !tbaa !5
  %965 = icmp eq i8 %964, 0
  br i1 %965, label %972, label %966

966:                                              ; preds = %962
  %967 = getelementptr inbounds %struct.back_end_rec, ptr %937, i64 0, i32 29
  %968 = load ptr, ptr %967, align 8, !tbaa !36
  %969 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %970 = load i32, ptr %969, align 8, !tbaa !5
  %971 = sub nsw i32 %6, %1
  tail call void %968(ptr noundef nonnull %0, i32 noundef %970, i32 noundef %971) #5
  br label %972

972:                                              ; preds = %948, %961, %943, %966, %962, %936
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

973:                                              ; preds = %10
  %974 = icmp eq i32 %4, 0
  %975 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %976 = select i1 %974, ptr %975, ptr %0
  %977 = load ptr, ptr %976, align 8, !tbaa !5
  br label %978

978:                                              ; preds = %978, %973
  %979 = phi ptr [ %977, %973 ], [ %982, %978 ]
  %980 = phi i32 [ 1, %973 ], [ %986, %978 ]
  %981 = getelementptr inbounds [2 x %struct.LIST], ptr %979, i64 0, i64 1
  %982 = load ptr, ptr %981, align 8, !tbaa !5
  %983 = getelementptr inbounds %struct.word_type, ptr %982, i64 0, i32 1
  %984 = load i8, ptr %983, align 8, !tbaa !5
  %985 = icmp eq i8 %984, 0
  %986 = add nuw nsw i32 %980, 1
  br i1 %985, label %978, label %987

987:                                              ; preds = %978
  %988 = getelementptr inbounds %struct.word_type, ptr %982, i64 0, i32 3
  %989 = sext i32 %4 to i64
  %990 = getelementptr inbounds [2 x i32], ptr %988, i64 0, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !5
  %992 = tail call i32 @llvm.smax.i32(i32 %991, i32 %2)
  %993 = getelementptr inbounds %struct.word_type, ptr %982, i64 0, i32 3, i32 1
  %994 = getelementptr inbounds [2 x i32], ptr %993, i64 0, i64 %989
  %995 = load i32, ptr %994, align 4, !tbaa !5
  %996 = tail call i32 @llvm.smax.i32(i32 %995, i32 %3)
  %997 = tail call ptr @FixAndPrintObject(ptr noundef nonnull %982, i32 noundef %1, i32 noundef %992, i32 noundef %996, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %980, ptr noundef %8, ptr noundef %9)
  br label %2572

998:                                              ; preds = %10, %10
  %999 = icmp eq i8 %23, 19
  %1000 = icmp ne i32 %4, 1
  %1001 = xor i1 %1000, %999
  br i1 %1001, label %1002, label %1266

1002:                                             ; preds = %998
  %1003 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1004 = load ptr, ptr %1003, align 8, !tbaa !5
  %1005 = icmp eq ptr %1004, %0
  br i1 %1005, label %1265, label %1006

1006:                                             ; preds = %1002, %1020
  %1007 = phi ptr [ %1022, %1020 ], [ %1004, %1002 ]
  br label %1008

1008:                                             ; preds = %1006, %1008
  %1009 = phi ptr [ %1011, %1008 ], [ %1007, %1006 ]
  %1010 = getelementptr inbounds [2 x %struct.LIST], ptr %1009, i64 0, i64 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !5
  %1012 = getelementptr inbounds %struct.word_type, ptr %1011, i64 0, i32 1
  %1013 = load i8, ptr %1012, align 8, !tbaa !5
  switch i8 %1013, label %1017 [
    i8 0, label %1008
    i8 1, label %1020
    i8 9, label %1014
  ]

1014:                                             ; preds = %1008
  %1015 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1011) #5
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1020, label %1024

1017:                                             ; preds = %1008
  %1018 = add i8 %1013, -9
  %1019 = icmp ult i8 %1018, 91
  br i1 %1019, label %1024, label %1020

1020:                                             ; preds = %1008, %1017, %1014
  %1021 = getelementptr inbounds %struct.LIST, ptr %1007, i64 0, i32 1
  %1022 = load ptr, ptr %1021, align 8, !tbaa !5
  %1023 = icmp eq ptr %1022, %0
  br i1 %1023, label %1265, label %1006

1024:                                             ; preds = %1014, %1017
  %1025 = getelementptr inbounds %struct.LIST, ptr %1007, i64 0, i32 1
  %1026 = load ptr, ptr %1025, align 8, !tbaa !5
  %1027 = icmp eq ptr %1026, %0
  br i1 %1027, label %1075, label %1028

1028:                                             ; preds = %1024, %1048
  %1029 = phi ptr [ %1051, %1048 ], [ %1026, %1024 ]
  %1030 = phi ptr [ %1049, %1048 ], [ null, %1024 ]
  br label %1031

1031:                                             ; preds = %1028, %1031
  %1032 = phi ptr [ %1034, %1031 ], [ %1029, %1028 ]
  %1033 = getelementptr inbounds [2 x %struct.LIST], ptr %1032, i64 0, i64 1
  %1034 = load ptr, ptr %1033, align 8, !tbaa !5
  %1035 = getelementptr inbounds %struct.word_type, ptr %1034, i64 0, i32 1
  %1036 = load i8, ptr %1035, align 8, !tbaa !5
  switch i8 %1036, label %1040 [
    i8 0, label %1031
    i8 1, label %1048
    i8 9, label %1037
  ]

1037:                                             ; preds = %1031
  %1038 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1034) #5
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1048, label %1043

1040:                                             ; preds = %1031
  %1041 = add i8 %1036, -9
  %1042 = icmp ult i8 %1041, 91
  br i1 %1042, label %1043, label %1048

1043:                                             ; preds = %1040, %1037
  %1044 = icmp eq ptr %1030, null
  br i1 %1044, label %1045, label %1053

1045:                                             ; preds = %1043
  %1046 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1047 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1046, ptr noundef nonnull @.str.6) #5
  br label %1053

1048:                                             ; preds = %1031, %1040, %1037
  %1049 = phi ptr [ %1030, %1037 ], [ %1030, %1040 ], [ %1034, %1031 ]
  %1050 = getelementptr inbounds %struct.LIST, ptr %1029, i64 0, i32 1
  %1051 = load ptr, ptr %1050, align 8, !tbaa !5
  %1052 = icmp eq ptr %1051, %0
  br i1 %1052, label %1075, label %1028

1053:                                             ; preds = %1045, %1043
  %1054 = getelementptr inbounds %struct.gapobj_type, ptr %1030, i64 0, i32 3
  %1055 = load i16, ptr %1054, align 4
  %1056 = and i16 %1055, -1024
  %1057 = icmp eq i16 %1056, -13312
  br i1 %1057, label %1058, label %1075

1058:                                             ; preds = %1053
  %1059 = getelementptr inbounds %struct.gapobj_type, ptr %1030, i64 0, i32 3, i32 1
  %1060 = load i16, ptr %1059, align 2, !tbaa !5
  %1061 = icmp eq i16 %1060, 0
  br i1 %1061, label %1062, label %1075

1062:                                             ; preds = %1058
  %1063 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1064 = sext i32 %4 to i64
  %1065 = getelementptr inbounds [2 x i32], ptr %1063, i64 0, i64 %1064
  %1066 = load i32, ptr %1065, align 4, !tbaa !5
  %1067 = sub i32 %2, %1066
  %1068 = getelementptr inbounds %struct.word_type, ptr %1011, i64 0, i32 3, i32 1
  %1069 = getelementptr inbounds [2 x i32], ptr %1068, i64 0, i64 %1064
  %1070 = load i32, ptr %1069, align 4, !tbaa !5
  %1071 = add nsw i32 %1067, %1070
  store i32 %1071, ptr %1069, align 4, !tbaa !5
  store i32 %2, ptr %1065, align 4, !tbaa !5
  %1072 = load i16, ptr %1054, align 4
  %1073 = and i16 %1072, 1023
  %1074 = or disjoint i16 %1073, 9216
  store i16 %1074, ptr %1054, align 4
  br label %1075

1075:                                             ; preds = %1048, %1024, %1062, %1058, %1053
  %1076 = load ptr, ptr %1003, align 8, !tbaa !5
  %1077 = icmp eq ptr %1076, %0
  br i1 %1077, label %1096, label %1078

1078:                                             ; preds = %1075, %1092
  %1079 = phi ptr [ %1094, %1092 ], [ %1076, %1075 ]
  br label %1080

1080:                                             ; preds = %1078, %1080
  %1081 = phi ptr [ %1083, %1080 ], [ %1079, %1078 ]
  %1082 = getelementptr inbounds [2 x %struct.LIST], ptr %1081, i64 0, i64 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !5
  %1084 = getelementptr inbounds %struct.word_type, ptr %1083, i64 0, i32 1
  %1085 = load i8, ptr %1084, align 8, !tbaa !5
  switch i8 %1085, label %1089 [
    i8 0, label %1080
    i8 1, label %1092
    i8 9, label %1086
  ]

1086:                                             ; preds = %1080
  %1087 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1083) #5
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1092, label %1096

1089:                                             ; preds = %1080
  %1090 = add i8 %1085, -9
  %1091 = icmp ult i8 %1090, 91
  br i1 %1091, label %1096, label %1092

1092:                                             ; preds = %1080, %1089, %1086
  %1093 = getelementptr inbounds %struct.LIST, ptr %1079, i64 0, i32 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !5
  %1095 = icmp eq ptr %1094, %0
  br i1 %1095, label %1096, label %1078

1096:                                             ; preds = %1092, %1086, %1089, %1075
  %1097 = phi ptr [ %0, %1075 ], [ %1079, %1089 ], [ %1079, %1086 ], [ %0, %1092 ]
  %1098 = phi ptr [ %1011, %1075 ], [ %1083, %1089 ], [ %1083, %1086 ], [ %1083, %1092 ]
  %1099 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1100 = sext i32 %4 to i64
  %1101 = getelementptr inbounds [2 x i32], ptr %1099, i64 0, i64 %1100
  %1102 = load i32, ptr %1101, align 4, !tbaa !5
  %1103 = add nsw i32 %1102, %3
  %1104 = sub nsw i32 %1, %1102
  %1105 = getelementptr inbounds i8, ptr %0, i64 42
  %1106 = load i16, ptr %1105, align 2
  %1107 = and i16 %1106, 2048
  %1108 = icmp eq i16 %1107, 0
  %1109 = icmp ne i32 %5, 0
  %1110 = or i1 %1109, %1108
  br i1 %1110, label %1113, label %1111

1111:                                             ; preds = %1096
  %1112 = tail call fastcc i32 @FindAdjustIncrement(ptr noundef nonnull %0, i32 noundef %1103, i32 noundef %4)
  br label %1113

1113:                                             ; preds = %1096, %1111
  %1114 = phi i32 [ %1112, %1111 ], [ 0, %1096 ]
  %1115 = getelementptr inbounds %struct.word_type, ptr %1098, i64 0, i32 3
  %1116 = getelementptr inbounds [2 x i32], ptr %1115, i64 0, i64 %1100
  %1117 = load i32, ptr %1116, align 4, !tbaa !5
  %1118 = add nsw i32 %1117, %1104
  %1119 = getelementptr inbounds %struct.LIST, ptr %1097, i64 0, i32 1
  %1120 = load ptr, ptr %1119, align 8, !tbaa !5
  %1121 = icmp eq ptr %1120, %0
  br i1 %1121, label %1147, label %1122

1122:                                             ; preds = %1113, %1142
  %1123 = phi ptr [ %1145, %1142 ], [ %1120, %1113 ]
  %1124 = phi ptr [ %1143, %1142 ], [ null, %1113 ]
  br label %1125

1125:                                             ; preds = %1122, %1125
  %1126 = phi ptr [ %1128, %1125 ], [ %1123, %1122 ]
  %1127 = getelementptr inbounds [2 x %struct.LIST], ptr %1126, i64 0, i64 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !5
  %1129 = getelementptr inbounds %struct.word_type, ptr %1128, i64 0, i32 1
  %1130 = load i8, ptr %1129, align 8, !tbaa !5
  switch i8 %1130, label %1134 [
    i8 0, label %1125
    i8 1, label %1142
    i8 9, label %1131
  ]

1131:                                             ; preds = %1125
  %1132 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1128) #5
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1142, label %1137

1134:                                             ; preds = %1125
  %1135 = add i8 %1130, -9
  %1136 = icmp ult i8 %1135, 91
  br i1 %1136, label %1137, label %1142

1137:                                             ; preds = %1134, %1131
  %1138 = icmp eq ptr %1124, null
  br i1 %1138, label %1139, label %1149

1139:                                             ; preds = %1137
  %1140 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1141 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1140, ptr noundef nonnull @.str.6) #5
  br label %1149

1142:                                             ; preds = %1125, %1134, %1131
  %1143 = phi ptr [ %1124, %1131 ], [ %1124, %1134 ], [ %1128, %1125 ]
  %1144 = getelementptr inbounds %struct.LIST, ptr %1123, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !5
  %1146 = icmp eq ptr %1145, %0
  br i1 %1146, label %1147, label %1122

1147:                                             ; preds = %1142, %1113
  %1148 = sub i32 0, %1118
  br label %1240

1149:                                             ; preds = %1137, %1139
  %1150 = sub i32 0, %1118
  %1151 = icmp eq ptr %1123, %0
  br i1 %1151, label %1240, label %1152

1152:                                             ; preds = %1149
  %1153 = add i32 %3, %1
  br label %1154

1154:                                             ; preds = %1152, %1237
  %1155 = phi i32 [ %1150, %1152 ], [ %1238, %1237 ]
  %1156 = phi ptr [ %1128, %1152 ], [ %1216, %1237 ]
  %1157 = phi ptr [ %1123, %1152 ], [ %1211, %1237 ]
  %1158 = phi ptr [ %1098, %1152 ], [ %1156, %1237 ]
  %1159 = phi ptr [ %1124, %1152 ], [ %1212, %1237 ]
  %1160 = phi i32 [ %1118, %1152 ], [ %1206, %1237 ]
  %1161 = getelementptr inbounds %struct.gapobj_type, ptr %1159, i64 0, i32 3
  %1162 = load i16, ptr %1161, align 4
  %1163 = and i16 %1162, -1024
  %1164 = icmp eq i16 %1163, -13312
  br i1 %1164, label %1165, label %1187

1165:                                             ; preds = %1154
  %1166 = getelementptr inbounds %struct.gapobj_type, ptr %1159, i64 0, i32 3, i32 1
  %1167 = load i16, ptr %1166, align 2, !tbaa !5
  %1168 = icmp eq i16 %1167, 4096
  br i1 %1168, label %1169, label %1187

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.word_type, ptr %1158, i64 0, i32 3
  %1171 = getelementptr inbounds [2 x i32], ptr %1170, i64 0, i64 %1100
  %1172 = load i32, ptr %1171, align 4, !tbaa !5
  %1173 = getelementptr inbounds %struct.word_type, ptr %1158, i64 0, i32 3, i32 1
  %1174 = getelementptr inbounds [2 x i32], ptr %1173, i64 0, i64 %1100
  %1175 = load i32, ptr %1174, align 4, !tbaa !5
  %1176 = getelementptr inbounds %struct.word_type, ptr %1156, i64 0, i32 3
  %1177 = getelementptr inbounds [2 x i32], ptr %1176, i64 0, i64 %1100
  %1178 = load i32, ptr %1177, align 4, !tbaa !5
  %1179 = getelementptr inbounds %struct.word_type, ptr %1156, i64 0, i32 3, i32 1
  %1180 = getelementptr inbounds [2 x i32], ptr %1179, i64 0, i64 %1100
  %1181 = load i32, ptr %1180, align 4, !tbaa !5
  %1182 = add i32 %1153, %1155
  %1183 = add i32 %1178, %1181
  %1184 = sub i32 %1182, %1183
  %1185 = call i32 @llvm.smax.i32(i32 %1175, i32 %1184)
  %1186 = call ptr @FixAndPrintObject(ptr noundef %1158, i32 noundef %1160, i32 noundef %1172, i32 noundef %1185, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %1196

1187:                                             ; preds = %1165, %1154
  %1188 = getelementptr inbounds %struct.word_type, ptr %1158, i64 0, i32 3
  %1189 = getelementptr inbounds [2 x i32], ptr %1188, i64 0, i64 %1100
  %1190 = load i32, ptr %1189, align 4, !tbaa !5
  %1191 = getelementptr inbounds %struct.word_type, ptr %1158, i64 0, i32 3, i32 1
  %1192 = getelementptr inbounds [2 x i32], ptr %1191, i64 0, i64 %1100
  %1193 = load i32, ptr %1192, align 4, !tbaa !5
  %1194 = add nsw i32 %1193, %1114
  %1195 = call ptr @FixAndPrintObject(ptr noundef %1158, i32 noundef %1160, i32 noundef %1190, i32 noundef %1194, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %1196

1196:                                             ; preds = %1187, %1169
  %1197 = load i32, ptr %12, align 4, !tbaa !8
  %1198 = getelementptr inbounds %struct.word_type, ptr %1156, i64 0, i32 3
  %1199 = getelementptr inbounds [2 x i32], ptr %1198, i64 0, i64 %1100
  %1200 = load i32, ptr %1199, align 4, !tbaa !5
  %1201 = getelementptr inbounds %struct.word_type, ptr %1156, i64 0, i32 3, i32 1
  %1202 = getelementptr inbounds [2 x i32], ptr %1201, i64 0, i64 %1100
  %1203 = load i32, ptr %1202, align 4, !tbaa !5
  %1204 = sub nsw i32 %1160, %1104
  %1205 = call i32 @ActualGap(i32 noundef %1197, i32 noundef %1200, i32 noundef %1203, ptr noundef nonnull %1161, i32 noundef %1103, i32 noundef %1204) #5
  %1206 = add nsw i32 %1205, %1160
  %1207 = getelementptr inbounds %struct.LIST, ptr %1157, i64 0, i32 1
  %1208 = load ptr, ptr %1207, align 8, !tbaa !5
  %1209 = icmp eq ptr %1208, %0
  br i1 %1209, label %1235, label %1210

1210:                                             ; preds = %1196, %1230
  %1211 = phi ptr [ %1233, %1230 ], [ %1208, %1196 ]
  %1212 = phi ptr [ %1231, %1230 ], [ null, %1196 ]
  br label %1213

1213:                                             ; preds = %1210, %1213
  %1214 = phi ptr [ %1216, %1213 ], [ %1211, %1210 ]
  %1215 = getelementptr inbounds [2 x %struct.LIST], ptr %1214, i64 0, i64 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !5
  %1217 = getelementptr inbounds %struct.word_type, ptr %1216, i64 0, i32 1
  %1218 = load i8, ptr %1217, align 8, !tbaa !5
  switch i8 %1218, label %1222 [
    i8 0, label %1213
    i8 1, label %1230
    i8 9, label %1219
  ]

1219:                                             ; preds = %1213
  %1220 = call i32 @SplitIsDefinite(ptr noundef nonnull %1216) #5
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1230, label %1225

1222:                                             ; preds = %1213
  %1223 = add i8 %1218, -9
  %1224 = icmp ult i8 %1223, 91
  br i1 %1224, label %1225, label %1230

1225:                                             ; preds = %1222, %1219
  %1226 = icmp eq ptr %1212, null
  br i1 %1226, label %1227, label %1237

1227:                                             ; preds = %1225
  %1228 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1229 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1228, ptr noundef nonnull @.str.6) #5
  br label %1237

1230:                                             ; preds = %1213, %1222, %1219
  %1231 = phi ptr [ %1212, %1219 ], [ %1212, %1222 ], [ %1216, %1213 ]
  %1232 = getelementptr inbounds %struct.LIST, ptr %1211, i64 0, i32 1
  %1233 = load ptr, ptr %1232, align 8, !tbaa !5
  %1234 = icmp eq ptr %1233, %0
  br i1 %1234, label %1235, label %1210

1235:                                             ; preds = %1196, %1230
  %1236 = sub i32 0, %1206
  br label %1240

1237:                                             ; preds = %1225, %1227
  %1238 = sub i32 0, %1206
  %1239 = icmp eq ptr %1211, %0
  br i1 %1239, label %1240, label %1154

1240:                                             ; preds = %1237, %1235, %1147, %1149
  %1241 = phi i32 [ %1118, %1149 ], [ %1118, %1147 ], [ %1206, %1235 ], [ %1206, %1237 ]
  %1242 = phi ptr [ %1098, %1149 ], [ %1098, %1147 ], [ %1156, %1235 ], [ %1156, %1237 ]
  %1243 = phi i32 [ %1150, %1149 ], [ %1148, %1147 ], [ %1236, %1235 ], [ %1238, %1237 ]
  %1244 = getelementptr inbounds %struct.word_type, ptr %1242, i64 0, i32 3
  %1245 = getelementptr inbounds [2 x i32], ptr %1244, i64 0, i64 %1100
  %1246 = load i32, ptr %1245, align 4, !tbaa !5
  %1247 = getelementptr inbounds %struct.word_type, ptr %1242, i64 0, i32 3, i32 1
  %1248 = getelementptr inbounds [2 x i32], ptr %1247, i64 0, i64 %1100
  %1249 = load i32, ptr %1248, align 4, !tbaa !5
  br i1 %1109, label %1254, label %1250

1250:                                             ; preds = %1240
  %1251 = add nsw i32 %3, %1
  %1252 = add i32 %1251, %1243
  %1253 = call i32 @llvm.smax.i32(i32 %1249, i32 %1252)
  br label %1254

1254:                                             ; preds = %1240, %1250
  %1255 = phi i32 [ %1253, %1250 ], [ %1249, %1240 ]
  %1256 = call ptr @FixAndPrintObject(ptr noundef %1242, i32 noundef %1241, i32 noundef %1246, i32 noundef %1255, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1257 = load i32, ptr %1101, align 4, !tbaa !5
  %1258 = call i32 @llvm.smax.i32(i32 %1257, i32 %2)
  store i32 %1258, ptr %8, align 4, !tbaa !8
  %1259 = getelementptr inbounds %struct.word_type, ptr %1242, i64 0, i32 3, i32 1
  %1260 = getelementptr inbounds [2 x i32], ptr %1259, i64 0, i64 %1100
  %1261 = load i32, ptr %1260, align 4, !tbaa !5
  %1262 = add i32 %1104, %1258
  %1263 = sub i32 %1241, %1262
  %1264 = add i32 %1263, %1261
  store i32 %1264, ptr %9, align 4, !tbaa !8
  br label %2572

1265:                                             ; preds = %1020, %1002
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

1266:                                             ; preds = %998
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #5
  %1267 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1268 = load ptr, ptr %1267, align 8, !tbaa !5
  %1269 = icmp eq ptr %1268, %0
  br i1 %1269, label %1599, label %1270

1270:                                             ; preds = %1266, %1295
  %1271 = phi ptr [ %1298, %1295 ], [ %1268, %1266 ]
  %1272 = phi i32 [ %1296, %1295 ], [ 1, %1266 ]
  br label %1273

1273:                                             ; preds = %1270, %1273
  %1274 = phi ptr [ %1276, %1273 ], [ %1271, %1270 ]
  %1275 = getelementptr inbounds [2 x %struct.LIST], ptr %1274, i64 0, i64 1
  %1276 = load ptr, ptr %1275, align 8, !tbaa !5
  %1277 = getelementptr inbounds %struct.word_type, ptr %1276, i64 0, i32 1
  %1278 = load i8, ptr %1277, align 8, !tbaa !5
  switch i8 %1278, label %1292 [
    i8 0, label %1273
    i8 1, label %1279
    i8 9, label %1289
  ]

1279:                                             ; preds = %1273
  %1280 = icmp eq i32 %1272, 0
  br i1 %1280, label %1286, label %1281

1281:                                             ; preds = %1279
  %1282 = getelementptr inbounds %struct.gapobj_type, ptr %1276, i64 0, i32 3
  %1283 = load i16, ptr %1282, align 4
  %1284 = and i16 %1283, 512
  %1285 = icmp ne i16 %1284, 0
  br label %1286

1286:                                             ; preds = %1281, %1279
  %1287 = phi i1 [ false, %1279 ], [ %1285, %1281 ]
  %1288 = zext i1 %1287 to i32
  br label %1295

1289:                                             ; preds = %1273
  %1290 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1276) #5
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1295, label %1300

1292:                                             ; preds = %1273
  %1293 = add i8 %1278, -9
  %1294 = icmp ult i8 %1293, 91
  br i1 %1294, label %1300, label %1295

1295:                                             ; preds = %1286, %1292, %1289
  %1296 = phi i32 [ %1288, %1286 ], [ %1272, %1289 ], [ %1272, %1292 ]
  %1297 = getelementptr inbounds %struct.LIST, ptr %1271, i64 0, i32 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !5
  %1299 = icmp eq ptr %1298, %0
  br i1 %1299, label %1599, label %1270

1300:                                             ; preds = %1289, %1292
  %1301 = getelementptr inbounds %struct.word_type, ptr %1276, i64 0, i32 3
  %1302 = sext i32 %4 to i64
  %1303 = getelementptr inbounds [2 x i32], ptr %1301, i64 0, i64 %1302
  %1304 = load i32, ptr %1303, align 4, !tbaa !5
  store i32 %1304, ptr %19, align 4, !tbaa !8
  %1305 = getelementptr inbounds %struct.word_type, ptr %1276, i64 0, i32 3, i32 1
  %1306 = getelementptr inbounds [2 x i32], ptr %1305, i64 0, i64 %1302
  %1307 = load i32, ptr %1306, align 4, !tbaa !5
  store i32 %1307, ptr %20, align 4, !tbaa !8
  %1308 = icmp eq i32 %1272, 0
  %1309 = zext i1 %1308 to i32
  %1310 = getelementptr inbounds %struct.LIST, ptr %1271, i64 0, i32 1
  %1311 = load ptr, ptr %1310, align 8, !tbaa !5
  %1312 = icmp eq ptr %1311, %0
  br i1 %1312, label %1500, label %1313

1313:                                             ; preds = %1300, %1344
  %1314 = phi ptr [ %1348, %1344 ], [ %1311, %1300 ]
  %1315 = phi ptr [ %1346, %1344 ], [ null, %1300 ]
  %1316 = phi i32 [ %1345, %1344 ], [ 1, %1300 ]
  br label %1317

1317:                                             ; preds = %1313, %1317
  %1318 = phi ptr [ %1320, %1317 ], [ %1314, %1313 ]
  %1319 = getelementptr inbounds [2 x %struct.LIST], ptr %1318, i64 0, i64 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !5
  %1321 = getelementptr inbounds %struct.word_type, ptr %1320, i64 0, i32 1
  %1322 = load i8, ptr %1321, align 8, !tbaa !5
  switch i8 %1322, label %1336 [
    i8 0, label %1317
    i8 1, label %1323
    i8 9, label %1333
  ]

1323:                                             ; preds = %1317
  %1324 = icmp eq i32 %1316, 0
  br i1 %1324, label %1330, label %1325

1325:                                             ; preds = %1323
  %1326 = getelementptr inbounds %struct.gapobj_type, ptr %1320, i64 0, i32 3
  %1327 = load i16, ptr %1326, align 4
  %1328 = and i16 %1327, 512
  %1329 = icmp ne i16 %1328, 0
  br label %1330

1330:                                             ; preds = %1325, %1323
  %1331 = phi i1 [ false, %1323 ], [ %1329, %1325 ]
  %1332 = zext i1 %1331 to i32
  br label %1344

1333:                                             ; preds = %1317
  %1334 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1320) #5
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1344, label %1339

1336:                                             ; preds = %1317
  %1337 = add i8 %1322, -9
  %1338 = icmp ult i8 %1337, 91
  br i1 %1338, label %1339, label %1344

1339:                                             ; preds = %1336, %1333
  %1340 = icmp eq ptr %1315, null
  br i1 %1340, label %1341, label %1350

1341:                                             ; preds = %1339
  %1342 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1343 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1342, ptr noundef nonnull @.str.6) #5
  br label %1350

1344:                                             ; preds = %1330, %1336, %1333
  %1345 = phi i32 [ %1332, %1330 ], [ %1316, %1333 ], [ %1316, %1336 ]
  %1346 = phi ptr [ %1320, %1330 ], [ %1315, %1333 ], [ %1315, %1336 ]
  %1347 = getelementptr inbounds %struct.LIST, ptr %1314, i64 0, i32 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !5
  %1349 = icmp eq ptr %1348, %0
  br i1 %1349, label %1488, label %1313

1350:                                             ; preds = %1339, %1341
  %1351 = icmp eq ptr %1314, %0
  br i1 %1351, label %1488, label %1352

1352:                                             ; preds = %1350, %1486
  %1353 = phi i32 [ %1439, %1486 ], [ %1307, %1350 ]
  %1354 = phi i32 [ %1440, %1486 ], [ %1304, %1350 ]
  %1355 = phi i32 [ %1445, %1486 ], [ %7, %1350 ]
  %1356 = phi ptr [ %1456, %1486 ], [ %1320, %1350 ]
  %1357 = phi ptr [ %1450, %1486 ], [ %1314, %1350 ]
  %1358 = phi i32 [ %1444, %1486 ], [ 0, %1350 ]
  %1359 = phi i32 [ %1443, %1486 ], [ %1309, %1350 ]
  %1360 = phi ptr [ %1442, %1486 ], [ %1276, %1350 ]
  %1361 = phi ptr [ %1441, %1486 ], [ %1271, %1350 ]
  %1362 = phi i32 [ %1452, %1486 ], [ %1316, %1350 ]
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1364, label %1423

1364:                                             ; preds = %1352
  %1365 = add nsw i32 %1354, %1
  %1366 = sub nsw i32 %3, %1354
  %1367 = call ptr @FixAndPrintObject(ptr noundef %1360, i32 noundef %1365, i32 noundef %1354, i32 noundef %1366, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %1355, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1368 = getelementptr inbounds %struct.word_type, ptr %1360, i64 0, i32 3
  %1369 = getelementptr inbounds [2 x i32], ptr %1368, i64 0, i64 %1302
  %1370 = load i32, ptr %1369, align 4, !tbaa !5
  store i32 %1370, ptr %19, align 4, !tbaa !8
  %1371 = getelementptr inbounds %struct.word_type, ptr %1360, i64 0, i32 3, i32 1
  %1372 = getelementptr inbounds [2 x i32], ptr %1371, i64 0, i64 %1302
  %1373 = load i32, ptr %1372, align 4, !tbaa !5
  %1374 = icmp eq ptr %1361, %1357
  br i1 %1374, label %1411, label %1375

1375:                                             ; preds = %1364, %1405
  %1376 = phi i32 [ %1406, %1405 ], [ %1373, %1364 ]
  %1377 = phi i32 [ %1407, %1405 ], [ %1370, %1364 ]
  %1378 = phi ptr [ %1409, %1405 ], [ %1361, %1364 ]
  br label %1379

1379:                                             ; preds = %1379, %1375
  %1380 = phi ptr [ %1383, %1379 ], [ %1378, %1375 ]
  %1381 = phi i32 [ %1387, %1379 ], [ 1, %1375 ]
  %1382 = getelementptr inbounds [2 x %struct.LIST], ptr %1380, i64 0, i64 1
  %1383 = load ptr, ptr %1382, align 8, !tbaa !5
  %1384 = getelementptr inbounds %struct.word_type, ptr %1383, i64 0, i32 1
  %1385 = load i8, ptr %1384, align 8, !tbaa !5
  %1386 = icmp eq i8 %1385, 0
  %1387 = add nuw nsw i32 %1381, 1
  br i1 %1386, label %1379, label %1388

1388:                                             ; preds = %1379
  %1389 = add i8 %1385, -100
  %1390 = icmp ult i8 %1389, -91
  %1391 = icmp eq ptr %1383, %1360
  %1392 = or i1 %1391, %1390
  br i1 %1392, label %1405, label %1393

1393:                                             ; preds = %1388
  %1394 = add nsw i32 %1377, %1
  %1395 = sub nsw i32 %3, %1377
  %1396 = call ptr @FixAndPrintObject(ptr noundef nonnull %1383, i32 noundef %1394, i32 noundef %1377, i32 noundef %1395, i32 noundef %4, i32 noundef 1, i32 noundef %6, i32 noundef %1381, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1397 = getelementptr inbounds %struct.word_type, ptr %1383, i64 0, i32 3
  %1398 = getelementptr inbounds [2 x i32], ptr %1397, i64 0, i64 %1302
  %1399 = load i32, ptr %1398, align 4, !tbaa !5
  %1400 = call i32 @llvm.smax.i32(i32 %1377, i32 %1399)
  %1401 = getelementptr inbounds %struct.word_type, ptr %1383, i64 0, i32 3, i32 1
  %1402 = getelementptr inbounds [2 x i32], ptr %1401, i64 0, i64 %1302
  %1403 = load i32, ptr %1402, align 4, !tbaa !5
  %1404 = call i32 @llvm.smax.i32(i32 %1376, i32 %1403)
  br label %1405

1405:                                             ; preds = %1388, %1393
  %1406 = phi i32 [ %1376, %1388 ], [ %1404, %1393 ]
  %1407 = phi i32 [ %1377, %1388 ], [ %1400, %1393 ]
  %1408 = getelementptr inbounds %struct.LIST, ptr %1378, i64 0, i32 1
  %1409 = load ptr, ptr %1408, align 8, !tbaa !5
  %1410 = icmp eq ptr %1409, %1357
  br i1 %1410, label %1411, label %1375

1411:                                             ; preds = %1405, %1364
  %1412 = phi i32 [ %1373, %1364 ], [ %1406, %1405 ]
  %1413 = phi i32 [ %1370, %1364 ], [ %1407, %1405 ]
  %1414 = phi i32 [ %1355, %1364 ], [ %1381, %1405 ]
  %1415 = add nsw i32 %1412, %1413
  %1416 = call i32 @llvm.smax.i32(i32 %1358, i32 %1415)
  %1417 = getelementptr inbounds %struct.word_type, ptr %1356, i64 0, i32 3
  %1418 = getelementptr inbounds [2 x i32], ptr %1417, i64 0, i64 %1302
  %1419 = load i32, ptr %1418, align 4, !tbaa !5
  store i32 %1419, ptr %19, align 4, !tbaa !8
  %1420 = getelementptr inbounds %struct.word_type, ptr %1356, i64 0, i32 3, i32 1
  %1421 = getelementptr inbounds [2 x i32], ptr %1420, i64 0, i64 %1302
  %1422 = load i32, ptr %1421, align 4, !tbaa !5
  store i32 %1422, ptr %20, align 4, !tbaa !8
  br label %1438

1423:                                             ; preds = %1352
  %1424 = getelementptr inbounds %struct.word_type, ptr %1356, i64 0, i32 3
  %1425 = getelementptr inbounds [2 x i32], ptr %1424, i64 0, i64 %1302
  %1426 = load i32, ptr %1425, align 4, !tbaa !5
  %1427 = call i32 @llvm.smax.i32(i32 %1354, i32 %1426)
  store i32 %1427, ptr %19, align 4, !tbaa !8
  %1428 = getelementptr inbounds %struct.word_type, ptr %1356, i64 0, i32 3, i32 1
  %1429 = getelementptr inbounds [2 x i32], ptr %1428, i64 0, i64 %1302
  %1430 = load i32, ptr %1429, align 4, !tbaa !5
  %1431 = call i32 @llvm.smax.i32(i32 %1353, i32 %1430)
  store i32 %1431, ptr %20, align 4, !tbaa !8
  %1432 = load i32, ptr %1429, align 4, !tbaa !5
  %1433 = getelementptr inbounds %struct.word_type, ptr %1360, i64 0, i32 3, i32 1
  %1434 = getelementptr inbounds [2 x i32], ptr %1433, i64 0, i64 %1302
  %1435 = load i32, ptr %1434, align 4, !tbaa !5
  %1436 = icmp sgt i32 %1432, %1435
  %1437 = select i1 %1436, ptr %1356, ptr %1360
  br label %1438

1438:                                             ; preds = %1423, %1411
  %1439 = phi i32 [ %1422, %1411 ], [ %1431, %1423 ]
  %1440 = phi i32 [ %1419, %1411 ], [ %1427, %1423 ]
  %1441 = phi ptr [ %1357, %1411 ], [ %1361, %1423 ]
  %1442 = phi ptr [ %1356, %1411 ], [ %1437, %1423 ]
  %1443 = phi i32 [ 1, %1411 ], [ %1359, %1423 ]
  %1444 = phi i32 [ %1416, %1411 ], [ %1358, %1423 ]
  %1445 = phi i32 [ %1414, %1411 ], [ %1355, %1423 ]
  %1446 = getelementptr inbounds %struct.LIST, ptr %1357, i64 0, i32 1
  %1447 = load ptr, ptr %1446, align 8, !tbaa !5
  %1448 = icmp eq ptr %1447, %0
  br i1 %1448, label %1488, label %1449

1449:                                             ; preds = %1438, %1480
  %1450 = phi ptr [ %1484, %1480 ], [ %1447, %1438 ]
  %1451 = phi ptr [ %1482, %1480 ], [ null, %1438 ]
  %1452 = phi i32 [ %1481, %1480 ], [ 1, %1438 ]
  br label %1453

1453:                                             ; preds = %1449, %1453
  %1454 = phi ptr [ %1456, %1453 ], [ %1450, %1449 ]
  %1455 = getelementptr inbounds [2 x %struct.LIST], ptr %1454, i64 0, i64 1
  %1456 = load ptr, ptr %1455, align 8, !tbaa !5
  %1457 = getelementptr inbounds %struct.word_type, ptr %1456, i64 0, i32 1
  %1458 = load i8, ptr %1457, align 8, !tbaa !5
  switch i8 %1458, label %1472 [
    i8 0, label %1453
    i8 1, label %1459
    i8 9, label %1469
  ]

1459:                                             ; preds = %1453
  %1460 = icmp eq i32 %1452, 0
  br i1 %1460, label %1466, label %1461

1461:                                             ; preds = %1459
  %1462 = getelementptr inbounds %struct.gapobj_type, ptr %1456, i64 0, i32 3
  %1463 = load i16, ptr %1462, align 4
  %1464 = and i16 %1463, 512
  %1465 = icmp ne i16 %1464, 0
  br label %1466

1466:                                             ; preds = %1461, %1459
  %1467 = phi i1 [ false, %1459 ], [ %1465, %1461 ]
  %1468 = zext i1 %1467 to i32
  br label %1480

1469:                                             ; preds = %1453
  %1470 = call i32 @SplitIsDefinite(ptr noundef nonnull %1456) #5
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1480, label %1475

1472:                                             ; preds = %1453
  %1473 = add i8 %1458, -9
  %1474 = icmp ult i8 %1473, 91
  br i1 %1474, label %1475, label %1480

1475:                                             ; preds = %1472, %1469
  %1476 = icmp eq ptr %1451, null
  br i1 %1476, label %1477, label %1486

1477:                                             ; preds = %1475
  %1478 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1479 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1478, ptr noundef nonnull @.str.6) #5
  br label %1486

1480:                                             ; preds = %1466, %1472, %1469
  %1481 = phi i32 [ %1468, %1466 ], [ %1452, %1469 ], [ %1452, %1472 ]
  %1482 = phi ptr [ %1456, %1466 ], [ %1451, %1469 ], [ %1451, %1472 ]
  %1483 = getelementptr inbounds %struct.LIST, ptr %1450, i64 0, i32 1
  %1484 = load ptr, ptr %1483, align 8, !tbaa !5
  %1485 = icmp eq ptr %1484, %0
  br i1 %1485, label %1488, label %1449

1486:                                             ; preds = %1475, %1477
  %1487 = icmp eq ptr %1450, %0
  br i1 %1487, label %1488, label %1352

1488:                                             ; preds = %1344, %1438, %1486, %1480, %1350
  %1489 = phi i32 [ %1304, %1350 ], [ %1440, %1480 ], [ %1440, %1486 ], [ %1440, %1438 ], [ %1304, %1344 ]
  %1490 = phi i32 [ %1316, %1350 ], [ %1481, %1480 ], [ 1, %1438 ], [ %1452, %1486 ], [ %1345, %1344 ]
  %1491 = phi ptr [ %1271, %1350 ], [ %1441, %1480 ], [ %1441, %1486 ], [ %1441, %1438 ], [ %1271, %1344 ]
  %1492 = phi ptr [ %1276, %1350 ], [ %1442, %1480 ], [ %1442, %1486 ], [ %1442, %1438 ], [ %1276, %1344 ]
  %1493 = phi i32 [ %1309, %1350 ], [ %1443, %1480 ], [ %1443, %1486 ], [ %1443, %1438 ], [ %1309, %1344 ]
  %1494 = phi i32 [ 0, %1350 ], [ %1444, %1480 ], [ %1444, %1486 ], [ %1444, %1438 ], [ 0, %1344 ]
  %1495 = phi i32 [ %7, %1350 ], [ %1445, %1480 ], [ %1445, %1486 ], [ %1445, %1438 ], [ %7, %1344 ]
  %1496 = icmp eq ptr %1491, null
  br i1 %1496, label %1497, label %1500

1497:                                             ; preds = %1488
  %1498 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1499 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1498, ptr noundef nonnull @.str.7) #5
  br label %1500

1500:                                             ; preds = %1300, %1497, %1488
  %1501 = phi i32 [ %1495, %1497 ], [ %1495, %1488 ], [ %7, %1300 ]
  %1502 = phi i32 [ %1494, %1497 ], [ %1494, %1488 ], [ 0, %1300 ]
  %1503 = phi i32 [ %1493, %1497 ], [ %1493, %1488 ], [ %1309, %1300 ]
  %1504 = phi ptr [ %1492, %1497 ], [ %1492, %1488 ], [ %1276, %1300 ]
  %1505 = phi ptr [ null, %1497 ], [ %1491, %1488 ], [ %1271, %1300 ]
  %1506 = phi i32 [ %1490, %1497 ], [ %1490, %1488 ], [ 1, %1300 ]
  %1507 = phi i32 [ %1489, %1497 ], [ %1489, %1488 ], [ %1304, %1300 ]
  %1508 = icmp eq i32 %1503, 0
  %1509 = icmp ne i32 %1506, 0
  %1510 = select i1 %1508, i1 %1509, i1 false
  br i1 %1510, label %1563, label %1511

1511:                                             ; preds = %1500
  %1512 = add nsw i32 %1507, %1
  %1513 = sub nsw i32 %3, %1507
  %1514 = call ptr @FixAndPrintObject(ptr noundef %1504, i32 noundef %1512, i32 noundef %1507, i32 noundef %1513, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %1501, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1515 = getelementptr inbounds %struct.word_type, ptr %1504, i64 0, i32 3
  %1516 = getelementptr inbounds [2 x i32], ptr %1515, i64 0, i64 %1302
  %1517 = load i32, ptr %1516, align 4, !tbaa !5
  store i32 %1517, ptr %19, align 4, !tbaa !8
  %1518 = getelementptr inbounds %struct.word_type, ptr %1504, i64 0, i32 3, i32 1
  %1519 = getelementptr inbounds [2 x i32], ptr %1518, i64 0, i64 %1302
  %1520 = load i32, ptr %1519, align 4, !tbaa !5
  %1521 = icmp eq ptr %1505, %0
  br i1 %1521, label %1558, label %1522

1522:                                             ; preds = %1511, %1552
  %1523 = phi i32 [ %1553, %1552 ], [ %1520, %1511 ]
  %1524 = phi i32 [ %1554, %1552 ], [ %1517, %1511 ]
  %1525 = phi ptr [ %1556, %1552 ], [ %1505, %1511 ]
  br label %1526

1526:                                             ; preds = %1526, %1522
  %1527 = phi ptr [ %1530, %1526 ], [ %1525, %1522 ]
  %1528 = phi i32 [ %1534, %1526 ], [ 1, %1522 ]
  %1529 = getelementptr inbounds [2 x %struct.LIST], ptr %1527, i64 0, i64 1
  %1530 = load ptr, ptr %1529, align 8, !tbaa !5
  %1531 = getelementptr inbounds %struct.word_type, ptr %1530, i64 0, i32 1
  %1532 = load i8, ptr %1531, align 8, !tbaa !5
  %1533 = icmp eq i8 %1532, 0
  %1534 = add nuw nsw i32 %1528, 1
  br i1 %1533, label %1526, label %1535

1535:                                             ; preds = %1526
  %1536 = add i8 %1532, -100
  %1537 = icmp ult i8 %1536, -91
  %1538 = icmp eq ptr %1530, %1504
  %1539 = or i1 %1538, %1537
  br i1 %1539, label %1552, label %1540

1540:                                             ; preds = %1535
  %1541 = add nsw i32 %1524, %1
  %1542 = sub nsw i32 %3, %1524
  %1543 = call ptr @FixAndPrintObject(ptr noundef nonnull %1530, i32 noundef %1541, i32 noundef %1524, i32 noundef %1542, i32 noundef %4, i32 noundef 1, i32 noundef %6, i32 noundef %1528, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1544 = getelementptr inbounds %struct.word_type, ptr %1530, i64 0, i32 3
  %1545 = getelementptr inbounds [2 x i32], ptr %1544, i64 0, i64 %1302
  %1546 = load i32, ptr %1545, align 4, !tbaa !5
  %1547 = call i32 @llvm.smax.i32(i32 %1524, i32 %1546)
  %1548 = getelementptr inbounds %struct.word_type, ptr %1530, i64 0, i32 3, i32 1
  %1549 = getelementptr inbounds [2 x i32], ptr %1548, i64 0, i64 %1302
  %1550 = load i32, ptr %1549, align 4, !tbaa !5
  %1551 = call i32 @llvm.smax.i32(i32 %1523, i32 %1550)
  br label %1552

1552:                                             ; preds = %1535, %1540
  %1553 = phi i32 [ %1523, %1535 ], [ %1551, %1540 ]
  %1554 = phi i32 [ %1524, %1535 ], [ %1547, %1540 ]
  %1555 = getelementptr inbounds %struct.LIST, ptr %1525, i64 0, i32 1
  %1556 = load ptr, ptr %1555, align 8, !tbaa !5
  %1557 = icmp eq ptr %1556, %0
  br i1 %1557, label %1558, label %1522

1558:                                             ; preds = %1552, %1511
  %1559 = phi i32 [ %1520, %1511 ], [ %1553, %1552 ]
  %1560 = phi i32 [ %1517, %1511 ], [ %1554, %1552 ]
  %1561 = add nsw i32 %1559, %1560
  %1562 = call i32 @llvm.smax.i32(i32 %1502, i32 %1561)
  store i32 0, ptr %8, align 4, !tbaa !8
  br label %1597

1563:                                             ; preds = %1500
  %1564 = call ptr @FixAndPrintObject(ptr noundef %1504, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %1501, ptr noundef nonnull %19, ptr noundef nonnull %20)
  %1565 = icmp eq ptr %1505, %0
  br i1 %1565, label %1594, label %1566

1566:                                             ; preds = %1563, %1590
  %1567 = phi ptr [ %1592, %1590 ], [ %1505, %1563 ]
  br label %1568

1568:                                             ; preds = %1568, %1566
  %1569 = phi ptr [ %1572, %1568 ], [ %1567, %1566 ]
  %1570 = phi i32 [ %1576, %1568 ], [ 1, %1566 ]
  %1571 = getelementptr inbounds [2 x %struct.LIST], ptr %1569, i64 0, i64 1
  %1572 = load ptr, ptr %1571, align 8, !tbaa !5
  %1573 = getelementptr inbounds %struct.word_type, ptr %1572, i64 0, i32 1
  %1574 = load i8, ptr %1573, align 8, !tbaa !5
  %1575 = icmp eq i8 %1574, 0
  %1576 = add nuw nsw i32 %1570, 1
  br i1 %1575, label %1568, label %1577

1577:                                             ; preds = %1568
  %1578 = add i8 %1574, -100
  %1579 = icmp ult i8 %1578, -91
  %1580 = icmp eq ptr %1572, %1504
  %1581 = select i1 %1579, i1 true, i1 %1580
  br i1 %1581, label %1590, label %1582

1582:                                             ; preds = %1577
  %1583 = call ptr @FixAndPrintObject(ptr noundef nonnull %1572, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef %6, i32 noundef %1570, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %1584 = load i32, ptr %19, align 4
  %1585 = load i32, ptr %11, align 4
  %1586 = call i32 @llvm.smax.i32(i32 %1584, i32 %1585)
  store i32 %1586, ptr %19, align 4, !tbaa !8
  %1587 = load i32, ptr %20, align 4
  %1588 = load i32, ptr %12, align 4
  %1589 = call i32 @llvm.smax.i32(i32 %1587, i32 %1588)
  store i32 %1589, ptr %20, align 4, !tbaa !8
  br label %1590

1590:                                             ; preds = %1577, %1582
  %1591 = getelementptr inbounds %struct.LIST, ptr %1567, i64 0, i32 1
  %1592 = load ptr, ptr %1591, align 8, !tbaa !5
  %1593 = icmp eq ptr %1592, %0
  br i1 %1593, label %1594, label %1566

1594:                                             ; preds = %1590, %1563
  %1595 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %1595, ptr %8, align 4, !tbaa !8
  %1596 = load i32, ptr %20, align 4, !tbaa !8
  br label %1597

1597:                                             ; preds = %1594, %1558
  %1598 = phi i32 [ %1562, %1558 ], [ %1596, %1594 ]
  store i32 %1598, ptr %9, align 4, !tbaa !8
  br label %1599

1599:                                             ; preds = %1295, %1597, %1266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #5
  br label %2572

1600:                                             ; preds = %10
  %1601 = icmp eq i32 %4, 0
  %1602 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %1603 = load ptr, ptr %1602, align 8, !tbaa !5
  %1604 = icmp eq ptr %1603, %0
  br i1 %1601, label %1608, label %1605

1605:                                             ; preds = %1600
  br i1 %1604, label %2434, label %1606

1606:                                             ; preds = %1605
  %1607 = sub nsw i32 %6, %1
  br label %2352

1608:                                             ; preds = %1600
  br i1 %1604, label %2347, label %1609

1609:                                             ; preds = %1608, %1623
  %1610 = phi ptr [ %1625, %1623 ], [ %1603, %1608 ]
  br label %1611

1611:                                             ; preds = %1609, %1611
  %1612 = phi ptr [ %1614, %1611 ], [ %1610, %1609 ]
  %1613 = getelementptr inbounds [2 x %struct.LIST], ptr %1612, i64 0, i64 1
  %1614 = load ptr, ptr %1613, align 8, !tbaa !5
  %1615 = getelementptr inbounds %struct.word_type, ptr %1614, i64 0, i32 1
  %1616 = load i8, ptr %1615, align 8, !tbaa !5
  switch i8 %1616, label %1620 [
    i8 0, label %1611
    i8 1, label %1623
    i8 9, label %1617
  ]

1617:                                             ; preds = %1611
  %1618 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1614) #5
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1623, label %1627

1620:                                             ; preds = %1611
  %1621 = add i8 %1616, -9
  %1622 = icmp ult i8 %1621, 91
  br i1 %1622, label %1627, label %1623

1623:                                             ; preds = %1611, %1620, %1617
  %1624 = getelementptr inbounds %struct.LIST, ptr %1610, i64 0, i32 1
  %1625 = load ptr, ptr %1624, align 8, !tbaa !5
  %1626 = icmp eq ptr %1625, %0
  br i1 %1626, label %2347, label %1609

1627:                                             ; preds = %1617, %1620
  %1628 = sub nsw i32 %1, %2
  %1629 = getelementptr inbounds %struct.word_type, ptr %1614, i64 0, i32 3
  %1630 = load i32, ptr %1629, align 4, !tbaa !5
  %1631 = add nsw i32 %1630, %1628
  %1632 = add nsw i32 %3, %2
  %1633 = getelementptr inbounds %struct.LIST, ptr %1610, i64 0, i32 1
  %1634 = load ptr, ptr %1633, align 8, !tbaa !5
  %1635 = icmp eq ptr %1634, %0
  br i1 %1635, label %1730, label %1636

1636:                                             ; preds = %1627, %1656
  %1637 = phi ptr [ %1659, %1656 ], [ %1634, %1627 ]
  %1638 = phi ptr [ %1657, %1656 ], [ null, %1627 ]
  br label %1639

1639:                                             ; preds = %1636, %1639
  %1640 = phi ptr [ %1642, %1639 ], [ %1637, %1636 ]
  %1641 = getelementptr inbounds [2 x %struct.LIST], ptr %1640, i64 0, i64 1
  %1642 = load ptr, ptr %1641, align 8, !tbaa !5
  %1643 = getelementptr inbounds %struct.word_type, ptr %1642, i64 0, i32 1
  %1644 = load i8, ptr %1643, align 8, !tbaa !5
  switch i8 %1644, label %1648 [
    i8 0, label %1639
    i8 1, label %1656
    i8 9, label %1645
  ]

1645:                                             ; preds = %1639
  %1646 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1642) #5
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1656, label %1651

1648:                                             ; preds = %1639
  %1649 = add i8 %1644, -9
  %1650 = icmp ult i8 %1649, 91
  br i1 %1650, label %1651, label %1656

1651:                                             ; preds = %1648, %1645
  %1652 = icmp eq ptr %1638, null
  br i1 %1652, label %1653, label %1661

1653:                                             ; preds = %1651
  %1654 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1655 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1654, ptr noundef nonnull @.str.6) #5
  br label %1661

1656:                                             ; preds = %1639, %1648, %1645
  %1657 = phi ptr [ %1638, %1645 ], [ %1638, %1648 ], [ %1642, %1639 ]
  %1658 = getelementptr inbounds %struct.LIST, ptr %1637, i64 0, i32 1
  %1659 = load ptr, ptr %1658, align 8, !tbaa !5
  %1660 = icmp eq ptr %1659, %0
  br i1 %1660, label %1730, label %1636

1661:                                             ; preds = %1651, %1653
  %1662 = icmp eq ptr %1637, %0
  br i1 %1662, label %1730, label %1663

1663:                                             ; preds = %1661, %1728
  %1664 = phi ptr [ %1699, %1728 ], [ null, %1661 ]
  %1665 = phi i32 [ %1698, %1728 ], [ 0, %1661 ]
  %1666 = phi ptr [ %1709, %1728 ], [ %1642, %1661 ]
  %1667 = phi ptr [ %1704, %1728 ], [ %1637, %1661 ]
  %1668 = phi ptr [ %1666, %1728 ], [ %1614, %1661 ]
  %1669 = phi ptr [ %1705, %1728 ], [ %1638, %1661 ]
  %1670 = phi i32 [ %1684, %1728 ], [ %1631, %1661 ]
  %1671 = getelementptr inbounds %struct.word_type, ptr %1668, i64 0, i32 3, i32 1
  %1672 = load i32, ptr %1671, align 4, !tbaa !5
  %1673 = getelementptr inbounds %struct.word_type, ptr %1666, i64 0, i32 3
  %1674 = load i32, ptr %1673, align 4, !tbaa !5
  %1675 = getelementptr inbounds %struct.word_type, ptr %1666, i64 0, i32 3, i32 1
  %1676 = load i32, ptr %1675, align 4, !tbaa !5
  %1677 = getelementptr inbounds %struct.gapobj_type, ptr %1669, i64 0, i32 3
  %1678 = sub nsw i32 %1670, %1628
  %1679 = tail call i32 @ActualGap(i32 noundef %1672, i32 noundef %1674, i32 noundef %1676, ptr noundef nonnull %1677, i32 noundef %1632, i32 noundef %1678) #5
  %1680 = trunc i32 %1679 to i16
  %1681 = getelementptr inbounds %struct.gapobj_type, ptr %1669, i64 0, i32 6
  store i16 %1680, ptr %1681, align 2, !tbaa !5
  %1682 = shl i32 %1679, 16
  %1683 = ashr exact i32 %1682, 16
  %1684 = add nsw i32 %1683, %1670
  %1685 = load i16, ptr %1677, align 4
  %1686 = and i16 %1685, -8192
  %1687 = icmp eq i16 %1686, -16384
  %1688 = and i16 %1685, 6144
  %1689 = icmp eq i16 %1688, 2048
  %1690 = or i1 %1687, %1689
  br i1 %1690, label %1697, label %1691

1691:                                             ; preds = %1663
  %1692 = getelementptr inbounds %struct.gapobj_type, ptr %1669, i64 0, i32 3, i32 1
  %1693 = load i16, ptr %1692, align 2, !tbaa !5
  %1694 = icmp sgt i16 %1693, 0
  %1695 = zext i1 %1694 to i32
  %1696 = add nsw i32 %1665, %1695
  br label %1697

1697:                                             ; preds = %1691, %1663
  %1698 = phi i32 [ 0, %1663 ], [ %1696, %1691 ]
  %1699 = phi ptr [ %1669, %1663 ], [ %1664, %1691 ]
  %1700 = getelementptr inbounds %struct.LIST, ptr %1667, i64 0, i32 1
  %1701 = load ptr, ptr %1700, align 8, !tbaa !5
  %1702 = icmp eq ptr %1701, %0
  br i1 %1702, label %1730, label %1703

1703:                                             ; preds = %1697, %1723
  %1704 = phi ptr [ %1726, %1723 ], [ %1701, %1697 ]
  %1705 = phi ptr [ %1724, %1723 ], [ null, %1697 ]
  br label %1706

1706:                                             ; preds = %1703, %1706
  %1707 = phi ptr [ %1709, %1706 ], [ %1704, %1703 ]
  %1708 = getelementptr inbounds [2 x %struct.LIST], ptr %1707, i64 0, i64 1
  %1709 = load ptr, ptr %1708, align 8, !tbaa !5
  %1710 = getelementptr inbounds %struct.word_type, ptr %1709, i64 0, i32 1
  %1711 = load i8, ptr %1710, align 8, !tbaa !5
  switch i8 %1711, label %1715 [
    i8 0, label %1706
    i8 1, label %1723
    i8 9, label %1712
  ]

1712:                                             ; preds = %1706
  %1713 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1709) #5
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1723, label %1718

1715:                                             ; preds = %1706
  %1716 = add i8 %1711, -9
  %1717 = icmp ult i8 %1716, 91
  br i1 %1717, label %1718, label %1723

1718:                                             ; preds = %1715, %1712
  %1719 = icmp eq ptr %1705, null
  br i1 %1719, label %1720, label %1728

1720:                                             ; preds = %1718
  %1721 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1722 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1721, ptr noundef nonnull @.str.6) #5
  br label %1728

1723:                                             ; preds = %1706, %1715, %1712
  %1724 = phi ptr [ %1705, %1712 ], [ %1705, %1715 ], [ %1709, %1706 ]
  %1725 = getelementptr inbounds %struct.LIST, ptr %1704, i64 0, i32 1
  %1726 = load ptr, ptr %1725, align 8, !tbaa !5
  %1727 = icmp eq ptr %1726, %0
  br i1 %1727, label %1730, label %1703

1728:                                             ; preds = %1718, %1720
  %1729 = icmp eq ptr %1704, %0
  br i1 %1729, label %1730, label %1663

1730:                                             ; preds = %1656, %1697, %1728, %1723, %1627, %1661
  %1731 = phi i32 [ %1631, %1661 ], [ %1631, %1627 ], [ %1684, %1723 ], [ %1684, %1728 ], [ %1684, %1697 ], [ %1631, %1656 ]
  %1732 = phi ptr [ %1614, %1661 ], [ %1614, %1627 ], [ %1666, %1723 ], [ %1666, %1728 ], [ %1666, %1697 ], [ %1614, %1656 ]
  %1733 = phi ptr [ %1642, %1661 ], [ %1614, %1627 ], [ %1709, %1723 ], [ %1666, %1697 ], [ %1709, %1728 ], [ %1642, %1656 ]
  %1734 = phi i32 [ 0, %1661 ], [ 0, %1627 ], [ %1698, %1723 ], [ %1698, %1728 ], [ %1698, %1697 ], [ 0, %1656 ]
  %1735 = phi ptr [ null, %1661 ], [ null, %1627 ], [ %1699, %1723 ], [ %1699, %1728 ], [ %1699, %1697 ], [ null, %1656 ]
  %1736 = getelementptr inbounds %struct.word_type, ptr %1732, i64 0, i32 3, i32 1
  %1737 = load i32, ptr %1736, align 4, !tbaa !5
  %1738 = sub i32 %1731, %1628
  %1739 = add i32 %1738, %1737
  %1740 = icmp sgt i32 %1739, %1632
  %1741 = icmp eq i32 %1734, 0
  %1742 = select i1 %1740, i1 %1741, i1 false
  br i1 %1742, label %1743, label %1942

1743:                                             ; preds = %1730
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #5
  store i32 0, ptr %21, align 4, !tbaa !23
  %1744 = getelementptr inbounds %struct.CONSTRAINT, ptr %21, i64 0, i32 1
  store i32 %1632, ptr %1744, align 4, !tbaa !25
  %1745 = getelementptr inbounds %struct.CONSTRAINT, ptr %21, i64 0, i32 2
  store i32 %1632, ptr %1745, align 4, !tbaa !26
  %1746 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1747 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %1739, ptr %1747, align 4, !tbaa !5
  %1748 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1749 = getelementptr inbounds %struct.back_end_rec, ptr %1748, i64 0, i32 2
  %1750 = load i32, ptr %1749, align 8, !tbaa !17
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1812, label %1752

1752:                                             ; preds = %1743
  %1753 = call i32 @InsertScale(ptr noundef nonnull %0, ptr noundef nonnull %21) #5
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1755, label %1757

1755:                                             ; preds = %1752
  %1756 = load i32, ptr %1747, align 8, !tbaa !5
  br label %1812

1757:                                             ; preds = %1752
  %1758 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %1759 = load ptr, ptr %1758, align 8, !tbaa !5
  br label %1760

1760:                                             ; preds = %1760, %1757
  %1761 = phi ptr [ %1759, %1757 ], [ %1762, %1760 ]
  %1762 = load ptr, ptr %1761, align 8, !tbaa !5
  %1763 = getelementptr inbounds %struct.word_type, ptr %1762, i64 0, i32 1
  %1764 = load i8, ptr %1763, align 8, !tbaa !5
  %1765 = icmp eq i8 %1764, 0
  br i1 %1765, label %1760, label %1766

1766:                                             ; preds = %1760
  %1767 = load ptr, ptr %1602, align 8, !tbaa !5
  br label %1768

1768:                                             ; preds = %1768, %1766
  %1769 = phi ptr [ %1767, %1766 ], [ %1771, %1768 ]
  %1770 = getelementptr inbounds [2 x %struct.LIST], ptr %1769, i64 0, i64 1
  %1771 = load ptr, ptr %1770, align 8, !tbaa !5
  %1772 = getelementptr inbounds %struct.word_type, ptr %1771, i64 0, i32 1
  %1773 = load i8, ptr %1772, align 8, !tbaa !5
  %1774 = icmp eq i8 %1773, 0
  br i1 %1774, label %1768, label %1775

1775:                                             ; preds = %1768
  %1776 = getelementptr inbounds %struct.word_type, ptr %1771, i64 0, i32 1
  %1777 = sub nsw i32 %1739, %1632
  %1778 = icmp slt i32 %1777, 20
  br i1 %1778, label %1806, label %1779

1779:                                             ; preds = %1775
  %1780 = load ptr, ptr %0, align 8, !tbaa !5
  %1781 = icmp eq ptr %1767, %1780
  %1782 = add i8 %1773, -11
  %1783 = icmp ult i8 %1782, 2
  %1784 = and i1 %1783, %1781
  br i1 %1784, label %1785, label %1794

1785:                                             ; preds = %1779
  %1786 = getelementptr inbounds %struct.word_type, ptr %1771, i64 0, i32 4
  %1787 = getelementptr inbounds %struct.closure_type, ptr %1762, i64 0, i32 4
  %1788 = load i32, ptr %1787, align 8, !tbaa !5
  %1789 = sitofp i32 %1788 to float
  %1790 = fmul float %1789, 7.812500e-03
  %1791 = fpext float %1790 to double
  %1792 = call ptr @EchoLength(i32 noundef %1632) #5
  %1793 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef nonnull %1776, ptr noundef nonnull %1786, double noundef %1791, ptr noundef %1792) #5
  br label %1806

1794:                                             ; preds = %1779
  %1795 = load i32, ptr %1746, align 8, !tbaa !5
  %1796 = load i32, ptr %1747, align 8, !tbaa !5
  %1797 = add nsw i32 %1796, %1795
  %1798 = call ptr @EchoLength(i32 noundef %1797) #5
  %1799 = getelementptr inbounds %struct.closure_type, ptr %1762, i64 0, i32 4
  %1800 = load i32, ptr %1799, align 8, !tbaa !5
  %1801 = sitofp i32 %1800 to float
  %1802 = fmul float %1801, 7.812500e-03
  %1803 = fpext float %1802 to double
  %1804 = call ptr @EchoLength(i32 noundef %1632) #5
  %1805 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef nonnull %22, ptr noundef %1798, double noundef %1803, ptr noundef %1804) #5
  br label %1806

1806:                                             ; preds = %1785, %1794, %1775
  %1807 = getelementptr inbounds %struct.word_type, ptr %1762, i64 0, i32 3
  %1808 = load i32, ptr %1807, align 4, !tbaa !5
  %1809 = getelementptr inbounds %struct.word_type, ptr %1762, i64 0, i32 3, i32 1
  %1810 = load i32, ptr %1809, align 4, !tbaa !5
  %1811 = call ptr @FixAndPrintObject(ptr noundef %1762, i32 noundef %1, i32 noundef %1808, i32 noundef %1810, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %1941

1812:                                             ; preds = %1755, %1743
  %1813 = phi i32 [ %1756, %1755 ], [ %1739, %1743 ]
  %1814 = load i32, ptr %1746, align 8, !tbaa !5
  %1815 = add nsw i32 %1813, %1814
  %1816 = icmp slt i32 %1815, 1
  br i1 %1816, label %1817, label %1819

1817:                                             ; preds = %1812
  %1818 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull %22) #5
  br label %1819

1819:                                             ; preds = %1817, %1812
  %1820 = load ptr, ptr %1602, align 8, !tbaa !5
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
  %1829 = load ptr, ptr %0, align 8, !tbaa !5
  %1830 = icmp eq ptr %1820, %1829
  %1831 = add i8 %1826, -11
  %1832 = icmp ult i8 %1831, 2
  %1833 = and i1 %1832, %1830
  br i1 %1833, label %1834, label %1839

1834:                                             ; preds = %1828
  %1835 = getelementptr inbounds %struct.word_type, ptr %1824, i64 0, i32 1
  %1836 = getelementptr inbounds %struct.word_type, ptr %1824, i64 0, i32 4
  %1837 = call ptr @EchoLength(i32 noundef %1632) #5
  %1838 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 6, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %1835, ptr noundef nonnull %1836, ptr noundef %1837) #5
  br label %1846

1839:                                             ; preds = %1828
  %1840 = load i32, ptr %1746, align 8, !tbaa !5
  %1841 = load i32, ptr %1747, align 8, !tbaa !5
  %1842 = add nsw i32 %1841, %1840
  %1843 = call ptr @EchoLength(i32 noundef %1842) #5
  %1844 = call ptr @EchoLength(i32 noundef %1632) #5
  %1845 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %22, ptr noundef %1843, ptr noundef %1844) #5
  br label %1846

1846:                                             ; preds = %1839, %1834
  %1847 = load ptr, ptr %1602, align 8, !tbaa !5
  %1848 = icmp eq ptr %1847, %0
  br i1 %1848, label %1900, label %1849

1849:                                             ; preds = %1846, %1897
  %1850 = phi ptr [ %1898, %1897 ], [ %1847, %1846 ]
  store ptr %1850, ptr @xx_link, align 8, !tbaa !10
  %1851 = getelementptr inbounds [2 x %struct.LIST], ptr %1850, i64 0, i64 1, i32 1
  %1852 = load ptr, ptr %1851, align 8, !tbaa !5
  %1853 = icmp eq ptr %1852, %1850
  br i1 %1853, label %1859, label %1854

1854:                                             ; preds = %1849
  store ptr %1852, ptr @zz_res, align 8, !tbaa !10
  %1855 = getelementptr inbounds [2 x %struct.LIST], ptr %1850, i64 0, i64 1
  %1856 = load ptr, ptr %1855, align 8, !tbaa !5
  %1857 = getelementptr inbounds [2 x %struct.LIST], ptr %1852, i64 0, i64 1
  store ptr %1856, ptr %1857, align 8, !tbaa !5
  %1858 = getelementptr inbounds [2 x %struct.LIST], ptr %1856, i64 0, i64 1, i32 1
  store ptr %1852, ptr %1858, align 8, !tbaa !5
  store ptr %1850, ptr %1851, align 8, !tbaa !5
  store ptr %1850, ptr %1855, align 8, !tbaa !5
  br label %1859

1859:                                             ; preds = %1849, %1854
  %1860 = phi ptr [ %1852, %1854 ], [ null, %1849 ]
  store ptr %1860, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1850, ptr @zz_hold, align 8, !tbaa !10
  %1861 = getelementptr inbounds %struct.LIST, ptr %1850, i64 0, i32 1
  %1862 = load ptr, ptr %1861, align 8, !tbaa !5
  %1863 = icmp eq ptr %1862, %1850
  br i1 %1863, label %1872, label %1864

1864:                                             ; preds = %1859
  store ptr %1862, ptr @zz_res, align 8, !tbaa !10
  %1865 = load ptr, ptr %1850, align 8, !tbaa !5
  store ptr %1865, ptr %1862, align 8, !tbaa !5
  %1866 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1867 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1868 = load ptr, ptr %1867, align 8, !tbaa !5
  %1869 = getelementptr inbounds %struct.LIST, ptr %1868, i64 0, i32 1
  store ptr %1866, ptr %1869, align 8, !tbaa !5
  %1870 = getelementptr inbounds %struct.LIST, ptr %1867, i64 0, i32 1
  store ptr %1867, ptr %1870, align 8, !tbaa !5
  store ptr %1867, ptr %1867, align 8, !tbaa !5
  %1871 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1872

1872:                                             ; preds = %1859, %1864
  %1873 = phi ptr [ %1850, %1859 ], [ %1871, %1864 ]
  store ptr %1873, ptr @zz_hold, align 8, !tbaa !10
  %1874 = getelementptr inbounds %struct.word_type, ptr %1873, i64 0, i32 1
  %1875 = load i8, ptr %1874, align 8, !tbaa !5
  %1876 = add i8 %1875, -11
  %1877 = icmp ult i8 %1876, 2
  %1878 = getelementptr inbounds %struct.word_type, ptr %1873, i64 0, i32 1, i32 0, i32 1
  %1879 = zext i8 %1875 to i64
  %1880 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1879
  %1881 = select i1 %1877, ptr %1878, ptr %1880
  %1882 = load i8, ptr %1881, align 1, !tbaa !5
  %1883 = zext i8 %1882 to i32
  store i32 %1883, ptr @zz_size, align 4, !tbaa !8
  %1884 = zext i8 %1882 to i64
  %1885 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1884
  %1886 = load ptr, ptr %1885, align 8, !tbaa !10
  store ptr %1886, ptr %1873, align 8, !tbaa !5
  %1887 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1888 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1889 = sext i32 %1888 to i64
  %1890 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1889
  store ptr %1887, ptr %1890, align 8, !tbaa !10
  %1891 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1892 = getelementptr inbounds [2 x %struct.LIST], ptr %1891, i64 0, i64 1, i32 1
  %1893 = load ptr, ptr %1892, align 8, !tbaa !5
  %1894 = icmp eq ptr %1893, %1891
  br i1 %1894, label %1895, label %1897

1895:                                             ; preds = %1872
  %1896 = call i32 @DisposeObject(ptr noundef nonnull %1891) #5
  br label %1897

1897:                                             ; preds = %1895, %1872
  %1898 = load ptr, ptr %1602, align 8, !tbaa !5
  %1899 = icmp eq ptr %1898, %0
  br i1 %1899, label %1900, label %1849

1900:                                             ; preds = %1897, %1846
  %1901 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.13, ptr noundef nonnull %22) #5
  %1902 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1903 = zext i8 %1902 to i32
  store i32 %1903, ptr @zz_size, align 4, !tbaa !8
  %1904 = zext i8 %1902 to i64
  %1905 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1904
  %1906 = load ptr, ptr %1905, align 8, !tbaa !10
  %1907 = icmp eq ptr %1906, null
  br i1 %1907, label %1908, label %1911

1908:                                             ; preds = %1900
  %1909 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1910 = call ptr @GetMemory(i32 noundef %1903, ptr noundef %1909) #5
  br label %1913

1911:                                             ; preds = %1900
  store ptr %1906, ptr @zz_hold, align 8, !tbaa !10
  %1912 = load ptr, ptr %1906, align 8, !tbaa !5
  store ptr %1912, ptr %1905, align 8, !tbaa !10
  br label %1913

1913:                                             ; preds = %1908, %1911
  %1914 = phi ptr [ %1910, %1908 ], [ %1906, %1911 ]
  %1915 = getelementptr inbounds %struct.word_type, ptr %1914, i64 0, i32 1
  store i8 0, ptr %1915, align 8, !tbaa !5
  %1916 = getelementptr inbounds [2 x %struct.LIST], ptr %1914, i64 0, i64 1, i32 1
  store ptr %1914, ptr %1916, align 8, !tbaa !5
  %1917 = getelementptr inbounds [2 x %struct.LIST], ptr %1914, i64 0, i64 1
  store ptr %1914, ptr %1917, align 8, !tbaa !5
  %1918 = getelementptr inbounds %struct.LIST, ptr %1914, i64 0, i32 1
  store ptr %1914, ptr %1918, align 8, !tbaa !5
  store ptr %1914, ptr %1914, align 8, !tbaa !5
  store ptr %1914, ptr @xx_link, align 8, !tbaa !10
  store ptr %1914, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %1919 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1919, ptr @zz_tmp, align 8, !tbaa !10
  %1920 = load ptr, ptr %1914, align 8, !tbaa !5
  store ptr %1920, ptr %0, align 8, !tbaa !5
  %1921 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1922 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1923 = load ptr, ptr %1922, align 8, !tbaa !5
  %1924 = getelementptr inbounds %struct.LIST, ptr %1923, i64 0, i32 1
  store ptr %1921, ptr %1924, align 8, !tbaa !5
  %1925 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1925, ptr %1922, align 8, !tbaa !5
  %1926 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1927 = getelementptr inbounds %struct.LIST, ptr %1925, i64 0, i32 1
  store ptr %1926, ptr %1927, align 8, !tbaa !5
  %1928 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %1928, ptr @zz_res, align 8, !tbaa !10
  store ptr %1901, ptr @zz_hold, align 8, !tbaa !10
  %1929 = icmp eq ptr %1901, null
  %1930 = icmp eq ptr %1928, null
  %1931 = select i1 %1929, i1 true, i1 %1930
  br i1 %1931, label %1939, label %1932

1932:                                             ; preds = %1913
  %1933 = getelementptr inbounds [2 x %struct.LIST], ptr %1901, i64 0, i64 1
  %1934 = load ptr, ptr %1933, align 8, !tbaa !5
  store ptr %1934, ptr @zz_tmp, align 8, !tbaa !10
  %1935 = getelementptr inbounds [2 x %struct.LIST], ptr %1928, i64 0, i64 1
  %1936 = load ptr, ptr %1935, align 8, !tbaa !5
  store ptr %1936, ptr %1933, align 8, !tbaa !5
  %1937 = getelementptr inbounds [2 x %struct.LIST], ptr %1936, i64 0, i64 1, i32 1
  store ptr %1901, ptr %1937, align 8, !tbaa !5
  store ptr %1934, ptr %1935, align 8, !tbaa !5
  %1938 = getelementptr inbounds [2 x %struct.LIST], ptr %1934, i64 0, i64 1, i32 1
  store ptr %1928, ptr %1938, align 8, !tbaa !5
  br label %1939

1939:                                             ; preds = %1913, %1932
  %1940 = getelementptr inbounds %struct.word_type, ptr %1901, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1940, i8 0, i64 16, i1 false)
  br label %1941

1941:                                             ; preds = %1939, %1806
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #5
  br label %2434

1942:                                             ; preds = %1730
  br i1 %1740, label %1943, label %1952

1943:                                             ; preds = %1942
  %1944 = icmp sgt i32 %1734, 0
  br i1 %1944, label %1948, label %1945

1945:                                             ; preds = %1943
  %1946 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1947 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1946, ptr noundef nonnull @.str.15) #5
  br label %1948

1948:                                             ; preds = %1945, %1943
  %1949 = getelementptr inbounds i8, ptr %0, i64 42
  %1950 = load i16, ptr %1949, align 2
  %1951 = or i16 %1950, 2048
  store i16 %1951, ptr %1949, align 2
  br label %1968

1952:                                             ; preds = %1942
  %1953 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  %1954 = load i8, ptr %1953, align 4
  %1955 = lshr i8 %1954, 4
  %1956 = and i8 %1955, 7
  %1957 = getelementptr inbounds i8, ptr %0, i64 42
  %1958 = load i16, ptr %1957, align 2
  switch i8 %1956, label %1968 [
    i8 7, label %1959
    i8 5, label %1961
    i8 6, label %1965
  ]

1959:                                             ; preds = %1952
  %1960 = or i16 %1958, 2048
  store i16 %1960, ptr %1957, align 2
  br label %1968

1961:                                             ; preds = %1952
  %1962 = and i16 %1958, -2049
  store i16 %1962, ptr %1957, align 2
  %1963 = sub nsw i32 %1632, %1739
  %1964 = sdiv i32 %1963, 2
  br label %1968

1965:                                             ; preds = %1952
  %1966 = and i16 %1958, -2049
  store i16 %1966, ptr %1957, align 2
  %1967 = sub nsw i32 %1632, %1739
  br label %1968

1968:                                             ; preds = %1952, %1959, %1961, %1965, %1948
  %1969 = phi i16 [ %1951, %1948 ], [ %1966, %1965 ], [ %1962, %1961 ], [ %1960, %1959 ], [ %1958, %1952 ]
  %1970 = phi i32 [ 0, %1948 ], [ %1967, %1965 ], [ %1964, %1961 ], [ 0, %1959 ], [ 0, %1952 ]
  %1971 = and i16 %1969, 2048
  %1972 = icmp ne i16 %1971, 0
  %1973 = icmp sgt i32 %1734, 0
  %1974 = select i1 %1972, i1 %1973, i1 false
  br i1 %1974, label %1975, label %1979

1975:                                             ; preds = %1968
  %1976 = sub nsw i32 %1632, %1739
  %1977 = sdiv i32 %1976, %1734
  %1978 = tail call i32 @llvm.smax.i32(i32 %1977, i32 0)
  br label %1979

1979:                                             ; preds = %1968, %1975
  %1980 = phi i32 [ %1978, %1975 ], [ undef, %1968 ]
  %1981 = icmp eq ptr %1735, null
  %1982 = select i1 %1974, i1 %1981, i1 false
  %1983 = zext i1 %1982 to i32
  %1984 = load ptr, ptr %1602, align 8, !tbaa !5
  %1985 = icmp eq ptr %1984, %0
  br i1 %1985, label %1986, label %1994

1986:                                             ; preds = %1979
  %1987 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %1988 = load i32, ptr %1987, align 4, !tbaa !5
  %1989 = getelementptr inbounds %struct.word_type, ptr %1733, i64 0, i32 3
  %1990 = load i32, ptr %1989, align 4, !tbaa !5
  %1991 = add i32 %1970, %1
  %1992 = sub i32 %1991, %1988
  %1993 = add i32 %1992, %1990
  br label %2234

1994:                                             ; preds = %1979, %2008
  %1995 = phi ptr [ %2010, %2008 ], [ %1984, %1979 ]
  br label %1996

1996:                                             ; preds = %1994, %1996
  %1997 = phi ptr [ %1999, %1996 ], [ %1995, %1994 ]
  %1998 = getelementptr inbounds [2 x %struct.LIST], ptr %1997, i64 0, i64 1
  %1999 = load ptr, ptr %1998, align 8, !tbaa !5
  %2000 = getelementptr inbounds %struct.word_type, ptr %1999, i64 0, i32 1
  %2001 = load i8, ptr %2000, align 8, !tbaa !5
  switch i8 %2001, label %2005 [
    i8 0, label %1996
    i8 1, label %2008
    i8 9, label %2002
  ]

2002:                                             ; preds = %1996
  %2003 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %1999) #5
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2008, label %2012

2005:                                             ; preds = %1996
  %2006 = add i8 %2001, -9
  %2007 = icmp ult i8 %2006, 91
  br i1 %2007, label %2012, label %2008

2008:                                             ; preds = %1996, %2005, %2002
  %2009 = getelementptr inbounds %struct.LIST, ptr %1995, i64 0, i32 1
  %2010 = load ptr, ptr %2009, align 8, !tbaa !5
  %2011 = icmp eq ptr %2010, %0
  br i1 %2011, label %2012, label %1994

2012:                                             ; preds = %2008, %2002, %2005
  %2013 = phi ptr [ %0, %2008 ], [ %1995, %2002 ], [ %1995, %2005 ]
  %2014 = getelementptr inbounds %struct.LIST, ptr %2013, i64 0, i32 1
  %2015 = load ptr, ptr %2014, align 8, !tbaa !5
  %2016 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2017 = load i32, ptr %2016, align 4, !tbaa !5
  %2018 = getelementptr inbounds %struct.word_type, ptr %1999, i64 0, i32 3
  %2019 = load i32, ptr %2018, align 4, !tbaa !5
  %2020 = add i32 %1970, %1
  %2021 = sub i32 %2020, %2017
  %2022 = add i32 %2021, %2019
  %2023 = icmp eq ptr %2015, %0
  br i1 %2023, label %2234, label %2024

2024:                                             ; preds = %2012, %2044
  %2025 = phi ptr [ %2047, %2044 ], [ %2015, %2012 ]
  %2026 = phi ptr [ %2045, %2044 ], [ null, %2012 ]
  br label %2027

2027:                                             ; preds = %2024, %2027
  %2028 = phi ptr [ %2030, %2027 ], [ %2025, %2024 ]
  %2029 = getelementptr inbounds [2 x %struct.LIST], ptr %2028, i64 0, i64 1
  %2030 = load ptr, ptr %2029, align 8, !tbaa !5
  %2031 = getelementptr inbounds %struct.word_type, ptr %2030, i64 0, i32 1
  %2032 = load i8, ptr %2031, align 8, !tbaa !5
  switch i8 %2032, label %2036 [
    i8 0, label %2027
    i8 1, label %2044
    i8 9, label %2033
  ]

2033:                                             ; preds = %2027
  %2034 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %2030) #5
  %2035 = icmp eq i32 %2034, 0
  br i1 %2035, label %2044, label %2039

2036:                                             ; preds = %2027
  %2037 = add i8 %2032, -9
  %2038 = icmp ult i8 %2037, 91
  br i1 %2038, label %2039, label %2044

2039:                                             ; preds = %2036, %2033
  %2040 = icmp eq ptr %2026, null
  br i1 %2040, label %2041, label %2049

2041:                                             ; preds = %2039
  %2042 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2043 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2042, ptr noundef nonnull @.str.6) #5
  br label %2049

2044:                                             ; preds = %2027, %2036, %2033
  %2045 = phi ptr [ %2026, %2033 ], [ %2026, %2036 ], [ %2030, %2027 ]
  %2046 = getelementptr inbounds %struct.LIST, ptr %2025, i64 0, i32 1
  %2047 = load ptr, ptr %2046, align 8, !tbaa !5
  %2048 = icmp eq ptr %2047, %0
  br i1 %2048, label %2234, label %2024

2049:                                             ; preds = %2039, %2041
  %2050 = icmp eq ptr %2025, %0
  br i1 %2050, label %2234, label %2051

2051:                                             ; preds = %2049
  %2052 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %2053 = sub nsw i32 %1632, %1739
  br label %2054

2054:                                             ; preds = %2051, %2230
  %2055 = phi i32 [ undef, %2051 ], [ %2163, %2230 ]
  %2056 = phi i32 [ undef, %2051 ], [ %2162, %2230 ]
  %2057 = phi i32 [ undef, %2051 ], [ %2161, %2230 ]
  %2058 = phi i32 [ 0, %2051 ], [ %2160, %2230 ]
  %2059 = phi i32 [ 0, %2051 ], [ %2196, %2230 ]
  %2060 = phi i32 [ 0, %2051 ], [ %2195, %2230 ]
  %2061 = phi ptr [ %2030, %2051 ], [ %2211, %2230 ]
  %2062 = phi ptr [ %2025, %2051 ], [ %2206, %2230 ]
  %2063 = phi ptr [ %1999, %2051 ], [ %2061, %2230 ]
  %2064 = phi ptr [ %2026, %2051 ], [ %2207, %2230 ]
  %2065 = phi i32 [ %1983, %2051 ], [ %2201, %2230 ]
  %2066 = phi i32 [ %2022, %2051 ], [ %2197, %2230 ]
  %2067 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 2
  %2068 = load i32, ptr %2067, align 8
  %2069 = and i32 %2068, 1610612736
  %2070 = icmp eq i32 %2069, 1073741824
  br i1 %2070, label %2071, label %2159

2071:                                             ; preds = %2054
  %2072 = icmp eq i32 %2058, 0
  br i1 %2072, label %2073, label %2086

2073:                                             ; preds = %2071
  %2074 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 1
  %2075 = load i8, ptr %2074, align 8, !tbaa !5
  %2076 = add i8 %2075, -11
  %2077 = icmp ult i8 %2076, 2
  %2078 = select i1 %2077, ptr %2067, ptr %2052
  %2079 = load i32, ptr %2078, align 4
  %2080 = and i32 %2079, 4095
  %2081 = lshr i32 %2079, 12
  %2082 = and i32 %2081, 1023
  %2083 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3
  %2084 = load i32, ptr %2083, align 4, !tbaa !5
  %2085 = sub nsw i32 %2066, %2084
  br label %2086

2086:                                             ; preds = %2073, %2071
  %2087 = phi i32 [ %2057, %2071 ], [ %2085, %2073 ]
  %2088 = phi i32 [ %2056, %2071 ], [ %2080, %2073 ]
  %2089 = phi i32 [ %2055, %2071 ], [ %2082, %2073 ]
  %2090 = getelementptr inbounds %struct.word_type, ptr %2064, i64 0, i32 2
  %2091 = load i32, ptr %2090, align 8
  %2092 = and i32 %2091, 1610612736
  %2093 = icmp eq i32 %2092, 536870912
  br i1 %2093, label %2094, label %2159

2094:                                             ; preds = %2086
  %2095 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 3), align 1, !tbaa !5
  %2096 = zext i8 %2095 to i32
  store i32 %2096, ptr @zz_size, align 4, !tbaa !8
  %2097 = zext i8 %2095 to i64
  %2098 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2097
  %2099 = load ptr, ptr %2098, align 8, !tbaa !10
  %2100 = icmp eq ptr %2099, null
  br i1 %2100, label %2101, label %2104

2101:                                             ; preds = %2094
  %2102 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2103 = call ptr @GetMemory(i32 noundef %2096, ptr noundef %2102) #5
  store ptr %2103, ptr @zz_hold, align 8, !tbaa !10
  br label %2106

2104:                                             ; preds = %2094
  store ptr %2099, ptr @zz_hold, align 8, !tbaa !10
  %2105 = load ptr, ptr %2099, align 8, !tbaa !5
  store ptr %2105, ptr %2098, align 8, !tbaa !10
  br label %2106

2106:                                             ; preds = %2101, %2104
  %2107 = phi ptr [ %2103, %2101 ], [ %2099, %2104 ]
  %2108 = getelementptr inbounds %struct.word_type, ptr %2107, i64 0, i32 1
  store i8 3, ptr %2108, align 8, !tbaa !5
  %2109 = getelementptr inbounds [2 x %struct.LIST], ptr %2107, i64 0, i64 1
  %2110 = getelementptr inbounds [2 x %struct.LIST], ptr %2107, i64 0, i64 1, i32 1
  store ptr %2107, ptr %2110, align 8, !tbaa !5
  store ptr %2107, ptr %2109, align 8, !tbaa !5
  %2111 = getelementptr inbounds %struct.LIST, ptr %2107, i64 0, i32 1
  store ptr %2107, ptr %2111, align 8, !tbaa !5
  store ptr %2107, ptr %2107, align 8, !tbaa !5
  %2112 = getelementptr inbounds %struct.word_type, ptr %2107, i64 0, i32 3
  store i32 %2087, ptr %2112, align 8, !tbaa !5
  %2113 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3, i32 1
  %2114 = load i32, ptr %2113, align 4, !tbaa !5
  %2115 = add nsw i32 %2114, %2066
  %2116 = getelementptr inbounds %struct.word_type, ptr %2107, i64 0, i32 3, i32 1
  store i32 %2115, ptr %2116, align 8, !tbaa !5
  %2117 = getelementptr inbounds i8, ptr %2107, i64 52
  store i32 %2088, ptr %2117, align 4, !tbaa !5
  %2118 = getelementptr inbounds %struct.word_type, ptr %2107, i64 0, i32 3, i32 1, i64 4
  store i32 %2089, ptr %2118, align 4, !tbaa !5
  %2119 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2120 = zext i8 %2119 to i32
  store i32 %2120, ptr @zz_size, align 4, !tbaa !8
  %2121 = zext i8 %2119 to i64
  %2122 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2121
  %2123 = load ptr, ptr %2122, align 8, !tbaa !10
  %2124 = icmp eq ptr %2123, null
  br i1 %2124, label %2125, label %2128

2125:                                             ; preds = %2106
  %2126 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2127 = call ptr @GetMemory(i32 noundef %2120, ptr noundef %2126) #5
  br label %2130

2128:                                             ; preds = %2106
  store ptr %2123, ptr @zz_hold, align 8, !tbaa !10
  %2129 = load ptr, ptr %2123, align 8, !tbaa !5
  store ptr %2129, ptr %2122, align 8, !tbaa !10
  br label %2130

2130:                                             ; preds = %2125, %2128
  %2131 = phi ptr [ %2127, %2125 ], [ %2123, %2128 ]
  %2132 = getelementptr inbounds %struct.word_type, ptr %2131, i64 0, i32 1
  store i8 0, ptr %2132, align 8, !tbaa !5
  %2133 = getelementptr inbounds [2 x %struct.LIST], ptr %2131, i64 0, i64 1, i32 1
  store ptr %2131, ptr %2133, align 8, !tbaa !5
  %2134 = getelementptr inbounds [2 x %struct.LIST], ptr %2131, i64 0, i64 1
  store ptr %2131, ptr %2134, align 8, !tbaa !5
  %2135 = getelementptr inbounds %struct.LIST, ptr %2131, i64 0, i32 1
  store ptr %2131, ptr %2135, align 8, !tbaa !5
  store ptr %2131, ptr %2131, align 8, !tbaa !5
  store ptr %2131, ptr @xx_link, align 8, !tbaa !10
  store ptr %2131, ptr @zz_res, align 8, !tbaa !10
  %2136 = getelementptr inbounds [2 x %struct.LIST], ptr %2063, i64 0, i64 1, i32 1
  %2137 = load ptr, ptr %2136, align 8, !tbaa !5
  store ptr %2137, ptr @zz_hold, align 8, !tbaa !10
  %2138 = icmp eq ptr %2137, null
  br i1 %2138, label %2139, label %2140

2139:                                             ; preds = %2130
  store ptr %2107, ptr @zz_hold, align 8, !tbaa !10
  br label %2152

2140:                                             ; preds = %2130
  %2141 = load ptr, ptr %2137, align 8, !tbaa !5
  store ptr %2141, ptr @zz_tmp, align 8, !tbaa !10
  %2142 = load ptr, ptr %2131, align 8, !tbaa !5
  store ptr %2142, ptr %2137, align 8, !tbaa !5
  %2143 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2144 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2145 = load ptr, ptr %2144, align 8, !tbaa !5
  %2146 = getelementptr inbounds %struct.LIST, ptr %2145, i64 0, i32 1
  store ptr %2143, ptr %2146, align 8, !tbaa !5
  %2147 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %2147, ptr %2144, align 8, !tbaa !5
  %2148 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2149 = getelementptr inbounds %struct.LIST, ptr %2147, i64 0, i32 1
  store ptr %2148, ptr %2149, align 8, !tbaa !5
  %2150 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %2150, ptr @zz_res, align 8, !tbaa !10
  store ptr %2107, ptr @zz_hold, align 8, !tbaa !10
  %2151 = icmp eq ptr %2150, null
  br i1 %2151, label %2159, label %2152

2152:                                             ; preds = %2139, %2140
  %2153 = phi ptr [ %2131, %2139 ], [ %2150, %2140 ]
  %2154 = load ptr, ptr %2109, align 8, !tbaa !5
  store ptr %2154, ptr @zz_tmp, align 8, !tbaa !10
  %2155 = getelementptr inbounds [2 x %struct.LIST], ptr %2153, i64 0, i64 1
  %2156 = load ptr, ptr %2155, align 8, !tbaa !5
  store ptr %2156, ptr %2109, align 8, !tbaa !5
  %2157 = getelementptr inbounds [2 x %struct.LIST], ptr %2156, i64 0, i64 1, i32 1
  store ptr %2107, ptr %2157, align 8, !tbaa !5
  store ptr %2154, ptr %2155, align 8, !tbaa !5
  %2158 = getelementptr inbounds [2 x %struct.LIST], ptr %2154, i64 0, i64 1, i32 1
  store ptr %2153, ptr %2158, align 8, !tbaa !5
  br label %2159

2159:                                             ; preds = %2140, %2086, %2152, %2054
  %2160 = phi i32 [ 0, %2152 ], [ 1, %2086 ], [ %2058, %2054 ], [ 0, %2140 ]
  %2161 = phi i32 [ %2087, %2152 ], [ %2087, %2086 ], [ %2057, %2054 ], [ %2087, %2140 ]
  %2162 = phi i32 [ %2088, %2152 ], [ %2088, %2086 ], [ %2056, %2054 ], [ %2088, %2140 ]
  %2163 = phi i32 [ %2089, %2152 ], [ %2089, %2086 ], [ %2055, %2054 ], [ %2089, %2140 ]
  %2164 = icmp eq i32 %2065, 0
  br i1 %2164, label %2184, label %2165

2165:                                             ; preds = %2159
  %2166 = getelementptr inbounds %struct.gapobj_type, ptr %2064, i64 0, i32 3, i32 1
  %2167 = load i16, ptr %2166, align 2, !tbaa !5
  %2168 = icmp sgt i16 %2167, 0
  br i1 %2168, label %2169, label %2184

2169:                                             ; preds = %2165
  %2170 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3
  %2171 = load i32, ptr %2170, align 4, !tbaa !5
  %2172 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3, i32 1
  %2173 = load i32, ptr %2172, align 4, !tbaa !5
  %2174 = add nsw i32 %2173, %1980
  %2175 = call ptr @FixAndPrintObject(ptr noundef nonnull %2063, i32 noundef %2066, i32 noundef %2171, i32 noundef %2174, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %2176 = add nsw i32 %2059, 1
  %2177 = mul nsw i32 %2176, %2053
  %2178 = sdiv i32 %2177, %1734
  %2179 = getelementptr inbounds %struct.gapobj_type, ptr %2064, i64 0, i32 6
  %2180 = load i16, ptr %2179, align 2, !tbaa !5
  %2181 = sext i16 %2180 to i32
  %2182 = sub i32 %2178, %2060
  %2183 = add nsw i32 %2182, %2181
  br label %2193

2184:                                             ; preds = %2165, %2159
  %2185 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3
  %2186 = load i32, ptr %2185, align 4, !tbaa !5
  %2187 = getelementptr inbounds %struct.word_type, ptr %2063, i64 0, i32 3, i32 1
  %2188 = load i32, ptr %2187, align 4, !tbaa !5
  %2189 = call ptr @FixAndPrintObject(ptr noundef nonnull %2063, i32 noundef %2066, i32 noundef %2186, i32 noundef %2188, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %2190 = getelementptr inbounds %struct.gapobj_type, ptr %2064, i64 0, i32 6
  %2191 = load i16, ptr %2190, align 2, !tbaa !5
  %2192 = sext i16 %2191 to i32
  br label %2193

2193:                                             ; preds = %2184, %2169
  %2194 = phi i32 [ %2183, %2169 ], [ %2192, %2184 ]
  %2195 = phi i32 [ %2178, %2169 ], [ %2060, %2184 ]
  %2196 = phi i32 [ %2176, %2169 ], [ %2059, %2184 ]
  %2197 = add nsw i32 %2194, %2066
  %2198 = and i1 %1974, %2164
  %2199 = icmp eq ptr %2064, %1735
  %2200 = zext i1 %2199 to i32
  %2201 = select i1 %2198, i32 %2200, i32 %2065
  %2202 = getelementptr inbounds %struct.LIST, ptr %2062, i64 0, i32 1
  %2203 = load ptr, ptr %2202, align 8, !tbaa !5
  %2204 = icmp eq ptr %2203, %0
  br i1 %2204, label %2232, label %2205

2205:                                             ; preds = %2193, %2225
  %2206 = phi ptr [ %2228, %2225 ], [ %2203, %2193 ]
  %2207 = phi ptr [ %2226, %2225 ], [ null, %2193 ]
  br label %2208

2208:                                             ; preds = %2205, %2208
  %2209 = phi ptr [ %2211, %2208 ], [ %2206, %2205 ]
  %2210 = getelementptr inbounds [2 x %struct.LIST], ptr %2209, i64 0, i64 1
  %2211 = load ptr, ptr %2210, align 8, !tbaa !5
  %2212 = getelementptr inbounds %struct.word_type, ptr %2211, i64 0, i32 1
  %2213 = load i8, ptr %2212, align 8, !tbaa !5
  switch i8 %2213, label %2217 [
    i8 0, label %2208
    i8 1, label %2225
    i8 9, label %2214
  ]

2214:                                             ; preds = %2208
  %2215 = call i32 @SplitIsDefinite(ptr noundef nonnull %2211) #5
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2225, label %2220

2217:                                             ; preds = %2208
  %2218 = add i8 %2213, -9
  %2219 = icmp ult i8 %2218, 91
  br i1 %2219, label %2220, label %2225

2220:                                             ; preds = %2217, %2214
  %2221 = icmp eq ptr %2207, null
  br i1 %2221, label %2222, label %2230

2222:                                             ; preds = %2220
  %2223 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2224 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2223, ptr noundef nonnull @.str.6) #5
  br label %2230

2225:                                             ; preds = %2208, %2217, %2214
  %2226 = phi ptr [ %2207, %2214 ], [ %2207, %2217 ], [ %2211, %2208 ]
  %2227 = getelementptr inbounds %struct.LIST, ptr %2206, i64 0, i32 1
  %2228 = load ptr, ptr %2227, align 8, !tbaa !5
  %2229 = icmp eq ptr %2228, %0
  br i1 %2229, label %2232, label %2205

2230:                                             ; preds = %2220, %2222
  %2231 = icmp eq ptr %2206, %0
  br i1 %2231, label %2232, label %2054

2232:                                             ; preds = %2193, %2230, %2225
  %2233 = icmp eq i32 %2160, 0
  br label %2234

2234:                                             ; preds = %2044, %1986, %2012, %2232, %2049
  %2235 = phi ptr [ %2016, %2049 ], [ %2016, %2232 ], [ %1987, %1986 ], [ %2016, %2012 ], [ %2016, %2044 ]
  %2236 = phi i32 [ %2022, %2049 ], [ %2197, %2232 ], [ %1993, %1986 ], [ %2022, %2012 ], [ %2022, %2044 ]
  %2237 = phi ptr [ %1999, %2049 ], [ %2061, %2232 ], [ %1733, %1986 ], [ %1999, %2012 ], [ %1999, %2044 ]
  %2238 = phi i1 [ true, %2049 ], [ %2233, %2232 ], [ true, %1986 ], [ true, %2012 ], [ true, %2044 ]
  %2239 = phi i32 [ undef, %2049 ], [ %2161, %2232 ], [ undef, %1986 ], [ undef, %2012 ], [ undef, %2044 ]
  %2240 = phi i32 [ undef, %2049 ], [ %2162, %2232 ], [ undef, %1986 ], [ undef, %2012 ], [ undef, %2044 ]
  %2241 = phi i32 [ undef, %2049 ], [ %2163, %2232 ], [ undef, %1986 ], [ undef, %2012 ], [ undef, %2044 ]
  %2242 = getelementptr inbounds %struct.word_type, ptr %2237, i64 0, i32 2
  %2243 = load i32, ptr %2242, align 8
  %2244 = lshr i32 %2243, 29
  %2245 = and i32 %2244, 3
  %2246 = add nsw i32 %2245, -1
  %2247 = icmp ult i32 %2246, 2
  br i1 %2247, label %2252, label %2248

2248:                                             ; preds = %2234
  %2249 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2250 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2249, ptr noundef nonnull @.str.16) #5
  %2251 = load i32, ptr %2242, align 8
  br label %2252

2252:                                             ; preds = %2234, %2248
  %2253 = phi i32 [ %2243, %2234 ], [ %2251, %2248 ]
  %2254 = and i32 %2253, 1610612736
  %2255 = icmp eq i32 %2254, 1073741824
  br i1 %2255, label %2256, label %2339

2256:                                             ; preds = %2252
  br i1 %2238, label %2257, label %2271

2257:                                             ; preds = %2256
  %2258 = getelementptr inbounds %struct.word_type, ptr %2237, i64 0, i32 1
  %2259 = load i8, ptr %2258, align 8, !tbaa !5
  %2260 = add i8 %2259, -11
  %2261 = icmp ult i8 %2260, 2
  %2262 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %2263 = select i1 %2261, ptr %2242, ptr %2262
  %2264 = load i32, ptr %2263, align 4
  %2265 = and i32 %2264, 4095
  %2266 = lshr i32 %2264, 12
  %2267 = and i32 %2266, 1023
  %2268 = getelementptr inbounds %struct.word_type, ptr %2237, i64 0, i32 3
  %2269 = load i32, ptr %2268, align 4, !tbaa !5
  %2270 = sub nsw i32 %2236, %2269
  br label %2271

2271:                                             ; preds = %2257, %2256
  %2272 = phi i32 [ %2239, %2256 ], [ %2270, %2257 ]
  %2273 = phi i32 [ %2240, %2256 ], [ %2265, %2257 ]
  %2274 = phi i32 [ %2241, %2256 ], [ %2267, %2257 ]
  %2275 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 3), align 1, !tbaa !5
  %2276 = zext i8 %2275 to i32
  store i32 %2276, ptr @zz_size, align 4, !tbaa !8
  %2277 = zext i8 %2275 to i64
  %2278 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2277
  %2279 = load ptr, ptr %2278, align 8, !tbaa !10
  %2280 = icmp eq ptr %2279, null
  br i1 %2280, label %2281, label %2284

2281:                                             ; preds = %2271
  %2282 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2283 = call ptr @GetMemory(i32 noundef %2276, ptr noundef %2282) #5
  store ptr %2283, ptr @zz_hold, align 8, !tbaa !10
  br label %2286

2284:                                             ; preds = %2271
  store ptr %2279, ptr @zz_hold, align 8, !tbaa !10
  %2285 = load ptr, ptr %2279, align 8, !tbaa !5
  store ptr %2285, ptr %2278, align 8, !tbaa !10
  br label %2286

2286:                                             ; preds = %2281, %2284
  %2287 = phi ptr [ %2283, %2281 ], [ %2279, %2284 ]
  %2288 = getelementptr inbounds %struct.word_type, ptr %2287, i64 0, i32 1
  store i8 3, ptr %2288, align 8, !tbaa !5
  %2289 = getelementptr inbounds [2 x %struct.LIST], ptr %2287, i64 0, i64 1
  %2290 = getelementptr inbounds [2 x %struct.LIST], ptr %2287, i64 0, i64 1, i32 1
  store ptr %2287, ptr %2290, align 8, !tbaa !5
  store ptr %2287, ptr %2289, align 8, !tbaa !5
  %2291 = getelementptr inbounds %struct.LIST, ptr %2287, i64 0, i32 1
  store ptr %2287, ptr %2291, align 8, !tbaa !5
  store ptr %2287, ptr %2287, align 8, !tbaa !5
  %2292 = getelementptr inbounds %struct.word_type, ptr %2287, i64 0, i32 3
  store i32 %2272, ptr %2292, align 8, !tbaa !5
  %2293 = getelementptr inbounds %struct.word_type, ptr %2237, i64 0, i32 3, i32 1
  %2294 = load i32, ptr %2293, align 4, !tbaa !5
  %2295 = add nsw i32 %2294, %2236
  %2296 = getelementptr inbounds %struct.word_type, ptr %2287, i64 0, i32 3, i32 1
  store i32 %2295, ptr %2296, align 8, !tbaa !5
  %2297 = getelementptr inbounds i8, ptr %2287, i64 52
  store i32 %2273, ptr %2297, align 4, !tbaa !5
  %2298 = getelementptr inbounds %struct.word_type, ptr %2287, i64 0, i32 3, i32 1, i64 4
  store i32 %2274, ptr %2298, align 4, !tbaa !5
  %2299 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2300 = zext i8 %2299 to i32
  store i32 %2300, ptr @zz_size, align 4, !tbaa !8
  %2301 = zext i8 %2299 to i64
  %2302 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2301
  %2303 = load ptr, ptr %2302, align 8, !tbaa !10
  %2304 = icmp eq ptr %2303, null
  br i1 %2304, label %2305, label %2308

2305:                                             ; preds = %2286
  %2306 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2307 = call ptr @GetMemory(i32 noundef %2300, ptr noundef %2306) #5
  br label %2310

2308:                                             ; preds = %2286
  store ptr %2303, ptr @zz_hold, align 8, !tbaa !10
  %2309 = load ptr, ptr %2303, align 8, !tbaa !5
  store ptr %2309, ptr %2302, align 8, !tbaa !10
  br label %2310

2310:                                             ; preds = %2305, %2308
  %2311 = phi ptr [ %2307, %2305 ], [ %2303, %2308 ]
  %2312 = getelementptr inbounds %struct.word_type, ptr %2311, i64 0, i32 1
  store i8 0, ptr %2312, align 8, !tbaa !5
  %2313 = getelementptr inbounds [2 x %struct.LIST], ptr %2311, i64 0, i64 1, i32 1
  store ptr %2311, ptr %2313, align 8, !tbaa !5
  %2314 = getelementptr inbounds [2 x %struct.LIST], ptr %2311, i64 0, i64 1
  store ptr %2311, ptr %2314, align 8, !tbaa !5
  %2315 = getelementptr inbounds %struct.LIST, ptr %2311, i64 0, i32 1
  store ptr %2311, ptr %2315, align 8, !tbaa !5
  store ptr %2311, ptr %2311, align 8, !tbaa !5
  store ptr %2311, ptr @xx_link, align 8, !tbaa !10
  store ptr %2311, ptr @zz_res, align 8, !tbaa !10
  %2316 = getelementptr inbounds [2 x %struct.LIST], ptr %2237, i64 0, i64 1, i32 1
  %2317 = load ptr, ptr %2316, align 8, !tbaa !5
  store ptr %2317, ptr @zz_hold, align 8, !tbaa !10
  %2318 = icmp eq ptr %2317, null
  br i1 %2318, label %2319, label %2320

2319:                                             ; preds = %2310
  store ptr %2287, ptr @zz_hold, align 8, !tbaa !10
  br label %2332

2320:                                             ; preds = %2310
  %2321 = load ptr, ptr %2317, align 8, !tbaa !5
  store ptr %2321, ptr @zz_tmp, align 8, !tbaa !10
  %2322 = load ptr, ptr %2311, align 8, !tbaa !5
  store ptr %2322, ptr %2317, align 8, !tbaa !5
  %2323 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2324 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2325 = load ptr, ptr %2324, align 8, !tbaa !5
  %2326 = getelementptr inbounds %struct.LIST, ptr %2325, i64 0, i32 1
  store ptr %2323, ptr %2326, align 8, !tbaa !5
  %2327 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %2327, ptr %2324, align 8, !tbaa !5
  %2328 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2329 = getelementptr inbounds %struct.LIST, ptr %2327, i64 0, i32 1
  store ptr %2328, ptr %2329, align 8, !tbaa !5
  %2330 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %2330, ptr @zz_res, align 8, !tbaa !10
  store ptr %2287, ptr @zz_hold, align 8, !tbaa !10
  %2331 = icmp eq ptr %2330, null
  br i1 %2331, label %2339, label %2332

2332:                                             ; preds = %2319, %2320
  %2333 = phi ptr [ %2311, %2319 ], [ %2330, %2320 ]
  %2334 = load ptr, ptr %2289, align 8, !tbaa !5
  store ptr %2334, ptr @zz_tmp, align 8, !tbaa !10
  %2335 = getelementptr inbounds [2 x %struct.LIST], ptr %2333, i64 0, i64 1
  %2336 = load ptr, ptr %2335, align 8, !tbaa !5
  store ptr %2336, ptr %2289, align 8, !tbaa !5
  %2337 = getelementptr inbounds [2 x %struct.LIST], ptr %2336, i64 0, i64 1, i32 1
  store ptr %2287, ptr %2337, align 8, !tbaa !5
  store ptr %2334, ptr %2335, align 8, !tbaa !5
  %2338 = getelementptr inbounds [2 x %struct.LIST], ptr %2334, i64 0, i64 1, i32 1
  store ptr %2333, ptr %2338, align 8, !tbaa !5
  br label %2339

2339:                                             ; preds = %2320, %2332, %2252
  %2340 = getelementptr inbounds %struct.word_type, ptr %2237, i64 0, i32 3
  %2341 = load i32, ptr %2340, align 4, !tbaa !5
  %2342 = load i32, ptr %2235, align 4, !tbaa !5
  %2343 = add i32 %1632, %1
  %2344 = add i32 %2236, %2342
  %2345 = sub i32 %2343, %2344
  %2346 = call ptr @FixAndPrintObject(ptr noundef nonnull %2237, i32 noundef %2236, i32 noundef %2341, i32 noundef %2345, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %2434

2347:                                             ; preds = %1623, %1608
  %2348 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2349 = load i32, ptr %2348, align 4, !tbaa !5
  store i32 %2349, ptr %8, align 4, !tbaa !8
  %2350 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2351 = load i32, ptr %2350, align 4, !tbaa !5
  store i32 %2351, ptr %9, align 4, !tbaa !8
  br label %2572

2352:                                             ; preds = %1606, %2429
  %2353 = phi ptr [ %1603, %1606 ], [ %2432, %2429 ]
  br label %2354

2354:                                             ; preds = %2352, %2354
  %2355 = phi ptr [ %2357, %2354 ], [ %2353, %2352 ]
  %2356 = getelementptr inbounds [2 x %struct.LIST], ptr %2355, i64 0, i64 1
  %2357 = load ptr, ptr %2356, align 8, !tbaa !5
  %2358 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 1
  %2359 = load i8, ptr %2358, align 8, !tbaa !5
  %2360 = icmp eq i8 %2359, 0
  br i1 %2360, label %2354, label %2361

2361:                                             ; preds = %2354
  %2362 = add i8 %2359, -9
  %2363 = icmp ult i8 %2362, 91
  br i1 %2363, label %2427, label %2364

2364:                                             ; preds = %2361
  %2365 = icmp eq i8 %2359, 3
  br i1 %2365, label %2366, label %2429

2366:                                             ; preds = %2364
  %2367 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %2368 = getelementptr inbounds %struct.back_end_rec, ptr %2367, i64 0, i32 20
  %2369 = load ptr, ptr %2368, align 8, !tbaa !37
  %2370 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 3
  %2371 = getelementptr inbounds i8, ptr %2357, i64 52
  %2372 = load i32, ptr %2371, align 4, !tbaa !5
  %2373 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 3, i32 1
  %2374 = getelementptr inbounds %struct.word_type, ptr %2357, i64 0, i32 3, i32 1, i64 4
  %2375 = load i32, ptr %2374, align 4, !tbaa !5
  %2376 = load i32, ptr %2370, align 8, !tbaa !5
  %2377 = load i32, ptr %2373, align 8, !tbaa !5
  call void %2369(i32 noundef %2372, i32 noundef %2375, i32 noundef %2376, i32 noundef %2377, i32 noundef %1607) #5
  %2378 = load ptr, ptr %2353, align 8, !tbaa !5
  %2379 = getelementptr inbounds [2 x %struct.LIST], ptr %2357, i64 0, i64 1, i32 1
  %2380 = load ptr, ptr %2379, align 8, !tbaa !5
  store ptr %2380, ptr @xx_link, align 8, !tbaa !10
  %2381 = getelementptr inbounds [2 x %struct.LIST], ptr %2380, i64 0, i64 1, i32 1
  %2382 = load ptr, ptr %2381, align 8, !tbaa !5
  %2383 = icmp eq ptr %2382, %2380
  br i1 %2383, label %2389, label %2384

2384:                                             ; preds = %2366
  store ptr %2382, ptr @zz_res, align 8, !tbaa !10
  %2385 = getelementptr inbounds [2 x %struct.LIST], ptr %2380, i64 0, i64 1
  %2386 = load ptr, ptr %2385, align 8, !tbaa !5
  %2387 = getelementptr inbounds [2 x %struct.LIST], ptr %2382, i64 0, i64 1
  store ptr %2386, ptr %2387, align 8, !tbaa !5
  %2388 = getelementptr inbounds [2 x %struct.LIST], ptr %2386, i64 0, i64 1, i32 1
  store ptr %2382, ptr %2388, align 8, !tbaa !5
  store ptr %2380, ptr %2381, align 8, !tbaa !5
  store ptr %2380, ptr %2385, align 8, !tbaa !5
  br label %2389

2389:                                             ; preds = %2366, %2384
  %2390 = phi ptr [ %2382, %2384 ], [ null, %2366 ]
  store ptr %2390, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %2380, ptr @zz_hold, align 8, !tbaa !10
  %2391 = getelementptr inbounds %struct.LIST, ptr %2380, i64 0, i32 1
  %2392 = load ptr, ptr %2391, align 8, !tbaa !5
  %2393 = icmp eq ptr %2392, %2380
  br i1 %2393, label %2402, label %2394

2394:                                             ; preds = %2389
  store ptr %2392, ptr @zz_res, align 8, !tbaa !10
  %2395 = load ptr, ptr %2380, align 8, !tbaa !5
  store ptr %2395, ptr %2392, align 8, !tbaa !5
  %2396 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2397 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2398 = load ptr, ptr %2397, align 8, !tbaa !5
  %2399 = getelementptr inbounds %struct.LIST, ptr %2398, i64 0, i32 1
  store ptr %2396, ptr %2399, align 8, !tbaa !5
  %2400 = getelementptr inbounds %struct.LIST, ptr %2397, i64 0, i32 1
  store ptr %2397, ptr %2400, align 8, !tbaa !5
  store ptr %2397, ptr %2397, align 8, !tbaa !5
  %2401 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %2402

2402:                                             ; preds = %2389, %2394
  %2403 = phi ptr [ %2380, %2389 ], [ %2401, %2394 ]
  store ptr %2403, ptr @zz_hold, align 8, !tbaa !10
  %2404 = getelementptr inbounds %struct.word_type, ptr %2403, i64 0, i32 1
  %2405 = load i8, ptr %2404, align 8, !tbaa !5
  %2406 = add i8 %2405, -11
  %2407 = icmp ult i8 %2406, 2
  %2408 = getelementptr inbounds %struct.word_type, ptr %2403, i64 0, i32 1, i32 0, i32 1
  %2409 = zext i8 %2405 to i64
  %2410 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2409
  %2411 = select i1 %2407, ptr %2408, ptr %2410
  %2412 = load i8, ptr %2411, align 1, !tbaa !5
  %2413 = zext i8 %2412 to i32
  store i32 %2413, ptr @zz_size, align 4, !tbaa !8
  %2414 = zext i8 %2412 to i64
  %2415 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2414
  %2416 = load ptr, ptr %2415, align 8, !tbaa !10
  store ptr %2416, ptr %2403, align 8, !tbaa !5
  %2417 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2418 = load i32, ptr @zz_size, align 4, !tbaa !8
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2419
  store ptr %2417, ptr %2420, align 8, !tbaa !10
  %2421 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %2422 = getelementptr inbounds [2 x %struct.LIST], ptr %2421, i64 0, i64 1, i32 1
  %2423 = load ptr, ptr %2422, align 8, !tbaa !5
  %2424 = icmp eq ptr %2423, %2421
  br i1 %2424, label %2425, label %2429

2425:                                             ; preds = %2402
  %2426 = call i32 @DisposeObject(ptr noundef nonnull %2421) #5
  br label %2429

2427:                                             ; preds = %2361
  %2428 = call ptr @FixAndPrintObject(ptr noundef nonnull %2357, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %2429

2429:                                             ; preds = %2364, %2425, %2402, %2427
  %2430 = phi ptr [ %2353, %2427 ], [ %2378, %2425 ], [ %2378, %2402 ], [ %2353, %2364 ]
  %2431 = getelementptr inbounds %struct.LIST, ptr %2430, i64 0, i32 1
  %2432 = load ptr, ptr %2431, align 8, !tbaa !5
  %2433 = icmp eq ptr %2432, %0
  br i1 %2433, label %2434, label %2352

2434:                                             ; preds = %2429, %1605, %1941, %2339
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

2435:                                             ; preds = %10, %10
  %2436 = icmp eq i8 %23, 16
  %2437 = icmp ne i32 %4, 0
  %2438 = xor i1 %2437, %2436
  br i1 %2438, label %2442, label %2439

2439:                                             ; preds = %2435
  %2440 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2441 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2440, ptr noundef nonnull @.str.17) #5
  br label %2442

2442:                                             ; preds = %2439, %2435
  br label %2443

2443:                                             ; preds = %2442, %2443
  %2444 = phi ptr [ %2450, %2443 ], [ %0, %2442 ]
  %2445 = phi i32 [ %2456, %2443 ], [ 1, %2442 ]
  %2446 = phi ptr [ %2449, %2443 ], [ %0, %2442 ]
  %2447 = getelementptr inbounds [2 x %struct.LIST], ptr %2444, i64 0, i64 1, i32 1
  %2448 = getelementptr inbounds %struct.LIST, ptr %2446, i64 0, i32 1
  %2449 = load ptr, ptr %2448, align 8, !tbaa !5
  %2450 = load ptr, ptr %2447, align 8, !tbaa !5
  %2451 = icmp ne ptr %2449, %0
  %2452 = icmp ne ptr %2450, %0
  %2453 = select i1 %2451, i1 %2452, i1 false
  %2454 = icmp slt i32 %2445, %7
  %2455 = select i1 %2453, i1 %2454, i1 false
  %2456 = add nuw nsw i32 %2445, 1
  br i1 %2455, label %2443, label %2457

2457:                                             ; preds = %2443
  br i1 %2453, label %2461, label %2458

2458:                                             ; preds = %2457
  %2459 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2460 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2459, ptr noundef nonnull @.str.18) #5
  br label %2461

2461:                                             ; preds = %2457, %2458
  %2462 = getelementptr inbounds [2 x %struct.LIST], ptr %2449, i64 0, i64 1
  %2463 = load ptr, ptr %2462, align 8, !tbaa !5
  %2464 = getelementptr inbounds %struct.word_type, ptr %2463, i64 0, i32 1
  %2465 = load i8, ptr %2464, align 8, !tbaa !5
  %2466 = icmp eq i8 %2465, 0
  br i1 %2466, label %2467, label %2476

2467:                                             ; preds = %2461, %2467
  %2468 = phi ptr [ %2472, %2467 ], [ %2463, %2461 ]
  %2469 = phi i32 [ %2471, %2467 ], [ 1, %2461 ]
  %2470 = getelementptr inbounds [2 x %struct.LIST], ptr %2468, i64 0, i64 1
  %2471 = add nuw nsw i32 %2469, 1
  %2472 = load ptr, ptr %2470, align 8, !tbaa !5
  %2473 = getelementptr inbounds %struct.word_type, ptr %2472, i64 0, i32 1
  %2474 = load i8, ptr %2473, align 8, !tbaa !5
  %2475 = icmp eq i8 %2474, 0
  br i1 %2475, label %2467, label %2476

2476:                                             ; preds = %2467, %2461
  %2477 = phi ptr [ %2463, %2461 ], [ %2472, %2467 ]
  %2478 = phi i32 [ 1, %2461 ], [ %2471, %2467 ]
  %2479 = getelementptr inbounds %struct.word_type, ptr %2477, i64 0, i32 1
  store ptr %2450, ptr @zz_hold, align 8, !tbaa !10
  %2480 = getelementptr inbounds [2 x %struct.LIST], ptr %2450, i64 0, i64 1, i32 1
  %2481 = load ptr, ptr %2480, align 8, !tbaa !5
  %2482 = icmp eq ptr %2481, %2450
  br i1 %2482, label %2488, label %2483

2483:                                             ; preds = %2476
  %2484 = getelementptr inbounds [2 x %struct.LIST], ptr %2450, i64 0, i64 1
  %2485 = load ptr, ptr %2484, align 8, !tbaa !5
  %2486 = getelementptr inbounds [2 x %struct.LIST], ptr %2481, i64 0, i64 1
  store ptr %2485, ptr %2486, align 8, !tbaa !5
  %2487 = getelementptr inbounds [2 x %struct.LIST], ptr %2485, i64 0, i64 1, i32 1
  store ptr %2481, ptr %2487, align 8, !tbaa !5
  store ptr %2450, ptr %2480, align 8, !tbaa !5
  store ptr %2450, ptr %2484, align 8, !tbaa !5
  br label %2488

2488:                                             ; preds = %2476, %2483
  store ptr %2450, ptr @zz_res, align 8, !tbaa !10
  %2489 = icmp eq ptr %2449, null
  br i1 %2489, label %2496, label %2490

2490:                                             ; preds = %2488
  %2491 = load ptr, ptr %2462, align 8, !tbaa !5
  store ptr %2491, ptr @zz_tmp, align 8, !tbaa !10
  %2492 = getelementptr inbounds [2 x %struct.LIST], ptr %2450, i64 0, i64 1
  %2493 = load ptr, ptr %2492, align 8, !tbaa !5
  store ptr %2493, ptr %2462, align 8, !tbaa !5
  %2494 = getelementptr inbounds [2 x %struct.LIST], ptr %2493, i64 0, i64 1, i32 1
  store ptr %2449, ptr %2494, align 8, !tbaa !5
  store ptr %2491, ptr %2492, align 8, !tbaa !5
  %2495 = getelementptr inbounds [2 x %struct.LIST], ptr %2491, i64 0, i64 1, i32 1
  store ptr %2450, ptr %2495, align 8, !tbaa !5
  br label %2496

2496:                                             ; preds = %2488, %2490
  store ptr %2449, ptr @xx_link, align 8, !tbaa !10
  %2497 = getelementptr inbounds [2 x %struct.LIST], ptr %2449, i64 0, i64 1, i32 1
  %2498 = load ptr, ptr %2497, align 8, !tbaa !5
  %2499 = icmp eq ptr %2498, %2449
  br i1 %2499, label %2504, label %2500

2500:                                             ; preds = %2496
  store ptr %2498, ptr @zz_res, align 8, !tbaa !10
  %2501 = load ptr, ptr %2462, align 8, !tbaa !5
  %2502 = getelementptr inbounds [2 x %struct.LIST], ptr %2498, i64 0, i64 1
  store ptr %2501, ptr %2502, align 8, !tbaa !5
  %2503 = getelementptr inbounds [2 x %struct.LIST], ptr %2501, i64 0, i64 1, i32 1
  store ptr %2498, ptr %2503, align 8, !tbaa !5
  store ptr %2449, ptr %2497, align 8, !tbaa !5
  store ptr %2449, ptr %2462, align 8, !tbaa !5
  br label %2504

2504:                                             ; preds = %2496, %2500
  store ptr %2449, ptr @zz_hold, align 8, !tbaa !10
  %2505 = getelementptr inbounds %struct.LIST, ptr %2449, i64 0, i32 1
  %2506 = load ptr, ptr %2505, align 8, !tbaa !5
  %2507 = icmp eq ptr %2506, %2449
  br i1 %2507, label %2516, label %2508

2508:                                             ; preds = %2504
  store ptr %2506, ptr @zz_res, align 8, !tbaa !10
  %2509 = load ptr, ptr %2449, align 8, !tbaa !5
  store ptr %2509, ptr %2506, align 8, !tbaa !5
  %2510 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %2511 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2512 = load ptr, ptr %2511, align 8, !tbaa !5
  %2513 = getelementptr inbounds %struct.LIST, ptr %2512, i64 0, i32 1
  store ptr %2510, ptr %2513, align 8, !tbaa !5
  %2514 = getelementptr inbounds %struct.LIST, ptr %2511, i64 0, i32 1
  store ptr %2511, ptr %2514, align 8, !tbaa !5
  store ptr %2511, ptr %2511, align 8, !tbaa !5
  %2515 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %2516

2516:                                             ; preds = %2504, %2508
  %2517 = phi ptr [ %2449, %2504 ], [ %2515, %2508 ]
  store ptr %2517, ptr @zz_hold, align 8, !tbaa !10
  %2518 = getelementptr inbounds %struct.word_type, ptr %2517, i64 0, i32 1
  %2519 = load i8, ptr %2518, align 8, !tbaa !5
  %2520 = add i8 %2519, -11
  %2521 = icmp ult i8 %2520, 2
  %2522 = getelementptr inbounds %struct.word_type, ptr %2517, i64 0, i32 1, i32 0, i32 1
  %2523 = zext i8 %2519 to i64
  %2524 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2523
  %2525 = select i1 %2521, ptr %2522, ptr %2524
  %2526 = load i8, ptr %2525, align 1, !tbaa !5
  %2527 = zext i8 %2526 to i32
  store i32 %2527, ptr @zz_size, align 4, !tbaa !8
  %2528 = zext i8 %2526 to i64
  %2529 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2528
  %2530 = load ptr, ptr %2529, align 8, !tbaa !10
  store ptr %2530, ptr %2517, align 8, !tbaa !5
  %2531 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %2532 = load i32, ptr @zz_size, align 4, !tbaa !8
  %2533 = sext i32 %2532 to i64
  %2534 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2533
  store ptr %2531, ptr %2534, align 8, !tbaa !10
  %2535 = load i8, ptr %2479, align 8, !tbaa !5
  %2536 = icmp eq i8 %2535, 1
  br i1 %2536, label %2537, label %2540

2537:                                             ; preds = %2516
  %2538 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2539 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2538, ptr noundef nonnull @.str.19) #5
  br label %2540

2540:                                             ; preds = %2537, %2516
  %2541 = getelementptr inbounds i8, ptr %0, i64 41
  %2542 = load i8, ptr %2541, align 1, !tbaa !5
  %2543 = icmp eq i8 %2542, 2
  br i1 %2543, label %2544, label %2546

2544:                                             ; preds = %2540
  %2545 = sext i32 %4 to i64
  br label %2552

2546:                                             ; preds = %2540
  %2547 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2548 = sext i32 %4 to i64
  %2549 = getelementptr inbounds [2 x i32], ptr %2547, i64 0, i64 %2548
  store i32 %2, ptr %2549, align 4, !tbaa !5
  %2550 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2551 = getelementptr inbounds [2 x i32], ptr %2550, i64 0, i64 %2548
  store i32 %3, ptr %2551, align 4, !tbaa !5
  store i8 2, ptr %2541, align 1, !tbaa !5
  br label %2552

2552:                                             ; preds = %2544, %2546
  %2553 = phi i64 [ %2545, %2544 ], [ %2548, %2546 ]
  %2554 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %2555 = getelementptr inbounds [2 x i32], ptr %2554, i64 0, i64 %2553
  %2556 = load i32, ptr %2555, align 4, !tbaa !5
  %2557 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %2558 = getelementptr inbounds [2 x i32], ptr %2557, i64 0, i64 %2553
  %2559 = load i32, ptr %2558, align 4, !tbaa !5
  %2560 = call ptr @FixAndPrintObject(ptr noundef nonnull %2477, i32 noundef %1, i32 noundef %2556, i32 noundef %2559, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef %2478, ptr noundef nonnull %11, ptr noundef nonnull %12)
  store i32 %2, ptr %8, align 4, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !8
  br label %2572

2561:                                             ; preds = %10, %10, %10, %10
  %2562 = icmp eq i32 %4, 0
  br i1 %2562, label %2563, label %2572

2563:                                             ; preds = %2561
  %2564 = zext nneg i8 %23 to i32
  %2565 = tail call ptr @Image(i32 noundef %2564) #5
  %2566 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 23, i32 noundef 8, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %22, ptr noundef %2565) #5
  br label %2572

2567:                                             ; preds = %10
  %2568 = zext i8 %23 to i32
  %2569 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %2570 = tail call ptr @Image(i32 noundef %2568) #5
  %2571 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef %2569, ptr noundef nonnull @.str.22, ptr noundef %2570) #5
  br label %2572

2572:                                             ; preds = %2347, %2561, %2563, %1599, %1265, %1254, %569, %579, %309, %311, %280, %289, %245, %262, %218, %227, %105, %143, %122, %96, %103, %2567, %2552, %2434, %987, %972, %924, %878, %773, %693, %605, %555, %472, %380, %201, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @FontPageUsed(ptr noundef) local_unnamed_addr #2

declare i32 @FindShift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RotateConstraint(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @FindAdjustIncrement(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %124, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %23, %21 ], [ %5, %3 ]
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %12, %9 ], [ %8, %7 ]
  %11 = getelementptr inbounds [2 x %struct.LIST], ptr %10, i64 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.word_type, ptr %12, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !5
  switch i8 %14, label %18 [
    i8 0, label %9
    i8 1, label %21
    i8 9, label %15
  ]

15:                                               ; preds = %9
  %16 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %12) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %25

18:                                               ; preds = %9
  %19 = add i8 %14, -9
  %20 = icmp ult i8 %19, 91
  br i1 %20, label %25, label %21

21:                                               ; preds = %9, %18, %15
  %22 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %124, label %7

25:                                               ; preds = %15, %18
  %26 = getelementptr inbounds %struct.word_type, ptr %12, i64 0, i32 3
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [2 x i32], ptr %26, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %124, label %33

33:                                               ; preds = %25, %53
  %34 = phi ptr [ %56, %53 ], [ %31, %25 ]
  %35 = phi ptr [ %54, %53 ], [ null, %25 ]
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %33 ]
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %37, i64 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !5
  switch i8 %41, label %45 [
    i8 0, label %36
    i8 1, label %53
    i8 9, label %42
  ]

42:                                               ; preds = %36
  %43 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %39) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %48

45:                                               ; preds = %36
  %46 = add i8 %41, -9
  %47 = icmp ult i8 %46, 91
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %42
  %49 = icmp eq ptr %35, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %52 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %51, ptr noundef nonnull @.str.6) #5
  br label %58

53:                                               ; preds = %36, %45, %42
  %54 = phi ptr [ %35, %42 ], [ %35, %45 ], [ %39, %36 ]
  %55 = getelementptr inbounds %struct.LIST, ptr %34, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %124, label %33

58:                                               ; preds = %48, %50
  %59 = icmp eq ptr %34, %0
  br i1 %59, label %124, label %60

60:                                               ; preds = %58, %115
  %61 = phi i32 [ %85, %115 ], [ %29, %58 ]
  %62 = phi i32 [ %86, %115 ], [ 0, %58 ]
  %63 = phi ptr [ %92, %115 ], [ %35, %58 ]
  %64 = phi ptr [ %66, %115 ], [ %12, %58 ]
  %65 = phi ptr [ %91, %115 ], [ %34, %58 ]
  %66 = phi ptr [ %96, %115 ], [ %39, %58 ]
  %67 = getelementptr inbounds %struct.gapobj_type, ptr %63, i64 0, i32 3
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, -8192
  %70 = icmp eq i16 %69, -16384
  %71 = and i16 %68, 6144
  %72 = icmp eq i16 %71, 2048
  %73 = or i1 %70, %72
  br i1 %73, label %124, label %74

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 3, i32 1
  %76 = getelementptr inbounds [2 x i32], ptr %75, i64 0, i64 %27
  %77 = load i32, ptr %76, align 4, !tbaa !5
  %78 = getelementptr inbounds %struct.word_type, ptr %66, i64 0, i32 3
  %79 = getelementptr inbounds [2 x i32], ptr %78, i64 0, i64 %27
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %81 = getelementptr inbounds %struct.word_type, ptr %66, i64 0, i32 3, i32 1
  %82 = getelementptr inbounds [2 x i32], ptr %81, i64 0, i64 %27
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = tail call i32 @ActualGap(i32 noundef %77, i32 noundef %80, i32 noundef %83, ptr noundef nonnull %67, i32 noundef %1, i32 noundef %61) #5
  %85 = add nsw i32 %84, %61
  %86 = add nuw nsw i32 %62, 1
  %87 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %117, label %90

90:                                               ; preds = %74, %110
  %91 = phi ptr [ %113, %110 ], [ %88, %74 ]
  %92 = phi ptr [ %111, %110 ], [ null, %74 ]
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %96, %93 ], [ %91, %90 ]
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.word_type, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 8, !tbaa !5
  switch i8 %98, label %102 [
    i8 0, label %93
    i8 1, label %110
    i8 9, label %99
  ]

99:                                               ; preds = %93
  %100 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %96) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %105

102:                                              ; preds = %93
  %103 = add i8 %98, -9
  %104 = icmp ult i8 %103, 91
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99
  %106 = icmp eq ptr %92, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %105
  %108 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %109 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %108, ptr noundef nonnull @.str.6) #5
  br label %115

110:                                              ; preds = %93, %102, %99
  %111 = phi ptr [ %92, %99 ], [ %92, %102 ], [ %96, %93 ]
  %112 = getelementptr inbounds %struct.LIST, ptr %91, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %117, label %90

115:                                              ; preds = %105, %107
  %116 = icmp eq ptr %91, %0
  br i1 %116, label %117, label %60

117:                                              ; preds = %74, %115, %110
  %118 = getelementptr inbounds %struct.word_type, ptr %66, i64 0, i32 3, i32 1
  %119 = getelementptr inbounds [2 x i32], ptr %118, i64 0, i64 %27
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = add i32 %85, %120
  %122 = sub i32 %1, %121
  %123 = sdiv i32 %122, %86
  br label %124

124:                                              ; preds = %21, %53, %60, %25, %58, %3, %117
  %125 = phi i32 [ %123, %117 ], [ 0, %3 ], [ 0, %58 ], [ 0, %25 ], [ 0, %60 ], [ 0, %53 ], [ 0, %21 ]
  ret i32 %125
}

declare i32 @ActualGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @InsertScale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !11, i64 48}
!13 = !{!"font_rec", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 40, !11, i64 48, !14, i64 56, !14, i64 58, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !11, i64 112}
!16 = !{!"back_end_rec", !9, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224}
!17 = !{!16, !9, i64 16}
!18 = !{!16, !11, i64 160}
!19 = !{!16, !11, i64 136}
!20 = !{!16, !11, i64 152}
!21 = !{!16, !11, i64 168}
!22 = !{!16, !9, i64 20}
!23 = !{!24, !9, i64 0}
!24 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!25 = !{!24, !9, i64 4}
!26 = !{!24, !9, i64 8}
!27 = !{!16, !11, i64 144}
!28 = !{!16, !9, i64 32}
!29 = !{!16, !11, i64 120}
!30 = !{!16, !9, i64 24}
!31 = !{!16, !11, i64 192}
!32 = !{!16, !11, i64 176}
!33 = !{!16, !11, i64 208}
!34 = !{!16, !11, i64 216}
!35 = !{!16, !9, i64 28}
!36 = !{!16, !11, i64 200}
!37 = !{!16, !11, i64 128}

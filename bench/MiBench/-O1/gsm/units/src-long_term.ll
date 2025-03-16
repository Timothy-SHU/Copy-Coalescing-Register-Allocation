; ModuleID = 'src/long_term.c'
source_filename = "src/long_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"src/long_term.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor = private unnamed_addr constant [97 x i8] c"void Gsm_Long_Term_Predictor(struct gsm_state *, word *, word *, word *, word *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Nc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Nr >= 40 && Nr <= 120\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering = private unnamed_addr constant [87 x i8] c"void Gsm_Long_Term_Synthesis_Filtering(struct gsm_state *, word, word, word *, word *)\00", align 1
@gsm_QLB = external local_unnamed_addr global [4 x i16], align 2
@.str.8 = private unnamed_addr constant [16 x i8] c"brp != MIN_WORD\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dmax > 0\00", align 1
@__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters = private unnamed_addr constant [71 x i8] c"void Calculation_of_the_LTP_parameters(word *, word *, word *, word *)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"scal >= 0\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"scal <= 100 && scal >= -100\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Nc <= 120 && Nc >= 40\00", align 1
@gsm_DLB = external local_unnamed_addr global [4 x i16], align 2

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Long_Term_Predictor(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [40 x i16], align 16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

14:                                               ; preds = %11
  %15 = icmp eq ptr %3, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

17:                                               ; preds = %14
  %18 = icmp eq ptr %4, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

20:                                               ; preds = %17
  %21 = icmp eq ptr %5, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

23:                                               ; preds = %20
  %24 = icmp eq ptr %6, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #6
  unreachable

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #7
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i64 [ 0, %26 ], [ %38, %27 ]
  %29 = phi i16 [ 0, %26 ], [ %37, %27 ]
  %30 = getelementptr inbounds i16, ptr %1, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = icmp slt i16 %31, 0
  %33 = icmp eq i16 %31, -32768
  %34 = sub i16 0, %31
  %35 = select i1 %33, i16 32767, i16 %34
  %36 = select i1 %32, i16 %35, i16 %31
  %37 = tail call i16 @llvm.smax.i16(i16 %36, i16 %29)
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, 40
  br i1 %39, label %40, label %27, !llvm.loop !9

40:                                               ; preds = %27
  %41 = icmp eq i16 %37, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = icmp sgt i16 %37, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #6
  unreachable

45:                                               ; preds = %42
  %46 = zext nneg i16 %37 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = tail call signext i16 @gsm_norm(i64 noundef %47) #7
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %49, %45 ], [ 0, %40 ]
  %52 = icmp sgt i32 %51, 6
  %53 = shl nsw i32 %51, 16
  %54 = sub i32 393216, %53
  %55 = ashr exact i32 %54, 16
  %56 = select i1 %52, i32 0, i32 %55
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %179, label %58

58:                                               ; preds = %50
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #6
  unreachable

59:                                               ; preds = %179
  %60 = load i16, ptr %8, align 16, !tbaa !5
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 1
  %63 = load i16, ptr %62, align 2, !tbaa !5
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 2
  %66 = load i16, ptr %65, align 4, !tbaa !5
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 3
  %69 = load i16, ptr %68, align 2, !tbaa !5
  %70 = sext i16 %69 to i64
  %71 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 4
  %72 = load i16, ptr %71, align 8, !tbaa !5
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 5
  %75 = load i16, ptr %74, align 2, !tbaa !5
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 6
  %78 = load i16, ptr %77, align 4, !tbaa !5
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 7
  %81 = load i16, ptr %80, align 2, !tbaa !5
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 8
  %84 = load i16, ptr %83, align 16, !tbaa !5
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 9
  %87 = load i16, ptr %86, align 2, !tbaa !5
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 10
  %90 = load i16, ptr %89, align 4, !tbaa !5
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 11
  %93 = load i16, ptr %92, align 2, !tbaa !5
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 12
  %96 = load i16, ptr %95, align 8, !tbaa !5
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 13
  %99 = load i16, ptr %98, align 2, !tbaa !5
  %100 = sext i16 %99 to i64
  %101 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 14
  %102 = load i16, ptr %101, align 4, !tbaa !5
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 15
  %105 = load i16, ptr %104, align 2, !tbaa !5
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 16
  %108 = load i16, ptr %107, align 16, !tbaa !5
  %109 = sext i16 %108 to i64
  %110 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 17
  %111 = load i16, ptr %110, align 2, !tbaa !5
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 18
  %114 = load i16, ptr %113, align 4, !tbaa !5
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 19
  %117 = load i16, ptr %116, align 2, !tbaa !5
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 20
  %120 = load i16, ptr %119, align 8, !tbaa !5
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 21
  %123 = load i16, ptr %122, align 2, !tbaa !5
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 22
  %126 = load i16, ptr %125, align 4, !tbaa !5
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 23
  %129 = load i16, ptr %128, align 2, !tbaa !5
  %130 = sext i16 %129 to i64
  %131 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 24
  %132 = load i16, ptr %131, align 16, !tbaa !5
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 25
  %135 = load i16, ptr %134, align 2, !tbaa !5
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 26
  %138 = load i16, ptr %137, align 4, !tbaa !5
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 27
  %141 = load i16, ptr %140, align 2, !tbaa !5
  %142 = sext i16 %141 to i64
  %143 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 28
  %144 = load i16, ptr %143, align 8, !tbaa !5
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 29
  %147 = load i16, ptr %146, align 2, !tbaa !5
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 30
  %150 = load i16, ptr %149, align 4, !tbaa !5
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 31
  %153 = load i16, ptr %152, align 2, !tbaa !5
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 32
  %156 = load i16, ptr %155, align 16, !tbaa !5
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 33
  %159 = load i16, ptr %158, align 2, !tbaa !5
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 34
  %162 = load i16, ptr %161, align 4, !tbaa !5
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 35
  %165 = load i16, ptr %164, align 2, !tbaa !5
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 36
  %168 = load i16, ptr %167, align 8, !tbaa !5
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 37
  %171 = load i16, ptr %170, align 2, !tbaa !5
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 38
  %174 = load i16, ptr %173, align 4, !tbaa !5
  %175 = sext i16 %174 to i64
  %176 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 39
  %177 = load i16, ptr %176, align 2, !tbaa !5
  %178 = sext i16 %177 to i64
  br label %189

179:                                              ; preds = %50, %179
  %180 = phi i64 [ %187, %179 ], [ 0, %50 ]
  %181 = getelementptr inbounds i16, ptr %1, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !5
  %183 = sext i16 %182 to i32
  %184 = ashr i32 %183, %56
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 %180
  store i16 %185, ptr %186, align 2, !tbaa !5
  %187 = add nuw nsw i64 %180, 1
  %188 = icmp eq i64 %187, 40
  br i1 %188, label %59, label %179, !llvm.loop !11

189:                                              ; preds = %189, %59
  %190 = phi i64 [ 40, %59 ], [ %436, %189 ]
  %191 = phi i16 [ 40, %59 ], [ %435, %189 ]
  %192 = phi i64 [ 0, %59 ], [ %434, %189 ]
  %193 = sub nsw i64 0, %190
  %194 = getelementptr inbounds i16, ptr %2, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !5
  %196 = sext i16 %195 to i64
  %197 = mul nsw i64 %196, %61
  %198 = sub nsw i64 1, %190
  %199 = getelementptr inbounds i16, ptr %2, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !5
  %201 = sext i16 %200 to i64
  %202 = mul nsw i64 %201, %64
  %203 = add nsw i64 %202, %197
  %204 = sub nsw i64 2, %190
  %205 = getelementptr inbounds i16, ptr %2, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !5
  %207 = sext i16 %206 to i64
  %208 = mul nsw i64 %207, %67
  %209 = add nsw i64 %203, %208
  %210 = sub nsw i64 3, %190
  %211 = getelementptr inbounds i16, ptr %2, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !5
  %213 = sext i16 %212 to i64
  %214 = mul nsw i64 %213, %70
  %215 = add nsw i64 %209, %214
  %216 = sub nsw i64 4, %190
  %217 = getelementptr inbounds i16, ptr %2, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !5
  %219 = sext i16 %218 to i64
  %220 = mul nsw i64 %219, %73
  %221 = add nsw i64 %215, %220
  %222 = sub nsw i64 5, %190
  %223 = getelementptr inbounds i16, ptr %2, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !5
  %225 = sext i16 %224 to i64
  %226 = mul nsw i64 %225, %76
  %227 = add nsw i64 %221, %226
  %228 = sub nsw i64 6, %190
  %229 = getelementptr inbounds i16, ptr %2, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !5
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %231, %79
  %233 = add nsw i64 %227, %232
  %234 = sub nsw i64 7, %190
  %235 = getelementptr inbounds i16, ptr %2, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !5
  %237 = sext i16 %236 to i64
  %238 = mul nsw i64 %237, %82
  %239 = add nsw i64 %233, %238
  %240 = sub nsw i64 8, %190
  %241 = getelementptr inbounds i16, ptr %2, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !5
  %243 = sext i16 %242 to i64
  %244 = mul nsw i64 %243, %85
  %245 = add nsw i64 %239, %244
  %246 = sub nsw i64 9, %190
  %247 = getelementptr inbounds i16, ptr %2, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !5
  %249 = sext i16 %248 to i64
  %250 = mul nsw i64 %249, %88
  %251 = add nsw i64 %245, %250
  %252 = sub nsw i64 10, %190
  %253 = getelementptr inbounds i16, ptr %2, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !5
  %255 = sext i16 %254 to i64
  %256 = mul nsw i64 %255, %91
  %257 = add nsw i64 %251, %256
  %258 = sub nsw i64 11, %190
  %259 = getelementptr inbounds i16, ptr %2, i64 %258
  %260 = load i16, ptr %259, align 2, !tbaa !5
  %261 = sext i16 %260 to i64
  %262 = mul nsw i64 %261, %94
  %263 = add nsw i64 %257, %262
  %264 = sub nsw i64 12, %190
  %265 = getelementptr inbounds i16, ptr %2, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !5
  %267 = sext i16 %266 to i64
  %268 = mul nsw i64 %267, %97
  %269 = add nsw i64 %263, %268
  %270 = sub nsw i64 13, %190
  %271 = getelementptr inbounds i16, ptr %2, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !5
  %273 = sext i16 %272 to i64
  %274 = mul nsw i64 %273, %100
  %275 = add nsw i64 %269, %274
  %276 = sub nsw i64 14, %190
  %277 = getelementptr inbounds i16, ptr %2, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !5
  %279 = sext i16 %278 to i64
  %280 = mul nsw i64 %279, %103
  %281 = add nsw i64 %275, %280
  %282 = sub nsw i64 15, %190
  %283 = getelementptr inbounds i16, ptr %2, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !5
  %285 = sext i16 %284 to i64
  %286 = mul nsw i64 %285, %106
  %287 = add nsw i64 %281, %286
  %288 = sub nsw i64 16, %190
  %289 = getelementptr inbounds i16, ptr %2, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !5
  %291 = sext i16 %290 to i64
  %292 = mul nsw i64 %291, %109
  %293 = add nsw i64 %287, %292
  %294 = sub nsw i64 17, %190
  %295 = getelementptr inbounds i16, ptr %2, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !5
  %297 = sext i16 %296 to i64
  %298 = mul nsw i64 %297, %112
  %299 = add nsw i64 %293, %298
  %300 = sub nsw i64 18, %190
  %301 = getelementptr inbounds i16, ptr %2, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !5
  %303 = sext i16 %302 to i64
  %304 = mul nsw i64 %303, %115
  %305 = add nsw i64 %299, %304
  %306 = sub nsw i64 19, %190
  %307 = getelementptr inbounds i16, ptr %2, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !5
  %309 = sext i16 %308 to i64
  %310 = mul nsw i64 %309, %118
  %311 = add nsw i64 %305, %310
  %312 = sub nsw i64 20, %190
  %313 = getelementptr inbounds i16, ptr %2, i64 %312
  %314 = load i16, ptr %313, align 2, !tbaa !5
  %315 = sext i16 %314 to i64
  %316 = mul nsw i64 %315, %121
  %317 = add nsw i64 %311, %316
  %318 = sub nsw i64 21, %190
  %319 = getelementptr inbounds i16, ptr %2, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !5
  %321 = sext i16 %320 to i64
  %322 = mul nsw i64 %321, %124
  %323 = add nsw i64 %317, %322
  %324 = sub nsw i64 22, %190
  %325 = getelementptr inbounds i16, ptr %2, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !5
  %327 = sext i16 %326 to i64
  %328 = mul nsw i64 %327, %127
  %329 = add nsw i64 %323, %328
  %330 = sub nsw i64 23, %190
  %331 = getelementptr inbounds i16, ptr %2, i64 %330
  %332 = load i16, ptr %331, align 2, !tbaa !5
  %333 = sext i16 %332 to i64
  %334 = mul nsw i64 %333, %130
  %335 = add nsw i64 %329, %334
  %336 = sub nsw i64 24, %190
  %337 = getelementptr inbounds i16, ptr %2, i64 %336
  %338 = load i16, ptr %337, align 2, !tbaa !5
  %339 = sext i16 %338 to i64
  %340 = mul nsw i64 %339, %133
  %341 = add nsw i64 %335, %340
  %342 = sub nsw i64 25, %190
  %343 = getelementptr inbounds i16, ptr %2, i64 %342
  %344 = load i16, ptr %343, align 2, !tbaa !5
  %345 = sext i16 %344 to i64
  %346 = mul nsw i64 %345, %136
  %347 = add nsw i64 %341, %346
  %348 = sub nsw i64 26, %190
  %349 = getelementptr inbounds i16, ptr %2, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !5
  %351 = sext i16 %350 to i64
  %352 = mul nsw i64 %351, %139
  %353 = add nsw i64 %347, %352
  %354 = sub nsw i64 27, %190
  %355 = getelementptr inbounds i16, ptr %2, i64 %354
  %356 = load i16, ptr %355, align 2, !tbaa !5
  %357 = sext i16 %356 to i64
  %358 = mul nsw i64 %357, %142
  %359 = add nsw i64 %353, %358
  %360 = sub nsw i64 28, %190
  %361 = getelementptr inbounds i16, ptr %2, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !5
  %363 = sext i16 %362 to i64
  %364 = mul nsw i64 %363, %145
  %365 = add nsw i64 %359, %364
  %366 = sub nsw i64 29, %190
  %367 = getelementptr inbounds i16, ptr %2, i64 %366
  %368 = load i16, ptr %367, align 2, !tbaa !5
  %369 = sext i16 %368 to i64
  %370 = mul nsw i64 %369, %148
  %371 = add nsw i64 %365, %370
  %372 = sub nsw i64 30, %190
  %373 = getelementptr inbounds i16, ptr %2, i64 %372
  %374 = load i16, ptr %373, align 2, !tbaa !5
  %375 = sext i16 %374 to i64
  %376 = mul nsw i64 %375, %151
  %377 = add nsw i64 %371, %376
  %378 = sub nsw i64 31, %190
  %379 = getelementptr inbounds i16, ptr %2, i64 %378
  %380 = load i16, ptr %379, align 2, !tbaa !5
  %381 = sext i16 %380 to i64
  %382 = mul nsw i64 %381, %154
  %383 = add nsw i64 %377, %382
  %384 = sub nsw i64 32, %190
  %385 = getelementptr inbounds i16, ptr %2, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !5
  %387 = sext i16 %386 to i64
  %388 = mul nsw i64 %387, %157
  %389 = add nsw i64 %383, %388
  %390 = sub nsw i64 33, %190
  %391 = getelementptr inbounds i16, ptr %2, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !5
  %393 = sext i16 %392 to i64
  %394 = mul nsw i64 %393, %160
  %395 = add nsw i64 %389, %394
  %396 = sub nsw i64 34, %190
  %397 = getelementptr inbounds i16, ptr %2, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !5
  %399 = sext i16 %398 to i64
  %400 = mul nsw i64 %399, %163
  %401 = add nsw i64 %395, %400
  %402 = sub nsw i64 35, %190
  %403 = getelementptr inbounds i16, ptr %2, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !5
  %405 = sext i16 %404 to i64
  %406 = mul nsw i64 %405, %166
  %407 = add nsw i64 %401, %406
  %408 = sub nsw i64 36, %190
  %409 = getelementptr inbounds i16, ptr %2, i64 %408
  %410 = load i16, ptr %409, align 2, !tbaa !5
  %411 = sext i16 %410 to i64
  %412 = mul nsw i64 %411, %169
  %413 = add nsw i64 %407, %412
  %414 = sub nsw i64 37, %190
  %415 = getelementptr inbounds i16, ptr %2, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !5
  %417 = sext i16 %416 to i64
  %418 = mul nsw i64 %417, %172
  %419 = add nsw i64 %413, %418
  %420 = sub nsw i64 38, %190
  %421 = getelementptr inbounds i16, ptr %2, i64 %420
  %422 = load i16, ptr %421, align 2, !tbaa !5
  %423 = sext i16 %422 to i64
  %424 = mul nsw i64 %423, %175
  %425 = add nsw i64 %419, %424
  %426 = sub nsw i64 39, %190
  %427 = getelementptr inbounds i16, ptr %2, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !5
  %429 = sext i16 %428 to i64
  %430 = mul nsw i64 %429, %178
  %431 = add nsw i64 %425, %430
  %432 = icmp sgt i64 %431, %192
  %433 = trunc i64 %190 to i16
  %434 = tail call i64 @llvm.smax.i64(i64 %431, i64 %192)
  %435 = select i1 %432, i16 %433, i16 %191
  %436 = add nuw nsw i64 %190, 1
  %437 = icmp eq i64 %436, 121
  br i1 %437, label %438, label %189, !llvm.loop !12

438:                                              ; preds = %189
  store i16 %435, ptr %5, align 2, !tbaa !5
  %439 = icmp slt i32 %56, 101
  br i1 %439, label %441, label %440

440:                                              ; preds = %438
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #6
  unreachable

441:                                              ; preds = %438
  %442 = shl nuw nsw i64 %434, 1
  %443 = sub nsw i32 6, %56
  %444 = zext nneg i32 %443 to i64
  %445 = lshr i64 %442, %444
  %446 = add i16 %435, -40
  %447 = icmp ult i16 %446, 81
  br i1 %447, label %448, label %450

448:                                              ; preds = %441
  %449 = zext nneg i16 %435 to i64
  br label %451

450:                                              ; preds = %441
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #6
  unreachable

451:                                              ; preds = %451, %448
  %452 = phi i64 [ 0, %448 ], [ %461, %451 ]
  %453 = phi i64 [ 0, %448 ], [ %460, %451 ]
  %454 = sub nsw i64 %452, %449
  %455 = getelementptr inbounds i16, ptr %2, i64 %454
  %456 = load i16, ptr %455, align 2, !tbaa !5
  %457 = ashr i16 %456, 3
  %458 = sext i16 %457 to i64
  %459 = mul nsw i64 %458, %458
  %460 = add nuw nsw i64 %459, %453
  %461 = add nuw nsw i64 %452, 1
  %462 = icmp eq i64 %461, 40
  br i1 %462, label %463, label %451, !llvm.loop !13

463:                                              ; preds = %451
  %464 = shl nuw i64 %460, 1
  %465 = icmp eq i64 %445, 0
  br i1 %465, label %490, label %466

466:                                              ; preds = %463
  %467 = icmp slt i64 %445, %464
  br i1 %467, label %468, label %490

468:                                              ; preds = %466
  %469 = tail call signext i16 @gsm_norm(i64 noundef %464) #7
  %470 = sext i16 %469 to i64
  %471 = and i64 %470, 4294967295
  %472 = shl i64 %445, %471
  %473 = trunc i64 %472 to i32
  %474 = shl i64 %464, %471
  %475 = lshr i64 %474, 16
  %476 = trunc i64 %475 to i16
  %477 = ashr i32 %473, 16
  br label %478

478:                                              ; preds = %485, %468
  %479 = phi i64 [ 0, %468 ], [ %486, %485 ]
  %480 = getelementptr inbounds [4 x i16], ptr @gsm_DLB, i64 0, i64 %479
  %481 = load i16, ptr %480, align 2, !tbaa !5
  %482 = tail call signext i16 @gsm_mult(i16 noundef signext %476, i16 noundef signext %481) #7
  %483 = sext i16 %482 to i32
  %484 = icmp sgt i32 %477, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = add nuw nsw i64 %479, 1
  %487 = icmp eq i64 %486, 3
  br i1 %487, label %490, label %478, !llvm.loop !14

488:                                              ; preds = %478
  %489 = trunc i64 %479 to i16
  br label %490

490:                                              ; preds = %485, %488, %466, %463
  %491 = phi i16 [ 0, %463 ], [ 3, %466 ], [ %489, %488 ], [ 3, %485 ]
  store i16 %491, ptr %6, align 2, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #7
  %492 = load i16, ptr %5, align 2, !tbaa !5
  switch i16 %491, label %569 [
    i16 0, label %499
    i16 1, label %497
    i16 2, label %495
    i16 3, label %493
  ]

493:                                              ; preds = %490
  %494 = sext i16 %492 to i64
  br label %552

495:                                              ; preds = %490
  %496 = sext i16 %492 to i64
  br label %535

497:                                              ; preds = %490
  %498 = sext i16 %492 to i64
  br label %518

499:                                              ; preds = %490
  %500 = sext i16 %492 to i64
  br label %501

501:                                              ; preds = %501, %499
  %502 = phi i64 [ 0, %499 ], [ %516, %501 ]
  %503 = sub nsw i64 %502, %500
  %504 = getelementptr inbounds i16, ptr %2, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !5
  %506 = sext i16 %505 to i32
  %507 = mul nsw i32 %506, 3277
  %508 = add nsw i32 %507, 16384
  %509 = ashr i32 %508, 15
  %510 = trunc i32 %509 to i16
  %511 = getelementptr inbounds i16, ptr %4, i64 %502
  store i16 %510, ptr %511, align 2, !tbaa !5
  %512 = getelementptr inbounds i16, ptr %1, i64 %502
  %513 = load i16, ptr %512, align 2, !tbaa !5
  %514 = tail call i16 @llvm.ssub.sat.i16(i16 %513, i16 %510)
  %515 = getelementptr inbounds i16, ptr %3, i64 %502
  store i16 %514, ptr %515, align 2, !tbaa !5
  %516 = add nuw nsw i64 %502, 1
  %517 = icmp eq i64 %516, 40
  br i1 %517, label %569, label %501, !llvm.loop !15

518:                                              ; preds = %518, %497
  %519 = phi i64 [ 0, %497 ], [ %533, %518 ]
  %520 = sub nsw i64 %519, %498
  %521 = getelementptr inbounds i16, ptr %2, i64 %520
  %522 = load i16, ptr %521, align 2, !tbaa !5
  %523 = sext i16 %522 to i32
  %524 = mul nsw i32 %523, 11469
  %525 = add nsw i32 %524, 16384
  %526 = lshr i32 %525, 15
  %527 = trunc i32 %526 to i16
  %528 = getelementptr inbounds i16, ptr %4, i64 %519
  store i16 %527, ptr %528, align 2, !tbaa !5
  %529 = getelementptr inbounds i16, ptr %1, i64 %519
  %530 = load i16, ptr %529, align 2, !tbaa !5
  %531 = tail call i16 @llvm.ssub.sat.i16(i16 %530, i16 %527)
  %532 = getelementptr inbounds i16, ptr %3, i64 %519
  store i16 %531, ptr %532, align 2, !tbaa !5
  %533 = add nuw nsw i64 %519, 1
  %534 = icmp eq i64 %533, 40
  br i1 %534, label %569, label %518, !llvm.loop !16

535:                                              ; preds = %535, %495
  %536 = phi i64 [ 0, %495 ], [ %550, %535 ]
  %537 = sub nsw i64 %536, %496
  %538 = getelementptr inbounds i16, ptr %2, i64 %537
  %539 = load i16, ptr %538, align 2, !tbaa !5
  %540 = sext i16 %539 to i64
  %541 = mul nsw i64 %540, 21299
  %542 = add nsw i64 %541, 16384
  %543 = lshr i64 %542, 15
  %544 = trunc i64 %543 to i16
  %545 = getelementptr inbounds i16, ptr %4, i64 %536
  store i16 %544, ptr %545, align 2, !tbaa !5
  %546 = getelementptr inbounds i16, ptr %1, i64 %536
  %547 = load i16, ptr %546, align 2, !tbaa !5
  %548 = tail call i16 @llvm.ssub.sat.i16(i16 %547, i16 %544)
  %549 = getelementptr inbounds i16, ptr %3, i64 %536
  store i16 %548, ptr %549, align 2, !tbaa !5
  %550 = add nuw nsw i64 %536, 1
  %551 = icmp eq i64 %550, 40
  br i1 %551, label %569, label %535, !llvm.loop !17

552:                                              ; preds = %552, %493
  %553 = phi i64 [ 0, %493 ], [ %567, %552 ]
  %554 = sub nsw i64 %553, %494
  %555 = getelementptr inbounds i16, ptr %2, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !5
  %557 = sext i16 %556 to i64
  %558 = mul nsw i64 %557, 32767
  %559 = add nsw i64 %558, 16384
  %560 = lshr i64 %559, 15
  %561 = trunc i64 %560 to i16
  %562 = getelementptr inbounds i16, ptr %4, i64 %553
  store i16 %561, ptr %562, align 2, !tbaa !5
  %563 = getelementptr inbounds i16, ptr %1, i64 %553
  %564 = load i16, ptr %563, align 2, !tbaa !5
  %565 = tail call i16 @llvm.ssub.sat.i16(i16 %564, i16 %561)
  %566 = getelementptr inbounds i16, ptr %3, i64 %553
  store i16 %565, ptr %566, align 2, !tbaa !5
  %567 = add nuw nsw i64 %553, 1
  %568 = icmp eq i64 %567, 40
  br i1 %568, label %569, label %552, !llvm.loop !18

569:                                              ; preds = %552, %535, %518, %501, %490
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Long_Term_Synthesis_Filtering(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = add i16 %1, -121
  %7 = icmp ult i16 %6, -81
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !19
  br label %11

11:                                               ; preds = %5, %8
  %12 = phi i16 [ %10, %8 ], [ %1, %5 ]
  %13 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 7
  store i16 %12, ptr %13, align 2, !tbaa !19
  %14 = add i16 %12, -40
  %15 = icmp ult i16 %14, 81
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 581, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering) #6
  unreachable

17:                                               ; preds = %11
  %18 = sext i16 %2 to i64
  %19 = getelementptr inbounds [4 x i16], ptr @gsm_QLB, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !5
  %21 = icmp eq i16 %20, -32768
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = sext i16 %20 to i64
  %24 = shl nsw i64 %23, 33
  %25 = zext nneg i16 %12 to i64
  br label %27

26:                                               ; preds = %17
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 590, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering) #6
  unreachable

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %41, %27 ]
  %29 = sub nsw i64 %28, %25
  %30 = getelementptr inbounds i16, ptr %4, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds i16, ptr %3, i64 %28
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = mul i64 %24, %32
  %36 = add i64 %35, 140737488355328
  %37 = lshr i64 %36, 48
  %38 = trunc i64 %37 to i16
  %39 = tail call i16 @llvm.sadd.sat.i16(i16 %38, i16 %34)
  %40 = getelementptr inbounds i16, ptr %4, i64 %28
  store i16 %39, ptr %40, align 2, !tbaa !5
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, 40
  br i1 %42, label %43, label %27, !llvm.loop !23

43:                                               ; preds = %27
  %44 = getelementptr i8, ptr %4, i64 -240
  %45 = getelementptr i8, ptr %4, i64 -160
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(240) %44, ptr noundef nonnull align 2 dereferenceable(240) %45, i64 240, i1 false), !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare signext i16 @gsm_norm(i64 noundef) local_unnamed_addr #3

declare signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!20, !6, i64 630}
!20 = !{!"gsm_state", !7, i64 0, !6, i64 560, !21, i64 568, !22, i64 576, !7, i64 580, !7, i64 596, !6, i64 628, !6, i64 630, !7, i64 632, !6, i64 650, !7, i64 652, !7, i64 653}
!21 = !{!"long", !7, i64 0}
!22 = !{!"int", !7, i64 0}
!23 = distinct !{!23, !10}

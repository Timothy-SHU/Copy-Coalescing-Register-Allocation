; ModuleID = 'src/text.c'
source_filename = "src/text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darray_t = type { ptr, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [61 x i8] c"$Id: text.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@text_id = dso_local local_unnamed_addr global ptr @.str, align 8
@Rules = external local_unnamed_addr global [0 x ptr], align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Error: Can't find rule for: '%c' in \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Bad char in left rule: '%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Bad char in right rule:'%c'\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @isvowel(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -65
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %8, label %5

5:                                                ; preds = %8, %1
  %6 = icmp eq i32 %0, 85
  %7 = zext i1 %6 to i32
  br label %13

8:                                                ; preds = %1
  %9 = trunc i32 %3 to i8
  %10 = lshr i8 -107, %9
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @isconsonant(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @__ctype_b_loc() #10
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !9
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = add i32 %0, -65
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %16, label %13

13:                                               ; preds = %16, %9
  %14 = icmp ne i32 %0, 85
  %15 = zext i1 %14 to i32
  br label %21

16:                                               ; preds = %9
  %17 = trunc i32 %11 to i8
  %18 = lshr i8 -107, %17
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %13, %1
  %22 = phi i32 [ 0, %1 ], [ %15, %13 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @NRL(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = add i32 %1, 3
  %7 = zext i32 %6 to i64
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #11
  store i8 32, ptr %8, align 1, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__ctype_b_loc() #10
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi i32 [ %1, %11 ], [ %17, %32 ]
  %15 = phi ptr [ %9, %11 ], [ %34, %32 ]
  %16 = phi ptr [ %0, %11 ], [ %18, %32 ]
  %17 = add i32 %14, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !14
  %20 = load ptr, ptr %12, align 8, !tbaa !5
  %21 = sext i8 %19 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !9
  %24 = and i16 %23, 512
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %13
  %27 = tail call ptr @__ctype_toupper_loc() #10
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds i32, ptr %28, i64 %21
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = trunc i32 %30 to i8
  br label %32

32:                                               ; preds = %26, %13
  %33 = phi i8 [ %31, %26 ], [ %19, %13 ]
  store i8 %33, ptr %15, align 1, !tbaa !14
  %34 = getelementptr inbounds i8, ptr %15, i64 1
  %35 = icmp eq i32 %17, 0
  br i1 %35, label %36, label %13, !llvm.loop !16

36:                                               ; preds = %32, %3
  %37 = phi ptr [ %8, %3 ], [ %15, %32 ]
  %38 = phi ptr [ %9, %3 ], [ %34, %32 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 2
  store i8 32, ptr %38, align 1, !tbaa !14
  store i8 0, ptr %39, align 1, !tbaa !14
  %40 = tail call ptr @__ctype_b_loc() #10
  %41 = getelementptr i8, ptr %8, i64 -1
  br label %42

42:                                               ; preds = %391, %36
  %43 = phi i32 [ 1, %36 ], [ %392, %391 ]
  %44 = load ptr, ptr %40, align 8, !tbaa !5
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, ptr %8, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %48 = sext i8 %47 to i64
  %49 = getelementptr inbounds i16, ptr %44, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !9
  %51 = and i16 %50, 256
  %52 = icmp eq i16 %51, 0
  %53 = add nsw i64 %48, -64
  %54 = select i1 %52, i64 0, i64 %53
  %55 = getelementptr inbounds [0 x ptr], ptr @Rules, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [4 x ptr], ptr %56, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %42
  %61 = getelementptr i8, ptr %41, i64 %45
  br label %62

62:                                               ; preds = %94, %60
  %63 = phi ptr [ %58, %60 ], [ %96, %94 ]
  %64 = phi ptr [ %56, %60 ], [ %65, %94 ]
  %65 = getelementptr inbounds [4 x ptr], ptr %64, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !14
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %62
  %69 = load i8, ptr %46, align 1, !tbaa !14
  %70 = icmp eq i8 %66, %69
  br i1 %70, label %81, label %94

71:                                               ; preds = %94, %42
  %72 = load ptr, ptr @stderr, align 8, !tbaa !5
  %73 = load i8, ptr %46, align 1, !tbaa !14
  %74 = sext i8 %73 to i32
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, i32 noundef %74, ptr noundef nonnull %8) #12
  %76 = add nsw i32 %43, 1
  br label %391

77:                                               ; preds = %81
  %78 = getelementptr inbounds i8, ptr %8, i64 %85
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %80 = icmp eq i8 %86, %79
  br i1 %80, label %81, label %94, !llvm.loop !18

81:                                               ; preds = %68, %77
  %82 = phi ptr [ %84, %77 ], [ %63, %68 ]
  %83 = phi i64 [ %85, %77 ], [ %45, %68 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = add i64 %83, 1
  %86 = load i8, ptr %84, align 1, !tbaa !14
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %77, !llvm.loop !18

88:                                               ; preds = %128, %250
  %89 = phi i8 [ %241, %250 ], [ %121, %128 ]
  %90 = phi ptr [ @.str.3, %250 ], [ @.str.2, %128 ]
  %91 = sext i8 %89 to i32
  %92 = load ptr, ptr @stderr, align 8, !tbaa !5
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull %90, i32 noundef %91) #12
  br label %94

94:                                               ; preds = %77, %224, %220, %215, %148, %129, %367, %363, %350, %346, %342, %337, %270, %251, %88, %68
  %95 = getelementptr inbounds [4 x ptr], ptr %64, i64 1, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %71, label %62, !llvm.loop !19

98:                                               ; preds = %81
  %99 = trunc i64 %85 to i32
  br label %100

100:                                              ; preds = %98, %62
  %101 = phi i32 [ %43, %62 ], [ %99, %98 ]
  %102 = load ptr, ptr %64, align 8, !tbaa !5
  %103 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = load i8, ptr %102, align 1, !tbaa !14
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %233, label %107

107:                                              ; preds = %100
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %102) #13
  %109 = trunc i64 %108 to i32
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %233

111:                                              ; preds = %107
  %112 = shl i64 %108, 32
  %113 = add i64 %112, -4294967296
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds i8, ptr %102, i64 %114
  %116 = load ptr, ptr %40, align 8, !tbaa !5
  br label %117

117:                                              ; preds = %228, %111
  %118 = phi i32 [ %109, %111 ], [ %231, %228 ]
  %119 = phi ptr [ %61, %111 ], [ %229, %228 ]
  %120 = phi ptr [ %115, %111 ], [ %230, %228 ]
  %121 = load i8, ptr %120, align 1, !tbaa !14
  %122 = sext i8 %121 to i64
  %123 = getelementptr inbounds i16, ptr %116, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !9
  %125 = freeze i16 %124
  %126 = and i16 %125, 1024
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  switch i8 %121, label %88 [
    i8 39, label %129
    i8 32, label %129
    i8 35, label %134
    i8 58, label %170
    i8 94, label %195
    i8 46, label %220
    i8 43, label %224
  ]

129:                                              ; preds = %128, %128, %117
  %130 = load i8, ptr %119, align 1, !tbaa !14
  %131 = icmp eq i8 %121, %130
  br i1 %131, label %132, label %94

132:                                              ; preds = %129
  %133 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

134:                                              ; preds = %128
  %135 = load i8, ptr %119, align 1, !tbaa !14
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %136, -65
  %138 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 31)
  %139 = icmp ult i32 %138, 8
  br i1 %139, label %143, label %140

140:                                              ; preds = %143, %134
  %141 = icmp eq i8 %135, 85
  %142 = zext i1 %141 to i32
  br label %148

143:                                              ; preds = %134
  %144 = trunc i32 %138 to i8
  %145 = lshr i8 -107, %144
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %140, label %148

148:                                              ; preds = %143, %140
  %149 = phi i32 [ %142, %140 ], [ 1, %143 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %94, label %151

151:                                              ; preds = %148, %167
  %152 = phi ptr [ %153, %167 ], [ %119, %148 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !14
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 %155, -65
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 31)
  %158 = icmp ult i32 %157, 8
  br i1 %158, label %162, label %159

159:                                              ; preds = %162, %151
  %160 = icmp eq i8 %154, 85
  %161 = zext i1 %160 to i32
  br label %167

162:                                              ; preds = %151
  %163 = trunc i32 %157 to i8
  %164 = lshr i8 -107, %163
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %159, label %167

167:                                              ; preds = %162, %159
  %168 = phi i32 [ %161, %159 ], [ 1, %162 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %228, label %151, !llvm.loop !20

170:                                              ; preds = %128, %191
  %171 = phi ptr [ %194, %191 ], [ %119, %128 ]
  %172 = load i8, ptr %171, align 1, !tbaa !14
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %116, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !9
  %176 = and i16 %175, 256
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %170
  %179 = sext i8 %172 to i32
  %180 = add nsw i32 %179, -65
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 31)
  %182 = icmp ult i32 %181, 8
  br i1 %182, label %186, label %183

183:                                              ; preds = %186, %178
  %184 = icmp ne i8 %172, 85
  %185 = zext i1 %184 to i32
  br label %191

186:                                              ; preds = %178
  %187 = trunc i32 %181 to i8
  %188 = lshr i8 -107, %187
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %183, label %191

191:                                              ; preds = %186, %183, %170
  %192 = phi i32 [ 0, %170 ], [ %185, %183 ], [ 0, %186 ]
  %193 = icmp eq i32 %192, 0
  %194 = getelementptr inbounds i8, ptr %171, i64 -1
  br i1 %193, label %228, label %170, !llvm.loop !21

195:                                              ; preds = %128
  %196 = load i8, ptr %119, align 1, !tbaa !14
  %197 = sext i8 %196 to i64
  %198 = getelementptr inbounds i16, ptr %116, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !9
  %200 = and i16 %199, 256
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %195
  %203 = sext i8 %196 to i32
  %204 = add nsw i32 %203, -65
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 31)
  %206 = icmp ult i32 %205, 8
  br i1 %206, label %210, label %207

207:                                              ; preds = %210, %202
  %208 = icmp ne i8 %196, 85
  %209 = zext i1 %208 to i32
  br label %215

210:                                              ; preds = %202
  %211 = trunc i32 %205 to i8
  %212 = lshr i8 -107, %211
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %207, label %215

215:                                              ; preds = %210, %207, %195
  %216 = phi i32 [ 0, %195 ], [ %209, %207 ], [ 0, %210 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %94, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

220:                                              ; preds = %128
  %221 = load i8, ptr %119, align 1, !tbaa !14
  switch i8 %221, label %94 [
    i8 66, label %222
    i8 68, label %222
    i8 86, label %222
    i8 71, label %222
    i8 74, label %222
    i8 76, label %222
    i8 77, label %222
    i8 78, label %222
    i8 82, label %222
    i8 87, label %222
    i8 90, label %222
  ]

222:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220, %220, %220
  %223 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

224:                                              ; preds = %128
  %225 = load i8, ptr %119, align 1, !tbaa !14
  switch i8 %225, label %94 [
    i8 69, label %226
    i8 73, label %226
    i8 89, label %226
  ]

226:                                              ; preds = %224, %224, %224
  %227 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

228:                                              ; preds = %191, %167, %226, %222, %218, %132
  %229 = phi ptr [ %133, %132 ], [ %227, %226 ], [ %223, %222 ], [ %219, %218 ], [ %153, %167 ], [ %171, %191 ]
  %230 = getelementptr inbounds i8, ptr %120, i64 -1
  %231 = add nsw i32 %118, -1
  %232 = icmp sgt i32 %118, 1
  br i1 %232, label %117, label %233, !llvm.loop !22

233:                                              ; preds = %228, %107, %100
  %234 = load i8, ptr %104, align 1, !tbaa !14
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %378, label %236

236:                                              ; preds = %233
  %237 = sext i32 %101 to i64
  %238 = getelementptr inbounds i8, ptr %8, i64 %237
  %239 = load ptr, ptr %40, align 8, !tbaa !5
  br label %240

240:                                              ; preds = %373, %236
  %241 = phi i8 [ %234, %236 ], [ %376, %373 ]
  %242 = phi ptr [ %238, %236 ], [ %374, %373 ]
  %243 = phi ptr [ %104, %236 ], [ %375, %373 ]
  %244 = sext i8 %241 to i64
  %245 = getelementptr inbounds i16, ptr %239, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !9
  %247 = freeze i16 %246
  %248 = and i16 %247, 1024
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  switch i8 %241, label %88 [
    i8 39, label %251
    i8 32, label %251
    i8 35, label %256
    i8 58, label %292
    i8 94, label %317
    i8 46, label %342
    i8 43, label %346
    i8 37, label %350
  ]

251:                                              ; preds = %250, %250, %240
  %252 = load i8, ptr %242, align 1, !tbaa !14
  %253 = icmp eq i8 %241, %252
  br i1 %253, label %254, label %94

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

256:                                              ; preds = %250
  %257 = load i8, ptr %242, align 1, !tbaa !14
  %258 = sext i8 %257 to i32
  %259 = add nsw i32 %258, -65
  %260 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 31)
  %261 = icmp ult i32 %260, 8
  br i1 %261, label %265, label %262

262:                                              ; preds = %265, %256
  %263 = icmp eq i8 %257, 85
  %264 = zext i1 %263 to i32
  br label %270

265:                                              ; preds = %256
  %266 = trunc i32 %260 to i8
  %267 = lshr i8 -107, %266
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %262, label %270

270:                                              ; preds = %265, %262
  %271 = phi i32 [ %264, %262 ], [ 1, %265 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %94, label %273

273:                                              ; preds = %270, %289
  %274 = phi ptr [ %275, %289 ], [ %242, %270 ]
  %275 = getelementptr inbounds i8, ptr %274, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !14
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %277, -65
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 31)
  %280 = icmp ult i32 %279, 8
  br i1 %280, label %284, label %281

281:                                              ; preds = %284, %273
  %282 = icmp eq i8 %276, 85
  %283 = zext i1 %282 to i32
  br label %289

284:                                              ; preds = %273
  %285 = trunc i32 %279 to i8
  %286 = lshr i8 -107, %285
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %281, label %289

289:                                              ; preds = %284, %281
  %290 = phi i32 [ %283, %281 ], [ 1, %284 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %373, label %273, !llvm.loop !23

292:                                              ; preds = %250, %313
  %293 = phi ptr [ %316, %313 ], [ %242, %250 ]
  %294 = load i8, ptr %293, align 1, !tbaa !14
  %295 = sext i8 %294 to i64
  %296 = getelementptr inbounds i16, ptr %239, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !9
  %298 = and i16 %297, 256
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %292
  %301 = sext i8 %294 to i32
  %302 = add nsw i32 %301, -65
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 31)
  %304 = icmp ult i32 %303, 8
  br i1 %304, label %308, label %305

305:                                              ; preds = %308, %300
  %306 = icmp ne i8 %294, 85
  %307 = zext i1 %306 to i32
  br label %313

308:                                              ; preds = %300
  %309 = trunc i32 %303 to i8
  %310 = lshr i8 -107, %309
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %305, label %313

313:                                              ; preds = %308, %305, %292
  %314 = phi i32 [ 0, %292 ], [ %307, %305 ], [ 0, %308 ]
  %315 = icmp eq i32 %314, 0
  %316 = getelementptr inbounds i8, ptr %293, i64 1
  br i1 %315, label %373, label %292, !llvm.loop !24

317:                                              ; preds = %250
  %318 = load i8, ptr %242, align 1, !tbaa !14
  %319 = sext i8 %318 to i64
  %320 = getelementptr inbounds i16, ptr %239, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !9
  %322 = and i16 %321, 256
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %317
  %325 = sext i8 %318 to i32
  %326 = add nsw i32 %325, -65
  %327 = tail call i32 @llvm.fshl.i32(i32 %326, i32 %326, i32 31)
  %328 = icmp ult i32 %327, 8
  br i1 %328, label %332, label %329

329:                                              ; preds = %332, %324
  %330 = icmp ne i8 %318, 85
  %331 = zext i1 %330 to i32
  br label %337

332:                                              ; preds = %324
  %333 = trunc i32 %327 to i8
  %334 = lshr i8 -107, %333
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %329, label %337

337:                                              ; preds = %332, %329, %317
  %338 = phi i32 [ 0, %317 ], [ %331, %329 ], [ 0, %332 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %94, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

342:                                              ; preds = %250
  %343 = load i8, ptr %242, align 1, !tbaa !14
  switch i8 %343, label %94 [
    i8 66, label %344
    i8 68, label %344
    i8 86, label %344
    i8 71, label %344
    i8 74, label %344
    i8 76, label %344
    i8 77, label %344
    i8 78, label %344
    i8 82, label %344
    i8 87, label %344
    i8 90, label %344
  ]

344:                                              ; preds = %342, %342, %342, %342, %342, %342, %342, %342, %342, %342, %342
  %345 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

346:                                              ; preds = %250
  %347 = load i8, ptr %242, align 1, !tbaa !14
  switch i8 %347, label %94 [
    i8 69, label %348
    i8 73, label %348
    i8 89, label %348
  ]

348:                                              ; preds = %346, %346, %346
  %349 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

350:                                              ; preds = %250
  %351 = load i8, ptr %242, align 1, !tbaa !14
  switch i8 %351, label %94 [
    i8 69, label %352
    i8 73, label %363
  ]

352:                                              ; preds = %350
  %353 = getelementptr inbounds i8, ptr %242, i64 1
  %354 = load i8, ptr %353, align 1, !tbaa !14
  switch i8 %354, label %373 [
    i8 76, label %355
    i8 82, label %361
    i8 83, label %361
    i8 68, label %361
  ]

355:                                              ; preds = %352
  %356 = getelementptr inbounds i8, ptr %242, i64 2
  %357 = load i8, ptr %356, align 1, !tbaa !14
  %358 = icmp eq i8 %357, 89
  %359 = getelementptr inbounds i8, ptr %242, i64 3
  %360 = select i1 %358, ptr %359, ptr %353
  br label %373

361:                                              ; preds = %352, %352, %352
  %362 = getelementptr inbounds i8, ptr %242, i64 2
  br label %373

363:                                              ; preds = %350
  %364 = getelementptr inbounds i8, ptr %242, i64 1
  %365 = load i8, ptr %364, align 1, !tbaa !14
  %366 = icmp eq i8 %365, 78
  br i1 %366, label %367, label %94

367:                                              ; preds = %363
  %368 = getelementptr inbounds i8, ptr %242, i64 2
  %369 = load i8, ptr %368, align 1, !tbaa !14
  %370 = icmp eq i8 %369, 71
  br i1 %370, label %371, label %94

371:                                              ; preds = %367
  %372 = getelementptr inbounds i8, ptr %242, i64 3
  br label %373

373:                                              ; preds = %313, %289, %371, %361, %355, %352, %348, %344, %340, %254
  %374 = phi ptr [ %255, %254 ], [ %362, %361 ], [ %372, %371 ], [ %349, %348 ], [ %345, %344 ], [ %341, %340 ], [ %353, %352 ], [ %360, %355 ], [ %275, %289 ], [ %293, %313 ]
  %375 = getelementptr inbounds i8, ptr %243, i64 1
  %376 = load i8, ptr %375, align 1, !tbaa !14
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %240, !llvm.loop !25

378:                                              ; preds = %233, %373
  %379 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 3
  %380 = load ptr, ptr %379, align 8, !tbaa !5
  %381 = load i8, ptr %380, align 1, !tbaa !14
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %378, %383
  %384 = phi i8 [ %389, %383 ], [ %381, %378 ]
  %385 = phi ptr [ %386, %383 ], [ %380, %378 ]
  %386 = getelementptr inbounds i8, ptr %385, i64 1
  %387 = sext i8 %384 to i32
  %388 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %387) #14
  %389 = load i8, ptr %386, align 1, !tbaa !14
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %383, !llvm.loop !26

391:                                              ; preds = %383, %378, %71
  %392 = phi i32 [ %76, %71 ], [ %101, %378 ], [ %101, %383 ]
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, ptr %8, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !14
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %42, !llvm.loop !27

397:                                              ; preds = %391
  tail call void @free(ptr noundef %8) #14
  %398 = load i32, ptr %4, align 8, !tbaa !11
  %399 = sub i32 %398, %5
  ret i32 %399
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @phone_append(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"", !6, i64 0, !13, i64 8, !13, i64 12, !10, i64 16, !10, i64 18}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}

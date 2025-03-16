; ModuleID = 'src/gsm_decode.c'
source_filename = "src/gsm_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsm_decode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i16], align 16
  %5 = alloca [4 x i16], align 2
  %6 = alloca [4 x i16], align 2
  %7 = alloca [4 x i16], align 2
  %8 = alloca [4 x i16], align 2
  %9 = alloca [52 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #3
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = and i8 %10, -16
  %12 = icmp eq i8 %11, -48
  br i1 %12, label %13, label %426

13:                                               ; preds = %3
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = zext i8 %10 to i16
  %16 = shl nuw nsw i16 %15, 2
  %17 = and i16 %16, 60
  store i16 %17, ptr %4, align 16, !tbaa !8
  %18 = load i8, ptr %14, align 1, !tbaa !5
  %19 = lshr i8 %18, 6
  %20 = zext nneg i8 %19 to i16
  %21 = or disjoint i16 %17, %20
  store i16 %21, ptr %4, align 16, !tbaa !8
  %22 = getelementptr inbounds i8, ptr %1, i64 2
  %23 = and i8 %18, 63
  %24 = zext nneg i8 %23 to i16
  %25 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 1
  store i16 %24, ptr %25, align 2, !tbaa !8
  %26 = load i8, ptr %22, align 1, !tbaa !5
  %27 = lshr i8 %26, 3
  %28 = zext nneg i8 %27 to i16
  %29 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 2
  store i16 %28, ptr %29, align 4, !tbaa !8
  %30 = getelementptr inbounds i8, ptr %1, i64 3
  %31 = shl i8 %26, 2
  %32 = and i8 %31, 28
  %33 = zext nneg i8 %32 to i16
  %34 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !8
  %35 = load i8, ptr %30, align 1, !tbaa !5
  %36 = lshr i8 %35, 6
  %37 = or disjoint i8 %36, %32
  %38 = zext nneg i8 %37 to i16
  store i16 %38, ptr %34, align 2, !tbaa !8
  %39 = lshr i8 %35, 2
  %40 = and i8 %39, 15
  %41 = zext nneg i8 %40 to i16
  %42 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 4
  store i16 %41, ptr %42, align 8, !tbaa !8
  %43 = getelementptr inbounds i8, ptr %1, i64 4
  %44 = shl i8 %35, 2
  %45 = and i8 %44, 12
  %46 = zext nneg i8 %45 to i16
  %47 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 5
  store i16 %46, ptr %47, align 2, !tbaa !8
  %48 = load i8, ptr %43, align 1, !tbaa !5
  %49 = lshr i8 %48, 6
  %50 = or disjoint i8 %49, %45
  %51 = zext nneg i8 %50 to i16
  store i16 %51, ptr %47, align 2, !tbaa !8
  %52 = lshr i8 %48, 3
  %53 = and i8 %52, 7
  %54 = zext nneg i8 %53 to i16
  %55 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 6
  store i16 %54, ptr %55, align 4, !tbaa !8
  %56 = getelementptr inbounds i8, ptr %1, i64 5
  %57 = and i8 %48, 7
  %58 = zext nneg i8 %57 to i16
  %59 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 7
  store i16 %58, ptr %59, align 2, !tbaa !8
  %60 = load i8, ptr %56, align 1, !tbaa !5
  %61 = lshr i8 %60, 1
  %62 = zext nneg i8 %61 to i16
  store i16 %62, ptr %5, align 2, !tbaa !8
  %63 = getelementptr inbounds i8, ptr %1, i64 6
  %64 = shl i8 %60, 1
  %65 = and i8 %64, 2
  %66 = zext nneg i8 %65 to i16
  store i16 %66, ptr %7, align 2, !tbaa !8
  %67 = load i8, ptr %63, align 1, !tbaa !5
  %68 = lshr i8 %67, 7
  %69 = or disjoint i8 %68, %65
  %70 = zext nneg i8 %69 to i16
  store i16 %70, ptr %7, align 2, !tbaa !8
  %71 = lshr i8 %67, 5
  %72 = and i8 %71, 3
  %73 = zext nneg i8 %72 to i16
  store i16 %73, ptr %6, align 2, !tbaa !8
  %74 = getelementptr inbounds i8, ptr %1, i64 7
  %75 = shl i8 %67, 1
  %76 = and i8 %75, 62
  %77 = zext nneg i8 %76 to i16
  store i16 %77, ptr %8, align 2, !tbaa !8
  %78 = load i8, ptr %74, align 1, !tbaa !5
  %79 = lshr i8 %78, 7
  %80 = or disjoint i8 %79, %76
  %81 = zext nneg i8 %80 to i16
  store i16 %81, ptr %8, align 2, !tbaa !8
  %82 = lshr i8 %78, 4
  %83 = and i8 %82, 7
  %84 = zext nneg i8 %83 to i16
  store i16 %84, ptr %9, align 16, !tbaa !8
  %85 = lshr i8 %78, 1
  %86 = and i8 %85, 7
  %87 = zext nneg i8 %86 to i16
  %88 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 1
  store i16 %87, ptr %88, align 2, !tbaa !8
  %89 = getelementptr inbounds i8, ptr %1, i64 8
  %90 = shl i8 %78, 2
  %91 = and i8 %90, 4
  %92 = zext nneg i8 %91 to i16
  %93 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 2
  store i16 %92, ptr %93, align 4, !tbaa !8
  %94 = load i8, ptr %89, align 1, !tbaa !5
  %95 = lshr i8 %94, 6
  %96 = or disjoint i8 %95, %91
  %97 = zext nneg i8 %96 to i16
  store i16 %97, ptr %93, align 4, !tbaa !8
  %98 = lshr i8 %94, 3
  %99 = and i8 %98, 7
  %100 = zext nneg i8 %99 to i16
  %101 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 3
  store i16 %100, ptr %101, align 2, !tbaa !8
  %102 = getelementptr inbounds i8, ptr %1, i64 9
  %103 = and i8 %94, 7
  %104 = zext nneg i8 %103 to i16
  %105 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 4
  store i16 %104, ptr %105, align 8, !tbaa !8
  %106 = load i8, ptr %102, align 1, !tbaa !5
  %107 = lshr i8 %106, 5
  %108 = zext nneg i8 %107 to i16
  %109 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 5
  store i16 %108, ptr %109, align 2, !tbaa !8
  %110 = lshr i8 %106, 2
  %111 = and i8 %110, 7
  %112 = zext nneg i8 %111 to i16
  %113 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 6
  store i16 %112, ptr %113, align 4, !tbaa !8
  %114 = getelementptr inbounds i8, ptr %1, i64 10
  %115 = shl i8 %106, 1
  %116 = and i8 %115, 6
  %117 = zext nneg i8 %116 to i16
  %118 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 7
  store i16 %117, ptr %118, align 2, !tbaa !8
  %119 = load i8, ptr %114, align 1, !tbaa !5
  %120 = lshr i8 %119, 7
  %121 = or disjoint i8 %120, %116
  %122 = zext nneg i8 %121 to i16
  store i16 %122, ptr %118, align 2, !tbaa !8
  %123 = lshr i8 %119, 4
  %124 = and i8 %123, 7
  %125 = zext nneg i8 %124 to i16
  %126 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 8
  store i16 %125, ptr %126, align 16, !tbaa !8
  %127 = lshr i8 %119, 1
  %128 = and i8 %127, 7
  %129 = zext nneg i8 %128 to i16
  %130 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 9
  store i16 %129, ptr %130, align 2, !tbaa !8
  %131 = getelementptr inbounds i8, ptr %1, i64 11
  %132 = shl i8 %119, 2
  %133 = and i8 %132, 4
  %134 = zext nneg i8 %133 to i16
  %135 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 10
  store i16 %134, ptr %135, align 4, !tbaa !8
  %136 = load i8, ptr %131, align 1, !tbaa !5
  %137 = lshr i8 %136, 6
  %138 = or disjoint i8 %137, %133
  %139 = zext nneg i8 %138 to i16
  store i16 %139, ptr %135, align 4, !tbaa !8
  %140 = lshr i8 %136, 3
  %141 = and i8 %140, 7
  %142 = zext nneg i8 %141 to i16
  %143 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 11
  store i16 %142, ptr %143, align 2, !tbaa !8
  %144 = getelementptr inbounds i8, ptr %1, i64 12
  %145 = and i8 %136, 7
  %146 = zext nneg i8 %145 to i16
  %147 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 12
  store i16 %146, ptr %147, align 8, !tbaa !8
  %148 = load i8, ptr %144, align 1, !tbaa !5
  %149 = lshr i8 %148, 1
  %150 = zext nneg i8 %149 to i16
  %151 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 1
  store i16 %150, ptr %151, align 2, !tbaa !8
  %152 = getelementptr inbounds i8, ptr %1, i64 13
  %153 = shl i8 %148, 1
  %154 = and i8 %153, 2
  %155 = zext nneg i8 %154 to i16
  %156 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 1
  store i16 %155, ptr %156, align 2, !tbaa !8
  %157 = load i8, ptr %152, align 1, !tbaa !5
  %158 = lshr i8 %157, 7
  %159 = or disjoint i8 %158, %154
  %160 = zext nneg i8 %159 to i16
  store i16 %160, ptr %156, align 2, !tbaa !8
  %161 = lshr i8 %157, 5
  %162 = and i8 %161, 3
  %163 = zext nneg i8 %162 to i16
  %164 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 1
  store i16 %163, ptr %164, align 2, !tbaa !8
  %165 = getelementptr inbounds i8, ptr %1, i64 14
  %166 = shl i8 %157, 1
  %167 = and i8 %166, 62
  %168 = zext nneg i8 %167 to i16
  %169 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 1
  store i16 %168, ptr %169, align 2, !tbaa !8
  %170 = load i8, ptr %165, align 1, !tbaa !5
  %171 = lshr i8 %170, 7
  %172 = or disjoint i8 %171, %167
  %173 = zext nneg i8 %172 to i16
  store i16 %173, ptr %169, align 2, !tbaa !8
  %174 = lshr i8 %170, 4
  %175 = and i8 %174, 7
  %176 = zext nneg i8 %175 to i16
  %177 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 13
  store i16 %176, ptr %177, align 2, !tbaa !8
  %178 = lshr i8 %170, 1
  %179 = and i8 %178, 7
  %180 = zext nneg i8 %179 to i16
  %181 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 14
  store i16 %180, ptr %181, align 4, !tbaa !8
  %182 = getelementptr inbounds i8, ptr %1, i64 15
  %183 = shl i8 %170, 2
  %184 = and i8 %183, 4
  %185 = zext nneg i8 %184 to i16
  %186 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 15
  store i16 %185, ptr %186, align 2, !tbaa !8
  %187 = load i8, ptr %182, align 1, !tbaa !5
  %188 = lshr i8 %187, 6
  %189 = or disjoint i8 %188, %184
  %190 = zext nneg i8 %189 to i16
  store i16 %190, ptr %186, align 2, !tbaa !8
  %191 = lshr i8 %187, 3
  %192 = and i8 %191, 7
  %193 = zext nneg i8 %192 to i16
  %194 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 16
  store i16 %193, ptr %194, align 16, !tbaa !8
  %195 = getelementptr inbounds i8, ptr %1, i64 16
  %196 = and i8 %187, 7
  %197 = zext nneg i8 %196 to i16
  %198 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 17
  store i16 %197, ptr %198, align 2, !tbaa !8
  %199 = load i8, ptr %195, align 1, !tbaa !5
  %200 = lshr i8 %199, 5
  %201 = zext nneg i8 %200 to i16
  %202 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 18
  store i16 %201, ptr %202, align 4, !tbaa !8
  %203 = lshr i8 %199, 2
  %204 = and i8 %203, 7
  %205 = zext nneg i8 %204 to i16
  %206 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 19
  store i16 %205, ptr %206, align 2, !tbaa !8
  %207 = getelementptr inbounds i8, ptr %1, i64 17
  %208 = shl i8 %199, 1
  %209 = and i8 %208, 6
  %210 = zext nneg i8 %209 to i16
  %211 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 20
  store i16 %210, ptr %211, align 8, !tbaa !8
  %212 = load i8, ptr %207, align 1, !tbaa !5
  %213 = lshr i8 %212, 7
  %214 = or disjoint i8 %213, %209
  %215 = zext nneg i8 %214 to i16
  store i16 %215, ptr %211, align 8, !tbaa !8
  %216 = lshr i8 %212, 4
  %217 = and i8 %216, 7
  %218 = zext nneg i8 %217 to i16
  %219 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 21
  store i16 %218, ptr %219, align 2, !tbaa !8
  %220 = lshr i8 %212, 1
  %221 = and i8 %220, 7
  %222 = zext nneg i8 %221 to i16
  %223 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 22
  store i16 %222, ptr %223, align 4, !tbaa !8
  %224 = getelementptr inbounds i8, ptr %1, i64 18
  %225 = shl i8 %212, 2
  %226 = and i8 %225, 4
  %227 = zext nneg i8 %226 to i16
  %228 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 23
  store i16 %227, ptr %228, align 2, !tbaa !8
  %229 = load i8, ptr %224, align 1, !tbaa !5
  %230 = lshr i8 %229, 6
  %231 = or disjoint i8 %230, %226
  %232 = zext nneg i8 %231 to i16
  store i16 %232, ptr %228, align 2, !tbaa !8
  %233 = lshr i8 %229, 3
  %234 = and i8 %233, 7
  %235 = zext nneg i8 %234 to i16
  %236 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 24
  store i16 %235, ptr %236, align 16, !tbaa !8
  %237 = getelementptr inbounds i8, ptr %1, i64 19
  %238 = and i8 %229, 7
  %239 = zext nneg i8 %238 to i16
  %240 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 25
  store i16 %239, ptr %240, align 2, !tbaa !8
  %241 = load i8, ptr %237, align 1, !tbaa !5
  %242 = lshr i8 %241, 1
  %243 = zext nneg i8 %242 to i16
  %244 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 2
  store i16 %243, ptr %244, align 2, !tbaa !8
  %245 = getelementptr inbounds i8, ptr %1, i64 20
  %246 = shl i8 %241, 1
  %247 = and i8 %246, 2
  %248 = zext nneg i8 %247 to i16
  %249 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  store i16 %248, ptr %249, align 2, !tbaa !8
  %250 = load i8, ptr %245, align 1, !tbaa !5
  %251 = lshr i8 %250, 7
  %252 = or disjoint i8 %251, %247
  %253 = zext nneg i8 %252 to i16
  store i16 %253, ptr %249, align 2, !tbaa !8
  %254 = lshr i8 %250, 5
  %255 = and i8 %254, 3
  %256 = zext nneg i8 %255 to i16
  %257 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 2
  store i16 %256, ptr %257, align 2, !tbaa !8
  %258 = getelementptr inbounds i8, ptr %1, i64 21
  %259 = shl i8 %250, 1
  %260 = and i8 %259, 62
  %261 = zext nneg i8 %260 to i16
  %262 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 2
  store i16 %261, ptr %262, align 2, !tbaa !8
  %263 = load i8, ptr %258, align 1, !tbaa !5
  %264 = lshr i8 %263, 7
  %265 = or disjoint i8 %264, %260
  %266 = zext nneg i8 %265 to i16
  store i16 %266, ptr %262, align 2, !tbaa !8
  %267 = lshr i8 %263, 4
  %268 = and i8 %267, 7
  %269 = zext nneg i8 %268 to i16
  %270 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 26
  store i16 %269, ptr %270, align 4, !tbaa !8
  %271 = lshr i8 %263, 1
  %272 = and i8 %271, 7
  %273 = zext nneg i8 %272 to i16
  %274 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 27
  store i16 %273, ptr %274, align 2, !tbaa !8
  %275 = getelementptr inbounds i8, ptr %1, i64 22
  %276 = shl i8 %263, 2
  %277 = and i8 %276, 4
  %278 = zext nneg i8 %277 to i16
  %279 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 28
  store i16 %278, ptr %279, align 8, !tbaa !8
  %280 = load i8, ptr %275, align 1, !tbaa !5
  %281 = lshr i8 %280, 6
  %282 = or disjoint i8 %281, %277
  %283 = zext nneg i8 %282 to i16
  store i16 %283, ptr %279, align 8, !tbaa !8
  %284 = lshr i8 %280, 3
  %285 = and i8 %284, 7
  %286 = zext nneg i8 %285 to i16
  %287 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 29
  store i16 %286, ptr %287, align 2, !tbaa !8
  %288 = getelementptr inbounds i8, ptr %1, i64 23
  %289 = and i8 %280, 7
  %290 = zext nneg i8 %289 to i16
  %291 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 30
  store i16 %290, ptr %291, align 4, !tbaa !8
  %292 = load i8, ptr %288, align 1, !tbaa !5
  %293 = lshr i8 %292, 5
  %294 = zext nneg i8 %293 to i16
  %295 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 31
  store i16 %294, ptr %295, align 2, !tbaa !8
  %296 = lshr i8 %292, 2
  %297 = and i8 %296, 7
  %298 = zext nneg i8 %297 to i16
  %299 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 32
  store i16 %298, ptr %299, align 16, !tbaa !8
  %300 = getelementptr inbounds i8, ptr %1, i64 24
  %301 = shl i8 %292, 1
  %302 = and i8 %301, 6
  %303 = zext nneg i8 %302 to i16
  %304 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !8
  %305 = load i8, ptr %300, align 1, !tbaa !5
  %306 = lshr i8 %305, 7
  %307 = or disjoint i8 %306, %302
  %308 = zext nneg i8 %307 to i16
  store i16 %308, ptr %304, align 2, !tbaa !8
  %309 = lshr i8 %305, 4
  %310 = and i8 %309, 7
  %311 = zext nneg i8 %310 to i16
  %312 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 34
  store i16 %311, ptr %312, align 4, !tbaa !8
  %313 = lshr i8 %305, 1
  %314 = and i8 %313, 7
  %315 = zext nneg i8 %314 to i16
  %316 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 35
  store i16 %315, ptr %316, align 2, !tbaa !8
  %317 = getelementptr inbounds i8, ptr %1, i64 25
  %318 = shl i8 %305, 2
  %319 = and i8 %318, 4
  %320 = zext nneg i8 %319 to i16
  %321 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 36
  store i16 %320, ptr %321, align 8, !tbaa !8
  %322 = load i8, ptr %317, align 1, !tbaa !5
  %323 = lshr i8 %322, 6
  %324 = or disjoint i8 %323, %319
  %325 = zext nneg i8 %324 to i16
  store i16 %325, ptr %321, align 8, !tbaa !8
  %326 = lshr i8 %322, 3
  %327 = and i8 %326, 7
  %328 = zext nneg i8 %327 to i16
  %329 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 37
  store i16 %328, ptr %329, align 2, !tbaa !8
  %330 = getelementptr inbounds i8, ptr %1, i64 26
  %331 = and i8 %322, 7
  %332 = zext nneg i8 %331 to i16
  %333 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 38
  store i16 %332, ptr %333, align 4, !tbaa !8
  %334 = load i8, ptr %330, align 1, !tbaa !5
  %335 = lshr i8 %334, 1
  %336 = zext nneg i8 %335 to i16
  %337 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 3
  store i16 %336, ptr %337, align 2, !tbaa !8
  %338 = getelementptr inbounds i8, ptr %1, i64 27
  %339 = shl i8 %334, 1
  %340 = and i8 %339, 2
  %341 = zext nneg i8 %340 to i16
  %342 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 3
  store i16 %341, ptr %342, align 2, !tbaa !8
  %343 = load i8, ptr %338, align 1, !tbaa !5
  %344 = lshr i8 %343, 7
  %345 = or disjoint i8 %344, %340
  %346 = zext nneg i8 %345 to i16
  store i16 %346, ptr %342, align 2, !tbaa !8
  %347 = lshr i8 %343, 5
  %348 = and i8 %347, 3
  %349 = zext nneg i8 %348 to i16
  %350 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 3
  store i16 %349, ptr %350, align 2, !tbaa !8
  %351 = getelementptr inbounds i8, ptr %1, i64 28
  %352 = shl i8 %343, 1
  %353 = and i8 %352, 62
  %354 = zext nneg i8 %353 to i16
  %355 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 3
  store i16 %354, ptr %355, align 2, !tbaa !8
  %356 = load i8, ptr %351, align 1, !tbaa !5
  %357 = lshr i8 %356, 7
  %358 = or disjoint i8 %357, %353
  %359 = zext nneg i8 %358 to i16
  store i16 %359, ptr %355, align 2, !tbaa !8
  %360 = lshr i8 %356, 4
  %361 = and i8 %360, 7
  %362 = zext nneg i8 %361 to i16
  %363 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 39
  store i16 %362, ptr %363, align 2, !tbaa !8
  %364 = lshr i8 %356, 1
  %365 = and i8 %364, 7
  %366 = zext nneg i8 %365 to i16
  %367 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 40
  store i16 %366, ptr %367, align 16, !tbaa !8
  %368 = getelementptr inbounds i8, ptr %1, i64 29
  %369 = shl i8 %356, 2
  %370 = and i8 %369, 4
  %371 = zext nneg i8 %370 to i16
  %372 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 41
  store i16 %371, ptr %372, align 2, !tbaa !8
  %373 = load i8, ptr %368, align 1, !tbaa !5
  %374 = lshr i8 %373, 6
  %375 = or disjoint i8 %374, %370
  %376 = zext nneg i8 %375 to i16
  store i16 %376, ptr %372, align 2, !tbaa !8
  %377 = lshr i8 %373, 3
  %378 = and i8 %377, 7
  %379 = zext nneg i8 %378 to i16
  %380 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 42
  store i16 %379, ptr %380, align 4, !tbaa !8
  %381 = getelementptr inbounds i8, ptr %1, i64 30
  %382 = and i8 %373, 7
  %383 = zext nneg i8 %382 to i16
  %384 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 43
  store i16 %383, ptr %384, align 2, !tbaa !8
  %385 = load i8, ptr %381, align 1, !tbaa !5
  %386 = lshr i8 %385, 5
  %387 = zext nneg i8 %386 to i16
  %388 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 44
  store i16 %387, ptr %388, align 8, !tbaa !8
  %389 = lshr i8 %385, 2
  %390 = and i8 %389, 7
  %391 = zext nneg i8 %390 to i16
  %392 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 45
  store i16 %391, ptr %392, align 2, !tbaa !8
  %393 = getelementptr inbounds i8, ptr %1, i64 31
  %394 = shl i8 %385, 1
  %395 = and i8 %394, 6
  %396 = zext nneg i8 %395 to i16
  %397 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 46
  store i16 %396, ptr %397, align 4, !tbaa !8
  %398 = load i8, ptr %393, align 1, !tbaa !5
  %399 = lshr i8 %398, 7
  %400 = or disjoint i8 %399, %395
  %401 = zext nneg i8 %400 to i16
  store i16 %401, ptr %397, align 4, !tbaa !8
  %402 = lshr i8 %398, 4
  %403 = and i8 %402, 7
  %404 = zext nneg i8 %403 to i16
  %405 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 47
  store i16 %404, ptr %405, align 2, !tbaa !8
  %406 = lshr i8 %398, 1
  %407 = and i8 %406, 7
  %408 = zext nneg i8 %407 to i16
  %409 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 48
  store i16 %408, ptr %409, align 16, !tbaa !8
  %410 = getelementptr inbounds i8, ptr %1, i64 32
  %411 = shl i8 %398, 2
  %412 = and i8 %411, 4
  %413 = zext nneg i8 %412 to i16
  %414 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 49
  store i16 %413, ptr %414, align 2, !tbaa !8
  %415 = load i8, ptr %410, align 1, !tbaa !5
  %416 = lshr i8 %415, 6
  %417 = or disjoint i8 %416, %412
  %418 = zext nneg i8 %417 to i16
  store i16 %418, ptr %414, align 2, !tbaa !8
  %419 = lshr i8 %415, 3
  %420 = and i8 %419, 7
  %421 = zext nneg i8 %420 to i16
  %422 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 50
  store i16 %421, ptr %422, align 4, !tbaa !8
  %423 = and i8 %415, 7
  %424 = zext nneg i8 %423 to i16
  %425 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 51
  store i16 %424, ptr %425, align 2, !tbaa !8
  call void @Gsm_Decoder(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2) #3
  br label %426

426:                                              ; preds = %3, %13
  %427 = phi i32 [ 0, %13 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #3
  ret i32 %427
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Gsm_Decoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"short", !6, i64 0}

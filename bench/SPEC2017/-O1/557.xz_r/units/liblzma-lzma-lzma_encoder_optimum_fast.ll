; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_fast.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_lzma_optimum_fast(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  %7 = load i32, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %13 = call i32 @lzma_mf_find(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %12) #4
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !49
  store i32 %18, ptr %5, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -1
  %27 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = sub i32 %28, %23
  %30 = add i32 %29, 1
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = call i32 @llvm.umin.i32(i32 %30, i32 273)
  %34 = icmp eq i32 %30, 2
  %35 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %36 = call i32 @llvm.umax.i32(i32 %33, i32 3)
  %37 = zext nneg i32 %36 to i64
  br label %39

38:                                               ; preds = %19
  store i32 -1, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  br label %258

39:                                               ; preds = %32, %90
  %40 = phi i64 [ 0, %32 ], [ %91, %90 ]
  %41 = phi i1 [ false, %32 ], [ %92, %90 ]
  %42 = phi i32 [ 0, %32 ], [ %88, %90 ]
  %43 = phi i32 [ 0, %32 ], [ %87, %90 ]
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %40
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %26, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 -1
  %50 = load i8, ptr %26, align 1, !tbaa !54
  %51 = load i8, ptr %49, align 1, !tbaa !54
  %52 = icmp eq i8 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %39
  %54 = load i8, ptr %25, align 1, !tbaa !54
  %55 = load i8, ptr %48, align 1, !tbaa !54
  %56 = icmp eq i8 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  br i1 %34, label %70, label %58

58:                                               ; preds = %57, %65
  %59 = phi i64 [ %66, %65 ], [ 2, %57 ]
  %60 = getelementptr inbounds i8, ptr %26, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !54
  %62 = getelementptr inbounds i8, ptr %49, i64 %59
  %63 = load i8, ptr %62, align 1, !tbaa !54
  %64 = icmp eq i8 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp eq i64 %66, %37
  br i1 %67, label %70, label %58, !llvm.loop !55

68:                                               ; preds = %58
  %69 = trunc i64 %59 to i32
  br label %70

70:                                               ; preds = %68, %65, %57
  %71 = phi i32 [ 2, %57 ], [ %69, %68 ], [ %36, %65 ]
  %72 = icmp ult i32 %71, %7
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = trunc i64 %40 to i32
  store i32 %74, ptr %2, align 4, !tbaa !50
  store i32 %71, ptr %3, align 4, !tbaa !50
  %75 = add i32 %71, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %35, align 8, !tbaa !58
  call void %78(ptr noundef nonnull %1, i32 noundef %75) #4
  %79 = load i32, ptr %8, align 4, !tbaa !41
  %80 = add i32 %79, %75
  store i32 %80, ptr %8, align 4, !tbaa !41
  br label %86

81:                                               ; preds = %70
  %82 = icmp ugt i32 %71, %42
  %83 = trunc i64 %40 to i32
  %84 = select i1 %82, i32 %83, i32 %43
  %85 = call i32 @llvm.umax.i32(i32 %71, i32 %42)
  br label %86

86:                                               ; preds = %77, %73, %81, %39, %53
  %87 = phi i32 [ %43, %53 ], [ %43, %39 ], [ %84, %81 ], [ %43, %73 ], [ %43, %77 ]
  %88 = phi i32 [ %42, %53 ], [ %42, %39 ], [ %85, %81 ], [ %42, %73 ], [ %42, %77 ]
  %89 = phi i32 [ 4, %53 ], [ 4, %39 ], [ 0, %81 ], [ 1, %73 ], [ 1, %77 ]
  switch i32 %89, label %94 [
    i32 0, label %90
    i32 4, label %90
  ]

90:                                               ; preds = %86, %86
  %91 = add nuw nsw i64 %40, 1
  %92 = icmp ugt i64 %40, 2
  %93 = icmp eq i64 %91, 4
  br i1 %93, label %94, label %39, !llvm.loop !59

94:                                               ; preds = %90, %86
  %95 = phi i1 [ %92, %90 ], [ %41, %86 ]
  br i1 %95, label %96, label %258

96:                                               ; preds = %94
  %97 = icmp ult i32 %20, %7
  br i1 %97, label %112, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %5, align 4, !tbaa !50
  %100 = add i32 %99, -1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %101, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !60
  %104 = add i32 %103, 4
  store i32 %104, ptr %2, align 4, !tbaa !50
  store i32 %20, ptr %3, align 4, !tbaa !50
  %105 = add i32 %20, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %258, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %109 = load ptr, ptr %108, align 8, !tbaa !58
  call void %109(ptr noundef nonnull %1, i32 noundef %105) #4
  %110 = load i32, ptr %8, align 4, !tbaa !41
  %111 = add i32 %110, %105
  store i32 %111, ptr %8, align 4, !tbaa !41
  br label %258

112:                                              ; preds = %96
  %113 = icmp ugt i32 %20, 1
  br i1 %113, label %114, label %150

114:                                              ; preds = %112
  %115 = load i32, ptr %5, align 4, !tbaa !50
  %116 = add i32 %115, -1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %117, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !60
  %120 = icmp ugt i32 %115, 1
  br i1 %120, label %121, label %143

121:                                              ; preds = %114
  %122 = zext i32 %115 to i64
  br label %123

123:                                              ; preds = %121, %137
  %124 = phi i64 [ %122, %121 ], [ %138, %137 ]
  %125 = phi i32 [ %119, %121 ], [ %141, %137 ]
  %126 = phi i32 [ %20, %121 ], [ %129, %137 ]
  %127 = add nsw i64 %124, -2
  %128 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !62
  %130 = add i32 %129, 1
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = lshr i32 %125, 7
  %134 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %127, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !60
  %136 = icmp ugt i32 %133, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = add nsw i64 %124, -1
  %139 = trunc i64 %138 to i32
  store i32 %139, ptr %5, align 4, !tbaa !50
  %140 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %127, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !60
  %142 = icmp ugt i32 %139, 1
  br i1 %142, label %123, label %143, !llvm.loop !63

143:                                              ; preds = %123, %132, %137, %114
  %144 = phi i32 [ %20, %114 ], [ %126, %123 ], [ %126, %132 ], [ %129, %137 ]
  %145 = phi i32 [ %119, %114 ], [ %125, %123 ], [ %125, %132 ], [ %141, %137 ]
  %146 = icmp eq i32 %144, 2
  %147 = icmp ugt i32 %145, 127
  %148 = select i1 %146, i1 %147, i1 false
  %149 = select i1 %148, i32 1, i32 %144
  br label %150

150:                                              ; preds = %143, %112
  %151 = phi i32 [ %145, %143 ], [ 0, %112 ]
  %152 = phi i32 [ %149, %143 ], [ %20, %112 ]
  %153 = icmp ugt i32 %88, 1
  br i1 %153, label %154, label %175

154:                                              ; preds = %150
  %155 = add i32 %88, 1
  %156 = icmp ult i32 %155, %152
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = add i32 %88, 2
  %159 = icmp uge i32 %158, %152
  %160 = icmp ugt i32 %151, 512
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = add i32 %88, 3
  %164 = icmp uge i32 %163, %152
  %165 = icmp ugt i32 %151, 32768
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %175

167:                                              ; preds = %162, %157, %154
  store i32 %87, ptr %2, align 4, !tbaa !50
  store i32 %88, ptr %3, align 4, !tbaa !50
  %168 = add i32 %88, -1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %258, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %172 = load ptr, ptr %171, align 8, !tbaa !58
  call void %172(ptr noundef nonnull %1, i32 noundef %168) #4
  %173 = load i32, ptr %8, align 4, !tbaa !41
  %174 = add i32 %173, %168
  store i32 %174, ptr %8, align 4, !tbaa !41
  br label %258

175:                                              ; preds = %162, %150
  %176 = icmp ult i32 %152, 2
  %177 = icmp eq i32 %30, 2
  %178 = or i1 %177, %176
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 -1, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  br label %258

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %182 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %183 = call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %181, ptr noundef nonnull %182) #4
  %184 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i32 %183, ptr %184, align 8, !tbaa !42
  %185 = icmp ugt i32 %183, 1
  br i1 %185, label %186, label %212

186:                                              ; preds = %180
  %187 = load i32, ptr %181, align 4, !tbaa !49
  %188 = add i32 %187, -1
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %189, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !60
  %192 = icmp uge i32 %183, %152
  %193 = icmp ult i32 %191, %151
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %211, label %195

195:                                              ; preds = %186
  %196 = add i32 %152, 1
  %197 = icmp eq i32 %183, %196
  %198 = lshr i32 %191, 7
  %199 = icmp ule i32 %198, %151
  %200 = select i1 %197, i1 %199, i1 false
  %201 = icmp ugt i32 %183, %196
  %202 = or i1 %201, %200
  br i1 %202, label %211, label %203

203:                                              ; preds = %195
  %204 = add i32 %183, 1
  %205 = icmp uge i32 %204, %152
  %206 = icmp ugt i32 %152, 2
  %207 = and i1 %206, %205
  %208 = lshr i32 %151, 7
  %209 = icmp ugt i32 %208, %191
  %210 = select i1 %207, i1 %209, i1 false
  br i1 %210, label %211, label %212

211:                                              ; preds = %203, %195, %186
  store i32 -1, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  br label %258

212:                                              ; preds = %203, %180
  %213 = add i32 %152, -1
  %214 = load i8, ptr %25, align 1, !tbaa !54
  %215 = getelementptr inbounds i8, ptr %25, i64 1
  %216 = icmp ugt i32 %213, 2
  %217 = zext i32 %213 to i64
  br label %218

218:                                              ; preds = %212, %246
  %219 = phi i64 [ 0, %212 ], [ %247, %246 ]
  %220 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !50
  %222 = zext i32 %221 to i64
  %223 = sub nsw i64 0, %222
  %224 = getelementptr inbounds i8, ptr %25, i64 %223
  %225 = getelementptr inbounds i8, ptr %224, i64 -1
  %226 = load i8, ptr %225, align 1, !tbaa !54
  %227 = icmp eq i8 %214, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %218
  %229 = load i8, ptr %215, align 1, !tbaa !54
  %230 = load i8, ptr %224, align 1, !tbaa !54
  %231 = icmp eq i8 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  br i1 %216, label %236, label %243

233:                                              ; preds = %236
  %234 = add nuw nsw i64 %237, 1
  %235 = icmp eq i64 %234, %217
  br i1 %235, label %243, label %236, !llvm.loop !64

236:                                              ; preds = %232, %233
  %237 = phi i64 [ %234, %233 ], [ 2, %232 ]
  %238 = getelementptr inbounds i8, ptr %25, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !54
  %240 = getelementptr inbounds i8, ptr %225, i64 %237
  %241 = load i8, ptr %240, align 1, !tbaa !54
  %242 = icmp eq i8 %239, %241
  br i1 %242, label %233, label %244

243:                                              ; preds = %233, %232
  store i32 -1, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  br label %244

244:                                              ; preds = %236, %243, %218, %228
  %245 = phi i32 [ 12, %228 ], [ 12, %218 ], [ 1, %243 ], [ 0, %236 ]
  switch i32 %245, label %258 [
    i32 0, label %246
    i32 12, label %246
  ]

246:                                              ; preds = %244, %244
  %247 = add nuw nsw i64 %219, 1
  %248 = icmp eq i64 %247, 4
  br i1 %248, label %249, label %218, !llvm.loop !65

249:                                              ; preds = %246
  %250 = add i32 %151, 4
  store i32 %250, ptr %2, align 4, !tbaa !50
  store i32 %152, ptr %3, align 4, !tbaa !50
  %251 = add i32 %152, -2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %255 = load ptr, ptr %254, align 8, !tbaa !58
  call void %255(ptr noundef nonnull %1, i32 noundef %251) #4
  %256 = load i32, ptr %8, align 4, !tbaa !41
  %257 = add i32 %256, %251
  store i32 %257, ptr %8, align 4, !tbaa !41
  br label %258

258:                                              ; preds = %244, %253, %249, %170, %167, %107, %98, %94, %211, %179, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !40, i64 96}
!36 = !{!"lzma_mf_s", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !40, i64 28}
!42 = !{!43, !40, i64 2952}
!43 = !{!"lzma_coder_s", !44, i64 0, !40, i64 736, !38, i64 740, !38, i64 756, !40, i64 2948, !40, i64 2952, !46, i64 2956, !46, i64 2957, !46, i64 2958, !40, i64 2960, !40, i64 2964, !40, i64 2968, !38, i64 2972, !38, i64 27548, !38, i64 27932, !38, i64 27956, !38, i64 27980, !38, i64 28004, !38, i64 28028, !38, i64 28412, !38, i64 28924, !38, i64 29152, !47, i64 29184, !47, i64 47688, !38, i64 66192, !38, i64 67216, !40, i64 69264, !40, i64 69268, !38, i64 69272, !40, i64 69336, !40, i64 69340, !40, i64 69344, !38, i64 69348}
!44 = !{!"", !45, i64 0, !45, i64 8, !40, i64 16, !38, i64 20, !45, i64 24, !45, i64 32, !38, i64 40, !38, i64 272}
!45 = !{!"long", !38, i64 0}
!46 = !{!"_Bool", !38, i64 0}
!47 = !{!"", !48, i64 0, !48, i64 2, !38, i64 4, !38, i64 260, !38, i64 516, !38, i64 1028, !40, i64 18436, !38, i64 18440}
!48 = !{!"short", !38, i64 0}
!49 = !{!43, !40, i64 2948}
!50 = !{!40, !40, i64 0}
!51 = !{!36, !37, i64 0}
!52 = !{!36, !40, i64 24}
!53 = !{!36, !40, i64 36}
!54 = !{!38, !38, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!36, !37, i64 56}
!59 = distinct !{!59, !56, !57}
!60 = !{!61, !40, i64 4}
!61 = !{!"", !40, i64 0, !40, i64 4}
!62 = !{!61, !40, i64 0}
!63 = distinct !{!63, !56, !57}
!64 = distinct !{!64, !56, !57}
!65 = distinct !{!65, !56, !57}

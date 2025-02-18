; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_normal.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 !prof !37 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %21, label %14, !prof !49

14:                                               ; preds = %5
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = sub i32 %17, %12
  store i32 %18, ptr %3, align 4, !tbaa !52
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !53
  store i32 %20, ptr %2, align 4, !tbaa !52
  store i32 %17, ptr %11, align 8, !tbaa !48
  br label %1678

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %186, !prof !57

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = icmp ugt i32 %27, 127
  br i1 %28, label %29, label %149, !prof !59

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  br label %34

32:                                               ; preds = %86
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  br label %96

34:                                               ; preds = %29, %86
  %35 = phi i64 [ 0, %29 ], [ %87, %86 ]
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %35
  %37 = load i32, ptr %30, align 8, !tbaa !60
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !61

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %35
  br label %45

41:                                               ; preds = %67, %34
  %42 = load i32, ptr %31, align 8, !tbaa !60
  %43 = icmp ugt i32 %42, 14
  br i1 %43, label %73, label %44, !prof !62

44:                                               ; preds = %73, %41
  br label %89

45:                                               ; preds = %39, %67
  %46 = phi i64 [ 0, %39 ], [ %69, %67 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, 64
  br label %49

49:                                               ; preds = %49, %45
  %50 = phi i32 [ 0, %45 ], [ %65, %49 ]
  %51 = phi i32 [ %48, %45 ], [ %53, %49 ]
  %52 = and i32 %51, 1
  %53 = lshr i32 %51, 1
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %40, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !63
  %57 = zext i16 %56 to i64
  %58 = icmp eq i32 %52, 0
  %59 = select i1 %58, i64 0, i64 2032, !prof !64
  %60 = xor i64 %59, %57
  %61 = lshr i64 %60, 4
  %62 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !65
  %64 = zext i8 %63 to i32
  %65 = add i32 %50, %64
  %66 = icmp eq i32 %53, 1
  br i1 %66, label %67, label %49, !prof !66, !llvm.loop !67

67:                                               ; preds = %49
  %68 = getelementptr inbounds i32, ptr %36, i64 %46
  store i32 %65, ptr %68, align 4, !tbaa !52
  %69 = add nuw nsw i64 %46, 1
  %70 = load i32, ptr %30, align 8, !tbaa !60
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %45, label %41, !prof !70, !llvm.loop !71

73:                                               ; preds = %41, %73
  %74 = phi i64 [ %82, %73 ], [ 14, %41 ]
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 3
  %77 = and i32 %76, -16
  %78 = add i32 %77, -80
  %79 = getelementptr inbounds i32, ptr %36, i64 %74
  %80 = load i32, ptr %79, align 4, !tbaa !52
  %81 = add i32 %78, %80
  store i32 %81, ptr %79, align 4, !tbaa !52
  %82 = add nuw nsw i64 %74, 1
  %83 = load i32, ptr %31, align 8, !tbaa !60
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %73, label %44, !prof !72, !llvm.loop !73

86:                                               ; preds = %89
  %87 = add nuw nsw i64 %35, 1
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %32, label %34, !prof !74, !llvm.loop !75

89:                                               ; preds = %44, %89
  %90 = phi i64 [ %94, %89 ], [ 0, %44 ]
  %91 = getelementptr inbounds i32, ptr %36, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !52
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %35, i64 %90
  store i32 %92, ptr %93, align 4, !tbaa !52
  %94 = add nuw nsw i64 %90, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %86, label %89, !prof !76, !llvm.loop !77

96:                                               ; preds = %32, %137
  %97 = phi i64 [ 4, %32 ], [ %138, %137 ]
  %98 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !65
  %100 = zext i8 %99 to i32
  %101 = lshr i32 %100, 1
  %102 = add nsw i32 %101, -1
  %103 = and i32 %100, 1
  %104 = or disjoint i32 %103, 2
  %105 = shl i32 %104, %102
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i16, ptr %33, i64 %106
  %108 = zext i8 %99 to i64
  %109 = sub nsw i64 0, %108
  %110 = getelementptr inbounds i16, ptr %107, i64 %109
  %111 = getelementptr inbounds i16, ptr %110, i64 -1
  %112 = trunc i64 %97 to i32
  %113 = sub i32 %112, %105
  br label %114

114:                                              ; preds = %114, %96
  %115 = phi i32 [ %113, %96 ], [ %120, %114 ]
  %116 = phi i32 [ 0, %96 ], [ %132, %114 ]
  %117 = phi i32 [ 1, %96 ], [ %134, %114 ]
  %118 = phi i32 [ %102, %96 ], [ %135, %114 ]
  %119 = and i32 %115, 1
  %120 = lshr i32 %115, 1
  %121 = zext i32 %117 to i64
  %122 = getelementptr inbounds i16, ptr %111, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !63
  %124 = zext i16 %123 to i64
  %125 = icmp eq i32 %119, 0
  %126 = select i1 %125, i64 0, i64 2032, !prof !78
  %127 = xor i64 %126, %124
  %128 = lshr i64 %127, 4
  %129 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !65
  %131 = zext i8 %130 to i32
  %132 = add i32 %116, %131
  %133 = shl i32 %117, 1
  %134 = or disjoint i32 %133, %119
  %135 = add i32 %118, -1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %114, !prof !79, !llvm.loop !80

137:                                              ; preds = %140
  %138 = add nuw nsw i64 %97, 1
  %139 = icmp eq i64 %138, 128
  br i1 %139, label %148, label %96, !prof !81, !llvm.loop !82

140:                                              ; preds = %114, %140
  %141 = phi i64 [ %146, %140 ], [ 0, %114 ]
  %142 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %141, i64 %108
  %143 = load i32, ptr %142, align 4, !tbaa !52
  %144 = add i32 %143, %132
  %145 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %141, i64 %97
  store i32 %144, ptr %145, align 4, !tbaa !52
  %146 = add nuw nsw i64 %141, 1
  %147 = icmp eq i64 %146, 4
  br i1 %147, label %137, label %140, !prof !83, !llvm.loop !84

148:                                              ; preds = %137
  store i32 0, ptr %26, align 4, !tbaa !58
  br label %149

149:                                              ; preds = %148, %25
  %150 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %151 = load i32, ptr %150, align 8, !tbaa !85
  %152 = icmp ugt i32 %151, 15
  br i1 %152, label %153, label %186, !prof !86

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  br label %155

155:                                              ; preds = %153, %181
  %156 = phi i64 [ 0, %153 ], [ %183, %181 ]
  %157 = trunc i64 %156 to i32
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i32 [ %157, %155 ], [ %164, %158 ]
  %160 = phi i32 [ 0, %155 ], [ %176, %158 ]
  %161 = phi i32 [ 1, %155 ], [ %178, %158 ]
  %162 = phi i32 [ 4, %155 ], [ %179, %158 ]
  %163 = and i32 %159, 1
  %164 = lshr i32 %159, 1
  %165 = zext i32 %161 to i64
  %166 = getelementptr inbounds i16, ptr %154, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !63
  %168 = zext i16 %167 to i64
  %169 = icmp eq i32 %163, 0
  %170 = select i1 %169, i64 0, i64 2032, !prof !87
  %171 = xor i64 %170, %168
  %172 = lshr i64 %171, 4
  %173 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !65
  %175 = zext i8 %174 to i32
  %176 = add i32 %160, %175
  %177 = shl i32 %161, 1
  %178 = or disjoint i32 %177, %163
  %179 = add nsw i32 %162, -1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %158, !prof !88, !llvm.loop !80

181:                                              ; preds = %158
  %182 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %156
  store i32 %176, ptr %182, align 4, !tbaa !52
  %183 = add nuw nsw i64 %156, 1
  %184 = icmp eq i64 %183, 16
  br i1 %184, label %185, label %155, !prof !89, !llvm.loop !90

185:                                              ; preds = %181
  store i32 0, ptr %150, align 8, !tbaa !85
  br label %186

186:                                              ; preds = %149, %185, %21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %187 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  %188 = load i32, ptr %187, align 8, !tbaa !98, !alias.scope !91, !noalias !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6, !noalias !100
  br i1 %24, label %189, label %192, !prof !57

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %191 = call i32 @lzma_mf_find(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %190) #6, !noalias !99
  br label %197

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %194 = load i32, ptr %193, align 8, !tbaa !101, !noalias !100
  %195 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %196 = load i32, ptr %195, align 4, !tbaa !102, !noalias !100
  store i32 %196, ptr %6, align 4, !tbaa !52, !noalias !100
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi i32 [ %191, %189 ], [ %194, %192 ]
  %199 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 8
  %200 = load i32, ptr %199, align 4, !tbaa !103, !alias.scope !91, !noalias !99
  %201 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !104, !alias.scope !91, !noalias !99
  %203 = sub i32 %200, %202
  %204 = add i32 %203, 1
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %207, !prof !105

206:                                              ; preds = %197
  store i32 -1, ptr %2, align 4, !tbaa !52, !alias.scope !94, !noalias !106
  store i32 1, ptr %3, align 4, !tbaa !52, !alias.scope !96, !noalias !107
  br label %623

207:                                              ; preds = %197
  %208 = load ptr, ptr %1, align 8, !tbaa !108, !alias.scope !91, !noalias !99
  %209 = zext i32 %202 to i64
  %210 = getelementptr inbounds i8, ptr %208, i64 %209
  %211 = getelementptr inbounds i8, ptr %210, i64 -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !noalias !100
  %212 = load i8, ptr %211, align 1, !tbaa !65, !noalias !99
  br label %218

213:                                              ; preds = %262
  %214 = zext i32 %263 to i64
  %215 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !52, !noalias !100
  %217 = icmp ult i32 %216, %188
  br i1 %217, label %274, label %266, !prof !109

218:                                              ; preds = %207, %262
  %219 = phi i64 [ 0, %207 ], [ %264, %262 ]
  %220 = phi i32 [ 0, %207 ], [ %263, %262 ]
  %221 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %219
  %222 = load i32, ptr %221, align 4, !tbaa !52, !noalias !100
  %223 = zext i32 %222 to i64
  %224 = sub nsw i64 0, %223
  %225 = getelementptr inbounds i8, ptr %211, i64 %224
  %226 = getelementptr inbounds i8, ptr %225, i64 -1
  %227 = load i8, ptr %226, align 1, !tbaa !65, !noalias !99
  %228 = icmp eq i8 %212, %227
  br i1 %228, label %229, label %239, !prof !110

229:                                              ; preds = %218
  %230 = load i8, ptr %210, align 1, !tbaa !65, !noalias !99
  %231 = load i8, ptr %225, align 1, !tbaa !65, !noalias !99
  %232 = icmp eq i8 %230, %231
  br i1 %232, label %233, label %239, !prof !111

233:                                              ; preds = %229
  %234 = icmp eq i32 %204, 2
  br i1 %234, label %253, label %235, !prof !112

235:                                              ; preds = %233
  %236 = call i32 @llvm.umin.i32(i32 %204, i32 273)
  %237 = call i32 @llvm.umax.i32(i32 %236, i32 3)
  %238 = zext nneg i32 %237 to i64
  br label %241

239:                                              ; preds = %229, %218
  %240 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %219
  store i32 0, ptr %240, align 4, !tbaa !52, !noalias !100
  br label %262

241:                                              ; preds = %235, %248
  %242 = phi i64 [ 2, %235 ], [ %249, %248 ]
  %243 = getelementptr inbounds i8, ptr %211, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !65, !noalias !99
  %245 = getelementptr inbounds i8, ptr %226, i64 %242
  %246 = load i8, ptr %245, align 1, !tbaa !65, !noalias !99
  %247 = icmp eq i8 %244, %246
  br i1 %247, label %248, label %251, !prof !113

248:                                              ; preds = %241
  %249 = add nuw nsw i64 %242, 1
  %250 = icmp eq i64 %249, %238
  br i1 %250, label %253, label %241, !prof !114, !llvm.loop !115

251:                                              ; preds = %241
  %252 = trunc i64 %242 to i32
  br label %253

253:                                              ; preds = %251, %248, %233
  %254 = phi i32 [ 2, %233 ], [ %252, %251 ], [ %237, %248 ]
  %255 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %219
  store i32 %254, ptr %255, align 4, !tbaa !52, !noalias !100
  %256 = zext i32 %220 to i64
  %257 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !52, !noalias !100
  %259 = icmp ugt i32 %254, %258
  %260 = trunc i64 %219 to i32
  %261 = select i1 %259, i32 %260, i32 %220, !prof !116
  br label %262

262:                                              ; preds = %253, %239
  %263 = phi i32 [ %220, %239 ], [ %261, %253 ]
  %264 = add nuw nsw i64 %219, 1
  %265 = icmp eq i64 %264, 4
  br i1 %265, label %213, label %218, !prof !117, !llvm.loop !118

266:                                              ; preds = %213
  store i32 %263, ptr %2, align 4, !tbaa !52, !alias.scope !94, !noalias !106
  store i32 %216, ptr %3, align 4, !tbaa !52, !alias.scope !96, !noalias !107
  %267 = add i32 %216, -1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %621, label %269, !prof !119

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %271 = load ptr, ptr %270, align 8, !tbaa !120, !alias.scope !91, !noalias !99
  call void %271(ptr noundef nonnull %1, i32 noundef %267) #6, !prof !121, !noalias !99
  %272 = load i32, ptr %22, align 4, !tbaa !54, !alias.scope !91, !noalias !99
  %273 = add i32 %272, %267
  store i32 %273, ptr %22, align 4, !tbaa !54, !alias.scope !91, !noalias !99
  br label %621

274:                                              ; preds = %213
  %275 = icmp ult i32 %198, %188
  br i1 %275, label %290, label %276, !prof !122

276:                                              ; preds = %274
  %277 = load i32, ptr %6, align 4, !tbaa !52, !noalias !100
  %278 = add i32 %277, -1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %279, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !123, !noalias !100
  %282 = add i32 %281, 4
  store i32 %282, ptr %2, align 4, !tbaa !52, !alias.scope !94, !noalias !106
  store i32 %198, ptr %3, align 4, !tbaa !52, !alias.scope !96, !noalias !107
  %283 = add i32 %198, -1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %621, label %285, !prof !125

285:                                              ; preds = %276
  %286 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %287 = load ptr, ptr %286, align 8, !tbaa !120, !alias.scope !91, !noalias !99
  call void %287(ptr noundef nonnull %1, i32 noundef %283) #6, !prof !126, !noalias !99
  %288 = load i32, ptr %22, align 4, !tbaa !54, !alias.scope !91, !noalias !99
  %289 = add i32 %288, %283
  store i32 %289, ptr %22, align 4, !tbaa !54, !alias.scope !91, !noalias !99
  br label %621

290:                                              ; preds = %274
  %291 = load i8, ptr %211, align 1, !tbaa !65, !noalias !99
  %292 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !52, !noalias !100
  %294 = zext i32 %293 to i64
  %295 = sub nsw i64 0, %294
  %296 = getelementptr inbounds i8, ptr %211, i64 %295
  %297 = getelementptr inbounds i8, ptr %296, i64 -1
  %298 = load i8, ptr %297, align 1, !tbaa !65, !noalias !99
  %299 = icmp ult i32 %198, 2
  %300 = icmp ne i8 %291, %298
  %301 = select i1 %299, i1 %300, i1 false, !prof !127
  %302 = icmp ult i32 %216, 2
  %303 = and i1 %302, %301
  br i1 %303, label %304, label %305, !prof !128

304:                                              ; preds = %290
  store i32 -1, ptr %2, align 4, !tbaa !52, !alias.scope !94, !noalias !106
  store i32 1, ptr %3, align 4, !tbaa !52, !alias.scope !96, !noalias !107
  br label %621

305:                                              ; preds = %290
  %306 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %307 = load i32, ptr %306, align 8, !tbaa !129, !noalias !100
  %308 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32
  store i32 %307, ptr %308, align 4, !tbaa !130, !noalias !100
  %309 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %310 = load i32, ptr %309, align 8, !tbaa !131, !noalias !100
  %311 = and i32 %310, %4
  %312 = zext i32 %307 to i64
  %313 = zext i32 %311 to i64
  %314 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %312, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !63, !noalias !100
  %316 = lshr i16 %315, 4
  %317 = zext nneg i16 %316 to i64
  %318 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !65, !noalias !100
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds i8, ptr %210, i64 -2
  %322 = load i8, ptr %321, align 1, !tbaa !65, !noalias !99
  %323 = zext i8 %322 to i32
  %324 = icmp ugt i32 %307, 6
  %325 = zext i8 %291 to i32
  %326 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %327 = load i32, ptr %326, align 8, !tbaa !132, !noalias !99
  %328 = and i32 %327, %4
  %329 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %330 = load i32, ptr %329, align 4, !tbaa !133, !noalias !99
  %331 = shl i32 %328, %330
  %332 = sub i32 8, %330
  %333 = lshr i32 %323, %332
  %334 = add i32 %333, %331
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %335
  br i1 %324, label %357, label %337, !prof !134

337:                                              ; preds = %305
  %338 = or disjoint i32 %325, 256
  br label %339

339:                                              ; preds = %339, %337
  %340 = phi i32 [ 0, %337 ], [ %355, %339 ]
  %341 = phi i32 [ %338, %337 ], [ %343, %339 ]
  %342 = and i32 %341, 1
  %343 = lshr i32 %341, 1
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds i16, ptr %336, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !63, !noalias !99
  %347 = zext i16 %346 to i64
  %348 = icmp eq i32 %342, 0
  %349 = select i1 %348, i64 0, i64 2032, !prof !135
  %350 = xor i64 %349, %347
  %351 = lshr i64 %350, 4
  %352 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !65, !noalias !99
  %354 = zext i8 %353 to i32
  %355 = add i32 %340, %354
  %356 = icmp eq i32 %343, 1
  br i1 %356, label %388, label %339, !prof !136, !llvm.loop !67

357:                                              ; preds = %305
  %358 = zext i8 %298 to i32
  %359 = or disjoint i32 %325, 256
  br label %360

360:                                              ; preds = %360, %357
  %361 = phi i32 [ 256, %357 ], [ %386, %360 ]
  %362 = phi i32 [ 0, %357 ], [ %382, %360 ]
  %363 = phi i32 [ %359, %357 ], [ %383, %360 ]
  %364 = phi i32 [ %358, %357 ], [ %365, %360 ]
  %365 = shl i32 %364, 1
  %366 = and i32 %365, %361
  %367 = lshr i32 %363, 8
  %368 = add nuw nsw i32 %367, %361
  %369 = add nuw nsw i32 %368, %366
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds i16, ptr %336, i64 %370
  %372 = load i16, ptr %371, align 2, !tbaa !63, !noalias !99
  %373 = zext i16 %372 to i64
  %374 = and i32 %363, 128
  %375 = icmp eq i32 %374, 0
  %376 = select i1 %375, i64 0, i64 2032, !prof !137
  %377 = xor i64 %376, %373
  %378 = lshr i64 %377, 4
  %379 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !65, !noalias !99
  %381 = zext i8 %380 to i32
  %382 = add i32 %362, %381
  %383 = shl i32 %363, 1
  %384 = xor i32 %383, %365
  %385 = xor i32 %384, -1
  %386 = and i32 %361, %385
  %387 = icmp ult i32 %383, 65536
  br i1 %387, label %360, label %388, !prof !138, !llvm.loop !139

388:                                              ; preds = %339, %360
  %389 = phi i32 [ %382, %360 ], [ %355, %339 ]
  %390 = add i32 %389, %320
  %391 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 5
  store i32 %390, ptr %391, align 4, !tbaa !140, !noalias !100
  %392 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 7
  store i32 -1, ptr %392, align 4, !tbaa !53, !noalias !100
  %393 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 1
  store i8 0, ptr %393, align 4, !tbaa !141, !noalias !100
  %394 = xor i16 %316, 127
  %395 = zext nneg i16 %394 to i64
  %396 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !65, !noalias !100
  %398 = zext i8 %397 to i32
  %399 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %312
  %400 = load i16, ptr %399, align 2, !tbaa !63, !noalias !100
  %401 = lshr i16 %400, 4
  %402 = xor i16 %401, 127
  %403 = zext nneg i16 %402 to i64
  %404 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !65, !noalias !100
  %406 = zext i8 %405 to i32
  %407 = add nuw nsw i32 %406, %398
  br i1 %300, label %427, label %408, !prof !142

408:                                              ; preds = %388
  %409 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %312
  %410 = load i16, ptr %409, align 2, !tbaa !63, !noalias !100
  %411 = lshr i16 %410, 4
  %412 = zext nneg i16 %411 to i64
  %413 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !65, !noalias !100
  %415 = zext i8 %414 to i32
  %416 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %312, i64 %313
  %417 = load i16, ptr %416, align 2, !tbaa !63, !noalias !100
  %418 = lshr i16 %417, 4
  %419 = zext nneg i16 %418 to i64
  %420 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !65, !noalias !100
  %422 = zext i8 %421 to i32
  %423 = add nuw nsw i32 %407, %415
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp ult i32 %424, %390
  br i1 %425, label %426, label %427, !prof !143

426:                                              ; preds = %408
  store i32 %424, ptr %391, align 4, !tbaa !140, !noalias !100
  store i32 0, ptr %392, align 4, !tbaa !53, !noalias !100
  store i8 0, ptr %393, align 4, !tbaa !141, !noalias !100
  br label %427

427:                                              ; preds = %426, %408, %388
  %428 = call i32 @llvm.umax.i32(i32 %198, i32 %216)
  %429 = icmp ult i32 %428, 2
  br i1 %429, label %430, label %432, !prof !144

430:                                              ; preds = %427
  %431 = load i32, ptr %392, align 4, !tbaa !53, !noalias !100
  store i32 %431, ptr %2, align 4, !tbaa !52, !alias.scope !94, !noalias !106
  store i32 1, ptr %3, align 4, !tbaa !52, !alias.scope !96, !noalias !107
  br label %621

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 6
  store i32 0, ptr %433, align 4, !tbaa !50, !noalias !100
  br label %434

434:                                              ; preds = %432, %434
  %435 = phi i64 [ 0, %432 ], [ %439, %434 ]
  %436 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !52, !noalias !100
  %438 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 8, i64 %435
  store i32 %437, ptr %438, align 4, !tbaa !52, !noalias !100
  %439 = add nuw nsw i64 %435, 1
  %440 = icmp eq i64 %439, 4
  br i1 %440, label %441, label %434, !prof !145, !llvm.loop !146

441:                                              ; preds = %434
  %442 = call i32 @llvm.umax.i32(i32 %198, i32 %216)
  %443 = zext i32 %442 to i64
  br label %444

444:                                              ; preds = %441, %444
  %445 = phi i64 [ %443, %441 ], [ %450, %444 ]
  %446 = phi i32 [ %428, %441 ], [ %448, %444 ]
  %447 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %445, i32 5
  store i32 1073741824, ptr %447, align 4, !tbaa !140, !noalias !100
  %448 = add i32 %446, -1
  %449 = icmp ugt i32 %448, 1
  %450 = add nsw i64 %445, -1
  br i1 %449, label %444, label %461, !prof !147, !llvm.loop !148

451:                                              ; preds = %546
  %452 = zext nneg i16 %401 to i64
  %453 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !65, !noalias !100
  %455 = zext i8 %454 to i32
  %456 = load i32, ptr %7, align 16, !noalias !100
  %457 = add i32 %456, 1
  %458 = icmp ult i32 %456, 2
  %459 = select i1 %458, i32 2, i32 %457, !prof !149
  %460 = icmp ugt i32 %459, %198
  br i1 %460, label %621, label %549, !prof !150

461:                                              ; preds = %444, %546
  %462 = phi i64 [ %547, %546 ], [ 0, %444 ]
  %463 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !52, !noalias !100
  %465 = icmp ult i32 %464, 2
  br i1 %465, label %546, label %466, !prof !151

466:                                              ; preds = %461
  %467 = icmp eq i64 %462, 0
  br i1 %467, label %468, label %484, !prof !152

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %312
  %470 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %312, i64 %313
  %471 = load i16, ptr %469, align 2, !tbaa !63, !noalias !100
  %472 = lshr i16 %471, 4
  %473 = zext nneg i16 %472 to i64
  %474 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !65, !noalias !100
  %476 = zext i8 %475 to i32
  %477 = load i16, ptr %470, align 2, !tbaa !63, !noalias !100
  %478 = lshr i16 %477, 4
  %479 = xor i16 %478, 127
  %480 = zext nneg i16 %479 to i64
  %481 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !65, !noalias !100
  %483 = zext i8 %482 to i32
  br label %522

484:                                              ; preds = %466
  %485 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %312
  %486 = load i16, ptr %485, align 2, !tbaa !63, !noalias !100
  %487 = lshr i16 %486, 4
  %488 = xor i16 %487, 127
  %489 = zext nneg i16 %488 to i64
  %490 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !65, !noalias !100
  %492 = zext i8 %491 to i32
  %493 = icmp eq i64 %462, 1
  br i1 %493, label %494, label %502, !prof !153

494:                                              ; preds = %484
  %495 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %312
  %496 = load i16, ptr %495, align 2, !tbaa !63, !noalias !100
  %497 = lshr i16 %496, 4
  %498 = zext nneg i16 %497 to i64
  %499 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %498
  %500 = load i8, ptr %499, align 1, !tbaa !65, !noalias !100
  %501 = zext i8 %500 to i32
  br label %522

502:                                              ; preds = %484
  %503 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %312
  %504 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %312
  %505 = load i16, ptr %503, align 2, !tbaa !63, !noalias !100
  %506 = lshr i16 %505, 4
  %507 = xor i16 %506, 127
  %508 = zext nneg i16 %507 to i64
  %509 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !65, !noalias !100
  %511 = zext i8 %510 to i32
  %512 = add nuw nsw i32 %511, %492
  %513 = load i16, ptr %504, align 2, !tbaa !63, !noalias !100
  %514 = zext i16 %513 to i64
  %515 = sub nsw i64 2, %462
  %516 = and i64 %515, 2032
  %517 = xor i64 %516, %514
  %518 = lshr i64 %517, 4
  %519 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !65, !noalias !100
  %521 = zext i8 %520 to i32
  br label %522

522:                                              ; preds = %502, %494, %468
  %523 = phi i32 [ %521, %502 ], [ %492, %494 ], [ %476, %468 ]
  %524 = phi i32 [ %512, %502 ], [ %501, %494 ], [ %483, %468 ]
  %525 = add nuw nsw i32 %524, %523
  %526 = add nuw nsw i32 %525, %407
  %527 = trunc i64 %462 to i32
  br label %528

528:                                              ; preds = %543, %522
  %529 = phi i32 [ %464, %522 ], [ %544, %543 ]
  %530 = add i32 %529, -2
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %313, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !52, !noalias !100
  %534 = add i32 %526, %533
  %535 = zext i32 %529 to i64
  %536 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %535, i32 5
  %537 = load i32, ptr %536, align 4, !tbaa !140, !noalias !100
  %538 = icmp ult i32 %534, %537
  br i1 %538, label %539, label %543, !prof !154

539:                                              ; preds = %528
  store i32 %534, ptr %536, align 4, !tbaa !140, !noalias !100
  %540 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %535, i32 6
  store i32 0, ptr %540, align 4, !tbaa !50, !noalias !100
  %541 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %535, i32 7
  store i32 %527, ptr %541, align 4, !tbaa !53, !noalias !100
  %542 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %535, i32 1
  store i8 0, ptr %542, align 4, !tbaa !141, !noalias !100
  br label %543

543:                                              ; preds = %528, %539
  %544 = add i32 %529, -1
  %545 = icmp ugt i32 %544, 1
  br i1 %545, label %528, label %546, !prof !155, !llvm.loop !156

546:                                              ; preds = %543, %461
  %547 = add nuw nsw i64 %462, 1
  %548 = icmp eq i64 %547, 4
  br i1 %548, label %451, label %461, !prof !145, !llvm.loop !157

549:                                              ; preds = %451, %549
  %550 = phi i32 [ %555, %549 ], [ 0, %451 ]
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !158, !noalias !100
  %554 = icmp ugt i32 %459, %553
  %555 = add i32 %550, 1
  br i1 %554, label %549, label %556, !prof !159, !llvm.loop !160

556:                                              ; preds = %549
  %557 = add nuw nsw i32 %455, %398
  %558 = load i32, ptr %6, align 4, !noalias !100
  br label %559

559:                                              ; preds = %556, %618
  %560 = phi i32 [ %620, %618 ], [ %459, %556 ]
  %561 = phi i32 [ %619, %618 ], [ %550, %556 ]
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %562
  %564 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %562, i32 1
  %565 = load i32, ptr %564, align 4, !tbaa !123, !noalias !100
  %566 = icmp ult i32 %560, 6
  %567 = add i32 %560, -2
  %568 = select i1 %566, i32 %567, i32 3, !prof !161
  %569 = icmp ult i32 %565, 128
  br i1 %569, label %570, label %575, !prof !162

570:                                              ; preds = %559
  %571 = zext i32 %568 to i64
  %572 = zext nneg i32 %565 to i64
  %573 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %571, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !52, !noalias !100
  br label %596

575:                                              ; preds = %559
  %576 = icmp ult i32 %565, 524288
  %577 = icmp sgt i32 %565, -1
  %578 = select i1 %577, i32 18, i32 30
  %579 = select i1 %577, i64 36, i64 60
  %580 = select i1 %576, i32 6, i32 %578, !prof !163
  %581 = select i1 %576, i64 12, i64 %579, !prof !163
  %582 = lshr i32 %565, %580
  %583 = zext nneg i32 %582 to i64
  %584 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !65, !noalias !100
  %586 = zext i8 %585 to i64
  %587 = add nuw nsw i64 %581, %586
  %588 = zext i32 %568 to i64
  %589 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %588, i64 %587
  %590 = load i32, ptr %589, align 4, !tbaa !52, !noalias !100
  %591 = and i32 %565, 15
  %592 = zext nneg i32 %591 to i64
  %593 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %592
  %594 = load i32, ptr %593, align 4, !tbaa !52, !noalias !100
  %595 = add i32 %594, %590
  br label %596

596:                                              ; preds = %575, %570
  %597 = phi i32 [ %574, %570 ], [ %595, %575 ]
  %598 = zext i32 %567 to i64
  %599 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 5, i64 %313, i64 %598
  %600 = load i32, ptr %599, align 4, !tbaa !52, !noalias !100
  %601 = add i32 %557, %597
  %602 = add i32 %601, %600
  %603 = zext i32 %560 to i64
  %604 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %603, i32 5
  %605 = load i32, ptr %604, align 4, !tbaa !140, !noalias !100
  %606 = icmp ult i32 %602, %605
  br i1 %606, label %607, label %612, !prof !164

607:                                              ; preds = %596
  store i32 %602, ptr %604, align 4, !tbaa !140, !noalias !100
  %608 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %603, i32 6
  store i32 0, ptr %608, align 4, !tbaa !50, !noalias !100
  %609 = add i32 %565, 4
  %610 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %603, i32 7
  store i32 %609, ptr %610, align 4, !tbaa !53, !noalias !100
  %611 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %603, i32 1
  store i8 0, ptr %611, align 4, !tbaa !141, !noalias !100
  br label %612

612:                                              ; preds = %607, %596
  %613 = load i32, ptr %563, align 4, !tbaa !158, !noalias !100
  %614 = icmp ne i32 %560, %613
  %615 = add i32 %561, 1
  %616 = icmp ne i32 %615, %558
  %617 = select i1 %614, i1 true, i1 %616, !prof !165
  br i1 %617, label %618, label %621, !prof !166

618:                                              ; preds = %612
  %619 = select i1 %614, i32 %561, i32 %615, !prof !167
  %620 = add i32 %560, 1
  br label %559, !llvm.loop !168

621:                                              ; preds = %612, %451, %430, %304, %285, %276, %269, %266
  %622 = phi i32 [ -1, %304 ], [ -1, %430 ], [ %428, %451 ], [ -1, %266 ], [ -1, %269 ], [ -1, %276 ], [ -1, %285 ], [ %428, %612 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !noalias !100
  br label %623

623:                                              ; preds = %206, %621
  %624 = phi i32 [ -1, %206 ], [ %622, %621 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6, !noalias !100
  %625 = icmp eq i32 %624, -1
  br i1 %625, label %1678, label %626, !prof !169

626:                                              ; preds = %623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %627 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %627, i64 16, i1 false)
  %628 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %629 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %630 = icmp ugt i32 %624, 1
  br i1 %630, label %631, label %1633, !prof !170

631:                                              ; preds = %626
  %632 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %633 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %634 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %635 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %636 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 5
  %637 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 5
  %638 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 4
  %639 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 4
  %640 = getelementptr inbounds i8, ptr %8, i64 4
  %641 = getelementptr i8, ptr %0, i64 69376
  %642 = getelementptr i8, ptr %0, i64 69376
  %643 = getelementptr i8, ptr %0, i64 69376
  %644 = getelementptr i8, ptr %0, i64 69420
  br label %645

645:                                              ; preds = %631, %1624
  %646 = phi i64 [ 1, %631 ], [ %877, %1624 ]
  %647 = phi i32 [ 4094, %631 ], [ %1629, %1624 ]
  %648 = phi i64 [ 0, %631 ], [ %1628, %1624 ]
  %649 = phi i32 [ %624, %631 ], [ %1625, %1624 ]
  %650 = mul nuw nsw i64 %648, 44
  %651 = getelementptr i8, ptr %644, i64 %650
  %652 = call i32 @lzma_mf_find(ptr noundef %1, ptr noundef nonnull %628, ptr noundef nonnull %629) #6
  store i32 %652, ptr %632, align 8, !tbaa !101
  %653 = load i32, ptr %187, align 8, !tbaa !98
  %654 = icmp ult i32 %652, %653
  br i1 %654, label %655, label %1630, !prof !171

655:                                              ; preds = %645
  %656 = load ptr, ptr %1, align 8, !tbaa !108
  %657 = load i32, ptr %201, align 8, !tbaa !104
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %656, i64 %658
  %660 = getelementptr inbounds i8, ptr %659, i64 -1
  %661 = trunc i64 %646 to i32
  %662 = add i32 %661, %4
  %663 = load i32, ptr %199, align 4, !tbaa !103
  %664 = sub i32 %663, %657
  %665 = add i32 %664, 1
  %666 = trunc i64 %646 to i32
  %667 = sub i32 4095, %666
  %668 = call i32 @llvm.umin.i32(i32 %665, i32 %667)
  %669 = load i32, ptr %628, align 4, !tbaa !102
  %670 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646
  %671 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 6
  %672 = load i32, ptr %671, align 4, !tbaa !50
  %673 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 1
  %674 = load i8, ptr %673, align 4, !tbaa !141, !range !172, !noundef !173
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %706, label %676, !prof !174

676:                                              ; preds = %655
  %677 = add i32 %672, -1
  %678 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 2
  %679 = load i8, ptr %678, align 1, !tbaa !175, !range !172, !noundef !173
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %695, label %681, !prof !176

681:                                              ; preds = %676
  %682 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 3
  %683 = load i32, ptr %682, align 4, !tbaa !177
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !130
  %687 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 4
  %688 = load i32, ptr %687, align 4, !tbaa !178
  %689 = icmp ult i32 %688, 4
  %690 = icmp ult i32 %686, 7
  br i1 %689, label %691, label %693, !prof !179

691:                                              ; preds = %681
  %692 = select i1 %690, i32 8, i32 11, !prof !180
  br label %699

693:                                              ; preds = %681
  %694 = select i1 %690, i32 7, i32 10, !prof !181
  br label %699

695:                                              ; preds = %676
  %696 = zext i32 %677 to i64
  %697 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !130
  br label %699

699:                                              ; preds = %695, %693, %691
  %700 = phi i32 [ %692, %691 ], [ %694, %693 ], [ %698, %695 ]
  %701 = icmp ult i32 %700, 4
  %702 = icmp ult i32 %700, 10
  %703 = select i1 %702, i32 -3, i32 -6, !prof !182
  %704 = add i32 %703, %700
  %705 = select i1 %701, i32 0, i32 %704, !prof !183
  br label %710

706:                                              ; preds = %655
  %707 = zext i32 %672 to i64
  %708 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !130
  br label %710

710:                                              ; preds = %706, %699
  %711 = phi i32 [ %705, %699 ], [ %709, %706 ]
  %712 = phi i32 [ %677, %699 ], [ %672, %706 ]
  %713 = add nsw i64 %646, -1
  %714 = zext i32 %712 to i64
  %715 = icmp eq i64 %713, %714
  br i1 %715, label %716, label %729, !prof !184

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 7
  %718 = load i32, ptr %717, align 4, !tbaa !53
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %723, !prof !185

720:                                              ; preds = %716
  %721 = icmp ult i32 %711, 7
  %722 = select i1 %721, i32 9, i32 11, !prof !186
  br label %786

723:                                              ; preds = %716
  %724 = icmp ult i32 %711, 4
  %725 = icmp ult i32 %711, 10
  %726 = select i1 %725, i32 -3, i32 -6, !prof !187
  %727 = add i32 %726, %711
  %728 = select i1 %724, i32 0, i32 %727, !prof !188
  br label %786

729:                                              ; preds = %710
  br i1 %675, label %741, label %730, !prof !189

730:                                              ; preds = %729
  %731 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 2
  %732 = load i8, ptr %731, align 1, !tbaa !175, !range !172, !noundef !173
  %733 = icmp eq i8 %732, 0
  br i1 %733, label %741, label %734, !prof !176

734:                                              ; preds = %730
  %735 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 3
  %736 = load i32, ptr %735, align 4, !tbaa !177
  %737 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 4
  %738 = load i32, ptr %737, align 4, !tbaa !178
  %739 = icmp ult i32 %711, 7
  %740 = select i1 %739, i32 8, i32 11, !prof !190
  br label %750

741:                                              ; preds = %730, %729
  %742 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 7
  %743 = load i32, ptr %742, align 4, !tbaa !53
  %744 = icmp ult i32 %743, 4
  %745 = icmp ult i32 %711, 7
  br i1 %744, label %746, label %748, !prof !191

746:                                              ; preds = %741
  %747 = select i1 %745, i32 8, i32 11, !prof !192
  br label %750

748:                                              ; preds = %741
  %749 = select i1 %745, i32 7, i32 10, !prof !193
  br label %750

750:                                              ; preds = %748, %746, %734
  %751 = phi i32 [ %738, %734 ], [ %743, %746 ], [ %743, %748 ]
  %752 = phi i32 [ %740, %734 ], [ %747, %746 ], [ %749, %748 ]
  %753 = phi i32 [ %736, %734 ], [ %712, %746 ], [ %712, %748 ]
  %754 = icmp ult i32 %751, 4
  br i1 %754, label %755, label %781, !prof !194

755:                                              ; preds = %750
  %756 = zext i32 %753 to i64
  %757 = zext nneg i32 %751 to i64
  %758 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %756, i32 8, i64 %757
  %759 = load i32, ptr %758, align 4, !tbaa !52
  store i32 %759, ptr %8, align 16, !tbaa !52
  %760 = icmp eq i32 %751, 0
  br i1 %760, label %767, label %761, !prof !195

761:                                              ; preds = %755
  %762 = mul nuw nsw i64 %756, 44
  %763 = getelementptr i8, ptr %642, i64 %762
  %764 = shl nuw nsw i32 %751, 2
  %765 = zext nneg i32 %764 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %640, ptr align 4 %763, i64 %765, i1 false), !tbaa !52
  %766 = add nuw nsw i32 %751, 1
  br label %767

767:                                              ; preds = %761, %755
  %768 = phi i32 [ 1, %755 ], [ %766, %761 ]
  %769 = icmp ult i32 %768, 4
  br i1 %769, label %770, label %786, !prof !196

770:                                              ; preds = %767
  %771 = shl nuw nsw i32 %768, 2
  %772 = zext nneg i32 %771 to i64
  %773 = getelementptr i8, ptr %8, i64 %772
  %774 = mul nuw nsw i64 %756, 44
  %775 = getelementptr i8, ptr %643, i64 %774
  %776 = getelementptr i8, ptr %775, i64 %772
  %777 = sub nsw i32 2, %751
  %778 = zext i32 %777 to i64
  %779 = shl nuw nsw i64 %778, 2
  %780 = add nuw nsw i64 %779, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %773, ptr noundef nonnull align 4 dereferenceable(1) %776, i64 %780, i1 false), !tbaa !52
  br label %786

781:                                              ; preds = %750
  %782 = add i32 %751, -4
  store i32 %782, ptr %8, align 16, !tbaa !52
  %783 = zext i32 %753 to i64
  %784 = mul nuw nsw i64 %783, 44
  %785 = getelementptr i8, ptr %641, i64 %784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %640, ptr noundef nonnull align 4 dereferenceable(12) %785, i64 12, i1 false), !tbaa !52
  br label %786

786:                                              ; preds = %781, %770, %767, %723, %720
  %787 = phi i32 [ %722, %720 ], [ %728, %723 ], [ %752, %767 ], [ %752, %770 ], [ %752, %781 ]
  store i32 %787, ptr %670, align 4, !tbaa !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %651, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa !52
  %788 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %646, i32 5
  %789 = load i32, ptr %788, align 4, !tbaa !140
  %790 = load i8, ptr %660, align 1, !tbaa !65
  %791 = load i32, ptr %8, align 16, !tbaa !52
  %792 = zext i32 %791 to i64
  %793 = sub nsw i64 0, %792
  %794 = getelementptr inbounds i8, ptr %660, i64 %793
  %795 = getelementptr inbounds i8, ptr %794, i64 -1
  %796 = load i8, ptr %795, align 1, !tbaa !65
  %797 = load i32, ptr %633, align 8, !tbaa !131
  %798 = and i32 %797, %662
  %799 = zext i32 %787 to i64
  %800 = zext i32 %798 to i64
  %801 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %799, i64 %800
  %802 = load i16, ptr %801, align 2, !tbaa !63
  %803 = lshr i16 %802, 4
  %804 = zext nneg i16 %803 to i64
  %805 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %804
  %806 = load i8, ptr %805, align 1, !tbaa !65
  %807 = zext i8 %806 to i32
  %808 = add i32 %789, %807
  %809 = getelementptr inbounds i8, ptr %659, i64 -2
  %810 = load i8, ptr %809, align 1, !tbaa !65
  %811 = zext i8 %810 to i32
  %812 = icmp ugt i32 %787, 6
  %813 = zext i8 %790 to i32
  %814 = load i32, ptr %634, align 8, !tbaa !132
  %815 = and i32 %814, %662
  %816 = load i32, ptr %635, align 4, !tbaa !133
  %817 = shl i32 %815, %816
  %818 = sub i32 8, %816
  %819 = lshr i32 %811, %818
  %820 = add i32 %819, %817
  %821 = zext i32 %820 to i64
  %822 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %821
  br i1 %812, label %843, label %823, !prof !134

823:                                              ; preds = %786
  %824 = or disjoint i32 %813, 256
  br label %825

825:                                              ; preds = %825, %823
  %826 = phi i32 [ 0, %823 ], [ %841, %825 ]
  %827 = phi i32 [ %824, %823 ], [ %829, %825 ]
  %828 = and i32 %827, 1
  %829 = lshr i32 %827, 1
  %830 = zext nneg i32 %829 to i64
  %831 = getelementptr inbounds i16, ptr %822, i64 %830
  %832 = load i16, ptr %831, align 2, !tbaa !63
  %833 = zext i16 %832 to i64
  %834 = icmp eq i32 %828, 0
  %835 = select i1 %834, i64 0, i64 2032, !prof !135
  %836 = xor i64 %835, %833
  %837 = lshr i64 %836, 4
  %838 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %837
  %839 = load i8, ptr %838, align 1, !tbaa !65
  %840 = zext i8 %839 to i32
  %841 = add i32 %826, %840
  %842 = icmp eq i32 %829, 1
  br i1 %842, label %874, label %825, !prof !136, !llvm.loop !67

843:                                              ; preds = %786
  %844 = zext i8 %796 to i32
  %845 = or disjoint i32 %813, 256
  br label %846

846:                                              ; preds = %846, %843
  %847 = phi i32 [ 256, %843 ], [ %872, %846 ]
  %848 = phi i32 [ 0, %843 ], [ %868, %846 ]
  %849 = phi i32 [ %845, %843 ], [ %869, %846 ]
  %850 = phi i32 [ %844, %843 ], [ %851, %846 ]
  %851 = shl i32 %850, 1
  %852 = and i32 %851, %847
  %853 = lshr i32 %849, 8
  %854 = add nuw nsw i32 %853, %847
  %855 = add nuw nsw i32 %854, %852
  %856 = zext nneg i32 %855 to i64
  %857 = getelementptr inbounds i16, ptr %822, i64 %856
  %858 = load i16, ptr %857, align 2, !tbaa !63
  %859 = zext i16 %858 to i64
  %860 = and i32 %849, 128
  %861 = icmp eq i32 %860, 0
  %862 = select i1 %861, i64 0, i64 2032, !prof !137
  %863 = xor i64 %862, %859
  %864 = lshr i64 %863, 4
  %865 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %864
  %866 = load i8, ptr %865, align 1, !tbaa !65
  %867 = zext i8 %866 to i32
  %868 = add i32 %848, %867
  %869 = shl i32 %849, 1
  %870 = xor i32 %869, %851
  %871 = xor i32 %870, -1
  %872 = and i32 %847, %871
  %873 = icmp ult i32 %869, 65536
  br i1 %873, label %846, label %874, !prof !138, !llvm.loop !139

874:                                              ; preds = %825, %846
  %875 = phi i32 [ %868, %846 ], [ %841, %825 ]
  %876 = add i32 %808, %875
  %877 = add nuw nsw i64 %646, 1
  %878 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 5
  %879 = load i32, ptr %878, align 4, !tbaa !140
  %880 = icmp ult i32 %876, %879
  br i1 %880, label %881, label %886, !prof !197

881:                                              ; preds = %874
  store i32 %876, ptr %878, align 4, !tbaa !140
  %882 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 6
  %883 = trunc i64 %646 to i32
  store i32 %883, ptr %882, align 4, !tbaa !50
  %884 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 7
  store i32 -1, ptr %884, align 4, !tbaa !53
  %885 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 1
  store i8 0, ptr %885, align 4, !tbaa !141
  br label %886

886:                                              ; preds = %881, %874
  %887 = phi i8 [ 1, %881 ], [ 0, %874 ]
  %888 = xor i16 %803, 127
  %889 = zext nneg i16 %888 to i64
  %890 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %889
  %891 = load i8, ptr %890, align 1, !tbaa !65
  %892 = zext i8 %891 to i32
  %893 = add i32 %789, %892
  %894 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %799
  %895 = load i16, ptr %894, align 2, !tbaa !63
  %896 = lshr i16 %895, 4
  %897 = xor i16 %896, 127
  %898 = zext nneg i16 %897 to i64
  %899 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %898
  %900 = load i8, ptr %899, align 1, !tbaa !65
  %901 = zext i8 %900 to i32
  %902 = add i32 %893, %901
  %903 = icmp eq i8 %796, %790
  br i1 %903, label %904, label %936, !prof !198

904:                                              ; preds = %886
  %905 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 6
  %906 = load i32, ptr %905, align 4, !tbaa !50
  %907 = zext i32 %906 to i64
  %908 = icmp ugt i64 %646, %907
  br i1 %908, label %909, label %913, !prof !199

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 7
  %911 = load i32, ptr %910, align 4, !tbaa !53
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %936, label %913, !prof !200

913:                                              ; preds = %909, %904
  %914 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %799
  %915 = load i16, ptr %914, align 2, !tbaa !63
  %916 = lshr i16 %915, 4
  %917 = zext nneg i16 %916 to i64
  %918 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %917
  %919 = load i8, ptr %918, align 1, !tbaa !65
  %920 = zext i8 %919 to i32
  %921 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %799, i64 %800
  %922 = load i16, ptr %921, align 2, !tbaa !63
  %923 = lshr i16 %922, 4
  %924 = zext nneg i16 %923 to i64
  %925 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %924
  %926 = load i8, ptr %925, align 1, !tbaa !65
  %927 = zext i8 %926 to i32
  %928 = add i32 %902, %920
  %929 = add i32 %928, %927
  %930 = load i32, ptr %878, align 4, !tbaa !140
  %931 = icmp ugt i32 %929, %930
  br i1 %931, label %936, label %932, !prof !201

932:                                              ; preds = %913
  store i32 %929, ptr %878, align 4, !tbaa !140
  %933 = trunc i64 %646 to i32
  store i32 %933, ptr %905, align 4, !tbaa !50
  %934 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 7
  store i32 0, ptr %934, align 4, !tbaa !53
  %935 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %877, i32 1
  store i8 0, ptr %935, align 4, !tbaa !141
  br label %936

936:                                              ; preds = %909, %932, %913, %886
  %937 = phi i8 [ %887, %886 ], [ 1, %932 ], [ %887, %913 ], [ %887, %909 ]
  %938 = icmp ult i32 %668, 2
  br i1 %938, label %1624, label %939, !prof !202

939:                                              ; preds = %936
  %940 = call i32 @llvm.umin.i32(i32 %668, i32 %653)
  %941 = and i8 %937, 1
  %942 = icmp ne i8 %941, 0
  %943 = or i1 %903, %942
  br i1 %943, label %1042, label %944, !prof !203

944:                                              ; preds = %939
  %945 = add i32 %653, 1
  %946 = call i32 @llvm.umin.i32(i32 %945, i32 %668)
  %947 = icmp ugt i32 %946, 1
  br i1 %947, label %948, label %962, !prof !204

948:                                              ; preds = %944
  %949 = call i32 @llvm.umin.i32(i32 %647, i32 %665)
  %950 = call i32 @llvm.umin.i32(i32 %949, i32 %945)
  br label %951

951:                                              ; preds = %948, %959
  %952 = phi i32 [ %960, %959 ], [ 1, %948 ]
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds i8, ptr %660, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !65
  %956 = getelementptr inbounds i8, ptr %795, i64 %953
  %957 = load i8, ptr %956, align 1, !tbaa !65
  %958 = icmp eq i8 %955, %957
  br i1 %958, label %959, label %962, !prof !205

959:                                              ; preds = %951
  %960 = add nuw i32 %952, 1
  %961 = icmp eq i32 %960, %950
  br i1 %961, label %962, label %951, !prof !206, !llvm.loop !207

962:                                              ; preds = %959, %951, %944
  %963 = phi i32 [ 1, %944 ], [ %950, %959 ], [ %952, %951 ]
  %964 = add i32 %963, -3
  %965 = icmp ult i32 %964, -2
  br i1 %965, label %966, label %1042, !prof !208

966:                                              ; preds = %962
  %967 = icmp ult i32 %787, 4
  %968 = icmp ult i32 %787, 10
  %969 = select i1 %968, i32 -3, i32 -6, !prof !209
  %970 = add i32 %969, %787
  %971 = select i1 %967, i32 0, i32 %970, !prof !210
  %972 = add i32 %662, 1
  %973 = and i32 %797, %972
  %974 = zext i32 %971 to i64
  %975 = zext i32 %973 to i64
  %976 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %974, i64 %975
  %977 = load i16, ptr %976, align 2, !tbaa !63
  %978 = lshr i16 %977, 4
  %979 = xor i16 %978, 127
  %980 = zext nneg i16 %979 to i64
  %981 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !65
  %983 = zext i8 %982 to i32
  %984 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %974
  %985 = load i16, ptr %984, align 2, !tbaa !63
  %986 = lshr i16 %985, 4
  %987 = xor i16 %986, 127
  %988 = zext nneg i16 %987 to i64
  %989 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %988
  %990 = load i8, ptr %989, align 1, !tbaa !65
  %991 = zext i8 %990 to i32
  %992 = trunc i64 %646 to i32
  %993 = add i32 %963, %992
  %994 = icmp ult i32 %649, %993
  br i1 %994, label %995, label %1007, !prof !211

995:                                              ; preds = %966
  %996 = zext i32 %649 to i64
  %997 = trunc i64 %646 to i32
  %998 = add i32 %963, %997
  %999 = zext i32 %998 to i64
  br label %1000

1000:                                             ; preds = %995, %1000
  %1001 = phi i64 [ %996, %995 ], [ %1002, %1000 ]
  %1002 = add nuw nsw i64 %1001, 1
  %1003 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1002, i32 5
  store i32 1073741824, ptr %1003, align 4, !tbaa !140
  %1004 = icmp eq i64 %1002, %999
  br i1 %1004, label %1005, label %1000, !prof !212, !llvm.loop !213

1005:                                             ; preds = %1000
  %1006 = trunc i64 %1002 to i32
  br label %1007

1007:                                             ; preds = %1005, %966
  %1008 = phi i32 [ %649, %966 ], [ %1006, %1005 ]
  %1009 = zext i32 %964 to i64
  %1010 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %975, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !52
  %1012 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %974
  %1013 = load i16, ptr %1012, align 2, !tbaa !63
  %1014 = lshr i16 %1013, 4
  %1015 = zext nneg i16 %1014 to i64
  %1016 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1015
  %1017 = load i8, ptr %1016, align 1, !tbaa !65
  %1018 = zext i8 %1017 to i32
  %1019 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %974, i64 %975
  %1020 = load i16, ptr %1019, align 2, !tbaa !63
  %1021 = lshr i16 %1020, 4
  %1022 = xor i16 %1021, 127
  %1023 = zext nneg i16 %1022 to i64
  %1024 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1023
  %1025 = load i8, ptr %1024, align 1, !tbaa !65
  %1026 = zext i8 %1025 to i32
  %1027 = add i32 %876, %983
  %1028 = add i32 %1027, %991
  %1029 = add i32 %1028, %1011
  %1030 = add i32 %1029, %1018
  %1031 = add i32 %1030, %1026
  %1032 = zext i32 %993 to i64
  %1033 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1032, i32 5
  %1034 = load i32, ptr %1033, align 4, !tbaa !140
  %1035 = icmp ult i32 %1031, %1034
  br i1 %1035, label %1036, label %1042, !prof !214

1036:                                             ; preds = %1007
  store i32 %1031, ptr %1033, align 4, !tbaa !140
  %1037 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1032, i32 6
  %1038 = trunc i64 %877 to i32
  store i32 %1038, ptr %1037, align 4, !tbaa !50
  %1039 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1032, i32 7
  store i32 0, ptr %1039, align 4, !tbaa !53
  %1040 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1032, i32 1
  store i8 1, ptr %1040, align 4, !tbaa !141
  %1041 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1032, i32 2
  store i8 0, ptr %1041, align 1, !tbaa !175
  br label %1042

1042:                                             ; preds = %1036, %1007, %962, %939
  %1043 = phi i32 [ %649, %939 ], [ %649, %962 ], [ %1008, %1036 ], [ %1008, %1007 ]
  br label %1046

1044:                                             ; preds = %1342
  %1045 = icmp ugt i32 %652, %940
  br i1 %1045, label %1347, label %1357, !prof !215

1046:                                             ; preds = %1042, %1342
  %1047 = phi i64 [ 0, %1042 ], [ %1345, %1342 ]
  %1048 = phi i32 [ %1043, %1042 ], [ %1344, %1342 ]
  %1049 = phi i32 [ 2, %1042 ], [ %1343, %1342 ]
  %1050 = getelementptr inbounds i32, ptr %8, i64 %1047
  %1051 = load i32, ptr %1050, align 4, !tbaa !52
  %1052 = zext i32 %1051 to i64
  %1053 = sub nsw i64 0, %1052
  %1054 = getelementptr inbounds i8, ptr %660, i64 %1053
  %1055 = getelementptr inbounds i8, ptr %1054, i64 -1
  %1056 = load i8, ptr %660, align 1, !tbaa !65
  %1057 = load i8, ptr %1055, align 1, !tbaa !65
  %1058 = icmp eq i8 %1056, %1057
  br i1 %1058, label %1059, label %1342, !prof !216

1059:                                             ; preds = %1046
  %1060 = load i8, ptr %659, align 1, !tbaa !65
  %1061 = load i8, ptr %1054, align 1, !tbaa !65
  %1062 = icmp eq i8 %1060, %1061
  br i1 %1062, label %1063, label %1342, !prof !217

1063:                                             ; preds = %1059
  %1064 = icmp ugt i32 %940, 2
  %1065 = trunc i64 %646 to i32
  br i1 %1064, label %1066, label %1080, !prof !218

1066:                                             ; preds = %1063
  %1067 = call i32 @llvm.umin.i32(i32 %653, i32 %647)
  %1068 = call i32 @llvm.umin.i32(i32 %1067, i32 %665)
  br label %1069

1069:                                             ; preds = %1066, %1077
  %1070 = phi i32 [ %1078, %1077 ], [ 2, %1066 ]
  %1071 = zext i32 %1070 to i64
  %1072 = getelementptr inbounds i8, ptr %660, i64 %1071
  %1073 = load i8, ptr %1072, align 1, !tbaa !65
  %1074 = getelementptr inbounds i8, ptr %1055, i64 %1071
  %1075 = load i8, ptr %1074, align 1, !tbaa !65
  %1076 = icmp eq i8 %1073, %1075
  br i1 %1076, label %1077, label %1080, !prof !219

1077:                                             ; preds = %1069
  %1078 = add nuw i32 %1070, 1
  %1079 = icmp eq i32 %1078, %1068
  br i1 %1079, label %1080, label %1069, !prof !220, !llvm.loop !221

1080:                                             ; preds = %1077, %1069, %1063
  %1081 = phi i32 [ 2, %1063 ], [ %1068, %1077 ], [ %1070, %1069 ]
  %1082 = trunc i64 %646 to i32
  %1083 = add i32 %1081, %1082
  %1084 = icmp ult i32 %1048, %1083
  br i1 %1084, label %1085, label %1097, !prof !222

1085:                                             ; preds = %1080
  %1086 = trunc i64 %646 to i32
  %1087 = zext i32 %1048 to i64
  %1088 = add i32 %1081, %1086
  %1089 = zext i32 %1088 to i64
  br label %1090

1090:                                             ; preds = %1085, %1090
  %1091 = phi i64 [ %1087, %1085 ], [ %1092, %1090 ]
  %1092 = add nuw nsw i64 %1091, 1
  %1093 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1092, i32 5
  store i32 1073741824, ptr %1093, align 4, !tbaa !140
  %1094 = icmp eq i64 %1092, %1089
  br i1 %1094, label %1095, label %1090, !prof !223, !llvm.loop !224

1095:                                             ; preds = %1090
  %1096 = trunc i64 %1092 to i32
  br label %1097

1097:                                             ; preds = %1095, %1080
  %1098 = phi i32 [ %1048, %1080 ], [ %1096, %1095 ]
  %1099 = icmp eq i64 %1047, 0
  br i1 %1099, label %1100, label %1116, !prof !225

1100:                                             ; preds = %1097
  %1101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %799
  %1102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %799, i64 %800
  %1103 = load i16, ptr %1101, align 2, !tbaa !63
  %1104 = lshr i16 %1103, 4
  %1105 = zext nneg i16 %1104 to i64
  %1106 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1105
  %1107 = load i8, ptr %1106, align 1, !tbaa !65
  %1108 = zext i8 %1107 to i32
  %1109 = load i16, ptr %1102, align 2, !tbaa !63
  %1110 = lshr i16 %1109, 4
  %1111 = xor i16 %1110, 127
  %1112 = zext nneg i16 %1111 to i64
  %1113 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1112
  %1114 = load i8, ptr %1113, align 1, !tbaa !65
  %1115 = zext i8 %1114 to i32
  br label %1154

1116:                                             ; preds = %1097
  %1117 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %799
  %1118 = load i16, ptr %1117, align 2, !tbaa !63
  %1119 = lshr i16 %1118, 4
  %1120 = xor i16 %1119, 127
  %1121 = zext nneg i16 %1120 to i64
  %1122 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1121
  %1123 = load i8, ptr %1122, align 1, !tbaa !65
  %1124 = zext i8 %1123 to i32
  %1125 = icmp eq i64 %1047, 1
  br i1 %1125, label %1126, label %1134, !prof !226

1126:                                             ; preds = %1116
  %1127 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %799
  %1128 = load i16, ptr %1127, align 2, !tbaa !63
  %1129 = lshr i16 %1128, 4
  %1130 = zext nneg i16 %1129 to i64
  %1131 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1130
  %1132 = load i8, ptr %1131, align 1, !tbaa !65
  %1133 = zext i8 %1132 to i32
  br label %1154

1134:                                             ; preds = %1116
  %1135 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %799
  %1136 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %799
  %1137 = load i16, ptr %1135, align 2, !tbaa !63
  %1138 = lshr i16 %1137, 4
  %1139 = xor i16 %1138, 127
  %1140 = zext nneg i16 %1139 to i64
  %1141 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1140
  %1142 = load i8, ptr %1141, align 1, !tbaa !65
  %1143 = zext i8 %1142 to i32
  %1144 = add nuw nsw i32 %1143, %1124
  %1145 = load i16, ptr %1136, align 2, !tbaa !63
  %1146 = zext i16 %1145 to i64
  %1147 = sub nsw i64 2, %1047
  %1148 = and i64 %1147, 2032
  %1149 = xor i64 %1148, %1146
  %1150 = lshr i64 %1149, 4
  %1151 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1150
  %1152 = load i8, ptr %1151, align 1, !tbaa !65
  %1153 = zext i8 %1152 to i32
  br label %1154

1154:                                             ; preds = %1134, %1126, %1100
  %1155 = phi i32 [ %1153, %1134 ], [ %1124, %1126 ], [ %1108, %1100 ]
  %1156 = phi i32 [ %1144, %1134 ], [ %1133, %1126 ], [ %1115, %1100 ]
  %1157 = add nuw nsw i32 %1156, %1155
  %1158 = add i32 %1157, %902
  br label %1159

1159:                                             ; preds = %1177, %1154
  %1160 = phi i32 [ %1081, %1154 ], [ %1178, %1177 ]
  %1161 = add i32 %1160, -2
  %1162 = zext i32 %1161 to i64
  %1163 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %800, i64 %1162
  %1164 = load i32, ptr %1163, align 4, !tbaa !52
  %1165 = add i32 %1164, %1158
  %1166 = add i32 %1160, %1065
  %1167 = zext i32 %1166 to i64
  %1168 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1167, i32 5
  %1169 = load i32, ptr %1168, align 4, !tbaa !140
  %1170 = icmp ult i32 %1165, %1169
  br i1 %1170, label %1171, label %1177, !prof !227

1171:                                             ; preds = %1159
  %1172 = trunc i64 %646 to i32
  %1173 = trunc i64 %1047 to i32
  store i32 %1165, ptr %1168, align 4, !tbaa !140
  %1174 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1167, i32 6
  store i32 %1172, ptr %1174, align 4, !tbaa !50
  %1175 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1167, i32 7
  store i32 %1173, ptr %1175, align 4, !tbaa !53
  %1176 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1167, i32 1
  store i8 0, ptr %1176, align 4, !tbaa !141
  br label %1177

1177:                                             ; preds = %1159, %1171
  %1178 = add i32 %1160, -1
  %1179 = icmp ugt i32 %1178, 1
  br i1 %1179, label %1159, label %1180, !prof !228, !llvm.loop !229

1180:                                             ; preds = %1177
  %1181 = add i32 %1081, 1
  %1182 = select i1 %1099, i32 %1181, i32 %1049, !prof !225
  %1183 = add i32 %1181, %653
  %1184 = call i32 @llvm.umin.i32(i32 %1183, i32 %668)
  %1185 = icmp ult i32 %1181, %1184
  br i1 %1185, label %1186, label %1200, !prof !230

1186:                                             ; preds = %1180
  %1187 = call i32 @llvm.umin.i32(i32 %647, i32 %1183)
  %1188 = call i32 @llvm.umin.i32(i32 %1187, i32 %665)
  br label %1189

1189:                                             ; preds = %1186, %1197
  %1190 = phi i32 [ %1198, %1197 ], [ %1181, %1186 ]
  %1191 = zext i32 %1190 to i64
  %1192 = getelementptr inbounds i8, ptr %660, i64 %1191
  %1193 = load i8, ptr %1192, align 1, !tbaa !65
  %1194 = getelementptr inbounds i8, ptr %1055, i64 %1191
  %1195 = load i8, ptr %1194, align 1, !tbaa !65
  %1196 = icmp eq i8 %1193, %1195
  br i1 %1196, label %1197, label %1200, !prof !231

1197:                                             ; preds = %1189
  %1198 = add nuw i32 %1190, 1
  %1199 = icmp eq i32 %1198, %1188
  br i1 %1199, label %1200, label %1189, !prof !232, !llvm.loop !233

1200:                                             ; preds = %1197, %1189, %1180
  %1201 = phi i32 [ %1181, %1180 ], [ %1188, %1197 ], [ %1190, %1189 ]
  %1202 = sub i32 %1201, %1181
  %1203 = icmp ugt i32 %1202, 1
  br i1 %1203, label %1204, label %1342, !prof !234

1204:                                             ; preds = %1200
  %1205 = select i1 %812, i64 11, i64 8
  %1206 = add i32 %1081, %662
  %1207 = and i32 %1206, %797
  %1208 = add i32 %1081, -2
  %1209 = zext i32 %1208 to i64
  %1210 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %800, i64 %1209
  %1211 = load i32, ptr %1210, align 4, !tbaa !52
  %1212 = zext i32 %1207 to i64
  %1213 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %1205, i64 %1212
  %1214 = load i16, ptr %1213, align 2, !tbaa !63
  %1215 = lshr i16 %1214, 4
  %1216 = zext nneg i16 %1215 to i64
  %1217 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1216
  %1218 = load i8, ptr %1217, align 1, !tbaa !65
  %1219 = add i32 %1081, -1
  %1220 = zext i32 %1219 to i64
  %1221 = getelementptr inbounds i8, ptr %660, i64 %1220
  %1222 = load i8, ptr %1221, align 1, !tbaa !65
  %1223 = zext i8 %1222 to i32
  %1224 = zext i32 %1081 to i64
  %1225 = getelementptr inbounds i8, ptr %1055, i64 %1224
  %1226 = load i8, ptr %1225, align 1, !tbaa !65
  %1227 = zext i8 %1226 to i32
  %1228 = getelementptr inbounds i8, ptr %660, i64 %1224
  %1229 = load i8, ptr %1228, align 1, !tbaa !65
  %1230 = zext i8 %1229 to i32
  %1231 = and i32 %1206, %814
  %1232 = shl i32 %1231, %816
  %1233 = lshr i32 %1223, %818
  %1234 = add i32 %1233, %1232
  %1235 = zext i32 %1234 to i64
  %1236 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %1235
  %1237 = or disjoint i32 %1230, 256
  br label %1238

1238:                                             ; preds = %1238, %1204
  %1239 = phi i32 [ 256, %1204 ], [ %1264, %1238 ]
  %1240 = phi i32 [ 0, %1204 ], [ %1260, %1238 ]
  %1241 = phi i32 [ %1237, %1204 ], [ %1261, %1238 ]
  %1242 = phi i32 [ %1227, %1204 ], [ %1243, %1238 ]
  %1243 = shl i32 %1242, 1
  %1244 = and i32 %1243, %1239
  %1245 = lshr i32 %1241, 8
  %1246 = add nuw nsw i32 %1245, %1239
  %1247 = add nuw nsw i32 %1246, %1244
  %1248 = zext nneg i32 %1247 to i64
  %1249 = getelementptr inbounds i16, ptr %1236, i64 %1248
  %1250 = load i16, ptr %1249, align 2, !tbaa !63
  %1251 = zext i16 %1250 to i64
  %1252 = and i32 %1241, 128
  %1253 = icmp eq i32 %1252, 0
  %1254 = select i1 %1253, i64 0, i64 2032, !prof !137
  %1255 = xor i64 %1254, %1251
  %1256 = lshr i64 %1255, 4
  %1257 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1256
  %1258 = load i8, ptr %1257, align 1, !tbaa !65
  %1259 = zext i8 %1258 to i32
  %1260 = add i32 %1240, %1259
  %1261 = shl i32 %1241, 1
  %1262 = xor i32 %1261, %1243
  %1263 = xor i32 %1262, -1
  %1264 = and i32 %1239, %1263
  %1265 = icmp ult i32 %1261, 65536
  br i1 %1265, label %1238, label %1266, !prof !138, !llvm.loop !139

1266:                                             ; preds = %1238
  %1267 = zext i8 %1218 to i32
  %1268 = add i32 %1206, 1
  %1269 = and i32 %1268, %797
  %1270 = zext i32 %1269 to i64
  %1271 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 5, i64 %1270
  %1272 = load i16, ptr %1271, align 2, !tbaa !63
  %1273 = lshr i16 %1272, 4
  %1274 = xor i16 %1273, 127
  %1275 = zext nneg i16 %1274 to i64
  %1276 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1275
  %1277 = load i8, ptr %1276, align 1, !tbaa !65
  %1278 = zext i8 %1277 to i32
  %1279 = load i16, ptr %636, align 2, !tbaa !63
  %1280 = lshr i16 %1279, 4
  %1281 = xor i16 %1280, 127
  %1282 = zext nneg i16 %1281 to i64
  %1283 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1282
  %1284 = load i8, ptr %1283, align 1, !tbaa !65
  %1285 = zext i8 %1284 to i32
  %1286 = add i32 %1083, 1
  %1287 = add i32 %1202, %1286
  %1288 = icmp ult i32 %1098, %1287
  br i1 %1288, label %1289, label %1301, !prof !235

1289:                                             ; preds = %1266
  %1290 = trunc i64 %646 to i32
  %1291 = zext i32 %1098 to i64
  %1292 = add i32 %1201, %1290
  %1293 = zext i32 %1292 to i64
  br label %1294

1294:                                             ; preds = %1289, %1294
  %1295 = phi i64 [ %1291, %1289 ], [ %1296, %1294 ]
  %1296 = add nuw nsw i64 %1295, 1
  %1297 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1296, i32 5
  store i32 1073741824, ptr %1297, align 4, !tbaa !140
  %1298 = icmp eq i64 %1296, %1293
  br i1 %1298, label %1299, label %1294, !prof !236, !llvm.loop !237

1299:                                             ; preds = %1294
  %1300 = trunc i64 %1296 to i32
  br label %1301

1301:                                             ; preds = %1299, %1266
  %1302 = phi i32 [ %1098, %1266 ], [ %1300, %1299 ]
  %1303 = add i32 %1202, -2
  %1304 = zext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %1270, i64 %1304
  %1306 = load i32, ptr %1305, align 4, !tbaa !52
  %1307 = load i16, ptr %637, align 2, !tbaa !63
  %1308 = lshr i16 %1307, 4
  %1309 = zext nneg i16 %1308 to i64
  %1310 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1309
  %1311 = load i8, ptr %1310, align 1, !tbaa !65
  %1312 = zext i8 %1311 to i32
  %1313 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 5, i64 %1270
  %1314 = load i16, ptr %1313, align 2, !tbaa !63
  %1315 = lshr i16 %1314, 4
  %1316 = xor i16 %1315, 127
  %1317 = zext nneg i16 %1316 to i64
  %1318 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1317
  %1319 = load i8, ptr %1318, align 1, !tbaa !65
  %1320 = zext i8 %1319 to i32
  %1321 = add i32 %1211, %1158
  %1322 = add i32 %1321, %1267
  %1323 = add i32 %1322, %1260
  %1324 = add i32 %1323, %1278
  %1325 = add i32 %1324, %1285
  %1326 = add i32 %1325, %1306
  %1327 = add i32 %1326, %1312
  %1328 = add i32 %1327, %1320
  %1329 = zext i32 %1287 to i64
  %1330 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 5
  %1331 = load i32, ptr %1330, align 4, !tbaa !140
  %1332 = icmp ult i32 %1328, %1331
  br i1 %1332, label %1333, label %1342, !prof !238

1333:                                             ; preds = %1301
  %1334 = trunc i64 %646 to i32
  store i32 %1328, ptr %1330, align 4, !tbaa !140
  %1335 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 6
  store i32 %1286, ptr %1335, align 4, !tbaa !50
  %1336 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 7
  store i32 0, ptr %1336, align 4, !tbaa !53
  %1337 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 1
  store i8 1, ptr %1337, align 4, !tbaa !141
  %1338 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 2
  store i8 1, ptr %1338, align 1, !tbaa !175
  %1339 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 3
  store i32 %1334, ptr %1339, align 4, !tbaa !177
  %1340 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1329, i32 4
  %1341 = trunc i64 %1047 to i32
  store i32 %1341, ptr %1340, align 4, !tbaa !178
  br label %1342

1342:                                             ; preds = %1333, %1301, %1200, %1059, %1046
  %1343 = phi i32 [ %1049, %1059 ], [ %1049, %1046 ], [ %1182, %1301 ], [ %1182, %1333 ], [ %1182, %1200 ]
  %1344 = phi i32 [ %1048, %1059 ], [ %1048, %1046 ], [ %1302, %1301 ], [ %1302, %1333 ], [ %1098, %1200 ]
  %1345 = add nuw nsw i64 %1047, 1
  %1346 = icmp eq i64 %1345, 4
  br i1 %1346, label %1044, label %1046, !prof !239, !llvm.loop !240

1347:                                             ; preds = %1044, %1347
  %1348 = phi i32 [ %1353, %1347 ], [ 0, %1044 ]
  %1349 = zext i32 %1348 to i64
  %1350 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %1349
  %1351 = load i32, ptr %1350, align 4, !tbaa !158
  %1352 = icmp ugt i32 %940, %1351
  %1353 = add i32 %1348, 1
  br i1 %1352, label %1347, label %1354, !prof !241, !llvm.loop !242

1354:                                             ; preds = %1347
  %1355 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %1349
  %1356 = add i32 %1348, 1
  store i32 %940, ptr %1355, align 4, !tbaa !158
  br label %1357

1357:                                             ; preds = %1354, %1044
  %1358 = phi i32 [ %940, %1354 ], [ %652, %1044 ]
  %1359 = phi i32 [ %1356, %1354 ], [ %669, %1044 ]
  %1360 = icmp ult i32 %1358, %1343
  br i1 %1360, label %1624, label %1361, !prof !243

1361:                                             ; preds = %1357
  %1362 = zext nneg i16 %896 to i64
  %1363 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1362
  %1364 = load i8, ptr %1363, align 1, !tbaa !65
  %1365 = zext i8 %1364 to i32
  %1366 = trunc i64 %646 to i32
  %1367 = add i32 %1358, %1366
  %1368 = icmp ult i32 %1344, %1367
  br i1 %1368, label %1369, label %1374, !prof !244

1369:                                             ; preds = %1361
  %1370 = zext i32 %1344 to i64
  %1371 = zext i32 %1367 to i64
  br label %1376

1372:                                             ; preds = %1376
  %1373 = trunc i64 %1378 to i32
  br label %1374

1374:                                             ; preds = %1372, %1361
  %1375 = phi i32 [ %1344, %1361 ], [ %1373, %1372 ]
  br label %1381

1376:                                             ; preds = %1369, %1376
  %1377 = phi i64 [ %1370, %1369 ], [ %1378, %1376 ]
  %1378 = add nuw nsw i64 %1377, 1
  %1379 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1378, i32 5
  store i32 1073741824, ptr %1379, align 4, !tbaa !140
  %1380 = icmp ult i64 %1378, %1371
  br i1 %1380, label %1376, label %1372, !prof !245, !llvm.loop !246

1381:                                             ; preds = %1381, %1374
  %1382 = phi i32 [ %1387, %1381 ], [ 0, %1374 ]
  %1383 = zext i32 %1382 to i64
  %1384 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %1383
  %1385 = load i32, ptr %1384, align 4, !tbaa !158
  %1386 = icmp ugt i32 %1343, %1385
  %1387 = add i32 %1382, 1
  br i1 %1386, label %1381, label %1388, !prof !247, !llvm.loop !248

1388:                                             ; preds = %1381
  %1389 = add i32 %893, %1365
  %1390 = getelementptr i8, ptr %659, i64 -2
  %1391 = add i32 %653, 1
  %1392 = add i32 %1391, %1343
  %1393 = trunc i64 %646 to i32
  %1394 = trunc i64 %646 to i32
  br label %1395

1395:                                             ; preds = %1617, %1388
  %1396 = phi i32 [ %1623, %1617 ], [ %1392, %1388 ]
  %1397 = phi i32 [ %1619, %1617 ], [ %1382, %1388 ]
  %1398 = phi i32 [ %1622, %1617 ], [ %1343, %1388 ]
  %1399 = phi i32 [ %1620, %1617 ], [ %1375, %1388 ]
  %1400 = call i32 @llvm.umin.i32(i32 %647, i32 %1396)
  %1401 = call i32 @llvm.umin.i32(i32 %1400, i32 %665)
  %1402 = zext i32 %1397 to i64
  %1403 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %1402
  %1404 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %1402, i32 1
  %1405 = load i32, ptr %1404, align 4, !tbaa !123
  %1406 = icmp ult i32 %1398, 6
  %1407 = add i32 %1398, -2
  %1408 = select i1 %1406, i32 %1407, i32 3, !prof !249
  %1409 = icmp ult i32 %1405, 128
  br i1 %1409, label %1410, label %1415, !prof !250

1410:                                             ; preds = %1395
  %1411 = zext i32 %1408 to i64
  %1412 = zext nneg i32 %1405 to i64
  %1413 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %1411, i64 %1412
  %1414 = load i32, ptr %1413, align 4, !tbaa !52
  br label %1436

1415:                                             ; preds = %1395
  %1416 = icmp ult i32 %1405, 524288
  %1417 = icmp sgt i32 %1405, -1
  %1418 = select i1 %1417, i32 18, i32 30
  %1419 = select i1 %1417, i64 36, i64 60
  %1420 = select i1 %1416, i32 6, i32 %1418, !prof !251
  %1421 = select i1 %1416, i64 12, i64 %1419, !prof !251
  %1422 = lshr i32 %1405, %1420
  %1423 = zext nneg i32 %1422 to i64
  %1424 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %1423
  %1425 = load i8, ptr %1424, align 1, !tbaa !65
  %1426 = zext i8 %1425 to i64
  %1427 = add nuw nsw i64 %1421, %1426
  %1428 = zext i32 %1408 to i64
  %1429 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %1428, i64 %1427
  %1430 = load i32, ptr %1429, align 4, !tbaa !52
  %1431 = and i32 %1405, 15
  %1432 = zext nneg i32 %1431 to i64
  %1433 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %1432
  %1434 = load i32, ptr %1433, align 4, !tbaa !52
  %1435 = add i32 %1434, %1430
  br label %1436

1436:                                             ; preds = %1415, %1410
  %1437 = phi i32 [ %1414, %1410 ], [ %1435, %1415 ]
  %1438 = zext i32 %1407 to i64
  %1439 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 5, i64 %800, i64 %1438
  %1440 = load i32, ptr %1439, align 4, !tbaa !52
  %1441 = add i32 %1389, %1437
  %1442 = add i32 %1441, %1440
  %1443 = add i32 %1398, %1393
  %1444 = zext i32 %1443 to i64
  %1445 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1444, i32 5
  %1446 = load i32, ptr %1445, align 4, !tbaa !140
  %1447 = icmp ult i32 %1442, %1446
  br i1 %1447, label %1448, label %1453, !prof !252

1448:                                             ; preds = %1436
  store i32 %1442, ptr %1445, align 4, !tbaa !140
  %1449 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1444, i32 6
  store i32 %1394, ptr %1449, align 4, !tbaa !50
  %1450 = add i32 %1405, 4
  %1451 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1444, i32 7
  store i32 %1450, ptr %1451, align 4, !tbaa !53
  %1452 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1444, i32 1
  store i8 0, ptr %1452, align 4, !tbaa !141
  br label %1453

1453:                                             ; preds = %1448, %1436
  %1454 = load i32, ptr %1403, align 4, !tbaa !158
  %1455 = icmp eq i32 %1398, %1454
  br i1 %1455, label %1456, label %1617, !prof !253

1456:                                             ; preds = %1453
  %1457 = zext i32 %1405 to i64
  %1458 = sub nsw i64 0, %1457
  %1459 = getelementptr i8, ptr %1390, i64 %1458
  %1460 = add i32 %1398, 1
  %1461 = add i32 %1460, %653
  %1462 = call i32 @llvm.umin.i32(i32 %1461, i32 %668)
  %1463 = icmp ult i32 %1460, %1462
  br i1 %1463, label %1464, label %1475, !prof !254

1464:                                             ; preds = %1456, %1472
  %1465 = phi i32 [ %1473, %1472 ], [ %1460, %1456 ]
  %1466 = zext i32 %1465 to i64
  %1467 = getelementptr inbounds i8, ptr %660, i64 %1466
  %1468 = load i8, ptr %1467, align 1, !tbaa !65
  %1469 = getelementptr inbounds i8, ptr %1459, i64 %1466
  %1470 = load i8, ptr %1469, align 1, !tbaa !65
  %1471 = icmp eq i8 %1468, %1470
  br i1 %1471, label %1472, label %1475, !prof !255

1472:                                             ; preds = %1464
  %1473 = add nuw i32 %1465, 1
  %1474 = icmp ult i32 %1473, %1462
  br i1 %1474, label %1464, label %1475, !prof !256, !llvm.loop !257

1475:                                             ; preds = %1472, %1464, %1456
  %1476 = phi i32 [ %1460, %1456 ], [ %1401, %1472 ], [ %1465, %1464 ]
  %1477 = sub i32 %1476, %1460
  %1478 = icmp ugt i32 %1477, 1
  br i1 %1478, label %1479, label %1612, !prof !258

1479:                                             ; preds = %1475
  %1480 = select i1 %812, i64 10, i64 7
  %1481 = add i32 %1398, %662
  %1482 = and i32 %1481, %797
  %1483 = zext i32 %1482 to i64
  %1484 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %1480, i64 %1483
  %1485 = load i16, ptr %1484, align 2, !tbaa !63
  %1486 = lshr i16 %1485, 4
  %1487 = zext nneg i16 %1486 to i64
  %1488 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1487
  %1489 = load i8, ptr %1488, align 1, !tbaa !65
  %1490 = add i32 %1398, -1
  %1491 = zext i32 %1490 to i64
  %1492 = getelementptr inbounds i8, ptr %660, i64 %1491
  %1493 = load i8, ptr %1492, align 1, !tbaa !65
  %1494 = zext i8 %1493 to i32
  %1495 = zext i32 %1398 to i64
  %1496 = getelementptr inbounds i8, ptr %1459, i64 %1495
  %1497 = load i8, ptr %1496, align 1, !tbaa !65
  %1498 = zext i8 %1497 to i32
  %1499 = getelementptr inbounds i8, ptr %660, i64 %1495
  %1500 = load i8, ptr %1499, align 1, !tbaa !65
  %1501 = zext i8 %1500 to i32
  %1502 = and i32 %1481, %814
  %1503 = shl i32 %1502, %816
  %1504 = lshr i32 %1494, %818
  %1505 = add i32 %1504, %1503
  %1506 = zext i32 %1505 to i64
  %1507 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %1506
  %1508 = or disjoint i32 %1501, 256
  br label %1509

1509:                                             ; preds = %1509, %1479
  %1510 = phi i32 [ 256, %1479 ], [ %1535, %1509 ]
  %1511 = phi i32 [ 0, %1479 ], [ %1531, %1509 ]
  %1512 = phi i32 [ %1508, %1479 ], [ %1532, %1509 ]
  %1513 = phi i32 [ %1498, %1479 ], [ %1514, %1509 ]
  %1514 = shl i32 %1513, 1
  %1515 = and i32 %1514, %1510
  %1516 = lshr i32 %1512, 8
  %1517 = add nuw nsw i32 %1516, %1510
  %1518 = add nuw nsw i32 %1517, %1515
  %1519 = zext nneg i32 %1518 to i64
  %1520 = getelementptr inbounds i16, ptr %1507, i64 %1519
  %1521 = load i16, ptr %1520, align 2, !tbaa !63
  %1522 = zext i16 %1521 to i64
  %1523 = and i32 %1512, 128
  %1524 = icmp eq i32 %1523, 0
  %1525 = select i1 %1524, i64 0, i64 2032, !prof !137
  %1526 = xor i64 %1525, %1522
  %1527 = lshr i64 %1526, 4
  %1528 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1527
  %1529 = load i8, ptr %1528, align 1, !tbaa !65
  %1530 = zext i8 %1529 to i32
  %1531 = add i32 %1511, %1530
  %1532 = shl i32 %1512, 1
  %1533 = xor i32 %1532, %1514
  %1534 = xor i32 %1533, -1
  %1535 = and i32 %1510, %1534
  %1536 = icmp ult i32 %1532, 65536
  br i1 %1536, label %1509, label %1537, !prof !138, !llvm.loop !139

1537:                                             ; preds = %1509
  %1538 = zext i8 %1489 to i32
  %1539 = add i32 %1482, 1
  %1540 = and i32 %1539, %797
  %1541 = zext i32 %1540 to i64
  %1542 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 4, i64 %1541
  %1543 = load i16, ptr %1542, align 2, !tbaa !63
  %1544 = lshr i16 %1543, 4
  %1545 = xor i16 %1544, 127
  %1546 = zext nneg i16 %1545 to i64
  %1547 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1546
  %1548 = load i8, ptr %1547, align 1, !tbaa !65
  %1549 = zext i8 %1548 to i32
  %1550 = load i16, ptr %638, align 2, !tbaa !63
  %1551 = lshr i16 %1550, 4
  %1552 = xor i16 %1551, 127
  %1553 = zext nneg i16 %1552 to i64
  %1554 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1553
  %1555 = load i8, ptr %1554, align 1, !tbaa !65
  %1556 = zext i8 %1555 to i32
  %1557 = add i32 %1443, 1
  %1558 = add i32 %1477, %1557
  %1559 = icmp ult i32 %1399, %1558
  br i1 %1559, label %1560, label %1572, !prof !259

1560:                                             ; preds = %1537
  %1561 = trunc i64 %646 to i32
  %1562 = zext i32 %1399 to i64
  %1563 = add i32 %1476, %1561
  %1564 = zext i32 %1563 to i64
  br label %1565

1565:                                             ; preds = %1560, %1565
  %1566 = phi i64 [ %1562, %1560 ], [ %1567, %1565 ]
  %1567 = add nuw nsw i64 %1566, 1
  %1568 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1567, i32 5
  store i32 1073741824, ptr %1568, align 4, !tbaa !140
  %1569 = icmp eq i64 %1567, %1564
  br i1 %1569, label %1570, label %1565, !prof !260, !llvm.loop !261

1570:                                             ; preds = %1565
  %1571 = trunc i64 %1567 to i32
  br label %1572

1572:                                             ; preds = %1570, %1537
  %1573 = phi i32 [ %1399, %1537 ], [ %1571, %1570 ]
  %1574 = add i32 %1477, -2
  %1575 = zext i32 %1574 to i64
  %1576 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 5, i64 %1541, i64 %1575
  %1577 = load i32, ptr %1576, align 4, !tbaa !52
  %1578 = load i16, ptr %639, align 2, !tbaa !63
  %1579 = lshr i16 %1578, 4
  %1580 = zext nneg i16 %1579 to i64
  %1581 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1580
  %1582 = load i8, ptr %1581, align 1, !tbaa !65
  %1583 = zext i8 %1582 to i32
  %1584 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 4, i64 %1541
  %1585 = load i16, ptr %1584, align 2, !tbaa !63
  %1586 = lshr i16 %1585, 4
  %1587 = xor i16 %1586, 127
  %1588 = zext nneg i16 %1587 to i64
  %1589 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %1588
  %1590 = load i8, ptr %1589, align 1, !tbaa !65
  %1591 = zext i8 %1590 to i32
  %1592 = add i32 %1442, %1538
  %1593 = add i32 %1592, %1531
  %1594 = add i32 %1593, %1549
  %1595 = add i32 %1594, %1556
  %1596 = add i32 %1595, %1577
  %1597 = add i32 %1596, %1583
  %1598 = add i32 %1597, %1591
  %1599 = zext i32 %1558 to i64
  %1600 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 5
  %1601 = load i32, ptr %1600, align 4, !tbaa !140
  %1602 = icmp ult i32 %1598, %1601
  br i1 %1602, label %1603, label %1612, !prof !262

1603:                                             ; preds = %1572
  %1604 = trunc i64 %646 to i32
  store i32 %1598, ptr %1600, align 4, !tbaa !140
  %1605 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 6
  store i32 %1557, ptr %1605, align 4, !tbaa !50
  %1606 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 7
  store i32 0, ptr %1606, align 4, !tbaa !53
  %1607 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 1
  store i8 1, ptr %1607, align 4, !tbaa !141
  %1608 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 2
  store i8 1, ptr %1608, align 1, !tbaa !175
  %1609 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 3
  store i32 %1604, ptr %1609, align 4, !tbaa !177
  %1610 = add i32 %1405, 4
  %1611 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1599, i32 4
  store i32 %1610, ptr %1611, align 4, !tbaa !178
  br label %1612

1612:                                             ; preds = %1603, %1572, %1475
  %1613 = phi i32 [ %1399, %1475 ], [ %1573, %1603 ], [ %1573, %1572 ]
  %1614 = add i32 %1397, 1
  %1615 = icmp eq i32 %1614, %1359
  %1616 = select i1 %1615, i32 39, i32 0, !prof !263
  br label %1617

1617:                                             ; preds = %1612, %1453
  %1618 = phi i32 [ 0, %1453 ], [ %1616, %1612 ]
  %1619 = phi i32 [ %1397, %1453 ], [ %1614, %1612 ]
  %1620 = phi i32 [ %1399, %1453 ], [ %1613, %1612 ]
  %1621 = icmp eq i32 %1618, 0
  %1622 = add i32 %1398, 1
  %1623 = add i32 %1396, 1
  br i1 %1621, label %1395, label %1624, !prof !264, !llvm.loop !265

1624:                                             ; preds = %1617, %936, %1357
  %1625 = phi i32 [ %649, %936 ], [ %1344, %1357 ], [ %1620, %1617 ]
  %1626 = zext i32 %1625 to i64
  %1627 = icmp ult i64 %877, %1626
  %1628 = add nuw nsw i64 %648, 1
  %1629 = add i32 %647, -1
  br i1 %1627, label %645, label %1630, !prof !266, !llvm.loop !267

1630:                                             ; preds = %645, %1624
  %1631 = phi i64 [ %877, %1624 ], [ %646, %645 ]
  %1632 = trunc i64 %1631 to i32
  br label %1633

1633:                                             ; preds = %1630, %626
  %1634 = phi i32 [ 1, %626 ], [ %1632, %1630 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  store i32 %1634, ptr %9, align 4, !tbaa !38, !noalias !273
  %1635 = zext i32 %1634 to i64
  %1636 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1635, i32 6
  %1637 = load i32, ptr %1636, align 4, !tbaa !50, !noalias !273
  %1638 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1635, i32 7
  %1639 = load i32, ptr %1638, align 4, !tbaa !53, !noalias !273
  br label %1640

1640:                                             ; preds = %1666, %1633
  %1641 = phi i32 [ %1639, %1633 ], [ %1669, %1666 ]
  %1642 = phi i32 [ %1637, %1633 ], [ %1671, %1666 ]
  %1643 = phi i32 [ %1634, %1633 ], [ %1642, %1666 ]
  %1644 = zext i32 %1643 to i64
  %1645 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1644, i32 1
  %1646 = load i8, ptr %1645, align 4, !tbaa !141, !range !172, !noalias !273, !noundef !173
  %1647 = icmp eq i8 %1646, 0
  br i1 %1647, label %1666, label %1648, !prof !274

1648:                                             ; preds = %1640
  %1649 = zext i32 %1642 to i64
  %1650 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1649, i32 7
  store i32 -1, ptr %1650, align 4, !tbaa !53, !noalias !273
  %1651 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1649, i32 1
  store i8 0, ptr %1651, align 4, !tbaa !141, !noalias !273
  %1652 = add i32 %1642, -1
  %1653 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1649, i32 6
  store i32 %1652, ptr %1653, align 4, !tbaa !50, !noalias !273
  %1654 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1644, i32 2
  %1655 = load i8, ptr %1654, align 1, !tbaa !175, !range !172, !noalias !273, !noundef !173
  %1656 = icmp eq i8 %1655, 0
  br i1 %1656, label %1666, label %1657, !prof !275

1657:                                             ; preds = %1648
  %1658 = zext i32 %1652 to i64
  %1659 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1658, i32 1
  store i8 0, ptr %1659, align 4, !tbaa !141, !noalias !273
  %1660 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1644, i32 3
  %1661 = load i32, ptr %1660, align 4, !tbaa !177, !noalias !273
  %1662 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1658, i32 6
  store i32 %1661, ptr %1662, align 4, !tbaa !50, !noalias !273
  %1663 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1644, i32 4
  %1664 = load i32, ptr %1663, align 4, !tbaa !178, !noalias !273
  %1665 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1658, i32 7
  store i32 %1664, ptr %1665, align 4, !tbaa !53, !noalias !273
  br label %1666

1666:                                             ; preds = %1640, %1657, %1648
  %1667 = zext i32 %1642 to i64
  %1668 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1667, i32 7
  %1669 = load i32, ptr %1668, align 4, !tbaa !53, !noalias !273
  %1670 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %1667, i32 6
  %1671 = load i32, ptr %1670, align 4, !tbaa !50, !noalias !273
  store i32 %1641, ptr %1668, align 4, !tbaa !53, !noalias !273
  store i32 %1643, ptr %1670, align 4, !tbaa !50, !noalias !273
  %1672 = icmp eq i32 %1642, 0
  br i1 %1672, label %1673, label %1640, !prof !276, !llvm.loop !277

1673:                                             ; preds = %1666
  %1674 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 6
  %1675 = load i32, ptr %1674, align 4, !tbaa !50, !noalias !273
  store i32 %1675, ptr %11, align 8, !tbaa !48, !noalias !273
  store i32 %1675, ptr %3, align 4, !tbaa !52, !alias.scope !268, !noalias !271
  %1676 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 7
  %1677 = load i32, ptr %1676, align 4, !tbaa !53, !noalias !273
  store i32 %1677, ptr %2, align 4, !tbaa !52, !alias.scope !271, !noalias !268
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  br label %1678

1678:                                             ; preds = %1673, %623, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @lzma_lzma_optimum_normal, ptr @lzma_mf_find, i64 195988564}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 27196108}
!38 = !{!39, !44, i64 69340}
!39 = !{!"lzma_coder_s", !40, i64 0, !44, i64 736, !42, i64 740, !42, i64 756, !44, i64 2948, !44, i64 2952, !45, i64 2956, !45, i64 2957, !45, i64 2958, !44, i64 2960, !44, i64 2964, !44, i64 2968, !42, i64 2972, !42, i64 27548, !42, i64 27932, !42, i64 27956, !42, i64 27980, !42, i64 28004, !42, i64 28028, !42, i64 28412, !42, i64 28924, !42, i64 29152, !46, i64 29184, !46, i64 47688, !42, i64 66192, !42, i64 67216, !44, i64 69264, !44, i64 69268, !42, i64 69272, !44, i64 69336, !44, i64 69340, !44, i64 69344, !42, i64 69348}
!40 = !{!"", !41, i64 0, !41, i64 8, !44, i64 16, !42, i64 20, !41, i64 24, !41, i64 32, !42, i64 40, !42, i64 272}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"int", !42, i64 0}
!45 = !{!"_Bool", !42, i64 0}
!46 = !{!"", !47, i64 0, !47, i64 2, !42, i64 4, !42, i64 260, !42, i64 516, !42, i64 1028, !44, i64 18436, !42, i64 18440}
!47 = !{!"short", !42, i64 0}
!48 = !{!39, !44, i64 69344}
!49 = !{!"branch_weights", i32 5940681, i32 21255427}
!50 = !{!51, !44, i64 20}
!51 = !{!"", !44, i64 0, !45, i64 4, !45, i64 5, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !42, i64 28}
!52 = !{!44, !44, i64 0}
!53 = !{!51, !44, i64 24}
!54 = !{!55, !44, i64 28}
!55 = !{!"lzma_mf_s", !56, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112}
!56 = !{!"any pointer", !42, i64 0}
!57 = !{!"branch_weights", i32 5610135, i32 330546}
!58 = !{!39, !44, i64 69268}
!59 = !{!"branch_weights", i32 63339, i32 5546796}
!60 = !{!39, !44, i64 69264}
!61 = !{!"branch_weights", i32 1, i32 253355}
!62 = !{!"branch_weights", i32 253355, i32 1}
!63 = !{!47, !47, i64 0}
!64 = !{!"branch_weights", i32 40536960, i32 32429568}
!65 = !{!42, !42, i64 0}
!66 = !{!"branch_weights", i32 12161088, i32 60805440}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"branch_weights", i32 11907733, i32 253355}
!71 = distinct !{!71, !68, !69}
!72 = !{!"branch_weights", i32 8360749, i32 253355}
!73 = distinct !{!73, !68, !69}
!74 = !{!"branch_weights", i32 63339, i32 190017}
!75 = distinct !{!75, !68, !69}
!76 = !{!"branch_weights", i32 253356, i32 760068}
!77 = distinct !{!77, !68, !69}
!78 = !{!"branch_weights", i32 16341462, i32 16341462}
!79 = !{!"branch_weights", i32 7854036, i32 24828888}
!80 = distinct !{!80, !68, !69}
!81 = !{!"branch_weights", i32 63339, i32 7790697}
!82 = distinct !{!82, !68, !69}
!83 = !{!"branch_weights", i32 7854036, i32 23562108}
!84 = distinct !{!84, !68, !69}
!85 = !{!39, !44, i64 69336}
!86 = !{!"branch_weights", i32 205837, i32 5404298}
!87 = !{!"branch_weights", i32 6586784, i32 6586784}
!88 = !{!"branch_weights", i32 3293392, i32 9880176}
!89 = !{!"branch_weights", i32 205837, i32 3087555}
!90 = distinct !{!90, !68, !69}
!91 = !{!92}
!92 = distinct !{!92, !93, !"helper1: argument 0"}
!93 = distinct !{!93, !"helper1"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"helper1: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !93, !"helper1: argument 2"}
!98 = !{!55, !44, i64 96}
!99 = !{!95, !97}
!100 = !{!92, !95, !97}
!101 = !{!39, !44, i64 2952}
!102 = !{!39, !44, i64 2948}
!103 = !{!55, !44, i64 36}
!104 = !{!55, !44, i64 24}
!105 = !{!"branch_weights", i32 0, i32 5940681}
!106 = !{!92, !97}
!107 = !{!92, !95}
!108 = !{!55, !56, i64 0}
!109 = !{!"branch_weights", i32 5810846, i32 129835}
!110 = !{!"branch_weights", i32 937169, i32 22825555}
!111 = !{!"branch_weights", i32 484419, i32 452750}
!112 = !{!"branch_weights", i32 1, i32 72641}
!113 = !{!"branch_weights", i32 33807812, i32 411777}
!114 = !{!"branch_weights", i32 72641, i32 34146948}
!115 = distinct !{!115, !68, !69}
!116 = !{!"branch_weights", i32 87834, i32 396585}
!117 = !{!"branch_weights", i32 5940681, i32 17822043}
!118 = distinct !{!118, !68, !69}
!119 = !{!"branch_weights", i32 0, i32 129835}
!120 = !{!55, !56, i64 56}
!121 = !{!"VP", i32 0, i64 129835, i64 -4558510992144367732, i64 129835}
!122 = !{!"branch_weights", i32 5477146, i32 333700}
!123 = !{!124, !44, i64 4}
!124 = !{!"", !44, i64 0, !44, i64 4}
!125 = !{!"branch_weights", i32 0, i32 333700}
!126 = !{!"VP", i32 0, i64 333700, i64 -4558510992144367732, i64 333700}
!127 = !{!"branch_weights", i32 4619463, i32 857683}
!128 = !{!"branch_weights", i32 4515008, i32 962138}
!129 = !{!39, !44, i64 736}
!130 = !{!51, !44, i64 0}
!131 = !{!39, !44, i64 2960}
!132 = !{!39, !44, i64 2968}
!133 = !{!39, !44, i64 2964}
!134 = !{!"branch_weights", i32 245379194, i32 29774916}
!135 = !{!"branch_weights", i32 134678991, i32 103520337}
!136 = !{!"branch_weights", i32 29774916, i32 208424412}
!137 = !{!"branch_weights", i32 1179118894, i32 783914658}
!138 = !{!"branch_weights", i32 1717654358, i32 245379194}
!139 = distinct !{!139, !68, !69}
!140 = !{!51, !44, i64 16}
!141 = !{!51, !45, i64 4}
!142 = !{!"branch_weights", i32 808378, i32 153760}
!143 = !{!"branch_weights", i32 114055, i32 39705}
!144 = !{!"branch_weights", i32 103569, i32 858569}
!145 = !{!"branch_weights", i32 858569, i32 2575707}
!146 = distinct !{!146, !68, !69}
!147 = !{!"branch_weights", i32 7743481, i32 858569}
!148 = distinct !{!148, !68, !69}
!149 = !{!"branch_weights", i32 824332, i32 34237}
!150 = !{!"branch_weights", i32 23549, i32 835020}
!151 = !{!"branch_weights", i32 3326799, i32 107477}
!152 = !{!"branch_weights", i32 34237, i32 73240}
!153 = !{!"branch_weights", i32 31197, i32 42043}
!154 = !{!"branch_weights", i32 1059954, i32 203037}
!155 = !{!"branch_weights", i32 1155514, i32 107477}
!156 = distinct !{!156, !68, !69}
!157 = distinct !{!157, !68, !69}
!158 = !{!124, !44, i64 0}
!159 = !{!"branch_weights", i32 11528, i32 835020}
!160 = distinct !{!160, !68, !69}
!161 = !{!"branch_weights", i32 2410628, i32 5752384}
!162 = !{!"branch_weights", i32 828154, i32 7334858}
!163 = !{!"branch_weights", i32 5816062, i32 1518796}
!164 = !{!"branch_weights", i32 7639857, i32 523155}
!165 = !{!"branch_weights", i32 6544232, i32 1618780}
!166 = !{!"branch_weights", i32 7327992, i32 835020}
!167 = !{!"branch_weights", i32 6544232, i32 783760}
!168 = distinct !{!168, !69}
!169 = !{!"branch_weights", i32 5082112, i32 858569}
!170 = !{!"branch_weights", i32 528022, i32 1}
!171 = !{!"branch_weights", i32 189844529, i32 330546}
!172 = !{i8 0, i8 2}
!173 = !{}
!174 = !{!"branch_weights", i32 187761283, i32 2083246}
!175 = !{!51, !45, i64 5}
!176 = !{!"branch_weights", i32 24733, i32 2058513}
!177 = !{!51, !44, i64 8}
!178 = !{!51, !44, i64 12}
!179 = !{!"branch_weights", i32 1434143, i32 624370}
!180 = !{!"branch_weights", i32 1241727, i32 192416}
!181 = !{!"branch_weights", i32 174539, i32 449831}
!182 = !{!"branch_weights", i32 1439335, i32 643911}
!183 = !{!"branch_weights", i32 5366, i32 2077880}
!184 = !{!"branch_weights", i32 32929551, i32 156914978}
!185 = !{!"branch_weights", i32 3665688, i32 29263863}
!186 = !{!"branch_weights", i32 3561296, i32 104392}
!187 = !{!"branch_weights", i32 18484324, i32 10779539}
!188 = !{!"branch_weights", i32 4151649, i32 25112214}
!189 = !{!"branch_weights", i32 154831732, i32 2083246}
!190 = !{!"branch_weights", i32 2058513, i32 0}
!191 = !{!"branch_weights", i32 47630439, i32 107226026}
!192 = !{!"branch_weights", i32 32404386, i32 15226053}
!193 = !{!"branch_weights", i32 19582104, i32 87643922}
!194 = !{!"branch_weights", i32 49064582, i32 107850396}
!195 = !{!"branch_weights", i32 29015122, i32 20049460}
!196 = !{!"branch_weights", i32 49064581, i32 1}
!197 = !{!"branch_weights", i32 31585173, i32 158259356}
!198 = !{!"branch_weights", i32 138432409, i32 51412120}
!199 = !{!"branch_weights", i32 132162655, i32 6269754}
!200 = !{!"branch_weights", i32 32330993, i32 99831662}
!201 = !{!"branch_weights", i32 102450734, i32 3650682}
!202 = !{!"branch_weights", i32 13024, i32 189831505}
!203 = !{!"branch_weights", i32 163735555, i32 26095950}
!204 = !{!"branch_weights", i32 3620, i32 1}
!205 = !{!"branch_weights", i32 8086445, i32 26092329}
!206 = !{!"branch_weights", i32 3620, i32 34175154}
!207 = distinct !{!207, !68, !69}
!208 = !{!"branch_weights", i32 912362, i32 25183588}
!209 = !{!"branch_weights", i32 491414, i32 420948}
!210 = !{!"branch_weights", i32 110868, i32 801494}
!211 = !{!"branch_weights", i32 599612, i32 312750}
!212 = !{!"branch_weights", i32 599612, i32 0}
!213 = distinct !{!213, !68, !69}
!214 = !{!"branch_weights", i32 91476, i32 820886}
!215 = !{!"branch_weights", i32 184366, i32 189647139}
!216 = !{!"branch_weights", i32 233979940, i32 525346080}
!217 = !{!"branch_weights", i32 183533545, i32 50446395}
!218 = !{!"branch_weights", i32 263565, i32 1}
!219 = !{!"branch_weights", i32 1697273389, i32 183269979}
!220 = !{!"branch_weights", i32 263565, i32 1880279803}
!221 = distinct !{!221, !68, !69}
!222 = !{!"branch_weights", i32 3624908, i32 179908637}
!223 = !{!"branch_weights", i32 3624908, i32 0}
!224 = distinct !{!224, !68, !69}
!225 = !{!"branch_weights", i32 116865865, i32 66667680}
!226 = !{!"branch_weights", i32 31929710, i32 34737970}
!227 = !{!"branch_weights", i32 75418467, i32 1805388467}
!228 = !{!"branch_weights", i32 1697273389, i32 183533545}
!229 = distinct !{!229, !68, !69}
!230 = !{!"branch_weights", i32 594220, i32 1}
!231 = !{!"branch_weights", i32 611059789, i32 182939324}
!232 = !{!"branch_weights", i32 594220, i32 793404893}
!233 = distinct !{!233, !68, !69}
!234 = !{!"branch_weights", i32 55591360, i32 127942185}
!235 = !{!"branch_weights", i32 22053451, i32 33537909}
!236 = !{!"branch_weights", i32 22053451, i32 0}
!237 = distinct !{!237, !68, !69}
!238 = !{!"branch_weights", i32 3733041, i32 51858319}
!239 = !{!"branch_weights", i32 189831505, i32 569494515}
!240 = distinct !{!240, !68, !69}
!241 = !{!"branch_weights", i32 109828, i32 184366}
!242 = distinct !{!242, !68, !69}
!243 = !{!"branch_weights", i32 42004191, i32 147827314}
!244 = !{!"branch_weights", i32 130745024, i32 17082290}
!245 = !{!"branch_weights", i32 0, i32 130745024}
!246 = distinct !{!246, !68, !69}
!247 = !{!"branch_weights", i32 86561411, i32 147827314}
!248 = distinct !{!248, !68, !69}
!249 = !{!"branch_weights", i32 352551907, i32 1125684365}
!250 = !{!"branch_weights", i32 227243250, i32 1250993022}
!251 = !{!"branch_weights", i32 954716413, i32 296276609}
!252 = !{!"branch_weights", i32 359430046, i32 1118806226}
!253 = !{!"branch_weights", i32 357661623, i32 1120574649}
!254 = !{!"branch_weights", i32 292654, i32 1}
!255 = !{!"branch_weights", i32 285720408, i32 357368968}
!256 = !{!"branch_weights", i32 642796722, i32 292654}
!257 = distinct !{!257, !68, !69}
!258 = !{!"branch_weights", i32 28756083, i32 328905540}
!259 = !{!"branch_weights", i32 28756082, i32 1}
!260 = !{!"branch_weights", i32 28756082, i32 3087493}
!261 = distinct !{!261, !68, !69}
!262 = !{!"branch_weights", i32 6678624, i32 22077459}
!263 = !{!"branch_weights", i32 147827314, i32 209834309}
!264 = !{!"branch_weights", i32 1330408958, i32 147827314}
!265 = distinct !{!265, !69}
!266 = !{!"branch_weights", i32 189647053, i32 528022}
!267 = distinct !{!267, !68, !69}
!268 = !{!269}
!269 = distinct !{!269, !270, !"backward: argument 0"}
!270 = distinct !{!270, !"backward"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"backward: argument 1"}
!273 = !{!269, !272}
!274 = !{!"branch_weights", i32 21139870, i32 974130}
!275 = !{!"branch_weights", i32 12362, i32 961768}
!276 = !{!"branch_weights", i32 858569, i32 21255431}
!277 = distinct !{!277, !68, !69}

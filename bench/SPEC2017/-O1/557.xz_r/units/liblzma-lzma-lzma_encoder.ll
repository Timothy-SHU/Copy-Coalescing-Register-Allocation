; ModuleID = 'liblzma/lzma/lzma_encoder.c'
source_filename = "liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_lzma_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !43 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !44, !range !54, !noundef !55
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %53, !prof !56

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !60
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22, !prof !61

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %718, label %52

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  tail call void %24(ptr noundef %1, i32 noundef 1) #11, !prof !64
  %25 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  store i32 0, ptr %25, align 4, !tbaa !65
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %27 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %28
  store i32 0, ptr %29, align 4, !tbaa !67
  %30 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %28
  store ptr %26, ptr %30, align 8, !tbaa !68
  %31 = add i64 %28, 1
  store i64 %31, ptr %27, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %1, align 8, !tbaa !69
  %34 = load i8, ptr %33, align 1, !tbaa !70
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %36, %22
  %37 = phi i64 [ %31, %22 ], [ %47, %36 ]
  %38 = phi i32 [ 1, %22 ], [ %49, %36 ]
  %39 = phi i32 [ 8, %22 ], [ %40, %36 ]
  %40 = add nsw i32 %39, -1
  %41 = lshr i32 %35, %40
  %42 = and i32 %41, 1
  %43 = zext i32 %38 to i64
  %44 = getelementptr inbounds i16, ptr %32, i64 %43
  %45 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %37
  store i32 %42, ptr %45, align 4, !tbaa !67
  %46 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %37
  store ptr %44, ptr %46, align 8, !tbaa !68
  %47 = add i64 %37, 1
  %48 = shl i32 %38, 1
  %49 = or disjoint i32 %42, %48
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %51, label %36, !prof !71, !llvm.loop !72

51:                                               ; preds = %36
  store i64 %47, ptr %27, align 8, !tbaa !66
  br label %52

52:                                               ; preds = %51, %18
  store i8 1, ptr %9, align 1, !tbaa !44
  br label %53

53:                                               ; preds = %52, %6
  %54 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !57
  %56 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !65
  %58 = sub i32 %55, %57
  %59 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %61 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 2
  %62 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %63 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %64 = icmp eq i32 %5, -1
  %65 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %66 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 7
  %67 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 1
  %72 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 4
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 1
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  %75 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %76 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  %77 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 3
  %80 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %82 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %83 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 3
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %88 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %89 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 1
  %90 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 4
  %91 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 1
  %92 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %94 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %95 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  br label %96

96:                                               ; preds = %677, %53
  %97 = phi i32 [ %58, %53 ], [ %681, %677 ]
  %98 = load i64, ptr %59, align 8, !tbaa !75
  %99 = load i64, ptr %60, align 8, !tbaa !66
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %207, !prof !76

101:                                              ; preds = %96
  %102 = load i32, ptr %61, align 8, !tbaa !77
  br label %103

103:                                              ; preds = %203, %101
  %104 = phi i32 [ %204, %203 ], [ %102, %101 ]
  %105 = icmp ult i32 %104, 16777216
  br i1 %105, label %106, label %134, !prof !78

106:                                              ; preds = %103
  %107 = load i64, ptr %0, align 8, !tbaa !79
  %108 = and i64 %107, -16777216
  %109 = icmp eq i64 %108, 4278190080
  br i1 %109, label %128, label %110, !prof !80

110:                                              ; preds = %106
  %111 = load i64, ptr %3, align 8, !tbaa !81
  %112 = lshr i64 %107, 32
  %113 = trunc i64 %112 to i8
  br label %114

114:                                              ; preds = %110, %117
  %115 = phi i64 [ %111, %110 ], [ %121, %117 ]
  %116 = icmp eq i64 %115, %4
  br i1 %116, label %718, label %117, !prof !82

117:                                              ; preds = %114
  %118 = load i8, ptr %62, align 4, !tbaa !83
  %119 = add i8 %118, %113
  %120 = getelementptr inbounds i8, ptr %2, i64 %115
  store i8 %119, ptr %120, align 1, !tbaa !70
  %121 = add i64 %115, 1
  store i64 %121, ptr %3, align 8, !tbaa !81
  store i8 -1, ptr %62, align 4, !tbaa !83
  %122 = load i64, ptr %63, align 8, !tbaa !84
  %123 = add i64 %122, -1
  store i64 %123, ptr %63, align 8, !tbaa !84
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %114, !prof !85, !llvm.loop !86

125:                                              ; preds = %117
  %126 = lshr i64 %107, 24
  %127 = trunc i64 %126 to i8
  store i8 %127, ptr %62, align 4, !tbaa !83
  br label %128

128:                                              ; preds = %125, %106
  %129 = load i64, ptr %63, align 8, !tbaa !84
  %130 = add i64 %129, 1
  store i64 %130, ptr %63, align 8, !tbaa !84
  %131 = shl i64 %107, 8
  %132 = and i64 %131, 4294967040
  store i64 %132, ptr %0, align 8, !tbaa !79
  %133 = shl nuw i32 %104, 8
  store i32 %133, ptr %61, align 8, !tbaa !77
  br label %134

134:                                              ; preds = %128, %103
  %135 = phi i32 [ %133, %128 ], [ %104, %103 ]
  %136 = load i64, ptr %59, align 8, !tbaa !75
  %137 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !67
  switch i32 %138, label %203 [
    i32 0, label %139
    i32 1, label %150
    i32 2, label %163
    i32 3, label %165
    i32 4, label %170
  ], !prof !87

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %136
  %141 = load ptr, ptr %140, align 8, !tbaa !68
  %142 = load i16, ptr %141, align 2, !tbaa !88
  %143 = lshr i32 %135, 11
  %144 = zext i16 %142 to i32
  %145 = mul i32 %143, %144
  store i32 %145, ptr %61, align 8, !tbaa !77
  %146 = sub nsw i32 2048, %144
  %147 = lshr i32 %146, 5
  %148 = trunc i32 %147 to i16
  %149 = add i16 %142, %148
  store i16 %149, ptr %141, align 2, !tbaa !88
  br label %203

150:                                              ; preds = %134
  %151 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %136
  %152 = load ptr, ptr %151, align 8, !tbaa !68
  %153 = load i16, ptr %152, align 2, !tbaa !88
  %154 = zext i16 %153 to i32
  %155 = lshr i32 %135, 11
  %156 = mul i32 %155, %154
  %157 = zext i32 %156 to i64
  %158 = load i64, ptr %0, align 8, !tbaa !79
  %159 = add i64 %158, %157
  store i64 %159, ptr %0, align 8, !tbaa !79
  %160 = sub i32 %135, %156
  store i32 %160, ptr %61, align 8, !tbaa !77
  %161 = lshr i16 %153, 5
  %162 = sub i16 %153, %161
  store i16 %162, ptr %152, align 2, !tbaa !88
  br label %203

163:                                              ; preds = %134
  %164 = lshr i32 %135, 1
  store i32 %164, ptr %61, align 8, !tbaa !77
  br label %203

165:                                              ; preds = %134
  %166 = lshr i32 %135, 1
  store i32 %166, ptr %61, align 8, !tbaa !77
  %167 = zext nneg i32 %166 to i64
  %168 = load i64, ptr %0, align 8, !tbaa !79
  %169 = add i64 %168, %167
  store i64 %169, ptr %0, align 8, !tbaa !79
  br label %203

170:                                              ; preds = %134
  store i32 -1, ptr %61, align 8, !tbaa !77
  %171 = load i64, ptr %0, align 8, !tbaa !79
  br label %172

172:                                              ; preds = %194, %170
  %173 = phi i64 [ %198, %194 ], [ %171, %170 ]
  %174 = and i64 %173, -16777216
  %175 = icmp eq i64 %174, 4278190080
  br i1 %175, label %194, label %176, !prof !89

176:                                              ; preds = %172
  %177 = load i64, ptr %3, align 8, !tbaa !81
  %178 = lshr i64 %173, 32
  %179 = trunc i64 %178 to i8
  br label %180

180:                                              ; preds = %176, %183
  %181 = phi i64 [ %177, %176 ], [ %187, %183 ]
  %182 = icmp eq i64 %181, %4
  br i1 %182, label %718, label %183, !prof !90

183:                                              ; preds = %180
  %184 = load i8, ptr %62, align 4, !tbaa !83
  %185 = add i8 %184, %179
  %186 = getelementptr inbounds i8, ptr %2, i64 %181
  store i8 %185, ptr %186, align 1, !tbaa !70
  %187 = add i64 %181, 1
  store i64 %187, ptr %3, align 8, !tbaa !81
  store i8 -1, ptr %62, align 4, !tbaa !83
  %188 = load i64, ptr %63, align 8, !tbaa !84
  %189 = add i64 %188, -1
  store i64 %189, ptr %63, align 8, !tbaa !84
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %180, !prof !91, !llvm.loop !86

191:                                              ; preds = %183
  %192 = lshr i64 %173, 24
  %193 = trunc i64 %192 to i8
  store i8 %193, ptr %62, align 4, !tbaa !83
  br label %194

194:                                              ; preds = %191, %172
  %195 = load i64, ptr %63, align 8, !tbaa !84
  %196 = add i64 %195, 1
  store i64 %196, ptr %63, align 8, !tbaa !84
  %197 = shl i64 %173, 8
  %198 = and i64 %197, 4294967040
  store i64 %198, ptr %0, align 8, !tbaa !79
  %199 = load i64, ptr %59, align 8, !tbaa !75
  %200 = add i64 %199, 1
  store i64 %200, ptr %59, align 8, !tbaa !75
  %201 = icmp ult i64 %200, %99
  br i1 %201, label %172, label %202, !prof !92, !llvm.loop !93

202:                                              ; preds = %194
  store i64 0, ptr %0, align 8, !tbaa !79
  store i64 1, ptr %63, align 8, !tbaa !84
  store i32 -1, ptr %61, align 8, !tbaa !77
  store i8 0, ptr %62, align 4, !tbaa !83
  br label %207

203:                                              ; preds = %165, %163, %150, %139, %134
  %204 = phi i32 [ %166, %165 ], [ %164, %163 ], [ %160, %150 ], [ %145, %139 ], [ %135, %134 ]
  %205 = add i64 %136, 1
  store i64 %205, ptr %59, align 8, !tbaa !75
  %206 = icmp ult i64 %205, %99
  br i1 %206, label %103, label %207, !prof !94, !llvm.loop !95

207:                                              ; preds = %203, %96, %202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  br i1 %64, label %219, label %208, !prof !96

208:                                              ; preds = %207
  %209 = load i32, ptr %54, align 8, !tbaa !57
  %210 = load i32, ptr %56, align 4, !tbaa !65
  %211 = sub i32 %209, %210
  %212 = icmp ult i32 %211, %5
  br i1 %212, label %213, label %682, !prof !76

213:                                              ; preds = %208
  %214 = load i64, ptr %3, align 8, !tbaa !81
  %215 = load i64, ptr %65, align 8, !tbaa !84
  %216 = add i64 %214, 4
  %217 = add i64 %216, %215
  %218 = icmp ugt i64 %217, 61438
  br i1 %218, label %682, label %219, !prof !97

219:                                              ; preds = %213, %207
  %220 = load i32, ptr %54, align 8, !tbaa !57
  %221 = load i32, ptr %66, align 8, !tbaa !60
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %230, label %223, !prof !98

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %225 = load i32, ptr %224, align 8, !tbaa !62
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %718, label %227, !prof !99

227:                                              ; preds = %223
  %228 = load i32, ptr %56, align 4, !tbaa !65
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %682, label %230, !prof !100

230:                                              ; preds = %227, %219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %231 = load i8, ptr %67, align 4, !tbaa !101, !range !54, !noundef !55
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %234, label %233, !prof !102

233:                                              ; preds = %230
  call void @lzma_lzma_optimum_fast(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7) #11
  br label %235

234:                                              ; preds = %230
  call void @lzma_lzma_optimum_normal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %97) #11
  br label %235

235:                                              ; preds = %234, %233
  %236 = load i32, ptr %8, align 4, !tbaa !67
  %237 = load i32, ptr %7, align 4, !tbaa !67
  %238 = load i32, ptr %68, align 8, !tbaa !103
  %239 = and i32 %238, %97
  %240 = icmp eq i32 %236, -1
  %241 = zext i32 %239 to i64
  %242 = load i64, ptr %60, align 8, !tbaa !66
  %243 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %242
  %244 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %242
  %245 = add i64 %242, 1
  br i1 %240, label %246, label %337, !prof !104

246:                                              ; preds = %235
  %247 = load i32, ptr %92, align 8, !tbaa !105
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %248, i64 %241
  store i32 0, ptr %243, align 4, !tbaa !67
  store ptr %249, ptr %244, align 8, !tbaa !68
  store i64 %245, ptr %60, align 8, !tbaa !66
  %250 = load ptr, ptr %1, align 8, !tbaa !69
  %251 = load i32, ptr %54, align 8, !tbaa !57
  %252 = load i32, ptr %56, align 4, !tbaa !65
  %253 = sub i32 %251, %252
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %250, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !70
  %257 = load i32, ptr %93, align 8, !tbaa !106
  %258 = and i32 %257, %97
  %259 = load i32, ptr %94, align 4, !tbaa !107
  %260 = shl i32 %258, %259
  %261 = add i32 %253, -1
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, ptr %250, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !70
  %265 = zext i8 %264 to i32
  %266 = sub i32 8, %259
  %267 = lshr i32 %265, %266
  %268 = add i32 %267, %260
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %269
  %271 = load i32, ptr %92, align 8, !tbaa !105
  %272 = icmp ult i32 %271, 7
  br i1 %272, label %273, label %291, !prof !108

273:                                              ; preds = %246
  %274 = zext i8 %256 to i32
  %275 = load i64, ptr %60, align 8, !tbaa !66
  br label %276

276:                                              ; preds = %276, %273
  %277 = phi i64 [ %275, %273 ], [ %287, %276 ]
  %278 = phi i32 [ 1, %273 ], [ %289, %276 ]
  %279 = phi i32 [ 8, %273 ], [ %280, %276 ]
  %280 = add nsw i32 %279, -1
  %281 = lshr i32 %274, %280
  %282 = and i32 %281, 1
  %283 = zext i32 %278 to i64
  %284 = getelementptr inbounds i16, ptr %270, i64 %283
  %285 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %277
  store i32 %282, ptr %285, align 4, !tbaa !67
  %286 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %277
  store ptr %284, ptr %286, align 8, !tbaa !68
  %287 = add i64 %277, 1
  %288 = shl i32 %278, 1
  %289 = or disjoint i32 %282, %288
  %290 = icmp eq i32 %280, 0
  br i1 %290, label %325, label %276, !prof !109, !llvm.loop !72

291:                                              ; preds = %246
  %292 = load i32, ptr %95, align 4, !tbaa !67
  %293 = xor i32 %292, -1
  %294 = sub i32 %251, %252
  %295 = add i32 %294, %293
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, ptr %250, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !70
  %299 = zext i8 %298 to i32
  %300 = zext i8 %256 to i32
  %301 = or disjoint i32 %300, 256
  %302 = load i64, ptr %60, align 8, !tbaa !66
  br label %303

303:                                              ; preds = %303, %291
  %304 = phi i64 [ %302, %291 ], [ %319, %303 ]
  %305 = phi i32 [ 256, %291 ], [ %323, %303 ]
  %306 = phi i32 [ %301, %291 ], [ %320, %303 ]
  %307 = phi i32 [ %299, %291 ], [ %308, %303 ]
  %308 = shl i32 %307, 1
  %309 = and i32 %308, %305
  %310 = lshr i32 %306, 8
  %311 = add nuw nsw i32 %310, %305
  %312 = add nuw nsw i32 %311, %309
  %313 = lshr i32 %306, 7
  %314 = and i32 %313, 1
  %315 = zext nneg i32 %312 to i64
  %316 = getelementptr inbounds i16, ptr %270, i64 %315
  %317 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %304
  store i32 %314, ptr %317, align 4, !tbaa !67
  %318 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %304
  store ptr %316, ptr %318, align 8, !tbaa !68
  %319 = add i64 %304, 1
  %320 = shl i32 %306, 1
  %321 = xor i32 %320, %308
  %322 = xor i32 %321, -1
  %323 = and i32 %305, %322
  %324 = icmp ult i32 %320, 65536
  br i1 %324, label %303, label %325, !prof !110, !llvm.loop !111

325:                                              ; preds = %303, %276
  %326 = phi i64 [ %287, %276 ], [ %319, %303 ]
  store i64 %326, ptr %60, align 8, !tbaa !66
  %327 = load i32, ptr %92, align 8, !tbaa !105
  %328 = icmp ult i32 %327, 4
  br i1 %328, label %335, label %329, !prof !112

329:                                              ; preds = %325
  %330 = icmp ult i32 %327, 10
  br i1 %330, label %331, label %333, !prof !113

331:                                              ; preds = %329
  %332 = add nsw i32 %327, -3
  br label %335

333:                                              ; preds = %329
  %334 = add i32 %327, -6
  br label %335

335:                                              ; preds = %333, %331, %325
  %336 = phi i32 [ 0, %325 ], [ %332, %331 ], [ %334, %333 ]
  store i32 %336, ptr %92, align 8, !tbaa !105
  br label %677

337:                                              ; preds = %235
  %338 = load i32, ptr %69, align 8, !tbaa !105
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %339, i64 %241
  store i32 1, ptr %243, align 4, !tbaa !67
  store ptr %340, ptr %244, align 8, !tbaa !68
  store i64 %245, ptr %60, align 8, !tbaa !66
  %341 = icmp ult i32 %236, 4
  %342 = load i32, ptr %69, align 8, !tbaa !105
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %343
  %345 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %245
  %346 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %245
  %347 = add i64 %242, 2
  br i1 %341, label %348, label %481, !prof !114

348:                                              ; preds = %337
  store i32 1, ptr %345, align 4, !tbaa !67
  store ptr %344, ptr %346, align 8, !tbaa !68
  store i64 %347, ptr %60, align 8, !tbaa !66
  %349 = icmp eq i32 %236, 0
  %350 = add i64 %242, 4
  br i1 %349, label %351, label %365, !prof !115

351:                                              ; preds = %348
  %352 = load i32, ptr %69, align 8, !tbaa !105
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %353
  %355 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %347
  store i32 0, ptr %355, align 4, !tbaa !67
  %356 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %347
  store ptr %354, ptr %356, align 8, !tbaa !68
  %357 = add i64 %242, 3
  store i64 %357, ptr %60, align 8, !tbaa !66
  %358 = load i32, ptr %69, align 8, !tbaa !105
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %359, i64 %241
  %361 = icmp ne i32 %237, 1
  %362 = zext i1 %361 to i32
  %363 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %357
  store i32 %362, ptr %363, align 4, !tbaa !67
  %364 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %357
  store ptr %360, ptr %364, align 8, !tbaa !68
  store i64 %350, ptr %60, align 8, !tbaa !66
  br label %397

365:                                              ; preds = %348
  %366 = zext nneg i32 %236 to i64
  %367 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !67
  %369 = load i32, ptr %69, align 8, !tbaa !105
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %370
  %372 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %347
  store i32 1, ptr %372, align 4, !tbaa !67
  %373 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %347
  store ptr %371, ptr %373, align 8, !tbaa !68
  %374 = add i64 %242, 3
  store i64 %374, ptr %60, align 8, !tbaa !66
  %375 = icmp eq i32 %236, 1
  %376 = load i32, ptr %69, align 8, !tbaa !105
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %377
  %379 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %374
  %380 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %374
  br i1 %375, label %381, label %382, !prof !116

381:                                              ; preds = %365
  store i32 0, ptr %379, align 4, !tbaa !67
  store ptr %378, ptr %380, align 8, !tbaa !68
  store i64 %350, ptr %60, align 8, !tbaa !66
  br label %395

382:                                              ; preds = %365
  store i32 1, ptr %379, align 4, !tbaa !67
  store ptr %378, ptr %380, align 8, !tbaa !68
  store i64 %350, ptr %60, align 8, !tbaa !66
  %383 = load i32, ptr %69, align 8, !tbaa !105
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %384
  %386 = add nsw i32 %236, -2
  %387 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %350
  store i32 %386, ptr %387, align 4, !tbaa !67
  %388 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %350
  store ptr %385, ptr %388, align 8, !tbaa !68
  %389 = add i64 %242, 5
  store i64 %389, ptr %60, align 8, !tbaa !66
  %390 = icmp eq i32 %236, 3
  br i1 %390, label %391, label %393, !prof !117

391:                                              ; preds = %382
  %392 = load i32, ptr %83, align 4, !tbaa !67
  store i32 %392, ptr %84, align 4, !tbaa !67
  br label %393

393:                                              ; preds = %391, %382
  %394 = load i32, ptr %85, align 4, !tbaa !67
  store i32 %394, ptr %86, align 4, !tbaa !67
  br label %395

395:                                              ; preds = %393, %381
  %396 = load i32, ptr %82, align 4, !tbaa !67
  store i32 %396, ptr %87, align 4, !tbaa !67
  store i32 %368, ptr %82, align 4, !tbaa !67
  br label %397

397:                                              ; preds = %395, %351
  %398 = icmp eq i32 %237, 1
  br i1 %398, label %399, label %403, !prof !118

399:                                              ; preds = %397
  %400 = load i32, ptr %69, align 8, !tbaa !105
  %401 = icmp ult i32 %400, 7
  %402 = select i1 %401, i32 9, i32 11, !prof !119
  store i32 %402, ptr %69, align 8, !tbaa !105
  br label %677

403:                                              ; preds = %397
  %404 = load i8, ptr %67, align 4, !tbaa !101, !range !54, !noundef !55
  %405 = icmp eq i8 %404, 0
  %406 = add i32 %237, -2
  %407 = icmp ult i32 %406, 8
  %408 = load i64, ptr %60, align 8, !tbaa !66
  %409 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %408
  %410 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %408
  %411 = add i64 %408, 1
  br i1 %407, label %412, label %429, !prof !120

412:                                              ; preds = %403
  store i32 0, ptr %409, align 4, !tbaa !67
  store ptr %88, ptr %410, align 8, !tbaa !68
  store i64 %411, ptr %60, align 8, !tbaa !66
  %413 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 2, i64 %241
  br label %414

414:                                              ; preds = %414, %412
  %415 = phi i64 [ %411, %412 ], [ %425, %414 ]
  %416 = phi i32 [ 1, %412 ], [ %427, %414 ]
  %417 = phi i32 [ 3, %412 ], [ %418, %414 ]
  %418 = add nsw i32 %417, -1
  %419 = lshr i32 %406, %418
  %420 = and i32 %419, 1
  %421 = zext i32 %416 to i64
  %422 = getelementptr inbounds i16, ptr %413, i64 %421
  %423 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %415
  store i32 %420, ptr %423, align 4, !tbaa !67
  %424 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %415
  store ptr %422, ptr %424, align 8, !tbaa !68
  %425 = add i64 %415, 1
  %426 = shl i32 %416, 1
  %427 = or disjoint i32 %420, %426
  %428 = icmp eq i32 %418, 0
  br i1 %428, label %469, label %414, !prof !121, !llvm.loop !72

429:                                              ; preds = %403
  store i32 1, ptr %409, align 4, !tbaa !67
  store ptr %88, ptr %410, align 8, !tbaa !68
  store i64 %411, ptr %60, align 8, !tbaa !66
  %430 = add i32 %237, -10
  %431 = icmp ult i32 %430, 8
  %432 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %411
  %433 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %411
  %434 = add i64 %408, 2
  br i1 %431, label %435, label %452, !prof !122

435:                                              ; preds = %429
  store i32 0, ptr %432, align 4, !tbaa !67
  store ptr %91, ptr %433, align 8, !tbaa !68
  store i64 %434, ptr %60, align 8, !tbaa !66
  %436 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 3, i64 %241
  br label %437

437:                                              ; preds = %437, %435
  %438 = phi i64 [ %434, %435 ], [ %448, %437 ]
  %439 = phi i32 [ 1, %435 ], [ %450, %437 ]
  %440 = phi i32 [ 3, %435 ], [ %441, %437 ]
  %441 = add nsw i32 %440, -1
  %442 = lshr i32 %430, %441
  %443 = and i32 %442, 1
  %444 = zext i32 %439 to i64
  %445 = getelementptr inbounds i16, ptr %436, i64 %444
  %446 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %438
  store i32 %443, ptr %446, align 4, !tbaa !67
  %447 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %438
  store ptr %445, ptr %447, align 8, !tbaa !68
  %448 = add i64 %438, 1
  %449 = shl i32 %439, 1
  %450 = or disjoint i32 %443, %449
  %451 = icmp eq i32 %441, 0
  br i1 %451, label %469, label %437, !prof !123, !llvm.loop !72

452:                                              ; preds = %429
  store i32 1, ptr %432, align 4, !tbaa !67
  store ptr %89, ptr %433, align 8, !tbaa !68
  store i64 %434, ptr %60, align 8, !tbaa !66
  %453 = add i32 %237, -18
  br label %454

454:                                              ; preds = %454, %452
  %455 = phi i64 [ %434, %452 ], [ %465, %454 ]
  %456 = phi i32 [ 1, %452 ], [ %467, %454 ]
  %457 = phi i32 [ 8, %452 ], [ %458, %454 ]
  %458 = add nsw i32 %457, -1
  %459 = lshr i32 %453, %458
  %460 = and i32 %459, 1
  %461 = zext i32 %456 to i64
  %462 = getelementptr inbounds i16, ptr %90, i64 %461
  %463 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %455
  store i32 %460, ptr %463, align 4, !tbaa !67
  %464 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %455
  store ptr %462, ptr %464, align 8, !tbaa !68
  %465 = add i64 %455, 1
  %466 = shl i32 %456, 1
  %467 = or disjoint i32 %460, %466
  %468 = icmp eq i32 %458, 0
  br i1 %468, label %469, label %454, !prof !124, !llvm.loop !72

469:                                              ; preds = %454, %437, %414
  %470 = phi i64 [ %425, %414 ], [ %448, %437 ], [ %465, %454 ]
  store i64 %470, ptr %60, align 8, !tbaa !66
  br i1 %405, label %471, label %477, !prof !125

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23, i32 7, i64 %241
  %473 = load i32, ptr %472, align 4, !tbaa !67
  %474 = add i32 %473, -1
  store i32 %474, ptr %472, align 4, !tbaa !67
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477, !prof !126

476:                                              ; preds = %471
  call fastcc void @length_update_prices(ptr noundef nonnull %88, i32 noundef %239)
  br label %477

477:                                              ; preds = %469, %471, %476
  %478 = load i32, ptr %69, align 8, !tbaa !105
  %479 = icmp ult i32 %478, 7
  %480 = select i1 %479, i32 8, i32 11, !prof !127
  store i32 %480, ptr %69, align 8, !tbaa !105
  br label %677

481:                                              ; preds = %337
  store i32 0, ptr %345, align 4, !tbaa !67
  store ptr %344, ptr %346, align 8, !tbaa !68
  store i64 %347, ptr %60, align 8, !tbaa !66
  %482 = add i32 %236, -4
  %483 = load i32, ptr %69, align 8, !tbaa !105
  %484 = icmp ult i32 %483, 7
  %485 = select i1 %484, i32 7, i32 10, !prof !128
  store i32 %485, ptr %69, align 8, !tbaa !105
  %486 = load i8, ptr %67, align 4, !tbaa !101, !range !54, !noundef !55
  %487 = icmp eq i8 %486, 0
  %488 = add i32 %237, -2
  %489 = icmp ult i32 %488, 8
  %490 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %347
  %491 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %347
  %492 = add i64 %242, 3
  br i1 %489, label %493, label %510, !prof !120

493:                                              ; preds = %481
  store i32 0, ptr %490, align 4, !tbaa !67
  store ptr %70, ptr %491, align 8, !tbaa !68
  store i64 %492, ptr %60, align 8, !tbaa !66
  %494 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 2, i64 %241
  br label %495

495:                                              ; preds = %495, %493
  %496 = phi i64 [ %492, %493 ], [ %506, %495 ]
  %497 = phi i32 [ 1, %493 ], [ %508, %495 ]
  %498 = phi i32 [ 3, %493 ], [ %499, %495 ]
  %499 = add nsw i32 %498, -1
  %500 = lshr i32 %488, %499
  %501 = and i32 %500, 1
  %502 = zext i32 %497 to i64
  %503 = getelementptr inbounds i16, ptr %494, i64 %502
  %504 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %496
  store i32 %501, ptr %504, align 4, !tbaa !67
  %505 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %496
  store ptr %503, ptr %505, align 8, !tbaa !68
  %506 = add i64 %496, 1
  %507 = shl i32 %497, 1
  %508 = or disjoint i32 %501, %507
  %509 = icmp eq i32 %499, 0
  br i1 %509, label %550, label %495, !prof !121, !llvm.loop !72

510:                                              ; preds = %481
  store i32 1, ptr %490, align 4, !tbaa !67
  store ptr %70, ptr %491, align 8, !tbaa !68
  store i64 %492, ptr %60, align 8, !tbaa !66
  %511 = add i32 %237, -10
  %512 = icmp ult i32 %511, 8
  %513 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %492
  %514 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %492
  %515 = add i64 %242, 4
  br i1 %512, label %516, label %533, !prof !122

516:                                              ; preds = %510
  store i32 0, ptr %513, align 4, !tbaa !67
  store ptr %73, ptr %514, align 8, !tbaa !68
  store i64 %515, ptr %60, align 8, !tbaa !66
  %517 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 3, i64 %241
  br label %518

518:                                              ; preds = %518, %516
  %519 = phi i64 [ %515, %516 ], [ %529, %518 ]
  %520 = phi i32 [ 1, %516 ], [ %531, %518 ]
  %521 = phi i32 [ 3, %516 ], [ %522, %518 ]
  %522 = add nsw i32 %521, -1
  %523 = lshr i32 %511, %522
  %524 = and i32 %523, 1
  %525 = zext i32 %520 to i64
  %526 = getelementptr inbounds i16, ptr %517, i64 %525
  %527 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %519
  store i32 %524, ptr %527, align 4, !tbaa !67
  %528 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %519
  store ptr %526, ptr %528, align 8, !tbaa !68
  %529 = add i64 %519, 1
  %530 = shl i32 %520, 1
  %531 = or disjoint i32 %524, %530
  %532 = icmp eq i32 %522, 0
  br i1 %532, label %550, label %518, !prof !123, !llvm.loop !72

533:                                              ; preds = %510
  store i32 1, ptr %513, align 4, !tbaa !67
  store ptr %71, ptr %514, align 8, !tbaa !68
  store i64 %515, ptr %60, align 8, !tbaa !66
  %534 = add i32 %237, -18
  br label %535

535:                                              ; preds = %535, %533
  %536 = phi i64 [ %515, %533 ], [ %546, %535 ]
  %537 = phi i32 [ 1, %533 ], [ %548, %535 ]
  %538 = phi i32 [ 8, %533 ], [ %539, %535 ]
  %539 = add nsw i32 %538, -1
  %540 = lshr i32 %534, %539
  %541 = and i32 %540, 1
  %542 = zext i32 %537 to i64
  %543 = getelementptr inbounds i16, ptr %72, i64 %542
  %544 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %536
  store i32 %541, ptr %544, align 4, !tbaa !67
  %545 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %536
  store ptr %543, ptr %545, align 8, !tbaa !68
  %546 = add i64 %536, 1
  %547 = shl i32 %537, 1
  %548 = or disjoint i32 %541, %547
  %549 = icmp eq i32 %539, 0
  br i1 %549, label %550, label %535, !prof !124, !llvm.loop !72

550:                                              ; preds = %535, %518, %495
  %551 = phi i64 [ %506, %495 ], [ %529, %518 ], [ %546, %535 ]
  store i64 %551, ptr %60, align 8, !tbaa !66
  br i1 %487, label %552, label %558, !prof !125

552:                                              ; preds = %550
  %553 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 7, i64 %241
  %554 = load i32, ptr %553, align 4, !tbaa !67
  %555 = add i32 %554, -1
  store i32 %555, ptr %553, align 4, !tbaa !67
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %558, !prof !126

557:                                              ; preds = %552
  call fastcc void @length_update_prices(ptr noundef nonnull %70, i32 noundef %239)
  br label %558

558:                                              ; preds = %557, %552, %550
  %559 = icmp ult i32 %482, 8192
  br i1 %559, label %560, label %565, !prof !129

560:                                              ; preds = %558
  %561 = zext nneg i32 %482 to i64
  %562 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !70
  %564 = zext i8 %563 to i32
  br label %581

565:                                              ; preds = %558
  %566 = icmp ult i32 %482, 33554432
  br i1 %566, label %567, label %574, !prof !130

567:                                              ; preds = %565
  %568 = lshr i32 %482, 12
  %569 = zext nneg i32 %568 to i64
  %570 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !70
  %572 = zext i8 %571 to i32
  %573 = add nuw nsw i32 %572, 24
  br label %581

574:                                              ; preds = %565
  %575 = lshr i32 %482, 24
  %576 = zext nneg i32 %575 to i64
  %577 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !70
  %579 = zext i8 %578 to i32
  %580 = add nuw nsw i32 %579, 48
  br label %581

581:                                              ; preds = %574, %567, %560
  %582 = phi i32 [ %564, %560 ], [ %573, %567 ], [ %580, %574 ]
  %583 = icmp ult i32 %237, 6
  %584 = select i1 %583, i32 %488, i32 3, !prof !131
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %585
  %587 = load i64, ptr %60, align 8, !tbaa !66
  br label %588

588:                                              ; preds = %588, %581
  %589 = phi i64 [ %587, %581 ], [ %599, %588 ]
  %590 = phi i32 [ 1, %581 ], [ %601, %588 ]
  %591 = phi i32 [ 6, %581 ], [ %592, %588 ]
  %592 = add nsw i32 %591, -1
  %593 = lshr i32 %582, %592
  %594 = and i32 %593, 1
  %595 = zext i32 %590 to i64
  %596 = getelementptr inbounds i16, ptr %586, i64 %595
  %597 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %589
  store i32 %594, ptr %597, align 4, !tbaa !67
  %598 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %589
  store ptr %596, ptr %598, align 8, !tbaa !68
  %599 = add i64 %589, 1
  %600 = shl i32 %590, 1
  %601 = or disjoint i32 %594, %600
  %602 = icmp eq i32 %592, 0
  br i1 %602, label %603, label %588, !prof !132, !llvm.loop !72

603:                                              ; preds = %588
  store i64 %599, ptr %60, align 8, !tbaa !66
  %604 = icmp ugt i32 %582, 3
  br i1 %604, label %605, label %671, !prof !133

605:                                              ; preds = %603
  %606 = lshr i32 %582, 1
  %607 = add nsw i32 %606, -1
  %608 = and i32 %582, 1
  %609 = or disjoint i32 %608, 2
  %610 = shl i32 %609, %607
  %611 = sub i32 %482, %610
  %612 = icmp ult i32 %582, 14
  br i1 %612, label %613, label %636, !prof !134

613:                                              ; preds = %605
  %614 = zext i32 %610 to i64
  %615 = getelementptr inbounds i16, ptr %76, i64 %614
  %616 = zext nneg i32 %582 to i64
  %617 = sub nsw i64 0, %616
  %618 = getelementptr inbounds i16, ptr %615, i64 %617
  %619 = getelementptr inbounds i16, ptr %618, i64 -1
  br label %620

620:                                              ; preds = %620, %613
  %621 = phi i64 [ %599, %613 ], [ %631, %620 ]
  %622 = phi i32 [ %611, %613 ], [ %626, %620 ]
  %623 = phi i32 [ 1, %613 ], [ %633, %620 ]
  %624 = phi i32 [ %607, %613 ], [ %634, %620 ]
  %625 = and i32 %622, 1
  %626 = lshr i32 %622, 1
  %627 = zext i32 %623 to i64
  %628 = getelementptr inbounds i16, ptr %619, i64 %627
  %629 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %621
  store i32 %625, ptr %629, align 4, !tbaa !67
  %630 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %621
  store ptr %628, ptr %630, align 8, !tbaa !68
  %631 = add i64 %621, 1
  %632 = shl i32 %623, 1
  %633 = or disjoint i32 %632, %625
  %634 = add nsw i32 %624, -1
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %670, label %620, !prof !135, !llvm.loop !136

636:                                              ; preds = %605
  %637 = lshr i32 %611, 4
  %638 = add nsw i32 %606, -5
  br label %639

639:                                              ; preds = %639, %636
  %640 = phi i64 [ %599, %636 ], [ %646, %639 ]
  %641 = phi i32 [ %638, %636 ], [ %642, %639 ]
  %642 = add nsw i32 %641, -1
  %643 = lshr i32 %637, %642
  %644 = and i32 %643, 1
  %645 = or disjoint i32 %644, 2
  %646 = add i64 %640, 1
  %647 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %640
  store i32 %645, ptr %647, align 4, !tbaa !67
  %648 = icmp eq i32 %642, 0
  br i1 %648, label %649, label %639, !prof !137, !llvm.loop !138

649:                                              ; preds = %639
  store i64 %646, ptr %60, align 8, !tbaa !66
  %650 = and i32 %611, 15
  br label %651

651:                                              ; preds = %651, %649
  %652 = phi i64 [ %646, %649 ], [ %662, %651 ]
  %653 = phi i32 [ %650, %649 ], [ %657, %651 ]
  %654 = phi i32 [ 1, %649 ], [ %664, %651 ]
  %655 = phi i32 [ 4, %649 ], [ %665, %651 ]
  %656 = and i32 %653, 1
  %657 = lshr i32 %653, 1
  %658 = zext i32 %654 to i64
  %659 = getelementptr inbounds i16, ptr %74, i64 %658
  %660 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %652
  store i32 %656, ptr %660, align 4, !tbaa !67
  %661 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %652
  store ptr %659, ptr %661, align 8, !tbaa !68
  %662 = add i64 %652, 1
  %663 = shl i32 %654, 1
  %664 = or disjoint i32 %663, %656
  %665 = add nsw i32 %655, -1
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %667, label %651, !prof !139, !llvm.loop !136

667:                                              ; preds = %651
  store i64 %662, ptr %60, align 8, !tbaa !66
  %668 = load i32, ptr %75, align 8, !tbaa !140
  %669 = add i32 %668, 1
  store i32 %669, ptr %75, align 8, !tbaa !140
  br label %671

670:                                              ; preds = %620
  store i64 %631, ptr %60, align 8, !tbaa !66
  br label %671

671:                                              ; preds = %603, %667, %670
  %672 = load i32, ptr %78, align 4, !tbaa !67
  store i32 %672, ptr %79, align 4, !tbaa !67
  %673 = load i32, ptr %80, align 4, !tbaa !67
  store i32 %673, ptr %78, align 4, !tbaa !67
  %674 = load i32, ptr %77, align 4, !tbaa !67
  store i32 %674, ptr %80, align 4, !tbaa !67
  store i32 %482, ptr %77, align 4, !tbaa !67
  %675 = load i32, ptr %81, align 4, !tbaa !141
  %676 = add i32 %675, 1
  store i32 %676, ptr %81, align 4, !tbaa !141
  br label %677

677:                                              ; preds = %335, %399, %477, %671
  %678 = load i32, ptr %56, align 4, !tbaa !65
  %679 = sub i32 %678, %237
  store i32 %679, ptr %56, align 4, !tbaa !65
  %680 = load i32, ptr %7, align 4, !tbaa !67
  %681 = add i32 %680, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %96, !llvm.loop !142

682:                                              ; preds = %227, %208, %213
  %683 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %684 = load i8, ptr %683, align 2, !tbaa !143, !range !54, !noundef !55
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %686, label %717, !prof !144

686:                                              ; preds = %682
  store i8 1, ptr %683, align 2, !tbaa !143
  br i1 %64, label %687, label %706, !prof !145

687:                                              ; preds = %686
  %688 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %689 = load i32, ptr %688, align 8, !tbaa !103
  %690 = and i32 %689, %97
  %691 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %692 = load i32, ptr %691, align 8, !tbaa !105
  %693 = zext i32 %692 to i64
  %694 = zext i32 %690 to i64
  %695 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %693, i64 %694
  %696 = load i64, ptr %60, align 8, !tbaa !66
  %697 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %696
  store i32 1, ptr %697, align 4, !tbaa !67
  %698 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %696
  store ptr %695, ptr %698, align 8, !tbaa !68
  %699 = add i64 %696, 1
  store i64 %699, ptr %60, align 8, !tbaa !66
  %700 = load i32, ptr %691, align 8, !tbaa !105
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %701
  %703 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %699
  store i32 0, ptr %703, align 4, !tbaa !67
  %704 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %699
  store ptr %702, ptr %704, align 8, !tbaa !68
  %705 = add i64 %696, 2
  store i64 %705, ptr %60, align 8, !tbaa !66
  call fastcc void @match(ptr noundef %0, i32 noundef %690, i32 noundef -1, i32 noundef 2)
  br label %706

706:                                              ; preds = %687, %686
  %707 = load i64, ptr %60, align 8, !tbaa !66
  br label %708

708:                                              ; preds = %706, %708
  %709 = phi i64 [ 0, %706 ], [ %713, %708 ]
  %710 = phi i64 [ %707, %706 ], [ %711, %708 ]
  %711 = add i64 %710, 1
  %712 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %710
  store i32 4, ptr %712, align 4, !tbaa !67
  %713 = add nuw nsw i64 %709, 1
  %714 = icmp eq i64 %713, 5
  br i1 %714, label %715, label %708, !prof !146, !llvm.loop !147

715:                                              ; preds = %708
  store i64 %711, ptr %60, align 8, !tbaa !66
  %716 = call fastcc zeroext i1 @rc_encode(ptr noundef %0, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br i1 %716, label %718, label %717, !prof !145

717:                                              ; preds = %715, %682
  store i8 0, ptr %683, align 2, !tbaa !143
  br label %718

718:                                              ; preds = %223, %114, %180, %18, %717, %715
  %719 = phi i32 [ 1, %717 ], [ 0, %715 ], [ 0, %18 ], [ 0, %180 ], [ 0, %114 ], [ 0, %223 ]
  ret i32 %719
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @rc_encode(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #2 !prof !148 !PGOFuncName !149 {
  %5 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %5, align 8, !tbaa !75
  %8 = load i64, ptr %6, align 8, !tbaa !66
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %135, !prof !76

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %131
  %17 = load i32, ptr %11, align 8, !tbaa !77
  %18 = icmp ult i32 %17, 16777216
  br i1 %18, label %19, label %50, !prof !78

19:                                               ; preds = %16
  %20 = load i64, ptr %0, align 8, !tbaa !79
  %21 = and i64 %20, -16777216
  %22 = icmp eq i64 %21, 4278190080
  br i1 %22, label %42, label %23, !prof !80

23:                                               ; preds = %19, %26
  %24 = load i64, ptr %2, align 8, !tbaa !81
  %25 = icmp eq i64 %24, %3
  br i1 %25, label %139, label %26, !prof !82

26:                                               ; preds = %23
  %27 = load i8, ptr %12, align 4, !tbaa !83
  %28 = load i64, ptr %0, align 8, !tbaa !79
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i8
  %31 = add i8 %27, %30
  %32 = getelementptr inbounds i8, ptr %1, i64 %24
  store i8 %31, ptr %32, align 1, !tbaa !70
  %33 = load i64, ptr %2, align 8, !tbaa !81
  %34 = add i64 %33, 1
  store i64 %34, ptr %2, align 8, !tbaa !81
  store i8 -1, ptr %12, align 4, !tbaa !83
  %35 = load i64, ptr %13, align 8, !tbaa !84
  %36 = add i64 %35, -1
  store i64 %36, ptr %13, align 8, !tbaa !84
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %23, !prof !85, !llvm.loop !86

38:                                               ; preds = %26
  %39 = load i64, ptr %0, align 8, !tbaa !79
  %40 = lshr i64 %39, 24
  %41 = trunc i64 %40 to i8
  store i8 %41, ptr %14, align 4, !tbaa !83
  br label %42

42:                                               ; preds = %38, %19
  %43 = load i64, ptr %15, align 8, !tbaa !84
  %44 = add i64 %43, 1
  store i64 %44, ptr %15, align 8, !tbaa !84
  %45 = load i64, ptr %0, align 8, !tbaa !79
  %46 = shl i64 %45, 8
  %47 = and i64 %46, 4294967040
  store i64 %47, ptr %0, align 8, !tbaa !79
  %48 = load i32, ptr %11, align 8, !tbaa !77
  %49 = shl i32 %48, 8
  store i32 %49, ptr %11, align 8, !tbaa !77
  br label %50

50:                                               ; preds = %42, %16
  %51 = load i64, ptr %5, align 8, !tbaa !75
  %52 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !67
  switch i32 %53, label %131 [
    i32 0, label %54
    i32 1, label %66
    i32 2, label %80
    i32 3, label %83
    i32 4, label %89
  ], !prof !87

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = load i16, ptr %56, align 2, !tbaa !88
  %58 = load i32, ptr %11, align 8, !tbaa !77
  %59 = lshr i32 %58, 11
  %60 = zext i16 %57 to i32
  %61 = mul i32 %59, %60
  store i32 %61, ptr %11, align 8, !tbaa !77
  %62 = sub nsw i32 2048, %60
  %63 = lshr i32 %62, 5
  %64 = trunc i32 %63 to i16
  %65 = add i16 %57, %64
  store i16 %65, ptr %56, align 2, !tbaa !88
  br label %131

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %51
  %68 = load ptr, ptr %67, align 8, !tbaa !68
  %69 = load i16, ptr %68, align 2, !tbaa !88
  %70 = zext i16 %69 to i32
  %71 = load i32, ptr %11, align 8, !tbaa !77
  %72 = lshr i32 %71, 11
  %73 = mul i32 %72, %70
  %74 = zext i32 %73 to i64
  %75 = load i64, ptr %0, align 8, !tbaa !79
  %76 = add i64 %75, %74
  store i64 %76, ptr %0, align 8, !tbaa !79
  %77 = sub i32 %71, %73
  store i32 %77, ptr %11, align 8, !tbaa !77
  %78 = lshr i16 %69, 5
  %79 = sub i16 %69, %78
  store i16 %79, ptr %68, align 2, !tbaa !88
  br label %131

80:                                               ; preds = %50
  %81 = load i32, ptr %11, align 8, !tbaa !77
  %82 = lshr i32 %81, 1
  store i32 %82, ptr %11, align 8, !tbaa !77
  br label %131

83:                                               ; preds = %50
  %84 = load i32, ptr %11, align 8, !tbaa !77
  %85 = lshr i32 %84, 1
  store i32 %85, ptr %11, align 8, !tbaa !77
  %86 = zext nneg i32 %85 to i64
  %87 = load i64, ptr %0, align 8, !tbaa !79
  %88 = add i64 %87, %86
  store i64 %88, ptr %0, align 8, !tbaa !79
  br label %131

89:                                               ; preds = %50
  %90 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  store i32 -1, ptr %11, align 8, !tbaa !77
  %91 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %92 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %93 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %94 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  br label %95

95:                                               ; preds = %118, %89
  %96 = load i64, ptr %0, align 8, !tbaa !79
  %97 = and i64 %96, -16777216
  %98 = icmp eq i64 %97, 4278190080
  br i1 %98, label %118, label %99, !prof !89

99:                                               ; preds = %95, %102
  %100 = load i64, ptr %2, align 8, !tbaa !81
  %101 = icmp eq i64 %100, %3
  br i1 %101, label %139, label %102, !prof !90

102:                                              ; preds = %99
  %103 = load i8, ptr %91, align 4, !tbaa !83
  %104 = load i64, ptr %0, align 8, !tbaa !79
  %105 = lshr i64 %104, 32
  %106 = trunc i64 %105 to i8
  %107 = add i8 %103, %106
  %108 = getelementptr inbounds i8, ptr %1, i64 %100
  store i8 %107, ptr %108, align 1, !tbaa !70
  %109 = load i64, ptr %2, align 8, !tbaa !81
  %110 = add i64 %109, 1
  store i64 %110, ptr %2, align 8, !tbaa !81
  store i8 -1, ptr %91, align 4, !tbaa !83
  %111 = load i64, ptr %92, align 8, !tbaa !84
  %112 = add i64 %111, -1
  store i64 %112, ptr %92, align 8, !tbaa !84
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %99, !prof !91, !llvm.loop !86

114:                                              ; preds = %102
  %115 = load i64, ptr %0, align 8, !tbaa !79
  %116 = lshr i64 %115, 24
  %117 = trunc i64 %116 to i8
  store i8 %117, ptr %93, align 4, !tbaa !83
  br label %118

118:                                              ; preds = %95, %114
  %119 = load i64, ptr %94, align 8, !tbaa !84
  %120 = add i64 %119, 1
  store i64 %120, ptr %94, align 8, !tbaa !84
  %121 = load i64, ptr %0, align 8, !tbaa !79
  %122 = shl i64 %121, 8
  %123 = and i64 %122, 4294967040
  store i64 %123, ptr %0, align 8, !tbaa !79
  %124 = load i64, ptr %5, align 8, !tbaa !75
  %125 = add i64 %124, 1
  store i64 %125, ptr %5, align 8, !tbaa !75
  %126 = load i64, ptr %90, align 8, !tbaa !66
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %95, label %128, !prof !92, !llvm.loop !93

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  store i64 0, ptr %0, align 8, !tbaa !79
  store i64 1, ptr %129, align 8, !tbaa !84
  store i32 -1, ptr %11, align 8, !tbaa !77
  %130 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  store i8 0, ptr %130, align 4, !tbaa !83
  br label %137

131:                                              ; preds = %50, %83, %80, %66, %54
  %132 = add i64 %51, 1
  store i64 %132, ptr %5, align 8, !tbaa !75
  %133 = load i64, ptr %6, align 8, !tbaa !66
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %16, label %135, !prof !94, !llvm.loop !95

135:                                              ; preds = %131, %4
  %136 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  br label %137

137:                                              ; preds = %128, %135
  %138 = phi ptr [ %136, %135 ], [ %90, %128 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  br label %139

139:                                              ; preds = %23, %99, %137
  %140 = phi i1 [ false, %137 ], [ true, %99 ], [ true, %23 ]
  ret i1 %140
}

declare void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma_encoder_reset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !150 {
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %110, !prof !153

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp ult i32 %8, 5
  %10 = add nuw nsw i32 %8, %4
  %11 = icmp ult i32 %10, 5
  %12 = select i1 %9, i1 %11, i1 false, !prof !153
  br i1 %12, label %13, label %110, !prof !153

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %110, !prof !153

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !156
  %20 = add i32 %19, -2
  %21 = icmp ult i32 %20, 272
  br i1 %21, label %22, label %110, !prof !153

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !157
  %25 = add i32 %24, -1
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %110, !prof !153

27:                                               ; preds = %22
  %28 = shl nsw i32 -1, %15
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i32 %29, ptr %30, align 8, !tbaa !103
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  store i32 %4, ptr %31, align 4, !tbaa !107
  %32 = shl nsw i32 -1, %8
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  store i32 %33, ptr %34, align 8, !tbaa !106
  store i64 0, ptr %0, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  store i64 1, ptr %35, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 2
  store i32 -1, ptr %36, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  store i8 0, ptr %37, align 4, !tbaa !83
  %38 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %39, i8 0, i64 20, i1 false)
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %41 = load i32, ptr %3, align 4, !tbaa !151
  %42 = load i32, ptr %7, align 8, !tbaa !154
  %43 = add i32 %42, %41
  br label %44

44:                                               ; preds = %27, %50
  %45 = phi i32 [ 0, %27 ], [ %51, %50 ]
  %46 = zext i32 %45 to i64
  br label %54

47:                                               ; preds = %50
  %48 = load i32, ptr %30, align 8, !tbaa !103
  %49 = zext i32 %48 to i64
  br label %59

50:                                               ; preds = %54
  %51 = add i32 %45, 1
  %52 = lshr i32 %51, %43
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %44, label %47, !prof !158, !llvm.loop !159

54:                                               ; preds = %44, %54
  %55 = phi i64 [ 0, %44 ], [ %57, %54 ]
  %56 = getelementptr inbounds [768 x i16], ptr %40, i64 %46, i64 %55
  store i16 1024, ptr %56, align 2, !tbaa !88
  %57 = add nuw nsw i64 %55, 1
  %58 = icmp eq i64 %57, 768
  br i1 %58, label %50, label %54, !prof !160, !llvm.loop !161

59:                                               ; preds = %47, %61
  %60 = phi i64 [ 0, %47 ], [ %66, %61 ]
  br label %68

61:                                               ; preds = %68
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %60
  store i16 1024, ptr %62, align 2, !tbaa !88
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %60
  store i16 1024, ptr %63, align 2, !tbaa !88
  %64 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %60
  store i16 1024, ptr %64, align 2, !tbaa !88
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %60
  store i16 1024, ptr %65, align 2, !tbaa !88
  %66 = add nuw nsw i64 %60, 1
  %67 = icmp eq i64 %66, 12
  br i1 %67, label %74, label %59, !prof !162, !llvm.loop !163

68:                                               ; preds = %59, %68
  %69 = phi i64 [ 0, %59 ], [ %72, %68 ]
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %60, i64 %69
  store i16 1024, ptr %70, align 2, !tbaa !88
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %60, i64 %69
  store i16 1024, ptr %71, align 2, !tbaa !88
  %72 = add nuw nsw i64 %69, 1
  %73 = icmp eq i64 %69, %49
  br i1 %73, label %61, label %68, !prof !164, !llvm.loop !165

74:                                               ; preds = %61, %74
  %75 = phi i64 [ %77, %74 ], [ 0, %61 ]
  %76 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %75
  store i16 1024, ptr %76, align 2, !tbaa !88
  %77 = add nuw nsw i64 %75, 1
  %78 = icmp eq i64 %77, 114
  br i1 %78, label %79, label %74, !prof !166, !llvm.loop !167

79:                                               ; preds = %74, %81
  %80 = phi i64 [ %82, %81 ], [ 0, %74 ]
  br label %84

81:                                               ; preds = %84
  %82 = add nuw nsw i64 %80, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %105, label %79, !prof !168, !llvm.loop !169

84:                                               ; preds = %79, %84
  %85 = phi i64 [ 0, %79 ], [ %87, %84 ]
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %80, i64 %85
  store i16 1024, ptr %86, align 2, !tbaa !88
  %87 = add nuw nsw i64 %85, 1
  %88 = icmp eq i64 %87, 64
  br i1 %88, label %81, label %84, !prof !170, !llvm.loop !171

89:                                               ; preds = %105
  %90 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %91 = load i32, ptr %14, align 4, !tbaa !155
  %92 = shl nuw i32 1, %91
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %94 = load i8, ptr %93, align 4, !tbaa !101, !range !54, !noundef !55
  %95 = icmp ne i8 %94, 0
  tail call fastcc void @length_encoder_reset(ptr noundef nonnull %90, i32 noundef %92, i1 noundef zeroext %95)
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %97 = load i32, ptr %14, align 4, !tbaa !155
  %98 = shl nuw i32 1, %97
  %99 = load i8, ptr %93, align 4, !tbaa !101, !range !54, !noundef !55
  %100 = icmp ne i8 %99, 0
  tail call fastcc void @length_encoder_reset(ptr noundef nonnull %96, i32 noundef %98, i1 noundef zeroext %100)
  %101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  store i32 2147483647, ptr %101, align 4, !tbaa !141
  %102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  store i32 2147483647, ptr %102, align 8, !tbaa !140
  %103 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  store i32 0, ptr %103, align 4, !tbaa !172
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  store i32 0, ptr %104, align 8, !tbaa !173
  br label %110

105:                                              ; preds = %81, %105
  %106 = phi i64 [ %108, %105 ], [ 0, %81 ]
  %107 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21, i64 %106
  store i16 1024, ptr %107, align 2, !tbaa !88
  %108 = add nuw nsw i64 %106, 1
  %109 = icmp eq i64 %108, 16
  br i1 %109, label %89, label %105, !prof !174, !llvm.loop !175

110:                                              ; preds = %17, %13, %2, %6, %22, %89
  %111 = phi i32 [ 0, %89 ], [ 8, %22 ], [ 8, %6 ], [ 8, %2 ], [ 8, %13 ], [ 8, %17 ]
  ret i32 %111
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length_encoder_reset(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #4 !prof !176 !PGOFuncName !177 {
  store i16 1024, ptr %0, align 4, !tbaa !178
  %4 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 1
  store i16 1024, ptr %4, align 2, !tbaa !179
  %5 = zext i32 %1 to i64
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8, !prof !180

7:                                                ; preds = %15, %3
  br label %26

8:                                                ; preds = %3, %15
  %9 = phi i64 [ %16, %15 ], [ 0, %3 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %13, %10 ]
  %12 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 2, i64 %9, i64 %11
  store i16 1024, ptr %12, align 2, !tbaa !88
  %13 = add nuw nsw i64 %11, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %18, label %10, !prof !181, !llvm.loop !182

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %7, label %8, !prof !183, !llvm.loop !184

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %21, %18 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 3, i64 %9, i64 %19
  store i16 1024, ptr %20, align 2, !tbaa !88
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %15, label %18, !prof !181, !llvm.loop !185

23:                                               ; preds = %26
  %24 = icmp eq i32 %1, 0
  %25 = or i1 %24, %2
  br i1 %25, label %36, label %31, !prof !186

26:                                               ; preds = %7, %26
  %27 = phi i64 [ %29, %26 ], [ 0, %7 ]
  %28 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 4, i64 %27
  store i16 1024, ptr %28, align 2, !tbaa !88
  %29 = add nuw nsw i64 %27, 1
  %30 = icmp eq i64 %29, 256
  br i1 %30, label %23, label %26, !prof !187, !llvm.loop !188

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ 0, %23 ]
  %33 = trunc i64 %32 to i32
  tail call fastcc void @length_update_prices(ptr noundef nonnull %0, i32 noundef %33)
  %34 = add nuw nsw i64 %32, 1
  %35 = icmp eq i64 %34, %5
  br i1 %35, label %36, label %31, !prof !183, !llvm.loop !189

36:                                               ; preds = %31, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_lzma_encoder_create(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 !prof !190 {
  %5 = load ptr, ptr %0, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !191

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 249576, ptr noundef %1) #11
  store ptr %8, ptr %0, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10, !prof !61

10:                                               ; preds = %7, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !157
  switch i32 %13, label %65 [
    i32 1, label %14
    i32 2, label %16
  ], !prof !192

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 6
  store i8 1, ptr %15, align 4, !tbaa !101
  br label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 6
  store i8 0, ptr %17, align 4, !tbaa !101
  %18 = load i32, ptr %2, align 8, !tbaa !193
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = shl nuw i32 1, %20
  %22 = icmp ult i32 %21, %18
  %23 = add i32 %20, 1
  br i1 %22, label %19, label %24, !prof !194, !llvm.loop !195

24:                                               ; preds = %19
  %25 = shl i32 %20, 1
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 26
  store i32 %25, ptr %26, align 8, !tbaa !196
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !156
  %29 = add i32 %28, -1
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 22, i32 6
  store i32 %29, ptr %30, align 4, !tbaa !197
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 23, i32 6
  store i32 %29, ptr %31, align 4, !tbaa !198
  br label %32

32:                                               ; preds = %24, %14
  %33 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !191

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !200
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i8 [ 0, %32 ], [ %40, %36 ]
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 7
  store i8 %42, ptr %43, align 1, !tbaa !44
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 8
  store i8 0, ptr %44, align 2, !tbaa !143
  store i64 4096, ptr %3, align 8, !tbaa !201
  %45 = load i32, ptr %2, align 8, !tbaa !193
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !203
  %48 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 2
  store i64 4097, ptr %48, align 8, !tbaa !204
  %49 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 3
  store i64 273, ptr %49, align 8, !tbaa !205
  %50 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !156
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 4
  store i64 %52, ptr %53, align 8, !tbaa !206
  %54 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 8
  %55 = load i32, ptr %54, align 8, !tbaa !207
  %56 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 5
  store i32 %55, ptr %56, align 8, !tbaa !208
  %57 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !209
  %59 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 6
  store i32 %58, ptr %59, align 4, !tbaa !210
  %60 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 7
  store ptr %34, ptr %60, align 8, !tbaa !211
  %61 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !200
  %63 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 8
  store i32 %62, ptr %63, align 8, !tbaa !212
  %64 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %11, ptr noundef nonnull %2), !range !213
  br label %65

65:                                               ; preds = %7, %41, %10
  %66 = phi i32 [ %64, %41 ], [ 8, %10 ], [ 5, %7 ]
  ret i32 %66
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 !prof !214 {
  %4 = tail call i32 @lzma_lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma_encoder_init) #11
  ret i32 %4
}

declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @lzma_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #5 !prof !214 {
  %5 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  store ptr @lzma_encode, ptr %5, align 8, !tbaa !215
  %6 = tail call i32 @lzma_lzma_encoder_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !213
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lzma_encoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !214 {
  %2 = alloca %struct.lzma_lz_options, align 8
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp ult i32 %8, 5
  %10 = add nuw nsw i32 %8, %4
  %11 = icmp ult i32 %10, 5
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %51

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !156
  %20 = add i32 %19, -2
  %21 = icmp ult i32 %20, 272
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !157
  %25 = add i32 %24, -1
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  store i64 4096, ptr %2, align 8, !tbaa !201
  %28 = load i32, ptr %0, align 8, !tbaa !193
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !203
  %31 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 2
  store i64 4097, ptr %31, align 8, !tbaa !204
  %32 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 3
  store i64 273, ptr %32, align 8, !tbaa !205
  %33 = zext nneg i32 %19 to i64
  %34 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 4
  store i64 %33, ptr %34, align 8, !tbaa !206
  %35 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !207
  %37 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 5
  store i32 %36, ptr %37, align 8, !tbaa !208
  %38 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !209
  %40 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 6
  store i32 %39, ptr %40, align 4, !tbaa !210
  %41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 7
  store ptr %42, ptr %43, align 8, !tbaa !211
  %44 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !200
  %46 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 8
  store i32 %45, ptr %46, align 8, !tbaa !212
  %47 = call i64 @lzma_lz_encoder_memusage(ptr noundef nonnull %2) #11
  %48 = icmp eq i64 %47, -1
  %49 = add i64 %47, 249576
  %50 = select i1 %48, i64 -1, i64 %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  br label %51

51:                                               ; preds = %17, %13, %1, %6, %22, %27
  %52 = phi i64 [ %50, %27 ], [ -1, %22 ], [ -1, %6 ], [ -1, %1 ], [ -1, %13 ], [ -1, %17 ]
  ret i64 %52
}

declare i64 @lzma_lz_encoder_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @lzma_lzma_lclppb_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !prof !190 {
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %17, !prof !191

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp ult i32 %8, 5
  %10 = add nuw nsw i32 %8, %4
  %11 = icmp ult i32 %10, 5
  %12 = select i1 %9, i1 %11, i1 false, !prof !191
  br i1 %12, label %13, label %17, !prof !191

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = icmp ult i32 %15, 5
  br label %17

17:                                               ; preds = %2, %6, %13
  %18 = phi i1 [ false, %6 ], [ false, %2 ], [ %16, %13 ]
  br i1 %18, label %19, label %29, !prof !191

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !155
  %22 = mul i32 %21, 5
  %23 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !154
  %25 = add i32 %22, %24
  %26 = mul i32 %25, 9
  %27 = add i32 %26, %4
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %1, align 1, !tbaa !70
  br label %29

29:                                               ; preds = %17, %19
  %30 = xor i1 %18, true
  ret i1 %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma_props_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !prof !214 {
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp ult i32 %8, 5
  %10 = add nuw nsw i32 %8, %4
  %11 = icmp ult i32 %10, 5
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %39

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !155
  %20 = mul i32 %19, 5
  %21 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !154
  %23 = add i32 %20, %22
  %24 = mul i32 %23, 9
  %25 = add i32 %24, %4
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %1, align 1, !tbaa !70
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i32, ptr %0, align 8, !tbaa !193
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %27, align 1, !tbaa !70
  %30 = lshr i32 %28, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %31, ptr %32, align 1, !tbaa !70
  %33 = lshr i32 %28, 16
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %34, ptr %35, align 1, !tbaa !70
  %36 = lshr i32 %28, 24
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %37, ptr %38, align 1, !tbaa !70
  br label %39

39:                                               ; preds = %6, %2, %13, %17
  %40 = phi i32 [ 0, %17 ], [ 11, %13 ], [ 11, %2 ], [ 11, %6 ]
  ret i32 %40
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_mode_is_supported(i32 noundef %0) local_unnamed_addr #7 !prof !214 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @match(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !prof !217 !PGOFuncName !218 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !105
  %7 = icmp ult i32 %6, 7
  %8 = select i1 %7, i32 7, i32 10, !prof !128
  store i32 %8, ptr %5, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !101, !range !54, !noundef !55
  %12 = icmp eq i8 %11, 0
  %13 = add i32 %3, -2
  %14 = icmp ult i32 %13, 8
  %15 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %16
  %18 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %16
  %19 = add i64 %16, 1
  br i1 %14, label %20, label %38, !prof !120

20:                                               ; preds = %4
  store i32 0, ptr %17, align 4, !tbaa !67
  store ptr %9, ptr %18, align 8, !tbaa !68
  store i64 %19, ptr %15, align 8, !tbaa !66
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 2, i64 %21
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %19, %20 ], [ %34, %23 ]
  %25 = phi i32 [ 1, %20 ], [ %36, %23 ]
  %26 = phi i32 [ 3, %20 ], [ %27, %23 ]
  %27 = add nsw i32 %26, -1
  %28 = lshr i32 %13, %27
  %29 = and i32 %28, 1
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds i16, ptr %22, i64 %30
  %32 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %24
  store i32 %29, ptr %32, align 4, !tbaa !67
  %33 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %24
  store ptr %31, ptr %33, align 8, !tbaa !68
  %34 = add i64 %24, 1
  %35 = shl i32 %25, 1
  %36 = or disjoint i32 %29, %35
  %37 = icmp eq i32 %27, 0
  br i1 %37, label %81, label %23, !prof !121, !llvm.loop !72

38:                                               ; preds = %4
  store i32 1, ptr %17, align 4, !tbaa !67
  store ptr %9, ptr %18, align 8, !tbaa !68
  store i64 %19, ptr %15, align 8, !tbaa !66
  %39 = add i32 %3, -10
  %40 = icmp ult i32 %39, 8
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 1
  %42 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %19
  %43 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %19
  %44 = add i64 %16, 2
  br i1 %40, label %45, label %63, !prof !122

45:                                               ; preds = %38
  store i32 0, ptr %42, align 4, !tbaa !67
  store ptr %41, ptr %43, align 8, !tbaa !68
  store i64 %44, ptr %15, align 8, !tbaa !66
  %46 = zext i32 %1 to i64
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 3, i64 %46
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i64 [ %44, %45 ], [ %59, %48 ]
  %50 = phi i32 [ 1, %45 ], [ %61, %48 ]
  %51 = phi i32 [ 3, %45 ], [ %52, %48 ]
  %52 = add nsw i32 %51, -1
  %53 = lshr i32 %39, %52
  %54 = and i32 %53, 1
  %55 = zext i32 %50 to i64
  %56 = getelementptr inbounds i16, ptr %47, i64 %55
  %57 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %49
  store i32 %54, ptr %57, align 4, !tbaa !67
  %58 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %49
  store ptr %56, ptr %58, align 8, !tbaa !68
  %59 = add i64 %49, 1
  %60 = shl i32 %50, 1
  %61 = or disjoint i32 %54, %60
  %62 = icmp eq i32 %52, 0
  br i1 %62, label %81, label %48, !prof !123, !llvm.loop !72

63:                                               ; preds = %38
  store i32 1, ptr %42, align 4, !tbaa !67
  store ptr %41, ptr %43, align 8, !tbaa !68
  store i64 %44, ptr %15, align 8, !tbaa !66
  %64 = add i32 %3, -18
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 4
  br label %66

66:                                               ; preds = %66, %63
  %67 = phi i64 [ %44, %63 ], [ %77, %66 ]
  %68 = phi i32 [ 1, %63 ], [ %79, %66 ]
  %69 = phi i32 [ 8, %63 ], [ %70, %66 ]
  %70 = add nsw i32 %69, -1
  %71 = lshr i32 %64, %70
  %72 = and i32 %71, 1
  %73 = zext i32 %68 to i64
  %74 = getelementptr inbounds i16, ptr %65, i64 %73
  %75 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %67
  store i32 %72, ptr %75, align 4, !tbaa !67
  %76 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %67
  store ptr %74, ptr %76, align 8, !tbaa !68
  %77 = add i64 %67, 1
  %78 = shl i32 %68, 1
  %79 = or disjoint i32 %72, %78
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %81, label %66, !prof !124, !llvm.loop !72

81:                                               ; preds = %66, %48, %23
  %82 = phi i64 [ %34, %23 ], [ %59, %48 ], [ %77, %66 ]
  store i64 %82, ptr %15, align 8, !tbaa !66
  br i1 %12, label %83, label %90, !prof !125

83:                                               ; preds = %81
  %84 = zext i32 %1 to i64
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22, i32 7, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !67
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 4, !tbaa !67
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90, !prof !126

89:                                               ; preds = %83
  tail call fastcc void @length_update_prices(ptr noundef nonnull %9, i32 noundef %1)
  br label %90

90:                                               ; preds = %81, %83, %89
  %91 = icmp ult i32 %2, 8192
  br i1 %91, label %92, label %97, !prof !129

92:                                               ; preds = %90
  %93 = zext nneg i32 %2 to i64
  %94 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !70
  %96 = zext i8 %95 to i32
  br label %113

97:                                               ; preds = %90
  %98 = icmp ult i32 %2, 33554432
  br i1 %98, label %99, label %106, !prof !130

99:                                               ; preds = %97
  %100 = lshr i32 %2, 12
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !70
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %104, 24
  br label %113

106:                                              ; preds = %97
  %107 = lshr i32 %2, 24
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !70
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %111, 48
  br label %113

113:                                              ; preds = %92, %99, %106
  %114 = phi i32 [ %96, %92 ], [ %105, %99 ], [ %112, %106 ]
  %115 = icmp ult i32 %3, 6
  %116 = select i1 %115, i32 %13, i32 3, !prof !131
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %117
  %119 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %120 = load i64, ptr %119, align 8, !tbaa !66
  br label %121

121:                                              ; preds = %121, %113
  %122 = phi i64 [ %120, %113 ], [ %132, %121 ]
  %123 = phi i32 [ 1, %113 ], [ %134, %121 ]
  %124 = phi i32 [ 6, %113 ], [ %125, %121 ]
  %125 = add nsw i32 %124, -1
  %126 = lshr i32 %114, %125
  %127 = and i32 %126, 1
  %128 = zext i32 %123 to i64
  %129 = getelementptr inbounds i16, ptr %118, i64 %128
  %130 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %122
  store i32 %127, ptr %130, align 4, !tbaa !67
  %131 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %122
  store ptr %129, ptr %131, align 8, !tbaa !68
  %132 = add i64 %122, 1
  %133 = shl i32 %123, 1
  %134 = or disjoint i32 %127, %133
  %135 = icmp eq i32 %125, 0
  br i1 %135, label %136, label %121, !prof !132, !llvm.loop !72

136:                                              ; preds = %121
  store i64 %132, ptr %119, align 8, !tbaa !66
  %137 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %138 = icmp ugt i32 %114, 3
  br i1 %138, label %139, label %210, !prof !133

139:                                              ; preds = %136
  %140 = lshr i32 %114, 1
  %141 = add nsw i32 %140, -1
  %142 = and i32 %114, 1
  %143 = or disjoint i32 %142, 2
  %144 = shl i32 %143, %141
  %145 = sub i32 %2, %144
  %146 = icmp ult i32 %114, 14
  br i1 %146, label %147, label %172, !prof !134

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  %149 = zext i32 %144 to i64
  %150 = getelementptr inbounds i16, ptr %148, i64 %149
  %151 = zext nneg i32 %114 to i64
  %152 = sub nsw i64 0, %151
  %153 = getelementptr inbounds i16, ptr %150, i64 %152
  %154 = getelementptr inbounds i16, ptr %153, i64 -1
  %155 = load i64, ptr %137, align 8, !tbaa !66
  br label %156

156:                                              ; preds = %156, %147
  %157 = phi i64 [ %155, %147 ], [ %167, %156 ]
  %158 = phi i32 [ %145, %147 ], [ %162, %156 ]
  %159 = phi i32 [ 1, %147 ], [ %169, %156 ]
  %160 = phi i32 [ %141, %147 ], [ %170, %156 ]
  %161 = and i32 %158, 1
  %162 = lshr i32 %158, 1
  %163 = zext i32 %159 to i64
  %164 = getelementptr inbounds i16, ptr %154, i64 %163
  %165 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %157
  store i32 %161, ptr %165, align 4, !tbaa !67
  %166 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %157
  store ptr %164, ptr %166, align 8, !tbaa !68
  %167 = add i64 %157, 1
  %168 = shl i32 %159, 1
  %169 = or disjoint i32 %168, %161
  %170 = add nsw i32 %160, -1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %209, label %156, !prof !135, !llvm.loop !136

172:                                              ; preds = %139
  %173 = lshr i32 %145, 4
  %174 = add nsw i32 %140, -5
  %175 = load i64, ptr %137, align 8, !tbaa !66
  br label %176

176:                                              ; preds = %176, %172
  %177 = phi i64 [ %175, %172 ], [ %183, %176 ]
  %178 = phi i32 [ %174, %172 ], [ %179, %176 ]
  %179 = add nsw i32 %178, -1
  %180 = lshr i32 %173, %179
  %181 = and i32 %180, 1
  %182 = or disjoint i32 %181, 2
  %183 = add i64 %177, 1
  %184 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %177
  store i32 %182, ptr %184, align 4, !tbaa !67
  %185 = icmp eq i32 %179, 0
  br i1 %185, label %186, label %176, !prof !137, !llvm.loop !138

186:                                              ; preds = %176
  store i64 %183, ptr %137, align 8, !tbaa !66
  %187 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  %188 = and i32 %145, 15
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi i64 [ %183, %186 ], [ %200, %189 ]
  %191 = phi i32 [ %188, %186 ], [ %195, %189 ]
  %192 = phi i32 [ 1, %186 ], [ %202, %189 ]
  %193 = phi i32 [ 4, %186 ], [ %203, %189 ]
  %194 = and i32 %191, 1
  %195 = lshr i32 %191, 1
  %196 = zext i32 %192 to i64
  %197 = getelementptr inbounds i16, ptr %187, i64 %196
  %198 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %190
  store i32 %194, ptr %198, align 4, !tbaa !67
  %199 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %190
  store ptr %197, ptr %199, align 8, !tbaa !68
  %200 = add i64 %190, 1
  %201 = shl i32 %192, 1
  %202 = or disjoint i32 %201, %194
  %203 = add nsw i32 %193, -1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %189, !prof !139, !llvm.loop !136

205:                                              ; preds = %189
  store i64 %200, ptr %137, align 8, !tbaa !66
  %206 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %207 = load i32, ptr %206, align 8, !tbaa !140
  %208 = add i32 %207, 1
  store i32 %208, ptr %206, align 8, !tbaa !140
  br label %210

209:                                              ; preds = %156
  store i64 %167, ptr %137, align 8, !tbaa !66
  br label %210

210:                                              ; preds = %209, %205, %136
  %211 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %212 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %213 = load i32, ptr %212, align 4, !tbaa !67
  %214 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 3
  store i32 %213, ptr %214, align 4, !tbaa !67
  %215 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !67
  store i32 %216, ptr %212, align 4, !tbaa !67
  %217 = load i32, ptr %211, align 4, !tbaa !67
  store i32 %217, ptr %215, align 4, !tbaa !67
  store i32 %2, ptr %211, align 4, !tbaa !67
  %218 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %219 = load i32, ptr %218, align 4, !tbaa !141
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 4, !tbaa !141
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length_update_prices(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !219 !PGOFuncName !220 {
  %3 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !221
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 7, i64 %5
  store i32 %4, ptr %6, align 4, !tbaa !67
  %7 = load i16, ptr %0, align 4, !tbaa !178
  %8 = lshr i16 %7, 4
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  %13 = xor i16 %8, 127
  %14 = zext nneg i16 %13 to i64
  %15 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !70
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !179
  %20 = lshr i16 %19, 4
  %21 = zext nneg i16 %20 to i64
  %22 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !70
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %24, %17
  %26 = xor i16 %20, 127
  %27 = zext nneg i16 %26 to i64
  %28 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !70
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, %17
  %32 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 5, i64 %5
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %40, label %34, !prof !222

34:                                               ; preds = %2
  %35 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  %36 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 2, i64 %5
  %37 = zext nneg i32 %35 to i64
  br label %48

38:                                               ; preds = %70
  %39 = trunc i64 %73 to i32
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ 0, %2 ], [ %39, %38 ]
  %42 = tail call i32 @llvm.umin.i32(i32 %4, i32 16)
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %77, !prof !223

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 3, i64 %5
  %46 = zext nneg i32 %41 to i64
  %47 = zext nneg i32 %42 to i64
  br label %84

48:                                               ; preds = %34, %70
  %49 = phi i64 [ 0, %34 ], [ %73, %70 ]
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 8
  br label %52

52:                                               ; preds = %52, %48
  %53 = phi i32 [ 0, %48 ], [ %68, %52 ]
  %54 = phi i32 [ %51, %48 ], [ %56, %52 ]
  %55 = and i32 %54, 1
  %56 = lshr i32 %54, 1
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %36, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !88
  %60 = zext i16 %59 to i64
  %61 = icmp eq i32 %55, 0
  %62 = select i1 %61, i64 0, i64 2032, !prof !224
  %63 = xor i64 %62, %60
  %64 = lshr i64 %63, 4
  %65 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !70
  %67 = zext i8 %66 to i32
  %68 = add i32 %53, %67
  %69 = icmp eq i32 %56, 1
  br i1 %69, label %70, label %52, !prof !225, !llvm.loop !226

70:                                               ; preds = %52
  %71 = add i32 %68, %12
  %72 = getelementptr inbounds i32, ptr %32, i64 %49
  store i32 %71, ptr %72, align 4, !tbaa !67
  %73 = add nuw nsw i64 %49, 1
  %74 = icmp eq i64 %73, %37
  br i1 %74, label %38, label %48, !prof !227, !llvm.loop !228

75:                                               ; preds = %105
  %76 = trunc i64 %108 to i32
  br label %77

77:                                               ; preds = %75, %40
  %78 = phi i32 [ %41, %40 ], [ %76, %75 ]
  %79 = icmp ult i32 %78, %4
  br i1 %79, label %80, label %137, !prof !223

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 4
  %82 = zext nneg i32 %78 to i64
  %83 = zext i32 %4 to i64
  br label %110

84:                                               ; preds = %44, %105
  %85 = phi i64 [ %46, %44 ], [ %108, %105 ]
  %86 = trunc i64 %85 to i32
  br label %87

87:                                               ; preds = %87, %84
  %88 = phi i32 [ 0, %84 ], [ %103, %87 ]
  %89 = phi i32 [ %86, %84 ], [ %91, %87 ]
  %90 = and i32 %89, 1
  %91 = lshr i32 %89, 1
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds i16, ptr %45, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !88
  %95 = zext i16 %94 to i64
  %96 = icmp eq i32 %90, 0
  %97 = select i1 %96, i64 0, i64 2032, !prof !224
  %98 = xor i64 %97, %95
  %99 = lshr i64 %98, 4
  %100 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !70
  %102 = zext i8 %101 to i32
  %103 = add i32 %88, %102
  %104 = icmp eq i32 %91, 1
  br i1 %104, label %105, label %87, !prof !225, !llvm.loop !226

105:                                              ; preds = %87
  %106 = add i32 %25, %103
  %107 = getelementptr inbounds i32, ptr %32, i64 %85
  store i32 %106, ptr %107, align 4, !tbaa !67
  %108 = add nuw nsw i64 %85, 1
  %109 = icmp eq i64 %108, %47
  br i1 %109, label %75, label %84, !prof !227, !llvm.loop !229

110:                                              ; preds = %80, %132
  %111 = phi i64 [ %82, %80 ], [ %135, %132 ]
  %112 = trunc i64 %111 to i32
  %113 = add i32 %112, 240
  br label %114

114:                                              ; preds = %114, %110
  %115 = phi i32 [ 0, %110 ], [ %130, %114 ]
  %116 = phi i32 [ %113, %110 ], [ %118, %114 ]
  %117 = and i32 %116, 1
  %118 = lshr i32 %116, 1
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds i16, ptr %81, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !88
  %122 = zext i16 %121 to i64
  %123 = icmp eq i32 %117, 0
  %124 = select i1 %123, i64 0, i64 2032, !prof !230
  %125 = xor i64 %124, %122
  %126 = lshr i64 %125, 4
  %127 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !70
  %129 = zext i8 %128 to i32
  %130 = add i32 %115, %129
  %131 = icmp eq i32 %118, 1
  br i1 %131, label %132, label %114, !prof !231, !llvm.loop !226

132:                                              ; preds = %114
  %133 = add i32 %31, %130
  %134 = getelementptr inbounds i32, ptr %32, i64 %111
  store i32 %133, ptr %134, align 4, !tbaa !67
  %135 = add nuw nsw i64 %111, 1
  %136 = icmp eq i64 %135, %83
  br i1 %136, label %137, label %110, !prof !232, !llvm.loop !233

137:                                              ; preds = %132, %77
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @lzma_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) #5 !prof !214 {
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @lzma_lzma_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef -1), !range !234
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i32 [ %10, %9 ], [ 8, %5 ]
  ret i32 %12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @lzma_lzma_encode, ptr @lzma_lzma_optimum_normal, i64 27196083}
!36 = !{ptr @lzma_lzma_encode, ptr @length_update_prices, i64 227392}
!37 = !{ptr @lzma_lzma_encode, ptr @rc_encode, i64 665}
!38 = !{ptr @lzma_lzma_encoder_reset, ptr @length_encoder_reset, i64 132}
!39 = !{ptr @length_encoder_reset, ptr @length_update_prices, i64 528}
!40 = !{ptr @lzma_lzma_encoder_create, ptr @lzma_alloc, i64 1}
!41 = !{ptr @lzma_lzma_encoder_create, ptr @lzma_lzma_encoder_reset, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 32690}
!44 = !{!45, !51, i64 2957}
!45 = !{!"lzma_coder_s", !46, i64 0, !50, i64 736, !48, i64 740, !48, i64 756, !50, i64 2948, !50, i64 2952, !51, i64 2956, !51, i64 2957, !51, i64 2958, !50, i64 2960, !50, i64 2964, !50, i64 2968, !48, i64 2972, !48, i64 27548, !48, i64 27932, !48, i64 27956, !48, i64 27980, !48, i64 28004, !48, i64 28028, !48, i64 28412, !48, i64 28924, !48, i64 29152, !52, i64 29184, !52, i64 47688, !48, i64 66192, !48, i64 67216, !50, i64 69264, !50, i64 69268, !48, i64 69272, !50, i64 69336, !50, i64 69340, !50, i64 69344, !48, i64 69348}
!46 = !{!"", !47, i64 0, !47, i64 8, !50, i64 16, !48, i64 20, !47, i64 24, !47, i64 32, !48, i64 40, !48, i64 272}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!"int", !48, i64 0}
!51 = !{!"_Bool", !48, i64 0}
!52 = !{!"", !53, i64 0, !53, i64 2, !48, i64 4, !48, i64 260, !48, i64 516, !48, i64 1028, !50, i64 18436, !48, i64 18440}
!53 = !{!"short", !48, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!"branch_weights", i32 1, i32 32689}
!57 = !{!58, !50, i64 24}
!58 = !{!"lzma_mf_s", !59, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96, !50, i64 100, !50, i64 104, !50, i64 108, !50, i64 112}
!59 = !{!"any pointer", !48, i64 0}
!60 = !{!58, !50, i64 32}
!61 = !{!"branch_weights", i32 0, i32 1}
!62 = !{!58, !50, i64 104}
!63 = !{!58, !59, i64 56}
!64 = !{!"VP", i32 0, i64 1, i64 -4558510992144367732, i64 1}
!65 = !{!58, !50, i64 28}
!66 = !{!46, !47, i64 24}
!67 = !{!50, !50, i64 0}
!68 = !{!59, !59, i64 0}
!69 = !{!58, !59, i64 0}
!70 = !{!48, !48, i64 0}
!71 = !{!"branch_weights", i32 1, i32 7}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!46, !47, i64 32}
!76 = !{!"branch_weights", i32 27228797, i32 1}
!77 = !{!46, !50, i64 16}
!78 = !{!"branch_weights", i32 40835274, i32 385189780}
!79 = !{!46, !47, i64 0}
!80 = !{!"branch_weights", i32 159767, i32 40675507}
!81 = !{!47, !47, i64 0}
!82 = !{!"branch_weights", i32 0, i32 40835272}
!83 = !{!46, !48, i64 20}
!84 = !{!46, !47, i64 8}
!85 = !{!"branch_weights", i32 40675507, i32 159765}
!86 = distinct !{!86, !73, !74}
!87 = !{!"branch_weights", i32 0, i32 180310668, i32 158004040, i32 44282560, i32 43427121, i32 665}
!88 = !{!53, !53, i64 0}
!89 = !{!"branch_weights", i32 8, i32 3317}
!90 = !{!"branch_weights", i32 0, i32 3327}
!91 = !{!"branch_weights", i32 3317, i32 10}
!92 = !{!"branch_weights", i32 2660, i32 665}
!93 = distinct !{!93, !73, !74}
!94 = !{!"branch_weights", i32 398796257, i32 27228797}
!95 = distinct !{!95, !73, !74}
!96 = !{!"branch_weights", i32 0, i32 27228798}
!97 = !{!"branch_weights", i32 663, i32 27228134}
!98 = !{!"branch_weights", i32 27196083, i32 32051}
!99 = !{!"branch_weights", i32 32025, i32 26}
!100 = !{!"branch_weights", i32 1, i32 25}
!101 = !{!45, !51, i64 2956}
!102 = !{!"branch_weights", i32 27196108, i32 0}
!103 = !{!45, !50, i64 2960}
!104 = !{!"branch_weights", i32 12401955, i32 14794153}
!105 = !{!45, !50, i64 736}
!106 = !{!45, !50, i64 2968}
!107 = !{!45, !50, i64 2964}
!108 = !{!"branch_weights", i32 7495276, i32 4906679}
!109 = !{!"branch_weights", i32 7495276, i32 52466932}
!110 = !{!"branch_weights", i32 34346753, i32 4906679}
!111 = distinct !{!111, !73, !74}
!112 = !{!"branch_weights", i32 5923956, i32 6477999}
!113 = !{!"branch_weights", i32 4550616, i32 1927383}
!114 = !{!"branch_weights", i32 3996583, i32 10797570}
!115 = !{!"branch_weights", i32 2756804, i32 1239779}
!116 = !{!"branch_weights", i32 1065017, i32 174762}
!117 = !{!"branch_weights", i32 58485, i32 116277}
!118 = !{!"branch_weights", i32 461918, i32 3534665}
!119 = !{!"branch_weights", i32 460348, i32 1570}
!120 = !{!"branch_weights", i32 6939956, i32 7392279}
!121 = !{!"branch_weights", i32 6939956, i32 13879912}
!122 = !{!"branch_weights", i32 4058160, i32 3334119}
!123 = !{!"branch_weights", i32 4058160, i32 8116320}
!124 = !{!"branch_weights", i32 3334119, i32 23338833}
!125 = !{!"branch_weights", i32 14332235, i32 0}
!126 = !{!"branch_weights", i32 227393, i32 14104842}
!127 = !{!"branch_weights", i32 2426686, i32 1107979}
!128 = !{!"branch_weights", i32 2019646, i32 8777924}
!129 = !{!"branch_weights", i32 5261048, i32 5536522}
!130 = !{!"branch_weights", i32 5536522, i32 0}
!131 = !{!"branch_weights", i32 1764227, i32 9033343}
!132 = !{!"branch_weights", i32 10797570, i32 53987850}
!133 = !{!"branch_weights", i32 10750592, i32 46978}
!134 = !{!"branch_weights", i32 2092663, i32 8657929}
!135 = !{!"branch_weights", i32 2092663, i32 6039257}
!136 = distinct !{!136, !73, !74}
!137 = !{!"branch_weights", i32 8657929, i32 79051752}
!138 = distinct !{!138, !73, !74}
!139 = !{!"branch_weights", i32 8657929, i32 25973787}
!140 = !{!45, !50, i64 69336}
!141 = !{!45, !50, i64 69268}
!142 = distinct !{!142, !74}
!143 = !{!45, !51, i64 2958}
!144 = !{!"branch_weights", i32 665, i32 0}
!145 = !{!"branch_weights", i32 0, i32 665}
!146 = !{!"branch_weights", i32 665, i32 2660}
!147 = distinct !{!147, !73, !74}
!148 = !{!"function_entry_count", i64 679}
!149 = !{!"liblzma/lzma/lzma_encoder.c;rc_encode"}
!150 = !{!"function_entry_count", i64 66}
!151 = !{!152, !50, i64 20}
!152 = !{!"", !50, i64 0, !59, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !59, i64 96, !59, i64 104}
!153 = !{!"branch_weights", i32 66, i32 0}
!154 = !{!152, !50, i64 24}
!155 = !{!152, !50, i64 28}
!156 = !{!152, !50, i64 36}
!157 = !{!152, !50, i64 32}
!158 = !{!"branch_weights", i32 462, i32 66}
!159 = distinct !{!159, !73, !74}
!160 = !{!"branch_weights", i32 528, i32 404976}
!161 = distinct !{!161, !73, !74}
!162 = !{!"branch_weights", i32 66, i32 726}
!163 = distinct !{!163, !73, !74}
!164 = !{!"branch_weights", i32 792, i32 2376}
!165 = distinct !{!165, !73, !74}
!166 = !{!"branch_weights", i32 66, i32 7458}
!167 = distinct !{!167, !73, !74}
!168 = !{!"branch_weights", i32 66, i32 198}
!169 = distinct !{!169, !73, !74}
!170 = !{!"branch_weights", i32 264, i32 16632}
!171 = distinct !{!171, !73, !74}
!172 = !{!45, !50, i64 69340}
!173 = !{!45, !50, i64 69344}
!174 = !{!"branch_weights", i32 66, i32 990}
!175 = distinct !{!175, !73, !74}
!176 = !{!"function_entry_count", i64 132}
!177 = !{!"liblzma/lzma/lzma_encoder.c;length_encoder_reset"}
!178 = !{!52, !53, i64 0}
!179 = !{!52, !53, i64 2}
!180 = !{!"branch_weights", i32 1, i32 131}
!181 = !{!"branch_weights", i32 528, i32 3696}
!182 = distinct !{!182, !73, !74}
!183 = !{!"branch_weights", i32 131, i32 397}
!184 = distinct !{!184, !73, !74}
!185 = distinct !{!185, !73, !74}
!186 = !{!"branch_weights", i32 132, i32 17292}
!187 = !{!"branch_weights", i32 132, i32 33660}
!188 = distinct !{!188, !73, !74}
!189 = distinct !{!189, !73, !74}
!190 = !{!"function_entry_count", i64 1}
!191 = !{!"branch_weights", i32 1, i32 0}
!192 = !{!"branch_weights", i32 0, i32 0, i32 1}
!193 = !{!152, !50, i64 0}
!194 = !{!"branch_weights", i32 24, i32 1}
!195 = distinct !{!195, !73, !74}
!196 = !{!45, !50, i64 69264}
!197 = !{!45, !50, i64 47620}
!198 = !{!45, !50, i64 66124}
!199 = !{!152, !59, i64 8}
!200 = !{!152, !50, i64 16}
!201 = !{!202, !47, i64 0}
!202 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !50, i64 40, !50, i64 44, !59, i64 48, !50, i64 56}
!203 = !{!202, !47, i64 8}
!204 = !{!202, !47, i64 16}
!205 = !{!202, !47, i64 24}
!206 = !{!202, !47, i64 32}
!207 = !{!152, !50, i64 40}
!208 = !{!202, !50, i64 40}
!209 = !{!152, !50, i64 44}
!210 = !{!202, !50, i64 44}
!211 = !{!202, !59, i64 48}
!212 = !{!202, !50, i64 56}
!213 = !{i32 0, i32 9}
!214 = !{!"function_entry_count", i64 0}
!215 = !{!216, !59, i64 8}
!216 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!217 = !{!"function_entry_count", i64 6}
!218 = !{!"liblzma/lzma/lzma_encoder.c;match"}
!219 = !{!"function_entry_count", i64 227921}
!220 = !{!"liblzma/lzma/lzma_encoder.c;length_update_prices"}
!221 = !{!52, !50, i64 18436}
!222 = !{!"branch_weights", i32 1, i32 227920}
!223 = !{!"branch_weights", i32 227920, i32 1}
!224 = !{!"branch_weights", i32 2735052, i32 2735052}
!225 = !{!"branch_weights", i32 1823368, i32 3646736}
!226 = distinct !{!226, !73, !74}
!227 = !{!"branch_weights", i32 227920, i32 1595448}
!228 = distinct !{!228, !73, !74}
!229 = distinct !{!229, !73, !74}
!230 = !{!"branch_weights", i32 57664013, i32 28034283}
!231 = !{!"branch_weights", i32 10712287, i32 74986009}
!232 = !{!"branch_weights", i32 227920, i32 10484367}
!233 = distinct !{!233, !73, !74}
!234 = !{i32 0, i32 2}

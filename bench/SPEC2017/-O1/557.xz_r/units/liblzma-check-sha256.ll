; ModuleID = 'liblzma/check/sha256.c'
source_filename = "liblzma/check/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

@lzma_sha256_init.s = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !37 {
  %2 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false)
  %3 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_sha256_update(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !37 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %24, label %5, !prof !41

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %2, i64 0, i32 1, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %0, %5 ], [ %15, %22 ]
  %9 = phi i64 [ %1, %5 ], [ %16, %22 ]
  %10 = load i64, ptr %6, align 8, !tbaa !38
  %11 = and i64 %10, 63
  %12 = sub nuw nsw i64 64, %11
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %9)
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %8, i64 %13, i1 false), !prof !42
  %15 = getelementptr inbounds i8, ptr %8, i64 %13
  %16 = sub i64 %9, %13
  %17 = load i64, ptr %6, align 8, !tbaa !38
  %18 = add i64 %13, %17
  store i64 %18, ptr %6, align 8, !tbaa !38
  %19 = and i64 %18, 63
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22, !prof !43

21:                                               ; preds = %7
  tail call fastcc void @process(ptr noundef %2)
  br label %22

22:                                               ; preds = %21, %7
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %7, !prof !44, !llvm.loop !45

24:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process(ptr nocapture noundef %0) unnamed_addr #4 !prof !37 !PGOFuncName !48 {
  %2 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  br label %776

3:                                                ; preds = %776
  %4 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 7
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %2, align 16
  %21 = getelementptr inbounds i32, ptr %2, i64 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %2, i64 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds i32, ptr %2, i64 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i32, ptr %2, i64 4
  %28 = load i32, ptr %27, align 16
  %29 = getelementptr inbounds i32, ptr %2, i64 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i32, ptr %2, i64 6
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds i32, ptr %2, i64 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i32, ptr %2, i64 8
  %36 = load i32, ptr %35, align 16
  %37 = getelementptr inbounds i32, ptr %2, i64 9
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds i32, ptr %2, i64 10
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds i32, ptr %2, i64 11
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i32, ptr %2, i64 12
  %44 = load i32, ptr %43, align 16
  %45 = getelementptr inbounds i32, ptr %2, i64 13
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds i32, ptr %2, i64 14
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds i32, ptr %2, i64 15
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %3, %747
  %52 = phi i64 [ 0, %3 ], [ %765, %747 ]
  %53 = phi i32 [ %5, %3 ], [ %764, %747 ]
  %54 = phi i32 [ %7, %3 ], [ %721, %747 ]
  %55 = phi i32 [ %9, %3 ], [ %678, %747 ]
  %56 = phi i32 [ %11, %3 ], [ %635, %747 ]
  %57 = phi i32 [ %13, %3 ], [ %753, %747 ]
  %58 = phi i32 [ %15, %3 ], [ %710, %747 ]
  %59 = phi i32 [ %17, %3 ], [ %667, %747 ]
  %60 = phi i32 [ %19, %3 ], [ %624, %747 ]
  %61 = phi i32 [ undef, %3 ], [ %103, %747 ]
  %62 = phi i32 [ undef, %3 ], [ %146, %747 ]
  %63 = phi i32 [ undef, %3 ], [ %189, %747 ]
  %64 = phi i32 [ undef, %3 ], [ %232, %747 ]
  %65 = phi i32 [ undef, %3 ], [ %275, %747 ]
  %66 = phi i32 [ undef, %3 ], [ %318, %747 ]
  %67 = phi i32 [ undef, %3 ], [ %361, %747 ]
  %68 = phi i32 [ undef, %3 ], [ %404, %747 ]
  %69 = phi i32 [ undef, %3 ], [ %447, %747 ]
  %70 = phi i32 [ undef, %3 ], [ %490, %747 ]
  %71 = phi i32 [ undef, %3 ], [ %533, %747 ]
  %72 = phi i32 [ undef, %3 ], [ %576, %747 ]
  %73 = phi i32 [ undef, %3 ], [ %619, %747 ]
  %74 = phi i32 [ undef, %3 ], [ %662, %747 ]
  %75 = phi i32 [ undef, %3 ], [ %705, %747 ]
  %76 = phi i32 [ undef, %3 ], [ %748, %747 ]
  %77 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 26)
  %78 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 21)
  %79 = xor i32 %77, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 7)
  %81 = xor i32 %79, %80
  %82 = xor i32 %58, %59
  %83 = and i32 %57, %82
  %84 = xor i32 %83, %59
  %85 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %52
  %86 = load i32, ptr %85, align 16, !tbaa !49
  %87 = icmp eq i64 %52, 0
  br i1 %87, label %102, label %88, !prof !51

88:                                               ; preds = %51
  %89 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 15)
  %90 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %91 = xor i32 %89, %90
  %92 = lshr i32 %75, 10
  %93 = xor i32 %91, %92
  %94 = add i32 %70, %93
  %95 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 25)
  %96 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 14)
  %97 = xor i32 %95, %96
  %98 = lshr i32 %62, 3
  %99 = xor i32 %97, %98
  %100 = add i32 %94, %61
  %101 = add i32 %100, %99
  br label %102

102:                                              ; preds = %51, %88
  %103 = phi i32 [ %101, %88 ], [ %20, %51 ]
  %104 = add i32 %84, %60
  %105 = add i32 %104, %81
  %106 = add i32 %105, %86
  %107 = add i32 %106, %103
  %108 = add i32 %107, %56
  %109 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 30)
  %110 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 19)
  %111 = xor i32 %109, %110
  %112 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 10)
  %113 = xor i32 %111, %112
  %114 = and i32 %53, %54
  %115 = or i32 %53, %54
  %116 = and i32 %115, %55
  %117 = or i32 %116, %114
  %118 = add i32 %113, %117
  %119 = add i32 %118, %107
  %120 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 26)
  %121 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 21)
  %122 = xor i32 %120, %121
  %123 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 7)
  %124 = xor i32 %122, %123
  %125 = xor i32 %57, %58
  %126 = and i32 %108, %125
  %127 = xor i32 %126, %58
  %128 = or disjoint i64 %52, 1
  %129 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !49
  br i1 %87, label %145, label %131, !prof !51

131:                                              ; preds = %102
  %132 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 15)
  %133 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 13)
  %134 = xor i32 %132, %133
  %135 = lshr i32 %76, 10
  %136 = xor i32 %134, %135
  %137 = add i32 %71, %136
  %138 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 25)
  %139 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 14)
  %140 = xor i32 %138, %139
  %141 = lshr i32 %63, 3
  %142 = xor i32 %140, %141
  %143 = add i32 %137, %62
  %144 = add i32 %143, %142
  br label %145

145:                                              ; preds = %102, %131
  %146 = phi i32 [ %144, %131 ], [ %22, %102 ]
  %147 = add i32 %130, %59
  %148 = add i32 %147, %127
  %149 = add i32 %148, %124
  %150 = add i32 %149, %146
  %151 = add i32 %150, %55
  %152 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 30)
  %153 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 19)
  %154 = xor i32 %152, %153
  %155 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 10)
  %156 = xor i32 %154, %155
  %157 = and i32 %119, %53
  %158 = or i32 %119, %53
  %159 = and i32 %158, %54
  %160 = or i32 %159, %157
  %161 = add i32 %156, %160
  %162 = add i32 %161, %150
  %163 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 26)
  %164 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 21)
  %165 = xor i32 %163, %164
  %166 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 7)
  %167 = xor i32 %165, %166
  %168 = xor i32 %108, %57
  %169 = and i32 %151, %168
  %170 = xor i32 %169, %57
  %171 = or disjoint i64 %52, 2
  %172 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %171
  %173 = load i32, ptr %172, align 8, !tbaa !49
  br i1 %87, label %188, label %174, !prof !51

174:                                              ; preds = %145
  %175 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 15)
  %176 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %177 = xor i32 %175, %176
  %178 = lshr i32 %103, 10
  %179 = xor i32 %177, %178
  %180 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 25)
  %181 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 14)
  %182 = xor i32 %180, %181
  %183 = lshr i32 %64, 3
  %184 = xor i32 %182, %183
  %185 = add i32 %63, %72
  %186 = add i32 %185, %184
  %187 = add i32 %186, %179
  br label %188

188:                                              ; preds = %145, %174
  %189 = phi i32 [ %187, %174 ], [ %24, %145 ]
  %190 = add i32 %173, %58
  %191 = add i32 %190, %170
  %192 = add i32 %191, %167
  %193 = add i32 %192, %189
  %194 = add i32 %193, %54
  %195 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 30)
  %196 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 19)
  %197 = xor i32 %195, %196
  %198 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 10)
  %199 = xor i32 %197, %198
  %200 = and i32 %162, %119
  %201 = or i32 %162, %119
  %202 = and i32 %201, %53
  %203 = or i32 %202, %200
  %204 = add i32 %199, %203
  %205 = add i32 %204, %193
  %206 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 26)
  %207 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 21)
  %208 = xor i32 %206, %207
  %209 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 7)
  %210 = xor i32 %208, %209
  %211 = xor i32 %151, %108
  %212 = and i32 %194, %211
  %213 = xor i32 %212, %108
  %214 = or disjoint i64 %52, 3
  %215 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !49
  br i1 %87, label %231, label %217, !prof !51

217:                                              ; preds = %188
  %218 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 15)
  %219 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 13)
  %220 = xor i32 %218, %219
  %221 = lshr i32 %146, 10
  %222 = xor i32 %220, %221
  %223 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 25)
  %224 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 14)
  %225 = xor i32 %223, %224
  %226 = lshr i32 %65, 3
  %227 = xor i32 %225, %226
  %228 = add i32 %64, %73
  %229 = add i32 %228, %227
  %230 = add i32 %229, %222
  br label %231

231:                                              ; preds = %188, %217
  %232 = phi i32 [ %230, %217 ], [ %26, %188 ]
  %233 = add i32 %216, %57
  %234 = add i32 %233, %213
  %235 = add i32 %234, %210
  %236 = add i32 %235, %232
  %237 = add i32 %236, %53
  %238 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 30)
  %239 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 19)
  %240 = xor i32 %238, %239
  %241 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 10)
  %242 = xor i32 %240, %241
  %243 = and i32 %205, %162
  %244 = or i32 %205, %162
  %245 = and i32 %244, %119
  %246 = or i32 %245, %243
  %247 = add i32 %242, %246
  %248 = add i32 %247, %236
  %249 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 26)
  %250 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 21)
  %251 = xor i32 %249, %250
  %252 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 7)
  %253 = xor i32 %251, %252
  %254 = xor i32 %194, %151
  %255 = and i32 %237, %254
  %256 = xor i32 %255, %151
  %257 = or disjoint i64 %52, 4
  %258 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %257
  %259 = load i32, ptr %258, align 16, !tbaa !49
  br i1 %87, label %274, label %260, !prof !51

260:                                              ; preds = %231
  %261 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 15)
  %262 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 13)
  %263 = xor i32 %261, %262
  %264 = lshr i32 %189, 10
  %265 = xor i32 %263, %264
  %266 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 25)
  %267 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 14)
  %268 = xor i32 %266, %267
  %269 = lshr i32 %66, 3
  %270 = xor i32 %268, %269
  %271 = add i32 %65, %74
  %272 = add i32 %271, %270
  %273 = add i32 %272, %265
  br label %274

274:                                              ; preds = %231, %260
  %275 = phi i32 [ %273, %260 ], [ %28, %231 ]
  %276 = add i32 %259, %108
  %277 = add i32 %276, %256
  %278 = add i32 %277, %253
  %279 = add i32 %278, %275
  %280 = add i32 %279, %119
  %281 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 30)
  %282 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 19)
  %283 = xor i32 %281, %282
  %284 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 10)
  %285 = xor i32 %283, %284
  %286 = and i32 %248, %205
  %287 = or i32 %248, %205
  %288 = and i32 %287, %162
  %289 = or i32 %288, %286
  %290 = add i32 %285, %289
  %291 = add i32 %290, %279
  %292 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 26)
  %293 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 21)
  %294 = xor i32 %292, %293
  %295 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 7)
  %296 = xor i32 %294, %295
  %297 = xor i32 %237, %194
  %298 = and i32 %280, %297
  %299 = xor i32 %298, %194
  %300 = or disjoint i64 %52, 5
  %301 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !49
  br i1 %87, label %317, label %303, !prof !51

303:                                              ; preds = %274
  %304 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 15)
  %305 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 13)
  %306 = xor i32 %304, %305
  %307 = lshr i32 %232, 10
  %308 = xor i32 %306, %307
  %309 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 25)
  %310 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 14)
  %311 = xor i32 %309, %310
  %312 = lshr i32 %67, 3
  %313 = xor i32 %311, %312
  %314 = add i32 %66, %75
  %315 = add i32 %314, %313
  %316 = add i32 %315, %308
  br label %317

317:                                              ; preds = %274, %303
  %318 = phi i32 [ %316, %303 ], [ %30, %274 ]
  %319 = add i32 %302, %151
  %320 = add i32 %319, %299
  %321 = add i32 %320, %296
  %322 = add i32 %321, %318
  %323 = add i32 %322, %162
  %324 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 30)
  %325 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 19)
  %326 = xor i32 %324, %325
  %327 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 10)
  %328 = xor i32 %326, %327
  %329 = and i32 %291, %248
  %330 = or i32 %291, %248
  %331 = and i32 %330, %205
  %332 = or i32 %331, %329
  %333 = add i32 %328, %332
  %334 = add i32 %333, %322
  %335 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 26)
  %336 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 21)
  %337 = xor i32 %335, %336
  %338 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 7)
  %339 = xor i32 %337, %338
  %340 = xor i32 %280, %237
  %341 = and i32 %323, %340
  %342 = xor i32 %341, %237
  %343 = or disjoint i64 %52, 6
  %344 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %343
  %345 = load i32, ptr %344, align 8, !tbaa !49
  br i1 %87, label %360, label %346, !prof !51

346:                                              ; preds = %317
  %347 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 15)
  %348 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 13)
  %349 = xor i32 %347, %348
  %350 = lshr i32 %275, 10
  %351 = xor i32 %349, %350
  %352 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 25)
  %353 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 14)
  %354 = xor i32 %352, %353
  %355 = lshr i32 %68, 3
  %356 = xor i32 %354, %355
  %357 = add i32 %67, %76
  %358 = add i32 %357, %356
  %359 = add i32 %358, %351
  br label %360

360:                                              ; preds = %317, %346
  %361 = phi i32 [ %359, %346 ], [ %32, %317 ]
  %362 = add i32 %345, %194
  %363 = add i32 %362, %342
  %364 = add i32 %363, %339
  %365 = add i32 %364, %361
  %366 = add i32 %365, %205
  %367 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 30)
  %368 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 19)
  %369 = xor i32 %367, %368
  %370 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 10)
  %371 = xor i32 %369, %370
  %372 = and i32 %334, %291
  %373 = or i32 %334, %291
  %374 = and i32 %373, %248
  %375 = or i32 %374, %372
  %376 = add i32 %371, %375
  %377 = add i32 %376, %365
  %378 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 26)
  %379 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 21)
  %380 = xor i32 %378, %379
  %381 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 7)
  %382 = xor i32 %380, %381
  %383 = xor i32 %323, %280
  %384 = and i32 %366, %383
  %385 = xor i32 %384, %280
  %386 = or disjoint i64 %52, 7
  %387 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !49
  br i1 %87, label %403, label %389, !prof !51

389:                                              ; preds = %360
  %390 = tail call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 15)
  %391 = tail call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 13)
  %392 = xor i32 %390, %391
  %393 = lshr i32 %318, 10
  %394 = xor i32 %392, %393
  %395 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 25)
  %396 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 14)
  %397 = xor i32 %395, %396
  %398 = lshr i32 %69, 3
  %399 = xor i32 %397, %398
  %400 = add i32 %399, %68
  %401 = add i32 %400, %103
  %402 = add i32 %401, %394
  br label %403

403:                                              ; preds = %360, %389
  %404 = phi i32 [ %402, %389 ], [ %34, %360 ]
  %405 = add i32 %388, %237
  %406 = add i32 %405, %385
  %407 = add i32 %406, %382
  %408 = add i32 %407, %404
  %409 = add i32 %408, %248
  %410 = tail call i32 @llvm.fshl.i32(i32 %377, i32 %377, i32 30)
  %411 = tail call i32 @llvm.fshl.i32(i32 %377, i32 %377, i32 19)
  %412 = xor i32 %410, %411
  %413 = tail call i32 @llvm.fshl.i32(i32 %377, i32 %377, i32 10)
  %414 = xor i32 %412, %413
  %415 = and i32 %377, %334
  %416 = or i32 %377, %334
  %417 = and i32 %416, %291
  %418 = or i32 %417, %415
  %419 = add i32 %414, %418
  %420 = add i32 %419, %408
  %421 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 26)
  %422 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 21)
  %423 = xor i32 %421, %422
  %424 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 7)
  %425 = xor i32 %423, %424
  %426 = xor i32 %366, %323
  %427 = and i32 %409, %426
  %428 = xor i32 %427, %323
  %429 = or disjoint i64 %52, 8
  %430 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %429
  %431 = load i32, ptr %430, align 16, !tbaa !49
  br i1 %87, label %446, label %432, !prof !51

432:                                              ; preds = %403
  %433 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 15)
  %434 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 13)
  %435 = xor i32 %433, %434
  %436 = lshr i32 %361, 10
  %437 = xor i32 %435, %436
  %438 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 25)
  %439 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 14)
  %440 = xor i32 %438, %439
  %441 = lshr i32 %70, 3
  %442 = xor i32 %440, %441
  %443 = add i32 %442, %69
  %444 = add i32 %443, %146
  %445 = add i32 %444, %437
  br label %446

446:                                              ; preds = %403, %432
  %447 = phi i32 [ %445, %432 ], [ %36, %403 ]
  %448 = add i32 %431, %280
  %449 = add i32 %448, %428
  %450 = add i32 %449, %425
  %451 = add i32 %450, %447
  %452 = add i32 %451, %291
  %453 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 30)
  %454 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 19)
  %455 = xor i32 %453, %454
  %456 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 10)
  %457 = xor i32 %455, %456
  %458 = and i32 %420, %377
  %459 = or i32 %420, %377
  %460 = and i32 %459, %334
  %461 = or i32 %460, %458
  %462 = add i32 %457, %461
  %463 = add i32 %462, %451
  %464 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 26)
  %465 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 21)
  %466 = xor i32 %464, %465
  %467 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 7)
  %468 = xor i32 %466, %467
  %469 = xor i32 %409, %366
  %470 = and i32 %452, %469
  %471 = xor i32 %470, %366
  %472 = or disjoint i64 %52, 9
  %473 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !49
  br i1 %87, label %489, label %475, !prof !51

475:                                              ; preds = %446
  %476 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 15)
  %477 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 13)
  %478 = xor i32 %476, %477
  %479 = lshr i32 %404, 10
  %480 = xor i32 %478, %479
  %481 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 25)
  %482 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 14)
  %483 = xor i32 %481, %482
  %484 = lshr i32 %71, 3
  %485 = xor i32 %483, %484
  %486 = add i32 %485, %70
  %487 = add i32 %486, %189
  %488 = add i32 %487, %480
  br label %489

489:                                              ; preds = %446, %475
  %490 = phi i32 [ %488, %475 ], [ %38, %446 ]
  %491 = add i32 %474, %323
  %492 = add i32 %491, %471
  %493 = add i32 %492, %468
  %494 = add i32 %493, %490
  %495 = add i32 %494, %334
  %496 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 30)
  %497 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 19)
  %498 = xor i32 %496, %497
  %499 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 10)
  %500 = xor i32 %498, %499
  %501 = and i32 %463, %420
  %502 = or i32 %463, %420
  %503 = and i32 %502, %377
  %504 = or i32 %503, %501
  %505 = add i32 %500, %504
  %506 = add i32 %505, %494
  %507 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 26)
  %508 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 21)
  %509 = xor i32 %507, %508
  %510 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 7)
  %511 = xor i32 %509, %510
  %512 = xor i32 %452, %409
  %513 = and i32 %495, %512
  %514 = xor i32 %513, %409
  %515 = or disjoint i64 %52, 10
  %516 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %515
  %517 = load i32, ptr %516, align 8, !tbaa !49
  br i1 %87, label %532, label %518, !prof !51

518:                                              ; preds = %489
  %519 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 15)
  %520 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 13)
  %521 = xor i32 %519, %520
  %522 = lshr i32 %447, 10
  %523 = xor i32 %521, %522
  %524 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 25)
  %525 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 14)
  %526 = xor i32 %524, %525
  %527 = lshr i32 %72, 3
  %528 = xor i32 %526, %527
  %529 = add i32 %528, %71
  %530 = add i32 %529, %232
  %531 = add i32 %530, %523
  br label %532

532:                                              ; preds = %489, %518
  %533 = phi i32 [ %531, %518 ], [ %40, %489 ]
  %534 = add i32 %517, %366
  %535 = add i32 %534, %514
  %536 = add i32 %535, %511
  %537 = add i32 %536, %533
  %538 = add i32 %537, %377
  %539 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 30)
  %540 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 19)
  %541 = xor i32 %539, %540
  %542 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 10)
  %543 = xor i32 %541, %542
  %544 = and i32 %506, %463
  %545 = or i32 %506, %463
  %546 = and i32 %545, %420
  %547 = or i32 %546, %544
  %548 = add i32 %543, %547
  %549 = add i32 %548, %537
  %550 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 26)
  %551 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 21)
  %552 = xor i32 %550, %551
  %553 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 7)
  %554 = xor i32 %552, %553
  %555 = xor i32 %495, %452
  %556 = and i32 %538, %555
  %557 = xor i32 %556, %452
  %558 = or disjoint i64 %52, 11
  %559 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !49
  br i1 %87, label %575, label %561, !prof !51

561:                                              ; preds = %532
  %562 = tail call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 15)
  %563 = tail call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 13)
  %564 = xor i32 %562, %563
  %565 = lshr i32 %490, 10
  %566 = xor i32 %564, %565
  %567 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 25)
  %568 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 14)
  %569 = xor i32 %567, %568
  %570 = lshr i32 %73, 3
  %571 = xor i32 %569, %570
  %572 = add i32 %571, %72
  %573 = add i32 %572, %275
  %574 = add i32 %573, %566
  br label %575

575:                                              ; preds = %532, %561
  %576 = phi i32 [ %574, %561 ], [ %42, %532 ]
  %577 = add i32 %560, %409
  %578 = add i32 %577, %557
  %579 = add i32 %578, %554
  %580 = add i32 %579, %576
  %581 = add i32 %580, %420
  %582 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 30)
  %583 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 19)
  %584 = xor i32 %582, %583
  %585 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 10)
  %586 = xor i32 %584, %585
  %587 = and i32 %549, %506
  %588 = or i32 %549, %506
  %589 = and i32 %588, %463
  %590 = or i32 %589, %587
  %591 = add i32 %586, %590
  %592 = add i32 %591, %580
  %593 = tail call i32 @llvm.fshl.i32(i32 %581, i32 %581, i32 26)
  %594 = tail call i32 @llvm.fshl.i32(i32 %581, i32 %581, i32 21)
  %595 = xor i32 %593, %594
  %596 = tail call i32 @llvm.fshl.i32(i32 %581, i32 %581, i32 7)
  %597 = xor i32 %595, %596
  %598 = xor i32 %538, %495
  %599 = and i32 %581, %598
  %600 = xor i32 %599, %495
  %601 = or disjoint i64 %52, 12
  %602 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %601
  %603 = load i32, ptr %602, align 16, !tbaa !49
  br i1 %87, label %618, label %604, !prof !51

604:                                              ; preds = %575
  %605 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 15)
  %606 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 13)
  %607 = xor i32 %605, %606
  %608 = lshr i32 %533, 10
  %609 = xor i32 %607, %608
  %610 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 25)
  %611 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 14)
  %612 = xor i32 %610, %611
  %613 = lshr i32 %74, 3
  %614 = xor i32 %612, %613
  %615 = add i32 %614, %73
  %616 = add i32 %615, %318
  %617 = add i32 %616, %609
  br label %618

618:                                              ; preds = %575, %604
  %619 = phi i32 [ %617, %604 ], [ %44, %575 ]
  %620 = add i32 %603, %452
  %621 = add i32 %620, %600
  %622 = add i32 %621, %597
  %623 = add i32 %622, %619
  %624 = add i32 %623, %463
  %625 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 30)
  %626 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 19)
  %627 = xor i32 %625, %626
  %628 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 10)
  %629 = xor i32 %627, %628
  %630 = and i32 %592, %549
  %631 = or i32 %592, %549
  %632 = and i32 %631, %506
  %633 = or i32 %632, %630
  %634 = add i32 %629, %633
  %635 = add i32 %634, %623
  %636 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 26)
  %637 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 21)
  %638 = xor i32 %636, %637
  %639 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 7)
  %640 = xor i32 %638, %639
  %641 = xor i32 %581, %538
  %642 = and i32 %624, %641
  %643 = xor i32 %642, %538
  %644 = or disjoint i64 %52, 13
  %645 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !49
  br i1 %87, label %661, label %647, !prof !51

647:                                              ; preds = %618
  %648 = tail call i32 @llvm.fshl.i32(i32 %576, i32 %576, i32 15)
  %649 = tail call i32 @llvm.fshl.i32(i32 %576, i32 %576, i32 13)
  %650 = xor i32 %648, %649
  %651 = lshr i32 %576, 10
  %652 = xor i32 %650, %651
  %653 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 25)
  %654 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 14)
  %655 = xor i32 %653, %654
  %656 = lshr i32 %75, 3
  %657 = xor i32 %655, %656
  %658 = add i32 %657, %74
  %659 = add i32 %658, %361
  %660 = add i32 %659, %652
  br label %661

661:                                              ; preds = %618, %647
  %662 = phi i32 [ %660, %647 ], [ %46, %618 ]
  %663 = add i32 %646, %495
  %664 = add i32 %663, %643
  %665 = add i32 %664, %640
  %666 = add i32 %665, %662
  %667 = add i32 %666, %506
  %668 = tail call i32 @llvm.fshl.i32(i32 %635, i32 %635, i32 30)
  %669 = tail call i32 @llvm.fshl.i32(i32 %635, i32 %635, i32 19)
  %670 = xor i32 %668, %669
  %671 = tail call i32 @llvm.fshl.i32(i32 %635, i32 %635, i32 10)
  %672 = xor i32 %670, %671
  %673 = and i32 %635, %592
  %674 = or i32 %635, %592
  %675 = and i32 %674, %549
  %676 = or i32 %675, %673
  %677 = add i32 %672, %676
  %678 = add i32 %677, %666
  %679 = tail call i32 @llvm.fshl.i32(i32 %667, i32 %667, i32 26)
  %680 = tail call i32 @llvm.fshl.i32(i32 %667, i32 %667, i32 21)
  %681 = xor i32 %679, %680
  %682 = tail call i32 @llvm.fshl.i32(i32 %667, i32 %667, i32 7)
  %683 = xor i32 %681, %682
  %684 = xor i32 %624, %581
  %685 = and i32 %667, %684
  %686 = xor i32 %685, %581
  %687 = or disjoint i64 %52, 14
  %688 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %687
  %689 = load i32, ptr %688, align 8, !tbaa !49
  br i1 %87, label %704, label %690, !prof !51

690:                                              ; preds = %661
  %691 = tail call i32 @llvm.fshl.i32(i32 %619, i32 %619, i32 15)
  %692 = tail call i32 @llvm.fshl.i32(i32 %619, i32 %619, i32 13)
  %693 = xor i32 %691, %692
  %694 = lshr i32 %619, 10
  %695 = xor i32 %693, %694
  %696 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 25)
  %697 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 14)
  %698 = xor i32 %696, %697
  %699 = lshr i32 %76, 3
  %700 = xor i32 %698, %699
  %701 = add i32 %700, %75
  %702 = add i32 %701, %404
  %703 = add i32 %702, %695
  br label %704

704:                                              ; preds = %661, %690
  %705 = phi i32 [ %703, %690 ], [ %48, %661 ]
  %706 = add i32 %689, %538
  %707 = add i32 %706, %686
  %708 = add i32 %707, %683
  %709 = add i32 %708, %705
  %710 = add i32 %709, %549
  %711 = tail call i32 @llvm.fshl.i32(i32 %678, i32 %678, i32 30)
  %712 = tail call i32 @llvm.fshl.i32(i32 %678, i32 %678, i32 19)
  %713 = xor i32 %711, %712
  %714 = tail call i32 @llvm.fshl.i32(i32 %678, i32 %678, i32 10)
  %715 = xor i32 %713, %714
  %716 = and i32 %678, %635
  %717 = or i32 %678, %635
  %718 = and i32 %717, %592
  %719 = or i32 %718, %716
  %720 = add i32 %715, %719
  %721 = add i32 %720, %709
  %722 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 26)
  %723 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 21)
  %724 = xor i32 %722, %723
  %725 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 7)
  %726 = xor i32 %724, %725
  %727 = xor i32 %667, %624
  %728 = and i32 %710, %727
  %729 = xor i32 %728, %624
  %730 = or disjoint i64 %52, 15
  %731 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !49
  br i1 %87, label %747, label %733, !prof !51

733:                                              ; preds = %704
  %734 = tail call i32 @llvm.fshl.i32(i32 %662, i32 %662, i32 15)
  %735 = tail call i32 @llvm.fshl.i32(i32 %662, i32 %662, i32 13)
  %736 = xor i32 %734, %735
  %737 = lshr i32 %662, 10
  %738 = xor i32 %736, %737
  %739 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 25)
  %740 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 14)
  %741 = xor i32 %739, %740
  %742 = lshr i32 %103, 3
  %743 = xor i32 %741, %742
  %744 = add i32 %743, %76
  %745 = add i32 %744, %447
  %746 = add i32 %745, %738
  br label %747

747:                                              ; preds = %704, %733
  %748 = phi i32 [ %746, %733 ], [ %50, %704 ]
  %749 = add i32 %732, %581
  %750 = add i32 %749, %729
  %751 = add i32 %750, %726
  %752 = add i32 %751, %748
  %753 = add i32 %752, %592
  %754 = tail call i32 @llvm.fshl.i32(i32 %721, i32 %721, i32 30)
  %755 = tail call i32 @llvm.fshl.i32(i32 %721, i32 %721, i32 19)
  %756 = xor i32 %754, %755
  %757 = tail call i32 @llvm.fshl.i32(i32 %721, i32 %721, i32 10)
  %758 = xor i32 %756, %757
  %759 = and i32 %721, %678
  %760 = or i32 %721, %678
  %761 = and i32 %760, %635
  %762 = or i32 %761, %759
  %763 = add i32 %758, %762
  %764 = add i32 %763, %752
  %765 = add nuw nsw i64 %52, 16
  %766 = icmp ult i64 %52, 48
  br i1 %766, label %51, label %767, !prof !52, !llvm.loop !53

767:                                              ; preds = %747
  %768 = add i32 %764, %5
  store i32 %768, ptr %4, align 4, !tbaa !49
  %769 = add i32 %721, %7
  store i32 %769, ptr %6, align 4, !tbaa !49
  %770 = add i32 %678, %9
  store i32 %770, ptr %8, align 4, !tbaa !49
  %771 = add i32 %635, %11
  store i32 %771, ptr %10, align 4, !tbaa !49
  %772 = add i32 %753, %13
  store i32 %772, ptr %12, align 4, !tbaa !49
  %773 = add i32 %710, %15
  store i32 %773, ptr %14, align 4, !tbaa !49
  %774 = add i32 %667, %17
  store i32 %774, ptr %16, align 4, !tbaa !49
  %775 = add i32 %624, %19
  store i32 %775, ptr %18, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret void

776:                                              ; preds = %1, %776
  %777 = phi i64 [ 0, %1 ], [ %782, %776 ]
  %778 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %777
  %779 = load i32, ptr %778, align 4, !tbaa !38
  %780 = tail call i32 @llvm.bswap.i32(i32 %779)
  %781 = getelementptr inbounds [16 x i32], ptr %2, i64 0, i64 %777
  store i32 %780, ptr %781, align 4, !tbaa !49
  %782 = add nuw nsw i64 %777, 1
  %783 = icmp eq i64 %782, 16
  br i1 %783, label %3, label %776, !prof !54, !llvm.loop !55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_finish(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !37 {
  %2 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !38
  %4 = and i64 %3, 63
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi i64 [ %4, %1 ], [ %11, %10 ]
  %7 = phi i8 [ -128, %1 ], [ 0, %10 ]
  %8 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %6
  store i8 %7, ptr %8, align 1, !tbaa !38
  %9 = add nuw nsw i64 %6, 1
  switch i64 %6, label %10 [
    i64 55, label %13
    i64 63, label %12
  ], !prof !56

10:                                               ; preds = %5, %12
  %11 = phi i64 [ 0, %12 ], [ %9, %5 ]
  br label %5, !llvm.loop !57

12:                                               ; preds = %5
  tail call fastcc void @process(ptr noundef %0)
  br label %10

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %2, align 8, !tbaa !38
  %16 = shl i64 %15, 3
  store i64 %16, ptr %2, align 8, !tbaa !38
  %17 = shl i64 %15, 59
  %18 = shl i64 %15, 43
  %19 = and i64 %18, 71776119061217280
  %20 = or disjoint i64 %19, %17
  %21 = shl i64 %15, 27
  %22 = and i64 %21, 280375465082880
  %23 = or disjoint i64 %20, %22
  %24 = shl i64 %15, 11
  %25 = and i64 %24, 1095216660480
  %26 = or disjoint i64 %23, %25
  %27 = lshr i64 %16, 8
  %28 = and i64 %27, 4278190080
  %29 = or disjoint i64 %26, %28
  %30 = lshr i64 %16, 24
  %31 = and i64 %30, 16711680
  %32 = or disjoint i64 %29, %31
  %33 = lshr i64 %16, 40
  %34 = and i64 %33, 65280
  %35 = or disjoint i64 %32, %34
  %36 = lshr i64 %16, 56
  %37 = or i64 %35, %36
  %38 = getelementptr inbounds [8 x i64], ptr %0, i64 0, i64 7
  store i64 %37, ptr %38, align 8, !tbaa !38
  tail call fastcc void @process(ptr noundef %0)
  br label %40

39:                                               ; preds = %40
  ret void

40:                                               ; preds = %13, %40
  %41 = phi i64 [ 0, %13 ], [ %46, %40 ]
  %42 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !38
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %41
  store i32 %44, ptr %45, align 4, !tbaa !38
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %39, label %40, !prof !58, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!35 = !{ptr @lzma_sha256_finish, ptr @process, i64 4}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 4}
!38 = !{!39, !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"branch_weights", i32 1, i32 127}
!42 = !{!"VP", i32 1, i64 4, i64 16, i64 4}
!43 = !{!"branch_weights", i32 0, i32 4}
!44 = !{!"branch_weights", i32 127, i32 1}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!"liblzma/check/sha256.c;process"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !39, i64 0}
!51 = !{!"branch_weights", i32 4, i32 12}
!52 = !{!"branch_weights", i32 12, i32 4}
!53 = distinct !{!53, !46, !47}
!54 = !{!"branch_weights", i32 4, i32 60}
!55 = distinct !{!55, !46, !47}
!56 = !{!"branch_weights", i32 156, i32 4, i32 0}
!57 = distinct !{!57, !46, !47}
!58 = !{!"branch_weights", i32 4, i32 28}
!59 = distinct !{!59, !46, !47}

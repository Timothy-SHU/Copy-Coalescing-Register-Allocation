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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false)
  %3 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_sha256_update(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %2, i64 0, i32 1, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %0, %5 ], [ %15, %22 ]
  %9 = phi i64 [ %1, %5 ], [ %16, %22 ]
  %10 = load i64, ptr %6, align 8, !tbaa !35
  %11 = and i64 %10, 63
  %12 = sub nuw nsw i64 64, %11
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %9)
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %8, i64 %13, i1 false)
  %15 = getelementptr inbounds i8, ptr %8, i64 %13
  %16 = sub i64 %9, %13
  %17 = load i64, ptr %6, align 8, !tbaa !35
  %18 = add i64 %13, %17
  store i64 %18, ptr %6, align 8, !tbaa !35
  %19 = and i64 %18, 63
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  tail call fastcc void @process(ptr noundef nonnull %2) #6
  br label %22

22:                                               ; preds = %21, %7
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %7, !llvm.loop !38

24:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @process(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !40 {
  %2 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #7
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %4
  %6 = load <4 x i32>, ptr %5, align 4, !tbaa !35
  %7 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %6)
  %8 = getelementptr inbounds [16 x i32], ptr %2, i64 0, i64 %4
  store <4 x i32> %7, ptr %8, align 16, !tbaa !41
  %9 = add nuw i64 %4, 4
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %3, !llvm.loop !43

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  call fastcc void @transform(ptr noundef nonnull %12, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @transform(ptr nocapture noundef align 4 dereferenceable(32) %0, ptr nocapture noundef readonly align 4 dereferenceable(64) %1) unnamed_addr #4 !PGOFuncName !46 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %0, i64 20
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %0, i64 24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 28
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds i32, ptr %1, i64 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i32, ptr %1, i64 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %1, i64 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i32, ptr %1, i64 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i32, ptr %1, i64 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i32, ptr %1, i64 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i32, ptr %1, i64 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds i32, ptr %1, i64 8
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i32, ptr %1, i64 9
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i32, ptr %1, i64 10
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds i32, ptr %1, i64 11
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i32, ptr %1, i64 12
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i32, ptr %1, i64 13
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds i32, ptr %1, i64 14
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds i32, ptr %1, i64 15
  %48 = load i32, ptr %47, align 4
  br label %58

49:                                               ; preds = %754
  %50 = add i32 %771, %3
  store i32 %50, ptr %0, align 4, !tbaa !41
  %51 = add i32 %728, %5
  store i32 %51, ptr %4, align 4, !tbaa !41
  %52 = add i32 %685, %7
  store i32 %52, ptr %6, align 4, !tbaa !41
  %53 = add i32 %642, %9
  store i32 %53, ptr %8, align 4, !tbaa !41
  %54 = add i32 %760, %11
  store i32 %54, ptr %10, align 4, !tbaa !41
  %55 = add i32 %717, %13
  store i32 %55, ptr %12, align 4, !tbaa !41
  %56 = add i32 %674, %15
  store i32 %56, ptr %14, align 4, !tbaa !41
  %57 = add i32 %631, %17
  store i32 %57, ptr %16, align 4, !tbaa !41
  ret void

58:                                               ; preds = %2, %754
  %59 = phi i64 [ 0, %2 ], [ %772, %754 ]
  %60 = phi i32 [ %3, %2 ], [ %771, %754 ]
  %61 = phi i32 [ %5, %2 ], [ %728, %754 ]
  %62 = phi i32 [ %7, %2 ], [ %685, %754 ]
  %63 = phi i32 [ %9, %2 ], [ %642, %754 ]
  %64 = phi i32 [ %11, %2 ], [ %760, %754 ]
  %65 = phi i32 [ %13, %2 ], [ %717, %754 ]
  %66 = phi i32 [ %15, %2 ], [ %674, %754 ]
  %67 = phi i32 [ %17, %2 ], [ %631, %754 ]
  %68 = phi i32 [ undef, %2 ], [ %110, %754 ]
  %69 = phi i32 [ undef, %2 ], [ %153, %754 ]
  %70 = phi i32 [ undef, %2 ], [ %196, %754 ]
  %71 = phi i32 [ undef, %2 ], [ %239, %754 ]
  %72 = phi i32 [ undef, %2 ], [ %282, %754 ]
  %73 = phi i32 [ undef, %2 ], [ %325, %754 ]
  %74 = phi i32 [ undef, %2 ], [ %368, %754 ]
  %75 = phi i32 [ undef, %2 ], [ %411, %754 ]
  %76 = phi i32 [ undef, %2 ], [ %454, %754 ]
  %77 = phi i32 [ undef, %2 ], [ %497, %754 ]
  %78 = phi i32 [ undef, %2 ], [ %540, %754 ]
  %79 = phi i32 [ undef, %2 ], [ %583, %754 ]
  %80 = phi i32 [ undef, %2 ], [ %626, %754 ]
  %81 = phi i32 [ undef, %2 ], [ %669, %754 ]
  %82 = phi i32 [ undef, %2 ], [ %712, %754 ]
  %83 = phi i32 [ undef, %2 ], [ %755, %754 ]
  %84 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 26)
  %85 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 21)
  %86 = xor i32 %84, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7)
  %88 = xor i32 %86, %87
  %89 = xor i32 %65, %66
  %90 = and i32 %64, %89
  %91 = xor i32 %90, %66
  %92 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %59
  %93 = load i32, ptr %92, align 16, !tbaa !41
  %94 = icmp eq i64 %59, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %58
  %96 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 15)
  %97 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %98 = xor i32 %96, %97
  %99 = lshr i32 %82, 10
  %100 = xor i32 %98, %99
  %101 = add i32 %77, %100
  %102 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 25)
  %103 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 14)
  %104 = xor i32 %102, %103
  %105 = lshr i32 %69, 3
  %106 = xor i32 %104, %105
  %107 = add i32 %101, %68
  %108 = add i32 %107, %106
  br label %109

109:                                              ; preds = %58, %95
  %110 = phi i32 [ %108, %95 ], [ %18, %58 ]
  %111 = add i32 %91, %67
  %112 = add i32 %111, %88
  %113 = add i32 %112, %93
  %114 = add i32 %113, %110
  %115 = add i32 %114, %63
  %116 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 30)
  %117 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 19)
  %118 = xor i32 %116, %117
  %119 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 10)
  %120 = xor i32 %118, %119
  %121 = and i32 %60, %61
  %122 = or i32 %60, %61
  %123 = and i32 %122, %62
  %124 = or i32 %123, %121
  %125 = add i32 %120, %124
  %126 = add i32 %125, %114
  %127 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 26)
  %128 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 21)
  %129 = xor i32 %127, %128
  %130 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 7)
  %131 = xor i32 %129, %130
  %132 = xor i32 %64, %65
  %133 = and i32 %115, %132
  %134 = xor i32 %133, %65
  %135 = or disjoint i64 %59, 1
  %136 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !41
  br i1 %94, label %152, label %138

138:                                              ; preds = %109
  %139 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 15)
  %140 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %141 = xor i32 %139, %140
  %142 = lshr i32 %83, 10
  %143 = xor i32 %141, %142
  %144 = add i32 %78, %143
  %145 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 25)
  %146 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 14)
  %147 = xor i32 %145, %146
  %148 = lshr i32 %70, 3
  %149 = xor i32 %147, %148
  %150 = add i32 %144, %69
  %151 = add i32 %150, %149
  br label %152

152:                                              ; preds = %109, %138
  %153 = phi i32 [ %151, %138 ], [ %20, %109 ]
  %154 = add i32 %137, %66
  %155 = add i32 %154, %134
  %156 = add i32 %155, %131
  %157 = add i32 %156, %153
  %158 = add i32 %157, %62
  %159 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 30)
  %160 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 19)
  %161 = xor i32 %159, %160
  %162 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 10)
  %163 = xor i32 %161, %162
  %164 = and i32 %126, %60
  %165 = or i32 %126, %60
  %166 = and i32 %165, %61
  %167 = or i32 %166, %164
  %168 = add i32 %163, %167
  %169 = add i32 %168, %157
  %170 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 26)
  %171 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 21)
  %172 = xor i32 %170, %171
  %173 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 7)
  %174 = xor i32 %172, %173
  %175 = xor i32 %115, %64
  %176 = and i32 %158, %175
  %177 = xor i32 %176, %64
  %178 = or disjoint i64 %59, 2
  %179 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %178
  %180 = load i32, ptr %179, align 8, !tbaa !41
  br i1 %94, label %195, label %181

181:                                              ; preds = %152
  %182 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 15)
  %183 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %184 = xor i32 %182, %183
  %185 = lshr i32 %110, 10
  %186 = xor i32 %184, %185
  %187 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 25)
  %188 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 14)
  %189 = xor i32 %187, %188
  %190 = lshr i32 %71, 3
  %191 = xor i32 %189, %190
  %192 = add i32 %70, %79
  %193 = add i32 %192, %191
  %194 = add i32 %193, %186
  br label %195

195:                                              ; preds = %152, %181
  %196 = phi i32 [ %194, %181 ], [ %22, %152 ]
  %197 = add i32 %180, %65
  %198 = add i32 %197, %177
  %199 = add i32 %198, %174
  %200 = add i32 %199, %196
  %201 = add i32 %200, %61
  %202 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 30)
  %203 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 19)
  %204 = xor i32 %202, %203
  %205 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 10)
  %206 = xor i32 %204, %205
  %207 = and i32 %169, %126
  %208 = or i32 %169, %126
  %209 = and i32 %208, %60
  %210 = or i32 %209, %207
  %211 = add i32 %206, %210
  %212 = add i32 %211, %200
  %213 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 26)
  %214 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 21)
  %215 = xor i32 %213, %214
  %216 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 7)
  %217 = xor i32 %215, %216
  %218 = xor i32 %158, %115
  %219 = and i32 %201, %218
  %220 = xor i32 %219, %115
  %221 = or disjoint i64 %59, 3
  %222 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !41
  br i1 %94, label %238, label %224

224:                                              ; preds = %195
  %225 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 15)
  %226 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 13)
  %227 = xor i32 %225, %226
  %228 = lshr i32 %153, 10
  %229 = xor i32 %227, %228
  %230 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 25)
  %231 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 14)
  %232 = xor i32 %230, %231
  %233 = lshr i32 %72, 3
  %234 = xor i32 %232, %233
  %235 = add i32 %71, %80
  %236 = add i32 %235, %234
  %237 = add i32 %236, %229
  br label %238

238:                                              ; preds = %195, %224
  %239 = phi i32 [ %237, %224 ], [ %24, %195 ]
  %240 = add i32 %223, %64
  %241 = add i32 %240, %220
  %242 = add i32 %241, %217
  %243 = add i32 %242, %239
  %244 = add i32 %243, %60
  %245 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 30)
  %246 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 19)
  %247 = xor i32 %245, %246
  %248 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 10)
  %249 = xor i32 %247, %248
  %250 = and i32 %212, %169
  %251 = or i32 %212, %169
  %252 = and i32 %251, %126
  %253 = or i32 %252, %250
  %254 = add i32 %249, %253
  %255 = add i32 %254, %243
  %256 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 26)
  %257 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 21)
  %258 = xor i32 %256, %257
  %259 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 7)
  %260 = xor i32 %258, %259
  %261 = xor i32 %201, %158
  %262 = and i32 %244, %261
  %263 = xor i32 %262, %158
  %264 = or disjoint i64 %59, 4
  %265 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %264
  %266 = load i32, ptr %265, align 16, !tbaa !41
  br i1 %94, label %281, label %267

267:                                              ; preds = %238
  %268 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 15)
  %269 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 13)
  %270 = xor i32 %268, %269
  %271 = lshr i32 %196, 10
  %272 = xor i32 %270, %271
  %273 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 25)
  %274 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 14)
  %275 = xor i32 %273, %274
  %276 = lshr i32 %73, 3
  %277 = xor i32 %275, %276
  %278 = add i32 %72, %81
  %279 = add i32 %278, %277
  %280 = add i32 %279, %272
  br label %281

281:                                              ; preds = %238, %267
  %282 = phi i32 [ %280, %267 ], [ %26, %238 ]
  %283 = add i32 %266, %115
  %284 = add i32 %283, %263
  %285 = add i32 %284, %260
  %286 = add i32 %285, %282
  %287 = add i32 %286, %126
  %288 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 30)
  %289 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 19)
  %290 = xor i32 %288, %289
  %291 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 10)
  %292 = xor i32 %290, %291
  %293 = and i32 %255, %212
  %294 = or i32 %255, %212
  %295 = and i32 %294, %169
  %296 = or i32 %295, %293
  %297 = add i32 %292, %296
  %298 = add i32 %297, %286
  %299 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 26)
  %300 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 21)
  %301 = xor i32 %299, %300
  %302 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 7)
  %303 = xor i32 %301, %302
  %304 = xor i32 %244, %201
  %305 = and i32 %287, %304
  %306 = xor i32 %305, %201
  %307 = or disjoint i64 %59, 5
  %308 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !41
  br i1 %94, label %324, label %310

310:                                              ; preds = %281
  %311 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 15)
  %312 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 13)
  %313 = xor i32 %311, %312
  %314 = lshr i32 %239, 10
  %315 = xor i32 %313, %314
  %316 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 25)
  %317 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 14)
  %318 = xor i32 %316, %317
  %319 = lshr i32 %74, 3
  %320 = xor i32 %318, %319
  %321 = add i32 %73, %82
  %322 = add i32 %321, %320
  %323 = add i32 %322, %315
  br label %324

324:                                              ; preds = %281, %310
  %325 = phi i32 [ %323, %310 ], [ %28, %281 ]
  %326 = add i32 %309, %158
  %327 = add i32 %326, %306
  %328 = add i32 %327, %303
  %329 = add i32 %328, %325
  %330 = add i32 %329, %169
  %331 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 30)
  %332 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 19)
  %333 = xor i32 %331, %332
  %334 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 10)
  %335 = xor i32 %333, %334
  %336 = and i32 %298, %255
  %337 = or i32 %298, %255
  %338 = and i32 %337, %212
  %339 = or i32 %338, %336
  %340 = add i32 %335, %339
  %341 = add i32 %340, %329
  %342 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 26)
  %343 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 21)
  %344 = xor i32 %342, %343
  %345 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 7)
  %346 = xor i32 %344, %345
  %347 = xor i32 %287, %244
  %348 = and i32 %330, %347
  %349 = xor i32 %348, %244
  %350 = or disjoint i64 %59, 6
  %351 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %350
  %352 = load i32, ptr %351, align 8, !tbaa !41
  br i1 %94, label %367, label %353

353:                                              ; preds = %324
  %354 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 15)
  %355 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 13)
  %356 = xor i32 %354, %355
  %357 = lshr i32 %282, 10
  %358 = xor i32 %356, %357
  %359 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 25)
  %360 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 14)
  %361 = xor i32 %359, %360
  %362 = lshr i32 %75, 3
  %363 = xor i32 %361, %362
  %364 = add i32 %74, %83
  %365 = add i32 %364, %363
  %366 = add i32 %365, %358
  br label %367

367:                                              ; preds = %324, %353
  %368 = phi i32 [ %366, %353 ], [ %30, %324 ]
  %369 = add i32 %352, %201
  %370 = add i32 %369, %349
  %371 = add i32 %370, %346
  %372 = add i32 %371, %368
  %373 = add i32 %372, %212
  %374 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 30)
  %375 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 19)
  %376 = xor i32 %374, %375
  %377 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 10)
  %378 = xor i32 %376, %377
  %379 = and i32 %341, %298
  %380 = or i32 %341, %298
  %381 = and i32 %380, %255
  %382 = or i32 %381, %379
  %383 = add i32 %378, %382
  %384 = add i32 %383, %372
  %385 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 26)
  %386 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 21)
  %387 = xor i32 %385, %386
  %388 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 7)
  %389 = xor i32 %387, %388
  %390 = xor i32 %330, %287
  %391 = and i32 %373, %390
  %392 = xor i32 %391, %287
  %393 = or disjoint i64 %59, 7
  %394 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !41
  br i1 %94, label %410, label %396

396:                                              ; preds = %367
  %397 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 15)
  %398 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 13)
  %399 = xor i32 %397, %398
  %400 = lshr i32 %325, 10
  %401 = xor i32 %399, %400
  %402 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 25)
  %403 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 14)
  %404 = xor i32 %402, %403
  %405 = lshr i32 %76, 3
  %406 = xor i32 %404, %405
  %407 = add i32 %406, %75
  %408 = add i32 %407, %110
  %409 = add i32 %408, %401
  br label %410

410:                                              ; preds = %367, %396
  %411 = phi i32 [ %409, %396 ], [ %32, %367 ]
  %412 = add i32 %395, %244
  %413 = add i32 %412, %392
  %414 = add i32 %413, %389
  %415 = add i32 %414, %411
  %416 = add i32 %415, %255
  %417 = tail call i32 @llvm.fshl.i32(i32 %384, i32 %384, i32 30)
  %418 = tail call i32 @llvm.fshl.i32(i32 %384, i32 %384, i32 19)
  %419 = xor i32 %417, %418
  %420 = tail call i32 @llvm.fshl.i32(i32 %384, i32 %384, i32 10)
  %421 = xor i32 %419, %420
  %422 = and i32 %384, %341
  %423 = or i32 %384, %341
  %424 = and i32 %423, %298
  %425 = or i32 %424, %422
  %426 = add i32 %421, %425
  %427 = add i32 %426, %415
  %428 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 26)
  %429 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 21)
  %430 = xor i32 %428, %429
  %431 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 7)
  %432 = xor i32 %430, %431
  %433 = xor i32 %373, %330
  %434 = and i32 %416, %433
  %435 = xor i32 %434, %330
  %436 = or disjoint i64 %59, 8
  %437 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %436
  %438 = load i32, ptr %437, align 16, !tbaa !41
  br i1 %94, label %453, label %439

439:                                              ; preds = %410
  %440 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 15)
  %441 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 13)
  %442 = xor i32 %440, %441
  %443 = lshr i32 %368, 10
  %444 = xor i32 %442, %443
  %445 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 25)
  %446 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 14)
  %447 = xor i32 %445, %446
  %448 = lshr i32 %77, 3
  %449 = xor i32 %447, %448
  %450 = add i32 %449, %76
  %451 = add i32 %450, %153
  %452 = add i32 %451, %444
  br label %453

453:                                              ; preds = %410, %439
  %454 = phi i32 [ %452, %439 ], [ %34, %410 ]
  %455 = add i32 %438, %287
  %456 = add i32 %455, %435
  %457 = add i32 %456, %432
  %458 = add i32 %457, %454
  %459 = add i32 %458, %298
  %460 = tail call i32 @llvm.fshl.i32(i32 %427, i32 %427, i32 30)
  %461 = tail call i32 @llvm.fshl.i32(i32 %427, i32 %427, i32 19)
  %462 = xor i32 %460, %461
  %463 = tail call i32 @llvm.fshl.i32(i32 %427, i32 %427, i32 10)
  %464 = xor i32 %462, %463
  %465 = and i32 %427, %384
  %466 = or i32 %427, %384
  %467 = and i32 %466, %341
  %468 = or i32 %467, %465
  %469 = add i32 %464, %468
  %470 = add i32 %469, %458
  %471 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 26)
  %472 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 21)
  %473 = xor i32 %471, %472
  %474 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 7)
  %475 = xor i32 %473, %474
  %476 = xor i32 %416, %373
  %477 = and i32 %459, %476
  %478 = xor i32 %477, %373
  %479 = or disjoint i64 %59, 9
  %480 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !41
  br i1 %94, label %496, label %482

482:                                              ; preds = %453
  %483 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 15)
  %484 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 13)
  %485 = xor i32 %483, %484
  %486 = lshr i32 %411, 10
  %487 = xor i32 %485, %486
  %488 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 25)
  %489 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 14)
  %490 = xor i32 %488, %489
  %491 = lshr i32 %78, 3
  %492 = xor i32 %490, %491
  %493 = add i32 %492, %77
  %494 = add i32 %493, %196
  %495 = add i32 %494, %487
  br label %496

496:                                              ; preds = %453, %482
  %497 = phi i32 [ %495, %482 ], [ %36, %453 ]
  %498 = add i32 %481, %330
  %499 = add i32 %498, %478
  %500 = add i32 %499, %475
  %501 = add i32 %500, %497
  %502 = add i32 %501, %341
  %503 = tail call i32 @llvm.fshl.i32(i32 %470, i32 %470, i32 30)
  %504 = tail call i32 @llvm.fshl.i32(i32 %470, i32 %470, i32 19)
  %505 = xor i32 %503, %504
  %506 = tail call i32 @llvm.fshl.i32(i32 %470, i32 %470, i32 10)
  %507 = xor i32 %505, %506
  %508 = and i32 %470, %427
  %509 = or i32 %470, %427
  %510 = and i32 %509, %384
  %511 = or i32 %510, %508
  %512 = add i32 %507, %511
  %513 = add i32 %512, %501
  %514 = tail call i32 @llvm.fshl.i32(i32 %502, i32 %502, i32 26)
  %515 = tail call i32 @llvm.fshl.i32(i32 %502, i32 %502, i32 21)
  %516 = xor i32 %514, %515
  %517 = tail call i32 @llvm.fshl.i32(i32 %502, i32 %502, i32 7)
  %518 = xor i32 %516, %517
  %519 = xor i32 %459, %416
  %520 = and i32 %502, %519
  %521 = xor i32 %520, %416
  %522 = or disjoint i64 %59, 10
  %523 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %522
  %524 = load i32, ptr %523, align 8, !tbaa !41
  br i1 %94, label %539, label %525

525:                                              ; preds = %496
  %526 = tail call i32 @llvm.fshl.i32(i32 %454, i32 %454, i32 15)
  %527 = tail call i32 @llvm.fshl.i32(i32 %454, i32 %454, i32 13)
  %528 = xor i32 %526, %527
  %529 = lshr i32 %454, 10
  %530 = xor i32 %528, %529
  %531 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 25)
  %532 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 14)
  %533 = xor i32 %531, %532
  %534 = lshr i32 %79, 3
  %535 = xor i32 %533, %534
  %536 = add i32 %535, %78
  %537 = add i32 %536, %239
  %538 = add i32 %537, %530
  br label %539

539:                                              ; preds = %496, %525
  %540 = phi i32 [ %538, %525 ], [ %38, %496 ]
  %541 = add i32 %524, %373
  %542 = add i32 %541, %521
  %543 = add i32 %542, %518
  %544 = add i32 %543, %540
  %545 = add i32 %544, %384
  %546 = tail call i32 @llvm.fshl.i32(i32 %513, i32 %513, i32 30)
  %547 = tail call i32 @llvm.fshl.i32(i32 %513, i32 %513, i32 19)
  %548 = xor i32 %546, %547
  %549 = tail call i32 @llvm.fshl.i32(i32 %513, i32 %513, i32 10)
  %550 = xor i32 %548, %549
  %551 = and i32 %513, %470
  %552 = or i32 %513, %470
  %553 = and i32 %552, %427
  %554 = or i32 %553, %551
  %555 = add i32 %550, %554
  %556 = add i32 %555, %544
  %557 = tail call i32 @llvm.fshl.i32(i32 %545, i32 %545, i32 26)
  %558 = tail call i32 @llvm.fshl.i32(i32 %545, i32 %545, i32 21)
  %559 = xor i32 %557, %558
  %560 = tail call i32 @llvm.fshl.i32(i32 %545, i32 %545, i32 7)
  %561 = xor i32 %559, %560
  %562 = xor i32 %502, %459
  %563 = and i32 %545, %562
  %564 = xor i32 %563, %459
  %565 = or disjoint i64 %59, 11
  %566 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %565
  %567 = load i32, ptr %566, align 4, !tbaa !41
  br i1 %94, label %582, label %568

568:                                              ; preds = %539
  %569 = tail call i32 @llvm.fshl.i32(i32 %497, i32 %497, i32 15)
  %570 = tail call i32 @llvm.fshl.i32(i32 %497, i32 %497, i32 13)
  %571 = xor i32 %569, %570
  %572 = lshr i32 %497, 10
  %573 = xor i32 %571, %572
  %574 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 25)
  %575 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 14)
  %576 = xor i32 %574, %575
  %577 = lshr i32 %80, 3
  %578 = xor i32 %576, %577
  %579 = add i32 %578, %79
  %580 = add i32 %579, %282
  %581 = add i32 %580, %573
  br label %582

582:                                              ; preds = %539, %568
  %583 = phi i32 [ %581, %568 ], [ %40, %539 ]
  %584 = add i32 %567, %416
  %585 = add i32 %584, %564
  %586 = add i32 %585, %561
  %587 = add i32 %586, %583
  %588 = add i32 %587, %427
  %589 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 30)
  %590 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 19)
  %591 = xor i32 %589, %590
  %592 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 10)
  %593 = xor i32 %591, %592
  %594 = and i32 %556, %513
  %595 = or i32 %556, %513
  %596 = and i32 %595, %470
  %597 = or i32 %596, %594
  %598 = add i32 %593, %597
  %599 = add i32 %598, %587
  %600 = tail call i32 @llvm.fshl.i32(i32 %588, i32 %588, i32 26)
  %601 = tail call i32 @llvm.fshl.i32(i32 %588, i32 %588, i32 21)
  %602 = xor i32 %600, %601
  %603 = tail call i32 @llvm.fshl.i32(i32 %588, i32 %588, i32 7)
  %604 = xor i32 %602, %603
  %605 = xor i32 %545, %502
  %606 = and i32 %588, %605
  %607 = xor i32 %606, %502
  %608 = or disjoint i64 %59, 12
  %609 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %608
  %610 = load i32, ptr %609, align 16, !tbaa !41
  br i1 %94, label %625, label %611

611:                                              ; preds = %582
  %612 = tail call i32 @llvm.fshl.i32(i32 %540, i32 %540, i32 15)
  %613 = tail call i32 @llvm.fshl.i32(i32 %540, i32 %540, i32 13)
  %614 = xor i32 %612, %613
  %615 = lshr i32 %540, 10
  %616 = xor i32 %614, %615
  %617 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 25)
  %618 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 14)
  %619 = xor i32 %617, %618
  %620 = lshr i32 %81, 3
  %621 = xor i32 %619, %620
  %622 = add i32 %621, %80
  %623 = add i32 %622, %325
  %624 = add i32 %623, %616
  br label %625

625:                                              ; preds = %582, %611
  %626 = phi i32 [ %624, %611 ], [ %42, %582 ]
  %627 = add i32 %610, %459
  %628 = add i32 %627, %607
  %629 = add i32 %628, %604
  %630 = add i32 %629, %626
  %631 = add i32 %630, %470
  %632 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 30)
  %633 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 19)
  %634 = xor i32 %632, %633
  %635 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 10)
  %636 = xor i32 %634, %635
  %637 = and i32 %599, %556
  %638 = or i32 %599, %556
  %639 = and i32 %638, %513
  %640 = or i32 %639, %637
  %641 = add i32 %636, %640
  %642 = add i32 %641, %630
  %643 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 26)
  %644 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 21)
  %645 = xor i32 %643, %644
  %646 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 7)
  %647 = xor i32 %645, %646
  %648 = xor i32 %588, %545
  %649 = and i32 %631, %648
  %650 = xor i32 %649, %545
  %651 = or disjoint i64 %59, 13
  %652 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !41
  br i1 %94, label %668, label %654

654:                                              ; preds = %625
  %655 = tail call i32 @llvm.fshl.i32(i32 %583, i32 %583, i32 15)
  %656 = tail call i32 @llvm.fshl.i32(i32 %583, i32 %583, i32 13)
  %657 = xor i32 %655, %656
  %658 = lshr i32 %583, 10
  %659 = xor i32 %657, %658
  %660 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 25)
  %661 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 14)
  %662 = xor i32 %660, %661
  %663 = lshr i32 %82, 3
  %664 = xor i32 %662, %663
  %665 = add i32 %664, %81
  %666 = add i32 %665, %368
  %667 = add i32 %666, %659
  br label %668

668:                                              ; preds = %625, %654
  %669 = phi i32 [ %667, %654 ], [ %44, %625 ]
  %670 = add i32 %653, %502
  %671 = add i32 %670, %650
  %672 = add i32 %671, %647
  %673 = add i32 %672, %669
  %674 = add i32 %673, %513
  %675 = tail call i32 @llvm.fshl.i32(i32 %642, i32 %642, i32 30)
  %676 = tail call i32 @llvm.fshl.i32(i32 %642, i32 %642, i32 19)
  %677 = xor i32 %675, %676
  %678 = tail call i32 @llvm.fshl.i32(i32 %642, i32 %642, i32 10)
  %679 = xor i32 %677, %678
  %680 = and i32 %642, %599
  %681 = or i32 %642, %599
  %682 = and i32 %681, %556
  %683 = or i32 %682, %680
  %684 = add i32 %679, %683
  %685 = add i32 %684, %673
  %686 = tail call i32 @llvm.fshl.i32(i32 %674, i32 %674, i32 26)
  %687 = tail call i32 @llvm.fshl.i32(i32 %674, i32 %674, i32 21)
  %688 = xor i32 %686, %687
  %689 = tail call i32 @llvm.fshl.i32(i32 %674, i32 %674, i32 7)
  %690 = xor i32 %688, %689
  %691 = xor i32 %631, %588
  %692 = and i32 %674, %691
  %693 = xor i32 %692, %588
  %694 = or disjoint i64 %59, 14
  %695 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %694
  %696 = load i32, ptr %695, align 8, !tbaa !41
  br i1 %94, label %711, label %697

697:                                              ; preds = %668
  %698 = tail call i32 @llvm.fshl.i32(i32 %626, i32 %626, i32 15)
  %699 = tail call i32 @llvm.fshl.i32(i32 %626, i32 %626, i32 13)
  %700 = xor i32 %698, %699
  %701 = lshr i32 %626, 10
  %702 = xor i32 %700, %701
  %703 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 25)
  %704 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 14)
  %705 = xor i32 %703, %704
  %706 = lshr i32 %83, 3
  %707 = xor i32 %705, %706
  %708 = add i32 %707, %82
  %709 = add i32 %708, %411
  %710 = add i32 %709, %702
  br label %711

711:                                              ; preds = %668, %697
  %712 = phi i32 [ %710, %697 ], [ %46, %668 ]
  %713 = add i32 %696, %545
  %714 = add i32 %713, %693
  %715 = add i32 %714, %690
  %716 = add i32 %715, %712
  %717 = add i32 %716, %556
  %718 = tail call i32 @llvm.fshl.i32(i32 %685, i32 %685, i32 30)
  %719 = tail call i32 @llvm.fshl.i32(i32 %685, i32 %685, i32 19)
  %720 = xor i32 %718, %719
  %721 = tail call i32 @llvm.fshl.i32(i32 %685, i32 %685, i32 10)
  %722 = xor i32 %720, %721
  %723 = and i32 %685, %642
  %724 = or i32 %685, %642
  %725 = and i32 %724, %599
  %726 = or i32 %725, %723
  %727 = add i32 %722, %726
  %728 = add i32 %727, %716
  %729 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 26)
  %730 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 21)
  %731 = xor i32 %729, %730
  %732 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 7)
  %733 = xor i32 %731, %732
  %734 = xor i32 %674, %631
  %735 = and i32 %717, %734
  %736 = xor i32 %735, %631
  %737 = or disjoint i64 %59, 15
  %738 = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %737
  %739 = load i32, ptr %738, align 4, !tbaa !41
  br i1 %94, label %754, label %740

740:                                              ; preds = %711
  %741 = tail call i32 @llvm.fshl.i32(i32 %669, i32 %669, i32 15)
  %742 = tail call i32 @llvm.fshl.i32(i32 %669, i32 %669, i32 13)
  %743 = xor i32 %741, %742
  %744 = lshr i32 %669, 10
  %745 = xor i32 %743, %744
  %746 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 25)
  %747 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 14)
  %748 = xor i32 %746, %747
  %749 = lshr i32 %110, 3
  %750 = xor i32 %748, %749
  %751 = add i32 %750, %83
  %752 = add i32 %751, %454
  %753 = add i32 %752, %745
  br label %754

754:                                              ; preds = %711, %740
  %755 = phi i32 [ %753, %740 ], [ %48, %711 ]
  %756 = add i32 %739, %588
  %757 = add i32 %756, %736
  %758 = add i32 %757, %733
  %759 = add i32 %758, %755
  %760 = add i32 %759, %599
  %761 = tail call i32 @llvm.fshl.i32(i32 %728, i32 %728, i32 30)
  %762 = tail call i32 @llvm.fshl.i32(i32 %728, i32 %728, i32 19)
  %763 = xor i32 %761, %762
  %764 = tail call i32 @llvm.fshl.i32(i32 %728, i32 %728, i32 10)
  %765 = xor i32 %763, %764
  %766 = and i32 %728, %685
  %767 = or i32 %728, %685
  %768 = and i32 %767, %642
  %769 = or i32 %768, %766
  %770 = add i32 %765, %769
  %771 = add i32 %770, %759
  %772 = add nuw nsw i64 %59, 16
  %773 = icmp ult i64 %59, 48
  br i1 %773, label %58, label %49, !llvm.loop !47
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_finish(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !35
  %4 = and i64 %3, 63
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi i64 [ %4, %1 ], [ %11, %10 ]
  %7 = phi i8 [ -128, %1 ], [ 0, %10 ]
  %8 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %6
  store i8 %7, ptr %8, align 1, !tbaa !35
  %9 = add nuw nsw i64 %6, 1
  switch i64 %6, label %10 [
    i64 55, label %13
    i64 63, label %12
  ]

10:                                               ; preds = %5, %12
  %11 = phi i64 [ 0, %12 ], [ %9, %5 ]
  br label %5, !llvm.loop !48

12:                                               ; preds = %5
  tail call fastcc void @process(ptr noundef nonnull %0) #6
  br label %10

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %2, align 8, !tbaa !35
  %16 = shl i64 %15, 3
  store i64 %16, ptr %2, align 8, !tbaa !35
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
  store i64 %37, ptr %38, align 8, !tbaa !35
  tail call fastcc void @process(ptr noundef nonnull %0) #6
  br label %39

39:                                               ; preds = %39, %13
  %40 = phi i64 [ 0, %13 ], [ %45, %39 ]
  %41 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %40
  %42 = load <4 x i32>, ptr %41, align 4, !tbaa !35
  %43 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %42)
  %44 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %40
  store <4 x i32> %43, ptr %44, align 4, !tbaa !35
  %45 = add nuw i64 %40, 4
  %46 = icmp eq i64 %45, 8
  br i1 %46, label %47, label %39, !llvm.loop !49

47:                                               ; preds = %39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"sha256.c:process"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !39, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"sha256.c:transform"}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39, !44, !45}
